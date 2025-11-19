@interface _UISearchControllerCarPlaySearchBarAnimator
- (void)animateTransition:(id)a3;
- (void)didFocusSearchBarForController:(id)a3;
- (void)didUnfocusSearchBarForController:(id)a3;
@end

@implementation _UISearchControllerCarPlaySearchBarAnimator

- (void)animateTransition:(id)a3
{
  v191[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 viewControllerForKey:@"UITransitionContextFromViewController"];
  v5 = [v3 viewControllerForKey:@"UITransitionContextToViewController"];
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
  v9 = [v8 presentingViewController];
  v178 = [v9 transitionCoordinator];

  v10 = [v8 _searchPresentationController];
  v11 = [v8 searchBar];
  if (isKindOfClass)
  {
    v12 = [v5 view];
    [v12 setAutoresizingMask:26];

    v13 = [v5 view];
    [v3 finalFrameForViewController:v5];
    [v13 setFrame:?];
    v14 = [v3 containerView];
    [v14 addSubview:v13];

    if ([v5 obscuresBackgroundDuringPresentation])
    {
      v15 = [v10 backgroundObscuringView];
      [v3 finalFrameForViewController:v5];
      [v15 setFrame:?];
    }

    if (v11)
    {
      v16 = [v5 searchBar];
      [v16 _setDisableFocus:1];

      if ([v5 automaticallyShowsCancelButton])
      {
        [v11 setShowsCancelButton:1 animated:{objc_msgSend(v3, "isAnimated")}];
      }
    }

    v174 = v3;
    v17 = [v5 _systemInputViewController];
    v175 = v13;
    v177 = v17;
    v172 = v8;
    v173 = v4;
    v170 = v11;
    v171 = v10;
    if ([v17 supportsTouchInput])
    {
      v18 = [v5 searchBar];
      v19 = [v18 searchField];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [v13 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = [v13 _screen];
      [v36 scale];
      UIRectCenteredXInRectScale(v21, v23, v25, v27, v29, v31, v33, v35, v37);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = [v10 searchBarContainerView];
      [v46 setFrame:{v39, v41, v43, v45}];

      v47 = [v17 view];
      v48 = *(MEMORY[0x1E695EFD0] + 16);
      v189[0] = *MEMORY[0x1E695EFD0];
      v189[1] = v48;
      v189[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v47 setTransform:v189];

      v49 = [v17 view];
      [v49 layoutIfNeeded];

      v50 = [v17 alignmentConstraintForAxis:1];
      if (!v50)
      {
        v51 = MEMORY[0x1E69977A0];
        v52 = [v17 view];
        v53 = [v17 view];
        v54 = [v53 superview];
        v50 = [v51 constraintWithItem:v52 attribute:4 relatedBy:0 toItem:v54 attribute:4 multiplier:1.0 constant:0.0];

        v17 = v177;
        [v50 setActive:1];
        [v177 setAlignmentConstraint:v50 forAxis:1];
      }

      v169 = v50;
      v55 = [v17 alignmentConstraintForAxis:0];
      if (!v55)
      {
        v56 = MEMORY[0x1E69977A0];
        v57 = [v17 view];
        v58 = [v17 view];
        v59 = [v58 superview];
        v60 = [v59 safeAreaLayoutGuide];
        v55 = [v56 constraintWithItem:v57 attribute:9 relatedBy:0 toItem:v60 attribute:9 multiplier:1.0 constant:0.0];

        v17 = v177;
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
      v164 = [(UIView *)v62 leftAnchor];
      v166 = [v13 safeAreaLayoutGuide];
      v162 = [v166 leftAnchor];
      v160 = [v164 constraintEqualToAnchor:v162];
      v191[0] = v160;
      v156 = [(UIView *)v62 rightAnchor];
      v158 = [v13 safeAreaLayoutGuide];
      v154 = [v158 rightAnchor];
      v150 = [v156 constraintEqualToAnchor:v154];
      v191[1] = v150;
      v148 = [(UIView *)v62 topAnchor];
      v63 = [v17 view];
      v64 = [v63 topAnchor];
      [v148 constraintEqualToAnchor:v64];
      v66 = v65 = v17;
      v191[2] = v66;
      v67 = [(UIView *)v62 bottomAnchor];
      v68 = [v65 view];
      [v68 bottomAnchor];
      v70 = v69 = v5;
      v71 = [v67 constraintEqualToAnchor:v70];
      v191[3] = v71;
      v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:4];
      [v152 activateConstraints:v72];

      v5 = v69;
      v73 = [v69 _resultsControllerViewContainer];
      v74 = [v73 superview];
      [v74 bounds];
      v76 = v75;
      v78 = v77;

      v4 = v173;
      v79 = [v173 navigationController];
      v80 = [v79 navigationBar];
      [v80 frame];
      MaxY = CGRectGetMaxY(v192);

      v82 = [v69 view];
      [v82 frame];
      v84 = v83 - MaxY;

      v85 = [v69 _resultsControllerViewContainer];
      [(UIView *)v85 setFrame:v76, MaxY, v78, v84];
      v86 = v174;
    }

    else
    {
      v94 = [v4 navigationController];
      v95 = [v94 navigationBar];
      [v95 frame];
      v96 = CGRectGetMaxY(v193);

      v97 = v96 + 1.0;
      v98 = [v17 alignmentConstraintForAxis:1];
      if (!v98)
      {
        v99 = MEMORY[0x1E69977A0];
        v100 = [v17 view];
        v101 = [v17 view];
        v102 = [v101 superview];
        v98 = [v99 constraintWithItem:v100 attribute:3 relatedBy:0 toItem:v102 attribute:3 multiplier:1.0 constant:v97];

        v17 = v177;
        v13 = v175;

        [v98 setActive:1];
        [v177 setAlignmentConstraint:v98 forAxis:1];
      }

      v169 = v98;
      v103 = [v17 alignmentConstraintForAxis:0];
      if (!v103)
      {
        v104 = MEMORY[0x1E69977A0];
        v105 = [v17 view];
        v106 = [v17 view];
        v107 = [v106 superview];
        v108 = [v107 safeAreaLayoutGuide];
        v103 = [v104 constraintWithItem:v105 attribute:9 relatedBy:0 toItem:v108 attribute:9 multiplier:1.0 constant:0.0];

        v17 = v177;
        v13 = v175;

        [v103 setActive:1];
        [v177 setAlignmentConstraint:v103 forAxis:0];
      }

      v168 = v103;
      v109 = [v17 view];
      [v109 layoutIfNeeded];

      v110 = [v5 _resultsControllerViewContainer];
      if (v110)
      {
        v111 = v110;
        v112 = [v17 view];
        [v112 frame];
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
        v125 = [v4 view];
        [(UIView *)v125 frame];
        v122 = 132.0;
        v121 = 0.0;
        v165 = v125;
        v120 = v125;
      }

      [(UIView *)v120 setFrame:v121, v122, v123, v119];
      v126 = [UIView alloc];
      v85 = [(UIView *)v126 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v85 setTranslatesAutoresizingMaskIntoConstraints:0];
      v127 = +[UIColor tableBackgroundColor];
      [(UIView *)v85 setBackgroundColor:v127];

      [v5 set_systemInputMarginView:v85];
      v149 = MEMORY[0x1E69977A0];
      v161 = [(UIView *)v85 leftAnchor];
      v163 = [v13 safeAreaLayoutGuide];
      v159 = [v163 leftAnchor];
      v157 = [v161 constraintEqualToAnchor:v159];
      v190[0] = v157;
      v153 = [(UIView *)v85 rightAnchor];
      v155 = [v13 safeAreaLayoutGuide];
      v151 = [v155 rightAnchor];
      v147 = [v153 constraintEqualToAnchor:v151];
      v190[1] = v147;
      v128 = [(UIView *)v85 topAnchor];
      [v17 view];
      v130 = v129 = v17;
      v131 = [v130 topAnchor];
      [v128 constraintEqualToAnchor:v131];
      v132 = v167 = v5;
      v190[2] = v132;
      v133 = [(UIView *)v85 bottomAnchor];
      v134 = [v129 view];
      v135 = [v134 bottomAnchor];
      v136 = [v133 constraintEqualToAnchor:v135];
      v190[3] = v136;
      v137 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:4];
      [v149 activateConstraints:v137];

      v5 = v167;
      v4 = v173;
      v86 = v174;
      v62 = v165;
    }

    v138 = [v177 view];
    v139 = [v138 superview];
    v140 = [v177 view];
    [v139 bringSubviewToFront:v140];

    v141 = [v5 _resultsControllerViewContainer];
    [v141 setAlpha:0.0];

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
    v11 = v170;
    if ([v144 isAnimated])
    {
      [(_UISearchControllerAnimator *)self transitionDuration:v144];
      v92 = v178;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v178 completionCurve], v143, v145, v146, 0.0);
    }

    else
    {
      v143[2](v143);
      v145[2](v145, 1);
      v92 = v178;
    }

    v10 = v171;
    v124 = v175;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UISearchControllerCarPlaySearchBarAnimator_animateTransition___block_invoke_3;
    aBlock[3] = &unk_1E70F35B8;
    v182 = v4;
    v87 = v3;
    v88 = v3;
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
      v92 = v178;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v178 completionCurve], v89, v91, v93, 0.0);
    }

    else
    {
      v89[2](v89);
      v91[2](v91, 1);
      v92 = v178;
    }

    v124 = v182;
  }
}

