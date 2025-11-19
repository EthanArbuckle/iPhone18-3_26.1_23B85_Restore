@interface SBContinuousExposeRootSwitcherModifier
- (BOOL)_isActivatingAppLayoutUnoccludedForEvent:(id)a3;
- (SBSwitcherContinuousExposeStripTongueAttributes)continuousExposeStripTongueAttributes;
- (id)displayItemsToExcludeFromStrip;
- (id)floorModifierForGestureEvent:(id)a3;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3;
- (id)gestureModifierForGestureEvent:(id)a3;
- (id)handleContinuousExposeIdentifiersChangedEvent:(id)a3;
- (id)handleContinuousExposeStripEdgeProtectTongueEvent:(id)a3;
- (id)handleDidEdgeProtectResizeGrabberEvent:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)a3;
- (id)handleSlideOverEdgeProtectTongueEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)highlightModifierForHighlightEvent:(id)a3;
- (id)multitaskingModifierForEvent:(id)a3;
- (id)removalModifierForRemovalEvent:(id)a3;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
- (id)userScrollingModifierForScrollEvent:(id)a3;
- (int64_t)_effectiveEnvironmentMode;
- (int64_t)switcherModifierLevelForTransitionEvent:(id)a3;
@end

@implementation SBContinuousExposeRootSwitcherModifier

- (id)floorModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v13 = objc_alloc_init(SBHomeScreenContinuousExposeSwitcherModifier);
    goto LABEL_48;
  }

  v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  v6 = [v4 toEnvironmentMode];
  v7 = [v4 toAppLayout];
  v8 = [v4 toAppExposeBundleID];
  v9 = v8;
  switch(v6)
  {
    case 1:
      if (SBPeekConfigurationIsValid([v4 toPeekConfiguration]))
      {
        if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v5 peekingAppLayout], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "toAppLayout"), v19 = objc_claimAutoreleasedReturnValue(), v20 = BSEqualObjects(), v19, v18, !v20))
        {
          v21 = [SBHomePeekWindowingModifier alloc];
          v22 = [v4 toAppLayout];
          v13 = -[SBHomePeekWindowingModifier initWithPeekingAppLayout:configuration:](v21, "initWithPeekingAppLayout:configuration:", v22, [v4 toPeekConfiguration]);

          goto LABEL_47;
        }
      }

      else if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v26 = objc_alloc_init(SBHomeScreenContinuousExposeSwitcherModifier);
        goto LABEL_46;
      }

      v26 = v5;
      goto LABEL_46;
    case 2:
      v14 = [v4 toAppExposeBundleID];
      if (v14)
      {
        if (v5 && ((v15 = objc_opt_class(), v16 = v5, !v15) ? (v17 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v17 = 0) : (v17 = v16), v28 = v17, v16, [v28 appExposeBundleIdentifier], v29 = objc_claimAutoreleasedReturnValue(), v28, LODWORD(v28) = objc_msgSend(v29, "isEqualToString:", v14), v29, v28))
        {
          v27 = v16;
        }

        else
        {
          v27 = [[SBAppExposeWindowingModifier alloc] initWithBundleIdentifier:v14];
        }
      }

      else
      {
        v27 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      }

      v13 = v27;

      goto LABEL_47;
    case 3:
      if (!v8 && v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v5;
          v11 = [v10 fullScreenAppLayout];
          v12 = [v11 isEqual:v7];

          v13 = v12 ? v10 : 0;
          [v10 setContinuousExposeConfigurationChangeTransition:{objc_msgSend(v4, "isContinuousExposeConfigurationChangeEvent")}];

          if (v13)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_41;
      }

      if (!v8)
      {
LABEL_41:
        v13 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v7];
        -[SBHomeScreenContinuousExposeSwitcherModifier setContinuousExposeConfigurationChangeTransition:](v13, "setContinuousExposeConfigurationChangeTransition:", [v4 isContinuousExposeConfigurationChangeEvent]);
        goto LABEL_47;
      }

      if (v5 && ((v23 = objc_opt_class(), v24 = v5, !v23) ? (v25 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v25 = 0) : (v25 = v24), v30 = v25, v24, [v30 appExposeBundleIdentifier], v31 = objc_claimAutoreleasedReturnValue(), v30, LODWORD(v30) = objc_msgSend(v31, "isEqualToString:", v9), v31, v30))
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

