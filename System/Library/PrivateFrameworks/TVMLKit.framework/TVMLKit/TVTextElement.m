@interface TVTextElement
- (NSAttributedString)attributedText;
- (id)attributedStringWithFont:(id)a3;
- (id)attributedStringWithFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5;
- (int64_t)textStyle;
@end

@implementation TVTextElement

- (NSAttributedString)attributedText
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 tv_attributedString];

  return v3;
}

- (int64_t)textStyle
{
  v2 = [(TVViewElement *)self element];
  v3 = [v2 tv_textStyle];

  return v3;
}

- (id)attributedStringWithFont:(id)a3
{
  v4 = a3;
  v5 = [(TVViewElement *)self element];
  v6 = [v5 attributedStringWithFont:v4];

  return v6;
}

- (id)attributedStringWithFont:(id)a3 foregroundColor:(id)a4 textAlignment:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TVViewElement *)self element];
  v11 = [v10 attributedStringWithFont:v9 foregroundColor:v8 textAlignment:a5];

  return v11;
}

@end