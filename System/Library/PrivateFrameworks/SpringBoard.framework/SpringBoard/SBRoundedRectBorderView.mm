@interface SBRoundedRectBorderView
- (SBRoundedRectBorderView)initWithFrame:(CGRect)frame;
- (UIColor)borderColor;
- (double)borderWidth;
- (double)cornerRadius;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setCornerRadius:(double)radius;
@end

@implementation SBRoundedRectBorderView

- (SBRoundedRectBorderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBRoundedRectBorderView;
  v3 = [(SBRoundedRectBorderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBRoundedRectBorderView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (double)cornerRadius
{
  layer = [(SBRoundedRectBorderView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(SBRoundedRectBorderView *)self layer];
  [layer setCornerRadius:radius];
}

- (double)borderWidth
{
  layer = [(SBRoundedRectBorderView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)width
{
  layer = [(SBRoundedRectBorderView *)self layer];
  [layer setBorderWidth:width];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x277D75348];
  layer = [(SBRoundedRectBorderView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(SBRoundedRectBorderView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

@end