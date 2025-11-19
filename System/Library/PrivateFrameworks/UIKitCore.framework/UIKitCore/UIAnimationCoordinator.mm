@interface UIAnimationCoordinator
@end

@implementation UIAnimationCoordinator

uint64_t __45___UIAnimationCoordinator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) _postInteractiveCompletionHandler];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 16) _postInteractiveCompletionHandler];
    v3[2]();

    [*(*(a1 + 32) + 16) _setPostInteractiveCompletionHandler:0];
  }

  [*(*(a1 + 32) + 16) completeTransition:1];
  v4 = *(*(a1 + 32) + 16);

  return [v4 _setAnimator:0];
}

uint64_t __45___UIAnimationCoordinator_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 16);

  return [v4 __runAlongsideAnimations];
}

uint64_t __45___UIAnimationCoordinator_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) endDisablingInterfaceAutorotation];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end