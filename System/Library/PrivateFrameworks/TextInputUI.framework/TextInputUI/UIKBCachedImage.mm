@interface UIKBCachedImage
- (UIColor)formatColor;
- (void)setFormatColor:(id)a3;
@end

@implementation UIKBCachedImage

- (void)setFormatColor:(id)a3
{
  if (a3)
  {
    v5 = self;
    v6 = a3;
    [(UIKBCachedImage *)self CGImage];
    [v6 CGColor];

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