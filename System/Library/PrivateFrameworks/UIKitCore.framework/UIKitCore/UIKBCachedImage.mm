@interface UIKBCachedImage
- (UIColor)formatColor;
- (void)setFormatColor:(id)color;
@end

@implementation UIKBCachedImage

- (UIColor)formatColor
{
  [(UIImage *)self CGImage];
  if (CGImageGetProperty())
  {
    [UIColor colorWithCGColor:?];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v2 = ;

  return v2;
}

- (void)setFormatColor:(id)color
{
  if (color)
  {
    selfCopy = self;
    colorCopy = color;
    [(UIImage *)self CGImage];
    [colorCopy CGColor];

    CGImageSetProperty();
  }
}

@end