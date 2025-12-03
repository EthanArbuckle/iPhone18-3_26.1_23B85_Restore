@interface _UIPanelInternalState
- (UIPanelControllerDelegate)delegate;
- (double)_defaultWidthForViewController:(id)controller parentWidth:(double)width;
- (id)_allowedLeadingWidthsForParentWidth:(double)width;
- (id)_allowedSupplementaryWidthsForParentWidth:(double)width;
- (id)_allowedTrailingWidthsForParentWidth:(double)width;
- (id)_allowedWidthsForViewController:(id)controller parentWidth:(double)width;
- (id)_stateForInteractiveRequest:(id)request withAffectedSides:(int64_t)sides inPossibleStates:(id)states;
- (id)computePossibleStatesGivenParentView:(id)view withSize:(CGSize)size forceOverlay:(BOOL)overlay;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setLeadingViewController:(id)controller;
- (void)setMainViewController:(id)controller;
- (void)setSupplementaryViewController:(id)controller;
- (void)setTrailingViewController:(id)controller;
@end

@implementation _UIPanelInternalState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  mainViewController = [(_UIPanelInternalState *)self mainViewController];
  [v4 setMainViewController:mainViewController];

  leadingViewController = [(_UIPanelInternalState *)self leadingViewController];
  [v4 setLeadingViewController:leadingViewController];

  trailingViewController = [(_UIPanelInternalState *)self trailingViewController];
  [v4 setTrailingViewController:trailingViewController];

  supplementaryViewController = [(_UIPanelInternalState *)self supplementaryViewController];
  [v4 setSupplementaryViewController:supplementaryViewController];

  collapsedViewController = [(_UIPanelInternalState *)self collapsedViewController];
  [v4 setCollapsedViewController:collapsedViewController];

  preservedDetailController = [(_UIPanelInternalState *)self preservedDetailController];
  [v4 setPreservedDetailController:preservedDetailController];

  delegate = [(_UIPanelInternalState *)self delegate];
  [v4 setDelegate:delegate];

  configuration = [(_UIPanelInternalState *)self configuration];
  [v4 setConfiguration:configuration];

  stateRequest = [(_UIPanelInternalState *)self stateRequest];
  [v4 setStateRequest:stateRequest];

  externallyAnimatingStateRequest = [(_UIPanelInternalState *)self externallyAnimatingStateRequest];
  [v4 setExternallyAnimatingStateRequest:externallyAnimatingStateRequest];

  [v4 setExternallyAnimatingAffectedSides:{-[_UIPanelInternalState externallyAnimatingAffectedSides](self, "externallyAnimatingAffectedSides")}];
  animationState = [(_UIPanelInternalState *)self animationState];
  [v4 setAnimationState:animationState];

  interactiveStateRequest = [(_UIPanelInternalState *)self interactiveStateRequest];
  [v4 setInteractiveStateRequest:interactiveStateRequest];

  [v4 setCollapsedState:{-[_UIPanelInternalState collapsedState](self, "collapsedState")}];
  [(_UIPanelInternalState *)self keyboardAdjustment];
  [v4 setKeyboardAdjustment:?];
  return v4;
}

- (void)setLeadingViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    mainViewController = [(_UIPanelInternalState *)self mainViewController];

    if (mainViewController == controllerCopy)
    {
      [(_UIPanelInternalState *)self setMainViewController:0];
    }

    else
    {
      trailingViewController = [(_UIPanelInternalState *)self trailingViewController];

      if (trailingViewController == controllerCopy)
      {
        [(_UIPanelInternalState *)self setTrailingViewController:0];
      }

      else
      {
        supplementaryViewController = [(_UIPanelInternalState *)self supplementaryViewController];

        if (supplementaryViewController == controllerCopy)
        {
          [(_UIPanelInternalState *)self setSupplementaryViewController:0];
        }
      }
    }
  }

  leadingViewController = self->_leadingViewController;
  self->_leadingViewController = controllerCopy;
}

