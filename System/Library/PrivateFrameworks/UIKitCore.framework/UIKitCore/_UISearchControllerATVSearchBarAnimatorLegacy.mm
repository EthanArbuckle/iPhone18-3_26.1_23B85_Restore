@interface _UISearchControllerATVSearchBarAnimatorLegacy
- (void)animateTransition:(id)transition;
- (void)didFocusSearchBarForController:(id)controller;
- (void)didRelayoutSearchBarForController:(id)controller;
- (void)didUnfocusSearchBarForController:(id)controller;
- (void)willFocusOffscreenViewForController:(id)controller withHeading:(unint64_t)heading;
@end

@implementation _UISearchControllerATVSearchBarAnimatorLegacy

- (void)animateTransition:(id)transition
{
  v351[2] = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v6 = [transitionCopy viewControllerForKey:@"UITransitionContextFromViewController"];
  v7 = [transitionCopy viewControllerForKey:@"UITransitionContextToViewController"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;
  presentingViewController = [v10 presentingViewController];
  transitionCoordinator = [presentingViewController transitionCoordinator];

  _searchPresentationController = [v10 _searchPresentationController];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:45 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
  }

  selfCopy = self;
  _searchPresentationController2 = [v10 _searchPresentationController];
  searchBar = [v10 searchBar];
  if ([searchBar showsScopeBar])
  {
    _scopeBarContainerView = [searchBar _scopeBarContainerView];
    if (_scopeBarContainerView)
    {
      _scopeBarContainerView2 = [searchBar _scopeBarContainerView];
    }

    else
    {
      _scopeBarContainerView2 = 0;
    }
  }

  else
  {
    _scopeBarContainerView2 = 0;
  }

  v334 = _searchPresentationController2;
  if (isKindOfClass)
  {
    v335 = searchBar;
    v330 = v10;
    v331 = v6;
    view = [v7 view];
    [transitionCopy finalFrameForViewController:v7];
    [view setFrame:?];
    containerView = [transitionCopy containerView];
    [containerView addSubview:view];

    if ([v7 obscuresBackgroundDuringPresentation])
    {
      backgroundObscuringView = [_searchPresentationController2 backgroundObscuringView];
      [transitionCopy finalFrameForViewController:v7];
      [backgroundObscuringView setFrame:?];
    }

    v329 = transitionCoordinator;
    v21 = [v7 _systemInputViewControllerAfterUpdate:0];
    v333 = view;
    if ([v21 resolvedKeyboardStyle] == 1)
    {
      searchBar2 = [v7 searchBar];
      [searchBar2 _setDisableFocus:1];

      [v335 frame];
      [view frame];
      [v335 sizeThatFits:{v23, v24}];
      v26 = v25;
      [view frame];
      v28 = v27 + -80.0;
      v29 = MEMORY[0x1E695EFF8];
      searchBarContainerView = [_searchPresentationController2 searchBarContainerView];
      [searchBarContainerView addSubview:v335];

      if (dyld_program_sdk_at_least())
      {
        view2 = [v7 view];
        [view2 safeAreaInsets];
        v33 = v32;
      }

      else
      {
        v33 = 34.5;
      }

      v56 = v28 + -80.0;
      v57 = *v29;
      v323 = v29[1];
      presentationController = [v7 presentationController];
      presentingViewController2 = [presentationController presentingViewController];
      tabBarController = [presentingViewController2 tabBarController];

      if (tabBarController)
      {
        presentationController2 = [v7 presentationController];
        presentingViewController3 = [presentationController2 presentingViewController];
        [presentingViewController3 tabBarController];
        v64 = v63 = _searchPresentationController2;
        tabBar = [v64 tabBar];

        superview = [tabBar superview];
        coordinateSpace = [superview coordinateSpace];
        [tabBar frame];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        searchBarContainerView2 = [v63 searchBarContainerView];
        superview2 = [searchBarContainerView2 superview];
        coordinateSpace2 = [superview2 coordinateSpace];
        [coordinateSpace convertRect:coordinateSpace2 toCoordinateSpace:{v69, v71, v73, v75}];
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v86 = v85;

        if ([tabBar _displayStyle] == 1)
        {
          v352.origin.x = v80;
          v352.origin.y = v82;
          v352.size.width = v84;
          v352.size.height = v86;
          v33 = CGRectGetMaxY(v352) + 43.0;
        }

        view = v333;
        _searchPresentationController2 = v334;
      }

      [view bounds];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;
      _screen = [view _screen];
      [_screen scale];
      UIRectCenteredXInRectScale(v57, v33, v56, v26, v88, v90, v92, v94, v96);
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v104 = v103;

      searchBarContainerView3 = [_searchPresentationController2 searchBarContainerView];
      [searchBarContainerView3 setFrame:{v98, v100, v102, v104}];

      [v335 setFrame:{v57, v323, v56, v26}];
      view3 = [v21 view];
      v107 = *(MEMORY[0x1E695EFD0] + 16);
      v347[0] = *MEMORY[0x1E695EFD0];
      v347[1] = v107;
      v347[2] = *(MEMORY[0x1E695EFD0] + 32);
      [view3 setTransform:v347];

      view4 = [v21 view];
      [view4 layoutIfNeeded];

      [v21 view];
      v319 = v318 = 1.0;
      [v319 setAlpha:?];
      v109 = MEMORY[0x1E69977A0];
      v110 = [v21 alignmentConstraintArrayForAxis:0];
      [v109 deactivateConstraints:v110];

      v111 = MEMORY[0x1E69977A0];
      v112 = [v21 alignmentConstraintArrayForAxis:1];
      [v111 deactivateConstraints:v112];

      v353.origin.x = v98;
      v353.origin.y = v100;
      v353.size.width = v102;
      v353.size.height = v104;
      v113 = CGRectGetMaxY(v353) + 34.5;
      view5 = [v21 view];
      centerXAnchor = [view5 centerXAnchor];
      view6 = [v7 view];
      centerXAnchor2 = [view6 centerXAnchor];
      v118 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      view7 = [v21 view];
      topAnchor = [view7 topAnchor];
      view8 = [v21 view];
      superview3 = [view8 superview];
      topAnchor2 = [superview3 topAnchor];
      v124 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v113];

      v125 = v118;
      v126 = v124;

      v127 = MEMORY[0x1E69977A0];
      v351[0] = v118;
      v351[1] = v124;
      v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v351 count:2];
      [v127 activateConstraints:v128];

      [v21 setAlignmentConstraint:v118 forAxis:0];
      [v21 setAlignmentConstraint:v124 forAxis:1];
      view9 = [v21 view];
      [view9 frame];
      v131 = v113 + v130;

      _leftDividerView = [v7 _leftDividerView];
      view10 = [v7 view];
      [view10 frame];
      v135 = v134 + -160.0;

      [_leftDividerView setFrame:{80.0, v131, v135, 1.0}];
      [v333 addSubview:_leftDividerView];
      _rightDividerView = [v7 _rightDividerView];
      [_rightDividerView removeFromSuperview];

      [v333 frame];
      v138 = v137 + -160.0;
      v354.size.height = 1.0;
      v354.origin.x = 80.0;
      v354.origin.y = v131;
      v354.size.width = v137 + -160.0;
      MaxY = CGRectGetMaxY(v354);
      _leftDividerView2 = [v7 _leftDividerView];
      _rightDividerView2 = [v7 _rightDividerView];
      v324 = v126;
      if ([v335 showsScopeBar] && _scopeBarContainerView2)
      {
        v321 = _leftDividerView;
        v315 = v125;
        v312 = v21;
        v327 = transitionCopy;
        [v335 _scopeBarHeight];
        v142 = v141;
        _scopeBar = [v335 _scopeBar];
        [_scopeBar sizeThatFits:{10000.0, 10000.0}];
        v145 = v144;

        v146 = (v138 - v145) * 0.5 + 80.0;
        [_scopeBarContainerView2 setFrame:{v146, v131, v145, v142}];
        v318 = 1.0;
        [_scopeBarContainerView2 setAlpha:?];
        [v333 addSubview:_scopeBarContainerView2];
        v355.origin.x = v146;
        v355.origin.y = v131;
        v355.size.width = v145;
        rect = v142;
        v355.size.height = v142;
        MaxY = CGRectGetMaxY(v355);
        _scopeBarFocusContainerGuide = [v7 _scopeBarFocusContainerGuide];
        _scopeBarConstraints = [v7 _scopeBarConstraints];

        if (_scopeBarConstraints)
        {
          v149 = MEMORY[0x1E69977A0];
          _scopeBarConstraints2 = [v7 _scopeBarConstraints];
          [v149 deactivateConstraints:_scopeBarConstraints2];
        }

        topAnchor3 = [_scopeBarFocusContainerGuide topAnchor];
        topAnchor4 = [_scopeBarContainerView2 topAnchor];
        v302 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v350[0] = v302;
        bottomAnchor = [_scopeBarContainerView2 bottomAnchor];
        bottomAnchor2 = [_scopeBarFocusContainerGuide bottomAnchor];
        v299 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-30.0];
        v350[1] = v299;
        leftAnchor = [_scopeBarFocusContainerGuide leftAnchor];
        v152 = _scopeBarFocusContainerGuide;
        v308 = _scopeBarFocusContainerGuide;
        v153 = v333;
        leftAnchor2 = [v333 leftAnchor];
        v155 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:80.0];
        v350[2] = v155;
        rightAnchor = [v333 rightAnchor];
        rightAnchor2 = [v152 rightAnchor];
        v158 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:80.0];
        v350[3] = v158;
        v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v350 count:4];
        [v7 set_scopeBarConstraints:v159];

        v160 = MEMORY[0x1E69977A0];
        _scopeBarConstraints3 = [v7 _scopeBarConstraints];
        [v160 activateConstraints:_scopeBarConstraints3];

        [_scopeBarContainerView2 frame];
        MidY = CGRectGetMidY(v356);
        v138 = v146 + -30.0 + -80.0;
        v357.origin.x = v146;
        v357.origin.y = v131;
        v357.size.width = v145;
        v357.size.height = rect;
        v163 = CGRectGetMaxX(v357) + 30.0;
        [v333 frame];
        v164 = _rightDividerView2;
        [_rightDividerView2 setFrame:{v163, MidY, CGRectGetMaxX(v358) + -80.0 - v163, 1.0}];
        [v333 addSubview:_rightDividerView2];

        v131 = MidY;
        transitionCopy = v327;
        v21 = v312;
        v125 = v315;
        _leftDividerView = v321;
      }

      else
      {
        v153 = v333;
        v164 = _rightDividerView2;
      }

      v165 = MaxY + 30.0;
      [_leftDividerView2 setFrame:{80.0, v131, v138, v318}];
      [v153 addSubview:_leftDividerView2];
      _resultsControllerViewContainer = [v7 _resultsControllerViewContainer];
      superview4 = [_resultsControllerViewContainer superview];
      [superview4 bounds];
      v169 = v168;
      v171 = v170;

      [v153 frame];
      v173 = v172 - v165;
      _resultsControllerViewContainer2 = [v7 _resultsControllerViewContainer];
      [_resultsControllerViewContainer2 setFrame:{v169, v165, v171, v173}];

      v175 = v319;
      _leftDividerView3 = v324;
    }

    else
    {
      presentationController3 = [v7 presentationController];
      presentingViewController4 = [presentationController3 presentingViewController];
      view11 = [presentingViewController4 view];
      _shouldReverseLayoutDirection = [view11 _shouldReverseLayoutDirection];

      v42 = v334;
      [v335 frame];
      [view frame];
      [v335 sizeThatFits:{v43, v44}];
      v46 = v45;
      [view frame];
      v48 = v47 + -190.0;
      v49 = MEMORY[0x1E695EFF8];
      searchBarContainerView4 = [v334 searchBarContainerView];
      [searchBarContainerView4 addSubview:v335];

      if (dyld_program_sdk_at_least())
      {
        view12 = [v7 view];
        [view12 safeAreaInsets];
        v54 = v53;
      }

      else
      {
        v54 = 34.5;
      }

      v177 = v48 + -80.0;
      v178 = *v49;
      v325 = v49[1];
      presentationController4 = [v7 presentationController];
      presentingViewController5 = [presentationController4 presentingViewController];
      tabBarController2 = [presentingViewController5 tabBarController];

      v328 = transitionCopy;
      if (tabBarController2)
      {
        presentationController5 = [v7 presentationController];
        presentingViewController6 = [presentationController5 presentingViewController];
        tabBarController3 = [presentingViewController6 tabBarController];
        tabBar2 = [tabBarController3 tabBar];

        superview5 = [tabBar2 superview];
        coordinateSpace3 = [superview5 coordinateSpace];
        [tabBar2 frame];
        v189 = v188;
        v191 = v190;
        v193 = v192;
        v195 = v194;
        searchBarContainerView5 = [v334 searchBarContainerView];
        superview6 = [searchBarContainerView5 superview];
        coordinateSpace4 = [superview6 coordinateSpace];
        [coordinateSpace3 convertRect:coordinateSpace4 toCoordinateSpace:{v189, v191, v193, v195}];
        v200 = v199;
        v202 = v201;
        v204 = v203;
        v206 = v205;

        if ([tabBar2 _displayStyle] == 1)
        {
          v359.origin.x = v200;
          v359.origin.y = v202;
          v359.size.width = v204;
          v359.size.height = v206;
          v54 = CGRectGetMaxY(v359) + 43.0;
        }

        view = v333;
        v42 = v334;
      }

      [view bounds];
      v208 = v207;
      v210 = v209;
      v212 = v211;
      v214 = v213;
      _screen2 = [view _screen];
      [_screen2 scale];
      UIRectCenteredXInRectScale(v178, v54, v177, v46, v208, v210, v212, v214, v216);
      v218 = v217;
      v220 = v219;
      v222 = v221;
      v224 = v223;

      searchBarContainerView6 = [v42 searchBarContainerView];
      [searchBarContainerView6 setFrame:{v218, v220, v222, v224}];

      [v335 setFrame:{v178, v325, v177, v46}];
      view13 = [v21 view];
      [view13 layoutIfNeeded];

      v227 = MEMORY[0x1E69977A0];
      v228 = [v21 alignmentConstraintArrayForAxis:0];
      [v227 deactivateConstraints:v228];

      v229 = MEMORY[0x1E69977A0];
      v230 = [v21 alignmentConstraintArrayForAxis:1];
      [v229 deactivateConstraints:v230];

      v360.origin.x = v218;
      v360.origin.y = v220;
      v360.size.width = v222;
      v360.size.height = v224;
      v231 = CGRectGetMaxY(v360) + 34.5;
      view14 = [v21 view];
      leadingAnchor = [view14 leadingAnchor];
      view15 = [v21 view];
      superview7 = [view15 superview];
      leadingAnchor2 = [superview7 leadingAnchor];
      v237 = 190.0;
      v238 = 80.0;
      if (!_shouldReverseLayoutDirection)
      {
        v238 = 190.0;
      }

      v239 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v238];

      view16 = [v21 view];
      topAnchor5 = [view16 topAnchor];
      view17 = [v7 view];
      topAnchor6 = [view17 topAnchor];
      v125 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:v231];

      v175 = v239;
      v244 = &qword_18A678000;

      v245 = MEMORY[0x1E69977A0];
      v349[0] = v175;
      v349[1] = v125;
      v246 = [MEMORY[0x1E695DEC8] arrayWithObjects:v349 count:2];
      [v245 activateConstraints:v246];

      [v21 setAlignmentConstraint:v175 forAxis:0];
      [v21 setAlignmentConstraint:v125 forAxis:1];
      [v21 setUnfocusedFocusGuideOutsets:{-34.5, -40.0, -34.5, -40.0}];
      if ((_shouldReverseLayoutDirection & 1) == 0)
      {
        view18 = [v21 view];
        [view18 frame];
        v237 = v248 + 70.0 + 190.0;
      }

      [view frame];
      v250 = v249 + -270.0;
      v251 = 1.0;
      v361.size.height = 1.0;
      v361.origin.x = v237;
      v361.origin.y = v231;
      v361.size.width = v249 + -270.0;
      v252 = CGRectGetMaxY(v361);
      _leftDividerView3 = [v7 _leftDividerView];
      _rightDividerView3 = [v7 _rightDividerView];
      if ([v335 showsScopeBar])
      {
        v326 = _leftDividerView3;
        if (_scopeBarContainerView2)
        {
          v316 = v125;
          v320 = v175;
          [v335 _scopeBarHeight];
          v254 = v253;
          _scopeBar2 = [v335 _scopeBar];
          [_scopeBar2 sizeThatFits:{10000.0, 10000.0}];
          v257 = v256;

          v258 = v237 + (v250 - v257) * 0.5;
          [_scopeBarContainerView2 setFrame:{v258, v231, v257, v254}];
          [_scopeBarContainerView2 setAlpha:1.0];
          [view addSubview:_scopeBarContainerView2];
          v362.origin.x = v258;
          v362.origin.y = v231;
          v362.size.width = v257;
          v362.size.height = v254;
          v252 = CGRectGetMaxY(v362);
          _scopeBarFocusContainerGuide2 = [v7 _scopeBarFocusContainerGuide];
          _scopeBarConstraints4 = [v7 _scopeBarConstraints];

          if (_scopeBarConstraints4)
          {
            v261 = MEMORY[0x1E69977A0];
            _scopeBarConstraints5 = [v7 _scopeBarConstraints];
            [v261 deactivateConstraints:_scopeBarConstraints5];
          }

          recta = [_scopeBarFocusContainerGuide2 topAnchor];
          topAnchor7 = [_scopeBarContainerView2 topAnchor];
          v307 = [recta constraintEqualToAnchor:topAnchor7];
          v348[0] = v307;
          bottomAnchor3 = [_scopeBarContainerView2 bottomAnchor];
          bottomAnchor4 = [_scopeBarFocusContainerGuide2 bottomAnchor];
          v263 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-30.0];
          v348[1] = v263;
          leftAnchor3 = [_scopeBarFocusContainerGuide2 leftAnchor];
          leftAnchor4 = [view leftAnchor];
          v266 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:190.0];
          v348[2] = v266;
          rightAnchor3 = [v333 rightAnchor];
          [_scopeBarFocusContainerGuide2 rightAnchor];
          v268 = v313 = _scopeBarFocusContainerGuide2;
          v269 = [rightAnchor3 constraintEqualToAnchor:v268 constant:80.0];
          v348[3] = v269;
          v270 = [MEMORY[0x1E695DEC8] arrayWithObjects:v348 count:4];
          [v7 set_scopeBarConstraints:v270];

          view = v333;
          v244 = &qword_18A678000;

          v271 = MEMORY[0x1E69977A0];
          _scopeBarConstraints6 = [v7 _scopeBarConstraints];
          [v271 activateConstraints:_scopeBarConstraints6];

          [_scopeBarContainerView2 frame];
          v273 = CGRectGetMidY(v363);
          v250 = v258 + -30.0 - v237;
          v364.origin.x = v258;
          v364.origin.y = v231;
          v364.size.width = v257;
          v364.size.height = v254;
          v274 = CGRectGetMaxX(v364) + 30.0;
          [v333 frame];
          [_rightDividerView3 setFrame:{v274, v273, CGRectGetMaxX(v365) + -80.0 - v274, 1.0}];
          [v333 addSubview:_rightDividerView3];

          v231 = v273;
          _leftDividerView3 = v326;
          transitionCopy = v328;
          v175 = v320;
          v125 = v316;
          v251 = 1.0;
        }
      }

      v275 = v252 + 30.0;
      [_leftDividerView3 setFrame:{v237, v231, v250, v251}];
      [view addSubview:_leftDividerView3];
      _resultsControllerViewContainer3 = [v7 _resultsControllerViewContainer];
      superview8 = [_resultsControllerViewContainer3 superview];
      [superview8 bounds];

      view19 = [v21 view];
      [view19 frame];
      v279 = *(v244 + 173);
      v281 = v280 + v279 + 70.0;

      if (!_shouldReverseLayoutDirection)
      {
        v279 = v281;
      }

      [view frame];
      v283 = v282;
      view20 = [v21 view];
      [view20 frame];
      v286 = v283 - v285 + -70.0 + -190.0 + -80.0;

      [view frame];
      v288 = v287 - v275;
      _leftDividerView2 = [v7 _resultsControllerViewContainer];
      [_leftDividerView2 setFrame:{v279, v275, v286, v288}];
      _leftDividerView = _rightDividerView3;
    }

    view21 = [v21 view];
    superview9 = [view21 superview];
    view22 = [v21 view];
    [superview9 bringSubviewToFront:view22];

    _resultsControllerViewContainer4 = [v7 _resultsControllerViewContainer];
    [_resultsControllerViewContainer4 setAlpha:0.0];

    v345[0] = MEMORY[0x1E69E9820];
    v345[1] = 3221225472;
    v345[2] = __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke;
    v345[3] = &unk_1E70F3590;
    v293 = v7;
    v346 = v293;
    v294 = _Block_copy(v345);
    v342[0] = MEMORY[0x1E69E9820];
    v342[1] = 3221225472;
    v342[2] = __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_2;
    v342[3] = &unk_1E70F3C60;
    v343 = v293;
    v295 = transitionCopy;
    v344 = v295;
    v296 = _Block_copy(v342);
    if ([v295 isAnimated])
    {
      [(_UISearchControllerAnimator *)selfCopy transitionDuration:v295];
      transitionCoordinator = v329;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v329 completionCurve], v294, v296, v297, 0.0);
    }

    else
    {
      v294[2](v294);
      v296[2](v296, 1);
      transitionCoordinator = v329;
    }

    _searchPresentationController2 = v334;

    v10 = v330;
    v6 = v331;
    searchBar = v335;
    v55 = v333;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_3;
    aBlock[3] = &unk_1E70F35B8;
    v340 = v6;
    v34 = transitionCopy;
    v341 = v34;
    v35 = _Block_copy(aBlock);
    v337[0] = MEMORY[0x1E69E9820];
    v337[1] = 3221225472;
    v337[2] = __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_4;
    v337[3] = &unk_1E70F5AC0;
    v36 = v34;
    v338 = v36;
    v37 = _Block_copy(v337);
    if ([v36 isAnimated])
    {
      [(_UISearchControllerAnimator *)selfCopy transitionDuration:v36];
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [transitionCoordinator completionCurve], v35, v37, v38, 0.0);
    }

    else
    {
      v35[2](v35);
      v37[2](v37, 1);
    }

    v55 = v340;
  }
}

