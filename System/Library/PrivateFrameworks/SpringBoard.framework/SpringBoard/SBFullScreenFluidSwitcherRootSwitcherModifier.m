@interface SBFullScreenFluidSwitcherRootSwitcherModifier
- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)a3;
- (Class)_defaultMultitaskingModifierClass;
- (id)_entityRemovalModifierForMainTransitionEvent:(id)a3;
- (id)_newMultitaskingModifier;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3;
- (id)gestureModifierForGestureEvent:(id)a3;
- (id)insertionModifierForInsertionEvent:(id)a3;
- (id)lowEndHardwareModifier;
- (id)multitaskingModifierForEvent:(id)a3;
- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)a3;
- (id)removalModifierForRemovalEvent:(id)a3;
- (id)shelfModifierForTransitionEvent:(id)a3;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
- (id)userScrollingModifierForScrollEvent:(id)a3;
- (int64_t)_effectiveEnvironmentMode;
- (void)_effectiveEnvironmentMode;
@end

@implementation SBFullScreenFluidSwitcherRootSwitcherModifier

- (Class)_defaultMultitaskingModifierClass
{
  v3 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self isReduceMotionEnabled];
  [v3 effectiveSwitcherStyle];
  v4 = objc_opt_class();

  return v4;
}

- (id)_newMultitaskingModifier
{
  v2 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(v2);
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 fromAppLayout];
  v5 = [v3 toAppLayout];
  v6 = [v3 fromEnvironmentMode];
  v7 = [v3 toEnvironmentMode];
  v8 = BSEqualObjects();
  v9 = 0;
  v11 = v6 != 3 && v7 != 3;
  if ((v8 & 1) == 0 && !v11)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v3 fromDisplayItemsPendingTermination];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __95__SBFullScreenFluidSwitcherRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v16[3] = &unk_2783A8C90;
    v13 = v4;
    v17 = v13;
    v14 = [v12 bs_containsObjectPassingTest:v16];

    if (v13 && (v14 & 1) == 0)
    {
      [v9 addObject:v13];
    }

    if (v5)
    {
      [v9 addObject:v5];
    }
  }

  return v9;
}

- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)a3
{
  v3 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  v4 = [v3 effectiveSwitcherStyle] == 1;

  return v4;
}

- (id)gestureModifierForGestureEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureID];
  v6 = [v4 gestureType];
  v7 = 0;
  if (v6 <= 3)
  {
    if (v6 == 1)
    {
      v14 = [SBHomeGestureRootSwitcherModifier alloc];
      v15 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _effectiveEnvironmentMode];
      v16 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v7 = [(SBHomeGestureRootSwitcherModifier *)v14 initWithStartingEnvironmentMode:v15 multitaskingModifier:v16];

      [(SBHomeGestureRootSwitcherModifier *)v7 setResignsTransitionIntoAppSwitcher:1];
      goto LABEL_11;
    }

    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v8 = SBGridSwipeUpGestureSwitcherModifier;
    goto LABEL_10;
  }

  if (v6 == 4)
  {
    v8 = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
LABEL_10:
    v7 = [[v8 alloc] initWithGestureID:v5];
    goto LABEL_11;
  }

  if (v6 == 7)
  {
    v9 = [v4 selectedAppLayout];
    v10 = [v9 configuration];

    v11 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration(v10);
    v12 = [SBSceneResizeGestureRootSwitcherModifier alloc];
    v13 = [v4 selectedAppLayout];
    v7 = [(SBSceneResizeGestureRootSwitcherModifier *)v12 initWithAppLayout:v13 spaceConfiguration:v11];
  }

LABEL_11:

  return v7;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  v7 = [v4 toEnvironmentMode];
  v8 = [v4 fromEnvironmentMode];
  v9 = [v4 toAppLayout];
  v10 = [v4 fromAppLayout];
  v184 = [v4 transitionID];
  v11 = [v4 coverSheetFlyInContext];
  v12 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  v13 = [v12 effectiveSwitcherStyle];

  v14 = [v4 toAppExposeBundleID];

  if (v14 && v7 == 2)
  {
    goto LABEL_3;
  }

  if ([v4 isBannerUnfurlTransition])
  {
    v19 = [v4 bannerUnfurlSourceContext];

    if (v19)
    {
      if (v8 != 2)
      {
        v16 = v11;
        v17 = v9;
        if (v8 != 3)
        {
          v15 = 0;
          goto LABEL_6;
        }

        v20 = [SBBannerUnfurlToFullScreenSwitcherModifier alloc];
        v21 = [v4 bannerUnfurlSourceContext];
        v22 = v20;
        v18 = v10;
        v23 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v22 initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9 bannerUnfurlSourceContext:v21];
        goto LABEL_12;
      }

      v35 = [SBBannerUnfurlToFullScreenSwitcherModifier alloc];
      v36 = [v4 bannerUnfurlSourceContext];
      v17 = v9;
      v15 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v35 initWithTransitionID:v184 fromAppLayout:0 toAppLayout:v9 bannerUnfurlSourceContext:v36];

