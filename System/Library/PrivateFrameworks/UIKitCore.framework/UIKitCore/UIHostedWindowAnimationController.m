@interface UIHostedWindowAnimationController
@end

@implementation UIHostedWindowAnimationController

uint64_t __56___UIHostedWindowAnimationController_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v2 = [*(a1 + 40) transitionActions];

  if (v2)
  {
    v3 = [*(a1 + 40) transitionActions];
    v3[2]();
  }

  v4 = *(a1 + 48);

  return [v4 __runAlongsideAnimations];
}

uint64_t __56___UIHostedWindowAnimationController_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTransitionActions:0];
  [*(a1 + 40) completeTransition:1];
  [*(a1 + 40) _setAnimator:0];
  v2 = *(a1 + 48);

  return [v2 _setAnimationController:0];
}

@end