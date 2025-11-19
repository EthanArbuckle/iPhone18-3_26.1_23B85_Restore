@interface UIKBAutoFillTestExpectedResult
- (UIKBAutoFillTestExpectedResult)init;
- (UIKBAutoFillTestExpectedResult)initWithCoder:(id)a3;
- (int64_t)typeForTextFieldWithTag:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setType:(int64_t)a3 forTextFieldWithTag:(int64_t)a4;
@end

@implementation UIKBAutoFillTestExpectedResult

- (UIKBAutoFillTestExpectedResult)init
{
  v7.receiver = self;
  v7.super_class = UIKBAutoFillTestExpectedResult;
  v2 = [(UIKBAutoFillTestExpectedResult *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    textFieldTagToTextFieldType = v2->_textFieldTagToTextFieldType;
    v2->_textFieldTagToTextFieldType = v3;

    v5 = v2;
  }

  return v2;
}

- (UIKBAutoFillTestExpectedResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIKBAutoFillTestExpectedResult *)self init];
  if (v5)
  {
    v5->_formType = [v4 decodeIntegerForKey:@"formType"];
    v6 = [v4 decodeObjectForKey:@"textFieldTagToTextFieldType"];
    v7 = [v6 mutableCopy];
    textFieldTagToTextFieldType = v5->_textFieldTagToTextFieldType;
    v5->_textFieldTagToTextFieldType = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  formType = self->_formType;
  v5 = a3;
  [v5 encodeInteger:formType forKey:@"formType"];
  [v5 encodeObject:self->_textFieldTagToTextFieldType forKey:@"textFieldTagToTextFieldType"];
}

- (int64_t)typeForTextFieldWithTag:(int64_t)a3
{
  textFieldTagToTextFieldType = self->_textFieldTagToTextFieldType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)textFieldTagToTextFieldType objectForKeyedSubscript:v4];
  v6 = [v5 integerValue];

  return v6;
}

- (void)setType:(int64_t)a3 forTextFieldWithTag:(int64_t)a4
{
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  textFieldTagToTextFieldType = self->_textFieldTagToTextFieldType;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)textFieldTagToTextFieldType setObject:v8 forKeyedSubscript:v7];
}

@end