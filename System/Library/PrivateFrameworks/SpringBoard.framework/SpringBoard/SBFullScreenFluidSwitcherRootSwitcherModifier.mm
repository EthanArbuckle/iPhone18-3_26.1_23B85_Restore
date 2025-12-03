@interface SBFullScreenFluidSwitcherRootSwitcherModifier
- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index;
- (Class)_defaultMultitaskingModifierClass;
- (id)_entityRemovalModifierForMainTransitionEvent:(id)event;
- (id)_newMultitaskingModifier;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event;
- (id)gestureModifierForGestureEvent:(id)event;
- (id)insertionModifierForInsertionEvent:(id)event;
- (id)lowEndHardwareModifier;
- (id)multitaskingModifierForEvent:(id)event;
- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)event;
- (id)removalModifierForRemovalEvent:(id)event;
- (id)shelfModifierForTransitionEvent:(id)event;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)event;
- (id)transitionModifierForMainTransitionEvent:(id)event;
- (id)userScrollingModifierForScrollEvent:(id)event;
- (int64_t)_effectiveEnvironmentMode;
- (void)_effectiveEnvironmentMode;
@end

@implementation SBFullScreenFluidSwitcherRootSwitcherModifier

- (Class)_defaultMultitaskingModifierClass
{
  switcherSettings = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self isReduceMotionEnabled];
  [switcherSettings effectiveSwitcherStyle];
  v4 = objc_opt_class();

  return v4;
}

- (id)_newMultitaskingModifier
{
  _defaultMultitaskingModifierClass = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];

  return objc_alloc_init(_defaultMultitaskingModifierClass);
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  eventCopy = event;
  fromAppLayout = [eventCopy fromAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  v8 = BSEqualObjects();
  v9 = 0;
  v11 = fromEnvironmentMode != 3 && toEnvironmentMode != 3;
  if ((v8 & 1) == 0 && !v11)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fromDisplayItemsPendingTermination = [eventCopy fromDisplayItemsPendingTermination];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __95__SBFullScreenFluidSwitcherRootSwitcherModifier_appLayoutsToEnsureExistForMainTransitionEvent___block_invoke;
    v16[3] = &unk_2783A8C90;
    v13 = fromAppLayout;
    v17 = v13;
    v14 = [fromDisplayItemsPendingTermination bs_containsObjectPassingTest:v16];

    if (v13 && (v14 & 1) == 0)
    {
      [v9 addObject:v13];
    }

    if (toAppLayout)
    {
      [v9 addObject:toAppLayout];
    }
  }

  return v9;
}

- (BOOL)shouldUseBackgroundWallpaperTreatmentForIndex:(unint64_t)index
{
  switcherSettings = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  v4 = [switcherSettings effectiveSwitcherStyle] == 1;

  return v4;
}

- (id)gestureModifierForGestureEvent:(id)event
{
  eventCopy = event;
  gestureID = [eventCopy gestureID];
  gestureType = [eventCopy gestureType];
  v7 = 0;
  if (gestureType <= 3)
  {
    if (gestureType == 1)
    {
      v14 = [SBHomeGestureRootSwitcherModifier alloc];
      _effectiveEnvironmentMode = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _effectiveEnvironmentMode];
      _newMultitaskingModifier = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v7 = [(SBHomeGestureRootSwitcherModifier *)v14 initWithStartingEnvironmentMode:_effectiveEnvironmentMode multitaskingModifier:_newMultitaskingModifier];

      [(SBHomeGestureRootSwitcherModifier *)v7 setResignsTransitionIntoAppSwitcher:1];
      goto LABEL_11;
    }

    if (gestureType != 2)
    {
      goto LABEL_11;
    }

    v8 = SBGridSwipeUpGestureSwitcherModifier;
    goto LABEL_10;
  }

  if (gestureType == 4)
  {
    v8 = SBMoveFloatingOverFullScreenGestureSwitcherModifier;
LABEL_10:
    v7 = [[v8 alloc] initWithGestureID:gestureID];
    goto LABEL_11;
  }

  if (gestureType == 7)
  {
    selectedAppLayout = [eventCopy selectedAppLayout];
    configuration = [selectedAppLayout configuration];

    v11 = SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration(configuration);
    v12 = [SBSceneResizeGestureRootSwitcherModifier alloc];
    selectedAppLayout2 = [eventCopy selectedAppLayout];
    v7 = [(SBSceneResizeGestureRootSwitcherModifier *)v12 initWithAppLayout:selectedAppLayout2 spaceConfiguration:v11];
  }

LABEL_11:

  return v7;
}

