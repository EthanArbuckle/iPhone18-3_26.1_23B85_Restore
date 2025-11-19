@interface UIKBCachedImage
- (UIColor)formatColor;
- (void)setFormatColor:(id)a3;
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

- (void)setFormatColor:(id)a3
{
  if (a3)
  {
    v5 = self;
    v6 = a3;
    [(UIImage *)self CGImage];
    [v6 CGColor];

    CGImageSetProperty();
  }
}

@end