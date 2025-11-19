@interface SBMainSwitcherRootSwitcherModifier
- (BOOL)_correctFloorModifierToHandleEvent;
- (SBMainSwitcherRootSwitcherModifier)init;
- (id)_createNewDefaultFloorModifier;
- (id)_newMultitaskingModifierForEnvironmentMode:(int64_t)a3;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)floorModifierForTransitionEvent:(id)a3;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3;
- (id)gestureModifierForGestureEvent:(id)a3;
- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)highlightModifierForHighlightEvent:(id)a3;
- (id)insertionModifierForInsertionEvent:(id)a3;
- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)a3;
- (id)removalModifierForRemovalEvent:(id)a3;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
- (id)shelfModifierForTransitionEvent:(id)a3;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3;
- (id)transitionModifierForMainTransitionEvent:(id)a3;
- (id)userScrollingModifierForScrollEvent:(id)a3;
- (void)_ensureModifier:(id)a3 startsInFinalStateOfEvent:(id)a4;
- (void)_setCardSizesWithEvent:(id)a3;
@end

@implementation SBMainSwitcherRootSwitcherModifier

- (SBMainSwitcherRootSwitcherModifier)init
{
  v3.receiver = self;
  v3.super_class = SBMainSwitcherRootSwitcherModifier;
  result = [(SBSwitcherModifier *)&v3 init];
  if (result)
  {
    result->_environmentMode = 1;
  }

  return result;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBMainSwitcherRootSwitcherModifier;
  v3 = [(SBMainSwitcherRootSwitcherModifier *)&v8 adjustedAppLayoutsForAppLayouts:a3];
  v4 = [v3 bs_filter:&__block_literal_global_56];
  v5 = [v3 bs_filter:&__block_literal_global_4];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)gestureModifierForGestureEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureID];
  if (-[SBMainSwitcherRootSwitcherModifier _correctFloorModifierToHandleEvent](self, "_correctFloorModifierToHandleEvent") && [v4 gestureType] == 2)
  {
    v6 = [[SBGridSwipeUpGestureSwitcherModifier alloc] initWithGestureID:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v4 gestureType] == 6)
  {
    v7 = [[SBDragAndDropGestureRootSwitcherModifier alloc] initWithStartingEnvironmentMode:self->_environmentMode floatingSwitcherVisible:self->_floatingSwitcherVisible fullScreenAppLayout:self->_appLayout];
  }

  else
  {
    if ([v4 gestureType] != 8)
    {
      goto LABEL_13;
    }

    appLayout = self->_appLayout;
    if (appLayout)
    {
      v9 = appLayout;
    }

    else
    {
      v10 = +[SBAppLayout homeScreenAppLayout];
      v9 = [v10 appLayoutByModifyingPreferredDisplayOrdinal:{-[SBMainSwitcherRootSwitcherModifier displayOrdinal](self, "displayOrdinal")}];
    }

    v11 = [SBMedusaWindowDragGestureRootSwitcherModifier alloc];
    v12 = [v4 selectedAppLayout];
    v7 = [(SBMedusaWindowDragGestureRootSwitcherModifier *)v11 initWithSelectedLeafAppLayout:v12 currentMainAppLayout:v9 currentFloatingAppLayout:self->_floatingAppLayout currentFloatingConfiguration:self->_floatingConfiguration];

    v6 = v9;
  }

  v6 = v7;
LABEL_13:

  return v6;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  self->_environmentMode = [v4 toEnvironmentMode];
  self->_floatingSwitcherVisible = [v4 toFloatingSwitcherVisible];
  v5 = [v4 toAppLayout];
  appLayout = self->_appLayout;
  self->_appLayout = v5;

  v7 = [v4 toFloatingAppLayout];
  floatingAppLayout = self->_floatingAppLayout;
  self->_floatingAppLayout = v7;

  self->_floatingConfiguration = [v4 toFloatingConfiguration];
  [(SBMainSwitcherRootSwitcherModifier *)self _setCardSizesWithEvent:v4];
  v11.receiver = self;
  v11.super_class = SBMainSwitcherRootSwitcherModifier;
  v9 = [(SBFluidSwitcherRootSwitcherModifier *)&v11 handleTransitionEvent:v4];

  return v9;
}

- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBMainSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleMoveDisplayItemFromOtherDisplayEvent:v4];
  if (([v4 isHandled] & 1) == 0)
  {
    v6 = [v4 displayItem];
    v7 = [SBAppLayout alloc];
    v16[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    LOBYTE(v14) = 0;
    v9 = [(SBAppLayout *)v7 initWithItems:v8 centerItem:0 floatingItem:0 configuration:0 centerConfiguration:0 environment:1 hidden:v14 preferredDisplayOrdinal:[(SBMainSwitcherRootSwitcherModifier *)self displayOrdinal]];

    v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v10 setAppLayout:v9];
    v11 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
    v12 = SBAppendSwitcherModifierResponse(v11, v5);

    [v4 handleWithReason:@"Main Switcher Root"];
    v5 = v12;
  }

  return v5;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v10.receiver = self;
  v10.super_class = SBMainSwitcherRootSwitcherModifier;
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)&v10 responseForProposedChildResponse:a3 childModifier:a4 event:a5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__SBMainSwitcherRootSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
  v9[3] = &unk_2783AF6C8;
  v9[4] = self;
  v7 = [v6 responseByTransformingResponseWithTransformer:v9];

  return v7;
}

id __91__SBMainSwitcherRootSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 31)
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v5 modifier];
    v7 = [v5 level];
    v8 = [v5 key];

    [v4 addChildModifier:v6 atLevel:v7 key:v8];
    v3 = 0;
  }

  return v3;
}