- (id)transitionModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  windowManagementContext = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toAppLayout = [eventCopy toAppLayout];
  fromAppLayout = [eventCopy fromAppLayout];
  transitionID = [eventCopy transitionID];
  coverSheetFlyInContext = [eventCopy coverSheetFlyInContext];
  switcherSettings = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
  effectiveSwitcherStyle = [switcherSettings effectiveSwitcherStyle];

  toAppExposeBundleID = [eventCopy toAppExposeBundleID];

  if (toAppExposeBundleID && toEnvironmentMode == 2)
  {
    goto LABEL_3;
  }

  if ([eventCopy isBannerUnfurlTransition])
  {
    bannerUnfurlSourceContext = [eventCopy bannerUnfurlSourceContext];

    if (bannerUnfurlSourceContext)
    {
      if (fromEnvironmentMode != 2)
      {
        v16 = coverSheetFlyInContext;
        v17 = toAppLayout;
        if (fromEnvironmentMode != 3)
        {
          v110 = 0;
          goto LABEL_6;
        }

        v20 = [SBBannerUnfurlToFullScreenSwitcherModifier alloc];
        bannerUnfurlSourceContext2 = [eventCopy bannerUnfurlSourceContext];
        v22 = v20;
        v18 = fromAppLayout;
        v23 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v22 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout bannerUnfurlSourceContext:bannerUnfurlSourceContext2];
        goto LABEL_12;
      }

      v35 = [SBBannerUnfurlToFullScreenSwitcherModifier alloc];
      bannerUnfurlSourceContext3 = [eventCopy bannerUnfurlSourceContext];
      v17 = toAppLayout;
      v110 = [(SBBannerUnfurlToFullScreenSwitcherModifier *)v35 initWithTransitionID:transitionID fromAppLayout:0 toAppLayout:toAppLayout bannerUnfurlSourceContext:bannerUnfurlSourceContext3];

LABEL_36:
      v16 = coverSheetFlyInContext;
      goto LABEL_6;
    }
  }

  if ([eventCopy isBreadcrumbTransition] && fromEnvironmentMode == 3 && toEnvironmentMode == 1)
  {
    v18 = fromAppLayout;
    v24 = [[SBFullScreenToHomeSlideOverSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout direction:1];
    v110 = v24;
    v17 = toAppLayout;
    if (isChamoisOrFlexibleWindowing)
    {
      [(SBFullScreenToHomeSlideOverSwitcherModifier *)v24 setShouldForceDefaultAnchorPointForTransition:1];
    }

    goto LABEL_18;
  }

  v18 = fromAppLayout;
  if (toEnvironmentMode != 3)
  {
    if (toEnvironmentMode == 2)
    {
      if (fromEnvironmentMode == 2)
      {
        v16 = coverSheetFlyInContext;
        v17 = toAppLayout;
        if (!fromAppLayout || !toAppLayout || [(SBGridSwitcherModifier *)fromAppLayout isEqual:toAppLayout])
        {
          v40 = SBGridSwipeUpToSwitcherSwitcherModifier;
LABEL_53:
          v41 = [[v40 alloc] initWithTransitionID:transitionID];
LABEL_54:
          v110 = v41;
          goto LABEL_88;
        }

        goto LABEL_107;
      }

      v16 = coverSheetFlyInContext;
      if (fromEnvironmentMode != 1)
      {
        if (fromEnvironmentMode == 3)
        {
          if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
          {
            _newMultitaskingModifier = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
            v43 = [(SBHomeToSwitcherSwitcherModifier *)[SBHomeToGridSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 multitaskingModifier:_newMultitaskingModifier];
          }

          else
          {
            if (effectiveSwitcherStyle != 1)
            {
              goto LABEL_86;
            }

            _newMultitaskingModifier = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
            v43 = [[SBDeckToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 fullScreenAppLayout:fromAppLayout deckModifier:_newMultitaskingModifier];
          }

          v110 = v43;

          v18 = fromAppLayout;
          goto LABEL_87;
        }

LABEL_86:
        v110 = 0;
        goto LABEL_87;
      }

      if (effectiveSwitcherStyle != 1)
      {
        goto LABEL_86;
      }

      v30 = [SBHomeToDeckSwitcherModifier alloc];
      _newMultitaskingModifier2 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v32 = v30;
      v18 = fromAppLayout;
      v33 = transitionID;
      v34 = 1;
    }

    else
    {
      if (toEnvironmentMode != 1)
      {
        goto LABEL_42;
      }

      if (fromEnvironmentMode != 2)
      {
        v16 = coverSheetFlyInContext;
        v17 = toAppLayout;
        if (fromEnvironmentMode == 3 && ([eventCopy isEnteringSlideOverPeekEvent] & 1) == 0)
        {
          if ([eventCopy isEnteringAnyPeekEvent])
          {
            windowManagementContext2 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
            if ([windowManagementContext2 isFlexibleWindowingEnabled])
            {
              toAppLayout2 = [eventCopy toAppLayout];
              fromAppLayout2 = [eventCopy fromAppLayout];
              v47 = [toAppLayout2 containsAllItemsFromAppLayout:fromAppLayout2];

              if (v47)
              {
                v110 = 0;
                goto LABEL_5;
              }

              fromAppLayout3 = [eventCopy fromAppLayout];
              v185[0] = MEMORY[0x277D85DD0];
              v185[1] = 3221225472;
              v185[2] = __90__SBFullScreenFluidSwitcherRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke;
              v185[3] = &unk_2783A8C90;
              v79 = eventCopy;
              v186 = v79;
              v80 = [fromAppLayout3 appLayoutWithItemsPassingTest:v185];

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

              v17 = toAppLayout;
              v18 = fromAppLayout;
              if (CGRectIsNull(*&v81) || ([v79 isMoveDisplaysTransition] & 1) != 0)
              {
                v110 = 0;
              }

              else
              {
                v110 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v80 direction:1];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldForceDefaultAnchorPointForTransition:1];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldDockOrderFrontDuringTransition:1];
                windowManagementContext3 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                isFlexibleWindowingEnabled = [windowManagementContext3 isFlexibleWindowingEnabled];

                if (isFlexibleWindowingEnabled)
                {
                  v91 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
                  v92 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v91 initWithAppLayout:fromAppLayout gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
                  [(SBChainableModifier *)v92 addChildModifier:v110];

                  v110 = v92;
                }

                v18 = fromAppLayout;
              }

              goto LABEL_88;
            }
          }

          else
          {
            if ([eventCopy prefersCrossfadeTransition])
            {
              v110 = [[SBCrossfadeDosidoSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout];
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setFullScreenTransition:isChamoisOrFlexibleWindowing ^ 1];
              goto LABEL_88;
            }

            if ([eventCopy isExitingSplitViewPeekToHomeScreenEvent])
            {
              v74 = [SBPeekToOffscreenSwitcherModifier alloc];
              bannerUnfurlSourceContext2 = [eventCopy fromAppLayout];
              fromPeekConfiguration = [eventCopy fromPeekConfiguration];
              fromSpaceConfiguration = [eventCopy fromSpaceConfiguration];
              v77 = v74;
              v18 = fromAppLayout;
              v23 = [(SBPeekToOffscreenSwitcherModifier *)v77 initWithTransitionID:transitionID peekingAppLayout:bannerUnfurlSourceContext2 peekConfiguration:fromPeekConfiguration spaceConfiguration:fromSpaceConfiguration];
              goto LABEL_12;
            }

            if (fromAppLayout)
            {
              v110 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _entityRemovalModifierForMainTransitionEvent:eventCopy];
              if (v110)
              {
                goto LABEL_88;
              }

              if ([eventCopy isIconZoomDisabled])
              {
                v85 = *MEMORY[0x277CBF398];
                v86 = *(MEMORY[0x277CBF398] + 8);
                v87 = *(MEMORY[0x277CBF398] + 16);
                v88 = *(MEMORY[0x277CBF398] + 24);
              }

              else
              {
                [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:fromAppLayout];
                v85 = v94;
                v86 = v95;
                v87 = v96;
                v88 = v97;
              }

              if ([eventCopy isMorphToPIPTransition])
              {
                v98 = [SBFullScreenToHomePIPSwitcherModifier alloc];
                morphingPIPLayoutRole = [eventCopy morphingPIPLayoutRole];
                v100 = v98;
                v18 = fromAppLayout;
                v110 = [(SBFullScreenToHomePIPSwitcherModifier *)v100 initWithTransitionID:transitionID appLayout:fromAppLayout layoutRole:morphingPIPLayoutRole];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldForceDefaultAnchorPointForTransition:isChamoisOrFlexibleWindowing];
                [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldClippingTakeShadowIntoAccount:isChamoisOrFlexibleWindowing];
              }

              else
              {
                fromAppLayout4 = [eventCopy fromAppLayout];
                v102 = [(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:eventCopy activeLayout:fromAppLayout4];

                if (v102)
                {
                  v103 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout direction:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setShouldForceDefaultAnchorPointForTransition:isChamoisOrFlexibleWindowing];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setShouldDockOrderFrontDuringTransition:isChamoisOrFlexibleWindowing];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setGenieDisabled:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v103 setSupportsGlassHighlight:0];
                  appLayouts = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self appLayouts];
                  v105 = [appLayouts indexOfObject:fromAppLayout];

                  v106 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:fromAppLayout key:@"position"];
                  [v106 CGPointValue];
                  v108 = v107;
                  v110 = v109;

                  v18 = fromAppLayout;
                  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self frameForIndex:v105];
                  v112 = v111;
                  v114 = v113;
                  v116 = v115;
                  v118 = v117;
                  [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self scaleForIndex:v105];
                  v110 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:transitionID zoomModifier:v103 appLayout:fromAppLayout direction:1 expandedCardFrame:v112 cardScale:v114 cardVelocity:v116, v118, v119, v108, v110];
                }

                else
                {
                  if ([eventCopy isMoveDisplaysTransition])
                  {
                    v110 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
                    goto LABEL_4;
                  }

                  v188.origin.x = v85;
                  v188.origin.y = v86;
                  v188.size.width = v87;
                  v188.size.height = v88;
                  if (CGRectIsNull(v188) || ([eventCopy isMoveDisplaysTransition] & 1) != 0)
                  {
                    switcherSettings2 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self switcherSettings];
                    [switcherSettings2 switcherCenterYOffsetPercentOfScreenHeight];
                    v123 = v122;

                    v124 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout offsetYPercentOfScreenHeight:v123];
                    v110 = v124;
                    if (isChamoisOrFlexibleWindowing)
                    {
                      [(SBFullScreenToHomeCenterZoomDownSwitcherModifier *)v124 setShouldForceDefaultAnchorPointForTransition:1];
                    }

                    goto LABEL_4;
                  }

                  v110 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:fromAppLayout direction:1];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldForceDefaultAnchorPointForTransition:isChamoisOrFlexibleWindowing];
                  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldDockOrderFrontDuringTransition:isChamoisOrFlexibleWindowing];
                  windowManagementContext4 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                  isFlexibleWindowingEnabled2 = [windowManagementContext4 isFlexibleWindowingEnabled];

                  if (!isFlexibleWindowingEnabled2)
                  {
LABEL_4:
                    v16 = coverSheetFlyInContext;
LABEL_5:
                    v17 = toAppLayout;
LABEL_6:
                    v18 = fromAppLayout;
                    goto LABEL_88;
                  }

                  v132 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
                  v133 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v132 initWithAppLayout:fromAppLayout gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
                  [(SBChainableModifier *)v133 addChildModifier:v110];

                  v110 = v133;
                  v18 = fromAppLayout;
                }
              }

              goto LABEL_43;
            }
          }
        }

        goto LABEL_107;
      }

      v16 = coverSheetFlyInContext;
      if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
      {
        v37 = SBHomeToGridSwitcherModifier;
      }

      else
      {
        if (effectiveSwitcherStyle != 1)
        {
          goto LABEL_86;
        }

        v37 = SBHomeToDeckSwitcherModifier;
      }

      v50 = [v37 alloc];
      _newMultitaskingModifier2 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v32 = v50;
      v18 = fromAppLayout;
      v33 = transitionID;
      v34 = 0;
    }

    v110 = [(SBHomeToSwitcherSwitcherModifier *)v32 initWithTransitionID:v33 direction:v34 multitaskingModifier:_newMultitaskingModifier2];

    goto LABEL_87;
  }

  if (fromEnvironmentMode == 1)
  {
LABEL_42:
    v110 = 0;
LABEL_43:
    v16 = coverSheetFlyInContext;
LABEL_87:
    v17 = toAppLayout;
    goto LABEL_88;
  }

  v16 = coverSheetFlyInContext;
  if (fromEnvironmentMode != 3)
  {
    if (fromEnvironmentMode == 2)
    {
      if (effectiveSwitcherStyle != 1)
      {
        v51 = [SBGridToFullScreenSwitcherModifier alloc];
        bannerUnfurlSourceContext2 = objc_alloc_init(SBGridSwitcherModifier);
        v52 = v51;
        v18 = fromAppLayout;
        v17 = toAppLayout;
        v23 = [(SBGridToFullScreenSwitcherModifier *)v52 initWithTransitionID:transitionID direction:0 fullScreenAppLayout:toAppLayout gridModifier:bannerUnfurlSourceContext2];
        goto LABEL_12;
      }

      v17 = toAppLayout;
      if (![eventCopy isContinuityTransition] || (-[SBFullScreenFluidSwitcherRootSwitcherModifier isAppLayoutVisibleInSwitcherBounds:](self, "isAppLayoutVisibleInSwitcherBounds:", toAppLayout) & 1) != 0)
      {
        v38 = [SBDeckToFullScreenSwitcherModifier alloc];
        _newMultitaskingModifier3 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
        v110 = [(SBDeckToFullScreenSwitcherModifier *)v38 initWithTransitionID:transitionID direction:0 fullScreenAppLayout:toAppLayout deckModifier:_newMultitaskingModifier3];

        goto LABEL_6;
      }

      v58 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:toAppLayout];
      v59 = [SBDeckContinuityToFullScreenSwitcherModifier alloc];
      _newMultitaskingModifier4 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      v110 = [(SBDeckContinuityToFullScreenSwitcherModifier *)v59 initWithTransitionID:transitionID appLayout:toAppLayout deckModifier:_newMultitaskingModifier4 fullscreenModifier:v58];

LABEL_93:
      goto LABEL_6;
    }

    goto LABEL_86;
  }

  v17 = toAppLayout;
  if (fromAppLayout)
  {
    if (toAppLayout)
    {
      if ([(SBGridSwitcherModifier *)fromAppLayout isEqual:toAppLayout])
      {
        fromInterfaceOrientation = [eventCopy fromInterfaceOrientation];
        v26 = fromInterfaceOrientation == [eventCopy toInterfaceOrientation];
        v18 = fromAppLayout;
        if (!v26)
        {
          v54 = [SBRotationSwitcherModifier alloc];
          bannerUnfurlSourceContext2 = [eventCopy toAppLayout];
          fromInterfaceOrientation2 = [eventCopy fromInterfaceOrientation];
          toInterfaceOrientation = [eventCopy toInterfaceOrientation];
          v57 = v54;
          v18 = fromAppLayout;
          v23 = [(SBRotationSwitcherModifier *)v57 initWithTransitionID:transitionID appLayout:bannerUnfurlSourceContext2 fromInterfaceOrientation:fromInterfaceOrientation2 toInterfaceOrientation:toInterfaceOrientation];
LABEL_12:
          v110 = v23;

          goto LABEL_88;
        }
      }
    }
  }

  if ([eventCopy isMainPulseEvent])
  {
    activatingAppLayout = [eventCopy activatingAppLayout];
    bannerUnfurlSourceContext2 = activatingAppLayout;
    if (activatingAppLayout == toAppLayout)
    {
      v23 = [[SBPulseTransitionSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:activatingAppLayout];
    }

    else
    {
      v28 = [(SBGridSwitcherModifier *)activatingAppLayout itemForLayoutRole:1];
      v29 = [(SBGridSwitcherModifier *)toAppLayout layoutRoleForItem:v28];

      v18 = fromAppLayout;
      v23 = [[SBSplitDisplayItemPulseTransitionSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:toAppLayout layoutRole:v29 chamoisWindowingUIEnabled:isChamoisOrFlexibleWindowing];
    }

    goto LABEL_12;
  }

  if (!SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]) && SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "toPeekConfiguration")) && v18 == toAppLayout)
  {
    goto LABEL_107;
  }

  if (SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "toPeekConfiguration")) && v18 == toAppLayout)
  {
    v48 = [SBFullScreenToHomeSlideOverSwitcherModifier alloc];
    toAppLayout3 = [eventCopy toAppLayout];
    v110 = [(SBFullScreenToHomeSlideOverSwitcherModifier *)v48 initWithTransitionID:transitionID appLayout:toAppLayout3 direction:0];

    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldBlurUnreadyScenes:1];
    if (isChamoisOrFlexibleWindowing)
    {
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldForceDefaultAnchorPointForTransition:1];
    }

    goto LABEL_6;
  }

  if ([eventCopy isSlideOverToFullScreenEvent])
  {
    goto LABEL_107;
  }

  if (([(SBGridSwitcherModifier *)v18 isEqual:toAppLayout]& 1) == 0)
  {
    if (([eventCopy isGestureInitiated] & 1) == 0)
    {
      if ([eventCopy isMoveDisplaysTransition])
      {
        v61 = 1;
        v182 = [(SBGridSwitcherModifier *)v18 itemForLayoutRole:1];
        v62 = [(SBGridSwitcherModifier *)v18 itemForLayoutRole:2];
        v63 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:1];
        v64 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:2];
        v65 = 0;
        v180 = v64;
        v18 = fromAppLayout;
        if (v62)
        {
          v66 = v182;
          if (!v64)
          {
            if ((BSEqualObjects() & 1) != 0 || (v61 = 2, BSEqualObjects()))
            {
              v65 = [[SBSplitRemovalSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:v18 toAppLayout:toAppLayout layoutRoleToRemove:v61 animationStyle:0];
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

        v93 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
        v110 = v93;
        if (v65)
        {
          [(SBChainableModifier *)v93 addChildModifier:v65];
        }

        goto LABEL_43;
      }

      if ([eventCopy isMorphFromPIPTransition])
      {
        v58 = [[SBDosidoSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:v18 toAppLayout:toAppLayout direction:0];
        [(SBFullScreenAppLayoutSwitcherModifier *)v58 setShouldSuppressScaleAnimation:1];
        v110 = -[SBPIPRestoreToFullScreenSwitcherModifier initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:]([SBPIPRestoreToFullScreenSwitcherModifier alloc], "initWithTransitionID:transitionModifier:fromAppLayout:toAppLayout:toLayoutRole:", transitionID, v58, fromAppLayout, toAppLayout, [eventCopy morphingPIPLayoutRole]);
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldForceDefaultAnchorPointForTransition:isChamoisOrFlexibleWindowing];
        [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setShouldClippingTakeShadowIntoAccount:isChamoisOrFlexibleWindowing];
        goto LABEL_93;
      }

      if (([eventCopy isEnteringSplitViewPeekEvent] & 1) == 0 && (objc_msgSend(eventCopy, "isAnySplitViewToOrFromSlideOverEvent") & 1) == 0)
      {
        if ([eventCopy isCenterWindowToFullScreenEvent])
        {
          v18 = fromAppLayout;
          v110 = [[SBCenterWindowToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID fullScreenWithCenterAppLayout:fromAppLayout];
          goto LABEL_43;
        }

        if ([eventCopy isCenterWindowToSlideOverEvent])
        {
          goto LABEL_3;
        }

        if ([eventCopy isCenterWindowToNewSplitViewEvent])
        {
          v18 = fromAppLayout;
          v17 = toAppLayout;
          v120 = [[SBCenterWindowToNewSplitViewSwitcherModifier alloc] initWithTransitionID:transitionID fromFullScreenAppLayout:fromAppLayout toSpaceAppLayout:toAppLayout];
LABEL_152:
          v110 = v120;
LABEL_18:
          v16 = coverSheetFlyInContext;
          goto LABEL_88;
        }

        if ([eventCopy isCenterWindowToExistingSplitViewEvent])
        {
          v125 = SBCenterWindowToExistingSplitViewSwitcherModifier;
LABEL_151:
          v18 = fromAppLayout;
          v17 = toAppLayout;
          v120 = [[v125 alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout];
          goto LABEL_152;
        }

        if ([eventCopy isCenterWindowRemovalEvent])
        {
          v126 = [eventCopy removalContextForAppLayout:fromAppLayout];
          animationStyle = [v126 animationStyle];
          displayItem = [v126 displayItem];
          v129 = [(SBGridSwitcherModifier *)fromAppLayout layoutRoleForItem:displayItem];

          if (v129)
          {
            if (animationStyle == 3)
            {
              v134 = SBWindowDeclineSwitcherModifier;
            }

            else
            {
              if (animationStyle != 2)
              {
                v110 = [[SBWindowDeleteSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout layoutRole:v129];
                windowManagementContext5 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self windowManagementContext];
                if (([windowManagementContext5 isChamoisOrFlexibleWindowing] & 1) != 0 || v129 != 4)
                {
                }

                else
                {
                  centerConfiguration = [(SBGridSwitcherModifier *)fromAppLayout centerConfiguration];

                  if (centerConfiguration == 2)
                  {
                    [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setUsePageFullScreenCenterWindowDeletion:1];
                  }
                }

                goto LABEL_168;
              }

              v134 = SBWindowCommitSwitcherModifier;
            }

            v110 = [[v134 alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout layoutRole:v129];
          }

          else
          {
            v110 = 0;
          }

LABEL_168:

          goto LABEL_4;
        }

        if ([eventCopy isSplitViewToCenterWindowEvent])
        {
          v125 = SBSplitViewToCenterWindowSwitcherModifier;
          goto LABEL_151;
        }

        if ([eventCopy isSlideOverToCenterWindowEvent])
        {
          goto LABEL_3;
        }

        if ([eventCopy isFullScreenToCenterWindowEvent])
        {
          v135 = [SBCenterWindowToFullScreenSwitcherModifier alloc];
          toAppLayout4 = [eventCopy toAppLayout];
          v110 = [(SBCenterWindowToFullScreenSwitcherModifier *)v135 initWithTransitionID:transitionID fullScreenWithCenterAppLayout:toAppLayout4];

          goto LABEL_4;
        }

        if ([eventCopy isPresentingPageCenterWindowEvent] && ((objc_msgSend(eventCopy, "isNewSceneTransition") & 1) != 0 || objc_msgSend(eventCopy, "isMorphFromInAppView")))
        {
          v139 = [SBCenterWindowPagePresentationSwitcherModifier alloc];
          isMorphFromInAppView = [eventCopy isMorphFromInAppView];
          v141 = v139;
          v142 = transitionID;
          v17 = toAppLayout;
          v143 = toAppLayout;
LABEL_181:
          v110 = [(SBCenterWindowPagePresentationSwitcherModifier *)v141 initWithTransitionID:v142 toAppLayout:v143 isMorph:isMorphFromInAppView];
          goto LABEL_36;
        }

        if ([eventCopy isReplaceCenterWindowWithNewCenterWindowEvent])
        {
          if (([eventCopy isShelfTransition] & 1) == 0)
          {
            v141 = [SBCenterWindowPagePresentationSwitcherModifier alloc];
            v142 = transitionID;
            v17 = toAppLayout;
            v143 = toAppLayout;
            isMorphFromInAppView = 0;
            goto LABEL_181;
          }

LABEL_3:
          v110 = 0;
          goto LABEL_4;
        }

        if (!toAppLayout)
        {
          goto LABEL_3;
        }

        v179 = [(SBGridSwitcherModifier *)fromAppLayout itemForLayoutRole:1];
        v183 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:1];
        v178 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:2];
        v181 = [(SBGridSwitcherModifier *)fromAppLayout itemForLayoutRole:2];
        if (v181)
        {
          v144 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:2];
          if (v144)
          {
          }

          else if (BSEqualObjects())
          {
            v145 = [SBSplitRemovalSwitcherModifier alloc];
            v146 = [eventCopy removalContextForAppLayout:fromAppLayout];
            animationStyle2 = [(SBDosidoSwitcherModifier *)v146 animationStyle];
            v148 = v145;
            v149 = transitionID;
            v150 = fromAppLayout;
            v151 = toAppLayout;
            v152 = 1;
LABEL_192:
            v110 = [(SBSplitRemovalSwitcherModifier *)v148 initWithTransitionID:v149 fromAppLayout:v150 toAppLayout:v151 layoutRoleToRemove:v152 animationStyle:animationStyle2];
            goto LABEL_193;
          }

          v153 = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:2];
          if (v153)
          {

            goto LABEL_194;
          }

          if (BSEqualObjects())
          {
            v154 = [SBSplitRemovalSwitcherModifier alloc];
            v146 = [eventCopy removalContextForAppLayout:fromAppLayout];
            animationStyle2 = [(SBDosidoSwitcherModifier *)v146 animationStyle];
            v148 = v154;
            v149 = transitionID;
            v150 = fromAppLayout;
            v151 = toAppLayout;
            v152 = 2;
            goto LABEL_192;
          }
        }

LABEL_194:
        v155 = SBLayoutRoleSetForRole(4);
        if (([(SBGridSwitcherModifier *)fromAppLayout hasSameItemsInLayoutRoles:v155 asAppLayout:toAppLayout]& 1) == 0)
        {
          v156 = SBLayoutRoleSetForRole2(1, 2);
          if ([(SBGridSwitcherModifier *)fromAppLayout hasSameItemsInLayoutRoles:v156 asAppLayout:toAppLayout])
          {
            toAppExposeBundleID2 = [eventCopy toAppExposeBundleID];
            if (!toAppExposeBundleID2)
            {
              fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];

              if (fromAppExposeBundleID)
              {
                goto LABEL_221;
              }

              goto LABEL_200;
            }
          }
        }

LABEL_200:
        if ([eventCopy prefersCrossfadeTransition])
        {
LABEL_201:
          v110 = [[SBCrossfadeDosidoSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout];
          [(SBFullScreenToHomeIconZoomSwitcherModifier *)v110 setFullScreenTransition:isChamoisOrFlexibleWindowing ^ 1];
          goto LABEL_222;
        }

        if (-[SBFullScreenFluidSwitcherRootSwitcherModifier isDevicePad](self, "isDevicePad") && [eventCopy isFullScreenToSplitViewEvent])
        {
          leafAppLayoutForKeyboardFocusedScene = [(SBGridSwitcherModifier *)toAppLayout itemForLayoutRole:2];
          v159 = [[SBFullScreenToSplitViewSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout];
          v110 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:leafAppLayoutForKeyboardFocusedScene wrappingModifier:v159];

LABEL_209:
          goto LABEL_222;
        }

        if ([eventCopy isSwappingFullScreenAppSidesEvent])
        {
          leafAppLayoutForKeyboardFocusedScene = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self leafAppLayoutForKeyboardFocusedScene];
          v160 = 1;
          v161 = [(SBGridSwitcherModifier *)fromAppLayout leafAppLayoutForRole:1];
          if (v161 != leafAppLayoutForKeyboardFocusedScene)
          {
            v160 = 2;
          }

          v110 = [[SBSwapFullScreenAppSidesSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout layoutRoleToKeepOnTop:v160];
          goto LABEL_209;
        }

        if (([eventCopy isCenterWindowZoomingUpFromShelfEvent] & 1) == 0)
        {
          if (-[SBFullScreenFluidSwitcherRootSwitcherModifier isDevicePad](self, "isDevicePad") && ![eventCopy dosidoTransitionDirection])
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

              v177 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)v175 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout layoutRole:v176];
            }

            else
            {
              v177 = -[SBCrossblurDosidoSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:direction:]([SBCrossblurDosidoSwitcherModifier alloc], "initWithTransitionID:fromAppLayout:toAppLayout:direction:", transitionID, fromAppLayout, toAppLayout, [eventCopy isBreadcrumbTransition]);
            }

            v110 = v177;
            goto LABEL_222;
          }

          appLayoutsWithRemovalContexts = [eventCopy appLayoutsWithRemovalContexts];
          v163 = [appLayoutsWithRemovalContexts count];

          if (v163)
          {
            goto LABEL_201;
          }

          dosidoTransitionDirection = [eventCopy dosidoTransitionDirection];
          isBreadcrumbTransition = [eventCopy isBreadcrumbTransition];
          if (dosidoTransitionDirection == 2)
          {
            v166 = 1;
          }

          else
          {
            v166 = isBreadcrumbTransition;
          }

          v167 = [[SBDosidoSwitcherModifier alloc] initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout direction:v166];
          [(SBDosidoSwitcherModifier *)v167 setShouldSuppressScaleAnimation:dosidoTransitionDirection != 0];
          v146 = v167;
          zoomFromHardwareButtonPreludeTokenWrapper = [eventCopy zoomFromHardwareButtonPreludeTokenWrapper];
          v110 = v146;
          if ([zoomFromHardwareButtonPreludeTokenWrapper isTokenAvailable])
          {
            v169 = [SBCaptureDropletZoomSwitcherModifier alloc];
            consumeToken = [zoomFromHardwareButtonPreludeTokenWrapper consumeToken];
            v110 = [(SBCaptureDropletZoomSwitcherModifier *)v169 initWithTransitionID:transitionID zoomModifier:v146 appLayout:toAppLayout launchPreludeAnimationToken:consumeToken];
          }

LABEL_193:
LABEL_222:

          goto LABEL_4;
        }