- (void)setSupplementaryViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    mainViewController = [(_UIPanelInternalState *)self mainViewController];

    if (mainViewController == controllerCopy)
    {
      [(_UIPanelInternalState *)self setMainViewController:0];
    }

    else
    {
      leadingViewController = [(_UIPanelInternalState *)self leadingViewController];

      if (leadingViewController == controllerCopy)
      {
        [(_UIPanelInternalState *)self setLeadingViewController:0];
      }

      else
      {
        trailingViewController = [(_UIPanelInternalState *)self trailingViewController];

        if (trailingViewController == controllerCopy)
        {
          [(_UIPanelInternalState *)self setTrailingViewController:0];
        }
      }
    }
  }

  supplementaryViewController = self->_supplementaryViewController;
  self->_supplementaryViewController = controllerCopy;
}

- (void)setMainViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    leadingViewController = [(_UIPanelInternalState *)self leadingViewController];

    if (leadingViewController == controllerCopy)
    {
      [(_UIPanelInternalState *)self setLeadingViewController:0];
    }

    else
    {
      trailingViewController = [(_UIPanelInternalState *)self trailingViewController];

      if (trailingViewController == controllerCopy)
      {
        [(_UIPanelInternalState *)self setTrailingViewController:0];
      }

      else
      {
        supplementaryViewController = [(_UIPanelInternalState *)self supplementaryViewController];

        if (supplementaryViewController == controllerCopy)
        {
          [(_UIPanelInternalState *)self setSupplementaryViewController:0];
        }
      }
    }
  }

  mainViewController = self->_mainViewController;
  self->_mainViewController = controllerCopy;
}

- (void)setTrailingViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    leadingViewController = [(_UIPanelInternalState *)self leadingViewController];

    if (leadingViewController == controllerCopy)
    {
      [(_UIPanelInternalState *)self setLeadingViewController:0];
    }

    else
    {
      mainViewController = [(_UIPanelInternalState *)self mainViewController];

      if (mainViewController == controllerCopy)
      {
        [(_UIPanelInternalState *)self setMainViewController:0];
      }

      else
      {
        supplementaryViewController = [(_UIPanelInternalState *)self supplementaryViewController];

        if (supplementaryViewController == controllerCopy)
        {
          [(_UIPanelInternalState *)self setSupplementaryViewController:0];
        }
      }
    }
  }

  trailingViewController = self->_trailingViewController;
  self->_trailingViewController = controllerCopy;
}

- (id)_allowedWidthsForViewController:(id)controller parentWidth:(double)width
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  array = [MEMORY[0x1E695DF70] array];
  _preferredContentSizes = [controllerCopy _preferredContentSizes];
  if ([_preferredContentSizes count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = _preferredContentSizes;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v22 + 1) + 8 * i) CGSizeValue];
          if (v14 > 0.0)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            [array addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    goto LABEL_18;
  }

  if ([controllerCopy _isNavigationController])
  {
    [controllerCopy _preferredContentSizeForcingLoad:0];
  }

  else
  {
    [controllerCopy preferredContentSize];
  }

  if (v16 > 0.0 || ([(_UIPanelInternalState *)self _defaultWidthForViewController:controllerCopy parentWidth:width], v17 > 0.0))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [array addObject:v9];
LABEL_18:
  }

  if ([array count] >= 2)
  {
    v18 = [MEMORY[0x1E695DFD8] setWithArray:array];
    allObjects = [v18 allObjects];
    v20 = [allObjects mutableCopy];

    array = v20;
  }

  [array sortUsingSelector:sel_compare_];

  return array;
}

- (double)_defaultWidthForViewController:(id)controller parentWidth:(double)width
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  v9 = 0.0;
  if (v8)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 panelController:0 expectedWidthForColumnForViewController:controllerCopy];
    v9 = v11;
  }

  traitCollection = [controllerCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom > 1)
  {
    if (userInterfaceIdiom != 2 && userInterfaceIdiom != 8)
    {
      goto LABEL_16;
    }

    v16 = 0.33;
LABEL_15:
    v9 = ceil(width * v16);
    goto LABEL_16;
  }

  if (!userInterfaceIdiom)
  {
    if (v9 != 0.0)
    {
      goto LABEL_16;
    }

    v16 = 0.4;
    goto LABEL_15;
  }

  if (userInterfaceIdiom == 1 && v9 == 0.0)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen _referenceBounds];
    Height = CGRectGetHeight(v18);

    if (Height <= 1210.0)
    {
      v9 = 320.0;
    }

    else
    {
      v9 = 375.0;
    }
  }

