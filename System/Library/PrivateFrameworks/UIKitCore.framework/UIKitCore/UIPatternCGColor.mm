@interface UIPatternCGColor
- (UIPatternCGColor)initWithCGColor:(CGColor *)color;
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

- (UIPatternCGColor)initWithCGColor:(CGColor *)color
{
  ColorSpace = CGColorGetColorSpace(color);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelPattern)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:1056 description:@"Parameter to -[UIPatternCGColor initWithCGColor:] must be a pattern color."];
  }

  v9.receiver = self;
  v9.super_class = UIPatternCGColor;
  return [(UICGColor *)&v9 initWithCGColor:color];
}

- (id)description
{
  Pattern = CGColorGetPattern([(UICGColor *)self CGColor]);
  v4 = MEMORY[0x1E696AEC0];
  colorSpaceName = [(UIPatternCGColor *)self colorSpaceName];
  pattern = [v4 stringWithFormat:@"%@ %@", colorSpaceName, Pattern];

  return pattern;
}

@end