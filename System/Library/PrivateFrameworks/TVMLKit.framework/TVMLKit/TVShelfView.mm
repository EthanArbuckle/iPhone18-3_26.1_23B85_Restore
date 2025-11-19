@interface TVShelfView
@end

@implementation TVShelfView

uint64_t __69___TVShelfView__updateLayoutForFocusedView_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v3 = v2;
  [*(a1 + 40) frame];
  v4 = *(a1 + 32);

  return [v4 setFrame:v3];
}

@end