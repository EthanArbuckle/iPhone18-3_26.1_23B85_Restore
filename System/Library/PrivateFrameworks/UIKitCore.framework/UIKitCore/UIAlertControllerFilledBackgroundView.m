@interface UIAlertControllerFilledBackgroundView
@end

@implementation UIAlertControllerFilledBackgroundView

uint64_t __57___UIAlertControllerFilledBackgroundView_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = 0.4;
  if (!*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 408) setAlpha:v1];
}

@end