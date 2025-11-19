@interface UIActionSheetCompactPresentationController
@end

@implementation UIActionSheetCompactPresentationController

void __98___UIActionSheetCompactPresentationController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 386) = 0;
  [*(a1 + 32) _layoutViews];
  v2 = [*(a1 + 32) presentedViewController];
  [v2 _updateContentOverlayInsetsFromParentIfNecessary];
}

uint64_t __78___UIActionSheetCompactPresentationController_presentationTransitionWillBegin__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setShouldAdoptPresentedAppearance:a2];
  [*(a1 + 32) _applyVisualAffordancesToViews];
  v3 = *(a1 + 32);

  return [v3 _layoutViews];
}

uint64_t __75___UIActionSheetCompactPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _applyVisualAffordancesToViews];
  v2 = *(a1 + 32);

  return [v2 _layoutViews];
}

void __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained presentedViewController];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 animationCoordinator];
  v5 = [v4 transitionContext];
  v6 = [v5 _transitionCoordinator];
  [v2 viewWillTransitionToSize:v6 withTransitionCoordinator:{*(a1 + 40), *(a1 + 48)}];
}

void __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutViews];
}

void __101___UIActionSheetCompactPresentationController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAnimationCoordinator:0];
}

@end