LABEL_36:
      v16 = v11;
      goto LABEL_6;
    }
  }

  if ([v4 isBreadcrumbTransition] && v8 == 3 && v7 == 1)
  {
    v18 = v10;
    v24 = [[SBFullScreenToHomeSlideOverSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v10 direction:1];
    v15 = v24;
    v17 = v9;
    if (v6)
    {
      [(SBFullScreenToHomeSlideOverSwitcherModifier *)v24 setShouldForceDefaultAnchorPointForTransition:1];
    }

    goto LABEL_18;
  }

  v18 = v10;
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      if (v8 == 2)
      {
        v16 = v11;
        v17 = v9;
        if (!v10 || !v9 || [(SBGridSwitcherModifier *)v10 isEqual:v9])
        {
          v40 = SBGridSwipeUpToSwitcherSwitcherModifier;
LABEL_53:
          v41 = [[v40 alloc] initWithTransitionID:v184];
LABEL_54:
          v15 = v41;
          goto LABEL_88;
        }

        goto LABEL_107;
      }

      v16 = v11;
      if (v8 != 1)
      {
        if (v8 == 3)
        {
          if (SBPeekConfigurationIsValid([v4 toPeekConfiguration]))
          {
            v42 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
            v43 = [(SBHomeToSwitcherSwitcherModifier *)[SBHomeToGridSwitcherModifier alloc] initWithTransitionID:v184 direction:1 multitaskingModifier:v42];
          }

          else
          {
            if (v13 != 1)
            {
              goto LABEL_86;
            }

            v42 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
            v43 = [[SBDeckToFullScreenSwitcherModifier alloc] initWithTransitionID:v184 direction:1 fullScreenAppLayout:v10 deckModifier:v42];
          }

          v15 = v43;

          v18 = v10;
          goto LABEL_87;
        }

LABEL_86:
        v15 = 0;
        goto LABEL_87;
      }

      if (v13 != 1)
      {
        goto LABEL_86;
      }

      v30 = [SBHomeToDeckSwitcherModifier alloc];
      v31 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v32 = v30;
      v18 = v10;
      v33 = v184;
      v34 = 1;
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_42;
      }

      if (v8 != 2)
      {
        v16 = v11;
        v17 = v9;
        if (v8 == 3 && ([v4 isEnteringSlideOverPeekEvent] & 1) == 0)
        {
          if ([v4 isEnteringAnyPeekEvent])
          {
            v44 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
            if ([v44 isFlexibleWindowingEnabled])
            {
              v45 = [v4 toAppLayout];
              v46 = [v4 fromAppLayout];
              v47 = [v45 containsAllItemsFromAppLayout:v46];

              if (v47)
              {
                v15 = 0;
                goto LABEL_5;
              }

              v78 = [v4 fromAppLayout];
              v185[0] = MEMORY[0x277D85DD0];
              v185[1] = 3221225472;
              v185[2] = __90__SBFullScreenFluidSwitcherRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke;
              v185[3] = &unk_2783A8C90;
              v79 = v4;
              v186 = v79;
              v80 = [v78 appLayoutWithItemsPassingTest:v185];

              if ([v79 isIconZoomDisabled])
              {
                v81 = *MEMORY[0x277CBF398];
                v82 = *(MEMORY[0x277CBF398] + 8);
                v83 = *(MEMORY[0x277CBF398] + 16);
                v84 = *(MEMORY[0x277CBF398] + 24);
              }

              else
              {
                [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v80];
              }

              v17 = v9;
              v18 = v10;
              if (CGRectIsNull(*&v81) || ([v79 isMoveDisplaysTransition] & 1) != 0)
              {
                v15 = 0;
              }

              else
              {
                v15 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v80 direction:1];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldForceDefaultAnchorPointForTransition:1];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldDockOrderFrontDuringTransition:1];
                v89 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                v90 = [v89 isFlexibleWindowingEnabled];

                if (v90)
                {
                  v91 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
                  v92 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v91 initWithAppLayout:v10 gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
                  [(SBChainableModifier *)v92 addChildModifier:v15];

                  v15 = v92;
                }

                v18 = v10;
              }

              goto LABEL_88;
            }
          }

          else
          {
            if ([v4 prefersCrossfadeTransition])
            {
              v15 = [[SBCrossfadeDosidoSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9];
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setFullScreenTransition:v6 ^ 1];
              goto LABEL_88;
            }

            if ([v4 isExitingSplitViewPeekToHomeScreenEvent])
            {
              v74 = [SBPeekToOffscreenSwitcherModifier alloc];
              v21 = [v4 fromAppLayout];
              v75 = [v4 fromPeekConfiguration];
              v76 = [v4 fromSpaceConfiguration];
              v77 = v74;
              v18 = v10;
              v23 = [(SBPeekToOffscreenSwitcherModifier *)v77 initWithTransitionID:v184 peekingAppLayout:v21 peekConfiguration:v75 spaceConfiguration:v76];
              goto LABEL_12;
            }

            if (v10)
            {
              v15 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _entityRemovalModifierForMainTransitionEvent:v4];
              if (v15)
              {
                goto LABEL_88;
              }

              if ([v4 isIconZoomDisabled])
              {
                v85 = *MEMORY[0x277CBF398];
                v86 = *(MEMORY[0x277CBF398] + 8);
                v87 = *(MEMORY[0x277CBF398] + 16);
                v88 = *(MEMORY[0x277CBF398] + 24);
              }

              else
              {
                [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v10];
                v85 = v94;
                v86 = v95;
                v87 = v96;
                v88 = v97;
              }

              if ([v4 isMorphToPIPTransition])
              {
                v98 = [SBFullScreenToHomePIPSwitcherModifier alloc];
                v99 = [v4 morphingPIPLayoutRole];
                v100 = v98;
                v18 = v10;
                v15 = [(SBFullScreenToHomePIPSwitcherModifier *)v100 initWithTransitionID:v184 appLayout:v10 layoutRole:v99];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldForceDefaultAnchorPointForTransition:v6];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldClippingTakeShadowIntoAccount:v6];
              }

              else
              {
                v101 = [v4 fromAppLayout];
                v102 = [(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:v4 activeLayout:v101];

                if (v102)
                {
                  v103 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v10 direction:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setShouldForceDefaultAnchorPointForTransition:v6];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setShouldDockOrderFrontDuringTransition:v6];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setGenieDisabled:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setSupportsGlassHighlight:0];
                  v104 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self appLayouts];
                  v105 = [v104 indexOfObject:v10];

                  v106 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:v10 key:@"position"];
                  [v106 CGPointValue];
                  v108 = v107;
                  v110 = v109;

                  v18 = v10;
                  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self frameForIndex:v105];
                  v112 = v111;
                  v114 = v113;
                  v116 = v115;
                  v118 = v117;
                  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self scaleForIndex:v105];
                  v15 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:v184 zoomModifier:v103 appLayout:v10 direction:1 expandedCardFrame:v112 cardScale:v114 cardVelocity:v116, v118, v119, v108, v110];
                }

                else
                {
                  if ([v4 isMoveDisplaysTransition])
                  {
                    v15 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
                    goto LABEL_4;
                  }

                  v188.origin.x = v85;
                  v188.origin.y = v86;
                  v188.size.width = v87;
                  v188.size.height = v88;
                  if (CGRectIsNull(v188) || ([v4 isMoveDisplaysTransition] & 1) != 0)
                  {
                    v121 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
                    [v121 switcherCenterYOffsetPercentOfScreenHeight];
                    v123 = v122;

                    v124 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v10 offsetYPercentOfScreenHeight:v123];
                    v15 = v124;
                    if (v6)
                    {
                      [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)v124 setShouldForceDefaultAnchorPointForTransition:1];
                    }

                    goto LABEL_4;
                  }

                  v15 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v10 direction:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldForceDefaultAnchorPointForTransition:v6];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldDockOrderFrontDuringTransition:v6];
                  v130 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                  v131 = [v130 isFlexibleWindowingEnabled];

                  if (!v131)
                  {
LABEL_4:
                    v16 = v11;
LABEL_5:
                    v17 = v9;
LABEL_6:
                    v18 = v10;
                    goto LABEL_88;
                  }

                  v132 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
                  v133 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v132 initWithAppLayout:v10 gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
                  [(SBChainableModifier *)v133 addChildModifier:v15];

                  v15 = v133;
                  v18 = v10;
                }
              }

              goto LABEL_43;
            }
          }
        }

        goto LABEL_107;
      }

      v16 = v11;
      if (SBPeekConfigurationIsValid([v4 toPeekConfiguration]))
      {
        v37 = SBHomeToGridSwitcherModifier;
      }

      else
      {
        if (v13 != 1)
        {
          goto LABEL_86;
        }

        v37 = SBHomeToDeckSwitcherModifier;
      }

      v50 = [v37 alloc];
      v31 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v32 = v50;
      v18 = v10;
      v33 = v184;
      v34 = 0;
    }

    v15 = [(SBHomeToSwitcherSwitcherModifier *)v32 initWithTransitionID:v33 direction:v34 multitaskingModifier:v31];

    goto LABEL_87;
  }

  if (v8 == 1)
  {
LABEL_42:
    v15 = 0;
LABEL_43:
    v16 = v11;
LABEL_87:
    v17 = v9;
    goto LABEL_88;
  }

  v16 = v11;
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      if (v13 != 1)
      {
        v51 = [SBGridToFullScreenSwitcherModifier alloc];
        v21 = objc_alloc_init(SBGridSwitcherModifier);
        v52 = v51;
        v18 = v10;
        v17 = v9;
        v23 = [(SBGridToFullScreenSwitcherModifier *)v52 initWithTransitionID:v184 direction:0 fullScreenAppLayout:v9 gridModifier:v21];
        goto LABEL_12;
      }

      v17 = v9;
      if (![v4 isContinuityTransition] || (-[SBFullScreenFluidSwitcherRootSwitcherModifier isAppLayoutVisibleInSwitcherBounds:](self, "isAppLayoutVisibleInSwitcherBounds:", v9) & 1) != 0)
      {
        v38 = [SBDeckToFullScreenSwitcherModifier alloc];
        v39 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
        v15 = [(SBDeckToFullScreenSwitcherModifier *)v38 initWithTransitionID:v184 direction:0 fullScreenAppLayout:v9 deckModifier:v39];

        goto LABEL_6;
      }

      v58 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:v9];
      v59 = [SBDeckContinuityToFullScreenSwitcherModifier alloc];
      v60 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v15 = [(SBDeckContinuityToFullScreenSwitcherModifier *)v59 initWithTransitionID:v184 appLayout:v9 deckModifier:v60 fullscreenModifier:v58];

