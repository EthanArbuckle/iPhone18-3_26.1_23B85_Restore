@interface SBContinuousExposeRootSwitcherModifier
- (BOOL)_isActivatingAppLayoutUnoccludedForEvent:(id)event;
- (SBSwitcherContinuousExposeStripTongueAttributes)continuousExposeStripTongueAttributes;
- (id)displayItemsToExcludeFromStrip;
- (id)floorModifierForGestureEvent:(id)event;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event;
- (id)gestureModifierForGestureEvent:(id)event;
- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event;
- (id)handleContinuousExposeStripEdgeProtectTongueEvent:(id)event;
- (id)handleDidEdgeProtectResizeGrabberEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)event;
- (id)handleSlideOverEdgeProtectTongueEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)highlightModifierForHighlightEvent:(id)event;
- (id)multitaskingModifierForEvent:(id)event;
- (id)removalModifierForRemovalEvent:(id)event;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)event;
- (id)transitionModifierForMainTransitionEvent:(id)event;
- (id)userScrollingModifierForScrollEvent:(id)event;
- (int64_t)_effectiveEnvironmentMode;
- (int64_t)switcherModifierLevelForTransitionEvent:(id)event;
@end

@implementation SBContinuousExposeRootSwitcherModifier

- (id)floorModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    v13 = objc_alloc_init(SBHomeScreenContinuousExposeSwitcherModifier);
    goto LABEL_48;
  }

  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  toAppLayout = [eventCopy toAppLayout];
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  v9 = toAppExposeBundleID;
  switch(toEnvironmentMode)
  {
    case 1:
      if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
      {
        if (!floorModifier || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([floorModifier peekingAppLayout], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventCopy, "toAppLayout"), v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, !v20))
        {
          v21 = [SBHomePeekWindowingModifier alloc];
          toAppLayout2 = [eventCopy toAppLayout];
          v13 = -[SBHomePeekWindowingModifier initWithPeekingAppLayout:configuration:](v21, "initWithPeekingAppLayout:configuration:", toAppLayout2, [eventCopy toPeekConfiguration]);

          goto LABEL_47;
        }
      }

      else if (!floorModifier || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v26 = objc_alloc_init(SBHomeScreenContinuousExposeSwitcherModifier);
        goto LABEL_46;
      }

      v26 = floorModifier;
      goto LABEL_46;
    case 2:
      toAppExposeBundleID2 = [eventCopy toAppExposeBundleID];
      if (toAppExposeBundleID2)
      {
        if (floorModifier && ((v15 = objc_opt_class(), v16 = floorModifier, !v15) ? (v17 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v17 = 0) : (v17 = v16), v28 = v17, v16, [v28 appExposeBundleIdentifier], v29 = objc_claimAutoreleasedReturnValue(), v28, LODWORD(v28) = objc_msgSend(v29, "isEqualToString:", toAppExposeBundleID2), v29, v28))
        {
          multitaskingModifier = v16;
        }

        else
        {
          multitaskingModifier = [[SBAppExposeWindowingModifier alloc] initWithBundleIdentifier:toAppExposeBundleID2];
        }
      }

      else
      {
        multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      }

      v13 = multitaskingModifier;

      goto LABEL_47;
    case 3:
      if (!toAppExposeBundleID && floorModifier)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = floorModifier;
          fullScreenAppLayout = [v10 fullScreenAppLayout];
          v12 = [fullScreenAppLayout isEqual:toAppLayout];

          v13 = v12 ? v10 : 0;
          [v10 setContinuousExposeConfigurationChangeTransition:{objc_msgSend(eventCopy, "isContinuousExposeConfigurationChangeEvent")}];

          if (v13)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_41;
      }

      if (!toAppExposeBundleID)
      {
LABEL_41:
        v13 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:toAppLayout];
        -[SBHomeScreenContinuousExposeSwitcherModifier setContinuousExposeConfigurationChangeTransition:](v13, "setContinuousExposeConfigurationChangeTransition:", [eventCopy isContinuousExposeConfigurationChangeEvent]);
        goto LABEL_47;
      }

      if (floorModifier && ((v23 = objc_opt_class(), v24 = floorModifier, !v23) ? (v25 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v25 = 0) : (v25 = v24), v30 = v25, v24, [v30 appExposeBundleIdentifier], v31 = objc_claimAutoreleasedReturnValue(), v30, LODWORD(v30) = objc_msgSend(v31, "isEqualToString:", v9), v31, v30))
      {
        v26 = v24;
      }

      else
      {
        v26 = [[SBAppExposeWindowingModifier alloc] initWithBundleIdentifier:v9];
      }

LABEL_46:
      v13 = v26;
      goto LABEL_47;
  }

  v13 = 0;
LABEL_47:

LABEL_48:

  return v13;
}

- (id)floorModifierForGestureEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isWindowDragGestureEvent])
  {
    phase = [eventCopy phase];
    floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    selectedAppLayout = [eventCopy selectedAppLayout];
    proposedAppLayoutForWindowDrag = [(SBContinuousExposeRootSwitcherModifier *)self proposedAppLayoutForWindowDrag];
    v9 = [proposedAppLayoutForWindowDrag containsAnyItemFromAppLayout:selectedAppLayout];
    switch(phase)
    {
      case 3:
        initialFloorModifierForWindowDrag = self->_initialFloorModifierForWindowDrag;
        self->_initialFloorModifierForWindowDrag = 0;

        break;
      case 2:
        if (v9)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && ([eventCopy unstashingFromHome] & 1) == 0)
          {
            v10 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:proposedAppLayoutForWindowDrag];
            goto LABEL_6;
          }
        }

        else if (([floorModifier isEqual:self->_initialFloorModifierForWindowDrag] & 1) == 0)
        {
          p_super = self->_initialFloorModifierForWindowDrag;
          [(SBChainableModifier *)p_super setState:0];
LABEL_13:

          if (p_super)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        break;
      case 1:
        objc_storeStrong(&self->_initialFloorModifierForWindowDrag, floorModifier);
        v10 = floorModifier;
LABEL_6:
        p_super = &v10->super;
        goto LABEL_13;
    }

    p_super = 0;
    goto LABEL_13;
  }

LABEL_14:
  p_super = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
LABEL_15:

  return p_super;
}

- (id)multitaskingModifierForEvent:(id)event
{
  multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (!multitaskingModifier)
  {
    multitaskingModifier = objc_alloc_init(SBExposeWindowingModifier);
  }

  return multitaskingModifier;
}

