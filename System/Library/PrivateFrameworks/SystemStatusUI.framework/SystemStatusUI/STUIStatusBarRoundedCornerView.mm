@interface STUIStatusBarRoundedCornerView
- (STUIStatusBarRoundedCornerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation STUIStatusBarRoundedCornerView

- (STUIStatusBarRoundedCornerView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarRoundedCornerView;
  result = [(STUIStatusBarRoundedCornerView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  layer = [(STUIStatusBarRoundedCornerView *)self layer];
  [layer setCornerRadius:cornerRadius];

  v10 = MEMORY[0x277CDA138];
  if (vabdd_f64(v5, v7) <= 1.0)
  {
    v10 = MEMORY[0x277CDA130];
  }

  v11 = *v10;
  layer2 = [(STUIStatusBarRoundedCornerView *)self layer];
  [layer2 setCornerCurve:v11];
}

@end