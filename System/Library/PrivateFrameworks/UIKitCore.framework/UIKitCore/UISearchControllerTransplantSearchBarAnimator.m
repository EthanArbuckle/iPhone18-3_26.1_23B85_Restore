@interface UISearchControllerTransplantSearchBarAnimator
@end

@implementation UISearchControllerTransplantSearchBarAnimator

void __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:1.0];

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) _driveTransitionToSearchLayoutState:3];
  }

  else if ([*(a1 + 32) automaticallyShowsCancelButton])
  {
    [*(a1 + 40) setShowsCancelButton:1 animated:*(a1 + 73)];
  }

  v3 = *(a1 + 48);
  if (v3 && [v3 automaticallyAdjustsScrollViewInsets] && *(a1 + 74) == 1)
  {
    [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
    *(*(*(a1 + 64) + 8) + 40) = v4 + *(*(*(a1 + 64) + 8) + 40);
    [*(a1 + 56) setContentOffset:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v7 = [*(a1 + 40) scopeButtonTitles];
    if ([v7 count])
    {
      v5 = [*(a1 + 40) _scopeBarIsVisible];

      if ((v5 & 1) == 0)
      {
        [*(a1 + 40) _setShowsScopeBar:1 animateOpacity:1];
        [*(a1 + 40) _setScopeBarHidden:0];
        [*(a1 + 40) sizeToFit];
        v6 = *(a1 + 40);

        [v6 layoutBelowIfNeeded];
      }
    }

    else
    {
    }
  }
}

uint64_t __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setMaskActive:0];
  v2 = *(a1 + 40);
  v3 = [v2 transitionWasCancelled] ^ 1;

  return [v2 completeTransition:v3];
}

void __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:0.0];

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 40) _driveTransitionToSearchLayoutState:2];
  }

  else if ([*(a1 + 32) automaticallyShowsCancelButton])
  {
    v3 = [*(a1 + 32) searchBar];
    [v3 setShowsCancelButton:0 animated:*(a1 + 49)];
  }

  if ([*(a1 + 40) isFirstResponder])
  {
    [*(a1 + 40) resignFirstResponder];
  }

  [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
  if (fabs(v4) >= 2.22044605e-16)
  {
    v5 = [*(a1 + 32) searchResultsController];
    v6 = [v5 _contentOrObservableScrollViewForEdge:1];

    [v6 contentOffset];
    v8 = v7;
    v10 = v9;
    [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
    [v6 setContentOffset:{v8, v10 - v11}];
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v14 = [*(a1 + 40) scopeButtonTitles];
    if ([v14 count])
    {
      v12 = [*(a1 + 40) _scopeBarIsVisible];

      if (v12)
      {
        [*(a1 + 40) _setShowsScopeBar:0 animateOpacity:1];
        [*(a1 + 40) sizeToFit];
        v13 = *(a1 + 40);

        [v13 layoutBelowIfNeeded];
      }
    }

    else
    {
    }
  }
}

uint64_t __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) _previousSearchBarPosition] != -1)
  {
    [*(a1 + 40) _setBarPosition:{objc_msgSend(*(a1 + 32), "_previousSearchBarPosition")}];
    v2 = *(a1 + 40);
    v3 = [v2 barPosition] == 3 && objc_msgSend(*(a1 + 32), "_previousSearchBarPosition") != 3;
    [v2 _setMaskActive:v3];
    [*(a1 + 32) set_previousSearchBarPosition:-1];
  }

  [*(a1 + 40) _setScopeBarHidden:1];
  v4 = *(a1 + 48);
  v5 = [v4 transitionWasCancelled] ^ 1;

  return [v4 completeTransition:v5];
}

@end