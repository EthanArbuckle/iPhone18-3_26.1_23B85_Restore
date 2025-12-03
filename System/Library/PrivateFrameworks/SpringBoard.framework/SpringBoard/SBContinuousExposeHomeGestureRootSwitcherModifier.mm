@interface SBContinuousExposeHomeGestureRootSwitcherModifier
- (SBContinuousExposeHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleGestureEvent:(id)event;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBContinuousExposeHomeGestureRootSwitcherModifier

- (SBContinuousExposeHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:mode];
  if (v9)
  {
    if (!modifierCopy)
    {
      [SBContinuousExposeHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, modifier);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  modifierCopy = modifier;
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  if (modifierCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  windowManagementContext = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self windowManagementContext];
  type = [eventCopy type];
  if ([(SBContinuousExposeHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v13 = [SBReduceMotionHomeGestureSwitcherModifier alloc];
    gestureID = [eventCopy gestureID];
    v15 = [(SBReduceMotionHomeGestureSwitcherModifier *)v13 initWithGestureID:gestureID selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode scrunchInitiated:type == 3 continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1];

    [(SBReduceMotionHomeGestureSwitcherModifier *)v15 setShouldProvideBlur:0];
    [(SBReduceMotionHomeGestureSwitcherModifier *)v15 setLaysOutNeighboringCards:0];
  }

  else
  {
    v24 = windowManagementContext;
    if ([windowManagementContext isAutomaticStageCreationEnabled] && (-[SBContinuousExposeHomeGestureRootSwitcherModifier peekingAppLayout](self, "peekingAppLayout"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      _newMultitaskingModifier = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v21 = [SBContinuousExposeHomeGestureSwitcherModifier alloc];
      gestureID2 = [eventCopy gestureID];
      LOBYTE(v23) = isKindOfClass & 1;
      v15 = [(SBContinuousExposeHomeGestureSwitcherModifier *)v21 initWithGestureID:gestureID2 selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode multitaskingModifier:_newMultitaskingModifier scrunchInitiated:type == 3 continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:v23];
    }

    else
    {
      _newMultitaskingModifier = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v18 = [SBFlexibleWindowingHomeGestureSwitcherModifier alloc];
      gestureID3 = [eventCopy gestureID];
      LOBYTE(v23) = isKindOfClass & 1;
      v15 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)v18 initWithGestureID:gestureID3 selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode multitaskingModifier:_newMultitaskingModifier scrunchInitiated:type == 3 continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:v23];
    }

    windowManagementContext = v24;
  }

  return v15;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_lastGestureEvent, event);
  if ([eventCopy phase] == 1)
  {
    v12.receiver = self;
    v12.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
    visibleAppLayouts = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)&v12 visibleAppLayouts];
    v7 = [visibleAppLayouts copy];
    initiallyVisibleAppLayouts = self->_initiallyVisibleAppLayouts;
    self->_initiallyVisibleAppLayouts = v7;
  }

  v11.receiver = self;
  v11.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 handleGestureEvent:eventCopy];

  return v9;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  modifierCopy = modifier;
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  transitionID = [eventCopy transitionID];
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if (fromEnvironmentMode == 3 && toEnvironmentMode == 1)
  {
    if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "fromPeekConfiguration")))
    {
      toAppLayout = [eventCopy toAppLayout];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __121__SBContinuousExposeHomeGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke;
      v82[3] = &unk_2783A8C90;
      v83 = toAppLayout;
      v13 = toAppLayout;
      v14 = [selectedAppLayout appLayoutWithItemsPassingTest:v82];

      if (v14)
      {
        fromEnvironmentMode = 3;
      }

      else
      {
        fromEnvironmentMode = 1;
      }

      selectedAppLayout = v14;
    }

    else
    {
      fromEnvironmentMode = 3;
    }
  }

  currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  isReduceMotionEnabled = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled];
  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  if (isReduceMotionEnabled)
  {
    v19 = *(MEMORY[0x277CBF348] + 8);
    v20 = *MEMORY[0x277CBF348];
  }

  else
  {
    objc_opt_class();
    v19 = v18;
    v20 = v17;
    if (objc_opt_isKindOfClass())
    {
      v21 = modifierCopy;
      [v21 liftOffVelocityForGestureEnd];
      v20 = v22;
      v19 = v23;
      [v21 liftOffTranslationForGestureEnd];
      v17 = v24;
      v18 = v25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = modifierCopy;
      [v26 liftOffVelocityForGestureEnd];
      v20 = v27;
      v19 = v28;
      [v26 liftOffTranslationForGestureEnd];
      v17 = v29;
      v18 = v30;
    }
  }

  if (toEnvironmentMode != 1)
  {
    if (toEnvironmentMode == 3)
    {
      windowManagementContext = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self windowManagementContext];
      if ([windowManagementContext isAutomaticStageCreationEnabled] && (-[SBContinuousExposeHomeGestureRootSwitcherModifier peekingAppLayout](self, "peekingAppLayout"), v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
      {
        v63 = [SBContinuousExposeArcSwipeSwitcherModifier alloc];
        fromAppLayout = [eventCopy fromAppLayout];
        toAppLayout2 = [eventCopy toAppLayout];
        selectedAppLayout2 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
        v36 = [(SBContinuousExposeArcSwipeSwitcherModifier *)v63 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout2 selectedAppLayout:selectedAppLayout2 initialVisibleAppLayouts:self->_initiallyVisibleAppLayouts pinSpaceCornerRadiiToDisplayCornerRadii:0];
      }

      else
      {
        v47 = [SBFlexibleWindowingArcSwipeSwitcherModifier alloc];
        fromAppLayout = [eventCopy fromAppLayout];
        toAppLayout2 = [eventCopy toAppLayout];
        v36 = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)v47 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout2 pinSpaceCornerRadiiToDisplayCornerRadii:0];
      }
    }

    else
    {
      if (toEnvironmentMode != 2)
      {
        v36 = 0;
        goto LABEL_60;
      }

      windowManagementContext = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v36 = [[SBHomeGestureToSwitcherSwitcherModifier alloc] initWithTransitionID:transitionID multitaskingModifier:windowManagementContext selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode liftOffVelocity:1 liftOffTranslation:1 adjustAppLayoutsBeforeTransition:v20 keepSelectedAppLayoutAsTopMostElement:v19, v17, v18];
      [(SBHomeGestureToSwitcherSwitcherModifier *)v36 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
    }

    goto LABEL_59;
  }

  if (fromEnvironmentMode != 1)
  {
    if ([eventCopy isMorphToPIPTransition])
    {
      if (selectedAppLayout)
      {
        v37 = -[SBFullScreenToHomePIPSwitcherModifier initWithTransitionID:appLayout:layoutRole:]([SBFullScreenToHomePIPSwitcherModifier alloc], "initWithTransitionID:appLayout:layoutRole:", transitionID, selectedAppLayout, [eventCopy morphingPIPLayoutRole]);
        [(SBFullScreenToHomePIPSwitcherModifier *)v37 setShouldForceDefaultAnchorPointForTransition:1];
        v38 = [SBHomeGestureToZoomDownSwitcherModifier alloc];
        v39 = transitionID;
        v40 = selectedAppLayout;
        v41 = v37;
        v42 = fromEnvironmentMode;
        v43 = v20;
        v44 = v19;
        v45 = 1;
LABEL_35:
        v36 = [(SBHomeGestureToZoomDownSwitcherModifier *)v38 initWithTransitionID:v39 appLayout:v40 nonGestureInitiatedZoomModifier:v41 effectiveStartingEnvironmentMode:v42 liftOffVelocity:v45 adjustAnimationAttributes:0 showingOrAnimatingCardsForFlyIn:v43, v44];

        goto LABEL_60;
      }

      goto LABEL_36;
    }

    if ([(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:eventCopy activeLayout:selectedAppLayout])
    {
      if (selectedAppLayout)
      {
        appLayouts = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self appLayouts];
        v51 = [appLayouts indexOfObject:selectedAppLayout];

        [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self frameForIndex:v51];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self scaleForIndex:v51];
        v37 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:transitionID zoomModifier:0 appLayout:selectedAppLayout direction:1 expandedCardFrame:v53 cardScale:v55 cardVelocity:v57, v59, v60, v20, v19];
        v38 = [SBHomeGestureToZoomDownSwitcherModifier alloc];
        v39 = transitionID;
        v40 = selectedAppLayout;
        v41 = v37;
        v42 = fromEnvironmentMode;
        v43 = v20;
        v44 = v19;
        v45 = 0;
        goto LABEL_35;
      }

