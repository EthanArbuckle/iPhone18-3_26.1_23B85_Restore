@interface UINavigationCrossfadeAnimator
@end

@implementation UINavigationCrossfadeAnimator

uint64_t __52___UINavigationCrossfadeAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __52___UINavigationCrossfadeAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

@end