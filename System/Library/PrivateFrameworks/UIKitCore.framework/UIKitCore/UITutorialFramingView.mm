@interface UITutorialFramingView
- (UITutorialFramingView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation UITutorialFramingView

- (UITutorialFramingView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = UITutorialFramingView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = +[UIColor clearColor];
    [(UIView *)v4 setBackgroundColor:v5];

    v6 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
    widthAnchor = [(UIView *)v4 widthAnchor];
    heightAnchor = [(UIView *)v4 heightAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:dbl_18A6786E0[v6]];
    [v9 setActive:1];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  v6 = CGRectInset(rect, 5.0, 5.0);
  v4 = [UIBezierPath bezierPathWithRoundedRect:v6.origin.x cornerRadius:v6.origin.y, v6.size.width, v6.size.height, 14.0];
  v3 = +[UIColor systemWhiteColor];
  [v3 setStroke];

  [v4 setLineWidth:6.0];
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v4 setLineWidth:10.0];
  }

  [v4 stroke];
}

@end