- (id)floorModifierForGestureEvent:(id)a3
{
  v4 = a3;
  if ([v4 isWindowDragGestureEvent])
  {
    v5 = [v4 phase];
    v6 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    v7 = [v4 selectedAppLayout];
    v8 = [(SBContinuousExposeRootSwitcherModifier *)self proposedAppLayoutForWindowDrag];
    v9 = [v8 containsAnyItemFromAppLayout:v7];
    switch(v5)
    {
      case 3:
        initialFloorModifierForWindowDrag = self->_initialFloorModifierForWindowDrag;
        self->_initialFloorModifierForWindowDrag = 0;

        break;
      case 2:
        if (v9)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && ([v4 unstashingFromHome] & 1) == 0)
          {
            v10 = [[SBFullScreenContinuousExposeSwitcherModifier alloc] initWithFullScreenAppLayout:v8];
            goto LABEL_6;
          }
        }

        else if (([v6 isEqual:self->_initialFloorModifierForWindowDrag] & 1) == 0)
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
        objc_storeStrong(&self->_initialFloorModifierForWindowDrag, v6);
        v10 = v6;
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

- (id)multitaskingModifierForEvent:(id)a3
{
  v3 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
  if (!v3)
  {
    v3 = objc_alloc_init(SBExposeWindowingModifier);
  }

  return v3;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 isiPadOSWindowingModeChangeEvent])
  {
    goto LABEL_2;
  }

  if (([v4 isHandled] & 1) == 0 && (objc_msgSend(v4, "isGestureInitiated") & 1) == 0 && objc_msgSend(v4, "isAnimated"))
  {
    v6 = [v4 transitionID];
    v7 = [v4 fromEnvironmentMode];
    v8 = [v4 toEnvironmentMode];
    v9 = [v4 fromAppLayout];
    v10 = [v4 toAppLayout];
    v163 = [v4 fromInterfaceOrientation];
    v162 = [v4 toInterfaceOrientation];
    v11 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
    v158 = [v11 isAutomaticStageCreationEnabled];
    v12 = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
    v13 = [v4 removalContextForAppLayout:v9];
    v161 = [v13 animationStyle];
    v173 = [v13 displayItem];
    v171 = [v9 layoutRoleForItem:?];
    v174 = v12;
    if (v7 == 3 && v8 == 3)
    {
      v167 = [v4 previousDesktopItems];
      v160 = [(SBContinuousExposeRootSwitcherModifier *)self desktopSpaceDisplayItems];
      v159 = [v4 minimizingDisplayItem];
      v14 = [v4 activatingAppLayout];
      v15 = [v14 itemForLayoutRole:1];

      v16 = v174;
      if (!v15)
      {
        if ([v4 isLaunchingFromDockTransition])
        {
          v17 = [(SBContinuousExposeRootSwitcherModifier *)self lastInteractedItemsInAppLayout:v10];
          v188[0] = MEMORY[0x277D85DD0];
          v188[1] = 3221225472;
          v188[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke;
          v188[3] = &unk_2783A8C90;
          v189 = v9;
          v15 = [v17 bs_firstObjectPassingTest:v188];

          v16 = v174;
        }

        else
        {
          v15 = 0;
        }
      }

      v165 = v13;
      v169 = v6;
      if (v16)
      {
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_2;
        v186[3] = &unk_2783A8C90;
        v156 = &v187;
        v38 = v16;
        v187 = v38;
        v157 = [v9 appLayoutWithItemsPassingTest:v186];
        v184[0] = MEMORY[0x277D85DD0];
        v184[1] = 3221225472;
        v184[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_3;
        v184[3] = &unk_2783A8C90;
        v155 = &v185;
        v185 = v38;
        v39 = [v10 appLayoutWithItemsPassingTest:v184];
      }

      else
      {
        v157 = v9;
        v39 = v10;
      }

      if (v9)
      {
        if (v10)
        {
          if ([v9 isEqual:v10])
          {
            v40 = [v4 fromInterfaceOrientation];
            if (v40 != [v4 toInterfaceOrientation])
            {
              v58 = [SBRotationSwitcherModifier alloc];
              v59 = [v4 toAppLayout];
              v60 = v39;
              v61 = v11;
              v62 = [v4 fromInterfaceOrientation];
              v63 = [v4 toInterfaceOrientation];
              v64 = v62;
              v11 = v61;
              v39 = v60;
              v5 = [(SBRotationSwitcherModifier *)v58 initWithTransitionID:v169 appLayout:v59 fromInterfaceOrientation:v64 toInterfaceOrientation:v63];

              -[SBDockToStageZoomWindowingModifier setShouldNotUseAnchorPointToPinLayoutRolesToSpace:](v5, "setShouldNotUseAnchorPointToPinLayoutRolesToSpace:", [v11 isChamoisOrFlexibleWindowing] ^ 1);
LABEL_89:
              v12 = v174;
              goto LABEL_90;
            }
          }
        }
      }

      if ([v4 isAnyPulseEvent])
      {
        if (![(SBContinuousExposeRootSwitcherModifier *)self _isActivatingAppLayoutUnoccludedForEvent:v4])
        {
          goto LABEL_91;
        }

        v41 = [v4 activatingAppLayout];
        v42 = v41;
        if (v41 == v10)
        {
          v49 = [[SBPulseTransitionSwitcherModifier alloc] initWithTransitionID:v169 appLayout:v41];
        }

        else
        {
          v43 = [v41 itemForLayoutRole:1];
          v44 = v39;
          v45 = [v10 layoutRoleForItem:v43];

          v46 = [SBSplitDisplayItemPulseTransitionSwitcherModifier alloc];
          v47 = [v11 isChamoisOrFlexibleWindowing];
          v48 = v45;
          v39 = v44;
          v49 = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)v46 initWithTransitionID:v169 appLayout:v10 layoutRole:v48 chamoisWindowingUIEnabled:v47];
        }

        goto LABEL_88;
      }

      v12 = v174;
      if ([v4 isMoveDisplaysTransition])
      {
        v50 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
        goto LABEL_47;
      }

      if (v159 && !(v158 & 1 | (([v9 containsItem:v159] & 1) == 0)) && objc_msgSend(v4, "prefersZoomDownAnimation"))
      {
        v51 = [v9 leafAppLayoutForItem:v159];
        if ([v4 isIconZoomDisabled])
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
          if (CGRectIsNull(v191) || ([(SBContinuousExposeRootSwitcherModifier *)self homeScreenIconLocationForAppLayout:v51], v119 = objc_claimAutoreleasedReturnValue(), v120 = *MEMORY[0x277D66690], v119, v121 = v119 == v120, v12 = v174, !v121))
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
          v150 = [v51 allItems];
          v128 = [v150 firstObject];
          v5 = [(SBPuffAwayItemWindowingModifier *)v127 initWithDisplayItem:v128];

          v12 = v174;
        }

        else
        {
          v151 = [[SBDockToStageZoomWindowingModifier alloc] initWithAppLayout:v51 addingToStage:0];
          if ([v9 isEqual:v51])
          {
            v182[0] = MEMORY[0x277D85DD0];
            v182[1] = 3221225472;
            v182[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_4;
            v182[3] = &unk_2783A8C90;
            v183 = v159;
            v129 = [v10 appLayoutWithItemsPassingTest:v182];
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
        if ([v10 containsItem:v174] && (objc_msgSend(v9, "containsItem:", v174) & 1) == 0 && objc_msgSend(v157, "containsAllItemsFromAppLayout:", v39))
        {
          v56 = [SBStashSlideOverItemAnimationModifier alloc];
          v57 = 1;
LABEL_170:
          v50 = [(SBStashSlideOverItemAnimationModifier *)v56 initWithDirection:v57];
          goto LABEL_47;
        }

        if ([v9 containsItem:v174] && (objc_msgSend(v10, "containsItem:", v174) & 1) == 0 && (objc_msgSend(v4, "prefersZoomDownAnimation") & 1) == 0)
        {
          v56 = [SBStashSlideOverItemAnimationModifier alloc];
          v57 = 0;
          goto LABEL_170;
        }
      }

      if (![v4 isLaunchingFromDockTransition] || !v15 || (objc_msgSend(v9, "containsItem:", v15) & 1) != 0 || (objc_msgSend(v167, "containsObject:", v15) & 1) != 0 || v158 && !objc_msgSend(v10, "containsAnyItemFromAppLayout:", v157))
      {
        if (!v173 || ![v9 containsItem:v173] || !objc_msgSend(v167, "count") || v158 & 1 | ((objc_msgSend(v10, "containsAllItemsFromSet:", v167) & 1) == 0))
        {
          if (!v174)
          {
            goto LABEL_91;
          }

          if (![v10 containsItem:v174] || !objc_msgSend(v9, "containsItem:", v174) || !v157 || !v39 || (objc_msgSend(v4, "isCommandTabTransition") & 1) == 0 && (objc_msgSend(v4, "isLaunchingFromDockTransition") & 1) == 0 && !objc_msgSend(v4, "isSpotlightTransition") || (objc_msgSend(v39, "containsAnyItemFromAppLayout:", v157) & 1) != 0)
          {
            if (!v158 || ![v9 containsItem:v174] || (objc_msgSend(v10, "containsItem:", v174) & 1) != 0)
            {
              goto LABEL_91;
            }

            v65 = [SBDockToStageZoomWindowingModifier alloc];
            v42 = [v9 leafAppLayoutForItem:v174];
            v49 = [(SBDockToStageZoomWindowingModifier *)v65 initWithAppLayout:v42 addingToStage:0];
LABEL_88:
            v5 = v49;

            goto LABEL_89;
          }

          v50 = [[SBFullScreenCrossBlurBehindSlideOverItemWindowingModifier alloc] initWithFromAppLayout:v9 toAppLayout:v10];
LABEL_47:
          v5 = v50;
          goto LABEL_90;
        }

        v5 = objc_opt_new();
        v178[0] = MEMORY[0x277D85DD0];
        v178[1] = 3221225472;
        v178[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_6;
        v178[3] = &unk_2783A8C90;
        v179 = v173;
        v131 = [v10 appLayoutWithItemsPassingTest:v178];
        [(SBDockToStageZoomWindowingModifier *)v5 setLaunchingOverDesktopSpaceAppLayout:v131];

        v12 = v174;
LABEL_90:
        if (v5)
        {
          goto LABEL_100;
        }

LABEL_91:
        v69 = v39;
        v70 = v11;
        v71 = [SBContinuousExposeAppToAppModifier alloc];
        v72 = [v4 fromDisplayItemLayoutAttributesMap];
        v73 = [v4 toDisplayItemLayoutAttributesMap];
        v5 = [(SBContinuousExposeAppToAppModifier *)v71 initWithTransitionID:v169 fromAppLayout:v9 fromInterfaceOrientation:v163 toAppLayout:v10 toInterfaceOrientation:v162 fromDisplayItemLayoutAttributesMap:v72 toDisplayItemLayoutAttributesMap:v73];

        -[SBDockToStageZoomWindowingModifier setContinuousExposeConfigurationChangeTransition:](v5, "setContinuousExposeConfigurationChangeTransition:", [v4 isContinuousExposeConfigurationChangeEvent]);
        -[SBDockToStageZoomWindowingModifier setCommandTabTransition:](v5, "setCommandTabTransition:", [v4 isCommandTabTransition]);
        -[SBDockToStageZoomWindowingModifier setLaunchingFromDockTransition:](v5, "setLaunchingFromDockTransition:", [v4 isLaunchingFromDockTransition]);
        -[SBDockToStageZoomWindowingModifier setLaunchingFromSpotlightTransition:](v5, "setLaunchingFromSpotlightTransition:", [v4 isSpotlightTransition]);
        -[SBDockToStageZoomWindowingModifier setMorphFromInAppViewTransition:](v5, "setMorphFromInAppViewTransition:", [v4 isMorphFromInAppView]);
        if ([v4 isKeyboardShortcutInitiated])
        {
          v74 = 1;
        }

        else
        {
          v74 = [v4 isTopAffordanceInitiated];
        }

        [(SBDockToStageZoomWindowingModifier *)v5 setIsTopAffordanceMenuTransition:v74];
        v11 = v70;
        v12 = v174;
        if (![v167 count] || !objc_msgSend(v160, "count") || !objc_msgSend(v9, "containsAllItemsFromSet:", v167) || (objc_msgSend(v10, "containsAnyItemFromSet:", v160) & 1) != 0 || v158 & 1 | ((objc_msgSend(v10, "containsAnyItemFromSet:", v167) & 1) == 0))
        {
          goto LABEL_99;
        }

        v106 = [v10 allItems];
        if ([v106 count] == 1)
        {
          v107 = [(SBContinuousExposeRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v10 ignoreOcclusion:1 ignoreCentering:0];
          v164 = [v107 count];

          if (v164 != 1)
          {
            v11 = v70;
            v12 = v174;
LABEL_99:
            v39 = v69;
            goto LABEL_100;
          }

          v108 = objc_opt_new();
          v176[0] = MEMORY[0x277D85DD0];
          v176[1] = 3221225472;
          v176[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_7;
          v176[3] = &unk_2783A8C90;
          v177 = v10;
          v109 = [v9 appLayoutWithItemsPassingTest:v176];
          [(SBDockToStageZoomWindowingModifier *)v108 setLaunchingOverDesktopSpaceAppLayout:v109];
          [(SBChainableModifier *)v108 addChildModifier:v5];

          v106 = v177;
          v5 = v108;
          v11 = v70;
        }

        v39 = v69;

        v12 = v174;
LABEL_100:
        if (v171 && (v161 - 1) <= 2)
        {
          v75 = [objc_alloc(*off_2783BF150[v161 - 1]) initWithTransitionID:v169 fromAppLayout:v9 layoutRole:v171];
          if (v75)
          {
            v76 = v75;
            [v75 addChildModifier:v5];
            v77 = v76;

            v5 = v77;
          }

          v12 = v174;
        }

        if (v12)
        {

          v78 = *v156;
          v6 = v169;
        }

        else
        {
          v6 = v169;
          v78 = v157;
        }

        goto LABEL_109;
      }

      v51 = [v10 leafAppLayoutForItem:v15];
      if ([v4 isIconZoomDisabled])
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
      if (![v10 isEqual:v51])
      {
        goto LABEL_166;
      }

      v149 = v39;
      v152 = v51;
      v135 = v11;
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __83__SBContinuousExposeRootSwitcherModifier_transitionModifierForMainTransitionEvent___block_invoke_5;
      v180[3] = &unk_2783A8C90;
      v181 = v15;
      v136 = [v9 appLayoutWithItemsPassingTest:v180];
      if (!v136)
      {
        v137 = 0;
        goto LABEL_188;
      }

      v137 = v136;
      v138 = [v136 allItems];
      if ([v138 count] == 1)
      {
        v139 = [(SBContinuousExposeRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v137 ignoreOcclusion:1 ignoreCentering:0];
        v148 = [v139 count];

        if (!v148)
        {
LABEL_188:
          [(SBDockToStageZoomWindowingModifier *)v5 setLaunchingOverDesktopSpaceAppLayout:v137];

          v11 = v135;
          v12 = v174;
          v39 = v149;
          v51 = v152;
          goto LABEL_166;
        }

        v137 = 0;
        v138 = v5;
        v5 = 0;
      }

      goto LABEL_188;
    }

    if ([v4 fromEnvironmentMode] == 2 && objc_msgSend(v4, "toEnvironmentMode") == 3)
    {
      if (![v4 isMoveDisplaysTransition])
      {
        v153 = v11;
        v18 = [SBContinuousExposeSwitcherToAppModifier alloc];
        v19 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        v20 = [v19 copy];
        v5 = [(SBContinuousExposeSwitcherToAppModifier *)v18 initWithTransitionID:v6 direction:0 multitaskingModifier:v20];

        v21 = [v4 fromAppExposeBundleID];

        if (v21)
        {
          v22 = [SBAppExposeToAppWindowingModifier alloc];
          v23 = [SBAppExposeWindowingModifier alloc];
          v168 = [v4 fromAppExposeBundleID];
          v24 = [(SBAppExposeWindowingModifier *)v23 initWithBundleIdentifier:v168];
          v25 = [SBFullScreenContinuousExposeSwitcherModifier alloc];
          [v4 toAppLayout];
          v172 = v10;
          v27 = v26 = v6;
          v28 = [(SBFullScreenContinuousExposeSwitcherModifier *)v25 initWithFullScreenAppLayout:v27];
          v29 = [(SBAppExposeToAppWindowingModifier *)v22 initWithSwitcherTransitionModifier:v5 fromAppExposeModifier:v24 toFullScreenContinuousExposeModifier:v28];
          v30 = v13;
          v31 = v29;

          v6 = v26;
          v10 = v172;

          v5 = v31;
          v13 = v30;
        }

        v11 = v153;
        v12 = v174;
LABEL_146:

        if (v5)
        {
          goto LABEL_150;
        }

        goto LABEL_147;
      }

      goto LABEL_23;
    }

    if ([v4 fromEnvironmentMode] == 3 && objc_msgSend(v4, "toEnvironmentMode") == 2 && (objc_msgSend(v4, "toAppExposeBundleID"), v32 = objc_claimAutoreleasedReturnValue(), v32, !v32))
    {
      v79 = [SBContinuousExposeSwitcherToAppModifier alloc];
      [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      v80 = v165 = v13;
      v81 = v6;
      v82 = [v80 copy];
      v5 = [(SBContinuousExposeSwitcherToAppModifier *)v79 initWithTransitionID:v81 direction:1 multitaskingModifier:v82];

      v6 = v81;
      v12 = v174;
    }

    else
    {
      if ([v4 fromEnvironmentMode] == 3 && objc_msgSend(v4, "toEnvironmentMode") == 1)
      {
        if ([v4 isMoveDisplaysTransition])
        {
LABEL_23:
          v33 = [[SBMoveDisplaysTransitionSwitcherModifier alloc] initWithTransitionEvent:v4];
LABEL_24:
          v5 = v33;
          goto LABEL_146;
        }

        if (v171)
        {
          v165 = v13;
          v89 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
          v90 = [v89 copy];

          v154 = v11;
          if (SBReduceMotion() || v161 == 1)
          {
            v112 = [SBEntityRemovalCrossblurSwitcherModifier alloc];
            v113 = [v4 transitionID];
            v114 = [v4 fromAppLayout];
            v5 = [(SBEntityRemovalCrossblurSwitcherModifier *)v112 initWithTransitionID:v113 appLayout:v114 multitaskingModifier:v90];
          }

          else
          {
            v91 = [(SBContinuousExposeRootSwitcherModifier *)self entityRemovalSettings];
            v92 = v91;
            v170 = v6;
            if (v161 == 2)
            {
              [v91 dosidoCommitIntentAnimationSettings];
            }

            else
            {
              [v91 dosidoDeclineIntentAnimationSettings];
            }
            v113 = ;

            v133 = [SBEntityRemovalSlideOffscreenSwitcherModifier alloc];
            v114 = [v4 transitionID];
            v134 = [v4 fromAppLayout];
            v5 = [(SBEntityRemovalSlideOffscreenSwitcherModifier *)v133 initWithTransitionID:v114 appLayout:v134 direction:v161 != 2 animationSettings:v113 multitaskingModifier:v90];

            v6 = v170;
          }

          v11 = v154;
          goto LABEL_175;
        }

        if (SBPeekConfigurationIsValid([v4 toPeekConfiguration]))
        {
          v66 = [v4 toAppLayout];
          [v4 fromAppLayout];
          v67 = v166 = v13;
          v68 = [v66 containsAllItemsFromAppLayout:v67];

          v13 = v166;
          if (v68)
          {
            v33 = [[SBFullScreenToPeekAnimationModifier alloc] initWithDirection:0];
            goto LABEL_24;
          }
        }

        if (v12 && [v9 containsItem:v12] && (objc_msgSend(v10, "containsItem:", v12) & 1) == 0 && (objc_msgSend(v4, "prefersZoomDownAnimation") & 1) == 0)
        {
          v165 = v13;
          v97 = v12;
          v98 = v6;
          v99 = [v9 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v9, "layoutRoleForItem:", v97)}];
          if (v99 && (+[SBAppLayout homeScreenAppLayout](SBAppLayout, "homeScreenAppLayout"), v100 = objc_claimAutoreleasedReturnValue(), v101 = [v99 isEqual:v100], v100, (v101 & 1) == 0))
          {
            if ([v4 isIconZoomDisabled])
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

            if (CGRectIsNull(*&v140) || ([v4 isMoveDisplaysTransition] & 1) != 0)
            {
              v5 = 0;
            }

            else
            {
              v144 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v6 appLayout:v99 direction:1];
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

          v6 = v98;
LABEL_175:
          v12 = v174;
          goto LABEL_109;
        }

LABEL_126:
        v5 = 0;
        goto LABEL_146;
      }

      if ([v4 fromEnvironmentMode] == 2 && objc_msgSend(v4, "toEnvironmentMode") == 1)
      {
        v165 = v13;
        IsValid = SBPeekConfigurationIsValid([v4 toPeekConfiguration]);
        v35 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
        v36 = [v35 copy];

        if (IsValid)
        {
          v5 = [[SBFlexibleWindowingExposeToHomePeekWindowingModifier alloc] initWithTransitionID:v6 direction:0 exposeModifier:v36];

LABEL_109:
          v13 = v165;
          goto LABEL_146;
        }

        v5 = [[SBContinuousExposeToHomeSwitcherModifier alloc] initWithTransitionID:v6 direction:0 exposeModifier:v36];
        v83 = [v4 fromAppExposeBundleID];

        if (v83)
        {
          v84 = [SBAppExposeWindowingModifier alloc];
          [v4 fromAppExposeBundleID];
          v86 = v85 = v6;
          v87 = [(SBAppExposeWindowingModifier *)v84 initWithBundleIdentifier:v86];

          v88 = [[SBAppExposeToHomeWindowingModifier alloc] initWithTransitionModifier:v5 appExposeModifier:v87];
          v5 = v88;
          v6 = v85;
          v12 = v174;
        }

        v13 = v165;
LABEL_145:

        goto LABEL_146;
      }

      if ([v4 fromEnvironmentMode] != 1 || objc_msgSend(v4, "toEnvironmentMode") != 2)
      {
LABEL_120:
        if ([v4 fromEnvironmentMode] != 2 && objc_msgSend(v4, "fromEnvironmentMode") != 1 && objc_msgSend(v4, "fromEnvironmentMode") != 3 || objc_msgSend(v4, "toEnvironmentMode") != 2)
        {
          goto LABEL_126;
        }

        v94 = [v4 fromAppExposeBundleID];
        v95 = [v4 toAppExposeBundleID];
        if (BSEqualStrings())
        {

          goto LABEL_126;
        }

        v165 = v13;
        v96 = [v4 fromAppExposeBundleID];
        if (v96)
        {
        }

        else
        {
          v102 = [v4 toAppExposeBundleID];

          if (!v102)
          {
            v5 = 0;
            goto LABEL_109;
          }
        }

        v103 = [v4 toAppExposeBundleID];
        v104 = v103;
        if (v103)
        {
          v105 = v103;
        }

        else
        {
          v105 = [v4 fromAppExposeBundleID];
        }

        v36 = v105;
        v13 = v165;

        v5 = [[SBFlexibleWindowingToAppExposeWindowingModifier alloc] initWithBundleIdentifier:v36];
        goto LABEL_145;
      }

      v37 = [v4 toAppExposeBundleID];
      if (v37)
      {

        goto LABEL_120;
      }

      v93 = [v4 fromAppExposeBundleID];

      if (v93)
      {
        goto LABEL_120;
      }

      v132 = [(SBFluidSwitcherRootSwitcherModifier *)self multitaskingModifier];
      v165 = v13;
      v80 = [v132 copy];

      v5 = [[SBContinuousExposeToHomeSwitcherModifier alloc] initWithTransitionID:v6 direction:1 exposeModifier:v80];
    }

    goto LABEL_109;
  }

LABEL_147:
  if ([v4 isRotationTransition])
  {
    v110 = [v4 fromInterfaceOrientation];
    if (v110 == [v4 toInterfaceOrientation])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_150;
    }
  }

  v175.receiver = self;
  v175.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFullScreenFluidSwitcherRootSwitcherModifier *)&v175 transitionModifierForMainTransitionEvent:v4];
LABEL_150:

  return v5;
}

- (int64_t)switcherModifierLevelForTransitionEvent:(id)a3
{
  v4 = a3;
  if ([v4 isAppLaunchDuringWindowDragGestureTransition])
  {
    v5 = 4;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBContinuousExposeRootSwitcherModifier;
    v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v7 switcherModifierLevelForTransitionEvent:v4];
  }

  return v5;
}

- (id)gestureModifierForGestureEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureType];
  v6 = 0;
  if (v5 > 7)
  {
    if (v5 > 9)
    {
      if (v5 == 11)
      {
        v12 = SBRevealContinuousExposeStripOverflowRootSwitcherModifier;
      }

      else
      {
        if (v5 != 10)
        {
          goto LABEL_30;
        }

        v12 = SBRevealContinuousExposeStripsRootSwitcherModifier;
      }

      v8 = [[v12 alloc] initWithInitialAppLayout:self->_currentAppLayout];
    }

    else if (v5 == 8)
    {
      if (![v4 isIndirectPanGestureEvent])
      {
        currentAppLayout = self->_currentAppLayout;
        if (currentAppLayout)
        {
          v10 = currentAppLayout;
        }

        else
        {
          v22 = +[SBAppLayout homeScreenAppLayout];
          v10 = [v22 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBContinuousExposeRootSwitcherModifier displayOrdinal](self, "displayOrdinal")}];
        }

        v11 = [[SBContinuousExposeWindowDragRootSwitcherModifier alloc] initWithStartingEnvironmentMode:[(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode] initialAppLayout:v10];
        goto LABEL_29;
      }

      v8 = objc_alloc_init(SBStashSlideOverItemIndirectGestureWindowingModifier);
    }

    else
    {
      v8 = -[SBItemResizeGestureRootSwitcherModifier initWithStartingEnvironmentMode:selectedLayoutRole:]([SBItemResizeGestureRootSwitcherModifier alloc], "initWithStartingEnvironmentMode:selectedLayoutRole:", 3, [v4 selectedLayoutRole]);
    }

