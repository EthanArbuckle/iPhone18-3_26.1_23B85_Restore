@interface _UIStatusBarRoundedCornerView
- (_UIStatusBarRoundedCornerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UIStatusBarRoundedCornerView

- (_UIStatusBarRoundedCornerView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarRoundedCornerView;
  result = [(UIView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v9 = [(UIView *)self layer];
  [v9 setCornerRadius:cornerRadius];

  v10 = MEMORY[0x1E69796E8];
  if (vabdd_f64(v5, v7) <= 1.0)
  {
    v10 = MEMORY[0x1E69796E0];
  }

  v11 = *v10;
  v12 = [(UIView *)self layer];
  [v12 setCornerCurve:v11];
}

@end