LABEL_221:
        v110 = 0;
        goto LABEL_222;
      }
    }

LABEL_107:
    v110 = 0;
    goto LABEL_88;
  }

  if (([eventCopy toFloatingSwitcherVisible] & 1) == 0 && objc_msgSend(eventCopy, "fromFloatingSwitcherVisible"))
  {
    v40 = SBAppUnderFloatingSwitcherTransitionSwitcherModifier;
    goto LABEL_53;
  }

  v110 = 0;
  if (CSFeatureEnabled() && coverSheetFlyInContext)
  {
    v67 = [SBCoverSheetToAppSwitcherModifier alloc];
    [coverSheetFlyInContext progress];
    v69 = v68;
    [coverSheetFlyInContext velocity];
    v71 = v70;
    supportsBlur = [coverSheetFlyInContext supportsBlur];
    v73 = v67;
    v18 = fromAppLayout;
    v41 = [(SBCoverSheetToAppSwitcherModifier *)v73 initWithTransitionID:transitionID appLayout:toAppLayout progress:supportsBlur velocity:v69 supportsBlur:v71];
    goto LABEL_54;
  }

LABEL_88:

  return v110;
}

uint64_t __90__SBFullScreenFluidSwitcherRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 toAppLayout];
  v5 = [v4 containsItem:v3];

  return v5 ^ 1u;
}

