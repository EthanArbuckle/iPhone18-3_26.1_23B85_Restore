@interface UISearchControllerOffscreenSearchBarAnimator
@end

@implementation UISearchControllerOffscreenSearchBarAnimator

void *__67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:1.0];

  [*(a1 + 40) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [*(a1 + 40) becomeFirstResponder];
  v3 = [*(a1 + 40) scopeButtonTitles];
  if ([v3 count])
  {
    v4 = [*(a1 + 40) _scopeBarIsVisible];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) _setShowsScopeBar:1 animateOpacity:1];
      [*(a1 + 40) _setScopeBarHidden:0];
      [*(a1 + 40) sizeToFit];
      [*(a1 + 40) layoutBelowIfNeeded];
    }
  }

  else
  {
  }

  result = *(a1 + 48);
  if (result)
  {
    result = [result automaticallyAdjustsScrollViewInsets];
    if (result)
    {
      v6 = *(a1 + 96);
      v7 = *(a1 + 104);
      v8 = *(a1 + 56);

      return [v8 setContentOffset:{v6, v7}];
    }
  }

  return result;
}

uint64_t __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

void __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:0.0];

  [*(a1 + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  if ([*(a1 + 40) isFirstResponder])
  {
    [*(a1 + 40) resignFirstResponder];
  }

  [*(a1 + 32) _prepareInlineSearchAccessoryVisible:0 shouldUpdatePosition:0];
  v3 = [*(a1 + 40) scopeButtonTitles];
  if ([v3 count])
  {
    v4 = [*(a1 + 40) _scopeBarIsVisible];

    if (v4)
    {
      [*(a1 + 40) _setShowsScopeBar:0 animateOpacity:1];
      [*(a1 + 40) sizeToFit];
      [*(a1 + 40) layoutBelowIfNeeded];
    }
  }

  else
  {
  }

  [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
  if (fabs(v5) >= 2.22044605e-16)
  {
    v6 = [*(a1 + 32) searchResultsController];
    v12 = [v6 _contentOrObservableScrollViewForEdge:1];

    [v12 contentOffset];
    v8 = v7;
    v10 = v9;
    [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
    [v12 setContentOffset:{v8, v10 + v11}];
  }
}

uint64_t __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setScopeBarHidden:1];
  v2 = *(a1 + 40);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

@end