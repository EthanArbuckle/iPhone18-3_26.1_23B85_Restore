@interface UIToolbarContentView
@end

@implementation UIToolbarContentView

uint64_t __62___UIToolbarContentView_updateWithItems_fromOldItems_animate___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 440) view];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

@end