@interface UIKeyboardEmojiVariantDivider
- (CGSize)intrinsicContentSize;
- (UIKeyboardEmojiVariantDivider)initWithFrame:(CGRect)frame;
- (void)setRenderConfig:(id)config;
@end

@implementation UIKeyboardEmojiVariantDivider

- (UIKeyboardEmojiVariantDivider)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = UIKeyboardEmojiVariantDivider;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIView alloc] initWithFrame:3.0, 0.0, 1.0, 38.0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    layer = [(UIView *)v3->_backgroundView layer];
    [layer setCornerRadius:6.0];

    v7 = +[UIColor separatorColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v7];

    [(UIView *)v3 addSubview:v3->_backgroundView];
  }

  return v3;
}

- (void)setRenderConfig:(id)config
{
  if ([config lightKeyboard])
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