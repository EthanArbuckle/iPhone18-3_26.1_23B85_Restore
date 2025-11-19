@interface _UIScrollViewScrollIndicatorVisualStyle_CarPlay
- (id)colorForIndicatorStyle:(int64_t)a3 expanded:(BOOL)a4;
@end

@implementation _UIScrollViewScrollIndicatorVisualStyle_CarPlay

- (id)colorForIndicatorStyle:(int64_t)a3 expanded:(BOOL)a4
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = _UIScrollViewScrollIndicatorVisualStyle_CarPlay;
    v4 = [(_UIScrollViewScrollIndicatorVisualStyle_iOS *)&v6 colorForIndicatorStyle:a3 expanded:a4];
  }

  else
  {
    v4 = [UIColor colorWithWhite:0 alpha:a4, 0.68, 0.2];
  }

  return v4;
}

@end