LABEL_93:
      goto LABEL_6;
    }

    goto LABEL_86;
  }

  v17 = v9;
  if (v10)
  {
    if (v9)
    {
      if ([(SBGridSwitcherModifier *)v10 isEqual:v9])
      {
        v25 = [v4 fromInterfaceOrientation];
        v26 = v25 == [v4 toInterfaceOrientation];
        v18 = v10;
        if (!v26)
        {
          v54 = [SBRotationSwitcherModifier alloc];
          v21 = [v4 toAppLayout];
          v55 = [v4 fromInterfaceOrientation];
          v56 = [v4 toInterfaceOrientation];
          v57 = v54;
          v18 = v10;
          v23 = [(SBRotationSwitcherModifier *)v57 initWithTransitionID:v184 appLayout:v21 fromInterfaceOrientation:v55 toInterfaceOrientation:v56];
LABEL_12:
          v15 = v23;

          goto LABEL_88;
        }
      }
    }
  }

  if ([v4 isMainPulseEvent])
  {
    v27 = [v4 activatingAppLayout];
    v21 = v27;
    if (v27 == v9)
    {
      v23 = [[SBPulseTransitionSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v27];
    }

    else
    {
      v28 = [(SBGridSwitcherModifier *)v27 itemForLayoutRole:1];
      v29 = [(SBGridSwitcherModifier *)v9 layoutRoleForItem:v28];

      v18 = v10;
      v23 = [[SBSplitDisplayItemPulseTransitionSwitcherModifier alloc] initWithTransitionID:v184 appLayout:v9 layoutRole:v29 chamoisWindowingUIEnabled:v6];
    }

    goto LABEL_12;
  }

  if (!SBPeekConfigurationIsValid([v4 fromPeekConfiguration]) && SBPeekConfigurationIsValid(objc_msgSend(v4, "toPeekConfiguration")) && v18 == v9)
  {
    goto LABEL_107;
  }

  if (SBPeekConfigurationIsValid([v4 fromPeekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v4, "toPeekConfiguration")) && v18 == v9)
  {
    v48 = [SBFullScreenToHomeSlideOverSwitcherModifier alloc];
    v49 = [v4 toAppLayout];
    v15 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)v48 initWithTransitionID:v184 appLayout:v49 direction:0];

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldBlurUnreadyScenes:1];
    if (v6)
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldForceDefaultAnchorPointForTransition:1];
    }

    goto LABEL_6;
  }

  if ([v4 isSlideOverToFullScreenEvent])
  {
    goto LABEL_107;
  }

  if (([(SBGridSwitcherModifier *)v18 isEqual:v9]& 1) == 0)
  {
    if (([v4 isGestureInitiated] & 1) == 0)
    {
      if ([v4 isMoveDisplaysTransition])
      {
        v61 = 1;
        v182 = [(SBGridSwitcherModifier *)v18 itemForLayoutRole:1];
        v62 = [(SBGridSwitcherModifier *)v18 itemForLayoutRole:2];
        v63 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:1];
        v64 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:2];
        v65 = 0;
        v180 = v64;
        v18 = v10;
        if (v62)
        {
          v66 = v182;
          if (!v64)
          {
            if ((BSEqualObjects() & 1) != 0 || (v61 = 2, BSEqualObjects()))
            {
              v65 = [[SBSplitRemovalSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v18 toAppLayout:v9 layoutRoleToRemove:v61 animationStyle:0];
            }

            else
            {
              v65 = 0;
            }
          }
        }

        else
        {
          v66 = v182;
          v62 = 0;
        }

        v93 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
        v15 = v93;
        if (v65)
        {
          [(SBChainableModifier *)v93 addChildModifier:v65];
        }

        goto LABEL_43;
      }

      if ([v4 isMorphFromPIPTransition])
      {
        v58 = [[SBDosidoSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v18 toAppLayout:v9 direction:0];
        [(SBFullScreenAppLayoutSwitcherModifier *)v58 setShouldSuppressScaleAnimation:1];
        v15 = -[SBPIPRestoreToFullScreenSwitcherModifier initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:]([SBPIPRestoreToFullScreenSwitcherModifier alloc], "initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:", v184, v58, v10, v9, [v4 morphingPIPLayoutRole]);
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldForceDefaultAnchorPointForTransition:v6];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setShouldClippingTakeShadowIntoAccount:v6];
        goto LABEL_93;
      }

      if (([v4 isEnteringSplitViewPeekEvent] & 1) == 0 && (objc_msgSend(v4, "isAnySplitViewToOrFromSlideOverEvent") & 1) == 0)
      {
        if ([v4 isCenterWindowToFullScreenEvent])
        {
          v18 = v10;
          v15 = [[SBCenterWindowToFullScreenSwitcherModifier alloc] initWithTransitionID:v184 fullScreenWithCenterAppLayout:v10];
          goto LABEL_43;
        }

        if ([v4 isCenterWindowToSlideOverEvent])
        {
          goto LABEL_3;
        }

        if ([v4 isCenterWindowToNewSplitViewEvent])
        {
          v18 = v10;
          v17 = v9;
          v120 = [[SBCenterWindowToNewSplitViewSwitcherModifier alloc] initWithTransitionID:v184 fromFullScreenAppLayout:v10 toSpaceAppLayout:v9];
LABEL_152:
          v15 = v120;
LABEL_18:
          v16 = v11;
          goto LABEL_88;
        }

        if ([v4 isCenterWindowToExistingSplitViewEvent])
        {
          v125 = SBCenterWindowToExistingSplitViewSwitcherModifier;
LABEL_151:
          v18 = v10;
          v17 = v9;
          v120 = [[v125 alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9];
          goto LABEL_152;
        }

        if ([v4 isCenterWindowRemovalEvent])
        {
          v126 = [v4 removalContextForAppLayout:v10];
          v127 = [v126 animationStyle];
          v128 = [v126 displayItem];
          v129 = [(SBGridSwitcherModifier *)v10 layoutRoleForItem:v128];

          if (v129)
          {
            if (v127 == 3)
            {
              v134 = SBWindowDeclineSwitcherModifier;
            }

            else
            {
              if (v127 != 2)
              {
                v15 = [[SBWindowDeleteSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 layoutRole:v129];
                v137 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                if (([v137 isChamoisOrFlexibleWindowing] & 1) != 0 || v129 != 4)
                {
                }

                else
                {
                  v138 = [(SBGridSwitcherModifier *)v10 centerConfiguration];

                  if (v138 == 2)
                  {
                    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setUsePageFullScreenCenterWindowDeletion:1];
                  }
                }

                goto LABEL_168;
              }

              v134 = SBWindowCommitSwitcherModifier;
            }

            v15 = [[v134 alloc] initWithTransitionID:v184 fromAppLayout:v10 layoutRole:v129];
          }

          else
          {
            v15 = 0;
          }

LABEL_168:

          goto LABEL_4;
        }

        if ([v4 isSplitViewToCenterWindowEvent])
        {
          v125 = SBSplitViewToCenterWindowSwitcherModifier;
          goto LABEL_151;
        }

        if ([v4 isSlideOverToCenterWindowEvent])
        {
          goto LABEL_3;
        }

        if ([v4 isFullScreenToCenterWindowEvent])
        {
          v135 = [SBCenterWindowToFullScreenSwitcherModifier alloc];
          v136 = [v4 toAppLayout];
          v15 = [(SBCenterWindowToFullScreenSwitcherModifier *)v135 initWithTransitionID:v184 fullScreenWithCenterAppLayout:v136];

          goto LABEL_4;
        }

        if ([v4 isPresentingPageCenterWindowEvent] && ((objc_msgSend(v4, "isNewSceneTransition") & 1) != 0 || objc_msgSend(v4, "isMorphFromInAppView")))
        {
          v139 = [SBCenterWindowPagePresentationSwitcherModifier alloc];
          v140 = [v4 isMorphFromInAppView];
          v141 = v139;
          v142 = v184;
          v17 = v9;
          v143 = v9;
LABEL_181:
          v15 = [(SBCenterWindowPagePresentationSwitcherModifier *)v141 initWithTransitionID:v142 toAppLayout:v143 isMorph:v140];
          goto LABEL_36;
        }

        if ([v4 isReplaceCenterWindowWithNewCenterWindowEvent])
        {
          if (([v4 isShelfTransition] & 1) == 0)
          {
            v141 = [SBCenterWindowPagePresentationSwitcherModifier alloc];
            v142 = v184;
            v17 = v9;
            v143 = v9;
            v140 = 0;
            goto LABEL_181;
          }

LABEL_3:
          v15 = 0;
          goto LABEL_4;
        }

        if (!v9)
        {
          goto LABEL_3;
        }

        v179 = [(SBGridSwitcherModifier *)v10 itemForLayoutRole:1];
        v183 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:1];
        v178 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:2];
        v181 = [(SBGridSwitcherModifier *)v10 itemForLayoutRole:2];
        if (v181)
        {
          v144 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:2];
          if (v144)
          {
          }

          else if (BSEqualObjects())
          {
            v145 = [SBSplitRemovalSwitcherModifier alloc];
            v146 = [v4 removalContextForAppLayout:v10];
            v147 = [(SBDosidoSwitcherModifier *)v146 animationStyle];
            v148 = v145;
            v149 = v184;
            v150 = v10;
            v151 = v9;
            v152 = 1;
LABEL_192:
            v15 = [(SBSplitRemovalSwitcherModifier *)v148 initWithTransitionID:v149 fromAppLayout:v150 toAppLayout:v151 layoutRoleToRemove:v152 animationStyle:v147];
            goto LABEL_193;
          }

          v153 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:2];
          if (v153)
          {

            goto LABEL_194;
          }

          if (BSEqualObjects())
          {
            v154 = [SBSplitRemovalSwitcherModifier alloc];
            v146 = [v4 removalContextForAppLayout:v10];
            v147 = [(SBDosidoSwitcherModifier *)v146 animationStyle];
            v148 = v154;
            v149 = v184;
            v150 = v10;
            v151 = v9;
            v152 = 2;
            goto LABEL_192;
          }
        }

