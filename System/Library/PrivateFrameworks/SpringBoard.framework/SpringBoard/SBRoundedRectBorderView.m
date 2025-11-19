@interface SBRoundedRectBorderView
- (SBRoundedRectBorderView)initWithFrame:(CGRect)a3;
- (UIColor)borderColor;
- (double)borderWidth;
- (double)cornerRadius;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setCornerRadius:(double)a3;
@end

@implementation SBRoundedRectBorderView

- (SBRoundedRectBorderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBRoundedRectBorderView;
  v3 = [(SBRoundedRectBorderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(SBRoundedRectBorderView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (double)cornerRadius
{
  v2 = [(SBRoundedRectBorderView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(SBRoundedRectBorderView *)self layer];
  [v4 setCornerRadius:a3];
}

- (double)borderWidth
{
  v2 = [(SBRoundedRectBorderView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(SBRoundedRectBorderView *)self layer];
  [v4 setBorderWidth:a3];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x277D75348];
  v3 = [(SBRoundedRectBorderView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "borderColor")}];

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v6 = [(SBRoundedRectBorderView *)self layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

@end