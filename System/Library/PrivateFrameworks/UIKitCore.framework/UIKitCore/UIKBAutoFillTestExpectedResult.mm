@interface UIKBAutoFillTestExpectedResult
- (UIKBAutoFillTestExpectedResult)init;
- (UIKBAutoFillTestExpectedResult)initWithCoder:(id)coder;
- (int64_t)typeForTextFieldWithTag:(int64_t)tag;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int64_t)type forTextFieldWithTag:(int64_t)tag;
@end

@implementation UIKBAutoFillTestExpectedResult

- (UIKBAutoFillTestExpectedResult)init
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestExpectedResult;
  v2 = [(UIKBAutoFillTestExpectedResult *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    textFieldTagToTextFieldType = v2->_textFieldTagToTextFieldType;
    v2->_textFieldTagToTextFieldType = dictionary;

    v5 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestExpectedResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UIKBAutoFillTestExpectedResult *)self init];
  if (v5)
  {
    v5->_formType = [coderCopy decodeIntegerForKey:@"formType"];
    v6 = [coderCopy decodeObjectForKey:@"textFieldTagToTextFieldType"];
    v7 = [v6 mutableCopy];
    textFieldTagToTextFieldType = v5->_textFieldTagToTextFieldType;
    v5->_textFieldTagToTextFieldType = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  formType = self->_formType;
  coderCopy = coder;
  [coderCopy encodeInteger:formType forKey:@"formType"];
  [coderCopy encodeObject:self->_textFieldTagToTextFieldType forKey:@"textFieldTagToTextFieldType"];
}

- (int64_t)typeForTextFieldWithTag:(int64_t)tag
{
  textFieldTagToTextFieldType = self->_textFieldTagToTextFieldType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:tag];
  v5 = [(NSMutableDictionary *)textFieldTagToTextFieldType objectForKeyedSubscript:v4];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)setType:(int64_t)type forTextFieldWithTag:(int64_t)tag
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  textFieldTagToTextFieldType = self->_textFieldTagToTextFieldType;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:tag];
  [(NSMutableDictionary *)textFieldTagToTextFieldType setObject:v8 forKeyedSubscript:v7];
}

@end