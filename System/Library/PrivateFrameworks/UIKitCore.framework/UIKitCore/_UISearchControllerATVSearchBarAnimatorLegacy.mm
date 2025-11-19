@interface _UISearchControllerATVSearchBarAnimatorLegacy
- (void)animateTransition:(id)a3;
- (void)didFocusSearchBarForController:(id)a3;
- (void)didRelayoutSearchBarForController:(id)a3;
- (void)didUnfocusSearchBarForController:(id)a3;
- (void)willFocusOffscreenViewForController:(id)a3 withHeading:(unint64_t)a4;
@end

@implementation _UISearchControllerATVSearchBarAnimatorLegacy

- (void)animateTransition:(id)a3
{
  v351[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 viewControllerForKey:@"UITransitionContextFromViewController"];
  v7 = [v5 viewControllerForKey:@"UITransitionContextToViewController"];
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
  v11 = [v10 presentingViewController];
  v12 = [v11 transitionCoordinator];

  v13 = [v10 _searchPresentationController];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    v298 = [MEMORY[0x1E696AAA8] currentHandler];
    [v298 handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:45 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
  }

  v332 = self;
  v15 = [v10 _searchPresentationController];
  v16 = [v10 searchBar];
  if ([v16 showsScopeBar])
  {
    v17 = [v16 _scopeBarContainerView];
    if (v17)
    {
      v336 = [v16 _scopeBarContainerView];
    }

    else
    {
      v336 = 0;
    }
  }

  else
  {
    v336 = 0;
  }

  v334 = v15;
  if (isKindOfClass)
  {
    v335 = v16;
    v330 = v10;
    v331 = v6;
    v18 = [v7 view];
    [v5 finalFrameForViewController:v7];
    [v18 setFrame:?];
    v19 = [v5 containerView];
    [v19 addSubview:v18];

    if ([v7 obscuresBackgroundDuringPresentation])
    {
      v20 = [v15 backgroundObscuringView];
      [v5 finalFrameForViewController:v7];
      [v20 setFrame:?];
    }

    v329 = v12;
    v21 = [v7 _systemInputViewControllerAfterUpdate:0];
    v333 = v18;
    if ([v21 resolvedKeyboardStyle] == 1)
    {
      v22 = [v7 searchBar];
      [v22 _setDisableFocus:1];

      [v335 frame];
      [v18 frame];
      [v335 sizeThatFits:{v23, v24}];
      v26 = v25;
      [v18 frame];
      v28 = v27 + -80.0;
      v29 = MEMORY[0x1E695EFF8];
      v30 = [v15 searchBarContainerView];
      [v30 addSubview:v335];

      if (dyld_program_sdk_at_least())
      {
        v31 = [v7 view];
        [v31 safeAreaInsets];
        v33 = v32;
      }

      else
      {
        v33 = 34.5;
      }

      v56 = v28 + -80.0;
      v57 = *v29;
      v323 = v29[1];
      v58 = [v7 presentationController];
      v59 = [v58 presentingViewController];
      v60 = [v59 tabBarController];

      if (v60)
      {
        v61 = [v7 presentationController];
        v62 = [v61 presentingViewController];
        [v62 tabBarController];
        v64 = v63 = v15;
        v65 = [v64 tabBar];

        v66 = [v65 superview];
        v67 = [v66 coordinateSpace];
        [v65 frame];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v76 = [v63 searchBarContainerView];
        v77 = [v76 superview];
        v78 = [v77 coordinateSpace];
        [v67 convertRect:v78 toCoordinateSpace:{v69, v71, v73, v75}];
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v86 = v85;

        if ([v65 _displayStyle] == 1)
        {
          v352.origin.x = v80;
          v352.origin.y = v82;
          v352.size.width = v84;
          v352.size.height = v86;
          v33 = CGRectGetMaxY(v352) + 43.0;
        }

        v18 = v333;
        v15 = v334;
      }

      [v18 bounds];
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v95 = [v18 _screen];
      [v95 scale];
      UIRectCenteredXInRectScale(v57, v33, v56, v26, v88, v90, v92, v94, v96);
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v104 = v103;

      v105 = [v15 searchBarContainerView];
      [v105 setFrame:{v98, v100, v102, v104}];

      [v335 setFrame:{v57, v323, v56, v26}];
      v106 = [v21 view];
      v107 = *(MEMORY[0x1E695EFD0] + 16);
      v347[0] = *MEMORY[0x1E695EFD0];
      v347[1] = v107;
      v347[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v106 setTransform:v347];

      v108 = [v21 view];
      [v108 layoutIfNeeded];

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
      v114 = [v21 view];
      v115 = [v114 centerXAnchor];
      v116 = [v7 view];
      v117 = [v116 centerXAnchor];
      v118 = [v115 constraintEqualToAnchor:v117];

      v119 = [v21 view];
      v120 = [v119 topAnchor];
      v121 = [v21 view];
      v122 = [v121 superview];
      v123 = [v122 topAnchor];
      v124 = [v120 constraintEqualToAnchor:v123 constant:v113];

      v125 = v118;
      v126 = v124;

      v127 = MEMORY[0x1E69977A0];
      v351[0] = v118;
      v351[1] = v124;
      v128 = [MEMORY[0x1E695DEC8] arrayWithObjects:v351 count:2];
      [v127 activateConstraints:v128];

      [v21 setAlignmentConstraint:v118 forAxis:0];
      [v21 setAlignmentConstraint:v124 forAxis:1];
      v129 = [v21 view];
      [v129 frame];
      v131 = v113 + v130;

      v132 = [v7 _leftDividerView];
      v133 = [v7 view];
      [v133 frame];
      v135 = v134 + -160.0;

      [v132 setFrame:{80.0, v131, v135, 1.0}];
      [v333 addSubview:v132];
      v136 = [v7 _rightDividerView];
      [v136 removeFromSuperview];

      [v333 frame];
      v138 = v137 + -160.0;
      v354.size.height = 1.0;
      v354.origin.x = 80.0;
      v354.origin.y = v131;
      v354.size.width = v137 + -160.0;
      MaxY = CGRectGetMaxY(v354);
      v140 = [v7 _leftDividerView];
      v314 = [v7 _rightDividerView];
      v324 = v126;
      if ([v335 showsScopeBar] && v336)
      {
        v321 = v132;
        v315 = v125;
        v312 = v21;
        v327 = v5;
        [v335 _scopeBarHeight];
        v142 = v141;
        v143 = [v335 _scopeBar];
        [v143 sizeThatFits:{10000.0, 10000.0}];
        v145 = v144;

        v146 = (v138 - v145) * 0.5 + 80.0;
        [v336 setFrame:{v146, v131, v145, v142}];
        v318 = 1.0;
        [v336 setAlpha:?];
        [v333 addSubview:v336];
        v355.origin.x = v146;
        v355.origin.y = v131;
        v355.size.width = v145;
        rect = v142;
        v355.size.height = v142;
        MaxY = CGRectGetMaxY(v355);
        v147 = [v7 _scopeBarFocusContainerGuide];
        v148 = [v7 _scopeBarConstraints];

        if (v148)
        {
          v149 = MEMORY[0x1E69977A0];
          v150 = [v7 _scopeBarConstraints];
          [v149 deactivateConstraints:v150];
        }

        v306 = [v147 topAnchor];
        v304 = [v336 topAnchor];
        v302 = [v306 constraintEqualToAnchor:v304];
        v350[0] = v302;
        v301 = [v336 bottomAnchor];
        v300 = [v147 bottomAnchor];
        v299 = [v301 constraintEqualToAnchor:v300 constant:-30.0];
        v350[1] = v299;
        v151 = [v147 leftAnchor];
        v152 = v147;
        v308 = v147;
        v153 = v333;
        v154 = [v333 leftAnchor];
        v155 = [v151 constraintEqualToAnchor:v154 constant:80.0];
        v350[2] = v155;
        v156 = [v333 rightAnchor];
        v157 = [v152 rightAnchor];
        v158 = [v156 constraintEqualToAnchor:v157 constant:80.0];
        v350[3] = v158;
        v159 = [MEMORY[0x1E695DEC8] arrayWithObjects:v350 count:4];
        [v7 set_scopeBarConstraints:v159];

        v160 = MEMORY[0x1E69977A0];
        v161 = [v7 _scopeBarConstraints];
        [v160 activateConstraints:v161];

        [v336 frame];
        MidY = CGRectGetMidY(v356);
        v138 = v146 + -30.0 + -80.0;
        v357.origin.x = v146;
        v357.origin.y = v131;
        v357.size.width = v145;
        v357.size.height = rect;
        v163 = CGRectGetMaxX(v357) + 30.0;
        [v333 frame];
        v164 = v314;
        [v314 setFrame:{v163, MidY, CGRectGetMaxX(v358) + -80.0 - v163, 1.0}];
        [v333 addSubview:v314];

        v131 = MidY;
        v5 = v327;
        v21 = v312;
        v125 = v315;
        v132 = v321;
      }

      else
      {
        v153 = v333;
        v164 = v314;
      }

      v165 = MaxY + 30.0;
      [v140 setFrame:{80.0, v131, v138, v318}];
      [v153 addSubview:v140];
      v166 = [v7 _resultsControllerViewContainer];
      v167 = [v166 superview];
      [v167 bounds];
      v169 = v168;
      v171 = v170;

      [v153 frame];
      v173 = v172 - v165;
      v174 = [v7 _resultsControllerViewContainer];
      [v174 setFrame:{v169, v165, v171, v173}];

      v175 = v319;
      v176 = v324;
    }

    else
    {
      v39 = [v7 presentationController];
      v40 = [v39 presentingViewController];
      v41 = [v40 view];
      v317 = [v41 _shouldReverseLayoutDirection];

      v42 = v334;
      [v335 frame];
      [v18 frame];
      [v335 sizeThatFits:{v43, v44}];
      v46 = v45;
      [v18 frame];
      v48 = v47 + -190.0;
      v49 = MEMORY[0x1E695EFF8];
      v50 = [v334 searchBarContainerView];
      [v50 addSubview:v335];

      if (dyld_program_sdk_at_least())
      {
        v52 = [v7 view];
        [v52 safeAreaInsets];
        v54 = v53;
      }

      else
      {
        v54 = 34.5;
      }

      v177 = v48 + -80.0;
      v178 = *v49;
      v325 = v49[1];
      v179 = [v7 presentationController];
      v180 = [v179 presentingViewController];
      v181 = [v180 tabBarController];

      v328 = v5;
      if (v181)
      {
        v182 = [v7 presentationController];
        v183 = [v182 presentingViewController];
        v184 = [v183 tabBarController];
        v185 = [v184 tabBar];

        v186 = [v185 superview];
        v187 = [v186 coordinateSpace];
        [v185 frame];
        v189 = v188;
        v191 = v190;
        v193 = v192;
        v195 = v194;
        v196 = [v334 searchBarContainerView];
        v197 = [v196 superview];
        v198 = [v197 coordinateSpace];
        [v187 convertRect:v198 toCoordinateSpace:{v189, v191, v193, v195}];
        v200 = v199;
        v202 = v201;
        v204 = v203;
        v206 = v205;

        if ([v185 _displayStyle] == 1)
        {
          v359.origin.x = v200;
          v359.origin.y = v202;
          v359.size.width = v204;
          v359.size.height = v206;
          v54 = CGRectGetMaxY(v359) + 43.0;
        }

        v18 = v333;
        v42 = v334;
      }

      [v18 bounds];
      v208 = v207;
      v210 = v209;
      v212 = v211;
      v214 = v213;
      v215 = [v18 _screen];
      [v215 scale];
      UIRectCenteredXInRectScale(v178, v54, v177, v46, v208, v210, v212, v214, v216);
      v218 = v217;
      v220 = v219;
      v222 = v221;
      v224 = v223;

      v225 = [v42 searchBarContainerView];
      [v225 setFrame:{v218, v220, v222, v224}];

      [v335 setFrame:{v178, v325, v177, v46}];
      v226 = [v21 view];
      [v226 layoutIfNeeded];

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
      v232 = [v21 view];
      v233 = [v232 leadingAnchor];
      v234 = [v21 view];
      v235 = [v234 superview];
      v236 = [v235 leadingAnchor];
      v237 = 190.0;
      v238 = 80.0;
      if (!v317)
      {
        v238 = 190.0;
      }

      v239 = [v233 constraintEqualToAnchor:v236 constant:v238];

      v240 = [v21 view];
      v241 = [v240 topAnchor];
      v242 = [v7 view];
      v243 = [v242 topAnchor];
      v125 = [v241 constraintEqualToAnchor:v243 constant:v231];

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
      if ((v317 & 1) == 0)
      {
        v247 = [v21 view];
        [v247 frame];
        v237 = v248 + 70.0 + 190.0;
      }

      [v18 frame];
      v250 = v249 + -270.0;
      v251 = 1.0;
      v361.size.height = 1.0;
      v361.origin.x = v237;
      v361.origin.y = v231;
      v361.size.width = v249 + -270.0;
      v252 = CGRectGetMaxY(v361);
      v176 = [v7 _leftDividerView];
      v322 = [v7 _rightDividerView];
      if ([v335 showsScopeBar])
      {
        v326 = v176;
        if (v336)
        {
          v316 = v125;
          v320 = v175;
          [v335 _scopeBarHeight];
          v254 = v253;
          v255 = [v335 _scopeBar];
          [v255 sizeThatFits:{10000.0, 10000.0}];
          v257 = v256;

          v258 = v237 + (v250 - v257) * 0.5;
          [v336 setFrame:{v258, v231, v257, v254}];
          [v336 setAlpha:1.0];
          [v18 addSubview:v336];
          v362.origin.x = v258;
          v362.origin.y = v231;
          v362.size.width = v257;
          v362.size.height = v254;
          v252 = CGRectGetMaxY(v362);
          v259 = [v7 _scopeBarFocusContainerGuide];
          v260 = [v7 _scopeBarConstraints];

          if (v260)
          {
            v261 = MEMORY[0x1E69977A0];
            v262 = [v7 _scopeBarConstraints];
            [v261 deactivateConstraints:v262];
          }

          recta = [v259 topAnchor];
          v309 = [v336 topAnchor];
          v307 = [recta constraintEqualToAnchor:v309];
          v348[0] = v307;
          v305 = [v336 bottomAnchor];
          v303 = [v259 bottomAnchor];
          v263 = [v305 constraintEqualToAnchor:v303 constant:-30.0];
          v348[1] = v263;
          v264 = [v259 leftAnchor];
          v265 = [v18 leftAnchor];
          v266 = [v264 constraintEqualToAnchor:v265 constant:190.0];
          v348[2] = v266;
          v267 = [v333 rightAnchor];
          [v259 rightAnchor];
          v268 = v313 = v259;
          v269 = [v267 constraintEqualToAnchor:v268 constant:80.0];
          v348[3] = v269;
          v270 = [MEMORY[0x1E695DEC8] arrayWithObjects:v348 count:4];
          [v7 set_scopeBarConstraints:v270];

          v18 = v333;
          v244 = &qword_18A678000;

          v271 = MEMORY[0x1E69977A0];
          v272 = [v7 _scopeBarConstraints];
          [v271 activateConstraints:v272];

          [v336 frame];
          v273 = CGRectGetMidY(v363);
          v250 = v258 + -30.0 - v237;
          v364.origin.x = v258;
          v364.origin.y = v231;
          v364.size.width = v257;
          v364.size.height = v254;
          v274 = CGRectGetMaxX(v364) + 30.0;
          [v333 frame];
          [v322 setFrame:{v274, v273, CGRectGetMaxX(v365) + -80.0 - v274, 1.0}];
          [v333 addSubview:v322];

          v231 = v273;
          v176 = v326;
          v5 = v328;
          v175 = v320;
          v125 = v316;
          v251 = 1.0;
        }
      }

      v275 = v252 + 30.0;
      [v176 setFrame:{v237, v231, v250, v251}];
      [v18 addSubview:v176];
      v276 = [v7 _resultsControllerViewContainer];
      v277 = [v276 superview];
      [v277 bounds];

      v278 = [v21 view];
      [v278 frame];
      v279 = *(v244 + 173);
      v281 = v280 + v279 + 70.0;

      if (!v317)
      {
        v279 = v281;
      }

      [v18 frame];
      v283 = v282;
      v284 = [v21 view];
      [v284 frame];
      v286 = v283 - v285 + -70.0 + -190.0 + -80.0;

      [v18 frame];
      v288 = v287 - v275;
      v140 = [v7 _resultsControllerViewContainer];
      [v140 setFrame:{v279, v275, v286, v288}];
      v132 = v322;
    }

    v289 = [v21 view];
    v290 = [v289 superview];
    v291 = [v21 view];
    [v290 bringSubviewToFront:v291];

    v292 = [v7 _resultsControllerViewContainer];
    [v292 setAlpha:0.0];

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
    v295 = v5;
    v344 = v295;
    v296 = _Block_copy(v342);
    if ([v295 isAnimated])
    {
      [(_UISearchControllerAnimator *)v332 transitionDuration:v295];
      v12 = v329;
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v329 completionCurve], v294, v296, v297, 0.0);
    }

    else
    {
      v294[2](v294);
      v296[2](v296, 1);
      v12 = v329;
    }

    v15 = v334;

    v10 = v330;
    v6 = v331;
    v16 = v335;
    v55 = v333;
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67___UISearchControllerATVSearchBarAnimatorLegacy_animateTransition___block_invoke_3;
    aBlock[3] = &unk_1E70F35B8;
    v340 = v6;
    v34 = v5;
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
      [(_UISearchControllerAnimator *)v332 transitionDuration:v36];
      +[UIView animateWithDuration:delay:options:animations:completion:](UIView, "animateWithDuration:delay:options:animations:completion:", [v12 completionCurve], v35, v37, v38, 0.0);
    }

    else
    {
      v35[2](v35);
      v37[2](v37, 1);
    }

    v55 = v340;
  }
}

