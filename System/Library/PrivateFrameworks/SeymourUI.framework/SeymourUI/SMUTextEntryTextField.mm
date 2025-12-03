@interface SMUTextEntryTextField
- (SMUTextEntryTextField)initWithFrame:(CGRect)frame;
- (_NSRange)_filteredRangeForText:(id)text;
- (id)text;
- (void)insertText:(id)text;
- (void)setMaxLength:(unint64_t)length;
- (void)setText:(id)text;
@end

@implementation SMUTextEntryTextField

- (SMUTextEntryTextField)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = SMUTextEntryTextField;
  result = [(SMUTextEntryTextField *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_allowsFocus = 0;
  }

  return result;
}

- (void)setMaxLength:(unint64_t)length
{
  if (self->_maxLength != length)
  {
    v11 = v3;
    v12 = v4;
    self->_maxLength = length;
    text = [(SMUTextEntryTextField *)self text];
    v7 = [(SMUTextEntryTextField *)self _filteredRangeForText:text];
    v9 = [text substringWithRange:{v7, v8}];
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
    text = [(SMUTextEntryTextField *)&v8 text];
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
    text2 = [(SMUTextEntryTextField *)&v9 text];
    text = [text2 stringByTrimmingCharactersInSet:text_tabCharacterSet];
  }

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = [(SMUTextEntryTextField *)self _filteredRangeForText:textCopy];
  v7 = [textCopy substringWithRange:{v5, v6}];

  v8.receiver = self;
  v8.super_class = SMUTextEntryTextField;
  [(SMUTextEntryTextField *)&v8 setText:v7];
}

- (void)insertText:(id)text
{
  textCopy = text;
  v5 = [(SMUTextEntryTextField *)self _filteredRangeForText:textCopy];
  v7 = [textCopy substringWithRange:{v5, v6}];

  v8.receiver = self;
  v8.super_class = SMUTextEntryTextField;
  [(SMUTextEntryTextField *)&v8 insertText:v7];
}

- (_NSRange)_filteredRangeForText:(id)text
{
  textCopy = text;
  v5 = [textCopy length];
  text = [(SMUTextEntryTextField *)self text];
  if ([(SMUTextEntryTextField *)self maxLength])
  {
    v7 = [text length];
    v8 = [textCopy length] + v7;
    if (v8 > [(SMUTextEntryTextField *)self maxLength])
    {
      maxLength = [(SMUTextEntryTextField *)self maxLength];
      v5 = maxLength - [text length];
    }
  }

  v10 = 0;
  v11 = v5;
  result.length = v11;
  result.location = v10;
  return result;
}

@end