LABEL_36:
      v33 = [SBHomeGestureToHomeSwitcherModifier alloc];
      v34 = transitionID;
      IsValid = 1;
      goto LABEL_37;
    }

    windowManagementContext = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self displayItemInSlideOver];
    if (windowManagementContext)
    {
      v62 = [selectedAppLayout appLayoutByRemovingItemInLayoutRole:{objc_msgSend(selectedAppLayout, "layoutRoleForItem:", windowManagementContext)}];
    }

    else
    {
      v62 = selectedAppLayout;
    }

    v65 = v62;
    if ([eventCopy isIconZoomDisabled])
    {
      v66 = *MEMORY[0x277CBF398];
      v67 = *(MEMORY[0x277CBF398] + 8);
      v68 = *(MEMORY[0x277CBF398] + 16);
      v69 = *(MEMORY[0x277CBF398] + 24);
    }

    else
    {
      [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v65];
      v66 = v70;
      v67 = v71;
      v68 = v72;
      v69 = v73;
    }

    v81 = v65;
    if (v65)
    {
      v74 = +[SBAppLayout homeScreenAppLayout];
      v75 = [v65 isEqual:v74];

      if (windowManagementContext && (v75 & 1) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (windowManagementContext)
    {
LABEL_49:
      v36 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
      v76 = v81;
      goto LABEL_58;
    }

    v85.origin.x = v66;
    v85.origin.y = v67;
    v85.size.width = v68;
    v85.size.height = v69;
    if ((isReduceMotionEnabled | CGRectIsNull(v85)))
    {
      v76 = v81;
      if (!selectedAppLayout)
      {
        v36 = [[SBHomeGestureToHomeSwitcherModifier alloc] initWithTransitionID:transitionID showingOrAnimatingCardsForFlyIn:1];
        goto LABEL_58;
      }

      homeGestureSettings = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self homeGestureSettings];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings homeGestureCenterZoomDownCenterYOffsetFactor];
      v36 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:selectedAppLayout offsetYPercentOfScreenHeight:v78];
      [(SBHomeGestureToSwitcherSwitcherModifier *)v36 setShouldForceDefaultAnchorPointForTransition:1];
    }

    else
    {
      v76 = v81;
      homeGestureSettings = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v81 direction:1];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings setShouldForceDefaultAnchorPointForTransition:1];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)homeGestureSettings setShouldDockOrderFrontDuringTransition:1];
      v36 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v81 nonGestureInitiatedZoomModifier:homeGestureSettings effectiveStartingEnvironmentMode:fromEnvironmentMode liftOffVelocity:1 adjustAnimationAttributes:0 showingOrAnimatingCardsForFlyIn:v20, v19];
      if (windowManagementContext && [selectedAppLayout containsItem:windowManagementContext])
      {
        v79 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
        [(SBChainableModifier *)v79 addChildModifier:v36];

        v36 = v79;
      }
    }

