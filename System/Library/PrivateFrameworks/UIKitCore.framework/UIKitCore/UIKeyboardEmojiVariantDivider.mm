@interface UIKeyboardEmojiVariantDivider
- (CGSize)intrinsicContentSize;
- (UIKeyboardEmojiVariantDivider)initWithFrame:(CGRect)a3;
- (void)setRenderConfig:(id)a3;
@end

@implementation UIKeyboardEmojiVariantDivider

- (UIKeyboardEmojiVariantDivider)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiVariantDivider;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:3.0, 0.0, 1.0, 38.0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    v6 = [(UIView *)v3->_backgroundView layer];
    [v6 setCornerRadius:6.0];

    v7 = +[UIColor separatorColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v7];

    [(UIView *)v3 addSubview:v3->_backgroundView];
  }

  return v3;
}

- (void)setRenderConfig:(id)a3
{
  if ([a3 lightKeyboard])
  {
    UIKeyboardGetLightCandidateSeparatorColor();
  }

  else
  {
    [UIColor colorWithWhite:1.0 alpha:0.1];
  }
  v4 = ;
  [(UIView *)self->_backgroundView setBackgroundColor:v4];
}

- (CGSize)intrinsicContentSize
{
  v2 = 38.0;
  v3 = 7.0;
  result.height = v2;
  result.width = v3;
  return result;
}

@end