LABEL_194:
        v155 = SBLayoutRoleSetForRole(4);
        if (([(SBGridSwitcherModifier *)v10 hasSameItemsInLayoutRoles:v155 asAppLayout:v9]& 1) == 0)
        {
          v156 = SBLayoutRoleSetForRole2(1, 2);
          if ([(SBGridSwitcherModifier *)v10 hasSameItemsInLayoutRoles:v156 asAppLayout:v9])
          {
            v157 = [v4 toAppExposeBundleID];
            if (!v157)
            {
              v171 = [v4 fromAppExposeBundleID];

              if (v171)
              {
                goto LABEL_221;
              }

              goto LABEL_200;
            }
          }
        }

LABEL_200:
        if ([v4 prefersCrossfadeTransition])
        {
LABEL_201:
          v15 = [[SBCrossfadeDosidoSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9];
          [(SBFullScreenToHomeIconZoomSwitcherModifier *)v15 setFullScreenTransition:v6 ^ 1];
          goto LABEL_222;
        }

        if (-[SBFullScreenFluidSwitcherRootSwitcherModifier isDevicePad](self, "isDevicePad") && [v4 isFullScreenToSplitViewEvent])
        {
          v158 = [(SBGridSwitcherModifier *)v9 itemForLayoutRole:2];
          v159 = [[SBFullScreenToSplitViewSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9];
          v15 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v158 wrappingModifier:v159];

LABEL_209:
          goto LABEL_222;
        }

        if ([v4 isSwappingFullScreenAppSidesEvent])
        {
          v158 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self leafAppLayoutForKeyboardFocusedScene];
          v160 = 1;
          v161 = [(SBGridSwitcherModifier *)v10 leafAppLayoutForRole:1];
          if (v161 != v158)
          {
            v160 = 2;
          }

          v15 = [[SBSwapFullScreenAppSidesSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9 layoutRoleToKeepOnTop:v160];
          goto LABEL_209;
        }

        if (([v4 isCenterWindowZoomingUpFromShelfEvent] & 1) == 0)
        {
          if (-[SBFullScreenFluidSwitcherRootSwitcherModifier isDevicePad](self, "isDevicePad") && ![v4 dosidoTransitionDirection])
          {
            if (BSEqualObjects())
            {
              v172 = (v183 != 0) & ~BSEqualObjects();
              if (v178)
              {
                v173 = v172;
              }

              else
              {
                v173 = 0;
              }
            }

            else
            {
              v173 = 0;
            }

            if (BSEqualObjects())
            {
              v174 = (v178 != 0) & ~BSEqualObjects();
            }

            else
            {
              v174 = 0;
            }

            if ((v173 | v174))
            {
              v175 = [SBSplitDisplayItemCrossblurSwitcherModifier alloc];
              if (v174)
              {
                v176 = 2;
              }

              else
              {
                v176 = 1;
              }

              v177 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)v175 initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9 layoutRole:v176];
            }

            else
            {
              v177 = -[SBCrossblurDosidoSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:direction:]([SBCrossblurDosidoSwitcherModifier alloc], "initWithTransitionID:fromAppLayout:toAppLayout:direction:", v184, v10, v9, [v4 isBreadcrumbTransition]);
            }

            v15 = v177;
            goto LABEL_222;
          }

          v162 = [v4 appLayoutsWithRemovalContexts];
          v163 = [v162 count];

          if (v163)
          {
            goto LABEL_201;
          }

          v164 = [v4 dosidoTransitionDirection];
          v165 = [v4 isBreadcrumbTransition];
          if (v164 == 2)
          {
            v166 = 1;
          }

          else
          {
            v166 = v165;
          }

          v167 = [[SBDosidoSwitcherModifier alloc] initWithTransitionID:v184 fromAppLayout:v10 toAppLayout:v9 direction:v166];
          [(SBDosidoSwitcherModifier *)v167 setShouldSuppressScaleAnimation:v164 != 0];
          v146 = v167;
          v168 = [v4 zoomFromHardwareButtonPreludeTokenWrapper];
          v15 = v146;
          if ([v168 isTokenAvailable])
          {
            v169 = [SBCaptureDropletZoomSwitcherModifier alloc];
            v170 = [v168 consumeToken];
            v15 = [(SBCaptureDropletZoomSwitcherModifier *)v169 initWithTransitionID:v184 zoomModifier:v146 appLayout:v9 launchPreludeAnimationToken:v170];
          }

