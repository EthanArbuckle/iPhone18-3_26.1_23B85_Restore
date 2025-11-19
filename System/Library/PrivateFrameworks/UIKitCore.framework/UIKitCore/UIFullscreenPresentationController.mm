@interface UIFullscreenPresentationController
@end

@implementation UIFullscreenPresentationController

uint64_t __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

uint64_t __120___UIFullscreenPresentationController__adjustOrientationIfNecessaryInWindow_forViewController_preservingViewController___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = *(*(*(result + 40) + 8) + 24);
  }

  return result;
}

void __118___UIFullscreenPresentationController__placeCounterRotationViewWithView_inWindow_fromOrientation_toOrientation_force___block_invoke(uint64_t a1)
{
  [(UIWindow *)*(a1 + 32) _internal_setRotatableViewOrientation:0 updateStatusBar:1 duration:0.0 force:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  [(UIWindow *)v2 _internal_setRotatableViewOrientation:v3 updateStatusBar:1 duration:v4 force:0.0];
}

void __69___UIFullscreenPresentationController__transitionDidEnd_isDismissal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _removeCounterRotationIfApplied];
    if (*(a1 + 40) == 1)
    {
      v3 = [v5 presentedViewController];
      [v3 _setFreezeLayoutForOrientationChangeOnDismissal:0];
    }

    v4 = v5[57];
    v5[57] = 0;

    WeakRetained = v5;
  }
}

@end