- (void)didFocusSearchBarForController:(id)a3
{
  v4 = a3;
  v5 = [v4 _systemInputViewController];
  v6 = [v4 searchBar];
  [v6 becomeFirstResponder];

  if ([v5 supportsTouchInput])
  {
    v7 = [v5 view];
    [v7 frame];
    MinY = CGRectGetMinY(v18);
    v9 = [v4 _resultsControllerViewContainer];
    [v9 frame];
    MaxY = CGRectGetMaxY(v19);

    if (MinY >= MaxY)
    {
      v11 = [v5 view];
      v12 = [v11 superview];
      [v12 layoutIfNeeded];

      v13 = [v5 alignmentConstraintForAxis:1];
      [v13 setConstant:0.0];
      [(_UISearchControllerAnimator *)self transitionDuration:0];
      v15 = v14;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78___UISearchControllerCarPlaySearchBarAnimator_didFocusSearchBarForController___block_invoke;
      v16[3] = &unk_1E70F3590;
      v17 = v5;
      [UIView animateWithDuration:v16 animations:0 completion:v15];
    }
  }
}

- (void)didUnfocusSearchBarForController:(id)a3
{
  v4 = a3;
  v5 = [v4 _systemInputViewController];
  if ([v5 supportsTouchInput])
  {
    v6 = [v5 view];
    v7 = v6;
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v19);

    if (IsIdentity)
    {
      v9 = [v5 view];
      v10 = [v9 superview];
      [v10 layoutIfNeeded];

      v11 = [v5 alignmentConstraintForAxis:1];
      v12 = [v5 view];
      [v12 frame];
      [v11 setConstant:v13];

      [(_UISearchControllerAnimator *)self transitionDuration:0];
      v15 = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80___UISearchControllerCarPlaySearchBarAnimator_didUnfocusSearchBarForController___block_invoke;
      v17[3] = &unk_1E70F3590;
      v18 = v5;
      [UIView animateWithDuration:v17 animations:0 completion:v15];
    }
  }

  v16 = [v4 searchBar];
  [v16 resignFirstResponder];
}

@end