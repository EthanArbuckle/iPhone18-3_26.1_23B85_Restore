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
  v1 = [a1 layer];
  v2 = [v1 borderColor];

  v3 = MEMORY[0x277D75348];

  return [v3 colorWithCGColor:v2];
}

- (void)setBorderColor:()RPUIViewExtensions
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [a1 layer];
  [v7 setBorderColor:v6];
}

- (double)borderWidth
{
  v1 = objc_getAssociatedObject(a1, sel_borderWidth);
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (void)setBorderWidth:()RPUIViewExtensions
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(a1, sel_borderWidth, v4, 1);

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v6 = a2 / v5;
  v7 = [a1 layer];
  [v7 setBorderWidth:v6];
}

- (uint64_t)shadowUIColor
{
  v1 = [a1 layer];
  v2 = [v1 shadowColor];

  v3 = MEMORY[0x277D75348];

  return [v3 colorWithCGColor:v2];
}

- (void)setShadowUIColor:()RPUIViewExtensions
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [a1 layer];
  [v7 setShadowColor:v6];
}

@end