@interface _UISearchControllerInPlaceSearchBarAnimator
- (void)animateTransition:(id)transition;
@end

@implementation _UISearchControllerInPlaceSearchBarAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  isAnimated = [transitionCopy isAnimated];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  _searchPresentationController = [v10 _searchPresentationController];
  presentingViewController = [v10 presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  searchBar = [v10 searchBar];
  _supportsLayoutStates = [searchBar _supportsLayoutStates];
  v49 = v5;
  v51 = _searchPresentationController;
  v52 = searchBar;
  if (isKindOfClass)
  {
    selfCopy = self;
    [v6 set_resultsContentScrollViewPresentationOffset:0.0];
    if ([_searchPresentationController searchBarToBecomeTopAttached])
    {
      [v6 set_previousSearchBarPosition:{objc_msgSend(searchBar, "barPosition")}];
    }

    view = [v6 view];
    [transitionCopy finalFrameForViewController:v6];
    [view setFrame:?];
    containerView = [transitionCopy containerView];
    window = [containerView window];
    windowScene = [window windowScene];

    v47 = windowScene;
    if ([v6 _searchFieldIsBeginningEditing] && windowScene)
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke;
      v76[3] = &unk_1E70F35B8;
      v77 = containerView;
      v78 = view;
      [UIView _performBlockWithoutAutomaticallyUpdatingFirstResponder:v76 forScene:windowScene];
    }

    else
    {
      [containerView addSubview:view];
    }

    [_searchPresentationController resultsControllerContentOffset];
    v24 = v23;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3010000000;
    v74 = "";
    v75 = *MEMORY[0x1E695EFF8];
    searchResultsController = [v6 searchResultsController];
    v25 = [searchResultsController _contentOrObservableScrollViewForEdge:1];
    if ([v6 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      presentingViewController2 = [_searchPresentationController presentingViewController];
      navigationController = [presentingViewController2 navigationController];
      v28 = navigationController != 0;
    }

    else
    {
      v28 = 0;
    }

    v29 = fabs(v24) < 2.22044605e-16 || v25 == 0;
    if (!v29 && [v25 _compatibleContentInsetAdjustmentBehavior] == 101)
    {
      [v25 contentInset];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = v72;
      v72[4] = 0.0;
      v36[5] = -v24;
      if (v28)
      {
        [v6 _resultsContentScrollViewPresentationOffset];
        v72[5] = v72[5] - v37;
      }

      else
      {
        [v6 set_resultsContentScrollViewPresentationOffset:0.0];
      }

      [v25 setContentInset:{v24, v31, v33, v35}];
      [v25 setContentOffset:{v72[4], v72[5]}];
      [v25 setScrollIndicatorInsets:{v24, v31, v33, v35}];
    }

    _resultsControllerViewContainer = [v6 _resultsControllerViewContainer];
    [_resultsControllerViewContainer setAlpha:0.0];

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_2;
    v63[3] = &unk_1E711EAC8;
    v39 = v6;
    v64 = v39;
    v65 = v52;
    v68 = _supportsLayoutStates;
    v69 = isAnimated;
    v40 = v25;
    v70 = v28;
    v66 = v40;
    v67 = &v71;
    v41 = _Block_copy(v63);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_3;
    v60[3] = &unk_1E70F3C60;
    v42 = transitionCopy;
    v61 = v42;
    v62 = v39;
    v43 = _Block_copy(v60);
    if (isAnimated)
    {
      [(_UISearchControllerAnimator *)selfCopy transitionDuration:v42];
      v21 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v41, v43, v44, 0.0);
    }

    else
    {
      v41[2](v41);
      v21 = transitionCoordinator;
      v43[2](v43, 1);
    }

    _Block_object_dispose(&v71, 8);
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_4;
    aBlock[3] = &unk_1E70F67F8;
    v56 = v5;
    v57 = searchBar;
    v58 = _supportsLayoutStates;
    v59 = isAnimated;
    v18 = _Block_copy(aBlock);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_5;
    v53[3] = &unk_1E70F5AC0;
    v19 = transitionCopy;
    v54 = v19;
    v20 = _Block_copy(v53);
    if (isAnimated)
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v19];
      v21 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v18, v20, v22, 0.0);
    }

    else
    {
      v18[2](v18);
      v20[2](v20, 1);
      v21 = transitionCoordinator;
    }

    view = v56;
  }
}

@end