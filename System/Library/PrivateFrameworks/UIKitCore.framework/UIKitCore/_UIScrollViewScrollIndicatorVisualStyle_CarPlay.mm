@interface _UIScrollViewScrollIndicatorVisualStyle_CarPlay
- (id)colorForIndicatorStyle:(int64_t)style expanded:(BOOL)expanded;
@end

@implementation _UIScrollViewScrollIndicatorVisualStyle_CarPlay

- (id)colorForIndicatorStyle:(int64_t)style expanded:(BOOL)expanded
{
  if (style)
  {
    v6.receiver = self;
    v6.super_class = _UIScrollViewScrollIndicatorVisualStyle_CarPlay;
    v4 = [(_UIScrollViewScrollIndicatorVisualStyle_iOS *)&v6 colorForIndicatorStyle:style expanded:expanded];
  }

  else
  {
    v4 = [UIColor colorWithWhite:0 alpha:expanded, 0.68, 0.2];
  }

  return v4;
}

@end