LABEL_193:
LABEL_222:

          goto LABEL_4;
        }

LABEL_221:
        v15 = 0;
        goto LABEL_222;
      }
    }

LABEL_107:
    v15 = 0;
    goto LABEL_88;
  }

  if (([v4 toFloatingSwitcherVisible] & 1) == 0 && objc_msgSend(v4, "fromFloatingSwitcherVisible"))
  {
    v40 = SBAppUnderFloatingSwitcherTransitionSwitcherModifier;
    goto LABEL_53;
  }

  v15 = 0;
  if (CSFeatureEnabled() && v11)
  {
    v67 = [SBCoverSheetToAppSwitcherModifier alloc];
    [v11 progress];
    v69 = v68;
    [v11 velocity];
    v71 = v70;
    v72 = [v11 supportsBlur];
    v73 = v67;
    v18 = v10;
    v41 = [(SBCoverSheetToAppSwitcherModifier *)v73 initWithTransitionID:v184 appLayout:v9 progress:v72 velocity:v69 supportsBlur:v71];
    goto LABEL_54;
  }

LABEL_88:

  return v15;
}

uint64_t __90__SBFullScreenFluidSwitcherRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toAppLayout];
  v5 = [v4 containsItem:v3];

  return v5 ^ 1u;
}

- (id)floorModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 toEnvironmentMode];
    switch(v6)
    {
      case 1:
        v7 = objc_alloc_init(SBHomeScreenSwitcherModifier);
LABEL_9:
        v12 = v7;
        if (v7)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        v8 = [v5 toAppLayout];
        v9 = [v5 toFloatingSwitcherVisible];
        v10 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:v8];
        v11 = v10;
        if (v9)
        {
          v12 = [[SBAppUnderFloatingSwitcherSwitcherModifier alloc] initWithActiveAppLayout:v8];
          [(SBChainableModifier *)v12 addChildModifier:v11];
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          goto LABEL_11;
        }

        break;
      case 2:
        v7 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        goto LABEL_9;
    }
  }

  v12 = objc_alloc_init(SBHomeScreenSwitcherModifier);
