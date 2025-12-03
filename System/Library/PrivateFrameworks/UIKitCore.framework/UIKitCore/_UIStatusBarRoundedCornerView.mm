@interface _UIStatusBarRoundedCornerView
- (_UIStatusBarRoundedCornerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIStatusBarRoundedCornerView

- (_UIStatusBarRoundedCornerView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarRoundedCornerView;
  result = [(UIView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_cornerRadius = -1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _UIStatusBarRoundedCornerView;
  [(UIView *)&v13 layoutSubviews];
  cornerRadius = self->_cornerRadius;
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = fmin(v4, v6) * 0.5;
  if (cornerRadius == -1.0)
  {
    cornerRadius = v8;
  }

  layer = [(UIView *)self layer];
  [layer setCornerRadius:cornerRadius];

  v10 = MEMORY[0x1E69796E8];
  if (vabdd_f64(v5, v7) <= 1.0)
  {
    v10 = MEMORY[0x1E69796E0];
  }

  v11 = *v10;
  layer2 = [(UIView *)self layer];
  [layer2 setCornerCurve:v11];
}

@end