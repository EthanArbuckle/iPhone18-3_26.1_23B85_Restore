@interface UIPatternCGColor
- (UIPatternCGColor)initWithCGColor:(CGColor *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation UIPatternCGColor

- (void)dealloc
{
  CGColorRelease(self->_cachedUnflippedColor);
  self->_cachedUnflippedColor = 0;
  v3.receiver = self;
  v3.super_class = UIPatternCGColor;
  [(UICGColor *)&v3 dealloc];
}

- (UIPatternCGColor)initWithCGColor:(CGColor *)a3
{
  ColorSpace = CGColorGetColorSpace(a3);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelPattern)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:1056 description:@"Parameter to -[UIPatternCGColor initWithCGColor:] must be a pattern color."];
  }

  v9.receiver = self;
  v9.super_class = UIPatternCGColor;
  return [(UICGColor *)&v9 initWithCGColor:a3];
}

- (id)description
{
  Pattern = CGColorGetPattern([(UICGColor *)self CGColor]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(UIPatternCGColor *)self colorSpaceName];
  v6 = [v4 stringWithFormat:@"%@ %@", v5, Pattern];

  return v6;
}

@end