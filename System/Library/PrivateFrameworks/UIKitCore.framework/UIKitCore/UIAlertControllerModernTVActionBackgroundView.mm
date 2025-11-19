@interface UIAlertControllerModernTVActionBackgroundView
@end

@implementation UIAlertControllerModernTVActionBackgroundView

uint64_t __65___UIAlertControllerModernTVActionBackgroundView_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) backgroundView];
  [v3 setBackgroundColor:v2];

  [*(a1 + 32) updateCompositingForHighlighted:*(a1 + 56)];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) backgroundView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);

  return [v6 setShouldShowShadow:v7];
}

@end