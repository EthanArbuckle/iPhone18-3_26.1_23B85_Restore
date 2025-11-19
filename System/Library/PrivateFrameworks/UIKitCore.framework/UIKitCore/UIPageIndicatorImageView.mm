@interface UIPageIndicatorImageView
@end

@implementation UIPageIndicatorImageView

uint64_t __38___UIPageIndicatorImageView_setImage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) center];
  v3 = v2;
  v5 = v4;
  [*(a1 + 32) sizeToFit];
  v6 = *(a1 + 32);

  return [v6 setCenter:{v3, v5}];
}

@end