- (id)floorModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    toEnvironmentMode = [eventCopy toEnvironmentMode];
    switch(toEnvironmentMode)
    {
      case 1:
        multitaskingModifier = objc_alloc_init(SBHomeScreenSwitcherModifier);
LABEL_9:
        v12 = multitaskingModifier;
        if (multitaskingModifier)
        {
          goto LABEL_11;
        }

        break;
      case 3:
        toAppLayout = [v5 toAppLayout];
        toFloatingSwitcherVisible = [v5 toFloatingSwitcherVisible];
        v10 = [[SBFullScreenAppLayoutSwitcherModifier alloc] initWithActiveAppLayout:toAppLayout];
        v11 = v10;
        if (toFloatingSwitcherVisible)
        {
          v12 = [[SBAppUnderFloatingSwitcherSwitcherModifier alloc] initWithActiveAppLayout:toAppLayout];
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
        multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        goto LABEL_9;
    }
  }

  v12 = objc_alloc_init(SBHomeScreenSwitcherModifier);
LABEL_11:

  return v12;
}

- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)event
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

- (id)shelfModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  toAppLayout = [eventCopy toAppLayout];
  toWindowPickerRole = [eventCopy toWindowPickerRole];
  if (SBLayoutRoleIsValidForSplitView(toWindowPickerRole) && [eventCopy toEnvironmentMode] == 3)
  {
    v7 = [toAppLayout leafAppLayoutForRole:toWindowPickerRole];
    allItems = [v7 allItems];
    firstObject = [allItems firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];

    if (bundleIdentifier)
    {
      v11 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:bundleIdentifier layoutRole:toWindowPickerRole displayMode:1];
      uniqueIdentifier = [(SBSwitcherShelf *)v11 uniqueIdentifier];
      v13 = [(SBChainableModifier *)self childModifierByKey:uniqueIdentifier];

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v15 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:eventCopy context:self];
        v16 = [SBShelfSwitcherModifier alloc];
        toFloatingAppLayout = [eventCopy toFloatingAppLayout];
        fromAppLayout = [eventCopy fromAppLayout];
        v14 = [(SBShelfSwitcherModifier *)v16 initWithShelf:v11 contentOptions:v15 activeFullScreenAppLayout:toAppLayout activeFloatingAppLayout:toFloatingAppLayout presentationTargetFrame:fromAppLayout presentedFromAppLayout:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
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

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event
{
  eventCopy = event;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:appLayout];

  return v6;
}

