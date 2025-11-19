@interface UIBannerView
@end

@implementation UIBannerView

uint64_t __45___UIBannerView_setHighlighted_initialPress___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 432);
  v3 = 0.3;
  if (!v1)
  {
    v3 = 0.0;
  }

  return [v2 setAlpha:v3];
}

@end