LABEL_16:

  return v9;
}

- (id)_allowedLeadingWidthsForParentWidth:(double)width
{
  configuration = [(_UIPanelInternalState *)self configuration];
  leadingWidths = [configuration leadingWidths];
  v7 = [leadingWidths count];

  if (v7)
  {
    configuration2 = [(_UIPanelInternalState *)self configuration];
    [configuration2 leadingWidths];
  }

  else
  {
    configuration2 = [(_UIPanelInternalState *)self leadingViewController];
    [(_UIPanelInternalState *)self _allowedWidthsForViewController:configuration2 parentWidth:width];
  }
  v9 = ;

  return v9;
}

- (id)_allowedTrailingWidthsForParentWidth:(double)width
{
  configuration = [(_UIPanelInternalState *)self configuration];
  trailingWidths = [configuration trailingWidths];
  v7 = [trailingWidths count];

  if (v7)
  {
    configuration2 = [(_UIPanelInternalState *)self configuration];
    [configuration2 trailingWidths];
  }

  else
  {
    configuration2 = [(_UIPanelInternalState *)self trailingViewController];
    [(_UIPanelInternalState *)self _allowedWidthsForViewController:configuration2 parentWidth:width];
  }
  v9 = ;

  return v9;
}

- (id)_allowedSupplementaryWidthsForParentWidth:(double)width
{
  configuration = [(_UIPanelInternalState *)self configuration];
  supplementaryWidths = [configuration supplementaryWidths];
  v7 = [supplementaryWidths count];

  if (v7)
  {
    configuration2 = [(_UIPanelInternalState *)self configuration];
    [configuration2 supplementaryWidths];
  }

  else
  {
    configuration2 = [(_UIPanelInternalState *)self supplementaryViewController];
    [(_UIPanelInternalState *)self _allowedWidthsForViewController:configuration2 parentWidth:width];
  }
  v9 = ;

  return v9;
}