LABEL_23:
    v6 = v8;
    goto LABEL_30;
  }

  if (v5 > 5)
  {
    if (v5 != 6)
    {
      v9 = [SBSplitResizeWindowingModifier alloc];
      v10 = [v4 selectedAppLayout];
      v11 = [(SBSplitResizeWindowingModifier *)v9 initWithSplitPairAppLayout:v10];
LABEL_29:
      v6 = v11;

      goto LABEL_30;
    }

    v8 = [[SBContinuousExposeDragAndDropGestureRootSwitcherModifier alloc] initWithStartingEnvironmentMode:3 appLayout:self->_currentAppLayout];
    goto LABEL_23;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
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
    v16 = [(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode];
    v17 = [(SBContinuousExposeRootSwitcherModifier *)self multitaskingModifierForEvent:v4];
    v6 = [v15 initWithStartingEnvironmentMode:v16 multitaskingModifier:v17];

    goto LABEL_30;
  }

  v19 = [SBHomeGestureRootSwitcherModifier alloc];
  v20 = [(SBContinuousExposeRootSwitcherModifier *)self _effectiveEnvironmentMode];
  v21 = [(SBContinuousExposeRootSwitcherModifier *)self multitaskingModifierForEvent:v4];
  v6 = [(SBHomeGestureRootSwitcherModifier *)v19 initWithStartingEnvironmentMode:v20 multitaskingModifier:v21];

  [(SBHomeGestureRootSwitcherModifier *)v6 setEnsuresSelectedAppLayoutUsesAnchorPointSpacePinning:1];
LABEL_30:

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

- (id)highlightModifierForHighlightEvent:(id)a3
{
  v3 = a3;
  if ([v3 isHandled] & 1) != 0 || (objc_msgSend(v3, "isHoverEvent"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [SBHighlightSwitcherModifier alloc];
    v6 = [v3 layoutRole];
    v7 = [v3 appLayout];
    v4 = [(SBHighlightSwitcherModifier *)v5 initWithLayoutRole:v6 inAppLayout:v7 listensForHighlightEvents:1];
  }

  return v4;
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

- (id)userScrollingModifierForScrollEvent:(id)a3
{
  v4 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ([v4 isFlexibleWindowingEnabled])
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

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3
{
  v3 = a3;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:v5];

  return v6;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  if ([v4 isTransitionEvent])
  {
    v5 = v4;
    v6 = [v5 copy];
    unmodifiedCurrentTransitionEvent = self->_unmodifiedCurrentTransitionEvent;
    self->_unmodifiedCurrentTransitionEvent = v6;

    if ([v5 phase] == 2)
    {
      if (SBPeekConfigurationIsValid([v5 toPeekConfiguration]))
      {
        v8 = [v5 toAppLayout];
      }

      else
      {
        v8 = 0;
      }

      peekingAppLayout = self->_peekingAppLayout;
      self->_peekingAppLayout = v8;
    }
  }

  v27.receiver = self;
  v27.super_class = SBContinuousExposeRootSwitcherModifier;
  v10 = [(SBFluidSwitcherRootSwitcherModifier *)&v27 handleEvent:v4];
  v11 = self->_unmodifiedCurrentTransitionEvent;
  if (v11)
  {
    self->_unmodifiedCurrentTransitionEvent = 0;
  }

  if ([v4 isTransitionEvent])
  {
    v12 = v4;
    v13 = [v12 toAppLayout];
    v14 = [v12 fromAppLayout];
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    self->_isTransitionToNilAppLayoutInProgress = v15;
    v16 = [v12 isAnimated];
    v17 = [v12 isMoveDisplaysTransition];
    if (v14)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1 && v13)
    {
      if ([v14 containsAllItemsFromAppLayout:v13])
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

    if (v13 && v14)
    {
      if ((([v12 phase] != 2) & v16) == 0 && (!objc_msgSend(v13, "isEqual:", v14) || !-[SBAppLayout isEqual:](self->_effectiveAppLayoutOnStage, "isEqual:", v13)))
      {
        objc_storeStrong(&self->_effectiveAppLayoutOnStage, v13);
        v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
        v20 = v14;
LABEL_36:
        v22 = v13;
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    if (v15)
    {
      if ((([v12 phase] != 3) & v16) != 0)
      {
        goto LABEL_40;
      }

      effectiveAppLayoutOnStage = self->_effectiveAppLayoutOnStage;
      self->_effectiveAppLayoutOnStage = 0;

      v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
      v20 = v14;
    }

    else
    {
      if (v13 && !v14)
      {
        if ((([v12 phase] != 1) & v16) == 0)
        {
          objc_storeStrong(&self->_effectiveAppLayoutOnStage, v13);
          v19 = [SBInvalidateContinuousExposeIdentifiersEventResponse alloc];
          v20 = 0;
          goto LABEL_36;
        }

LABEL_40:
        v23 = 0;
        goto LABEL_41;
      }

      if (v13 | v14 || (([v12 phase] != 1) & v16) != 0)
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
    v23 = [(SBInvalidateContinuousExposeIdentifiersEventResponse *)v19 initWithTransitioningFromAppLayout:v20 transitioningToAppLayout:v22 animated:v16];
LABEL_41:
    v24 = SBAppendSwitcherModifierResponse(v23, v10);

    v10 = v24;
    goto LABEL_42;
  }

LABEL_45:

  return v10;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v30 handleTransitionEvent:v4];
  v6 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  v7 = [v4 toAppLayout];
  currentAppLayout = self->_currentAppLayout;
  self->_currentAppLayout = v7;

  self->_currentEnvironmentMode = [v4 toEnvironmentMode];
  v9 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposeStripModifierKey"];
  if ((-[SBContinuousExposeRootSwitcherModifier prefersStripHiddenAndDisabled](self, "prefersStripHiddenAndDisabled") & 1) != 0 || ([v6 isFlexibleWindowingEnabled] & 1) == 0)
  {
    LOBYTE(v10) = 0;
    v11 = v9 == 0;
  }

  else
  {
    v10 = [v6 isAutomaticStageCreationEnabled];
    v11 = v9 == 0;
    if (!v9 && v10)
    {
      v9 = objc_opt_new();
      [(SBChainableModifier *)self addChildModifier:v9 atLevel:9 key:@"SBContinuousExposeStripModifierKey"];
      goto LABEL_10;
    }
  }

  if (!v11 && (v10 & 1) == 0)
  {
    [(SBChainableModifier *)self removeChildModifier:v9];
  }

LABEL_10:
  v12 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ((-[SBInvalidateAdjustedAppLayoutsSwitcherEventResponse isFlexibleWindowingEnabled](v12, "isFlexibleWindowingEnabled") & 1) == 0 && ([v4 phase] == 2 || (objc_msgSend(v4, "isAnimated") & 1) == 0) && SBPeekConfigurationIsValid(objc_msgSend(v4, "toPeekConfiguration")))
  {
    v13 = [(SBChainableModifier *)self childModifierByKey:@"SBContinuousExposePeekModifierKey"];

    if (v13)
    {
      goto LABEL_17;
    }

    v12 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v14 = SBAppendSwitcherModifierResponse(v5, v12);

    v15 = [SBContinuousExposePeekSwitcherModifier alloc];
    v16 = [v4 toAppLayout];
    v17 = -[SBContinuousExposePeekSwitcherModifier initWithAppLayout:configuration:](v15, "initWithAppLayout:configuration:", v16, [v4 toPeekConfiguration]);

    [(SBChainableModifier *)self addChildModifier:v17 atLevel:2 key:@"SBContinuousExposePeekModifierKey"];
    v5 = v14;
  }

LABEL_17:
  if ([v4 phase] == 2 && ((objc_msgSend(v4, "isAppLaunchDuringWindowDragGestureTransition") & 1) != 0 || objc_msgSend(v4, "isUnstashFromHomeTransition")))
  {
    initialFloorModifierForWindowDrag = self->_initialFloorModifierForWindowDrag;
    v19 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    LOBYTE(initialFloorModifierForWindowDrag) = [(SBSwitcherModifier *)initialFloorModifierForWindowDrag isEqual:v19];

    if ((initialFloorModifierForWindowDrag & 1) == 0)
    {
      v20 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
      v21 = self->_initialFloorModifierForWindowDrag;
      self->_initialFloorModifierForWindowDrag = v20;
    }
  }

  v22 = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
  v23 = [v4 fromAppLayout];
  if ([v4 phase] == 2 && v22 && objc_msgSend(v23, "containsItem:", v22))
  {
    v24 = [v4 fromDisplayItemLayoutAttributesMap];
    v25 = [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)v24 objectForKey:v22];
    v26 = [(SBDisplayItemLayoutAttributes *)v25 slideOverConfiguration];
    if ((v29[33] & 1) != 0 || [(SBAppLayout *)self->_currentAppLayout containsItem:v22, v26])
    {

LABEL_28:
      goto LABEL_29;
    }

    v28 = [v23 containsAllItemsFromAppLayout:self->_currentAppLayout];

    if (v28)
    {
      v24 = [[SBTransientlyVisibleSlideOverTongueWindowingModifier alloc] initWithTonguePresentationReason:1];
      [(SBChainableModifier *)self addChildModifier:v24 atLevel:4 key:0];
      goto LABEL_28;
    }
  }

LABEL_29:

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBFluidSwitcherRootSwitcherModifier *)&v11 handleGestureEvent:v4];
  v6 = [(SBContinuousExposeRootSwitcherModifier *)self windowManagementContext];
  if ((-[SBInvalidateAdjustedAppLayoutsSwitcherEventResponse isAutomaticStageCreationEnabled](v6, "isAutomaticStageCreationEnabled") & 1) == 0 && ![v4 phase])
  {
    isTransitionToNilAppLayoutInProgress = self->_isTransitionToNilAppLayoutInProgress;

    if (!isTransitionToNilAppLayoutInProgress)
    {
      goto LABEL_6;
    }

    effectiveAppLayoutOnStage = self->_effectiveAppLayoutOnStage;
    self->_effectiveAppLayoutOnStage = 0;

    self->_isTransitionToNilAppLayoutInProgress = 0;
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v9 = SBAppendSwitcherModifierResponse(v5, v6);

    v5 = v9;
  }

LABEL_6:

  return v5;
}

- (id)handleContinuousExposeIdentifiersChangedEvent:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v55 handleContinuousExposeIdentifiersChangedEvent:v4];
  if ([v4 isAnimated] && -[SBContinuousExposeRootSwitcherModifier _effectiveEnvironmentMode](self, "_effectiveEnvironmentMode") == 3)
  {
    v6 = [v4 transitioningFromAppLayout];
    v7 = [v4 transitioningToAppLayout];
    v8 = v7;
    if (!v6 || !v7)
    {
      goto LABEL_28;
    }

    v38 = v5;
    v9 = [v4 previousContinuousExposeIdentifiersInSwitcher];
    v39 = v4;
    v10 = [v4 previousContinuousExposeIdentifiersInStrip];
    v11 = [(SBContinuousExposeRootSwitcherModifier *)self continuousExposeIdentifiersInStrip];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke;
    v52[3] = &unk_2783BF130;
    v12 = v11;
    v53 = v12;
    v36 = v8;
    v34 = v8;
    v54 = v34;
    v13 = [v10 bs_filter:v52];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __88__SBContinuousExposeRootSwitcherModifier_handleContinuousExposeIdentifiersChangedEvent___block_invoke_2;
    v49[3] = &unk_2783BF130;
    v14 = v10;
    v50 = v14;
    v37 = v6;
    v40 = v6;
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

          v21 = [[SBContinuousExposeIdentifierSlideModifier alloc] initWithContinuousExposeIdentifier:*(*(&v45 + 1) + 8 * i) previousContinuousExposeIdentifiersInSwitcher:v9 previousContinuousExposeIdentifiersInStrip:v14 direction:1];
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

          v27 = [[SBContinuousExposeIdentifierSlideModifier alloc] initWithContinuousExposeIdentifier:*(*(&v41 + 1) + 8 * j) previousContinuousExposeIdentifiersInSwitcher:v9 previousContinuousExposeIdentifiersInStrip:v14 direction:0];
          [(SBChainableModifier *)self addChildModifier:v27 atLevel:11 key:0];
        }

        v24 = [v22 countByEnumeratingWithState:&v41 objects:v56 count:16];
      }

      while (v24);
    }

    v28 = [v40 continuousExposeIdentifier];
    v29 = [v34 continuousExposeIdentifier];
    if (BSEqualStrings())
    {
      v30 = [v40 containsAnyItemFromAppLayout:v34];

      v5 = v38;
      v4 = v39;
      if (v30)
      {
LABEL_27:

        v8 = v36;
        v6 = v37;
LABEL_28:

        goto LABEL_29;
      }

      v31 = [v34 continuousExposeIdentifier];
      v28 = [(SBContinuousExposeRootSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v31];

      if (![v28 containsObject:v40] || (objc_msgSend(v39, "isGestureInitiated") & 1) != 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      v29 = [v28 lastObject];
      v32 = [[SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier alloc] initWithAppLayout:v40 behindAppLayout:v29 generationCount:[(SBContinuousExposeRootSwitcherModifier *)self continuousExposeIdentifiersGenerationCount]];
      [(SBChainableModifier *)self addChildModifier:v32 atLevel:11 key:0];
    }

    else
    {
      v5 = v38;
      v4 = v39;
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

- (id)handleSlideOverEdgeProtectTongueEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v9 handleSlideOverEdgeProtectTongueEvent:v4];
  v6 = [v4 isTonguePresented];

  if (v6)
  {
    v7 = [[SBTransientlyVisibleSlideOverTongueWindowingModifier alloc] initWithTonguePresentationReason:0];
    [(SBChainableModifier *)self addChildModifier:v7 atLevel:4 key:0];
  }

  return v5;
}

- (id)handleContinuousExposeStripEdgeProtectTongueEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleContinuousExposeStripEdgeProtectTongueEvent:v4];
  v6 = [v4 isTonguePresented];

  self->_isStripTonguePresented = v6;
  v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  return v8;
}

