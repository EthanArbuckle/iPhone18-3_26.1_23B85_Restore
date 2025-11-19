@interface PXUIContainerView
@end

@implementation PXUIContainerView

uint64_t __37___PXUIContainerView_didMoveToWindow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) deferredAppearingAnimation];
  v2[2]();

  v3 = *(a1 + 32);

  return [v3 setDeferredAppearingAnimation:0];
}

@end