- (id)computePossibleStatesGivenParentView:(id)view withSize:(CGSize)size forceOverlay:(BOOL)overlay
{
  overlayCopy = overlay;
  width = size.width;
  v143 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke;
  aBlock[3] = &unk_1E7103710;
  aBlock[4] = self;
  v10 = array;
  v137 = v10;
  v11 = _Block_copy(aBlock);
  if ([(_UIPanelInternalState *)self collapsedState]!= 1 && [(_UIPanelInternalState *)self collapsedState]!= 2)
  {
    v108 = overlayCopy;
    v102 = v11;
    v79 = v10;
    configuration = [(_UIPanelInternalState *)self configuration];
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v133 = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_3;
    v134 = &unk_1E7103758;
    v80 = viewCopy;
    v13 = viewCopy;
    v135 = v13;
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v127 = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_203;
    v128 = &unk_1E7103780;
    v131 = width;
    v14 = configuration;
    v129 = v14;
    v15 = v13;
    v130 = v15;
    leadingMayBeHidden = [v14 leadingMayBeHidden];
    trailingMayBeHidden = [v14 trailingMayBeHidden];
    supplementaryMayBeHidden = [v14 supplementaryMayBeHidden];
    supplementaryEdge = [v14 supplementaryEdge];
    leadingViewController = [(_UIPanelInternalState *)self leadingViewController];
    v20 = [(_UIPanelInternalState *)self _allowedLeadingWidthsForParentWidth:width];
    v21 = v133(v132, leadingViewController, v20, leadingMayBeHidden);

    trailingViewController = [(_UIPanelInternalState *)self trailingViewController];
    v23 = [(_UIPanelInternalState *)self _allowedTrailingWidthsForParentWidth:width];
    v24 = v133(v132, trailingViewController, v23, trailingMayBeHidden);

    supplementaryViewController = [(_UIPanelInternalState *)self supplementaryViewController];
    selfCopy = self;
    v26 = [(_UIPanelInternalState *)self _allowedSupplementaryWidthsForParentWidth:width];
    v27 = v133(v132, supplementaryViewController, v26, supplementaryMayBeHidden);

    v28 = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_2_205(v21);
    v85 = v24;
    v29 = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_2_205(v24);
    v93 = v27;
    v30 = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_2_205(v27);
    v31 = v30 > 0.0;
    v83 = v28;
    v32 = v28 > 0.0 && v30 > 0.0;
    v82 = v32;
    v90 = v29;
    if (v29 <= 0.0)
    {
      v31 = 0;
    }

    v89 = v31;
    [v14 minimumMainWidthFraction];
    UICeilToViewScale(v15);
    v106 = v33;
    [v14 minimumMainWidthFractionForSecondColumn];
    UICeilToViewScale(v15);
    v98 = v34;
    v111 = v14;
    [v14 maximumMainWidth];
    v97 = v15;
    UICeilToViewScale(v15);
    v105 = v35;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v21;
    v86 = [obj countByEnumeratingWithState:&v122 objects:v142 count:16];
    if (!v86)
    {
      v100 = 0;
      v103 = 0;
      goto LABEL_113;
    }

    v84 = *v123;
    v103 = 0;
    v104 = !v108;
    v100 = 0;
    v36 = 0.0;
    v107 = 0.0;
    v109 = 0.0;
    v37 = supplementaryEdge;
    while (1)
    {
      v38 = 0;
      do
      {
        if (*v123 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v87 = v38;
        [*(*(&v122 + 1) + 8 * v38) doubleValue];
        v40 = v39;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v88 = v85;
        v95 = [v88 countByEnumeratingWithState:&v118 objects:v141 count:16];
        if (v95)
        {
          v41 = v83 > 0.0;
          v94 = *v119;
          v42 = v82;
          if (v40 <= 0.0)
          {
            v42 = 0;
          }

          if (v40 > v83)
          {
            v41 = 0;
          }

          v91 = v41;
          v92 = v42;
          do
          {
            v43 = 0;
            do
            {
              if (*v119 != v94)
              {
                objc_enumerationMutation(v88);
              }

              v96 = v43;
              [*(*(&v118 + 1) + 8 * v43) doubleValue];
              v45 = v44;
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              v46 = v93;
              v47 = [v46 countByEnumeratingWithState:&v114 objects:v140 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = v90 > 0.0;
                v50 = *v115;
                if (v45 > v90)
                {
                  v49 = 0;
                }

                v51 = v91 || v49;
                if (v37)
                {
                  v52 = v45;
                }

                else
                {
                  v52 = v40;
                }

                v99 = v52;
                do
                {
                  v53 = 0;
                  do
                  {
                    if (*v115 != v50)
                    {
                      objc_enumerationMutation(v46);
                    }

                    [*(*(&v114 + 1) + 8 * v53) doubleValue];
                    if (v54 != 0.0 || !v92 && (!v89 || v45 <= 0.0))
                    {
                      v56 = v54;
                      v57 = v40 + v54;
                      if (v37)
                      {
                        v58 = v40;
                      }

                      else
                      {
                        v58 = v57;
                      }

                      if (v37)
                      {
                        v59 = v45 + v56;
                      }

                      else
                      {
                        v59 = v45;
                      }

                      allowTotalWidthGreaterThanParent = [v111 allowTotalWidthGreaterThanParent];
                      if (!allowTotalWidthGreaterThanParent && v58 != 0.0 && v59 != 0.0)
                      {
                        if (os_variant_has_internal_diagnostics())
                        {
                          v74 = __UIFaultDebugAssertLog();
                          if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 138412290;
                            v139 = v111;
                            _os_log_fault_impl(&dword_188A29000, v74, OS_LOG_TYPE_FAULT, "Simultaneous nonzero leading and trailing widths not supported for allowTotalWidthGreaterThanParent. Configuration = %@", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v73 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_22) + 8);
                          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v139 = v111;
                            _os_log_impl(&dword_188A29000, v73, OS_LOG_TYPE_ERROR, "Simultaneous nonzero leading and trailing widths not supported for allowTotalWidthGreaterThanParent. Configuration = %@", buf, 0xCu);
                          }
                        }
                      }

                      v61 = width;
                      if ((allowTotalWidthGreaterThanParent & 1) == 0)
                      {
                        (v127)(v126, 0, v58, v59);
                      }

                      if (!v51 && (v56 <= v30 ? (v62 = v30 <= 0.0) : (v62 = 1), v62))
                      {
                        v63 = 0;
                        v64 = v98;
                      }

                      else
                      {
                        v63 = 1;
                        v64 = v106;
                      }

                      if (v61 >= 0.0 && v61 <= v105)
                      {
                        v65 = v37;
                        if (v61 >= v64)
                        {
                          v66 = v104;
                        }

                        else
                        {
                          v66 = 0;
                        }

                        if (v66)
                        {
                          v100 = 0;
                          v103 = 0;
                          v36 = v56;
                          v107 = v45;
                          v109 = v40;
                          goto LABEL_62;
                        }

                        if (v56 <= 0.0)
                        {
                          if (v40 <= 0.0)
                          {
                            if (v45 <= 0.0)
                            {
                              goto LABEL_62;
                            }

                            if (v63)
                            {
                              v107 = 0.0;
                              BYTE4(v100) = 1;
                              goto LABEL_62;
                            }

                            if ([v111 allowMixedSideBySideAndOverlay] && v107 > 0.0)
                            {
                              BYTE4(v100) = 0;
                              goto LABEL_62;
                            }
                          }

                          else
                          {
                            if (v63)
                            {
                              v109 = 0.0;
                              v103 = 1;
                              goto LABEL_62;
                            }

                            if ([v111 allowMixedSideBySideAndOverlay] && v109 > 0.0)
                            {
                              v103 = 0;
                              goto LABEL_62;
                            }
                          }

                          goto LABEL_79;
                        }

                        if (v56 <= v30)
                        {
                          BYTE4(v100) |= supplementaryEdge != 0;
                          v103 |= v65 == 0;
                          v36 = 0.0;
                          v71 = v109;
                          if (v65)
                          {
                            v72 = 0.0;
                          }

                          else
                          {
                            v72 = v107;
                          }

                          if (!v65)
                          {
                            v71 = 0.0;
                          }

                          v107 = v72;
                          v109 = v71;
                          LOBYTE(v100) = 1;
LABEL_62:
                          stateRequest = [(_UIPanelInternalState *)selfCopy stateRequest];
                          [stateRequest supplementaryWidth];

                          v68 = 0.0;
                          if ((allowTotalWidthGreaterThanParent & v66) == 1 && v56 > 0.0 && v99 > 0.0)
                          {
                            [v97 _currentScreenScale];
                            if (v65)
                            {
                              [v111 trailingBorderWidthForScale:?];
                            }

                            else
                            {
                              [v111 leadingBorderWidthForScale:?];
                            }

                            v68 = width - v56 - v69;
                          }

                          v112[0] = MEMORY[0x1E69E9820];
                          v112[1] = 3221225472;
                          v112[2] = __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_210;
                          v112[3] = &__block_descriptor_89_e27_v16__0__UISlidingBarState_8l;
                          *&v112[4] = v40;
                          *&v112[5] = v45;
                          *&v112[6] = v56;
                          *&v112[7] = v68;
                          v113 = v66;
                          *&v112[8] = v109;
                          *&v112[9] = v107;
                          *&v112[10] = v36;
                          v102[2](v102, v112);
LABEL_79:
                          v37 = v65;
                          goto LABEL_80;
                        }

                        if (![v111 allowMixedSideBySideAndOverlay])
                        {
                          goto LABEL_79;
                        }

                        v37 = v65;
                        if (os_variant_has_internal_diagnostics())
                        {
                          v75 = __UIFaultDebugAssertLog();
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 138412290;
                            v139 = v111;
                            _os_log_fault_impl(&dword_188A29000, v75, OS_LOG_TYPE_FAULT, "allowMixedSideBySideAndOverlay not supported for nonzero supplementary width. Configuration = %@", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v70 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED491CC8) + 8);
                          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v139 = v111;
                            _os_log_impl(&dword_188A29000, v70, OS_LOG_TYPE_ERROR, "allowMixedSideBySideAndOverlay not supported for nonzero supplementary width. Configuration = %@", buf, 0xCu);
                          }
                        }
                      }
                    }

LABEL_80:
                    ++v53;
                  }

                  while (v48 != v53);
                  v76 = [v46 countByEnumeratingWithState:&v114 objects:v140 count:16];
                  v48 = v76;
                }

                while (v76);
              }

              v43 = v96 + 1;
            }

            while (v96 + 1 != v95);
            v95 = [v88 countByEnumeratingWithState:&v118 objects:v141 count:16];
          }

          while (v95);
        }

        v38 = v87 + 1;
      }

      while (v87 + 1 != v86);
      v86 = [obj countByEnumeratingWithState:&v122 objects:v142 count:16];
      if (!v86)
      {
LABEL_113:

        v10 = v79;
        _updateTreatsHiddenAsOverlapsInStates(v79, v103 & 1, BYTE4(v100) & 1, v100 & 1);

        viewCopy = v80;
        v11 = v102;
        goto LABEL_114;
      }
    }
  }

  v11[2](v11, &__block_literal_global_150);