- (id)transitionModifierForMainTransitionEvent:(id)a3
{
  v5 = a3;
  v86 = [v5 transitionID];
  v87 = [v5 fromAppLayout];
  v88 = [v5 fromFloatingAppLayout];
  v6 = [v5 toAppLayout];
  v85 = [v5 toFloatingAppLayout];
  v7 = [v5 fromAppExposeBundleID];
  v90 = [v5 toAppExposeBundleID];
  v89 = [v5 fromEnvironmentMode];
  v8 = [v5 toEnvironmentMode];
  v9 = [v5 fromFloatingConfiguration];
  v10 = [v5 toFloatingConfiguration];
  v11 = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
  v12 = [v11 effectiveSwitcherStyle];

  if (!v7 && v90 && v8 == 2)
  {
    v13 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:v5];
    v14 = [v13 copy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v15 = v6;
    if (v89 != 1)
    {
      v16 = v85;
      if (v89 != 2)
      {
        if (v89 != 3)
        {
          v26 = 0;
          v19 = v86;
          v20 = v87;
          goto LABEL_35;
        }

        v17 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
        v18 = [v17 copy];

        v19 = v86;
        v20 = v87;
        v21 = [[SBAppExposeToFullScreenSwitcherModifier alloc] initWithTransitionID:v86 direction:1 fullScreenAppLayout:v87 floatingAppLayout:v88 bundleIdentifier:v90 appExposeModifier:v14 fullScreenModifier:v18];
        goto LABEL_18;
      }

      v28 = [SBSwitcherToAppExposeSwitcherModifier alloc];
      v19 = v86;
      v29 = v86;
      v30 = v90;
LABEL_26:
      v26 = [(SBSwitcherToAppExposeSwitcherModifier *)v28 initWithTransitionID:v29 bundleIdentifier:v30 appExposeModifier:v14];
      v20 = v87;
      goto LABEL_35;
    }

    v19 = v86;
    v26 = [[SBAppExposeToHomeSwitcherModifier alloc] initWithTransitionID:v86 direction:1 bundleIdentifier:v90 appExposeModifier:v14];
    v20 = v87;
LABEL_31:
    v16 = v85;
    goto LABEL_35;
  }

  if (v7 && !v90 && v89 == 2)
  {
    v22 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    v14 = [v22 copy];

    objc_opt_class();
    v15 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v23 = v8;
    v24 = v8 == 1;
    v19 = v86;
    v20 = v87;
    v16 = v85;
    if (v24)
    {
      v26 = [[SBAppExposeToHomeSwitcherModifier alloc] initWithTransitionID:v86 direction:0 bundleIdentifier:v7 appExposeModifier:v14];
      goto LABEL_35;
    }

    if (v23 != 3)
    {
      v26 = 0;
      goto LABEL_35;
    }

    v25 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:v5];
    v18 = [v25 copy];

    [(SBMainSwitcherRootSwitcherModifier *)self _ensureModifier:v18 startsInFinalStateOfEvent:v5];
    v21 = [[SBAppExposeToFullScreenSwitcherModifier alloc] initWithTransitionID:v86 direction:0 fullScreenAppLayout:v15 floatingAppLayout:v85 bundleIdentifier:v7 appExposeModifier:v14 fullScreenModifier:v18];
LABEL_18:
    v26 = v21;

LABEL_35:
    goto LABEL_36;
  }

  v15 = v6;
  if (v7 && v90 && v8 == 2)
  {
    v27 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:v5];
    v14 = [v27 copy];

    objc_opt_class();
    v16 = v85;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v28 = [SBSwitcherToAppExposeSwitcherModifier alloc];
    v19 = v86;
    v29 = v86;
    v30 = v7;
    goto LABEL_26;
  }

  v84 = v8;
  if ([v5 isCenterWindowZoomingUpFromShelfEvent])
  {
    v14 = [v5 fromShelf];
    v31 = [SBShelfZoomTransitionModifier alloc];
    v19 = v86;
    v20 = v87;
    v32 = v86;
    v33 = 1;
    v34 = v87;
    v35 = v6;
LABEL_29:
    v26 = [(SBShelfZoomTransitionModifier *)v31 initWithTransitionID:v32 direction:v33 fromAppLayout:v34 toAppLayout:v35 shelf:v14];
    goto LABEL_31;
  }

  v37 = v89;
  if (!v7 && v90 && v89 == 3)
  {
    v38 = [v87 itemForLayoutRole:4];
    v37 = 3;
    if (v38)
    {
      v39 = v38;
      v40 = [v6 itemForLayoutRole:4];
      if (v40)
      {

        v37 = 3;
      }

      else
      {
        v41 = SBLayoutRoleSetForRole2(1, 2);
        v42 = [v87 hasSameItemsInLayoutRoles:v41 asAppLayout:v6];

        v37 = 3;
        if (v42)
        {
          v43 = [SBShelfZoomTransitionModifier alloc];
          v14 = [v5 toShelf];
          v31 = v43;
          v19 = v86;
          v20 = v87;
          v32 = v86;
          v33 = 0;
          v34 = v87;
          v15 = v6;
          v35 = v6;
          goto LABEL_29;
        }
      }
    }
  }

  else if (v7 && !v90 && v89 == 3)
  {
    v14 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v7 layoutRole:0 displayMode:0];
    v19 = v86;
    v26 = [[SBShelfIconBounceTransitionModifier alloc] initWithTransitionID:v86 shelf:v14];
    v20 = v87;
    v15 = v6;
    goto LABEL_31;
  }

  if (v12 != 2)
  {
    v26 = 0;
    v19 = v86;
    v20 = v87;
    v15 = v6;
    v16 = v85;
    goto LABEL_36;
  }

  v15 = v6;
  if (v37 != 2 || v84 != 3)
  {
    if (v37 == 2 && v84 == 1)
    {
      v44 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
      v45 = [v44 copy];

      v26 = [[SBMixedGridToHomeSwitcherModifier alloc] initWithTransitionID:v86 direction:0 mixedGridModifier:v45];
LABEL_60:

      goto LABEL_74;
    }

    if (v84 == 2)
    {
      v16 = v85;
      if (SBPeekConfigurationIsValid([v5 toPeekConfiguration]))
      {
LABEL_63:
        v26 = 0;
        goto LABEL_75;
      }

      switch(v89)
      {
        case 1:
          v51 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
          v52 = [v51 copy];

          v26 = [[SBMixedGridToHomeSwitcherModifier alloc] initWithTransitionID:v86 direction:1 mixedGridModifier:v52];
          break;
        case 2:
          v26 = [(SBTransitionSwitcherModifier *)[SBGridSwipeUpToSwitcherSwitcherModifier alloc] initWithTransitionID:v86];
          goto LABEL_75;
        case 3:
          v68 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:v5];
          v52 = [v68 copy];

          v69 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
          v26 = [[SBMixedGridToFullScreenSwitcherModifier alloc] initWithTransitionID:v86 direction:1 fullScreenAppLayout:v87 floatingAppLayout:v88 floatingConfiguration:v9 gridModifier:v69 fullScreenModifier:v52];

          break;
        default:
          goto LABEL_63;
      }

      goto LABEL_75;
    }

    if ([v5 isPrimaryToSlideOverEvent])
    {
      v49 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v50 = &SBLayoutRolePrimary;
LABEL_72:
      v53 = *v50;
      v54 = [v5 fromAppLayout];
      v55 = [v5 toFloatingAppLayout];
      v56 = v49;
      v57 = v86;
      v58 = v53;
      v59 = v54;
      v60 = v55;
      v61 = 0;
LABEL_73:
      v26 = [(SBSplitViewToSlideOverSwitcherModifier *)v56 initWithTransitionID:v57 transitioningLayoutRole:v58 splitViewAppLayout:v59 slideOverAppLayout:v60 direction:v61];

      goto LABEL_74;
    }

    if ([v5 isSideToSlideOverEvent])
    {
      v49 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v50 = &SBLayoutRoleSide;
      goto LABEL_72;
    }

    if ([v5 isSlideOverToSideEvent])
    {
      v66 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v67 = &SBLayoutRoleSide;
LABEL_90:
      v70 = *v67;
      v54 = [v5 toAppLayout];
      v55 = [v5 fromFloatingAppLayout];
      v56 = v66;
      v57 = v86;
      v58 = v70;
      v59 = v54;
      v60 = v55;
      v61 = 1;
      goto LABEL_73;
    }

    if ([v5 isSlideOverToPrimaryEvent])
    {
      v66 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v67 = &SBLayoutRolePrimary;
      goto LABEL_90;
    }

    if ([v5 isEnteringAnyPeekEvent] && (objc_msgSend(v5, "fromAppLayout"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "itemForLayoutRole:", 2), v72 = objc_claimAutoreleasedReturnValue(), v72, v71, !v72))
    {
      if (([(SBMainSwitcherRootSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
      {
        v83 = [SBFullScreenToPeekSwitcherModifier alloc];
        v77 = [v5 fromAppLayout];
        v78 = [v5 toAppLayout];
        v79 = [v5 fromFloatingAppLayout];
        v80 = [v5 toFloatingAppLayout];
        v81 = -[SBFullScreenToPeekSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:](v83, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:", v86, v77, v78, v79, v80, [v5 toPeekConfiguration]);
        goto LABEL_102;
      }
    }

    else
    {
      if ([v5 isSlideOverToFullScreenEvent])
      {
        v73 = [SBSlideOverToFullScreenSwitcherModifier alloc];
        v45 = [v5 fromFloatingAppLayout];
        v74 = [v5 toAppLayout];
        v75 = [v5 fromAppLayout];
        v26 = [(SBSlideOverToFullScreenSwitcherModifier *)v73 initWithTransitionID:v86 slideOverAppLayout:v45 fullScreenAppLayout:v74 replacingMainAppLayout:v75];

        goto LABEL_60;
      }

      if ([v5 isCenterWindowToSlideOverEvent])
      {
        v76 = [SBCenterWindowToSlideOverSwitcherModifier alloc];
        v77 = [v5 fromAppLayout];
        v78 = [v5 fromAppLayout];
        v79 = [v5 fromFloatingAppLayout];
        v80 = [v5 toFloatingAppLayout];
        v81 = -[SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:](v76, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:", v86, v77, v78, v79, v80, [v5 toFloatingConfiguration], 0);
LABEL_102:
        v26 = v81;

        goto LABEL_103;
      }

      if ([v5 isSlideOverToCenterWindowEvent])
      {
        v82 = [SBCenterWindowToSlideOverSwitcherModifier alloc];
        v77 = [v5 fromAppLayout];
        v78 = [v5 toAppLayout];
        v79 = [v5 fromFloatingAppLayout];
        v80 = [v5 toFloatingAppLayout];
        v81 = -[SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:](v82, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:", v86, v77, v78, v79, v80, [v5 toFloatingConfiguration], 1);
        goto LABEL_102;
      }
    }

    v26 = 0;
LABEL_103:
    v15 = v6;
    goto LABEL_74;
  }

  if (SBPeekConfigurationIsValid([v5 fromPeekConfiguration]))
  {
    v26 = 0;
LABEL_74:
    v16 = v85;
    goto LABEL_75;
  }

  v46 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
  [(SBMainSwitcherRootSwitcherModifier *)self _ensureModifier:v46 startsInFinalStateOfEvent:v5];
  v47 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:v5];
  v48 = [v47 copy];

  v16 = v85;
  v26 = [[SBMixedGridToFullScreenSwitcherModifier alloc] initWithTransitionID:v86 direction:0 fullScreenAppLayout:v15 floatingAppLayout:v85 floatingConfiguration:v10 gridModifier:v46 fullScreenModifier:v48];

LABEL_75:
  if ([v5 isKeyboardShortcutInitiated] && v89 == 3)
  {
    v19 = v86;
    v20 = v87;
    if (v84 == 1)
    {
      if ([v5 isEnteringAnyPeekEvent])
      {
        v62 = [v5 fromAppLayout];
        v63 = [v62 isSplitConfiguration];

        if (v63)
        {
          v64 = [SBSplitViewToPeekTransitionSwitcherModifier alloc];
          v14 = [v5 fromAppLayout];
          v65 = [(SBSplitViewToPeekTransitionSwitcherModifier *)v64 initWithTransitionID:v86 fromAppLayout:v14];

          v26 = v65;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v19 = v86;
    v20 = v87;
  }

LABEL_36:

  return v26;
}

- (id)insertionModifierForInsertionEvent:(id)a3
{
  v4 = a3;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBInsertionSwitcherModifier alloc];
    v6 = [v4 appLayout];
    v7 = [(SBInsertionSwitcherModifier *)v5 initWithAppLayout:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)a3
{
  v4 = a3;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBSwipeToKillSwitcherModifier alloc];
    v6 = [v4 layoutRole];
    v7 = [v4 appLayout];
    v8 = [(SBSwipeToKillSwitcherModifier *)v5 initWithLayoutRole:v6 inAppLayout:v7 fadeOutSwipedItems:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)highlightModifierForHighlightEvent:(id)a3
{
  v4 = a3;
  if (-[SBMainSwitcherRootSwitcherModifier _correctFloorModifierToHandleEvent](self, "_correctFloorModifierToHandleEvent") && ([v4 isHoverEvent] & 1) == 0)
  {
    v6 = [SBHighlightSwitcherModifier alloc];
    v7 = [v4 layoutRole];
    v8 = [v4 appLayout];
    v5 = [(SBHighlightSwitcherModifier *)v6 initWithLayoutRole:v7 inAppLayout:v8 listensForHighlightEvents:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removalModifierForRemovalEvent:(id)a3
{
  v4 = a3;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBRemovalSwitcherModifier alloc];
    v6 = [v4 layoutRole];
    v7 = [v4 appLayout];
    v8 = -[SBRemovalSwitcherModifier initWithLayoutRole:inAppLayout:reason:](v5, "initWithLayoutRole:inAppLayout:reason:", v6, v7, [v4 reason]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)floorModifierForTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  v7 = [v6 toEnvironmentMode];
  v8 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!v6)
  {
    v12 = [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
    v9 = v8;
    goto LABEL_18;
  }

  v9 = [v6 toAppExposeBundleID];
  if (v9)
  {
    v10 = v7 == 2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v8 bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v9), v13, (v14 & 1) == 0))
    {
      v11 = [[SBAppExposeGridSwitcherModifier alloc] initWithBundleIdentifier:v9 fullScreenCardSize:self->_fullScreenCardSize.width floatingCardSize:self->_fullScreenCardSize.height, self->_floatingCardSize.width, self->_floatingCardSize.height];
      goto LABEL_14;
    }
  }

  else if (v7 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !SBPeekConfigurationIsValid([v6 toPeekConfiguration]))
    {
      v11 = [[SBMixedGridSwitcherModifier alloc] initWithFullScreenCardSize:self->_fullScreenCardSize.width floatingCardSize:self->_fullScreenCardSize.height, self->_floatingCardSize.width, self->_floatingCardSize.height];
LABEL_14:
      v12 = v11;

      goto LABEL_18;
    }
  }

  else if (!SBPeekConfigurationIsValid([v6 toPeekConfiguration]))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
      goto LABEL_14;
    }
  }

  v12 = v8;
LABEL_18:

  return v12;
}

- (id)userScrollingModifierForScrollEvent:(id)a3
{
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v3 = objc_alloc_init(SBScrollingSwitcherModifier);
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
  v5 = [v4 toAppExposeBundleID];
  if (v5 && [v4 toEnvironmentMode] == 3)
  {
    v6 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:v5 layoutRole:0 displayMode:0];
    v7 = [(SBSwitcherShelf *)v6 uniqueIdentifier];
    v8 = [(SBChainableModifier *)self childModifierByKey:v7];

    v9 = 0;
    if (!v8)
    {
      v10 = [v4 activatingAppLayout];

      if (v10)
      {
        v11 = [v4 toAppLayout];
        [(SBMainSwitcherRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v11];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
      }

      else
      {
        v13 = *MEMORY[0x277CBF398];
        v15 = *(MEMORY[0x277CBF398] + 8);
        v17 = *(MEMORY[0x277CBF398] + 16);
        v19 = *(MEMORY[0x277CBF398] + 24);
      }

      v20 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:v4 context:self];
      v21 = [SBShelfSwitcherModifier alloc];
      v22 = [v4 toAppLayout];
      v23 = [v4 toFloatingAppLayout];
      v24 = [v4 fromAppLayout];
      v9 = [(SBShelfSwitcherModifier *)v21 initWithShelf:v6 contentOptions:v20 activeFullScreenAppLayout:v22 activeFloatingAppLayout:v23 presentationTargetFrame:v24 presentedFromAppLayout:v13, v15, v17, v19];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)a3
{
  if ([(SBMainSwitcherRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v4 = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
    v5 = [v4 effectiveSwitcherStyle];

    v6 = off_2783A1578;
    if (v5 != 1)
    {
      v6 = off_2783A1590;
    }

    v7 = objc_alloc_init(*v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)a3
{
  v3 = a3;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  v5 = [v3 appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:v5];

  return v6;
}

- (id)_createNewDefaultFloorModifier
{
  v2 = objc_alloc_init(SBSplitViewRootSwitcherModifier);
  v3 = objc_alloc_init(SBFloatingFluidSwitcherRootSwitcherModifier);
  v4 = [[SBMainSwitcherRoutingSwitcherModifier alloc] initWithMainModifierSubtree:v2 floatingModifierSubtree:v3];

  return v4;
}

- (id)_newMultitaskingModifierForEnvironmentMode:(int64_t)a3
{
  v5 = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
  v6 = [v5 effectiveSwitcherStyle];

  if (a3 == 2)
  {
    v7 = [SBMixedGridSwitcherModifier alloc];
    width = self->_fullScreenCardSize.width;
    height = self->_fullScreenCardSize.height;
    v10 = self->_floatingCardSize.width;
    v11 = self->_floatingCardSize.height;

    return [(SBMixedGridSwitcherModifier *)v7 initWithFullScreenCardSize:width floatingCardSize:height, v10, v11];
  }

  else if (v6 == 1)
  {

    return objc_alloc_init(SBDeckSwitcherModifier);
  }

  else
  {
    [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
    return objc_claimAutoreleasedReturnValue();
  }
}

- (void)_setCardSizesWithEvent:(id)a3
{
  v12 = a3;
  [(SBMainSwitcherRootSwitcherModifier *)self containerViewBounds];
  self->_fullScreenCardSize.width = v4;
  self->_fullScreenCardSize.height = v5;
  if (v12)
  {
    v6 = [v12 toInterfaceOrientation];
    v7 = [v12 toFloatingConfiguration];
    v8 = self;
    v9 = v6;
  }

  else
  {
    v9 = [(SBMainSwitcherRootSwitcherModifier *)self switcherInterfaceOrientation];
    v8 = self;
    v7 = 2;
  }

  [(SBMainSwitcherRootSwitcherModifier *)v8 floatingApplicationFrameInInterfaceOrientation:v9 floatingConfiguration:v7];
  self->_floatingCardSize.width = v10;
  self->_floatingCardSize.height = v11;
}

- (void)_ensureModifier:(id)a3 startsInFinalStateOfEvent:(id)a4
{
  v6 = a3;
  v7 = [a4 unhandledCopy];
  [v7 setAnimated:0];
  [v7 setPhase:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBMainSwitcherRootSwitcherModifier__ensureModifier_startsInFinalStateOfEvent___block_invoke;
  v10[3] = &unk_2783A92D8;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v9 usingBlock:v10];
}

- (BOOL)_correctFloorModifierToHandleEvent
{
  v3 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)transitionModifierForMainTransitionEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainSwitcherRootSwitcherModifier.m" lineNumber:231 description:@"Expected instance of SBAppExposeGridSwitcherModifier"];
}

- (void)transitionModifierForMainTransitionEvent:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainSwitcherRootSwitcherModifier.m" lineNumber:215 description:@"Expected instance of SBAppExposeGridSwitcherModifier"];
}

- (void)transitionModifierForMainTransitionEvent:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainSwitcherRootSwitcherModifier.m" lineNumber:202 description:@"Expected instance of SBAppExposeGridSwitcherModifier"];
}

@end