- (void)didRelayoutSearchBarForController:(id)a3
{
  v213[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 _searchPresentationController];

  if (v6)
  {
    v7 = [v5 _systemInputViewControllerAfterUpdate:0];
    v8 = [v5 _searchPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v182 = [MEMORY[0x1E696AAA8] currentHandler];
      [v182 handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:393 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
    }

    v10 = [v5 _searchPresentationController];
    v11 = [v10 searchBarContainerView];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v5 searchBar];
    [v20 setFrame:{v13, v15, v17, v19}];

    v21 = [v10 searchBarContainerView];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [v5 presentingViewController];
    v31 = [v30 tabBarController];
    v32 = [v31 tabBar];

    if (v25 < 0.0 && [v32 _displayStyle] == 1)
    {
      [v32 frame];
      [v32 setFrame:?];
    }

    v33 = [v5 searchBar];
    v34 = [v33 _scopeBarContainerView];

    v214.origin.x = v23;
    v214.origin.y = v25;
    v214.size.width = v27;
    v214.size.height = v29;
    MaxY = CGRectGetMaxY(v214);
    v36 = [v5 view];
    LODWORD(v37) = [v36 _shouldReverseLayoutDirection];

    if ([v7 resolvedKeyboardStyle] == 1)
    {
      v38 = [v7 view];
      [v38 frame];
      v40 = MaxY + 34.5 + v39;

      v41 = [v7 view];
      v42 = v41;
      if (v41)
      {
        [v41 transform];
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

      v52 = [v5 _leftDividerView];
      v53 = [v5 view];
      [v53 frame];
      v55 = v54 + -160.0;

      v56 = 1.0;
      [v52 setFrame:{80.0, v40, v55, 1.0}];
      v57 = [v5 view];
      [v57 addSubview:v52];

      v58 = [v5 _rightDividerView];
      [v58 removeFromSuperview];

      v59 = [v5 view];
      [v59 frame];
      v61 = v60 + -160.0;

      v216.size.height = 1.0;
      v216.origin.x = 80.0;
      v216.origin.y = v40;
      v216.size.width = v61;
      v62 = CGRectGetMaxY(v216);
      v63 = [v5 _leftDividerView];
      v64 = [v5 _rightDividerView];
      v65 = [v5 searchBar];
      v66 = [v65 showsScopeBar];

      if (v66 && v34)
      {
        v200 = v64;
        rect = v63;
        v203 = v52;
        v205 = v7;
        v207 = v32;
        v209 = v10;
        v67 = [v5 searchBar];
        [v67 _scopeBarHeight];
        v69 = v68;

        v70 = [v5 searchBar];
        v71 = [v70 _scopeBar];
        [v71 sizeThatFits:{10000.0, 10000.0}];
        v73 = v72;

        v74 = (v61 - v73) * 0.5 + 80.0;
        [v34 setFrame:{v74, v40, v73, v69}];
        [v34 setAlpha:1.0];
        v75 = [v5 view];
        [v75 addSubview:v34];

        v217.origin.x = v74;
        v217.origin.y = v40;
        v217.size.width = v73;
        v217.size.height = v69;
        v198 = CGRectGetMaxY(v217);
        v76 = [v5 _scopeBarFocusContainerGuide];
        v77 = [v5 _scopeBarConstraints];

        if (v77)
        {
          v78 = MEMORY[0x1E69977A0];
          v79 = [v5 _scopeBarConstraints];
          [v78 deactivateConstraints:v79];
        }

        v194 = [v76 topAnchor];
        v192 = [v34 topAnchor];
        v190 = [v194 constraintEqualToAnchor:v192];
        v213[0] = v190;
        v188 = [v34 bottomAnchor];
        v186 = [v76 bottomAnchor];
        v184 = [v188 constraintEqualToAnchor:v186 constant:-30.0];
        v213[1] = v184;
        v183 = [v76 leftAnchor];
        v80 = [v5 view];
        v81 = [v80 leftAnchor];
        [v183 constraintEqualToAnchor:v81 constant:80.0];
        v82 = v196 = v76;
        v213[2] = v82;
        v83 = [v5 view];
        v84 = [v83 rightAnchor];
        v85 = [v76 rightAnchor];
        [v84 constraintEqualToAnchor:v85 constant:80.0];
        v87 = v86 = v34;
        v213[3] = v87;
        v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:4];
        [v5 set_scopeBarConstraints:v88];

        v34 = v86;
        v89 = MEMORY[0x1E69977A0];
        v90 = [v5 _scopeBarConstraints];
        [v89 activateConstraints:v90];

        [v86 frame];
        MidY = CGRectGetMidY(v218);
        v61 = v74 + -30.0 + -80.0;
        v219.origin.x = v74;
        v219.origin.y = v40;
        v219.size.width = v73;
        v219.size.height = v69;
        v92 = CGRectGetMaxX(v219) + 30.0;
        v93 = [v5 view];
        [v93 frame];
        v94 = CGRectGetMaxX(v220) + -80.0 - v92;

        v64 = v200;
        [v200 setFrame:{v92, MidY, v94, 1.0}];
        v95 = [v5 view];
        [v95 addSubview:v200];

        v7 = v205;
        v32 = v207;
        v10 = v209;
        v63 = rect;
        v52 = v203;
        v56 = 1.0;
        v62 = v198;
      }

      else
      {
        v96 = [v5 _scopeBarConstraints];

        if (v96)
        {
          v97 = MEMORY[0x1E69977A0];
          v98 = [v5 _scopeBarConstraints];
          [v97 deactivateConstraints:v98];
        }

        [v34 removeFromSuperview];
        v99 = [v5 _leftDividerView];
        [v99 setFrame:{80.0, v40, v55, 1.0}];

        v100 = [v5 _rightDividerView];
        [v100 removeFromSuperview];

        MidY = v40;
      }

      [v63 setFrame:{80.0, MidY, v61, v56}];
      v101 = [v5 view];
      v102 = [v5 _leftDividerView];
      [v101 addSubview:v102];

      v103 = [v5 _resultsControllerViewContainer];
      v104 = [v103 superview];
      [v104 bounds];
      v106 = v105;
      v108 = v107;

      v109 = [v5 view];
      [v109 frame];
      v111 = v110 - (v62 + 30.0);

      v112 = [v5 _resultsControllerViewContainer];
      [v112 setFrame:{v106, v62 + 30.0, v108, v111}];
    }

    else
    {
      if ([v7 resolvedKeyboardStyle] != 2)
      {
LABEL_43:
        v179 = [v7 view];
        v180 = [v179 superview];
        v181 = [v7 view];
        [v180 bringSubviewToFront:v181];

        goto LABEL_44;
      }

      v43 = [v7 view];
      [v43 frame];
      if (v37)
      {
        MaxX = CGRectGetMaxX(*&v44);
        v49 = [v5 view];
        [v49 frame];
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
      v114 = [v5 view];
      [v114 frame];
      v116 = v115 + -270.0;

      v117 = &qword_18A678000;
      v118 = 190.0;
      if (v50)
      {
        v119 = [v7 view];
        [v119 frame];
        v116 = v116 - (v120 + 70.0);

        if ((v37 & 1) == 0)
        {
          v121 = [v7 view];
          [v121 frame];
          v118 = v122 + 70.0 + 190.0;
        }
      }

      v123 = v113 + 34.5;
      if (v34 && ([v5 searchBar], v124 = objc_claimAutoreleasedReturnValue(), v125 = objc_msgSend(v124, "showsScopeBar"), v124, v125))
      {
        v204 = v50;
        v206 = v37;
        v208 = v32;
        v210 = v10;
        v126 = [v5 searchBar];
        [v126 _scopeBarHeight];
        v128 = v127;

        v129 = [v5 searchBar];
        v130 = [v129 _scopeBar];
        [v130 sizeThatFits:{10000.0, 10000.0}];
        v132 = v131;

        v133 = v118 + (v116 - v132) * 0.5;
        [v34 setFrame:{v133, v123, v132, v128}];
        [v34 setAlpha:1.0];
        v134 = [v5 view];
        [v134 addSubview:v34];

        v135 = [v5 _scopeBarFocusContainerGuide];
        v136 = [v5 _scopeBarConstraints];

        if (v136)
        {
          v137 = MEMORY[0x1E69977A0];
          v138 = [v5 _scopeBarConstraints];
          [v137 deactivateConstraints:v138];
        }

        v139 = v128 + 30.0;
        v199 = [v135 topAnchor];
        v197 = [v34 topAnchor];
        v195 = [v199 constraintEqualToAnchor:v197];
        v212[0] = v195;
        v193 = [v34 bottomAnchor];
        v191 = [v135 bottomAnchor];
        v189 = [v193 constraintEqualToAnchor:v191 constant:-30.0];
        v212[1] = v189;
        v185 = [v135 leadingAnchor];
        v187 = [v7 view];
        [v187 trailingAnchor];
        v140 = v135;
        v37 = v201 = v135;
        v141 = [v185 constraintEqualToAnchor:v37 constant:70.0];
        v212[2] = v141;
        v142 = [v5 view];
        v143 = [v142 trailingAnchor];
        v144 = [v140 trailingAnchor];
        v145 = [v143 constraintEqualToAnchor:v144];
        v212[3] = v145;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:4];
        v146 = v34;
        v148 = v147 = v7;
        [v5 set_scopeBarConstraints:v148];

        v7 = v147;
        v34 = v146;

        v149 = MEMORY[0x1E69977A0];
        v150 = [v5 _scopeBarConstraints];
        [v149 activateConstraints:v150];

        [v34 frame];
        v151 = CGRectGetMidY(v222);
        v152 = v133 + -30.0 - v118;
        v153 = [v5 _leftDividerView];
        [v153 setFrame:{v118, v151, v152, 1.0}];

        v223.origin.x = v133;
        v223.origin.y = v123;
        v223.size.width = v132;
        v223.size.height = v128;
        v154 = CGRectGetMaxX(v223) + 30.0;
        v155 = [v5 _rightDividerView];
        [v155 setFrame:{v154, v151, v152, 1.0}];

        v156 = [v5 view];
        v157 = [v5 _rightDividerView];
        [v156 addSubview:v157];

        v32 = v208;
        v10 = v210;
        LOBYTE(v37) = v206;
        v50 = v204;
        v117 = &qword_18A678000;
      }

      else
      {
        v158 = [v5 _scopeBarConstraints];

        if (v158)
        {
          v159 = MEMORY[0x1E69977A0];
          v160 = [v5 _scopeBarConstraints];
          [v159 deactivateConstraints:v160];
        }

        [v34 removeFromSuperview];
        v161 = [v5 _leftDividerView];
        [v161 setFrame:{v118, v123, v116, 1.0}];

        v162 = [v5 _rightDividerView];
        [v162 removeFromSuperview];

        v139 = 30.0;
      }

      v163 = v123 + v139;
      v164 = [v5 view];
      v165 = [v5 _leftDividerView];
      [v164 addSubview:v165];

      v166 = [v5 _resultsControllerViewContainer];
      v167 = [v166 superview];
      [v167 bounds];

      v168 = [v5 view];
      [v168 frame];
      v170 = v169;

      if (v50)
      {
        v171 = [v7 view];
        [v171 frame];
        v173 = *(v117 + 173);
        v170 = v170 - (v172 + 70.0 + v173 + 80.0);

        if ((v37 & 1) == 0)
        {
          v174 = [v7 view];
          [v174 frame];
          v173 = v175 + 70.0 + *(v117 + 173);
        }
      }

      else
      {
        v173 = 0.0;
      }

      v176 = [v5 view];
      [v176 frame];
      v178 = v177 - v163;

      v52 = [v5 _resultsControllerViewContainer];
      [v52 setFrame:{v173, v163, v170, v178}];
    }

    goto LABEL_43;
  }

LABEL_44:
}