- (void)didRelayoutSearchBarForController:(id)controller
{
  v213[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  _searchPresentationController = [controllerCopy _searchPresentationController];

  if (_searchPresentationController)
  {
    v7 = [controllerCopy _systemInputViewControllerAfterUpdate:0];
    _searchPresentationController2 = [controllerCopy _searchPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:393 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
    }

    _searchPresentationController3 = [controllerCopy _searchPresentationController];
    searchBarContainerView = [_searchPresentationController3 searchBarContainerView];
    [searchBarContainerView bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    searchBar = [controllerCopy searchBar];
    [searchBar setFrame:{v13, v15, v17, v19}];

    searchBarContainerView2 = [_searchPresentationController3 searchBarContainerView];
    [searchBarContainerView2 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    presentingViewController = [controllerCopy presentingViewController];
    tabBarController = [presentingViewController tabBarController];
    tabBar = [tabBarController tabBar];

    if (v25 < 0.0 && [tabBar _displayStyle] == 1)
    {
      [tabBar frame];
      [tabBar setFrame:?];
    }

    searchBar2 = [controllerCopy searchBar];
    _scopeBarContainerView = [searchBar2 _scopeBarContainerView];

    v214.origin.x = v23;
    v214.origin.y = v25;
    v214.size.width = v27;
    v214.size.height = v29;
    MaxY = CGRectGetMaxY(v214);
    view = [controllerCopy view];
    LODWORD(v37) = [view _shouldReverseLayoutDirection];

    if ([v7 resolvedKeyboardStyle] == 1)
    {
      view2 = [v7 view];
      [view2 frame];
      v40 = MaxY + 34.5 + v39;

      view3 = [v7 view];
      v42 = view3;
      if (view3)
      {
        [view3 transform];
      }

      else
      {
        memset(&v211, 0, sizeof(v211));
      }

      IsIdentity = CGAffineTransformIsIdentity(&v211);

      if (!IsIdentity)
      {
        v40 = v40 + -34.5;
      }

      _leftDividerView = [controllerCopy _leftDividerView];
      view4 = [controllerCopy view];
      [view4 frame];
      v55 = v54 + -160.0;

      v56 = 1.0;
      [_leftDividerView setFrame:{80.0, v40, v55, 1.0}];
      view5 = [controllerCopy view];
      [view5 addSubview:_leftDividerView];

      _rightDividerView = [controllerCopy _rightDividerView];
      [_rightDividerView removeFromSuperview];

      view6 = [controllerCopy view];
      [view6 frame];
      v61 = v60 + -160.0;

      v216.size.height = 1.0;
      v216.origin.x = 80.0;
      v216.origin.y = v40;
      v216.size.width = v61;
      v62 = CGRectGetMaxY(v216);
      _leftDividerView2 = [controllerCopy _leftDividerView];
      _rightDividerView2 = [controllerCopy _rightDividerView];
      searchBar3 = [controllerCopy searchBar];
      showsScopeBar = [searchBar3 showsScopeBar];

      if (showsScopeBar && _scopeBarContainerView)
      {
        v200 = _rightDividerView2;
        rect = _leftDividerView2;
        v203 = _leftDividerView;
        v205 = v7;
        v207 = tabBar;
        v209 = _searchPresentationController3;
        searchBar4 = [controllerCopy searchBar];
        [searchBar4 _scopeBarHeight];
        v69 = v68;

        searchBar5 = [controllerCopy searchBar];
        _scopeBar = [searchBar5 _scopeBar];
        [_scopeBar sizeThatFits:{10000.0, 10000.0}];
        v73 = v72;

        v74 = (v61 - v73) * 0.5 + 80.0;
        [_scopeBarContainerView setFrame:{v74, v40, v73, v69}];
        [_scopeBarContainerView setAlpha:1.0];
        view7 = [controllerCopy view];
        [view7 addSubview:_scopeBarContainerView];

        v217.origin.x = v74;
        v217.origin.y = v40;
        v217.size.width = v73;
        v217.size.height = v69;
        v198 = CGRectGetMaxY(v217);
        _scopeBarFocusContainerGuide = [controllerCopy _scopeBarFocusContainerGuide];
        _scopeBarConstraints = [controllerCopy _scopeBarConstraints];

        if (_scopeBarConstraints)
        {
          v78 = MEMORY[0x1E69977A0];
          _scopeBarConstraints2 = [controllerCopy _scopeBarConstraints];
          [v78 deactivateConstraints:_scopeBarConstraints2];
        }

        topAnchor = [_scopeBarFocusContainerGuide topAnchor];
        topAnchor2 = [_scopeBarContainerView topAnchor];
        v190 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v213[0] = v190;
        bottomAnchor = [_scopeBarContainerView bottomAnchor];
        bottomAnchor2 = [_scopeBarFocusContainerGuide bottomAnchor];
        v184 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-30.0];
        v213[1] = v184;
        leftAnchor = [_scopeBarFocusContainerGuide leftAnchor];
        view8 = [controllerCopy view];
        leftAnchor2 = [view8 leftAnchor];
        [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:80.0];
        v82 = v196 = _scopeBarFocusContainerGuide;
        v213[2] = v82;
        view9 = [controllerCopy view];
        rightAnchor = [view9 rightAnchor];
        rightAnchor2 = [_scopeBarFocusContainerGuide rightAnchor];
        [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:80.0];
        v87 = v86 = _scopeBarContainerView;
        v213[3] = v87;
        v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:4];
        [controllerCopy set_scopeBarConstraints:v88];

        _scopeBarContainerView = v86;
        v89 = MEMORY[0x1E69977A0];
        _scopeBarConstraints3 = [controllerCopy _scopeBarConstraints];
        [v89 activateConstraints:_scopeBarConstraints3];

        [v86 frame];
        MidY = CGRectGetMidY(v218);
        v61 = v74 + -30.0 + -80.0;
        v219.origin.x = v74;
        v219.origin.y = v40;
        v219.size.width = v73;
        v219.size.height = v69;
        v92 = CGRectGetMaxX(v219) + 30.0;
        view10 = [controllerCopy view];
        [view10 frame];
        v94 = CGRectGetMaxX(v220) + -80.0 - v92;

        _rightDividerView2 = v200;
        [v200 setFrame:{v92, MidY, v94, 1.0}];
        view11 = [controllerCopy view];
        [view11 addSubview:v200];

        v7 = v205;
        tabBar = v207;
        _searchPresentationController3 = v209;
        _leftDividerView2 = rect;
        _leftDividerView = v203;
        v56 = 1.0;
        v62 = v198;
      }

      else
      {
        _scopeBarConstraints4 = [controllerCopy _scopeBarConstraints];

        if (_scopeBarConstraints4)
        {
          v97 = MEMORY[0x1E69977A0];
          _scopeBarConstraints5 = [controllerCopy _scopeBarConstraints];
          [v97 deactivateConstraints:_scopeBarConstraints5];
        }

        [_scopeBarContainerView removeFromSuperview];
        _leftDividerView3 = [controllerCopy _leftDividerView];
        [_leftDividerView3 setFrame:{80.0, v40, v55, 1.0}];

        _rightDividerView3 = [controllerCopy _rightDividerView];
        [_rightDividerView3 removeFromSuperview];

        MidY = v40;
      }

      [_leftDividerView2 setFrame:{80.0, MidY, v61, v56}];
      view12 = [controllerCopy view];
      _leftDividerView4 = [controllerCopy _leftDividerView];
      [view12 addSubview:_leftDividerView4];

      _resultsControllerViewContainer = [controllerCopy _resultsControllerViewContainer];
      superview = [_resultsControllerViewContainer superview];
      [superview bounds];
      v106 = v105;
      v108 = v107;

      view13 = [controllerCopy view];
      [view13 frame];
      v111 = v110 - (v62 + 30.0);

      _resultsControllerViewContainer2 = [controllerCopy _resultsControllerViewContainer];
      [_resultsControllerViewContainer2 setFrame:{v106, v62 + 30.0, v108, v111}];
    }

    else
    {
      if ([v7 resolvedKeyboardStyle] != 2)
      {
LABEL_43:
        view14 = [v7 view];
        superview2 = [view14 superview];
        view15 = [v7 view];
        [superview2 bringSubviewToFront:view15];

        goto LABEL_44;
      }

      view16 = [v7 view];
      [view16 frame];
      if (v37)
      {
        MaxX = CGRectGetMaxX(*&v44);
        view17 = [controllerCopy view];
        [view17 frame];
        v50 = MaxX < CGRectGetMaxX(v215);
      }

      else
      {
        v50 = v44 > 0.0;
      }

      v221.origin.x = v23;
      v221.origin.y = v25;
      v221.size.width = v27;
      v221.size.height = v29;
      v113 = CGRectGetMaxY(v221);
      view18 = [controllerCopy view];
      [view18 frame];
      v116 = v115 + -270.0;

      v117 = &qword_18A678000;
      v118 = 190.0;
      if (v50)
      {
        view19 = [v7 view];
        [view19 frame];
        v116 = v116 - (v120 + 70.0);

        if ((v37 & 1) == 0)
        {
          view20 = [v7 view];
          [view20 frame];
          v118 = v122 + 70.0 + 190.0;
        }
      }

      v123 = v113 + 34.5;
      if (_scopeBarContainerView && ([controllerCopy searchBar], v124 = objc_claimAutoreleasedReturnValue(), v125 = objc_msgSend(v124, "showsScopeBar"), v124, v125))
      {
        v204 = v50;
        v206 = v37;
        v208 = tabBar;
        v210 = _searchPresentationController3;
        searchBar6 = [controllerCopy searchBar];
        [searchBar6 _scopeBarHeight];
        v128 = v127;

        searchBar7 = [controllerCopy searchBar];
        _scopeBar2 = [searchBar7 _scopeBar];
        [_scopeBar2 sizeThatFits:{10000.0, 10000.0}];
        v132 = v131;

        v133 = v118 + (v116 - v132) * 0.5;
        [_scopeBarContainerView setFrame:{v133, v123, v132, v128}];
        [_scopeBarContainerView setAlpha:1.0];
        view21 = [controllerCopy view];
        [view21 addSubview:_scopeBarContainerView];

        _scopeBarFocusContainerGuide2 = [controllerCopy _scopeBarFocusContainerGuide];
        _scopeBarConstraints6 = [controllerCopy _scopeBarConstraints];

        if (_scopeBarConstraints6)
        {
          v137 = MEMORY[0x1E69977A0];
          _scopeBarConstraints7 = [controllerCopy _scopeBarConstraints];
          [v137 deactivateConstraints:_scopeBarConstraints7];
        }

        v139 = v128 + 30.0;
        topAnchor3 = [_scopeBarFocusContainerGuide2 topAnchor];
        topAnchor4 = [_scopeBarContainerView topAnchor];
        v195 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v212[0] = v195;
        bottomAnchor3 = [_scopeBarContainerView bottomAnchor];
        bottomAnchor4 = [_scopeBarFocusContainerGuide2 bottomAnchor];
        v189 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-30.0];
        v212[1] = v189;
        leadingAnchor = [_scopeBarFocusContainerGuide2 leadingAnchor];
        view22 = [v7 view];
        [view22 trailingAnchor];
        v140 = _scopeBarFocusContainerGuide2;
        v37 = v201 = _scopeBarFocusContainerGuide2;
        v141 = [leadingAnchor constraintEqualToAnchor:v37 constant:70.0];
        v212[2] = v141;
        view23 = [controllerCopy view];
        trailingAnchor = [view23 trailingAnchor];
        trailingAnchor2 = [v140 trailingAnchor];
        v145 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v212[3] = v145;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:4];
        v146 = _scopeBarContainerView;
        v148 = v147 = v7;
        [controllerCopy set_scopeBarConstraints:v148];

        v7 = v147;
        _scopeBarContainerView = v146;

        v149 = MEMORY[0x1E69977A0];
        _scopeBarConstraints8 = [controllerCopy _scopeBarConstraints];
        [v149 activateConstraints:_scopeBarConstraints8];

        [_scopeBarContainerView frame];
        v151 = CGRectGetMidY(v222);
        v152 = v133 + -30.0 - v118;
        _leftDividerView5 = [controllerCopy _leftDividerView];
        [_leftDividerView5 setFrame:{v118, v151, v152, 1.0}];

        v223.origin.x = v133;
        v223.origin.y = v123;
        v223.size.width = v132;
        v223.size.height = v128;
        v154 = CGRectGetMaxX(v223) + 30.0;
        _rightDividerView4 = [controllerCopy _rightDividerView];
        [_rightDividerView4 setFrame:{v154, v151, v152, 1.0}];

        view24 = [controllerCopy view];
        _rightDividerView5 = [controllerCopy _rightDividerView];
        [view24 addSubview:_rightDividerView5];

        tabBar = v208;
        _searchPresentationController3 = v210;
        LOBYTE(v37) = v206;
        v50 = v204;
        v117 = &qword_18A678000;
      }

      else
      {
        _scopeBarConstraints9 = [controllerCopy _scopeBarConstraints];

        if (_scopeBarConstraints9)
        {
          v159 = MEMORY[0x1E69977A0];
          _scopeBarConstraints10 = [controllerCopy _scopeBarConstraints];
          [v159 deactivateConstraints:_scopeBarConstraints10];
        }

        [_scopeBarContainerView removeFromSuperview];
        _leftDividerView6 = [controllerCopy _leftDividerView];
        [_leftDividerView6 setFrame:{v118, v123, v116, 1.0}];

        _rightDividerView6 = [controllerCopy _rightDividerView];
        [_rightDividerView6 removeFromSuperview];

        v139 = 30.0;
      }

      v163 = v123 + v139;
      view25 = [controllerCopy view];
      _leftDividerView7 = [controllerCopy _leftDividerView];
      [view25 addSubview:_leftDividerView7];

      _resultsControllerViewContainer3 = [controllerCopy _resultsControllerViewContainer];
      superview3 = [_resultsControllerViewContainer3 superview];
      [superview3 bounds];

      view26 = [controllerCopy view];
      [view26 frame];
      v170 = v169;

      if (v50)
      {
        view27 = [v7 view];
        [view27 frame];
        v173 = *(v117 + 173);
        v170 = v170 - (v172 + 70.0 + v173 + 80.0);

        if ((v37 & 1) == 0)
        {
          view28 = [v7 view];
          [view28 frame];
          v173 = v175 + 70.0 + *(v117 + 173);
        }
      }

      else
      {
        v173 = 0.0;
      }

      view29 = [controllerCopy view];
      [view29 frame];
      v178 = v177 - v163;

      _leftDividerView = [controllerCopy _resultsControllerViewContainer];
      [_leftDividerView setFrame:{v173, v163, v170, v178}];
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (void)didFocusSearchBarForController:(id)controller
{
  controllerCopy = controller;
  v5 = [controllerCopy _systemInputViewControllerAfterUpdate:0];
  v6 = [v5 alignmentConstraintForAxis:0];
  searchBar = [controllerCopy searchBar];
  _suggestionView = [controllerCopy _suggestionView];
  _leftDividerView = [controllerCopy _leftDividerView];
  _rightDividerView = [controllerCopy _rightDividerView];
  _scopeBarContainerView2 = 0;
  if ([searchBar showsScopeBar])
  {
    _scopeBarContainerView = [searchBar _scopeBarContainerView];
    if (_scopeBarContainerView)
    {
      _scopeBarContainerView2 = [searchBar _scopeBarContainerView];
    }

    else
    {
      _scopeBarContainerView2 = 0;
    }
  }

  if ([v5 resolvedKeyboardStyle] != 1)
  {
    goto LABEL_31;
  }

  view = [v5 view];
  v13 = view;
  if (view)
  {
    [view transform];
  }

  else
  {
    memset(&v170, 0, sizeof(v170));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v170);

  if (!IsIdentity)
  {
    _searchPresentationController = [controllerCopy _searchPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:660 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
    }

    view2 = [v5 view];
    [view2 bounds];
    v27 = v26;

    view3 = [v5 view];
    memset(&v170, 0, sizeof(v170));
    CGAffineTransformMakeTranslation(&v170, 0.0, v27 * -0.5 + -1.0);
    v168 = v170;
    CGAffineTransformScale(&v169, &v168, 1.0, 1.0 / v27);
    v170 = v169;
    v167 = v169;
    view4 = [v5 view];
    v169 = v167;
    [view4 setTransform:&v169];

    [view3 setAlpha:0.0];
    v30 = v27 + 34.5;
    if (_suggestionView)
    {
      [_suggestionView frame];
      v108 = v33;
      v110 = v32;
      v106 = v34;
    }

    else
    {
      v31 = *(MEMORY[0x1E695F058] + 8);
      v108 = *(MEMORY[0x1E695F058] + 16);
      v110 = *MEMORY[0x1E695F058];
      v106 = *(MEMORY[0x1E695F058] + 24);
    }

    v105 = v30 + v31;
    if (_leftDividerView)
    {
      [_leftDividerView frame];
      v101 = v71;
      v103 = v70;
      v99 = v72;
    }

    else
    {
      v69 = *(MEMORY[0x1E695F058] + 8);
      v101 = *(MEMORY[0x1E695F058] + 16);
      v103 = *MEMORY[0x1E695F058];
      v99 = *(MEMORY[0x1E695F058] + 24);
    }

    v73 = v30 + v69;
    [_scopeBarContainerView2 frame];
    v95 = v75;
    v97 = v74;
    v77 = v76;
    v79 = v30 + v78;
    _resultsControllerViewContainer = [controllerCopy _resultsControllerViewContainer];
    [_resultsControllerViewContainer frame];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke;
    v144[3] = &unk_1E7106B30;
    v145 = v5;
    v146 = _suggestionView;
    v151 = v110;
    v152 = v105;
    v153 = v108;
    v154 = v106;
    v147 = _leftDividerView;
    v155 = v103;
    v156 = v73;
    v157 = v101;
    v158 = v99;
    v148 = _scopeBarContainerView2;
    v159 = v97;
    v160 = v79;
    v161 = v77;
    v162 = v95;
    v163 = v82 + 0.0;
    v164 = v30 + v84;
    v165 = v86;
    v166 = v88 - v30;
    v149 = controllerCopy;
    v150 = view3;
    v89 = view3;
    v90 = _Block_copy(v144);
    [(_UISearchControllerAnimator *)self transitionDuration:0];
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:2048 options:v90 animations:0 completion:?];
  }

  else
  {
LABEL_31:
    if ([v5 resolvedKeyboardStyle] == 2)
    {
      [v6 constant];
      v16 = v15;
      view5 = [controllerCopy view];
      [view5 frame];
      MinX = CGRectGetMinX(v171);

      if (v16 < MinX)
      {
        view6 = [controllerCopy view];
        _shouldReverseLayoutDirection = [view6 _shouldReverseLayoutDirection];

        if (_shouldReverseLayoutDirection)
        {
          v21 = 190.0;
          v22 = 80.0;
        }

        else
        {
          view7 = [v5 view];
          [view7 frame];
          v22 = 190.0;
          v21 = v36 + 70.0 + 190.0;
        }

        v92 = v22;
        view8 = [controllerCopy view];
        [view8 frame];
        v39 = v38;
        view9 = [v5 view];
        [view9 frame];
        v42 = v39 - v41 + -70.0 - v22;

        superview = [_suggestionView superview];
        [superview frame];
        v109 = v45;
        v111 = v44;
        v107 = v46;

        [_scopeBarContainerView2 frame];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [_leftDividerView frame];
        v98 = v53;
        v100 = v54;
        v55 = (v21 + v42) * 0.5 + -30.0 - v21;
        if (!_scopeBarContainerView2)
        {
          v55 = v42;
        }

        v93 = v55;
        [_rightDividerView frame];
        v102 = v56;
        v104 = v57;
        v172.origin.x = (v21 + v42) * 0.5;
        v172.origin.y = v48;
        v172.size.width = v50;
        v172.size.height = v52;
        v58 = CGRectGetMaxX(v172) + 30.0;
        _resultsControllerViewContainer2 = [controllerCopy _resultsControllerViewContainer];
        [_resultsControllerViewContainer2 frame];
        v94 = v60;
        v96 = v61;

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke_2;
        aBlock[3] = &unk_1E7106B58;
        v113 = _leftDividerView;
        v62 = _suggestionView;
        v63 = v6;
        v116 = v6;
        v123 = v92;
        v117 = v62;
        v124 = v21;
        v125 = v111;
        v126 = v109;
        v127 = v107;
        v118 = v113;
        v128 = v21;
        v129 = v98;
        v130 = v93;
        v131 = v100;
        v119 = _scopeBarContainerView2;
        v132 = (v21 + v42) * 0.5;
        v133 = v48;
        v134 = v50;
        v135 = v52;
        v120 = _rightDividerView;
        v136 = v58;
        v137 = v102;
        v138 = v21 + v42 - v58;
        v139 = v104;
        v121 = controllerCopy;
        v140 = v21;
        v141 = v94;
        v142 = v42;
        v143 = v96;
        v122 = v5;
        v64 = _Block_copy(aBlock);
        v65 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:150.0 damping:24.0 initialVelocity:0.0, 0.0];
        v66 = [UIViewPropertyAnimator alloc];
        v67 = objc_alloc_init(MEMORY[0x1E69794A8]);
        [v67 settlingDuration];
        v68 = [(UIViewPropertyAnimator *)v66 initWithDuration:v65 timingParameters:?];

        v6 = v63;
        _suggestionView = v62;
        _leftDividerView = v113;
        [(UIViewPropertyAnimator *)v68 addAnimations:v64];
        [(UIViewPropertyAnimator *)v68 startAnimation];
      }
    }
  }
}

