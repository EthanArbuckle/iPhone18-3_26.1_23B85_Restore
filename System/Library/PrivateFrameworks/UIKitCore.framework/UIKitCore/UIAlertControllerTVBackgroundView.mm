@interface UIAlertControllerTVBackgroundView
@end

@implementation UIAlertControllerTVBackgroundView

uint64_t __53___UIAlertControllerTVBackgroundView_setHighlighted___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setShouldShowShadow:v3];
}

uint64_t __49___UIAlertControllerTVBackgroundView_setPressed___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setAlpha:*(a1 + 40)];
  result = [*(*(a1 + 32) + 424) setAlpha:*(a1 + 48)];
  v3 = *(a1 + 32);
  if (*(v3 + 419) == 1)
  {
    [*(v3 + 424) setShadowVerticalOffset:*(a1 + 64)];
    v4 = *(*(a1 + 32) + 424);
    v5 = *(a1 + 72);

    return [v4 setShadowRadius:v5];
  }

  return result;
}

@end