@interface UIStatusBarNewUIDoubleHeightStyleAttributes
- (double)heightForMetrics:(int64_t)a3;
@end

@implementation UIStatusBarNewUIDoubleHeightStyleAttributes

- (double)heightForMetrics:(int64_t)a3
{
  if (a3 == 1)
  {
    return 40.0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = UIStatusBarNewUIDoubleHeightStyleAttributes;
  [(UIStatusBarStyleAttributes *)&v6 heightForMetrics:?];
  return result;
}

@end