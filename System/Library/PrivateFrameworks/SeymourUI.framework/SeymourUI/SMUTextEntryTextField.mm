@interface SMUTextEntryTextField
- (SMUTextEntryTextField)initWithFrame:(CGRect)a3;
- (_NSRange)_filteredRangeForText:(id)a3;
- (id)text;
- (void)insertText:(id)a3;
- (void)setMaxLength:(unint64_t)a3;
- (void)setText:(id)a3;
@end

@implementation SMUTextEntryTextField

- (SMUTextEntryTextField)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SMUTextEntryTextField;
  result = [(SMUTextEntryTextField *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_allowsFocus = 0;
  }

  return result;
}

- (void)setMaxLength:(unint64_t)a3
{
  if (self->_maxLength != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_maxLength = a3;
    v6 = [(SMUTextEntryTextField *)self text];
    v7 = [(SMUTextEntryTextField *)self _filteredRangeForText:v6];
    v9 = [v6 substringWithRange:{v7, v8}];
    v10.receiver = self;
    v10.super_class = SMUTextEntryTextField;
    [(SMUTextEntryTextField *)&v10 setText:v9];
  }
}

- (id)text
{
  if (([(SMUTextEntryTextField *)self isSecureTextEntry]& 1) != 0)
  {
    v8.receiver = self;
    v8.super_class = SMUTextEntryTextField;
    v3 = [(SMUTextEntryTextField *)&v8 text];
  }

  else
  {
    if (!text_tabCharacterSet)
    {
      v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\t"];
      v5 = text_tabCharacterSet;
      text_tabCharacterSet = v4;
    }

    v9.receiver = self;
    v9.super_class = SMUTextEntryTextField;
    v6 = [(SMUTextEntryTextField *)&v9 text];
    v3 = [v6 stringByTrimmingCharactersInSet:text_tabCharacterSet];
  }

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(SMUTextEntryTextField *)self _filteredRangeForText:v4];
  v7 = [v4 substringWithRange:{v5, v6}];

  v8.receiver = self;
  v8.super_class = SMUTextEntryTextField;
  [(SMUTextEntryTextField *)&v8 setText:v7];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(SMUTextEntryTextField *)self _filteredRangeForText:v4];
  v7 = [v4 substringWithRange:{v5, v6}];

  v8.receiver = self;
  v8.super_class = SMUTextEntryTextField;
  [(SMUTextEntryTextField *)&v8 insertText:v7];
}

- (_NSRange)_filteredRangeForText:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v6 = [(SMUTextEntryTextField *)self text];
  if ([(SMUTextEntryTextField *)self maxLength])
  {
    v7 = [v6 length];
    v8 = [v4 length] + v7;
    if (v8 > [(SMUTextEntryTextField *)self maxLength])
    {
      v9 = [(SMUTextEntryTextField *)self maxLength];
      v5 = v9 - [v6 length];
    }
  }

  v10 = 0;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

@end