- (void)didFocusSearchBarForController:(id)a3
{
  v4 = a3;
  v5 = [v4 _systemInputViewControllerAfterUpdate:0];
  v6 = [v5 alignmentConstraintForAxis:0];
  v7 = [v4 searchBar];
  v8 = [v4 _suggestionView];
  v9 = [v4 _leftDividerView];
  v114 = [v4 _rightDividerView];
  v10 = 0;
  if ([v7 showsScopeBar])
  {
    v11 = [v7 _scopeBarContainerView];
    if (v11)
    {
      v10 = [v7 _scopeBarContainerView];
    }

    else
    {
      v10 = 0;
    }
  }

  if ([v5 resolvedKeyboardStyle] != 1)
  {
    goto LABEL_31;
  }

  v12 = [v5 view];
  v13 = v12;
  if (v12)
  {
    [v12 transform];
  }

  else
  {
    memset(&v170, 0, sizeof(v170));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v170);

  if (!IsIdentity)
  {
    v23 = [v4 _searchPresentationController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v91 = [MEMORY[0x1E696AAA8] currentHandler];
      [v91 handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:660 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
    }

    v25 = [v5 view];
    [v25 bounds];
    v27 = v26;

    v28 = [v5 view];
    memset(&v170, 0, sizeof(v170));
    CGAffineTransformMakeTranslation(&v170, 0.0, v27 * -0.5 + -1.0);
    v168 = v170;
    CGAffineTransformScale(&v169, &v168, 1.0, 1.0 / v27);
    v170 = v169;
    v167 = v169;
    v29 = [v5 view];
    v169 = v167;
    [v29 setTransform:&v169];

    [v28 setAlpha:0.0];
    v30 = v27 + 34.5;
    if (v8)
    {
      [v8 frame];
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
    if (v9)
    {
      [v9 frame];
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
    [v10 frame];
    v95 = v75;
    v97 = v74;
    v77 = v76;
    v79 = v30 + v78;
    v80 = [v4 _resultsControllerViewContainer];
    [v80 frame];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;

    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke;
    v144[3] = &unk_1E7106B30;
    v145 = v5;
    v146 = v8;
    v151 = v110;
    v152 = v105;
    v153 = v108;
    v154 = v106;
    v147 = v9;
    v155 = v103;
    v156 = v73;
    v157 = v101;
    v158 = v99;
    v148 = v10;
    v159 = v97;
    v160 = v79;
    v161 = v77;
    v162 = v95;
    v163 = v82 + 0.0;
    v164 = v30 + v84;
    v165 = v86;
    v166 = v88 - v30;
    v149 = v4;
    v150 = v28;
    v89 = v28;
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
      v17 = [v4 view];
      [v17 frame];
      MinX = CGRectGetMinX(v171);

      if (v16 < MinX)
      {
        v19 = [v4 view];
        v20 = [v19 _shouldReverseLayoutDirection];

        if (v20)
        {
          v21 = 190.0;
          v22 = 80.0;
        }

        else
        {
          v35 = [v5 view];
          [v35 frame];
          v22 = 190.0;
          v21 = v36 + 70.0 + 190.0;
        }

        v92 = v22;
        v37 = [v4 view];
        [v37 frame];
        v39 = v38;
        v40 = [v5 view];
        [v40 frame];
        v42 = v39 - v41 + -70.0 - v22;

        v43 = [v8 superview];
        [v43 frame];
        v109 = v45;
        v111 = v44;
        v107 = v46;

        [v10 frame];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        [v9 frame];
        v98 = v53;
        v100 = v54;
        v55 = (v21 + v42) * 0.5 + -30.0 - v21;
        if (!v10)
        {
          v55 = v42;
        }

        v93 = v55;
        [v114 frame];
        v102 = v56;
        v104 = v57;
        v172.origin.x = (v21 + v42) * 0.5;
        v172.origin.y = v48;
        v172.size.width = v50;
        v172.size.height = v52;
        v58 = CGRectGetMaxX(v172) + 30.0;
        v59 = [v4 _resultsControllerViewContainer];
        [v59 frame];
        v94 = v60;
        v96 = v61;

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __80___UISearchControllerATVSearchBarAnimatorLegacy_didFocusSearchBarForController___block_invoke_2;
        aBlock[3] = &unk_1E7106B58;
        v113 = v9;
        v62 = v8;
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
        v119 = v10;
        v132 = (v21 + v42) * 0.5;
        v133 = v48;
        v134 = v50;
        v135 = v52;
        v120 = v114;
        v136 = v58;
        v137 = v102;
        v138 = v21 + v42 - v58;
        v139 = v104;
        v121 = v4;
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
        v8 = v62;
        v9 = v113;
        [(UIViewPropertyAnimator *)v68 addAnimations:v64];
        [(UIViewPropertyAnimator *)v68 startAnimation];
      }
    }
  }
}

- (void)didUnfocusSearchBarForController:(id)a3
{
  v4 = a3;
  v5 = [v4 _systemInputViewControllerAfterUpdate:0];
  v6 = [v5 alignmentConstraintForAxis:0];
  v7 = [v4 searchBar];
  v8 = [v4 _suggestionView];
  v9 = [v4 _leftDividerView];
  v117 = [v4 _rightDividerView];
  v10 = 0;
  if ([v7 showsScopeBar])
  {
    v11 = [v7 _scopeBarContainerView];
    if (v11)
    {
      v10 = [v7 _scopeBarContainerView];
    }

    else
    {
      v10 = 0;
    }
  }

  if ([v5 resolvedKeyboardStyle] == 1)
  {
    v12 = [v5 view];
    v13 = v12;
    if (v12)
    {
      [v12 transform];
    }

    else
    {
      memset(&v174, 0, sizeof(v174));
    }

    IsIdentity = CGAffineTransformIsIdentity(&v174);

    if (IsIdentity)
    {
      v15 = [v5 view];
      v16 = [v5 view];
      [v16 bounds];
      v108 = v18;
      v110 = v17;
      v114 = v19;
      v21 = v20;

      v22 = [v5 view];
      v23 = *(MEMORY[0x1E695EFD0] + 16);
      *&v174.a = *MEMORY[0x1E695EFD0];
      *&v174.c = v23;
      *&v174.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v22 setTransform:&v174];

      [v15 setAlpha:1.0];
      v112 = v21;
      v24 = v21 + 34.5;
      if (v8)
      {
        [v8 frame];
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
      if (v9)
      {
        [v9 frame];
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
      [v10 frame];
      v93 = v57;
      v94 = v56;
      v59 = v58;
      v61 = v60 - v24;
      v62 = [v4 _resultsControllerViewContainer];
      [v62 frame];
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
      v149 = v8;
      v158 = v106;
      v159 = v100;
      v160 = v104;
      v161 = v102;
      v150 = v9;
      v162 = v99;
      v163 = v55;
      v164 = v96;
      v165 = v95;
      v151 = v10;
      v166 = v94;
      v167 = v61;
      v168 = v93;
      v169 = v59;
      v170 = v64 + 0.0;
      v171 = v66 - v24;
      v172 = v68;
      v173 = v70 - (0.0 - v24);
      v152 = v4;
      v153 = v15;
      v71 = v15;
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
    [v4 view];
    v31 = v116 = v6;
    [v31 frame];
    MinX = CGRectGetMinX(v175);

    v6 = v116;
    if (v30 >= MinX)
    {
      v33 = [v4 view];
      [v33 _shouldReverseLayoutDirection];

      v34 = [v5 view];
      [v34 frame];
      v115 = -v35;

      v36 = [v8 superview];
      [v36 frame];
      v111 = v38;
      v113 = v37;
      v109 = v39;

      [v10 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [v4 view];
      [v46 center];
      v48 = v47 + v43 * -0.5;

      [v9 frame];
      v105 = v49;
      v107 = v50;
      if (v10)
      {
        v98 = v48 + -30.0 + -190.0;
      }

      else
      {
        v73 = [v4 view];
        [v73 frame];
        v98 = v74 + -270.0;
      }

      [v117 frame];
      v101 = v75;
      v103 = v76;
      v176.origin.x = v48;
      v176.origin.y = v41;
      v176.size.width = v43;
      v176.size.height = v45;
      v77 = CGRectGetMaxX(v176) + 30.0;
      v78 = [v4 view];
      [v78 frame];
      v97 = v79 + -80.0 - v77;

      v80 = [v4 _resultsControllerViewContainer];
      [v80 frame];
      v82 = v81;
      v84 = v83;

      v85 = [v4 view];
      [v85 frame];
      v87 = v86;

      v118[0] = MEMORY[0x1E69E9820];
      v118[1] = 3221225472;
      v118[2] = __82___UISearchControllerATVSearchBarAnimatorLegacy_didUnfocusSearchBarForController___block_invoke_2;
      v118[3] = &unk_1E7106B58;
      v119 = v116;
      v126 = v115;
      v120 = v8;
      v127 = 0;
      v128 = v113;
      v129 = v111;
      v130 = v109;
      v121 = v9;
      v131 = 0x4067C00000000000;
      v132 = v105;
      v133 = v98;
      v134 = v107;
      v122 = v10;
      v135 = v48;
      v136 = v41;
      v137 = v43;
      v138 = v45;
      v123 = v117;
      v139 = v77;
      v140 = v101;
      v141 = v97;
      v142 = v103;
      v124 = v4;
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

- (void)willFocusOffscreenViewForController:(id)a3 withHeading:(unint64_t)a4
{
  v133 = a4;
  v6 = a3;
  v7 = [v6 _systemInputViewControllerAfterUpdate:0];
  v8 = [v6 _searchPresentationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v98 = [MEMORY[0x1E696AAA8] currentHandler];
    [v98 handleFailureInMethod:a2 object:self file:@"_UISearchControllerATVSearchAnimatorLegacy.m" lineNumber:841 description:@"UISearchBar's presentation controller must be of type _UISearchATVPresentationController."];
  }

  v10 = [v6 presentationController];
  v11 = [v10 presentingViewController];
  v12 = [v11 view];
  v13 = [v12 _shouldReverseLayoutDirection];

  v14 = [v7 view];
  [v14 frame];
  if (v13)
  {
    MaxX = CGRectGetMaxX(*&v15);
    v20 = [v7 view];
    v21 = [v20 superview];
    [v21 bounds];
    v22 = MaxX < CGRectGetMaxX(v181);
  }

  else
  {
    v22 = v15 > 0.0;
  }

  if ([v7 resolvedKeyboardStyle] != 2 || !v22)
  {
    v23 = [v6 presentingViewController];
    v24 = [v23 tabBarController];
    v25 = [v24 tabBar];

    v124 = self;
    if ([v25 _displayStyle] != 1)
    {

      v25 = 0;
    }

    v26 = [v6 searchBar];
    v27 = [v26 superview];
    v28 = [v6 _suggestionView];
    if ([v26 showsScopeBar])
    {
      v29 = [v26 _scopeBarContainerView];
      if (v29)
      {
        v30 = [v26 _scopeBarContainerView];
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = [v6 _leftDividerView];
    v135 = [v6 _rightDividerView];
    v136 = [v6 _resultsControllerViewContainer];
    v131 = [v7 alignmentConstraintForAxis:1];
    [v131 constant];
    v112 = v32;
    if (v25)
    {
      [v25 frame];
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

    v36 = [v7 view];
    [v36 frame];
    v38 = v37;
    v104 = v39;
    v122 = v41;
    v123 = v40;

    v42 = [v31 superview];
    if (v42)
    {
      [v31 frame];
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

    v49 = [v135 superview];
    if (v49)
    {
      [v135 frame];
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

    [v27 frame];
    v127 = v55;
    v128 = v54;
    v57 = v56;
    rect = v58;
    if (v28)
    {
      [v28 frame];
      v114 = v59;
      v61 = v60;
      v110 = v63;
      v111 = v62;
      if (v30)
      {
LABEL_27:
        [v30 frame];
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
      if (v30)
      {
        goto LABEL_27;
      }
    }

    v67 = *(MEMORY[0x1E695F058] + 8);
    v108 = *(MEMORY[0x1E695F058] + 16);
    v109 = *MEMORY[0x1E695F058];
    v107 = *(MEMORY[0x1E695F058] + 24);
LABEL_30:
    v132 = v31;
    [v136 frame];
    v100 = v70;
    v101 = v69;
    v72 = v71;
    v106 = v73;
    v74 = dbl_18A679EA0[v25 == 0];
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
    v125 = v26;
    v77 = v30;
    if ([v7 resolvedKeyboardStyle] == 2)
    {
      v78 = v28;
    }

    else
    {
      v79 = [v7 view];
      v80 = v79;
      v78 = v28;
      if (v79)
      {
        [v79 transform];
      }

      else
      {
        memset(&v180, 0, sizeof(v180));
      }

      IsIdentity = CGAffineTransformIsIdentity(&v180);

      if (IsIdentity)
      {
        v82 = v27;
        v83 = [v7 view];
        [v83 frame];
        v76 = v76 - (v84 + 34.5);

        goto LABEL_38;
      }
    }

    v82 = v27;
LABEL_38:
    v85 = [v6 searchResultsToHiddenKeyboardFocusGuide];
    v86 = (v57 >= 0.0) & (v133 >> 1);
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
      v93 = [v7 view];

      if (!v93)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v94 = v135;
      if ((v133 & 1) == 0 || v57 >= 0.0)
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

    [v85 setEnabled:{v86, *&v99}];
LABEL_45:
    v95 = v100 - v92;
    [(_UISearchControllerAnimator *)v124 transitionDuration:0];
    v97 = v96;
    v137[0] = MEMORY[0x1E69E9820];
    v137[1] = 3221225472;
    v137[2] = __97___UISearchControllerATVSearchBarAnimatorLegacy_willFocusOffscreenViewForController_withHeading___block_invoke;
    v137[3] = &unk_1E7106B80;
    v138 = v25;
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
    v94 = v135;
    v142 = v135;
    v163 = v117;
    v164 = v103;
    v165 = v116;
    v166 = v115;
    v143 = v77;
    v167 = v109;
    v168 = v91;
    v169 = v108;
    v170 = v107;
    v144 = v136;
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