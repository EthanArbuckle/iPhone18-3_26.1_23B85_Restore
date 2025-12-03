@interface ACMSimpleTextField
- (ACMSimpleTextField)initWithFrame:(CGRect)frame;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
@end

@implementation ACMSimpleTextField

- (ACMSimpleTextField)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = ACMSimpleTextField;
  v3 = [(ACMSimpleTextField *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [MEMORY[0x29EDC7A58] currentDevice];
    v4 = @"textField.png";
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v4 = @"textField_iPad.png";
    }

    v5 = ACMImageWithName(v4);
    [MEMORY[0x29EDC7A58] currentDevice];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")])
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }

    -[ACMSimpleTextField setBackground:](v3, "setBackground:", [v5 stretchableImageWithLeftCapWidth:v6 topCapHeight:0]);
    [(ACMSimpleTextField *)v3 setBorderStyle:0];
  }

  return v3;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  [(ACMSimpleTextField *)self clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  v5 = v4 + -7.0 + -6.0;
  v6 = height + -4.0;
  v7 = 7.0;
  v8 = 2.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  [(ACMSimpleTextField *)self clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  v5 = v4 + -7.0 + -6.0;
  v6 = height + -4.0;
  v7 = 7.0;
  v8 = 2.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  [(ACMSimpleTextField *)self clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  v5 = v4 + -7.0 + -6.0;
  v6 = height + -4.0;
  v7 = 9.0;
  v8 = 2.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

@end