- (void)didUnfocusSearchBarForController:(id)controller
{
  controllerCopy = controller;
  v5 = [controllerCopy _systemInputViewControllerAfterUpdate:0];
  v6 = [v5 alignmentConstraintForAxis:0];
  searchBar = [controllerCopy searchBar];
  _suggestionView = [controllerCopy _suggestionView];
  _leftDividerView = [controllerCopy _leftDividerView];
  _rightDividerView = [controllerCopy _rightDividerView];
  _scopeBarContainerView2 = 0;
  if ([searchBar showsScopeBar])
  {
    _scopeBarContainerView = [searchBar _scopeBarContainerView];
    if (_scopeBarContainerView)
    {
      _scopeBarContainerView2 = [searchBar _scopeBarContainerView];
    }

    else
    {
      _scopeBarContainerView2 = 0;
    }
  }

  if ([v5 resolvedKeyboardStyle] == 1)
  {
    view = [v5 view];
    v13 = view;
    if (view)
    {
      [view transform];
    }

    else
    {
      memset(&v174, 0, sizeof(v174));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v174);

    if (IsIdentity)
    {
      view2 = [v5 view];
      view3 = [v5 view];
      [view3 bounds];
      v108 = v18;
      v110 = v17;
      v114 = v19;
      v21 = v20;

      view4 = [v5 view];
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *&v174.a = *MEMORY[0x1E695EFD0];
      *&v174.c = v23;
      *&v174.tx = *(MEMORY[0x1E695EFD0] + 32);
      [view4 setTransform:&v174];

      [view2 setAlpha:1.0];
      v112 = v21;
      v24 = v21 + 34.5;
      if (_suggestionView)
      {
        [_suggestionView frame];
        v104 = v27;
        v106 = v26;
        v102 = v28;
      }

      else
      {
        v25 = *(MEMORY[0x1E695F058] + 8);
        v104 = *(MEMORY[0x1E695F058] + 16);
        v106 = *MEMORY[0x1E695F058];
        v102 = *(MEMORY[0x1E695F058] + 24);
      }

      v100 = v25 - v24;
      v116 = v6;
      if (_leftDividerView)
      {
        [_leftDividerView frame];
        v96 = v53;
        v99 = v52;
        v95 = v54;
      }

      else
      {
        v51 = *(MEMORY[0x1E695F058] + 8);
        v96 = *(MEMORY[0x1E695F058] + 16);
        v99 = *MEMORY[0x1E695F058];
        v95 = *(MEMORY[0x1E695F058] + 24);
      }

      v55 = v51 - v24;
      [_scopeBarContainerView2 frame];
      v93 = v57;
      v94 = v56;
      v59 = v58;
      v61 = v60 - v24;
      _resultsControllerViewContainer = [controllerCopy _resultsControllerViewContainer];
      [_resultsControllerViewContainer frame];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __82___UISearchControllerATVSearchBarAnimatorLegacy_didUnfocusSearchBarForController___block_invoke;
      aBlock[3] = &unk_1E7101658;
      v154 = v110;
      v155 = v108;
      v156 = v114;
      v157 = v112;
      v148 = v5;
      v149 = _suggestionView;
      v158 = v106;
      v159 = v100;
      v160 = v104;
      v161 = v102;
      v150 = _leftDividerView;
      v162 = v99;
      v163 = v55;
      v164 = v96;
      v165 = v95;
      v151 = _scopeBarContainerView2;
      v166 = v94;
      v167 = v61;
      v168 = v93;
      v169 = v59;
      v170 = v64 + 0.0;
      v171 = v66 - v24;
      v172 = v68;
      v173 = v70 - (0.0 - v24);
      v152 = controllerCopy;
      v153 = view2;
      v71 = view2;
      v72 = _Block_copy(aBlock);
      [(_UISearchControllerAnimator *)self transitionDuration:0];
      [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:2048 options:v72 animations:0 completion:?];

LABEL_24:
      v6 = v116;
      goto LABEL_25;
    }
  }

  if ([v5 resolvedKeyboardStyle] == 2)
  {
    [v6 constant];
    v30 = v29;
    [controllerCopy view];
    v31 = v116 = v6;
    [v31 frame];
    MinX = CGRectGetMinX(v175);

    v6 = v116;
    if (v30 >= MinX)
    {
      view5 = [controllerCopy view];
      [view5 _shouldReverseLayoutDirection];

      view6 = [v5 view];
      [view6 frame];
      v115 = -v35;

      superview = [_suggestionView superview];
      [superview frame];
      v111 = v38;
      v113 = v37;
      v109 = v39;

      [_scopeBarContainerView2 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      view7 = [controllerCopy view];
      [view7 center];
      v48 = v47 + v43 * -0.5;

      [_leftDividerView frame];
      v105 = v49;
      v107 = v50;
      if (_scopeBarContainerView2)
      {
        v98 = v48 + -30.0 + -190.0;
      }

      else
      {
        view8 = [controllerCopy view];
        [view8 frame];
        v98 = v74 + -270.0;
      }

      [_rightDividerView frame];
      v101 = v75;
      v103 = v76;
      v176.origin.x = v48;
      v176.origin.y = v41;
      v176.size.width = v43;
      v176.size.height = v45;
      v77 = CGRectGetMaxX(v176) + 30.0;
      view9 = [controllerCopy view];
      [view9 frame];
      v97 = v79 + -80.0 - v77;

      _resultsControllerViewContainer2 = [controllerCopy _resultsControllerViewContainer];
      [_resultsControllerViewContainer2 frame];
      v82 = v81;
      v84 = v83;

      view10 = [controllerCopy view];
      [view10 frame];
      v87 = v86;

      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __82___UISearchControllerATVSearchBarAnimatorLegacy_didUnfocusSearchBarForController___block_invoke_2;
      v118[3] = &unk_1E7106B58;
      v119 = v116;
      v126 = v115;
      v120 = _suggestionView;
      v127 = 0;
      v128 = v113;
      v129 = v111;
      v130 = v109;
      v121 = _leftDividerView;
      v131 = 0x4067C00000000000;
      v132 = v105;
      v133 = v98;
      v134 = v107;
      v122 = _scopeBarContainerView2;
      v135 = v48;
      v136 = v41;
      v137 = v43;
      v138 = v45;
      v123 = _rightDividerView;
      v139 = v77;
      v140 = v101;
      v141 = v97;
      v142 = v103;
      v124 = controllerCopy;
      v143 = 0;
      v144 = v82;
      v145 = v87;
      v146 = v84;
      v125 = v5;
      v88 = _Block_copy(v118);
      v89 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:150.0 damping:24.0 initialVelocity:0.0, 0.0];
      v90 = [UIViewPropertyAnimator alloc];
      v91 = objc_alloc_init(MEMORY[0x1E69794A8]);
      [v91 settlingDuration];
      v92 = [(UIViewPropertyAnimator *)v90 initWithDuration:v89 timingParameters:?];

      [(UIViewPropertyAnimator *)v92 addAnimations:v88];
      [(UIViewPropertyAnimator *)v92 startAnimation];

      v71 = v119;
      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)willFocusOffscreenViewForController:(id)controller withHeading:(unint64_t)heading
{
  headingCopy = heading;
  controllerCopy = controller;
  v7 = [controllerCopy _systemInputViewControllerAfterUpdate:0];
  _searchPresentationController = [controllerCopy _searchPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:841 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
  }

  presentationController = [controllerCopy presentationController];
  presentingViewController = [presentationController presentingViewController];
  view = [presentingViewController view];
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

  view2 = [v7 view];
  [view2 frame];
  if (_shouldReverseLayoutDirection)
  {
    MaxX = CGRectGetMaxX(*&v15);
    view3 = [v7 view];
    superview = [view3 superview];
    [superview bounds];
    v22 = MaxX < CGRectGetMaxX(v181);
  }

  else
  {
    v22 = v15 > 0.0;
  }

  if ([v7 resolvedKeyboardStyle] != 2 || !v22)
  {
    presentingViewController2 = [controllerCopy presentingViewController];
    tabBarController = [presentingViewController2 tabBarController];
    tabBar = [tabBarController tabBar];

    selfCopy = self;
    if ([tabBar _displayStyle] != 1)
    {

      tabBar = 0;
    }

    searchBar = [controllerCopy searchBar];
    superview2 = [searchBar superview];
    _suggestionView = [controllerCopy _suggestionView];
    if ([searchBar showsScopeBar])
    {
      _scopeBarContainerView = [searchBar _scopeBarContainerView];
      if (_scopeBarContainerView)
      {
        _scopeBarContainerView2 = [searchBar _scopeBarContainerView];
      }

      else
      {
        _scopeBarContainerView2 = 0;
      }
    }

    else
    {
      _scopeBarContainerView2 = 0;
    }

    _leftDividerView = [controllerCopy _leftDividerView];
    _rightDividerView = [controllerCopy _rightDividerView];
    _resultsControllerViewContainer = [controllerCopy _resultsControllerViewContainer];
    v131 = [v7 alignmentConstraintForAxis:1];
    [v131 constant];
    v112 = v32;
    if (tabBar)
    {
      [tabBar frame];
      v120 = v33;
      v121 = v34;
      v119 = v35;
    }

    else
    {
      v120 = *MEMORY[0x1E695F058];
      v121 = *(MEMORY[0x1E695F058] + 16);
      v119 = *(MEMORY[0x1E695F058] + 24);
    }

    view4 = [v7 view];
    [view4 frame];
    v38 = v37;
    v104 = v39;
    v122 = v41;
    v123 = v40;

    superview3 = [_leftDividerView superview];
    if (superview3)
    {
      [_leftDividerView frame];
      v44 = v43;
      v46 = v45;
      v129 = v48;
      v130 = v47;
    }

    else
    {
      v44 = *MEMORY[0x1E695F058];
      v46 = *(MEMORY[0x1E695F058] + 8);
      v129 = *(MEMORY[0x1E695F058] + 24);
      v130 = *(MEMORY[0x1E695F058] + 16);
    }

    superview4 = [_rightDividerView superview];
    if (superview4)
    {
      [_rightDividerView frame];
      v116 = v51;
      v117 = v50;
      v102 = v52;
      v115 = v53;
    }

    else
    {
      v102 = *(MEMORY[0x1E695F058] + 8);
      v116 = *(MEMORY[0x1E695F058] + 16);
      v117 = *MEMORY[0x1E695F058];
      v115 = *(MEMORY[0x1E695F058] + 24);
    }

    [superview2 frame];
    v127 = v55;
    v128 = v54;
    v57 = v56;
    rect = v58;
    if (_suggestionView)
    {
      [_suggestionView frame];
      v114 = v59;
      v61 = v60;
      v110 = v63;
      v111 = v62;
      if (_scopeBarContainerView2)
      {
LABEL_27:
        [_scopeBarContainerView2 frame];
        v108 = v65;
        v109 = v64;
        v67 = v66;
        v107 = v68;
        goto LABEL_30;
      }
    }

    else
    {
      v61 = *(MEMORY[0x1E695F058] + 8);
      v114 = *MEMORY[0x1E695F058];
      v110 = *(MEMORY[0x1E695F058] + 24);
      v111 = *(MEMORY[0x1E695F058] + 16);
      if (_scopeBarContainerView2)
      {
        goto LABEL_27;
      }
    }

    v67 = *(MEMORY[0x1E695F058] + 8);
    v108 = *(MEMORY[0x1E695F058] + 16);
    v109 = *MEMORY[0x1E695F058];
    v107 = *(MEMORY[0x1E695F058] + 24);
LABEL_30:
    v132 = _leftDividerView;
    [_resultsControllerViewContainer frame];
    v100 = v70;
    v101 = v69;
    v72 = v71;
    v106 = v73;
    v74 = dbl_18A679EA0[tabBar == 0];
    v118 = v44;
    v182.origin.x = v44;
    v182.origin.y = v46;
    v182.size.height = v129;
    v182.size.width = v130;
    MaxY = CGRectGetMaxY(v182);
    v183.size.width = v127;
    v183.origin.x = v128;
    v183.origin.y = v57;
    v183.size.height = rect;
    v76 = v74 + MaxY - CGRectGetMinY(v183) + 30.0;
    v125 = searchBar;
    v77 = _scopeBarContainerView2;
    if ([v7 resolvedKeyboardStyle] == 2)
    {
      v78 = _suggestionView;
    }

    else
    {
      view5 = [v7 view];
      v80 = view5;
      v78 = _suggestionView;
      if (view5)
      {
        [view5 transform];
      }

      else
      {
        memset(&v180, 0, sizeof(v180));
      }

      IsIdentity = CGAffineTransformIsIdentity(&v180);

      if (IsIdentity)
      {
        v82 = superview2;
        view6 = [v7 view];
        [view6 frame];
        v76 = v76 - (v84 + 34.5);

        goto LABEL_38;
      }
    }

    v82 = superview2;
LABEL_38:
    searchResultsToHiddenKeyboardFocusGuide = [controllerCopy searchResultsToHiddenKeyboardFocusGuide];
    v86 = (v57 >= 0.0) & (headingCopy >> 1);
    if (v86 == 1)
    {
      v134 = v38;
      v99 = v112 - v76;
      v113 = v104 - v76;
      v87 = -v76;
      v88 = v57 - v76;
      v89 = v61 - v76;
      v90 = v46 - v76;
      v91 = v67 - v76;
      v103 = v102 - v76;
      v105 = v72 - v76;
      v92 = 0.0 - v76;
      view7 = [v7 view];

      if (!view7)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v94 = _rightDividerView;
      if ((headingCopy & 1) == 0 || v57 >= 0.0)
      {
        goto LABEL_46;
      }

      v134 = v38;
      v99 = v112 + v76;
      v113 = v104 + v76;
      v88 = v57 + v76;
      v89 = v61 + v76;
      v90 = v46 + v76;
      v91 = v67 + v76;
      v103 = v102 + v76;
      v105 = v72 + v76;
      v87 = 0.0;
      v92 = v76 + 0.0;
    }

    [searchResultsToHiddenKeyboardFocusGuide setEnabled:{v86, *&v99}];
LABEL_45:
    v95 = v100 - v92;
    [(_UISearchControllerAnimator *)selfCopy transitionDuration:0];
    v97 = v96;
    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v137[2] = __97___UISearchControllerATVSearchBarAnimatorLegacy_willFocusOffscreenViewForController_withHeading___block_invoke;
    v137[3] = &unk_1E7106B80;
    v138 = tabBar;
    v147 = v120;
    v148 = v87;
    v149 = v121;
    v150 = v119;
    v139 = v82;
    v151 = v128;
    v152 = v88;
    v153 = v127;
    v154 = rect;
    v140 = v78;
    v155 = v114;
    v156 = v89;
    v157 = v111;
    v158 = v110;
    v141 = v132;
    v159 = v118;
    v160 = v90;
    v161 = v130;
    v162 = v129;
    v94 = _rightDividerView;
    v142 = _rightDividerView;
    v163 = v117;
    v164 = v103;
    v165 = v116;
    v166 = v115;
    v143 = v77;
    v167 = v109;
    v168 = v91;
    v169 = v108;
    v170 = v107;
    v144 = _resultsControllerViewContainer;
    v171 = v101 + 0.0;
    v172 = v105;
    v173 = v106;
    v174 = v95;
    v145 = v131;
    v175 = v99;
    v146 = v7;
    v176 = v134;
    v177 = v113;
    v178 = v123;
    v179 = v122;
    [UIView animateWithDuration:v137 animations:0 completion:v97];

LABEL_46:
  }
}

@end