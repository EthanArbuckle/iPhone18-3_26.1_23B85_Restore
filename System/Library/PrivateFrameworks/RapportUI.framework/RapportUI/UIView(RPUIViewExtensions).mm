@interface UIView(RPUIViewExtensions)
- (double)borderWidth;
- (uint64_t)borderColor;
- (uint64_t)shadowUIColor;
- (void)setBorderColor:()RPUIViewExtensions;
- (void)setBorderWidth:()RPUIViewExtensions;
- (void)setShadowUIColor:()RPUIViewExtensions;
@end

@implementation UIView(RPUIViewExtensions)

- (uint64_t)borderColor
{
  layer = [self layer];
  borderColor = [layer borderColor];

  v3 = MEMORY[0x277D75348];

  return [v3 colorWithCGColor:borderColor];
}

- (void)setBorderColor:()RPUIViewExtensions
{
  v5 = a3;
  cGColor = [a3 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];
}

- (double)borderWidth
{
  v1 = objc_getAssociatedObject(self, sel_borderWidth);
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)setBorderWidth:()RPUIViewExtensions
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(self, sel_borderWidth, v4, 1);

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = a2 / v5;
  layer = [self layer];
  [layer setBorderWidth:v6];
}

- (uint64_t)shadowUIColor
{
  layer = [self layer];
  shadowColor = [layer shadowColor];

  v3 = MEMORY[0x277D75348];

  return [v3 colorWithCGColor:shadowColor];
}

- (void)setShadowUIColor:()RPUIViewExtensions
{
  v5 = a3;
  cGColor = [a3 CGColor];
  layer = [self layer];
  [layer setShadowColor:cGColor];
}

@end