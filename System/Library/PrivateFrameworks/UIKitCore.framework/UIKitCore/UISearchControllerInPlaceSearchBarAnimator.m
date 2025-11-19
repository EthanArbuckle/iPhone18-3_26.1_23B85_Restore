@interface UISearchControllerInPlaceSearchBarAnimator
@end

@implementation UISearchControllerInPlaceSearchBarAnimator

void __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startDeferringSettingSearchSuggestionsWithReason:1];
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:1.0];

  if ([*(a1 + 32) _previousSearchBarPosition] != -1)
  {
    [*(a1 + 40) _setBarPosition:3];
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_24;
  }

  if (![*(a1 + 40) _isHostedByNavigationBar])
  {
    [*(a1 + 40) _driveTransitionToSearchLayoutState:3];
    goto LABEL_9;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
LABEL_24:
    if ([*(a1 + 32) automaticallyShowsCancelButton])
    {
      [*(a1 + 40) setShowsCancelButton:1 animated:*(a1 + 65)];
    }
  }

LABEL_9:
  v3 = *(a1 + 48);
  if (v3 && [v3 _compatibleContentInsetAdjustmentBehavior] == 101 && *(a1 + 66) == 1)
  {
    [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
    *(*(*(a1 + 56) + 8) + 40) = v4 + *(*(*(a1 + 56) + 8) + 40);
    [*(a1 + 48) setContentOffset:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
  }

  v5 = [*(a1 + 32) _managedPalette];
  if (v5)
  {
    v16 = v5;
    v6 = [*(a1 + 40) scopeButtonTitles];
    if ([v6 count])
    {
      v7 = [*(a1 + 40) _scopeBarIsVisible];

      if ((v7 & 1) == 0)
      {
        [*(a1 + 40) _setShowsScopeBar:1 animateOpacity:*(a1 + 65)];
        [*(a1 + 40) _setScopeBarHidden:0];
      }
    }

    else
    {
    }

    [*(a1 + 40) sizeToFit];
    [*(a1 + 40) frame];
    v9 = v8;
    [v16 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v16 setFrame:*(a1 + 65) isAnimating:?];
    v18.origin.x = v11;
    v18.origin.y = v13;
    v18.size.width = v15;
    v18.size.height = v9;
    [v16 _setTopConstraintConstant:CGRectGetMinY(v18)];
    [*(a1 + 40) layoutBelowIfNeeded];
    v5 = v16;
  }
}

uint64_t __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v2 = *(a1 + 40);

  return [v2 _stopDeferringSearchSuggestionsWithReason:1 postDeferralAction:1];
}

void __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _resultsControllerViewContainer];
  [v2 setAlpha:0.0];

  if ([*(a1 + 40) barPosition] == 3 && objc_msgSend(*(a1 + 32), "_previousSearchBarPosition") != -1)
  {
    [*(a1 + 40) _setBarPosition:{objc_msgSend(*(a1 + 32), "_previousSearchBarPosition")}];
    [*(a1 + 32) set_previousSearchBarPosition:-1];
  }

  if (*(a1 + 48) == 1)
  {
    if (![*(a1 + 40) _isHostedByNavigationBar])
    {
      [*(a1 + 40) _driveTransitionToSearchLayoutState:2];
      goto LABEL_10;
    }

    if (*(a1 + 48))
    {
      goto LABEL_10;
    }
  }

  if ([*(a1 + 32) automaticallyShowsCancelButton])
  {
    v3 = [*(a1 + 32) searchBar];
    [v3 setShowsCancelButton:0 animated:*(a1 + 49)];
  }

LABEL_10:
  v4 = [*(a1 + 32) searchBar];
  v5 = [v4 isFirstResponder];

  if (v5)
  {
    v6 = [*(a1 + 32) searchBar];
    [v6 resignFirstResponder];
  }

  [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
  if (fabs(v7) >= 2.22044605e-16)
  {
    v8 = [*(a1 + 32) searchResultsController];
    v14 = [v8 _contentOrObservableScrollViewForEdge:1];

    if (v14 && [v14 _compatibleContentInsetAdjustmentBehavior] == 101)
    {
      [v14 contentOffset];
      v10 = v9;
      v12 = v11;
      [*(a1 + 32) _resultsContentScrollViewPresentationOffset];
      [v14 setContentOffset:{v10, v12 - v13}];
    }
  }
}

uint64_t __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

@end