- (id)transitionModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isiPadOSWindowingModeChangeEvent])
  {
    goto LABEL_2;
  }

  if (([eventCopy isHandled] & 1) == 0 && (objc_msgSend(eventCopy, "isGestureInitiated") & 1) == 0 && objc_msgSend(eventCopy, "isAnimated"))
  {
    transitionID = [eventCopy transitionID];
    fromEnvironmentMode = [eventCopy fromEnvironmentMode];
    toEnvironmentMode = [eventCopy toEnvironmentMode];
    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    fromInterfaceOrientation = [eventCopy fromInterfaceOrientation];
    toInterfaceOrientation = [eventCopy toInterfaceOrientation];
    windowManagementContext = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
    displayItemInSlideOver = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
    v13 = [eventCopy removalContextForAppLayout:fromAppLayout];
    animationStyle = [v13 animationStyle];
    displayItem = [v13 displayItem];
    v171 = [fromAppLayout layoutRoleForItem:?];
    v174 = displayItemInSlideOver;
    if (fromEnvironmentMode == 3 && toEnvironmentMode == 3)
    {
      previousDesktopItems = [eventCopy previousDesktopItems];
      desktopSpaceDisplayItems = [(SBContinuousExposeRootSwitcherModifier *)self desktopSpaceDisplayItems];
      minimizingDisplayItem = [eventCopy minimizingDisplayItem];
      activatingAppLayout = [eventCopy activatingAppLayout];
      v15 = [activatingAppLayout itemForLayoutRole:1];

      v16 = v174;
      if (!v15)
      {
        if ([eventCopy isLaunchingFromDockTransition])
        {
          v17 = [(SBContinuousExposeRootSwitcherModifier *)self lastInteractedItemsInAppLayout:toAppLayout];
          v188[0] = MEMORY[0x277D85DD0];
          v188[1] = 3221225472;
          v188[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke;
          v188[3] = &unk_2783A8C90;
          v189 = fromAppLayout;
          v15 = [v17 bs_firstObjectPassingTest:v188];

          v16 = v174;
        }

        else
        {
          v15 = 0;
        }
      }

      v165 = v13;
      v169 = transitionID;
      if (v16)
      {
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_2;
        v186[3] = &unk_2783A8C90;
        v156 = &v187;
        v38 = v16;
        v187 = v38;
        v157 = [fromAppLayout appLayoutWithItemsPassingTest:v186];
        v184[0] = MEMORY[0x277D85DD0];
        v184[1] = 3221225472;
        v184[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_3;
        v184[3] = &unk_2783A8C90;
        v155 = &v185;
        v185 = v38;
        v39 = [toAppLayout appLayoutWithItemsPassingTest:v184];
      }

      else
      {
        v157 = fromAppLayout;
        v39 = toAppLayout;
      }

      if (fromAppLayout)
      {
        if (toAppLayout)
        {
          if ([fromAppLayout isEqual:toAppLayout])
          {
            fromInterfaceOrientation2 = [eventCopy fromInterfaceOrientation];
            if (fromInterfaceOrientation2 != [eventCopy toInterfaceOrientation])
            {
              v58 = [SBRotationSwitcherModifier alloc];
              toAppLayout2 = [eventCopy toAppLayout];
              v60 = v39;
              v61 = windowManagementContext;
              fromInterfaceOrientation3 = [eventCopy fromInterfaceOrientation];
              toInterfaceOrientation2 = [eventCopy toInterfaceOrientation];
              v64 = fromInterfaceOrientation3;
              windowManagementContext = v61;
              v39 = v60;
              v5 = [(SBRotationSwitcherModifier *)v58 initWithTransitionID:v169 appLayout:toAppLayout2 fromInterfaceOrientation:v64 toInterfaceOrientation:toInterfaceOrientation2];

              -[SBDockToStageZoomWindowingModifier setShouldNotUseAnchorPointToPinLayoutRolesToSpace:](v5, "setShouldNotUseAnchorPointToPinLayoutRolesToSpace:", [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1);
LABEL_89:
              displayItemInSlideOver = v174;
              goto LABEL_90;
            }
          }
        }
      }

      if ([eventCopy isAnyPulseEvent])
      {
        if (![(SBContinuousExposeRootSwitcherModifier *)self _isActivatingAppLayoutUnoccludedForEvent:eventCopy])
        {
          goto LABEL_91;
        }

        activatingAppLayout2 = [eventCopy activatingAppLayout];
        v42 = activatingAppLayout2;
        if (activatingAppLayout2 == toAppLayout)
        {
          v49 = [[SBPulseTransitionSwitcherModifier alloc] initWithTransitionID:v169 appLayout:activatingAppLayout2];
        }

        else
        {
          v43 = [activatingAppLayout2 itemForLayoutRole:1];
          v44 = v39;
          v45 = [toAppLayout layoutRoleForItem:v43];

          v46 = [SBSplitDisplayItemPulseTransitionSwitcherModifier alloc];
          isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];
          v48 = v45;
          v39 = v44;
          v49 = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)v46 initWithTransitionID:v169 appLayout:toAppLayout layoutRole:v48 chamoisWindowingUIEnabled:isChamoisOrFlexibleWindowing];
        }

        goto LABEL_88;
      }

      displayItemInSlideOver = v174;
      if ([eventCopy isMoveDisplaysTransition])
      {
        v50 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
        goto LABEL_47;
      }

      if (minimizingDisplayItem && !(isAutomaticStageCreationEnabled & 1 | (([fromAppLayout containsItem:minimizingDisplayItem] & 1) == 0)) && objc_msgSend(eventCopy, "prefersZoomDownAnimation"))
      {
        v51 = [fromAppLayout leafAppLayoutForItem:minimizingDisplayItem];
        if ([eventCopy isIconZoomDisabled])
        {
          x = *MEMORY[0x277CBF398];
          y = *(MEMORY[0x277CBF398] + 8);
          width = *(MEMORY[0x277CBF398] + 16);
          height = *(MEMORY[0x277CBF398] + 24);
        }

        else
        {
          [(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v51];
          x = v191.origin.x;
          y = v191.origin.y;
          width = v191.size.width;
          height = v191.size.height;
          if (CGRectIsNull(v191) || ([(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconLocationForAppLayout:v51], v119 = objc_claimAutoreleasedReturnValue(), v120 = *MEMORY[0x277D66690], v119, v121 = v119 == v120, displayItemInSlideOver = v174, !v121))
          {
            v122 = +[SBAppLayout appLibraryAppLayout];
            [(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v122];
            x = v123;
            y = v124;
            width = v125;
            height = v126;
          }
        }

        v192.origin.x = x;
        v192.origin.y = y;
        v192.size.width = width;
        v192.size.height = height;
        if (CGRectIsNull(v192))
        {
          v127 = [SBPuffAwayItemWindowingModifier alloc];
          allItems = [v51 allItems];
          firstObject = [allItems firstObject];
          v5 = [(SBPuffAwayItemWindowingModifier *)v127 initWithDisplayItem:firstObject];

          displayItemInSlideOver = v174;
        }

        else
        {
          v151 = [[SBDockToStageZoomWindowingModifier alloc] initWithAppLayout:v51 addingToStage:0];
          if ([fromAppLayout isEqual:v51])
          {
            v182[0] = MEMORY[0x277D85DD0];
            v182[1] = 3221225472;
            v182[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_4;
            v182[3] = &unk_2783A8C90;
            v183 = minimizingDisplayItem;
            v129 = [toAppLayout appLayoutWithItemsPassingTest:v182];
            [(SBDockToStageZoomWindowingModifier *)v151 setLaunchingOverDesktopSpaceAppLayout:v129];
          }

          v130 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
          v5 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v130 initWithAppLayout:v51 gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
          [(SBChainableModifier *)v5 addChildModifier:v151];
        }

        goto LABEL_166;
      }

      if (v174)
      {
        if ([toAppLayout containsItem:v174] && (objc_msgSend(fromAppLayout, "containsItem:", v174) & 1) == 0 && objc_msgSend(v157, "containsAllItemsFromAppLayout:", v39))
        {
          v56 = [SBStashSlideOverItemAnimationModifier alloc];
          v57 = 1;
LABEL_170:
          v50 = [(SBStashSlideOverItemAnimationModifier *)v56 initWithDirection:v57];
          goto LABEL_47;
        }

        if ([fromAppLayout containsItem:v174] && (objc_msgSend(toAppLayout, "containsItem:", v174) & 1) == 0 && (objc_msgSend(eventCopy, "prefersZoomDownAnimation") & 1) == 0)
        {
          v56 = [SBStashSlideOverItemAnimationModifier alloc];
          v57 = 0;
          goto LABEL_170;
        }
      }

      if (![eventCopy isLaunchingFromDockTransition] || !v15 || (objc_msgSend(fromAppLayout, "containsItem:", v15) & 1) != 0 || (objc_msgSend(previousDesktopItems, "containsObject:", v15) & 1) != 0 || isAutomaticStageCreationEnabled && !objc_msgSend(toAppLayout, "containsAnyItemFromAppLayout:", v157))
      {
        if (!displayItem || ![fromAppLayout containsItem:displayItem] || !objc_msgSend(previousDesktopItems, "count") || isAutomaticStageCreationEnabled & 1 | ((objc_msgSend(toAppLayout, "containsAllItemsFromSet:", previousDesktopItems) & 1) == 0))
        {
          if (!v174)
          {
            goto LABEL_91;
          }

          if (![toAppLayout containsItem:v174] || !objc_msgSend(fromAppLayout, "containsItem:", v174) || !v157 || !v39 || (objc_msgSend(eventCopy, "isCommandTabTransition") & 1) == 0 && (objc_msgSend(eventCopy, "isLaunchingFromDockTransition") & 1) == 0 && !objc_msgSend(eventCopy, "isSpotlightTransition") || (objc_msgSend(v39, "containsAnyItemFromAppLayout:", v157) & 1) != 0)
          {
            if (!isAutomaticStageCreationEnabled || ![fromAppLayout containsItem:v174] || (objc_msgSend(toAppLayout, "containsItem:", v174) & 1) != 0)
            {
              goto LABEL_91;
            }

            v65 = [SBDockToStageZoomWindowingModifier alloc];
            v42 = [fromAppLayout leafAppLayoutForItem:v174];
            v49 = [(SBDockToStageZoomWindowingModifier *)v65 initWithAppLayout:v42 addingToStage:0];
LABEL_88:
            v5 = v49;

            goto LABEL_89;
          }

          v50 = [[SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier alloc] initWithFromAppLayout:fromAppLayout toAppLayout:toAppLayout];
LABEL_47:
          v5 = v50;
          goto LABEL_90;
        }

        v5 = objc_opt_new();
        v178[0] = MEMORY[0x277D85DD0];
        v178[1] = 3221225472;
        v178[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_6;
        v178[3] = &unk_2783A8C90;
        v179 = displayItem;
        v131 = [toAppLayout appLayoutWithItemsPassingTest:v178];
        [(SBDockToStageZoomWindowingModifier *)v5 setLaunchingOverDesktopSpaceAppLayout:v131];

        displayItemInSlideOver = v174;
LABEL_90:
        if (v5)
        {
          goto LABEL_100;
        }

LABEL_91:
        v69 = v39;
        v70 = windowManagementContext;
        v71 = [SBContinuousExposeAppToAppModifier alloc];
        fromDisplayItemLayoutAttributesMap = [eventCopy fromDisplayItemLayoutAttributesMap];
        toDisplayItemLayoutAttributesMap = [eventCopy toDisplayItemLayoutAttributesMap];
        v5 = [(SBContinuousExposeAppToAppModifier *)v71 initWithTransitionID:v169 fromAppLayout:fromAppLayout fromInterfaceOrientation:fromInterfaceOrientation toAppLayout:toAppLayout toInterfaceOrientation:toInterfaceOrientation fromDisplayItemLayoutAttributesMap:fromDisplayItemLayoutAttributesMap toDisplayItemLayoutAttributesMap:toDisplayItemLayoutAttributesMap];

        -[SBDockToStageZoomWindowingModifier setContinuousExposeConfigurationChangeTransition:](v5, "setContinuousExposeConfigurationChangeTransition:", [eventCopy isContinuousExposeConfigurationChangeEvent]);
        -[SBDockToStageZoomWindowingModifier setCommandTabTransition:](v5, "setCommandTabTransition:", [eventCopy isCommandTabTransition]);
        -[SBDockToStageZoomWindowingModifier setLaunchingFromDockTransition:](v5, "setLaunchingFromDockTransition:", [eventCopy isLaunchingFromDockTransition]);
        -[SBDockToStageZoomWindowingModifier setLaunchingFromSpotlightTransition:](v5, "setLaunchingFromSpotlightTransition:", [eventCopy isSpotlightTransition]);
        -[SBDockToStageZoomWindowingModifier setMorphFromInAppViewTransition:](v5, "setMorphFromInAppViewTransition:", [eventCopy isMorphFromInAppView]);
        if ([eventCopy isKeyboardShortcutInitiated])
        {
          isTopAffordanceInitiated = 1;
        }

        else
        {
          isTopAffordanceInitiated = [eventCopy isTopAffordanceInitiated];
        }

        [(SBDockToStageZoomWindowingModifier *)v5 setIsTopAffordanceMenuTransition:isTopAffordanceInitiated];
        windowManagementContext = v70;
        displayItemInSlideOver = v174;
        if (![previousDesktopItems count] || !objc_msgSend(desktopSpaceDisplayItems, "count") || !objc_msgSend(fromAppLayout, "containsAllItemsFromSet:", previousDesktopItems) || (objc_msgSend(toAppLayout, "containsAnyItemFromSet:", desktopSpaceDisplayItems) & 1) != 0 || isAutomaticStageCreationEnabled & 1 | ((objc_msgSend(toAppLayout, "containsAnyItemFromSet:", previousDesktopItems) & 1) == 0))
        {
          goto LABEL_99;
        }

        allItems2 = [toAppLayout allItems];
        if ([allItems2 count] == 1)
        {
          v107 = [(SBContinuousExposeRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:toAppLayout ignoreOcclusion:1 ignoreCentering:0];
          v164 = [v107 count];

          if (v164 != 1)
          {
            windowManagementContext = v70;
            displayItemInSlideOver = v174;
LABEL_99:
            v39 = v69;
            goto LABEL_100;
          }

          v108 = objc_opt_new();
          v176[0] = MEMORY[0x277D85DD0];
          v176[1] = 3221225472;
          v176[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_7;
          v176[3] = &unk_2783A8C90;
          v177 = toAppLayout;
          v109 = [fromAppLayout appLayoutWithItemsPassingTest:v176];
          [(SBDockToStageZoomWindowingModifier *)v108 setLaunchingOverDesktopSpaceAppLayout:v109];
          [(SBChainableModifier *)v108 addChildModifier:v5];

          allItems2 = v177;
          v5 = v108;
          windowManagementContext = v70;
        }

        v39 = v69;

        displayItemInSlideOver = v174;
LABEL_100:
        if (v171 && (animationStyle - 1) <= 2)
        {
          v75 = [objc_alloc(*off_2783BF150[animationStyle - 1]) initWithTransitionID:v169 fromAppLayout:fromAppLayout layoutRole:v171];
          if (v75)
          {
            v76 = v75;
            [v75 addChildModifier:v5];
            v77 = v76;

            v5 = v77;
          }

          displayItemInSlideOver = v174;
        }

        if (displayItemInSlideOver)
        {

          v78 = *v156;
          transitionID = v169;
        }

        else
        {
          transitionID = v169;
          v78 = v157;
        }

        goto LABEL_109;
      }

      v51 = [toAppLayout leafAppLayoutForItem:v15];
      if ([eventCopy isIconZoomDisabled])
      {
        v115 = *MEMORY[0x277CBF398];
        v116 = *(MEMORY[0x277CBF398] + 8);
        v117 = *(MEMORY[0x277CBF398] + 16);
        v118 = *(MEMORY[0x277CBF398] + 24);
      }

      else
      {
        [(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v51];
      }

      if (CGRectIsNull(*&v115))
      {
        v5 = 0;
LABEL_166:

        goto LABEL_90;
      }

      v5 = [[SBDockToStageZoomWindowingModifier alloc] initWithAppLayout:v51 addingToStage:1];
      if (![toAppLayout isEqual:v51])
      {
        goto LABEL_166;
      }

      v149 = v39;
      v152 = v51;
      v135 = windowManagementContext;
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_5;
      v180[3] = &unk_2783A8C90;
      v181 = v15;
      v136 = [fromAppLayout appLayoutWithItemsPassingTest:v180];
      if (!v136)
      {
        v137 = 0;
        goto LABEL_188;
      }

      v137 = v136;
      allItems3 = [v136 allItems];
      if ([allItems3 count] == 1)
      {
        v139 = [(SBContinuousExposeRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v137 ignoreOcclusion:1 ignoreCentering:0];
        v148 = [v139 count];

        if (!v148)
        {
LABEL_188:
          [(SBDockToStageZoomWindowingModifier *)v5 setLaunchingOverDesktopSpaceAppLayout:v137];

          windowManagementContext = v135;
          displayItemInSlideOver = v174;
          v39 = v149;
          v51 = v152;
          goto LABEL_166;
        }

        v137 = 0;
        allItems3 = v5;
        v5 = 0;
      }

      goto LABEL_188;
    }

    if ([eventCopy fromEnvironmentMode] == 2 && objc_msgSend(eventCopy, "toEnvironmentMode") == 3)
    {
      if (![eventCopy isMoveDisplaysTransition])
      {
        v153 = windowManagementContext;
        v18 = [SBContinuousExposeSwitcherToAppModifier alloc];
        multitaskingModifier = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        v20 = [multitaskingModifier copy];
        v5 = [(SBContinuousExposeSwitcherToAppModifier *)v18 initWithTransitionID:transitionID direction:0 multitaskingModifier:v20];

        fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];

        if (fromAppExposeBundleID)
        {
          v22 = [SBAppExposeToAppWindowingModifier alloc];
          v23 = [SBAppExposeWindowingModifier alloc];
          fromAppExposeBundleID2 = [eventCopy fromAppExposeBundleID];
          v24 = [(SBAppExposeWindowingModifier *)v23 initWithBundleIdentifier:fromAppExposeBundleID2];
          v25 = [SBFullScreenContinuousExposeSwitcherModifier alloc];
          [eventCopy toAppLayout];
          v172 = toAppLayout;
          v27 = v26 = transitionID;
          v28 = [(SBFullScreenContinuousExposeSwitcherModifier *)v25 initWithFullScreenAppLayout:v27];
          v29 = [(SBAppExposeToAppWindowingModifier *)v22 initWithSwitcherTransitionModifier:v5 fromAppExposeModifier:v24 toFullScreenContinuousExposeModifier:v28];
          v30 = v13;
          v31 = v29;

          transitionID = v26;
          toAppLayout = v172;

          v5 = v31;
          v13 = v30;
        }

        windowManagementContext = v153;
        displayItemInSlideOver = v174;
LABEL_146:

        if (v5)
        {
          goto LABEL_150;
        }

        goto LABEL_147;
      }

      goto LABEL_23;
    }

    if ([eventCopy fromEnvironmentMode] == 3 && objc_msgSend(eventCopy, "toEnvironmentMode") == 2 && (objc_msgSend(eventCopy, "toAppExposeBundleID"), v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
    {
      v79 = [SBContinuousExposeSwitcherToAppModifier alloc];
      [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      v80 = v165 = v13;
      v81 = transitionID;
      v82 = [v80 copy];
      v5 = [(SBContinuousExposeSwitcherToAppModifier *)v79 initWithTransitionID:v81 direction:1 multitaskingModifier:v82];

      transitionID = v81;
      displayItemInSlideOver = v174;
    }

    else
    {
      if ([eventCopy fromEnvironmentMode] == 3 && objc_msgSend(eventCopy, "toEnvironmentMode") == 1)
      {
        if ([eventCopy isMoveDisplaysTransition])
        {
LABEL_23:
          v33 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:eventCopy];
LABEL_24:
          v5 = v33;
          goto LABEL_146;
        }

        if (v171)
        {
          v165 = v13;
          multitaskingModifier2 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
          v90 = [multitaskingModifier2 copy];

          v154 = windowManagementContext;
          if (SBReduceMotion() || animationStyle == 1)
          {
            v112 = [SBEntityRemovalCrossblurSwitcherModifier alloc];
            transitionID2 = [eventCopy transitionID];
            fromAppLayout2 = [eventCopy fromAppLayout];
            v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)v112 initWithTransitionID:transitionID2 appLayout:fromAppLayout2 multitaskingModifier:v90];
          }

          else
          {
            entityRemovalSettings = [(SBContinuousExposeRootSwitcherModifier *)self entityRemovalSettings];
            v92 = entityRemovalSettings;
            v170 = transitionID;
            if (animationStyle == 2)
            {
              [entityRemovalSettings dosidoCommitIntentAnimationSettings];
            }

            else
            {
              [entityRemovalSettings dosidoDeclineIntentAnimationSettings];
            }
            transitionID2 = ;

            v133 = [SBEntityRemovalSlideOffscreenSwitcherModifier alloc];
            fromAppLayout2 = [eventCopy transitionID];
            fromAppLayout3 = [eventCopy fromAppLayout];
            v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)v133 initWithTransitionID:fromAppLayout2 appLayout:fromAppLayout3 direction:animationStyle != 2 animationSettings:transitionID2 multitaskingModifier:v90];

            transitionID = v170;
          }

          windowManagementContext = v154;
          goto LABEL_175;
        }

        if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
        {
          toAppLayout3 = [eventCopy toAppLayout];
          [eventCopy fromAppLayout];
          v67 = v166 = v13;
          v68 = [toAppLayout3 containsAllItemsFromAppLayout:v67];

          v13 = v166;
          if (v68)
          {
            v33 = [[SBFullScreenToPeekAnimationModifier alloc] initWithDirection:0];
            goto LABEL_24;
          }
        }

        if (displayItemInSlideOver && [fromAppLayout containsItem:displayItemInSlideOver] && (objc_msgSend(toAppLayout, "containsItem:", displayItemInSlideOver) & 1) == 0 && (objc_msgSend(eventCopy, "prefersZoomDownAnimation") & 1) == 0)
        {
          v165 = v13;
          v97 = displayItemInSlideOver;
          v98 = transitionID;
          v99 = [fromAppLayout appLayoutByRemovingItemInLayoutRole:{objc_msgSend(fromAppLayout, "layoutRoleForItem:", v97)}];
          if (v99 && (+[SBAppLayout homeScreenAppLayout](SBAppLayout, "homeScreenAppLayout"), v100 = objc_claimAutoreleasedReturnValue(), v101 = [v99 isEqual:v100], v100, (v101 & 1) == 0))
          {
            if ([eventCopy isIconZoomDisabled])
            {
              v140 = *MEMORY[0x277CBF398];
              v141 = *(MEMORY[0x277CBF398] + 8);
              v142 = *(MEMORY[0x277CBF398] + 16);
              v143 = *(MEMORY[0x277CBF398] + 24);
            }

            else
            {
              [(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v99];
            }

            if (CGRectIsNull(*&v140) || ([eventCopy isMoveDisplaysTransition] & 1) != 0)
            {
              v5 = 0;
            }

            else
            {
              v144 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v99 direction:1];
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v144 setShouldForceDefaultAnchorPointForTransition:1];
              [(SBFullScreenToHomeIconZoomSwitcherModifier *)v144 setShouldDockOrderFrontDuringTransition:1];
              v145 = [SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc];
              v146 = [(SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier *)v145 initWithAppLayout:v99 gestureEdge:4 liftOffVelocity:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
              [(SBChainableModifier *)v146 addChildModifier:v144];
              v147 = v146;

              v5 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
              [(SBChainableModifier *)v5 addChildModifier:v147];
            }
          }

          else
          {
            v5 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
          }

          transitionID = v98;
LABEL_175:
          displayItemInSlideOver = v174;
          goto LABEL_109;
        }

LABEL_126:
        v5 = 0;
        goto LABEL_146;
      }

      if ([eventCopy fromEnvironmentMode] == 2 && objc_msgSend(eventCopy, "toEnvironmentMode") == 1)
      {
        v165 = v13;
        IsValid = SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]);
        multitaskingModifier3 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        v36 = [multitaskingModifier3 copy];

        if (IsValid)
        {
          v5 = [[SBFlexibleWindowingExposeToHomePeekWindowingModifier alloc] initWithTransitionID:transitionID direction:0 exposeModifier:v36];

LABEL_109:
          v13 = v165;
          goto LABEL_146;
        }

        v5 = [[SBContinuousExposeToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:0 exposeModifier:v36];
        fromAppExposeBundleID3 = [eventCopy fromAppExposeBundleID];

        if (fromAppExposeBundleID3)
        {
          v84 = [SBAppExposeWindowingModifier alloc];
          [eventCopy fromAppExposeBundleID];
          v86 = v85 = transitionID;
          v87 = [(SBAppExposeWindowingModifier *)v84 initWithBundleIdentifier:v86];

          v88 = [[SBAppExposeToHomeWindowingModifier alloc] initWithTransitionModifier:v5 appExposeModifier:v87];
          v5 = v88;
          transitionID = v85;
          displayItemInSlideOver = v174;
        }

        v13 = v165;
LABEL_145:

        goto LABEL_146;
      }

      if ([eventCopy fromEnvironmentMode] != 1 || objc_msgSend(eventCopy, "toEnvironmentMode") != 2)
      {
LABEL_120:
        if ([eventCopy fromEnvironmentMode] != 2 && objc_msgSend(eventCopy, "fromEnvironmentMode") != 1 && objc_msgSend(eventCopy, "fromEnvironmentMode") != 3 || objc_msgSend(eventCopy, "toEnvironmentMode") != 2)
        {
          goto LABEL_126;
        }

        fromAppExposeBundleID4 = [eventCopy fromAppExposeBundleID];
        toAppExposeBundleID = [eventCopy toAppExposeBundleID];
        if (BSEqualStrings())
        {

          goto LABEL_126;
        }

        v165 = v13;
        fromAppExposeBundleID5 = [eventCopy fromAppExposeBundleID];
        if (fromAppExposeBundleID5)
        {
        }

        else
        {
          toAppExposeBundleID2 = [eventCopy toAppExposeBundleID];

          if (!toAppExposeBundleID2)
          {
            v5 = 0;
            goto LABEL_109;
          }
        }

        toAppExposeBundleID3 = [eventCopy toAppExposeBundleID];
        v104 = toAppExposeBundleID3;
        if (toAppExposeBundleID3)
        {
          fromAppExposeBundleID6 = toAppExposeBundleID3;
        }

        else
        {
          fromAppExposeBundleID6 = [eventCopy fromAppExposeBundleID];
        }

        v36 = fromAppExposeBundleID6;
        v13 = v165;

        v5 = [[SBFlexibleWindowingToAppExposeWindowingModifier alloc] initWithBundleIdentifier:v36];
        goto LABEL_145;
      }

      toAppExposeBundleID4 = [eventCopy toAppExposeBundleID];
      if (toAppExposeBundleID4)
      {

        goto LABEL_120;
      }

      fromAppExposeBundleID7 = [eventCopy fromAppExposeBundleID];

      if (fromAppExposeBundleID7)
      {
        goto LABEL_120;
      }

      multitaskingModifier4 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      v165 = v13;
      v80 = [multitaskingModifier4 copy];

      v5 = [[SBContinuousExposeToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 exposeModifier:v80];
    }

    goto LABEL_109;
  }

LABEL_147:
  if ([eventCopy isRotationTransition])
  {
    fromInterfaceOrientation4 = [eventCopy fromInterfaceOrientation];
    if (fromInterfaceOrientation4 == [eventCopy toInterfaceOrientation])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_150;
    }
  }

  v175.receiver = self;
  v175.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)&v175 transitionModifierForMainTransitionEvent:eventCopy];
LABEL_150:

  return v5;
}

- (int64_t)switcherModifierLevelForTransitionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isAppLaunchDuringWindowDragGestureTransition])
  {
    v5 = 4;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBContinuousExposeRootSwitcherModifier;
    v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v7 switcherModifierLevelForTransitionEvent:eventCopy];
  }

  return v5;
}

