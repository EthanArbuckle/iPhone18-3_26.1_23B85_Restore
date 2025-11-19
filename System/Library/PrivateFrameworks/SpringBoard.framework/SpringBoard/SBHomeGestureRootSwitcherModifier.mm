@interface SBHomeGestureRootSwitcherModifier
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (SBHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleGestureEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBHomeGestureRootSwitcherModifier

- (SBHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:a3];
  if (v9)
  {
    if (!v8)
    {
      [SBHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, a4);
  }

  return v9;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_lastGestureEvent, a3);
  v6 = ([(SBHomeGestureRootSwitcherModifier *)self isDevicePad]& 1) == 0 && [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode]== 3;
  self->_shouldAccelerateHomeGesture = v6;
  v9.receiver = self;
  v9.super_class = SBHomeGestureRootSwitcherModifier;
  v7 = [(SBGestureRootSwitcherModifier *)&v9 handleGestureEvent:v5];

  return v7;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shouldAccelerateHomeGesture)
  {
    v6 = [v4 fromEnvironmentMode] == 3 && objc_msgSend(v5, "toEnvironmentMode") == 1 && objc_msgSend(v5, "isGestureInitiated") && objc_msgSend(v5, "phase") < 3;
    self->_shouldAccelerateHomeGesture = v6;
  }

  v9.receiver = self;
  v9.super_class = SBHomeGestureRootSwitcherModifier;
  v7 = [(SBGestureRootSwitcherModifier *)&v9 handleTransitionEvent:v5];

  return v7;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v9 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v11 = [v6 type];
  if ([(SBHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v12 = [SBReduceMotionHomeGestureSwitcherModifier alloc];
    v13 = [v6 gestureID];
    v14 = [(SBReduceMotionHomeGestureSwitcherModifier *)v12 initWithGestureID:v13 selectedAppLayout:v8 startingEnvironmentMode:v9 scrunchInitiated:v11 == 3 continuingGesture:v7 != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1];

    v15 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setShouldProvideBlur:](v14, "setShouldProvideBlur:", [v15 isChamoisOrFlexibleWindowing] ^ 1);

    v16 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setLaysOutNeighboringCards:](v14, "setLaysOutNeighboringCards:", [v16 isChamoisOrFlexibleWindowing] ^ 1);
  }

  else
  {
    v17 = v11 == 3;
    v16 = [(SBHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v18 = [SBHomeGestureSwitcherModifier alloc];
    [v6 gestureID];
    v24 = v6;
    v20 = v19 = v8;
    LOBYTE(v23) = isKindOfClass & 1;
    v14 = [(SBHomeGestureSwitcherModifier *)v18 initWithGestureID:v20 selectedAppLayout:v19 startingEnvironmentMode:v9 multitaskingModifier:v16 scrunchInitiated:v17 continuingGesture:v7 != 0 lastGestureWasAnArcSwipe:v23];

    v21 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    -[SBReduceMotionHomeGestureSwitcherModifier setProvidesHomeScreenDimmingAlpha:](v14, "setProvidesHomeScreenDimmingAlpha:", [v21 isChamoisOrFlexibleWindowing] ^ 1);

    v8 = v19;
    v6 = v24;
  }

  return v14;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 toEnvironmentMode];
  v10 = [v7 fromEnvironmentMode];
  v11 = [v7 transitionID];
  v12 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  v81 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  v13 = [(SBHomeGestureRootSwitcherModifier *)self switcherSettings];
  v80 = [v13 effectiveSwitcherStyle];

  v14 = [(SBHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled];
  if (v14)
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

    v20 = v8;
    if ([v20 isShowingOrAnimatingCardsForFlyIn])
    {
      [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
      v79 = v14;
      v21 = v7;
      v22 = v10;
      v23 = v8;
      v24 = v11;
      v26 = v25 = v12;
      v15 = [v26 isChamoisOrFlexibleWindowing] ^ 1;

      v12 = v25;
      v11 = v24;
      v8 = v23;
      v10 = v22;
      v7 = v21;
      v14 = v79;
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

  if (v9 == 3)
  {
    v45 = v12;
    v46 = [SBArcSwipeSwitcherModifier alloc];
    v34 = [v7 fromAppLayout];
    v47 = [v7 toAppLayout];
    v48 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    v49 = [v48 isChamoisOrFlexibleWindowing] ^ 1;
    v50 = v46;
    v12 = v45;
    v44 = [(SBArcSwipeSwitcherModifier *)v50 initWithTransitionID:v11 fromAppLayout:v34 toAppLayout:v47 pinSpaceCornerRadiiToDisplayCornerRadii:v49];

    goto LABEL_20;
  }

  if (v9 == 2)
  {
    if (self->_resignsTransitionIntoAppSwitcher && v80 != 1 && !SBPeekConfigurationIsValid([v7 toPeekConfiguration]))
    {
      goto LABEL_18;
    }

    v34 = [(SBHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v35 = v8;
    v36 = v11;
    v37 = v12;
    v38 = [SBHomeGestureToSwitcherSwitcherModifier alloc];
    v39 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    v40 = [v39 isChamoisOrFlexibleWindowing];
    v41 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
    v42 = [v41 isChamoisOrFlexibleWindowing];
    v43 = v38;
    v12 = v37;
    v11 = v36;
    v8 = v35;
    v44 = [(SBHomeGestureToSwitcherSwitcherModifier *)v43 initWithTransitionID:v11 multitaskingModifier:v34 selectedAppLayout:v12 startingEnvironmentMode:v81 liftOffVelocity:v40 liftOffTranslation:v42 adjustAppLayoutsBeforeTransition:v19 keepSelectedAppLayoutAsTopMostElement:v18, v16, v17];

    [(SBHomeGestureToZoomDownSwitcherModifier *)v44 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
LABEL_20:

    goto LABEL_38;
  }

  if (v9 != 1)
  {
LABEL_18:
    v44 = 0;
    goto LABEL_38;
  }

  if (v10 == 1)
  {
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    v32 = v11;
    v33 = v15;
LABEL_37:
    v44 = [(SBHomeGestureToHomeSwitcherModifier *)v31 initWithTransitionID:v32 showingOrAnimatingCardsForFlyIn:v33];
    goto LABEL_38;
  }

  if ([v7 isMorphToPIPTransition])
  {
    if (v12)
    {
      v51 = v15;
      v52 = v12;
      v34 = -[SBFullScreenToHomePIPSwitcherModifier initWithTransitionID:appLayout:layoutRole:]([SBFullScreenToHomePIPSwitcherModifier alloc], "initWithTransitionID:appLayout:layoutRole:", v11, v12, [v7 morphingPIPLayoutRole]);
      v53 = [(SBHomeGestureRootSwitcherModifier *)self windowManagementContext];
      v54 = [v53 isChamoisOrFlexibleWindowing];

      if (v54)
      {
        [(SBFullScreenToHomePIPSwitcherModifier *)v34 setShouldForceDefaultAnchorPointForTransition:1];
      }

      v12 = v52;
      v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:v11 appLayout:v52 nonGestureInitiatedZoomModifier:v34 effectiveStartingEnvironmentMode:v10 liftOffVelocity:1 adjustAnimationAttributes:v51 showingOrAnimatingCardsForFlyIn:v19, v18];
      goto LABEL_20;
    }

LABEL_36:
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    v32 = v11;
    v33 = 1;
    goto LABEL_37;
  }

  if ([(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:v7 activeLayout:v12])
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
    v56 = v55 = v12;
    v57 = v15;
    v58 = [v56 indexOfObject:v55];

    [(SBHomeGestureRootSwitcherModifier *)self frameForIndex:v58];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [(SBHomeGestureRootSwitcherModifier *)self scaleForIndex:v58];
    v68 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:v11 zoomModifier:0 appLayout:v55 direction:1 expandedCardFrame:v60 cardScale:v62 cardVelocity:v64, v66, v67, v19, v18];
    v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:v11 appLayout:v55 nonGestureInitiatedZoomModifier:v68 effectiveStartingEnvironmentMode:v10 liftOffVelocity:0 adjustAnimationAttributes:v57 showingOrAnimatingCardsForFlyIn:v19, v18];
LABEL_35:

    v12 = v55;
    goto LABEL_38;
  }

  if ([v7 isIconZoomDisabled])
  {
    v69 = *MEMORY[0x277CBF398];
    v70 = *(MEMORY[0x277CBF398] + 8);
    v71 = *(MEMORY[0x277CBF398] + 16);
    v72 = *(MEMORY[0x277CBF398] + 24);
  }

  else
  {
    [(SBHomeGestureRootSwitcherModifier *)self homeScreenIconFrameForAppLayout:v12];
  }

  if ((v14 | CGRectIsNull(*&v69)))
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    [(SBHomeGestureRootSwitcherModifier *)self homeGestureSettings];
    v68 = v55 = v12;
    [(SBFullScreenToHomeSystemApertureSwitcherModifier *)v68 homeGestureCenterZoomDownCenterYOffsetFactor];
    v44 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:v11 appLayout:v55 offsetYPercentOfScreenHeight:v73];
    [(SBHomeGestureToZoomDownSwitcherModifier *)v44 setShouldForceDefaultAnchorPointForTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];
    goto LABEL_35;
  }

  v75 = v15;
  v76 = v10;
  v77 = v12;
  v78 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v11 appLayout:v12 direction:1];
  v44 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:v11 appLayout:v77 nonGestureInitiatedZoomModifier:v78 effectiveStartingEnvironmentMode:v76 liftOffVelocity:1 adjustAnimationAttributes:v75 showingOrAnimatingCardsForFlyIn:v19, v18];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v78 setShouldForceDefaultAnchorPointForTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];
  [(SBFullScreenToHomeIconZoomSwitcherModifier *)v78 setShouldDockOrderFrontDuringTransition:self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning];

  v12 = v77;
LABEL_38:

  return v44;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning && (-[SBGestureRootSwitcherModifier selectedAppLayout](self, "selectedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isOrContainsAppLayout:v7], v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureRootSwitcherModifier;
    v9 = [(SBHomeGestureRootSwitcherModifier *)&v11 shouldPinLayoutRolesToSpace:a3];
  }

  return v9;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBHomeGestureRootSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_ensuresSelectedAppLayoutUsesAnchorPointSpacePinning && (-[SBGestureRootSwitcherModifier selectedAppLayout](self, "selectedAppLayout"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isOrContainsAppLayout:v7], v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureRootSwitcherModifier;
    v9 = [(SBHomeGestureRootSwitcherModifier *)&v11 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
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