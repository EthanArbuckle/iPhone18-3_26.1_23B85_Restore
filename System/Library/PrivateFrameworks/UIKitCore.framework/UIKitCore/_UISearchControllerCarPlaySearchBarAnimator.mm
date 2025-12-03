@interface _UISearchControllerCarPlaySearchBarAnimator
- (void)animateTransition:(id)transition;
- (void)didFocusSearchBarForController:(id)controller;
- (void)didUnfocusSearchBarForController:(id)controller;
@end

@implementation _UISearchControllerCarPlaySearchBarAnimator

- (void)animateTransition:(id)transition
{
  v191[4] = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v4 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v5 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  presentingViewController = [v8 presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  _searchPresentationController = [v8 _searchPresentationController];
  searchBar = [v8 searchBar];
  if (isKindOfClass)
  {
    view = [v5 view];
    [view setAutoresizingMask:26];

    view2 = [v5 view];
    [transitionCopy finalFrameForViewController:v5];
    [view2 setFrame:?];
    containerView = [transitionCopy containerView];
    [containerView addSubview:view2];

    if ([v5 obscuresBackgroundDuringPresentation])
    {
      backgroundObscuringView = [_searchPresentationController backgroundObscuringView];
      [transitionCopy finalFrameForViewController:v5];
      [backgroundObscuringView setFrame:?];
    }

    if (searchBar)
    {
      searchBar2 = [v5 searchBar];
      [searchBar2 _setDisableFocus:1];

      if ([v5 automaticallyShowsCancelButton])
      {
        [searchBar setShowsCancelButton:1 animated:{objc_msgSend(transitionCopy, "isAnimated")}];
      }
    }

    v174 = transitionCopy;
    _systemInputViewController = [v5 _systemInputViewController];
    v175 = view2;
    v177 = _systemInputViewController;
    v172 = v8;
    v173 = v4;
    v170 = searchBar;
    v171 = _searchPresentationController;
    if ([_systemInputViewController supportsTouchInput])
    {
      searchBar3 = [v5 searchBar];
      searchField = [searchBar3 searchField];
      [searchField frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [view2 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      _screen = [view2 _screen];
      [_screen scale];
      UIRectCenteredXInRectScale(v21, v23, v25, v27, v29, v31, v33, v35, v37);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      searchBarContainerView = [_searchPresentationController searchBarContainerView];
      [searchBarContainerView setFrame:{v39, v41, v43, v45}];

      view3 = [_systemInputViewController view];
      v48 = *(MEMORY[0x1E695EFD0] + 16);
      v189[0] = *MEMORY[0x1E695EFD0];
      v189[1] = v48;
      v189[2] = *(MEMORY[0x1E695EFD0] + 32);
      [view3 setTransform:v189];

      view4 = [_systemInputViewController view];
      [view4 layoutIfNeeded];

      v50 = [_systemInputViewController alignmentConstraintForAxis:1];
      if (!v50)
      {
        v51 = MEMORY[0x1E69977A0];
        view5 = [_systemInputViewController view];
        view6 = [_systemInputViewController view];
        superview = [view6 superview];
        v50 = [v51 constraintWithItem:view5 attribute:4 relatedBy:0 toItem:superview attribute:4 multiplier:1.0 constant:0.0];

        _systemInputViewController = v177;
        [v50 setActive:1];
        [v177 setAlignmentConstraint:v50 forAxis:1];
      }

      v169 = v50;
      v55 = [_systemInputViewController alignmentConstraintForAxis:0];
      if (!v55)
      {
        v56 = MEMORY[0x1E69977A0];
        view7 = [_systemInputViewController view];
        view8 = [_systemInputViewController view];
        superview2 = [view8 superview];
        safeAreaLayoutGuide = [superview2 safeAreaLayoutGuide];
        v55 = [v56 constraintWithItem:view7 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide attribute:9 multiplier:1.0 constant:0.0];

        _systemInputViewController = v177;
        [v55 setActive:1];
        [v177 setAlignmentConstraint:v55 forAxis:0];
      }

      v168 = v55;
      v61 = [UIView alloc];
      v62 = [(UIView *)v61 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v62 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)v62 setUserInteractionEnabled:0];
      [v5 set_systemInputMarginView:v62];
      v152 = MEMORY[0x1E69977A0];
      leftAnchor = [(UIView *)v62 leftAnchor];
      safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
      leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
      v160 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v191[0] = v160;
      rightAnchor = [(UIView *)v62 rightAnchor];
      safeAreaLayoutGuide3 = [view2 safeAreaLayoutGuide];
      rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
      v150 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v191[1] = v150;
      topAnchor = [(UIView *)v62 topAnchor];
      view9 = [_systemInputViewController view];
      topAnchor2 = [view9 topAnchor];
      [topAnchor constraintEqualToAnchor:topAnchor2];
      v66 = v65 = _systemInputViewController;
      v191[2] = v66;
      bottomAnchor = [(UIView *)v62 bottomAnchor];
      view10 = [v65 view];
      [view10 bottomAnchor];
      v70 = v69 = v5;
      v71 = [bottomAnchor constraintEqualToAnchor:v70];
      v191[3] = v71;
      v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:4];
      [v152 activateConstraints:v72];

      v5 = v69;
      _resultsControllerViewContainer = [v69 _resultsControllerViewContainer];
      superview3 = [_resultsControllerViewContainer superview];
      [superview3 bounds];
      v76 = v75;
      v78 = v77;

      v4 = v173;
      navigationController = [v173 navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar frame];
      MaxY = CGRectGetMaxY(v192);

      view11 = [v69 view];
      [view11 frame];
      v84 = v83 - MaxY;

      _resultsControllerViewContainer2 = [v69 _resultsControllerViewContainer];
      [(UIView *)_resultsControllerViewContainer2 setFrame:v76, MaxY, v78, v84];
      v86 = v174;
    }

    else
    {
      navigationController2 = [v4 navigationController];
      navigationBar2 = [navigationController2 navigationBar];
      [navigationBar2 frame];
      v96 = CGRectGetMaxY(v193);

      v97 = v96 + 1.0;
      v98 = [_systemInputViewController alignmentConstraintForAxis:1];
      if (!v98)
      {
        v99 = MEMORY[0x1E69977A0];
        view12 = [_systemInputViewController view];
        view13 = [_systemInputViewController view];
        superview4 = [view13 superview];
        v98 = [v99 constraintWithItem:view12 attribute:3 relatedBy:0 toItem:superview4 attribute:3 multiplier:1.0 constant:v97];

        _systemInputViewController = v177;
        view2 = v175;

        [v98 setActive:1];
        [v177 setAlignmentConstraint:v98 forAxis:1];
      }

      v169 = v98;
      v103 = [_systemInputViewController alignmentConstraintForAxis:0];
      if (!v103)
      {
        v104 = MEMORY[0x1E69977A0];
        view14 = [_systemInputViewController view];
        view15 = [_systemInputViewController view];
        superview5 = [view15 superview];
        safeAreaLayoutGuide4 = [superview5 safeAreaLayoutGuide];
        v103 = [v104 constraintWithItem:view14 attribute:9 relatedBy:0 toItem:safeAreaLayoutGuide4 attribute:9 multiplier:1.0 constant:0.0];

        _systemInputViewController = v177;
        view2 = v175;

        [v103 setActive:1];
        [v177 setAlignmentConstraint:v103 forAxis:0];
      }

      v168 = v103;
      view16 = [_systemInputViewController view];
      [view16 layoutIfNeeded];

      _resultsControllerViewContainer3 = [v5 _resultsControllerViewContainer];
      if (_resultsControllerViewContainer3)
      {
        v111 = _resultsControllerViewContainer3;
        view17 = [_systemInputViewController view];
        [view17 frame];
        v113 = v97 + CGRectGetHeight(v194);

        [(UIView *)v111 frame];
        v115 = v114;
        [(UIView *)v111 frame];
        v117 = v116;
        [(UIView *)v111 frame];
        v119 = v118 - v113;
        v165 = v111;
        v120 = v111;
        v121 = v115;
        v122 = v113;
        v123 = v117;
      }

      else
      {
        view18 = [v4 view];
        [(UIView *)view18 frame];
        v122 = 132.0;
        v121 = 0.0;
        v165 = view18;
        v120 = view18;
      }

      [(UIView *)v120 setFrame:v121, v122, v123, v119];
      v126 = [UIView alloc];
      _resultsControllerViewContainer2 = [(UIView *)v126 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)_resultsControllerViewContainer2 setTranslatesAutoresizingMaskIntoConstraints:0];
      v127 = +[UIColor tableBackgroundColor];
      [(UIView *)_resultsControllerViewContainer2 setBackgroundColor:v127];

      [v5 set_systemInputMarginView:_resultsControllerViewContainer2];
      v149 = MEMORY[0x1E69977A0];
      leftAnchor3 = [(UIView *)_resultsControllerViewContainer2 leftAnchor];
      safeAreaLayoutGuide5 = [view2 safeAreaLayoutGuide];
      leftAnchor4 = [safeAreaLayoutGuide5 leftAnchor];
      v157 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      v190[0] = v157;
      rightAnchor3 = [(UIView *)_resultsControllerViewContainer2 rightAnchor];
      safeAreaLayoutGuide6 = [view2 safeAreaLayoutGuide];
      rightAnchor4 = [safeAreaLayoutGuide6 rightAnchor];
      v147 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      v190[1] = v147;
      topAnchor3 = [(UIView *)_resultsControllerViewContainer2 topAnchor];
      [_systemInputViewController view];
      v130 = v129 = _systemInputViewController;
      topAnchor4 = [v130 topAnchor];
      [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v132 = v167 = v5;
      v190[2] = v132;
      bottomAnchor2 = [(UIView *)_resultsControllerViewContainer2 bottomAnchor];
      view19 = [v129 view];
      bottomAnchor3 = [view19 bottomAnchor];
      v136 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v190[3] = v136;
      v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:4];
      [v149 activateConstraints:v137];

      v5 = v167;
      v4 = v173;
      v86 = v174;
      v62 = v165;
    }

    view20 = [v177 view];
    superview6 = [view20 superview];
    view21 = [v177 view];
    [superview6 bringSubviewToFront:view21];

    _resultsControllerViewContainer4 = [v5 _resultsControllerViewContainer];
    [_resultsControllerViewContainer4 setAlpha:0.0];

    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke;
    v187[3] = &unk_1E70F3590;
    v142 = v5;
    v188 = v142;
    v143 = _Block_copy(v187);
    v184[0] = MEMORY[0x1E69E9820];
    v184[1] = 3221225472;
    v184[2] = __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_2;
    v184[3] = &unk_1E70F3C60;
    v185 = v142;
    v87 = v86;
    v144 = v86;
    v186 = v144;
    v145 = _Block_copy(v184);
    v8 = v172;
    searchBar = v170;
    if ([v144 isAnimated])
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v144];
      v92 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v143, v145, v146, 0.0);
    }

    else
    {
      v143[2](v143);
      v145[2](v145, 1);
      v92 = transitionCoordinator;
    }

    _searchPresentationController = v171;
    v124 = v175;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_3;
    aBlock[3] = &unk_1E70F35B8;
    v182 = v4;
    v87 = transitionCopy;
    v88 = transitionCopy;
    v183 = v88;
    v89 = _Block_copy(aBlock);
    v179[0] = MEMORY[0x1E69E9820];
    v179[1] = 3221225472;
    v179[2] = __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_4;
    v179[3] = &unk_1E70F5AC0;
    v90 = v88;
    v180 = v90;
    v91 = _Block_copy(v179);
    if ([v90 isAnimated])
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v90];
      v92 = transitionCoordinator;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v89, v91, v93, 0.0);
    }

    else
    {
      v89[2](v89);
      v91[2](v91, 1);
      v92 = transitionCoordinator;
    }

    v124 = v182;
  }
}