- (id)multitaskingModifierForEvent:(id)event
{
  _defaultMultitaskingModifierClass = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _defaultMultitaskingModifierClass];
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (([multitaskingModifier isMemberOfClass:_defaultMultitaskingModifierClass] & 1) == 0)
  {
    v6 = objc_alloc_init(_defaultMultitaskingModifierClass);

    multitaskingModifier = v6;
  }

  return multitaskingModifier;
}

- (id)_entityRemovalModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  fromAppLayout = [eventCopy fromAppLayout];
  if (fromAppLayout)
  {
    v6 = [eventCopy removalContextForAppLayout:fromAppLayout];
    if (v6)
    {
      _newMultitaskingModifier = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self _newMultitaskingModifier];
      animationStyle = [v6 animationStyle];
      if (SBReduceMotion() || animationStyle == 1)
      {
        v14 = [SBEntityRemovalCrossblurSwitcherModifier alloc];
        transitionID = [eventCopy transitionID];
        fromAppLayout2 = [eventCopy fromAppLayout];
        v13 = [(SBEntityRemovalCrossblurSwitcherModifier *)v14 initWithTransitionID:transitionID appLayout:fromAppLayout2 multitaskingModifier:_newMultitaskingModifier];
      }

      else
      {
        entityRemovalSettings = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)self entityRemovalSettings];
        v10 = entityRemovalSettings;
        v11 = animationStyle == 2;
        v12 = animationStyle != 2;
        if (v11)
        {
          [entityRemovalSettings dosidoCommitIntentAnimationSettings];
        }

        else
        {
          [entityRemovalSettings dosidoDeclineIntentAnimationSettings];
        }
        transitionID = ;

        v17 = [SBEntityRemovalSlideOffscreenSwitcherModifier alloc];
        fromAppLayout2 = [eventCopy transitionID];
        fromAppLayout3 = [eventCopy fromAppLayout];
        v13 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)v17 initWithTransitionID:fromAppLayout2 appLayout:fromAppLayout3 direction:v12 animationSettings:transitionID multitaskingModifier:_newMultitaskingModifier];
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

