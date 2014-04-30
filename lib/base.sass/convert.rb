module Sass::Script::Functions

  def to_string(number)
    return null() unless type_correctly(number)
    identifier(number.value.to_s)
  end

  def to_number(string)
    return null() unless type_correctly(string)
    number(to_if(string.value.to_s))
  end


  protected

  def to_if(s)
    s.include?('.') ? s.to_f : s.to_i
  end


  private

  def type_correctly(arg)
    arg.is_a?(Sass::Script::Value::String) || arg.is_a?(Sass::Script::Value::Number)
  end
end