- (void)didFocusSearchBarForController:(id)controller
{
  controllerCopy = controller;
  _systemInputViewController = [controllerCopy _systemInputViewController];
  searchBar = [controllerCopy searchBar];
  [searchBar becomeFirstResponder];

  if ([_systemInputViewController supportsTouchInput])
  {
    view = [_systemInputViewController view];
    [view frame];
    MinY = CGRectGetMinY(v18);
    _resultsControllerViewContainer = [controllerCopy _resultsControllerViewContainer];
    [_resultsControllerViewContainer frame];
    MaxY = CGRectGetMaxY(v19);

    if (MinY >= MaxY)
    {
      view2 = [_systemInputViewController view];
      superview = [view2 superview];
      [superview layoutIfNeeded];

      v13 = [_systemInputViewController alignmentConstraintForAxis:1];
      [v13 setConstant:0.0];
      [(_UISearchControllerAnimator *)self transitionDuration:0];
      v15 = v14;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78___UISearchControllerCarPlaySearchBarAnimator_didFocusSearchBarForController___block_invoke;
      v16[3] = &unk_1E70F3590;
      v17 = _systemInputViewController;
      [UIView animateWithDuration:v16 animations:0 completion:v15];
    }
  }
}

- (void)didUnfocusSearchBarForController:(id)controller
{
  controllerCopy = controller;
  _systemInputViewController = [controllerCopy _systemInputViewController];
  if ([_systemInputViewController supportsTouchInput])
  {
    view = [_systemInputViewController view];
    v7 = view;
    if (view)
    {
      [view transform];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v19);

    if (IsIdentity)
    {
      view2 = [_systemInputViewController view];
      superview = [view2 superview];
      [superview layoutIfNeeded];

      v11 = [_systemInputViewController alignmentConstraintForAxis:1];
      view3 = [_systemInputViewController view];
      [view3 frame];
      [v11 setConstant:v13];

      [(_UISearchControllerAnimator *)self transitionDuration:0];
      v15 = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80___UISearchControllerCarPlaySearchBarAnimator_didUnfocusSearchBarForController___block_invoke;
      v17[3] = &unk_1E70F3590;
      v18 = _systemInputViewController;
      [UIView animateWithDuration:v17 animations:0 completion:v15];
    }
  }

  searchBar = [controllerCopy searchBar];
  [searchBar resignFirstResponder];
}

@end