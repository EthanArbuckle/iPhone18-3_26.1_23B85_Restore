@interface _UISearchControllerTransplantSearchBarAnimator
- (void)animateTransition:(id)transition;
@end

@implementation _UISearchControllerTransplantSearchBarAnimator

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

  v53 = v10;
  searchBar = [v10 searchBar];
  _supportsLayoutStates = [searchBar _supportsLayoutStates];
  v55 = _searchPresentationController;
  if (isKindOfClass)
  {
    selfCopy = self;
    v51 = v5;
    if ([_searchPresentationController searchBarToBecomeTopAttached])
    {
      [v6 set_previousSearchBarPosition:{objc_msgSend(searchBar, "barPosition")}];
      [searchBar _setBarPosition:3];
    }

    searchBarContainerView = [_searchPresentationController searchBarContainerView];
    [searchBarContainerView addSubview:searchBar];

    view = [v6 view];
    [transitionCopy finalFrameForViewController:v6];
    [view setFrame:?];
    containerView = [transitionCopy containerView];
    [containerView addSubview:view];

    [(UIView *)view _recursiveEagerlyUpdateSafeAreaInsetsUntilViewController];
    [_searchPresentationController resultsControllerContentOffset];
    v19 = v18;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3010000000;
    v80 = "";
    v81 = *MEMORY[0x1E695EFF8];
    searchResultsController = [v6 searchResultsController];
    v52 = _supportsLayoutStates;
    v21 = [searchResultsController _contentOrObservableScrollViewForEdge:1];
    if ([v6 hidesNavigationBarDuringPresentation])
    {
      presentingViewController2 = [_searchPresentationController presentingViewController];
      navigationController = [presentingViewController2 navigationController];
      v24 = navigationController != 0;
    }

    else
    {
      v24 = 0;
    }

    if (fabs(v19) >= 2.22044605e-16)
    {
      [v21 contentInset];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = v78;
      v78[4] = 0.0;
      v40[5] = -v19;
      if (v24)
      {
        [v6 _resultsContentScrollViewPresentationOffset];
        v78[5] = v78[5] - v41;
      }

      else
      {
        [v6 set_resultsContentScrollViewPresentationOffset:0.0];
      }

      [v21 setContentInset:{v19, v35, v37, v39}];
      [v21 setContentOffset:{v78[4], v78[5]}];
      [v21 setScrollIndicatorInsets:{v19, v35, v37, v39}];
    }

    _resultsControllerViewContainer = [v6 _resultsControllerViewContainer];
    [_resultsControllerViewContainer setAlpha:0.0];

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke;
    v68[3] = &unk_1E711EB18;
    v69 = v6;
    v74 = v52;
    v43 = searchBar;
    v70 = v43;
    v75 = isAnimated;
    v44 = searchResultsController;
    v76 = v24;
    v71 = v44;
    v73 = &v77;
    v45 = v21;
    v72 = v45;
    v46 = _Block_copy(v68);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_2;
    v65[3] = &unk_1E70F3C60;
    v66 = v43;
    v47 = transitionCopy;
    v67 = v47;
    v48 = _Block_copy(v65);
    if (isAnimated)
    {
      [(_UISearchControllerAnimator *)selfCopy transitionDuration:v47];
      v32 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v46, v48, v49, 0.0);
    }

    else
    {
      v46[2](v46);
      v32 = transitionCoordinator;
      v48[2](v48, 1);
    }

    _Block_object_dispose(&v77, 8);
    v5 = v51;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_3;
    aBlock[3] = &unk_1E70F67F8;
    v25 = v5;
    v26 = _supportsLayoutStates;
    v27 = v25;
    v61 = v25;
    v63 = v26;
    v28 = searchBar;
    v62 = v28;
    v64 = isAnimated;
    v29 = _Block_copy(aBlock);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __68___UISearchControllerTransplantSearchBarAnimator_animateTransition___block_invoke_4;
    v56[3] = &unk_1E70F4638;
    v57 = v27;
    v58 = v28;
    v30 = transitionCopy;
    v59 = v30;
    v31 = _Block_copy(v56);
    if (isAnimated)
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v30];
      v32 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v29, v31, v33, 0.0);
    }

    else
    {
      v29[2](v29);
      v31[2](v31, 1);
      v32 = transitionCoordinator;
    }

    view = v61;
  }
}

@end