- (id)handleDidEdgeProtectResizeGrabberEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBContinuousExposeRootSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v13 handleDidEdgeProtectResizeGrabberEvent:v4];
  v6 = [SBResizeGrabberHintingSwitcherModifier alloc];
  v7 = [v4 displayItem];
  v8 = [v4 corners];

  v9 = [(SBResizeGrabberHintingSwitcherModifier *)v6 initWithDisplayItem:v7 corners:v8];
  v10 = [(SBResizeGrabberHintingSwitcherModifier *)v9 identifier];
  v11 = [(SBChainableModifier *)self childModifierByKey:v10];
  if (!v11)
  {
    [(SBChainableModifier *)self addChildModifier:v9 atLevel:7 key:v10];
  }

  return v5;
}

- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SBContinuousExposeRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v20 handleMoveDisplayItemFromOtherDisplayEvent:v4];
  if (([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 displayItem];
    v19.receiver = self;
    v19.super_class = SBContinuousExposeRootSwitcherModifier;
    v7 = [(SBContinuousExposeRootSwitcherModifier *)&v19 appLayoutOnStage];
    v8 = [v7 allItems];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 appLayoutByInsertingItem:v6];
    }

    else
    {
      v11 = [SBAppLayout alloc];
      v21[0] = v6;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      LOBYTE(v18) = 0;
      v10 = [(SBAppLayout *)v11 initWithItems:v12 centerItem:0 floatingItem:0 configuration:0 centerConfiguration:0 environment:1 hidden:v18 preferredDisplayOrdinal:[(SBContinuousExposeRootSwitcherModifier *)self displayOrdinal]];

      v7 = v12;
    }

    v13 = [(SBContinuousExposeRootSwitcherModifier *)self appLayoutByBringingItemToFront:v6 inAppLayout:v10];

    v14 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v14 setAppLayout:v13];
    v15 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v14 gestureInitiated:0];
    v16 = SBAppendSwitcherModifierResponse(v15, v5);

    [v4 handleWithReason:@"Continuous Expose Root"];
    v5 = v16;
  }

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 reason];
  v6 = [v5 isEqualToString:@"SBBeginAnimatedStripDismissalReason"];

  if (v6)
  {
    v7 = objc_opt_new();
    [(SBChainableModifier *)self addChildModifier:v7];

    [v4 handleWithReason:@"Continuous Expose Root"];
  }

  v10.receiver = self;
  v10.super_class = SBContinuousExposeRootSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleTimerEvent:v4];

  return v8;
}

- (id)displayItemsToExcludeFromStrip
{
  v2 = [(SBContinuousExposeRootSwitcherModifier *)self displayItemInSlideOver];
  if (v2)
  {
    [MEMORY[0x277CBEB98] setWithObject:v2];
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
  v2 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

- (BOOL)_isActivatingAppLayoutUnoccludedForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 activatingAppLayout];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 itemForLayoutRole:1];
    v7 = [v3 fromDisplayItemLayoutAttributesMap];
    v8 = [v7 objectForKey:v6];
    v9 = [(SBCameraHardwareButton *)v8 foregroundCameraShutterButtonPIDs];

    v10 = [v3 toDisplayItemLayoutAttributesMap];
    v11 = [v10 objectForKey:v6];
    v12 = [(SBCameraHardwareButton *)v11 foregroundCameraShutterButtonPIDs];

    v14 = v9 == 1 && v12 == 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end