LABEL_11:

  return v12;
}

- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)a3
{
  if ([(SBFullScreenFluidSwitcherRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v3 = objc_alloc_init(SBReduceMotionSwitcherModifier);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)shelfModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 toAppLayout];
  v6 = [v4 toWindowPickerRole];
  if (SBLayoutRoleIsValidForSplitView(v6) && [v4 toEnvironmentMode] == 3)
  {
    v7 = [v5 leafAppLayoutForRole:v6];
    v8 = [v7 allItems];
    v9 = [v8 firstObject];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      v11 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v10 layoutRole:v6 displayMode:1];
      v12 = [(SBSwitcherShelf *)v11 uniqueIdentifier];
      v13 = [(SBChainableModifier *)self childModifierByKey:v12];

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v15 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:v4 context:self];
        v16 = [SBShelfSwitcherModifier alloc];
        v17 = [v4 toFloatingAppLayout];
        v18 = [v4 fromAppLayout];
        v14 = [(SBShelfSwitcherModifier *)v16 initWithShelf:v11 contentOptions:v15 activeFullScreenAppLayout:v5 activeFloatingAppLayout:v17 presentationTargetFrame:v18 presentedFromAppLayout:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3
{
  v3 = a3;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:v5];

  return v6;
}

- (id)multitaskingModifierForEvent:(id)a3
{
  v4 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([v5 isMemberOfClass:v4] & 1) == 0)
  {
    v6 = objc_alloc_init(v4);

    v5 = v6;
  }

  return v5;
}

- (id)_entityRemovalModifierForMainTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 fromAppLayout];
  if (v5)
  {
    v6 = [v4 removalContextForAppLayout:v5];
    if (v6)
    {
      v7 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v8 = [v6 animationStyle];
      if (SBReduceMotion() || v8 == 1)
      {
        v14 = [SBEntityRemovalCrossblurSwitcherModifier alloc];
        v15 = [v4 transitionID];
        v16 = [v4 fromAppLayout];
        v13 = [(SBEntityRemovalCrossblurSwitcherModifier *)v14 initWithTransitionID:v15 appLayout:v16 multitaskingModifier:v7];
      }

      else
      {
        v9 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self entityRemovalSettings];
        v10 = v9;
        v11 = v8 == 2;
        v12 = v8 != 2;
        if (v11)
        {
          [v9 dosidoCommitIntentAnimationSettings];
        }

        else
        {
          [v9 dosidoDeclineIntentAnimationSettings];
        }
        v15 = ;

        v17 = [SBEntityRemovalSlideOffscreenSwitcherModifier alloc];
        v16 = [v4 transitionID];
        v18 = [v4 fromAppLayout];
        v13 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)v17 initWithTransitionID:v16 appLayout:v18 direction:v12 animationSettings:v15 multitaskingModifier:v7];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)insertionModifierForInsertionEvent:(id)a3
{
  v3 = a3;
  v4 = [SBInsertionSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:v5];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3
{
  v3 = a3;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 fadeOutSwipedItems:0];

  return v7;
}

