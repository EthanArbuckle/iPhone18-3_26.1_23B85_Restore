@interface STUIStatusBarRoundedCornerView
- (STUIStatusBarRoundedCornerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation STUIStatusBarRoundedCornerView

- (STUIStatusBarRoundedCornerView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarRoundedCornerView;
  result = [(STUIStatusBarRoundedCornerView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_cornerRadius = -1.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = STUIStatusBarRoundedCornerView;
  [(STUIStatusBarRoundedCornerView *)&v13 layoutSubviews];
  cornerRadius = self->_cornerRadius;
  [(STUIStatusBarRoundedCornerView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = fmin(v4, v6) * 0.5;
  if (cornerRadius == -1.0)
  {
    cornerRadius = v8;
  }

  v9 = [(STUIStatusBarRoundedCornerView *)self layer];
  [v9 setCornerRadius:cornerRadius];

  v10 = MEMORY[0x277CDA138];
  if (vabdd_f64(v5, v7) <= 1.0)
  {
    v10 = MEMORY[0x277CDA130];
  }

  v11 = *v10;
  v12 = [(STUIStatusBarRoundedCornerView *)self layer];
  [v12 setCornerCurve:v11];
}

@end