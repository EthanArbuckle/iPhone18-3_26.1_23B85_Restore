@interface SBMainSwitcherRootSwitcherModifier
- (BOOL)_correctFloorModifierToHandleEvent;
- (SBMainSwitcherRootSwitcherModifier)init;
- (id)_createNewDefaultFloorModifier;
- (id)_newMultitaskingModifierForEnvironmentMode:(int64_t)mode;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)floorModifierForTransitionEvent:(id)event;
- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event;
- (id)gestureModifierForGestureEvent:(id)event;
- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)highlightModifierForHighlightEvent:(id)event;
- (id)insertionModifierForInsertionEvent:(id)event;
- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)event;
- (id)removalModifierForRemovalEvent:(id)event;
- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event;
- (id)shelfModifierForTransitionEvent:(id)event;
- (id)swipeToKillModifierForSwipeToKillEvent:(id)event;
- (id)transitionModifierForMainTransitionEvent:(id)event;
- (id)userScrollingModifierForScrollEvent:(id)event;
- (void)_ensureModifier:(id)modifier startsInFinalStateOfEvent:(id)event;
- (void)_setCardSizesWithEvent:(id)event;
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

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v8.receiver = self;
  v8.super_class = SBMainSwitcherRootSwitcherModifier;
  v3 = [(SBMainSwitcherRootSwitcherModifier *)&v8 adjustedAppLayoutsForAppLayouts:layouts];
  v4 = [v3 bs_filter:&__block_literal_global_56];
  v5 = [v3 bs_filter:&__block_literal_global_4];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)gestureModifierForGestureEvent:(id)event
{
  eventCopy = event;
  gestureID = [eventCopy gestureID];
  if (-[SBMainSwitcherRootSwitcherModifier _correctFloorModifierToHandleEvent](self, "_correctFloorModifierToHandleEvent") && [eventCopy gestureType] == 2)
  {
    v6 = [[SBGridSwipeUpGestureSwitcherModifier alloc] initWithGestureID:gestureID];
  }

  else
  {
    v6 = 0;
  }

  if ([eventCopy gestureType] == 6)
  {
    v7 = [[SBDragAndDropGestureRootSwitcherModifier alloc] initWithStartingEnvironmentMode:self->_environmentMode floatingSwitcherVisible:self->_floatingSwitcherVisible fullScreenAppLayout:self->_appLayout];
  }

  else
  {
    if ([eventCopy gestureType] != 8)
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
    selectedAppLayout = [eventCopy selectedAppLayout];
    v7 = [(SBMedusaWindowDragGestureRootSwitcherModifier *)v11 initWithSelectedLeafAppLayout:selectedAppLayout currentMainAppLayout:v9 currentFloatingAppLayout:self->_floatingAppLayout currentFloatingConfiguration:self->_floatingConfiguration];

    v6 = v9;
  }

  v6 = v7;
LABEL_13:

  return v6;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  self->_environmentMode = [eventCopy toEnvironmentMode];
  self->_floatingSwitcherVisible = [eventCopy toFloatingSwitcherVisible];
  toAppLayout = [eventCopy toAppLayout];
  appLayout = self->_appLayout;
  self->_appLayout = toAppLayout;

  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  floatingAppLayout = self->_floatingAppLayout;
  self->_floatingAppLayout = toFloatingAppLayout;

  self->_floatingConfiguration = [eventCopy toFloatingConfiguration];
  [(SBMainSwitcherRootSwitcherModifier *)self _setCardSizesWithEvent:eventCopy];
  v11.receiver = self;
  v11.super_class = SBMainSwitcherRootSwitcherModifier;
  v9 = [(SBFluidSwitcherRootSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];

  return v9;
}

- (id)handleMoveDisplayItemFromOtherDisplayEvent:(id)event
{
  v16[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBMainSwitcherRootSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleMoveDisplayItemFromOtherDisplayEvent:eventCopy];
  if (([eventCopy isHandled] & 1) == 0)
  {
    displayItem = [eventCopy displayItem];
    v7 = [SBAppLayout alloc];
    v16[0] = displayItem;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    LOBYTE(v14) = 0;
    v9 = [(SBAppLayout *)v7 initWithItems:v8 centerItem:0 floatingItem:0 configuration:0 centerConfiguration:0 environment:1 hidden:v14 preferredDisplayOrdinal:[(SBMainSwitcherRootSwitcherModifier *)self displayOrdinal]];

    v10 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v10 setAppLayout:v9];
    v11 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v10 gestureInitiated:0];
    v12 = SBAppendSwitcherModifierResponse(v11, v5);

    [eventCopy handleWithReason:@"Main Switcher Root"];
    v5 = v12;
  }

  return v5;
}

- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event
{
  v10.receiver = self;
  v10.super_class = SBMainSwitcherRootSwitcherModifier;
  v6 = [(SBFluidSwitcherRootSwitcherModifier *)&v10 responseForProposedChildResponse:response childModifier:modifier event:event];
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

- (id)transitionModifierForMainTransitionEvent:(id)event
{
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  fromAppLayout = [eventCopy fromAppLayout];
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  toAppLayout = [eventCopy toAppLayout];
  toFloatingAppLayout = [eventCopy toFloatingAppLayout];
  fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromFloatingConfiguration = [eventCopy fromFloatingConfiguration];
  toFloatingConfiguration = [eventCopy toFloatingConfiguration];
  switcherSettings = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
  effectiveSwitcherStyle = [switcherSettings effectiveSwitcherStyle];

  if (!fromAppExposeBundleID && toAppExposeBundleID && toEnvironmentMode == 2)
  {
    v13 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:eventCopy];
    fromShelf = [v13 copy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v15 = toAppLayout;
    if (fromEnvironmentMode != 1)
    {
      v16 = toFloatingAppLayout;
      if (fromEnvironmentMode != 2)
      {
        if (fromEnvironmentMode != 3)
        {
          v26 = 0;
          v19 = transitionID;
          v20 = fromAppLayout;
          goto LABEL_35;
        }

        floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
        v18 = [floorModifier copy];

        v19 = transitionID;
        v20 = fromAppLayout;
        v21 = [[SBAppExposeToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 fullScreenAppLayout:fromAppLayout floatingAppLayout:fromFloatingAppLayout bundleIdentifier:toAppExposeBundleID appExposeModifier:fromShelf fullScreenModifier:v18];
        goto LABEL_18;
      }

      v28 = [SBSwitcherToAppExposeSwitcherModifier alloc];
      v19 = transitionID;
      v29 = transitionID;
      v30 = toAppExposeBundleID;
LABEL_26:
      v26 = [(SBSwitcherToAppExposeSwitcherModifier *)v28 initWithTransitionID:v29 bundleIdentifier:v30 appExposeModifier:fromShelf];
      v20 = fromAppLayout;
      goto LABEL_35;
    }

    v19 = transitionID;
    v26 = [[SBAppExposeToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 bundleIdentifier:toAppExposeBundleID appExposeModifier:fromShelf];
    v20 = fromAppLayout;
LABEL_31:
    v16 = toFloatingAppLayout;
    goto LABEL_35;
  }

  if (fromAppExposeBundleID && !toAppExposeBundleID && fromEnvironmentMode == 2)
  {
    floorModifier2 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
    fromShelf = [floorModifier2 copy];

    objc_opt_class();
    v15 = toAppLayout;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v23 = toEnvironmentMode;
    v24 = toEnvironmentMode == 1;
    v19 = transitionID;
    v20 = fromAppLayout;
    v16 = toFloatingAppLayout;
    if (v24)
    {
      v26 = [[SBAppExposeToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:0 bundleIdentifier:fromAppExposeBundleID appExposeModifier:fromShelf];
      goto LABEL_35;
    }

    if (v23 != 3)
    {
      v26 = 0;
      goto LABEL_35;
    }

    v25 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:eventCopy];
    v18 = [v25 copy];

    [(SBMainSwitcherRootSwitcherModifier *)self _ensureModifier:v18 startsInFinalStateOfEvent:eventCopy];
    v21 = [[SBAppExposeToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID direction:0 fullScreenAppLayout:v15 floatingAppLayout:toFloatingAppLayout bundleIdentifier:fromAppExposeBundleID appExposeModifier:fromShelf fullScreenModifier:v18];
LABEL_18:
    v26 = v21;

LABEL_35:
    goto LABEL_36;
  }

  v15 = toAppLayout;
  if (fromAppExposeBundleID && toAppExposeBundleID && toEnvironmentMode == 2)
  {
    v27 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:eventCopy];
    fromShelf = [v27 copy];

    objc_opt_class();
    v16 = toFloatingAppLayout;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMainSwitcherRootSwitcherModifier *)a2 transitionModifierForMainTransitionEvent:?];
    }

    v28 = [SBSwitcherToAppExposeSwitcherModifier alloc];
    v19 = transitionID;
    v29 = transitionID;
    v30 = fromAppExposeBundleID;
    goto LABEL_26;
  }

  v84 = toEnvironmentMode;
  if ([eventCopy isCenterWindowZoomingUpFromShelfEvent])
  {
    fromShelf = [eventCopy fromShelf];
    v31 = [SBShelfZoomTransitionModifier alloc];
    v19 = transitionID;
    v20 = fromAppLayout;
    v32 = transitionID;
    v33 = 1;
    v34 = fromAppLayout;
    v35 = toAppLayout;
LABEL_29:
    v26 = [(SBShelfZoomTransitionModifier *)v31 initWithTransitionID:v32 direction:v33 fromAppLayout:v34 toAppLayout:v35 shelf:fromShelf];
    goto LABEL_31;
  }

  v37 = fromEnvironmentMode;
  if (!fromAppExposeBundleID && toAppExposeBundleID && fromEnvironmentMode == 3)
  {
    v38 = [fromAppLayout itemForLayoutRole:4];
    v37 = 3;
    if (v38)
    {
      v39 = v38;
      v40 = [toAppLayout itemForLayoutRole:4];
      if (v40)
      {

        v37 = 3;
      }

      else
      {
        v41 = SBLayoutRoleSetForRole2(1, 2);
        v42 = [fromAppLayout hasSameItemsInLayoutRoles:v41 asAppLayout:toAppLayout];

        v37 = 3;
        if (v42)
        {
          v43 = [SBShelfZoomTransitionModifier alloc];
          fromShelf = [eventCopy toShelf];
          v31 = v43;
          v19 = transitionID;
          v20 = fromAppLayout;
          v32 = transitionID;
          v33 = 0;
          v34 = fromAppLayout;
          v15 = toAppLayout;
          v35 = toAppLayout;
          goto LABEL_29;
        }
      }
    }
  }

  else if (fromAppExposeBundleID && !toAppExposeBundleID && fromEnvironmentMode == 3)
  {
    fromShelf = [[SBSwitcherShelf alloc] initWithBundleIdentifier:fromAppExposeBundleID layoutRole:0 displayMode:0];
    v19 = transitionID;
    v26 = [[SBShelfIconBounceTransitionModifier alloc] initWithTransitionID:transitionID shelf:fromShelf];
    v20 = fromAppLayout;
    v15 = toAppLayout;
    goto LABEL_31;
  }

  if (effectiveSwitcherStyle != 2)
  {
    v26 = 0;
    v19 = transitionID;
    v20 = fromAppLayout;
    v15 = toAppLayout;
    v16 = toFloatingAppLayout;
    goto LABEL_36;
  }

  v15 = toAppLayout;
  if (v37 != 2 || v84 != 3)
  {
    if (v37 == 2 && v84 == 1)
    {
      floorModifier3 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
      fromFloatingAppLayout3 = [floorModifier3 copy];

      v26 = [[SBMixedGridToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:0 mixedGridModifier:fromFloatingAppLayout3];
LABEL_60:

      goto LABEL_74;
    }

    if (v84 == 2)
    {
      v16 = toFloatingAppLayout;
      if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
      {
LABEL_63:
        v26 = 0;
        goto LABEL_75;
      }

      switch(fromEnvironmentMode)
      {
        case 1:
          v51 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
          v52 = [v51 copy];

          v26 = [[SBMixedGridToHomeSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 mixedGridModifier:v52];
          break;
        case 2:
          v26 = [(SBTransitionSwitcherModifier *)[SBGridSwipeUpToSwitcherSwitcherModifier alloc] initWithTransitionID:transitionID];
          goto LABEL_75;
        case 3:
          v68 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:eventCopy];
          v52 = [v68 copy];

          v69 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
          v26 = [[SBMixedGridToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID direction:1 fullScreenAppLayout:fromAppLayout floatingAppLayout:fromFloatingAppLayout floatingConfiguration:fromFloatingConfiguration gridModifier:v69 fullScreenModifier:v52];

          break;
        default:
          goto LABEL_63;
      }

      goto LABEL_75;
    }

    if ([eventCopy isPrimaryToSlideOverEvent])
    {
      v49 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v50 = &SBLayoutRolePrimary;
LABEL_72:
      v53 = *v50;
      fromAppLayout2 = [eventCopy fromAppLayout];
      toFloatingAppLayout2 = [eventCopy toFloatingAppLayout];
      v56 = v49;
      v57 = transitionID;
      v58 = v53;
      v59 = fromAppLayout2;
      v60 = toFloatingAppLayout2;
      v61 = 0;
LABEL_73:
      v26 = [(SBSplitViewToSlideOverSwitcherModifier *)v56 initWithTransitionID:v57 transitioningLayoutRole:v58 splitViewAppLayout:v59 slideOverAppLayout:v60 direction:v61];

      goto LABEL_74;
    }

    if ([eventCopy isSideToSlideOverEvent])
    {
      v49 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v50 = &SBLayoutRoleSide;
      goto LABEL_72;
    }

    if ([eventCopy isSlideOverToSideEvent])
    {
      v66 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v67 = &SBLayoutRoleSide;
LABEL_90:
      v70 = *v67;
      fromAppLayout2 = [eventCopy toAppLayout];
      toFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
      v56 = v66;
      v57 = transitionID;
      v58 = v70;
      v59 = fromAppLayout2;
      v60 = toFloatingAppLayout2;
      v61 = 1;
      goto LABEL_73;
    }

    if ([eventCopy isSlideOverToPrimaryEvent])
    {
      v66 = [SBSplitViewToSlideOverSwitcherModifier alloc];
      v67 = &SBLayoutRolePrimary;
      goto LABEL_90;
    }

    if ([eventCopy isEnteringAnyPeekEvent] && (objc_msgSend(eventCopy, "fromAppLayout"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "itemForLayoutRole:", 2), v72 = objc_claimAutoreleasedReturnValue(), v72, v71, !v72))
    {
      if (([(SBMainSwitcherRootSwitcherModifier *)self isReduceMotionEnabled]& 1) == 0)
      {
        v83 = [SBFullScreenToPeekSwitcherModifier alloc];
        fromAppLayout3 = [eventCopy fromAppLayout];
        toAppLayout2 = [eventCopy toAppLayout];
        fromFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
        toFloatingAppLayout3 = [eventCopy toFloatingAppLayout];
        v81 = -[SBFullScreenToPeekSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:](v83, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:peekConfiguration:", transitionID, fromAppLayout3, toAppLayout2, fromFloatingAppLayout2, toFloatingAppLayout3, [eventCopy toPeekConfiguration]);
        goto LABEL_102;
      }
    }

    else
    {
      if ([eventCopy isSlideOverToFullScreenEvent])
      {
        v73 = [SBSlideOverToFullScreenSwitcherModifier alloc];
        fromFloatingAppLayout3 = [eventCopy fromFloatingAppLayout];
        toAppLayout3 = [eventCopy toAppLayout];
        fromAppLayout4 = [eventCopy fromAppLayout];
        v26 = [(SBSlideOverToFullScreenSwitcherModifier *)v73 initWithTransitionID:transitionID slideOverAppLayout:fromFloatingAppLayout3 fullScreenAppLayout:toAppLayout3 replacingMainAppLayout:fromAppLayout4];

        goto LABEL_60;
      }

      if ([eventCopy isCenterWindowToSlideOverEvent])
      {
        v76 = [SBCenterWindowToSlideOverSwitcherModifier alloc];
        fromAppLayout3 = [eventCopy fromAppLayout];
        toAppLayout2 = [eventCopy fromAppLayout];
        fromFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
        toFloatingAppLayout3 = [eventCopy toFloatingAppLayout];
        v81 = -[SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:](v76, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:", transitionID, fromAppLayout3, toAppLayout2, fromFloatingAppLayout2, toFloatingAppLayout3, [eventCopy toFloatingConfiguration], 0);
LABEL_102:
        v26 = v81;

        goto LABEL_103;
      }

      if ([eventCopy isSlideOverToCenterWindowEvent])
      {
        v82 = [SBCenterWindowToSlideOverSwitcherModifier alloc];
        fromAppLayout3 = [eventCopy fromAppLayout];
        toAppLayout2 = [eventCopy toAppLayout];
        fromFloatingAppLayout2 = [eventCopy fromFloatingAppLayout];
        toFloatingAppLayout3 = [eventCopy toFloatingAppLayout];
        v81 = -[SBCenterWindowToSlideOverSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:](v82, "initWithTransitionID:fromAppLayout:toAppLayout:fromFloatingAppLayout:toFloatingAppLayout:toFloatingConfiguration:direction:", transitionID, fromAppLayout3, toAppLayout2, fromFloatingAppLayout2, toFloatingAppLayout3, [eventCopy toFloatingConfiguration], 1);
        goto LABEL_102;
      }
    }

    v26 = 0;
LABEL_103:
    v15 = toAppLayout;
    goto LABEL_74;
  }

  if (SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]))
  {
    v26 = 0;
LABEL_74:
    v16 = toFloatingAppLayout;
    goto LABEL_75;
  }

  v46 = [(SBMainSwitcherRootSwitcherModifier *)self _newMultitaskingModifierForEnvironmentMode:2];
  [(SBMainSwitcherRootSwitcherModifier *)self _ensureModifier:v46 startsInFinalStateOfEvent:eventCopy];
  v47 = [(SBMainSwitcherRootSwitcherModifier *)self floorModifierForTransitionEvent:eventCopy];
  v48 = [v47 copy];

  v16 = toFloatingAppLayout;
  v26 = [[SBMixedGridToFullScreenSwitcherModifier alloc] initWithTransitionID:transitionID direction:0 fullScreenAppLayout:v15 floatingAppLayout:toFloatingAppLayout floatingConfiguration:toFloatingConfiguration gridModifier:v46 fullScreenModifier:v48];

LABEL_75:
  if ([eventCopy isKeyboardShortcutInitiated] && fromEnvironmentMode == 3)
  {
    v19 = transitionID;
    v20 = fromAppLayout;
    if (v84 == 1)
    {
      if ([eventCopy isEnteringAnyPeekEvent])
      {
        fromAppLayout5 = [eventCopy fromAppLayout];
        isSplitConfiguration = [fromAppLayout5 isSplitConfiguration];

        if (isSplitConfiguration)
        {
          v64 = [SBSplitViewToPeekTransitionSwitcherModifier alloc];
          fromShelf = [eventCopy fromAppLayout];
          v65 = [(SBSplitViewToPeekTransitionSwitcherModifier *)v64 initWithTransitionID:transitionID fromAppLayout:fromShelf];

          v26 = v65;
          goto LABEL_35;
        }
      }
    }
  }

  else
  {
    v19 = transitionID;
    v20 = fromAppLayout;
  }

LABEL_36:

  return v26;
}

- (id)insertionModifierForInsertionEvent:(id)event
{
  eventCopy = event;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBInsertionSwitcherModifier alloc];
    appLayout = [eventCopy appLayout];
    v7 = [(SBInsertionSwitcherModifier *)v5 initWithAppLayout:appLayout];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)swipeToKillModifierForSwipeToKillEvent:(id)event
{
  eventCopy = event;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBSwipeToKillSwitcherModifier alloc];
    layoutRole = [eventCopy layoutRole];
    appLayout = [eventCopy appLayout];
    v8 = [(SBSwipeToKillSwitcherModifier *)v5 initWithLayoutRole:layoutRole inAppLayout:appLayout fadeOutSwipedItems:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)highlightModifierForHighlightEvent:(id)event
{
  eventCopy = event;
  if (-[SBMainSwitcherRootSwitcherModifier _correctFloorModifierToHandleEvent](self, "_correctFloorModifierToHandleEvent") && ([eventCopy isHoverEvent] & 1) == 0)
  {
    v6 = [SBHighlightSwitcherModifier alloc];
    layoutRole = [eventCopy layoutRole];
    appLayout = [eventCopy appLayout];
    v5 = [(SBHighlightSwitcherModifier *)v6 initWithLayoutRole:layoutRole inAppLayout:appLayout listensForHighlightEvents:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)removalModifierForRemovalEvent:(id)event
{
  eventCopy = event;
  if ([(SBMainSwitcherRootSwitcherModifier *)self _correctFloorModifierToHandleEvent])
  {
    v5 = [SBRemovalSwitcherModifier alloc];
    layoutRole = [eventCopy layoutRole];
    appLayout = [eventCopy appLayout];
    v8 = -[SBRemovalSwitcherModifier initWithLayoutRole:inAppLayout:reason:](v5, "initWithLayoutRole:inAppLayout:reason:", layoutRole, appLayout, [eventCopy reason]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)floorModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, eventCopy);

  toEnvironmentMode = [v6 toEnvironmentMode];
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  if (!v6)
  {
    _createNewDefaultFloorModifier = [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
    toAppExposeBundleID = floorModifier;
    goto LABEL_18;
  }

  toAppExposeBundleID = [v6 toAppExposeBundleID];
  if (toAppExposeBundleID)
  {
    v10 = toEnvironmentMode == 2;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([floorModifier bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", toAppExposeBundleID), v13, (v14 & 1) == 0))
    {
      _createNewDefaultFloorModifier2 = [[SBAppExposeGridSwitcherModifier alloc] initWithBundleIdentifier:toAppExposeBundleID fullScreenCardSize:self->_fullScreenCardSize.width floatingCardSize:self->_fullScreenCardSize.height, self->_floatingCardSize.width, self->_floatingCardSize.height];
      goto LABEL_14;
    }
  }

  else if (toEnvironmentMode == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && !SBPeekConfigurationIsValid([v6 toPeekConfiguration]))
    {
      _createNewDefaultFloorModifier2 = [[SBMixedGridSwitcherModifier alloc] initWithFullScreenCardSize:self->_fullScreenCardSize.width floatingCardSize:self->_fullScreenCardSize.height, self->_floatingCardSize.width, self->_floatingCardSize.height];
LABEL_14:
      _createNewDefaultFloorModifier = _createNewDefaultFloorModifier2;

      goto LABEL_18;
    }
  }

  else if (!SBPeekConfigurationIsValid([v6 toPeekConfiguration]))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _createNewDefaultFloorModifier2 = [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
      goto LABEL_14;
    }
  }

  _createNewDefaultFloorModifier = floorModifier;
LABEL_18:

  return _createNewDefaultFloorModifier;
}

- (id)userScrollingModifierForScrollEvent:(id)event
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

- (id)shelfModifierForTransitionEvent:(id)event
{
  eventCopy = event;
  toAppExposeBundleID = [eventCopy toAppExposeBundleID];
  if (toAppExposeBundleID && [eventCopy toEnvironmentMode] == 3)
  {
    v6 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:toAppExposeBundleID layoutRole:0 displayMode:0];
    uniqueIdentifier = [(SBSwitcherShelf *)v6 uniqueIdentifier];
    v8 = [(SBChainableModifier *)self childModifierByKey:uniqueIdentifier];

    v9 = 0;
    if (!v8)
    {
      activatingAppLayout = [eventCopy activatingAppLayout];

      if (activatingAppLayout)
      {
        toAppLayout = [eventCopy toAppLayout];
        [(SBMainSwitcherRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:toAppLayout];
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

      v20 = [SBShelfSwitcherModifier contentOptionsForTransitionEvent:eventCopy context:self];
      v21 = [SBShelfSwitcherModifier alloc];
      toAppLayout2 = [eventCopy toAppLayout];
      toFloatingAppLayout = [eventCopy toFloatingAppLayout];
      fromAppLayout = [eventCopy fromAppLayout];
      v9 = [(SBShelfSwitcherModifier *)v21 initWithShelf:v6 contentOptions:v20 activeFullScreenAppLayout:toAppLayout2 activeFloatingAppLayout:toFloatingAppLayout presentationTargetFrame:fromAppLayout presentedFromAppLayout:v13, v15, v17, v19];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)reduceMotionModifierForReduceMotionChangedEvent:(id)event
{
  if ([(SBMainSwitcherRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    switcherSettings = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
    effectiveSwitcherStyle = [switcherSettings effectiveSwitcherStyle];

    v6 = off_2783A1578;
    if (effectiveSwitcherStyle != 1)
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

- (id)focusedAppModifierForUpdateFocusedAppLayoutEvent:(id)event
{
  eventCopy = event;
  v4 = [SBFocusedAppLayoutSwitcherModifier alloc];
  appLayout = [eventCopy appLayout];

  v6 = [(SBFocusedAppLayoutSwitcherModifier *)v4 initWithFocusedAppLayout:appLayout];

  return v6;
}

- (id)_createNewDefaultFloorModifier
{
  v2 = objc_alloc_init(SBSplitViewRootSwitcherModifier);
  v3 = objc_alloc_init(SBFloatingFluidSwitcherRootSwitcherModifier);
  v4 = [[SBMainSwitcherRoutingSwitcherModifier alloc] initWithMainModifierSubtree:v2 floatingModifierSubtree:v3];

  return v4;
}

- (id)_newMultitaskingModifierForEnvironmentMode:(int64_t)mode
{
  switcherSettings = [(SBMainSwitcherRootSwitcherModifier *)self switcherSettings];
  effectiveSwitcherStyle = [switcherSettings effectiveSwitcherStyle];

  if (mode == 2)
  {
    v7 = [SBMixedGridSwitcherModifier alloc];
    width = self->_fullScreenCardSize.width;
    height = self->_fullScreenCardSize.height;
    v10 = self->_floatingCardSize.width;
    v11 = self->_floatingCardSize.height;

    return [(SBMixedGridSwitcherModifier *)v7 initWithFullScreenCardSize:width floatingCardSize:height, v10, v11];
  }

  else if (effectiveSwitcherStyle == 1)
  {

    return objc_alloc_init(SBDeckSwitcherModifier);
  }

  else
  {
    [(SBMainSwitcherRootSwitcherModifier *)self _createNewDefaultFloorModifier];
    return objc_claimAutoreleasedReturnValue();
  }
}

- (void)_setCardSizesWithEvent:(id)event
{
  eventCopy = event;
  [(SBMainSwitcherRootSwitcherModifier *)self containerViewBounds];
  self->_fullScreenCardSize.width = v4;
  self->_fullScreenCardSize.height = v5;
  if (eventCopy)
  {
    toInterfaceOrientation = [eventCopy toInterfaceOrientation];
    toFloatingConfiguration = [eventCopy toFloatingConfiguration];
    selfCopy2 = self;
    switcherInterfaceOrientation = toInterfaceOrientation;
  }

  else
  {
    switcherInterfaceOrientation = [(SBMainSwitcherRootSwitcherModifier *)self switcherInterfaceOrientation];
    selfCopy2 = self;
    toFloatingConfiguration = 2;
  }

  [(SBMainSwitcherRootSwitcherModifier *)selfCopy2 floatingApplicationFrameInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:toFloatingConfiguration];
  self->_floatingCardSize.width = v10;
  self->_floatingCardSize.height = v11;
}

- (void)_ensureModifier:(id)modifier startsInFinalStateOfEvent:(id)event
{
  modifierCopy = modifier;
  unhandledCopy = [event unhandledCopy];
  [unhandledCopy setAnimated:0];
  [unhandledCopy setPhase:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__SBMainSwitcherRootSwitcherModifier__ensureModifier_startsInFinalStateOfEvent___block_invoke;
  v10[3] = &unk_2783A92D8;
  v11 = modifierCopy;
  v12 = unhandledCopy;
  v8 = unhandledCopy;
  v9 = modifierCopy;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v9 usingBlock:v10];
}

- (BOOL)_correctFloorModifierToHandleEvent
{
  floorModifier = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    floorModifier2 = [(SBFluidSwitcherRootSwitcherModifier *)self floorModifier];
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