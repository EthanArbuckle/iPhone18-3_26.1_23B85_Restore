@interface _UISearchControllerOffscreenSearchBarAnimator
- (void)animateTransition:(id)a3;
@end

@implementation _UISearchControllerOffscreenSearchBarAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:@"UITransitionContextFromViewController"];
  v6 = [v4 viewControllerForKey:@"UITransitionContextToViewController"];
  v69 = [v4 isAnimated];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  v10 = [v9 _searchPresentationController];
  v11 = [v9 presentingViewController];
  v71 = [v11 transitionCoordinator];

  v12 = [v9 searchBar];
  v13 = v12;
  if (isKindOfClass)
  {
    v65 = self;
    if ([v10 searchBarToBecomeTopAttached])
    {
      [v13 _setBarPosition:3];
    }

    v14 = [v13 _includedInPresentationByOffscreenAnimator];
    v15 = MEMORY[0x1E695EFF8];
    if (v14)
    {
      v16 = [v10 searchBarContainerView];
      v17 = [v13 window];

      if (!v17)
      {
        [v13 frame];
        v95.origin.x = *v15;
        v95.origin.y = v15[1];
        [v13 setFrame:{*v15, v95.origin.y - CGRectGetHeight(v95), v95.size.width, v95.size.height}];
      }

      [v16 addSubview:v13];
    }

    v18 = [v4 viewForKey:@"UITransitionContextToView"];
    v19 = v18;
    v68 = v9;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v6 view];
    }

    v33 = v20;

    [v4 finalFrameForViewController:v6];
    [v33 setFrame:?];
    v34 = [v4 containerView];
    v66 = v33;
    [v34 addSubview:v33];

    [v10 resultsControllerContentOffset];
    v36 = v35;
    v38 = *v15;
    v37 = v15[1];
    v39 = [v6 searchResultsController];
    v40 = [v39 _contentOrObservableScrollViewForEdge:1];
    v41 = v40;
    if (fabs(v36) >= 2.22044605e-16)
    {
      [v40 contentInset];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      [v41 setContentInset:v36];
      [v41 setContentOffset:{v38, v37}];
      [v41 setScrollIndicatorInsets:{v36, v43, v45, v47}];
      v38 = 0.0;
      v37 = -v36;
    }

    if ([v6 automaticallyShowsCancelButton])
    {
      if (_UISolariumEnabled())
      {
        v48 = v6;
      }

      else
      {
        v48 = 0;
      }

      [v13 _setShowsCancelButton:1 onBehalfOfSearchController:v48];
    }

    [v13 frame];
    x = v97.origin.x;
    width = v97.size.width;
    height = v97.size.height;
    v52 = CGRectGetHeight(v97) + v97.origin.y;
    v67 = v10;
    if ([v13 barPosition] == 3)
    {
      [v10 statusBarAdjustment];
      v52 = v52 + v53;
    }

    v54 = [v6 _resultsControllerViewContainer];
    [v54 setAlpha:0.0];

    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke;
    v84[3] = &unk_1E711EAF0;
    v55 = v6;
    v85 = v55;
    v86 = v13;
    v89 = x;
    v90 = v52;
    v91 = width;
    v92 = height;
    v56 = v39;
    v87 = v56;
    v57 = v41;
    v88 = v57;
    v93 = v38;
    v94 = v37;
    v58 = _Block_copy(v84);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_2;
    v82[3] = &unk_1E70F5AC0;
    v59 = v4;
    v83 = v59;
    v60 = _Block_copy(v82);
    [v55 _prepareInlineSearchAccessoryVisible:1 shouldUpdatePosition:1];
    if (v69)
    {
      v70 = v5;
      v61 = _UISolariumEnabled();
      [(_UISearchControllerAnimator *)v65 transitionDuration:v59];
      v63 = v62;
      if (!v61)
      {
        v30 = v71;
        +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v71 completionCurve], v58, v60, v62, 0.0);
        v5 = v70;
        goto LABEL_35;
      }

      v64 = objc_opt_new();
      [UIView _animateWithDuration:0 delay:v64 options:v58 factory:v60 animations:v63 completion:0.0];

      v5 = v70;
    }

    else
    {
      v58[2](v58);
      v60[2](v60, 1);
    }

    v30 = v71;
LABEL_35:

    v10 = v67;
    v9 = v68;
    v32 = v66;
    goto LABEL_36;
  }

  [v12 frame];
  v21 = v96.origin.x;
  v22 = v96.size.width;
  v23 = v96.size.height;
  v24 = v96.origin.y - CGRectGetHeight(v96);
  if ([v13 barPosition] == 3)
  {
    [v10 statusBarAdjustment];
    v24 = v24 - v25;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_3;
  aBlock[3] = &unk_1E7100760;
  v76 = v5;
  v26 = v13;
  v77 = v26;
  v78 = v21;
  v79 = v24;
  v80 = v22;
  v81 = v23;
  v27 = _Block_copy(aBlock);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __67___UISearchControllerOffscreenSearchBarAnimator_animateTransition___block_invoke_4;
  v72[3] = &unk_1E70F3C60;
  v73 = v26;
  v28 = v4;
  v74 = v28;
  v29 = _Block_copy(v72);
  if (v69)
  {
    [(_UISearchControllerAnimator *)self transitionDuration:v28];
    v30 = v71;
    +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v71 completionCurve], v27, v29, v31, 0.0);
  }

  else
  {
    v27[2](v27);
    v29[2](v29, 1);
    v30 = v71;
  }

  v32 = v76;
LABEL_36:
}

@end