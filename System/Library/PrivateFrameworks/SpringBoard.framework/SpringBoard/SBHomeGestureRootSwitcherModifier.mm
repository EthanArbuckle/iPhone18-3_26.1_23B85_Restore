@interface SBHomeGestureRootSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (SBHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleGestureEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBHomeGestureRootSwitcherModifier

- (SBHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:mode];
  if (v9)
  {
    if (!modifierCopy)
    {
      [SBHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, modifier);
  }

  return v9;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_lastGestureEvent, event);
  v6 = ([(SBHomeGestureRootSwitcherModifier *)self isDevicePad]& 1) == 0 && [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode]== 3;
  self->_shouldAccelerateHomeGesture = v6;
  v9.receiver = self;
  v9.super_class = SBHomeGestureRootSwitcherModifier;
  v7 = [(SBGestureRootSwitcherModifier *)&v9 handleGestureEvent:eventCopy];

  return v7;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (self->_shouldAccelerateHomeGesture)
  {
    v6 = [eventCopy fromEnvironmentMode] == 3 && objc_msgSend(v5, "toEnvironmentMode") == 1 && objc_msgSend(v5, "isGestureInitiated") && objc_msgSend(v5, "phase") < 3;
    self->_shouldAccelerateHomeGesture = v6;
  }

  v9.receiver = self;
  v9.super_class = SBHomeGestureRootSwitcherModifier;
  v7 = [(SBGestureRootSwitcherModifier *)&v9 handleTransitionEvent:v5];

  return v7;
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

  type = [eventCopy type];
  if ([(SBHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v12 = [SBReduceMotionHomeGestureSwitcherModifier alloc];
    gestureID = [eventCopy gestureID];
    v14 = [(SBReduceMotionHomeGestureSwitcherModifier *)v12 initWithGestureID:gestureID selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode scrunchInitiated:type == 3 continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1];

    windowManagementContext = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setShouldProvideBlur:](v14, "setShouldProvideBlur:", [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1);

    windowManagementContext2 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setLaysOutNeighboringCards:](v14, "setLaysOutNeighboringCards:", [windowManagementContext2 isChamoisOrFlexibleWindowing] ^ 1);
  }

  else
  {
    v17 = type == 3;
    windowManagementContext2 = [(SBHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v18 = [SBHomeGestureSwitcherModifier alloc];
    [eventCopy gestureID];
    v24 = eventCopy;
    v20 = v19 = selectedAppLayout;
    LOBYTE(v23) = isKindOfClass & 1;
    v14 = [(SBHomeGestureSwitcherModifier *)v18 initWithGestureID:v20 selectedAppLayout:v19 startingEnvironmentMode:currentEnvironmentMode multitaskingModifier:windowManagementContext2 scrunchInitiated:v17 continuingGesture:modifierCopy != 0 lastGestureWasAnArcSwipe:v23];

    windowManagementContext3 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setProvidesHomeScreenDimmingAlpha:](v14, "setProvidesHomeScreenDimmingAlpha:", [windowManagementContext3 isChamoisOrFlexibleWindowing] ^ 1);

    selectedAppLayout = v19;
    eventCopy = v24;
  }

  return v14;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  modifierCopy = modifier;
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  transitionID = [eventCopy transitionID];
  selectedAppLayout = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  switcherSettings = [(SBHomeGestureRootSwitcherModifier *)self switcherSettings];
  effectiveSwitcherStyle = [switcherSettings effectiveSwitcherStyle];

  isReduceMotionEnabled = [(SBHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled];
  if (isReduceMotionEnabled)
  {
    v15 = 0;
    v16 = *MEMORY[0x277CBF348];
    v17 = *(MEMORY[0x277CBF348] + 8);
    v18 = v17;
    v19 = *MEMORY[0x277CBF348];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBHomeGestureRootSwitcherModifier transitionChildModifierForMainTransitionEvent:a2 activeGestureModifier:self];
    }

    v20 = modifierCopy;
    if ([v20 isShowingOrAnimatingCardsForFlyIn])
    {
      [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
      v79 = isReduceMotionEnabled;
      v21 = eventCopy;
      v22 = fromEnvironmentMode;
      v23 = modifierCopy;
      v24 = transitionID;
      v26 = v25 = selectedAppLayout;
      v15 = [v26 isChamoisOrFlexibleWindowing] ^ 1;

      selectedAppLayout = v25;
      transitionID = v24;
      modifierCopy = v23;
      fromEnvironmentMode = v22;
      eventCopy = v21;
      isReduceMotionEnabled = v79;
    }

    else
    {
      v15 = 0;
    }

    [v20 liftOffVelocityForGestureEnd];
    v19 = v27;
    v18 = v28;
    [v20 liftOffTranslationForGestureEnd];
    v16 = v29;
    v17 = v30;
  }

  if (toEnvironmentMode == 3)
  {
    v45 = selectedAppLayout;
    v46 = [SBArcSwipeSwitcherModifier alloc];
    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    windowManagementContext = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    v49 = [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1;
    v50 = v46;
    selectedAppLayout = v45;
    v44 = [(SBArcSwipeSwitcherModifier *)v50 initWithTransitionID:transitionID fromAppLayout:fromAppLayout toAppLayout:toAppLayout pinSpaceCornerRadiiToDisplayCornerRadii:v49];

    goto LABEL_20;
  }

  if (toEnvironmentMode == 2)
  {
    if (self->_resignsTransitionIntoAppSwitcher && effectiveSwitcherStyle != 1 && !SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
    {
      goto LABEL_18;
    }

    fromAppLayout = [(SBHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v35 = modifierCopy;
    v36 = transitionID;
    v37 = selectedAppLayout;
    v38 = [SBHomeGestureToSwitcherSwitcherModifier alloc];
    windowManagementContext2 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext2 isChamoisOrFlexibleWindowing];
    windowManagementContext3 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    isChamoisOrFlexibleWindowing2 = [windowManagementContext3 isChamoisOrFlexibleWindowing];
    v43 = v38;
    selectedAppLayout = v37;
    transitionID = v36;
    modifierCopy = v35;
    v44 = [(SBHomeGestureToSwitcherSwitcherModifier *)v43 initWithTransitionID:transitionID multitaskingModifier:fromAppLayout selectedAppLayout:selectedAppLayout startingEnvironmentMode:currentEnvironmentMode liftOffVelocity:isChamoisOrFlexibleWindowing liftOffTranslation:isChamoisOrFlexibleWindowing2 adjustAppLayoutsBeforeTransition:v19 keepSelectedAppLayoutAsTopMostElement:v18, v16, v17];

    [(SBHomeGestureToZoomDownSwitcherModifier *)v44 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
LABEL_20:

    goto LABEL_38;
  }

  if (toEnvironmentMode != 1)
  {
LABEL_18:
    v44 = 0;
    goto LABEL_38;
  }

  if (fromEnvironmentMode == 1)
  {
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    v32 = transitionID;
    v33 = v15;
LABEL_37:
    v44 = [(SBHomeGestureToHomeSwitcherModifier *)v31 initWithTransitionID:v32 showingOrAnimatingCardsForFlyIn:v33];
    goto LABEL_38;
  }

  if ([eventCopy isMorphToPIPTransition])
  {
    if (selectedAppLayout)
    {
      v51 = v15;
      v52 = selectedAppLayout;
      fromAppLayout = -[SBFullScreenToHomePIPSwitcherModifier initWithTransitionID:appLayout:layoutRole:]([SBFullScreenToHomePIPSwitcherModifier alloc], "initWithTransitionID:appLayout:layoutRole:", transitionID, selectedAppLayout, [eventCopy morphingPIPLayoutRole]);
      windowManagementContext4 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
      isChamoisOrFlexibleWindowing3 = [windowManagementContext4 isChamoisOrFlexibleWindowing];

      if (isChamoisOrFlexibleWindowing3)
      {
        [(SBFullScreenToHomePIPSwitcherModifier *)fromAppLayout setShouldForceDefaultAnchorPointForTransition:1];
      }

      selectedAppLayout = v52;
      v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v52 nonGestureInitiatedZoomModifier:fromAppLayout effectiveStartingEnvironmentMode:fromEnvironmentMode liftOffVelocity:1 adjustAnimationAttributes:v51 showingOrAnimatingCardsForFlyIn:v19, v18];
      goto LABEL_20;
    }

LABEL_36:
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    v32 = transitionID;
    v33 = 1;
    goto LABEL_37;
  }

  if ([(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:eventCopy activeLayout:selectedAppLayout])
  {
    if (!selectedAppLayout)
    {
      goto LABEL_36;
    }

    [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
    v56 = v55 = selectedAppLayout;
    v57 = v15;
    v58 = [v56 indexOfObject:v55];

    [(SBHomeGestureRootSwitcherModifier *)self frameForIndex:v58];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [(SBHomeGestureRootSwitcherModifier *)self scaleForIndex:v58];
    v68 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:transitionID zoomModifier:0 appLayout:v55 direction:1 expandedCardFrame:v60 cardScale:v62 cardVelocity:v64, v66, v67, v19, v18];
    v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v55 nonGestureInitiatedZoomModifier:v68 effectiveStartingEnvironmentMode:fromEnvironmentMode liftOffVelocity:0 adjustAnimationAttributes:v57 showingOrAnimatingCardsForFlyIn:v19, v18];
LABEL_35:

    selectedAppLayout = v55;
    goto LABEL_38;
  }

  if ([eventCopy isIconZoomDisabled])
  {
    v69 = *MEMORY[0x277CBF398];
    v70 = *(MEMORY[0x277CBF398] + 8);
    v71 = *(MEMORY[0x277CBF398] + 16);
    v72 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(SBHomeGestureRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:selectedAppLayout];
  }

  if ((isReduceMotionEnabled | CGRectIsNull(*&v69)))
  {
    if (!selectedAppLayout)
    {
      goto LABEL_36;
    }

    [(SBHomeGestureRootSwitcherModifier *)self homeGestureSettings];
    v68 = v55 = selectedAppLayout;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)v68 homeGestureCenterZoomDownCenterYOffsetFactor];
    v44 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v55 offsetYPercentOfScreenHeight:v73];
    [(SBHomeGestureToZoomDownSwitcherModifier *)v44 setShouldForceDefaultAnchorPointForTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];
    goto LABEL_35;
  }

  v75 = v15;
  v76 = fromEnvironmentMode;
  v77 = selectedAppLayout;
  v78 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:selectedAppLayout direction:1];
  v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:transitionID appLayout:v77 nonGestureInitiatedZoomModifier:v78 effectiveStartingEnvironmentMode:v76 liftOffVelocity:1 adjustAnimationAttributes:v75 showingOrAnimatingCardsForFlyIn:v19, v18];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v78 setShouldForceDefaultAnchorPointForTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v78 setShouldDockOrderFrontDuringTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];

  selectedAppLayout = v77;
LABEL_38:

  return v44;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning && (-[SBGestureRootSwitcherModifier selectedAppLayout](self, "selectedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isOrContainsAppLayout:v7], v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureRootSwitcherModifier;
    v9 = [(SBHomeGestureRootSwitcherModifier *)&v11 shouldPinLayoutRolesToSpace:space];
  }

  return v9;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning && (-[SBGestureRootSwitcherModifier selectedAppLayout](self, "selectedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isOrContainsAppLayout:v7], v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureRootSwitcherModifier;
    v9 = [(SBHomeGestureRootSwitcherModifier *)&v11 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v9;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 multitaskingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGestureRootSwitcherModifier.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"multitaskingModifier"}];
}

- (void)transitionChildModifierForMainTransitionEvent:(uint64_t)a1 activeGestureModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGestureRootSwitcherModifier.m" lineNumber:110 description:{@"If reduce motion is disabled, the gesture modifier should be an instance of SBHomeGestureSwitcherModifier"}];
}

@end