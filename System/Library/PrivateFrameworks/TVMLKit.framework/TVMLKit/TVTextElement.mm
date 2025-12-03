@interface TVTextElement
- (NSAttributedString)attributedText;
- (id)attributedStringWithFont:(id)font;
- (id)attributedStringWithFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment;
- (int64_t)textStyle;
@end

@implementation TVTextElement

- (NSAttributedString)attributedText
{
  element = [(TVViewElement *)self element];
  tv_attributedString = [element tv_attributedString];

  return tv_attributedString;
}

- (int64_t)textStyle
{
  element = [(TVViewElement *)self element];
  tv_textStyle = [element tv_textStyle];

  return tv_textStyle;
}

- (id)attributedStringWithFont:(id)font
{
  fontCopy = font;
  element = [(TVViewElement *)self element];
  v6 = [element attributedStringWithFont:fontCopy];

  return v6;
}

- (id)attributedStringWithFont:(id)font foregroundColor:(id)color textAlignment:(int64_t)alignment
{
  colorCopy = color;
  fontCopy = font;
  element = [(TVViewElement *)self element];
  v11 = [element attributedStringWithFont:fontCopy foregroundColor:colorCopy textAlignment:alignment];

  return v11;
}

@end