- (id)removalModifierForRemovalEvent:(id)a3
{
  v3 = a3;
  v4 = [SBRemovalSwitcherModifier alloc];
  v5 = [v3 layoutRole];
  v6 = [v3 appLayout];
  v7 = [v3 reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:v5 inAppLayout:v6 reason:v7];

  return v8;
}

- (id)lowEndHardwareModifier
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sbf_animatedBlurRadiusGraphicsQuality];

  v4 = +[SBPlatformController sharedInstance];
  v5 = [v4 medusaCapabilities];

  v6 = 3;
  if (v3 == 100)
  {
    v6 = 0;
  }

  if (v5 == 1)
  {
    v7 = v6 | 4;
  }

  else
  {
    v7 = v6;
  }

  v8 = [[SBLowEndHardwareSwitcherModifier alloc] initWithSimplificationOptions:v7];

  return v8;
}

- (id)userScrollingModifierForScrollEvent:(id)a3
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (int64_t)_effectiveEnvironmentMode
{
  v4 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!v4)
  {
    [(SBFullScreenFluidSwitcherRootSwitcherModifier *)a2 _effectiveEnvironmentMode];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 3;
    }

    else
    {
      v5 = 2 * (v4 != 0);
    }
  }

  return v5;
}

- (void)_effectiveEnvironmentMode
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenFluidSwitcherRootSwitcherModifier.m" lineNumber:647 description:@"Can't determine the effective environment mode without a floor modifier"];
}

@end