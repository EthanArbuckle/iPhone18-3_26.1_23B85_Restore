@interface UIProgressIndicator
+ (CGSize)size;
- (void)setAnimating:(BOOL)animating;
@end

@implementation UIProgressIndicator

+ (CGSize)size
{
  [self defaultSizeForStyle:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setAnimating:(BOOL)animating
{
  if (animating)
  {
    [(UIActivityIndicatorView *)self startAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)self stopAnimating];
  }
}

@end