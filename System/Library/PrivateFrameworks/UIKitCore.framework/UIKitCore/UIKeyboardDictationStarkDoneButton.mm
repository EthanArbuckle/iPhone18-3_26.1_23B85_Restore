@interface UIKeyboardDictationStarkDoneButton
- (UIKeyboardDictationStarkDoneButton)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation UIKeyboardDictationStarkDoneButton

- (UIKeyboardDictationStarkDoneButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIKeyboardDictationStarkDoneButton;
  v3 = [(UIButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = v3;
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v7 = CGRectInset(v6, 4.0, 4.0);
  v4 = [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:v7.origin.x cornerRadii:v7.origin.y, v7.size.width, v7.size.height, v7.size.height * 0.5, v7.size.height * 0.5];
  v3 = +[UIColor blackColor];
  [v3 set];

  [v4 fill];
}

@end