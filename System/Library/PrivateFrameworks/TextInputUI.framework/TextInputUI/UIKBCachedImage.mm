@interface UIKBCachedImage
- (UIColor)formatColor;
- (void)setFormatColor:(id)color;
@end

@implementation UIKBCachedImage

- (void)setFormatColor:(id)color
{
  if (color)
  {
    selfCopy = self;
    colorCopy = color;
    [(UIKBCachedImage *)self CGImage];
    [colorCopy CGColor];

    CGImageSetProperty();
  }
}

- (UIColor)formatColor
{
  [(UIKBCachedImage *)self CGImage];
  if (CGImageGetProperty())
  {
    [MEMORY[0x1E69DC888] colorWithCGColor:?];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

@end