- (id)gestureModifierForGestureEvent:(id)event
{
  eventCopy = event;
  gestureType = [eventCopy gestureType];
  v6 = 0;
  if (gestureType > 7)
  {
    if (gestureType > 9)
    {
      if (gestureType == 11)
      {
        v12 = SBRevealContinuousExposeStripOverflowRootSwitcherModifier;
      }

      else
      {
        if (gestureType != 10)
        {
          goto LABEL_30;
        }

        v12 = SBRevealContinuousExposeStripsRootSwitcherModifier;
      }

      v8 = [[v12 alloc] initWithInitialAppLayout:self->_currentAppLayout];
    }

    else if (gestureType == 8)
    {
      if (![eventCopy isIndirectPanGestureEvent])
      {
        currentAppLayout = self->_currentAppLayout;
        if (currentAppLayout)
        {
          selectedAppLayout = currentAppLayout;
        }

        else
        {
          v22 = +[SBAppLayout homeScreenAppLayout];
          selectedAppLayout = [v22 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBContinuousExposeRootSwitcherModifier displayOrdinal](self, "displayOrdinal")}];
        }

        v11 = [[SBContinuousExposeWindowDragRootSwitcherModifier alloc] initWithStartingEnvironmentMode:[(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode] initialAppLayout:selectedAppLayout];
        goto LABEL_29;
      }

      v8 = objc_alloc_init(SBStashSlideOverItemIndirectGestureWindowingModifier);
    }

    else
    {
      v8 = -[SBItemResizeGestureRootSwitcherModifier initWithStartingEnvironmentMode:selectedLayoutRole:]([SBItemResizeGestureRootSwitcherModifier alloc], "initWithStartingEnvironmentMode:selectedLayoutRole:", 3, [eventCopy selectedLayoutRole]);
    }

LABEL_23:
    v6 = v8;
    goto LABEL_30;
  }

  if (gestureType > 5)
  {
    if (gestureType != 6)
    {
      v9 = [SBSplitResizeWindowingModifier alloc];
      selectedAppLayout = [eventCopy selectedAppLayout];
      v11 = [(SBSplitResizeWindowingModifier *)v9 initWithSplitPairAppLayout:selectedAppLayout];
LABEL_29:
      v6 = v11;

      goto LABEL_30;
    }

    v8 = [[SBContinuousExposeDragAndDropGestureRootSwitcherModifier alloc] initWithStartingEnvironmentMode:3 appLayout:self->_currentAppLayout];
    goto LABEL_23;
  }

  if (gestureType != 1)
  {
    if (gestureType != 2)
    {
      goto LABEL_30;
    }

    v7 = SBGridSwipeUpGestureRootSwitcherModifier;
    goto LABEL_17;
  }

  if (!-[SBContinuousExposeRootSwitcherModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") || (-[SBContinuousExposeRootSwitcherModifier windowManagementContext](self, "windowManagementContext"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 isFlexibleWindowingEnabled], v13, (v14 & 1) != 0))
  {
    v7 = SBContinuousExposeHomeGestureRootSwitcherModifier;
LABEL_17:
    v15 = [v7 alloc];
    _effectiveEnvironmentMode = [(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode];
    v17 = [(SBContinuousExposeRootSwitcherModifier *)self multitaskingModifierForEvent:eventCopy];
    v6 = [v15 initWithStartingEnvironmentMode:_effectiveEnvironmentMode multitaskingModifier:v17];

    goto LABEL_30;
  }

  v19 = [SBHomeGestureRootSwitcherModifier alloc];
  _effectiveEnvironmentMode2 = [(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode];
  v21 = [(SBContinuousExposeRootSwitcherModifier *)self multitaskingModifierForEvent:eventCopy];
  v6 = [(SBHomeGestureRootSwitcherModifier *)v19 initWithStartingEnvironmentMode:_effectiveEnvironmentMode2 multitaskingModifier:v21];

  [(SBHomeGestureRootSwitcherModifier *)v6 setEnsuresSelectedAppLayoutUsesAnchorPointSpacePinning:1];
LABEL_30:

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

- (id)highlightModifierForHighlightEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isHandled] & 1) != 0 || (objc_msgSend(eventCopy, "isHoverEvent"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [SBHighlightSwitcherModifier alloc];
    layoutRole = [eventCopy layoutRole];
    appLayout = [eventCopy appLayout];
    v4 = [(SBHighlightSwitcherModifier *)v5 initWithLayoutRole:layoutRole inAppLayout:appLayout listensForHighlightEvents:1];
  }

  return v4;
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

- (id)userScrollingModifierForScrollEvent:(id)event
{
  windowManagementContext = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    currentEnvironmentMode = self->_currentEnvironmentMode;

    if (currentEnvironmentMode != 2)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = objc_alloc_init(SBScrollingSwitcherModifier);
LABEL_6:

  return v6;
}

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event
{
  eventCopy = event;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:appLayout];

  return v6;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isTransitionEvent])
  {
    v5 = eventCopy;
    v6 = [v5 copy];
    unmodifiedCurrentTransitionEvent = self->_unmodifiedCurrentTransitionEvent;
    self->_unmodifiedCurrentTransitionEvent = v6;

    if ([v5 phase] == 2)
    {
      if (SBPeekConfigurationIsValid([v5 toPeekConfiguration]))
      {
        toAppLayout = [v5 toAppLayout];
      }

      else
      {
        toAppLayout = 0;
      }

      peekingAppLayout = self->_peekingAppLayout;
      self->_peekingAppLayout = toAppLayout;
    }
  }

  v27.receiver = self;
  v27.super_class = SBContinuousExposeRootSwitcherModifier;
  v10 = [(SBFluidSwitcherRootSwitcherModifier *)&v27 handleEvent:eventCopy];
  v11 = self->_unmodifiedCurrentTransitionEvent;
  if (v11)
  {
    self->_unmodifiedCurrentTransitionEvent = 0;
  }

  if ([eventCopy isTransitionEvent])
  {
    v12 = eventCopy;
    toAppLayout2 = [v12 toAppLayout];
    fromAppLayout = [v12 fromAppLayout];
    if (fromAppLayout)
    {
      v15 = toAppLayout2 == 0;
    }

    else
    {
      v15 = 0;
    }

    self->_isTransitionToNilAppLayoutInProgress = v15;
    isAnimated = [v12 isAnimated];
    isMoveDisplaysTransition = [v12 isMoveDisplaysTransition];
    if (fromAppLayout)
    {
      v18 = isMoveDisplaysTransition;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1 && toAppLayout2)
    {
      if ([fromAppLayout containsAllItemsFromAppLayout:toAppLayout2])
      {
        goto LABEL_42;
      }
    }

    else if (v18)
    {
LABEL_42:
      if ([v12 phase] == 3)
      {
        self->_isTransitionToNilAppLayoutInProgress = 0;
      }

      goto LABEL_45;
    }

    if (toAppLayout2 && fromAppLayout)
    {
      if ((([v12 phase] != 2) & isAnimated) == 0 && (!objc_msgSend(toAppLayout2, "isEqual:", fromAppLayout) || !-[SBAppLayout isEqual:](self->_effectiveAppLayoutOnStage, "isEqual:", toAppLayout2)))
      {
        objc_storeStrong(&self->_effectiveAppLayoutOnStage, toAppLayout2);
        v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
        v20 = fromAppLayout;
LABEL_36:
        v22 = toAppLayout2;
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    if (v15)
    {
      if ((([v12 phase] != 3) & isAnimated) != 0)
      {
        goto LABEL_40;
      }

      effectiveAppLayoutOnStage = self->_effectiveAppLayoutOnStage;
      self->_effectiveAppLayoutOnStage = 0;

      v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
      v20 = fromAppLayout;
    }

    else
    {
      if (toAppLayout2 && !fromAppLayout)
      {
        if ((([v12 phase] != 1) & isAnimated) == 0)
        {
          objc_storeStrong(&self->_effectiveAppLayoutOnStage, toAppLayout2);
          v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
          v20 = 0;
          goto LABEL_36;
        }

LABEL_40:
        v23 = 0;
        goto LABEL_41;
      }

      if (toAppLayout2 | fromAppLayout || (([v12 phase] != 1) & isAnimated) != 0)
      {
        goto LABEL_40;
      }

      v26 = self->_effectiveAppLayoutOnStage;
      self->_effectiveAppLayoutOnStage = 0;

      v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
      v20 = 0;
    }

    v22 = 0;
LABEL_37:
    v23 = [(SBInvalidateContinuousExposeIdentifiersEventResponse *)v19 initWithTransitioningFromAppLayout:v20 transitioningToAppLayout:v22 animated:isAnimated];
LABEL_41:
    v24 = SBAppendSwitcherModifierResponse(v23, v10);

    v10 = v24;
    goto LABEL_42;
  }

LABEL_45:

  return v10;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v30.receiver = self;
  v30.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v30 handleTransitionEvent:eventCopy];
  windowManagementContext = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  toAppLayout = [eventCopy toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = toAppLayout;

  self->_currentEnvironmentMode = [eventCopy toEnvironmentMode];
  v9 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeStripModifierKey"];
  if ((-[SBContinuousExposeRootSwitcherModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") & 1) != 0 || ([windowManagementContext isFlexibleWindowingEnabled] & 1) == 0)
  {
    LOBYTE(isAutomaticStageCreationEnabled) = 0;
    v11 = v9 == 0;
  }

  else
  {
    isAutomaticStageCreationEnabled = [windowManagementContext isAutomaticStageCreationEnabled];
    v11 = v9 == 0;
    if (!v9 && isAutomaticStageCreationEnabled)
    {
      v9 = objc_opt_new();
      [(SBChainableModifier *)self addChildModifier:v9 atLevel:9 key:@"SBContinuousExposeStripModifierKey"];
      goto LABEL_10;
    }
  }

  if (!v11 && (isAutomaticStageCreationEnabled & 1) == 0)
  {
    [(SBChainableModifier *)self removeChildModifier:v9];
  }

LABEL_10:
  windowManagementContext2 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ((-[SBInvalidateAdjustedAppLayoutsSwitcherEventResponse isFlexibleWindowingEnabled](windowManagementContext2, "isFlexibleWindowingEnabled") & 1) == 0 && ([eventCopy phase] == 2 || (objc_msgSend(eventCopy, "isAnimated") & 1) == 0) && SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "toPeekConfiguration")))
  {
    v13 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposePeekModifierKey"];

    if (v13)
    {
      goto LABEL_17;
    }

    windowManagementContext2 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v14 = SBAppendSwitcherModifierResponse(v5, windowManagementContext2);

    v15 = [SBContinuousExposePeekSwitcherModifier alloc];
    toAppLayout2 = [eventCopy toAppLayout];
    v17 = -[SBContinuousExposePeekSwitcherModifier initWithAppLayout:configuration:](v15, "initWithAppLayout:configuration:", toAppLayout2, [eventCopy toPeekConfiguration]);

    [(SBChainableModifier *)self addChildModifier:v17 atLevel:2 key:@"SBContinuousExposePeekModifierKey"];
    v5 = v14;
  }

LABEL_17:
  if ([eventCopy phase] == 2 && ((objc_msgSend(eventCopy, "isAppLaunchDuringWindowDragGestureTransition") & 1) != 0 || objc_msgSend(eventCopy, "isUnstashFromHomeTransition")))
  {
    initialFloorModifierForWindowDrag = self->_initialFloorModifierForWindowDrag;
    floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    LOBYTE(initialFloorModifierForWindowDrag) = [(SBSwitcherModifier *)initialFloorModifierForWindowDrag isEqual:floorModifier];

    if ((initialFloorModifierForWindowDrag & 1) == 0)
    {
      floorModifier2 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
      v21 = self->_initialFloorModifierForWindowDrag;
      self->_initialFloorModifierForWindowDrag = floorModifier2;
    }
  }

  displayItemInSlideOver = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
  fromAppLayout = [eventCopy fromAppLayout];
  if ([eventCopy phase] == 2 && displayItemInSlideOver && objc_msgSend(fromAppLayout, "containsItem:", displayItemInSlideOver))
  {
    fromDisplayItemLayoutAttributesMap = [eventCopy fromDisplayItemLayoutAttributesMap];
    v25 = [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)fromDisplayItemLayoutAttributesMap objectForKey:displayItemInSlideOver];
    slideOverConfiguration = [(SBDisplayItemLayoutAttributes *)v25 slideOverConfiguration];
    if ((v29[33] & 1) != 0 || [(SBAppLayout *)self->_currentAppLayout containsItem:displayItemInSlideOver, slideOverConfiguration])
    {

LABEL_28:
      goto LABEL_29;
    }

    v28 = [fromAppLayout containsAllItemsFromAppLayout:self->_currentAppLayout];

    if (v28)
    {
      fromDisplayItemLayoutAttributesMap = [[SBTransientlyVisibleSlideOverTongueWindowingModifier alloc] initWithTonguePresentationReason:1];
      [(SBChainableModifier *)self addChildModifier:fromDisplayItemLayoutAttributesMap atLevel:4 key:0];
      goto LABEL_28;
    }
  }

LABEL_29:

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v11 handleGestureEvent:eventCopy];
  windowManagementContext = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ((-[SBInvalidateAdjustedAppLayoutsSwitcherEventResponse isAutomaticStageCreationEnabled](windowManagementContext, "isAutomaticStageCreationEnabled") & 1) == 0 && ![eventCopy phase])
  {
    isTransitionToNilAppLayoutInProgress = self->_isTransitionToNilAppLayoutInProgress;

    if (!isTransitionToNilAppLayoutInProgress)
    {
      goto LABEL_6;
    }

    effectiveAppLayoutOnStage = self->_effectiveAppLayoutOnStage;
    self->_effectiveAppLayoutOnStage = 0;

    self->_isTransitionToNilAppLayoutInProgress = 0;
    windowManagementContext = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendSwitcherModifierResponse(v5, windowManagementContext);

    v5 = v9;
  }

LABEL_6:

  return v5;
}

- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event
{
  v58 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v55.receiver = self;
  v55.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v55 handleContinuousExposeIdentifiersChangedEvent:eventCopy];
  if ([eventCopy isAnimated] && -[SBContinuousExposeRootSwitcherModifier _effectiveEnvironmentMode](self, "_effectiveEnvironmentMode") == 3)
  {
    transitioningFromAppLayout = [eventCopy transitioningFromAppLayout];
    transitioningToAppLayout = [eventCopy transitioningToAppLayout];
    v8 = transitioningToAppLayout;
    if (!transitioningFromAppLayout || !transitioningToAppLayout)
    {
      goto LABEL_28;
    }

    v38 = v5;
    previousContinuousExposeIdentifiersInSwitcher = [eventCopy previousContinuousExposeIdentifiersInSwitcher];
    v39 = eventCopy;
    previousContinuousExposeIdentifiersInStrip = [eventCopy previousContinuousExposeIdentifiersInStrip];
    continuousExposeIdentifiersInStrip = [(SBContinuousExposeRootSwitcherModifier *)self continuousExposeIdentifiersInStrip];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke;
    v52[3] = &unk_2783BF130;
    v12 = continuousExposeIdentifiersInStrip;
    v53 = v12;
    v36 = v8;
    v34 = v8;
    v54 = v34;
    v13 = [previousContinuousExposeIdentifiersInStrip bs_filter:v52];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke_2;
    v49[3] = &unk_2783BF130;
    v14 = previousContinuousExposeIdentifiersInStrip;
    v50 = v14;
    v37 = transitioningFromAppLayout;
    v40 = transitioningFromAppLayout;
    v51 = v40;
    v35 = v12;
    v15 = [v12 bs_filter:v49];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[SBContinuousExposeIdentifierSlideModifier alloc] initWithContinuousExposeIdentifier:*(*(&v45 + 1) + 8 * i) previousContinuousExposeIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher previousContinuousExposeIdentifiersInStrip:v14 direction:1];
          [(SBChainableModifier *)self addChildModifier:v21 atLevel:11 key:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v18);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v41 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[SBContinuousExposeIdentifierSlideModifier alloc] initWithContinuousExposeIdentifier:*(*(&v41 + 1) + 8 * j) previousContinuousExposeIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher previousContinuousExposeIdentifiersInStrip:v14 direction:0];
          [(SBChainableModifier *)self addChildModifier:v27 atLevel:11 key:0];
        }

        v24 = [v22 countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v24);
    }

    continuousExposeIdentifier = [v40 continuousExposeIdentifier];
    continuousExposeIdentifier2 = [v34 continuousExposeIdentifier];
    if (BSEqualStrings())
    {
      v30 = [v40 containsAnyItemFromAppLayout:v34];

      v5 = v38;
      eventCopy = v39;
      if (v30)
      {
LABEL_27:

        v8 = v36;
        transitioningFromAppLayout = v37;
LABEL_28:

        goto LABEL_29;
      }

      continuousExposeIdentifier3 = [v34 continuousExposeIdentifier];
      continuousExposeIdentifier = [(SBContinuousExposeRootSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:continuousExposeIdentifier3];

      if (![continuousExposeIdentifier containsObject:v40] || (objc_msgSend(v39, "isGestureInitiated") & 1) != 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      continuousExposeIdentifier2 = [continuousExposeIdentifier lastObject];
      v32 = [[SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier alloc] initWithAppLayout:v40 behindAppLayout:continuousExposeIdentifier2 generationCount:[(SBContinuousExposeRootSwitcherModifier *)self continuousExposeIdentifiersGenerationCount]];
      [(SBChainableModifier *)self addChildModifier:v32 atLevel:11 key:0];
    }

    else
    {
      v5 = v38;
      eventCopy = v39;
    }

    goto LABEL_26;
  }

LABEL_29:

  return v5;
}

