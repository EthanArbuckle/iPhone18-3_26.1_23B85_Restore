@interface UISearchControllerCarPlaySearchBarAnimator
@end

@implementation UISearchControllerCarPlaySearchBarAnimator

void __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _resultsControllerViewContainer];
  [v1 setAlpha:1.0];
}

uint64_t __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsFocusUpdate];
  v2 = *(a1 + 40);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

void __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 _setDisableFocus:0];

  if ([*(a1 + 32) automaticallyShowsCancelButton])
  {
    v3 = [*(a1 + 32) searchBar];
    [v3 setShowsCancelButton:0 animated:{objc_msgSend(*(a1 + 40), "isAnimated")}];
  }

  v4 = [*(a1 + 32) searchBar];
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    v6 = [*(a1 + 32) searchBar];
    [v6 resignFirstResponder];
  }
}

uint64_t __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

void __78___UISearchControllerCarPlaySearchBarAnimator_didFocusSearchBarForController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 superview];
  [v1 layoutIfNeeded];
}

void __80___UISearchControllerCarPlaySearchBarAnimator_didUnfocusSearchBarForController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [v2 superview];
  [v1 layoutIfNeeded];
}

@end