LABEL_58:
    goto LABEL_59;
  }

  if (!SBPeekConfigurationIsValid([eventCopy fromPeekConfiguration]) || SBPeekConfigurationIsValid(objc_msgSend(eventCopy, "toPeekConfiguration")))
  {
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    IsValid = SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]);
    v33 = v31;
    v34 = transitionID;
LABEL_37:
    v36 = [(SBHomeGestureToHomeSwitcherModifier *)v33 initWithTransitionID:v34 showingOrAnimatingCardsForFlyIn:IsValid];
    goto LABEL_60;
  }

  v61 = [SBHomePeekToHomeTransitionModifier alloc];
  windowManagementContext = [eventCopy fromAppLayout];
  v36 = -[SBHomePeekToHomeTransitionModifier initWithFromAppLayout:fromConfiguration:](v61, "initWithFromAppLayout:fromConfiguration:", windowManagementContext, [eventCopy fromPeekConfiguration]);
LABEL_59:

LABEL_60:

  return v36;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  layoutCopy = layout;
  layoutsCopy = layouts;
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if ([layoutsCopy count] >= 2 && selectedAppLayout)
  {
    v9 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:selectedAppLayout ignoreOcclusion:1 ignoreCentering:0];
    if ([v9 count])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __115__SBContinuousExposeHomeGestureRootSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
      v14[3] = &unk_2783A8CB8;
      v15 = v9;
      v10 = v9;
      v11 = [layoutsCopy bs_firstObjectPassingTest:v14];

      goto LABEL_7;
    }
  }

  v13.receiver = self;
  v13.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v11 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)&v13 preferredAppLayoutToReuseAccessoryForAppLayout:layoutCopy fromAppLayouts:layoutsCopy];
LABEL_7:

  return v11;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 multitaskingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeHomeGestureRootSwitcherModifier.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"multitaskingModifier"}];
}

@end