uint64_t __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) continuousExposeIdentifier];
    v4 = BSEqualStrings() ^ 1;
  }

  return v4;
}

uint64_t __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 40) continuousExposeIdentifier];
    v4 = BSEqualStrings() ^ 1;
  }

  return v4;
}

- (id)handleSlideOverEdgeProtectTongueEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v9 handleSlideOverEdgeProtectTongueEvent:eventCopy];
  isTonguePresented = [eventCopy isTonguePresented];

  if (isTonguePresented)
  {
    v7 = [[SBTransientlyVisibleSlideOverTongueWindowingModifier alloc] initWithTonguePresentationReason:0];
    [(SBChainableModifier *)self addChildModifier:v7 atLevel:4 key:0];
  }

  return v5;
}

- (id)handleContinuousExposeStripEdgeProtectTongueEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleContinuousExposeStripEdgeProtectTongueEvent:eventCopy];
  isTonguePresented = [eventCopy isTonguePresented];

  self->_isStripTonguePresented = isTonguePresented;
  v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  return v8;
}

- (id)handleDidEdgeProtectResizeGrabberEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBContinuousExposeRootSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v13 handleDidEdgeProtectResizeGrabberEvent:eventCopy];
  v6 = [SBResizeGrabberHintingSwitcherModifier alloc];
  displayItem = [eventCopy displayItem];
  corners = [eventCopy corners];

  v9 = [(SBResizeGrabberHintingSwitcherModifier *)v6 initWithDisplayItem:displayItem corners:corners];
  identifier = [(SBResizeGrabberHintingSwitcherModifier *)v9 identifier];
  v11 = [(SBChainableModifier *)self childModifierByKey:identifier];
  if (!v11)
  {
    [(SBChainableModifier *)self addChildModifier:v9 atLevel:7 key:identifier];
  }

  return v5;
}

- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)event
{
  v21[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v20.receiver = self;
  v20.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v20 handleMoveDisplayItemFromOtherDisplayEvent:eventCopy];
  if (([eventCopy isHandled] & 1) == 0)
  {
    displayItem = [eventCopy displayItem];
    v19.receiver = self;
    v19.super_class = SBContinuousExposeRootSwitcherModifier;
    appLayoutOnStage = [(SBContinuousExposeRootSwitcherModifier *)&v19 appLayoutOnStage];
    allItems = [appLayoutOnStage allItems];
    v9 = [allItems count];

    if (v9)
    {
      v10 = [appLayoutOnStage appLayoutByInsertingItem:displayItem];
    }

    else
    {
      v11 = [SBAppLayout alloc];
      v21[0] = displayItem;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      LOBYTE(v18) = 0;
      v10 = [(SBAppLayout *)v11 initWithItems:v12 centerItem:0 floatingItem:0 configuration:0 centerConfiguration:0 environment:1 hidden:v18 preferredDisplayOrdinal:[(SBContinuousExposeRootSwitcherModifier *)self displayOrdinal]];

      appLayoutOnStage = v12;
    }

    v13 = [(SBContinuousExposeRootSwitcherModifier *)self appLayoutByBringingItemToFront:displayItem inAppLayout:v10];

    v14 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v14 setAppLayout:v13];
    v15 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v14 gestureInitiated:0];
    v16 = SBAppendSwitcherModifierResponse(v15, v5);

    [eventCopy handleWithReason:@"Continuous Expose Root"];
    v5 = v16;
  }

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  reason = [eventCopy reason];
  v6 = [reason isEqualToString:@"SBBeginAnimatedStripDismissalReason"];

  if (v6)
  {
    v7 = objc_opt_new();
    [(SBChainableModifier *)self addChildModifier:v7];

    [eventCopy handleWithReason:@"Continuous Expose Root"];
  }

  v10.receiver = self;
  v10.super_class = SBContinuousExposeRootSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleTimerEvent:eventCopy];

  return v8;
}