LABEL_114:
  v77 = v10;

  return v10;
}

- (id)_stateForInteractiveRequest:(id)request withAffectedSides:(int64_t)sides inPossibleStates:(id)states
{
  v114 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  statesCopy = states;
  v10 = [requestCopy _closestEqualOrLargerState:statesCopy];
  v11 = [v10 copy];

  _leadingEntirelyOverlapsMain = [v11 _leadingEntirelyOverlapsMain];
  _trailingEntirelyOverlapsMain = [v11 _trailingEntirelyOverlapsMain];
  _supplementaryEntirelyOverlapsMain = [v11 _supplementaryEntirelyOverlapsMain];
  configuration = [(_UIPanelInternalState *)self configuration];
  [v11 setConfiguration:configuration];

  [requestCopy leadingWidth];
  v15 = v14;
  [v11 leadingWidth];
  v17 = v15 - v16;
  [v11 _leadingOverlayWidth];
  [v11 _setLeadingOverlayWidth:v18 + v17];
  [requestCopy trailingWidth];
  v20 = v19;
  [v11 trailingWidth];
  v22 = v20 - v21;
  [v11 _trailingOverlayWidth];
  [v11 _setTrailingOverlayWidth:v23 + v22];
  [requestCopy supplementaryWidth];
  v25 = v24;
  [v11 supplementaryWidth];
  v27 = v25 - v26;
  [v11 _supplementaryOverlayWidth];
  [v11 _setSupplementaryOverlayWidth:v28 + v27];
  [requestCopy leadingWidth];
  [v11 setLeadingWidth:?];
  [requestCopy leadingOffscreenWidth];
  [v11 setLeadingOffscreenWidth:?];
  [requestCopy trailingWidth];
  [v11 setTrailingWidth:?];
  [requestCopy trailingOffscreenWidth];
  [v11 setTrailingOffscreenWidth:?];
  [requestCopy supplementaryWidth];
  [v11 setSupplementaryWidth:?];
  [requestCopy supplementaryOffscreenWidth];
  [v11 setSupplementaryOffscreenWidth:?];
  [requestCopy rubberBandInset];
  [v11 set_rubberBandInset:?];
  configuration2 = [(_UIPanelInternalState *)self configuration];
  v30 = sides & 1;
  if ([configuration2 leadingMayBeHidden])
  {
    [requestCopy leadingWidth];
    if (v31 <= 0.0 && ([requestCopy leadingOffscreenWidth], v32 <= 0.0))
    {
      v33 = sides & 1;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

  sidesCopy = sides;
  v103 = statesCopy;
  if ([configuration2 supplementaryEdge] || !objc_msgSend(configuration2, "supplementaryMayBeHidden"))
  {
    v30 = 0;
    goto LABEL_12;
  }

  [requestCopy supplementaryWidth];
  if (v34 <= 0.0)
  {
    [requestCopy supplementaryOffscreenWidth];
    if (v35 <= 0.0)
    {
LABEL_12:
      v36 = 0.0;
      if ((v33 | v30) != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_13;
    }
  }

  LOBYTE(v30) = 1;
LABEL_13:
  LODWORD(v98) = _leadingEntirelyOverlapsMain;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v37 = statesCopy;
  v38 = [v37 countByEnumeratingWithState:&v108 objects:v113 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v109;
    v41 = 0.0;
    v42 = 0.0;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        v44 = v41;
        if (*v109 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v45 = *(*(&v108 + 1) + 8 * i);
        [v45 leadingWidth];
        v47 = fmin(v42, v46);
        if (v42 == 0.0)
        {
          v47 = v46;
        }

        if (v46 > 0.0)
        {
          v42 = v47;
        }

        [v45 supplementaryWidth];
        if (v48 > 0.0)
        {
          v41 = v48;
          if (v44 != 0.0)
          {
            v41 = fmin(v44, v48);
          }
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v108 objects:v113 count:16];
    }

    while (v39);
  }

  else
  {
    v41 = 0.0;
    v42 = 0.0;
  }

  [requestCopy leadingWidth];
  v50 = v49;
  [requestCopy supplementaryWidth];
  v52 = v51;
  if (v33)
  {
    [requestCopy leadingOffscreenWidth];
    sides = sidesCopy;
    v53 = v98;
    if (v54 <= 0.0)
    {
      v55 = 0;
      if (v42 > 0.0 && v50 < v42)
      {
        v55 = sidesCopy | (v50 > 0.0);
      }
    }

    else
    {
      v55 = 1;
    }
  }

  else
  {
    v55 = 0;
    sides = sidesCopy;
    v53 = v98;
  }

  v56 = 0;
  v57 = v30 ^ 1;
  if (v41 <= 0.0)
  {
    v57 = 1;
  }

  if ((v57 & 1) == 0 && v52 < v41)
  {
    v56 = v52 > 0.0 || (sides & 5) == 5;
  }

  v36 = 0.0;
  if (v55)
  {
    [v11 setLeadingWidth:v42];
    [v11 supplementaryWidth];
    v60 = v59 <= 0.0 || v42 <= 0.0;
    v36 = v60 ? 0.0 : (v42 - v50) * 0.5;
    [v11 setLeadingDragOffset:{v42 - v50 - v36, v98}];
    if (v53)
    {
      [v11 _setLeadingOverlayWidth:v42];
    }
  }

  if (v56)
  {
    [v11 setSupplementaryWidth:v41];
    [v11 setSupplementaryDragOffset:v41 - v52];
    if (_supplementaryEntirelyOverlapsMain)
    {
      [v11 _setSupplementaryOverlayWidth:v41];
    }
  }

  else
  {
    [requestCopy supplementaryOffscreenWidth];
    if (v61 > 0.0)
    {
      [requestCopy supplementaryWidth];
      if (v62 == 0.0)
      {
        [v11 supplementaryOffscreenWidth];
        [v11 setSupplementaryDragOffset:?];
      }
    }
  }

  statesCopy = v103;
  if (v36 != 0.0)
  {
    [v11 supplementaryDragOffset];
    [v11 setSupplementaryDragOffset:v36 + v63];
  }

LABEL_60:
  v64 = (sides >> 1) & 1;
  if ([configuration2 trailingMayBeHidden])
  {
    [requestCopy trailingWidth];
    if (v65 <= 0.0 && ([requestCopy trailingOffscreenWidth], v66 <= 0.0))
    {
      v67 = (sides >> 1) & 1;
    }

    else
    {
      LODWORD(v67) = 1;
    }
  }

  else
  {
    LODWORD(v67) = 0;
  }

  if ([configuration2 supplementaryEdge] != 1 || !objc_msgSend(configuration2, "supplementaryMayBeHidden"))
  {
    LODWORD(v69) = 0;
    goto LABEL_71;
  }

  [requestCopy supplementaryWidth];
  if (v68 <= 0.0)
  {
    [requestCopy supplementaryOffscreenWidth];
    v69 = (sides >> 1) & 1;
    if (v70 <= 0.0)
    {
LABEL_71:
      if ((v67 | v69) != 1)
      {
        goto LABEL_118;
      }

      goto LABEL_72;
    }
  }

  LOBYTE(v69) = 1;
LABEL_72:
  v99 = v64;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v71 = statesCopy;
  v72 = [v71 countByEnumeratingWithState:&v104 objects:v112 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v105;
    v75 = 0.0;
    v76 = 0.0;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        v78 = v75;
        if (*v105 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v79 = *(*(&v104 + 1) + 8 * j);
        [v79 trailingWidth];
        v81 = fmin(v76, v80);
        if (v76 == 0.0)
        {
          v81 = v80;
        }

        if (v80 > 0.0)
        {
          v76 = v81;
        }

        [v79 supplementaryWidth];
        if (v82 > 0.0)
        {
          v75 = v82;
          if (v78 != 0.0)
          {
            v75 = fmin(v78, v82);
          }
        }
      }

      v73 = [v71 countByEnumeratingWithState:&v104 objects:v112 count:16];
    }

    while (v73);
  }

  else
  {
    v75 = 0.0;
    v76 = 0.0;
  }

  [requestCopy trailingWidth];
  v84 = v83;
  [requestCopy supplementaryWidth];
  v86 = v85;
  if (v67)
  {
    [requestCopy trailingOffscreenWidth];
    if (v87 <= 0.0)
    {
      v88 = 0;
      if (v76 > 0.0 && v84 < v76)
      {
        if (v84 > 0.0)
        {
          v88 = 1;
        }

        else
        {
          v88 = v99;
        }
      }
    }

    else
    {
      v88 = 1;
    }
  }

  else
  {
    v88 = 0;
  }

  v89 = 0;
  v90 = v69 ^ 1;
  if (v75 <= 0.0)
  {
    v90 = 1;
  }

  if ((v90 & 1) == 0 && v86 < v75)
  {
    v89 = v86 > 0.0 || (sidesCopy & 6) == 6;
  }

  if (v88)
  {
    [v11 setTrailingWidth:v76];
    [v11 supplementaryWidth];
    if (v92 > 0.0 && v76 > 0.0)
    {
      v36 = (v76 - v84) * 0.5;
    }

    [v11 setTrailingDragOffset:{v76 - v84 - v36, v99}];
    if (_trailingEntirelyOverlapsMain)
    {
      [v11 _setTrailingOverlayWidth:v76];
    }
  }

  if (v89)
  {
    [v11 setSupplementaryWidth:v75];
    [v11 setSupplementaryDragOffset:v75 - v86];
    if (_supplementaryEntirelyOverlapsMain)
    {
      [v11 _setSupplementaryOverlayWidth:v75];
    }
  }

  else
  {
    [requestCopy supplementaryOffscreenWidth];
    if (v94 > 0.0)
    {
      [requestCopy supplementaryWidth];
      if (v95 == 0.0)
      {
        [v11 supplementaryOffscreenWidth];
        [v11 setSupplementaryDragOffset:?];
      }
    }
  }

  statesCopy = v103;
  if (v36 != 0.0)
  {
    [v11 supplementaryDragOffset];
    [v11 setSupplementaryDragOffset:v36 + v96];
  }

LABEL_118:

  return v11;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = _UIPanelInternalState;
  v3 = [(_UIPanelInternalState *)&v10 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v4 appendFormat:@" delegate=%p", WeakRetained];

    if (self->_leadingViewController)
    {
      [v4 appendFormat:@" leading=%p", self->_leadingViewController];
    }

    if (self->_trailingViewController)
    {
      [v4 appendFormat:@" trailing=%p", self->_trailingViewController];
    }

    if (self->_supplementaryViewController)
    {
      [v4 appendFormat:@" supplementary=%p", self->_supplementaryViewController];
    }

    if (self->_mainViewController)
    {
      [v4 appendFormat:@" main=%p", self->_mainViewController];
    }

    if (self->_collapsedViewController)
    {
      [v4 appendFormat:@" collapsed=%p", self->_collapsedViewController];
    }

    if (self->_preservedDetailController)
    {
      [v4 appendFormat:@" preserved=%p", self->_preservedDetailController];
    }

    if (self->_animationState)
    {
      [v4 appendFormat:@" animState=%p", self->_animationState];
    }

    [v4 appendFormat:@" stateReq=%p config=%p", self->_stateRequest, self->_configuration];
    collapsedState = self->_collapsedState;
    if (collapsedState == 1)
    {
      v9 = @" collapsing";
    }

    else
    {
      v8 = @" expanding";
      if (!collapsedState)
      {
        v8 = @" expanded";
      }

      if (collapsedState == 2)
      {
        v9 = @" collapsed";
      }

      else
      {
        v9 = v8;
      }
    }

    [v4 appendString:v9];
  }

  return v4;
}

- (UIPanelControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end