- (id)insertionModifierForInsertionEvent:(id)event
{
  eventCopy = event;
  v4 = [SBInsertionSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBInsertionSwitcherModifier *)v4 initWithAppLayout:appLayout];

  return v6;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)event
{
  eventCopy = event;
  v4 = [SBSwipeToKillSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];

  v7 = [(SBSwipeToKillSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout fadeOutSwipedItems:0];

  return v7;
}

- (id)removalModifierForRemovalEvent:(id)event
{
  eventCopy = event;
  v4 = [SBRemovalSwitcherModifier alloc];
  layoutRole = [eventCopy layoutRole];
  appLayout = [eventCopy appLayout];
  reason = [eventCopy reason];

  v8 = [(SBRemovalSwitcherModifier *)v4 initWithLayoutRole:layoutRole inAppLayout:appLayout reason:reason];

  return v8;
}

- (id)lowEndHardwareModifier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sbf_animatedBlurRadiusGraphicsQuality = [currentDevice sbf_animatedBlurRadiusGraphicsQuality];

  v4 = +[SBPlatformController sharedInstance];
  medusaCapabilities = [v4 medusaCapabilities];

  v6 = 3;
  if (sbf_animatedBlurRadiusGraphicsQuality == 100)
  {
    v6 = 0;
  }

  if (medusaCapabilities == 1)
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

- (id)userScrollingModifierForScrollEvent:(id)event
{
  v3 = objc_alloc_init(SBScrollingSwitcherModifier);

  return v3;
}

- (int64_t)_effectiveEnvironmentMode
{
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!floorModifier)
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
      v5 = 2 * (floorModifier != 0);
    }
  }

  return v5;
}

- (void)_effectiveEnvironmentMode
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBFullScreenFluidSwitcherRootSwitcherModifier.m" lineNumber:647 description:@"Can't determine the effective environment mode without a floor modifier"];
}

@end