- (id)displayItemsToExcludeFromStrip
{
  displayItemInSlideOver = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver)
  {
    [MEMORY[0x277CBEB98] setWithObject:displayItemInSlideOver];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (SBSwitcherContinuousExposeStripTongueAttributes)continuousExposeStripTongueAttributes
{
  if (self->_isStripTonguePresented)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if ([(SBContinuousExposeRootSwitcherModifier *)self isRTLEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = SBSwitcherContinuousExposeStripTongueAttributesMake(v2, v3);
  result.direction = v5;
  result.state = v4;
  return result;
}

- (int64_t)_effectiveEnvironmentMode
{
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (floorModifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v3 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v3 = 2;
        }

        else
        {
          v3 = 1;
        }
      }
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)_isActivatingAppLayoutUnoccludedForEvent:(id)event
{
  eventCopy = event;
  activatingAppLayout = [eventCopy activatingAppLayout];
  v5 = activatingAppLayout;
  if (activatingAppLayout)
  {
    v6 = [activatingAppLayout itemForLayoutRole:1];
    fromDisplayItemLayoutAttributesMap = [eventCopy fromDisplayItemLayoutAttributesMap];
    v8 = [fromDisplayItemLayoutAttributesMap objectForKey:v6];
    foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)v8 foregroundCameraShutterButtonPIDs];

    toDisplayItemLayoutAttributesMap = [eventCopy toDisplayItemLayoutAttributesMap];
    v11 = [toDisplayItemLayoutAttributesMap objectForKey:v6];
    foregroundCameraShutterButtonPIDs2 = [(SBCameraHardwareButton *)v11 foregroundCameraShutterButtonPIDs];

    v14 = foregroundCameraShutterButtonPIDs == 1 && foregroundCameraShutterButtonPIDs2 == 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end