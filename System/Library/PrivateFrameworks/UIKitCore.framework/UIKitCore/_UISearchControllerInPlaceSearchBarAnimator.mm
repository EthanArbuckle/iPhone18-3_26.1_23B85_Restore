@interface _UISearchControllerInPlaceSearchBarAnimator
- (void)animateTransition:(id)a3;
@end

@implementation _UISearchControllerInPlaceSearchBarAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
  v7 = [v4 isAnimated];
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
  v11 = [v10 _searchPresentationController];
  v12 = [v10 presentingViewController];
  v50 = [v12 transitionCoordinator];

  v13 = [v10 searchBar];
  v14 = [v13 _supportsLayoutStates];
  v49 = v5;
  v51 = v11;
  v52 = v13;
  if (isKindOfClass)
  {
    v45 = self;
    [v6 set_resultsContentScrollViewPresentationOffset:0.0];
    if ([v11 searchBarToBecomeTopAttached])
    {
      [v6 set_previousSearchBarPosition:{objc_msgSend(v13, "barPosition")}];
    }

    v15 = [v6 view];
    [v4 finalFrameForViewController:v6];
    [v15 setFrame:?];
    v48 = [v4 containerView];
    v16 = [v48 window];
    v17 = [v16 windowScene];

    v47 = v17;
    if ([v6 _searchFieldIsBeginningEditing] && v17)
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke;
      v76[3] = &unk_1E70F35B8;
      v77 = v48;
      v78 = v15;
      [UIView _performBlockWithoutAutomaticallyUpdatingFirstResponder:v76 forScene:v17];
    }

    else
    {
      [v48 addSubview:v15];
    }

    [v11 resultsControllerContentOffset];
    v24 = v23;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3010000000;
    v74 = "";
    v75 = *MEMORY[0x1E695EFF8];
    v46 = [v6 searchResultsController];
    v25 = [v46 _contentOrObservableScrollViewForEdge:1];
    if ([v6 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      v26 = [v11 presentingViewController];
      v27 = [v26 navigationController];
      v28 = v27 != 0;
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

    v38 = [v6 _resultsControllerViewContainer];
    [v38 setAlpha:0.0];

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_2;
    v63[3] = &unk_1E711EAC8;
    v39 = v6;
    v64 = v39;
    v65 = v52;
    v68 = v14;
    v69 = v7;
    v40 = v25;
    v70 = v28;
    v66 = v40;
    v67 = &v71;
    v41 = _Block_copy(v63);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_3;
    v60[3] = &unk_1E70F3C60;
    v42 = v4;
    v61 = v42;
    v62 = v39;
    v43 = _Block_copy(v60);
    if (v7)
    {
      [(_UISearchControllerAnimator *)v45 transitionDuration:v42];
      v21 = v50;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v50 completionCurve], v41, v43, v44, 0.0);
    }

    else
    {
      v41[2](v41);
      v21 = v50;
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
    v57 = v13;
    v58 = v14;
    v59 = v7;
    v18 = _Block_copy(aBlock);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __65___UISearchControllerInPlaceSearchBarAnimator_animateTransition___block_invoke_5;
    v53[3] = &unk_1E70F5AC0;
    v19 = v4;
    v54 = v19;
    v20 = _Block_copy(v53);
    if (v7)
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v19];
      v21 = v50;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v50 completionCurve], v18, v20, v22, 0.0);
    }

    else
    {
      v18[2](v18);
      v20[2](v20, 1);
      v21 = v50;
    }

    v15 = v56;
  }
}

@end