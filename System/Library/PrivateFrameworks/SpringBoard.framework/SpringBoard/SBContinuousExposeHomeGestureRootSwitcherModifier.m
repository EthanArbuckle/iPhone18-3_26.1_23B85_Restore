@interface SBContinuousExposeHomeGestureRootSwitcherModifier
- (SBContinuousExposeHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleGestureEvent:(id)a3;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBContinuousExposeHomeGestureRootSwitcherModifier

- (SBContinuousExposeHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:a3];
  if (v9)
  {
    if (!v8)
    {
      [SBContinuousExposeHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, a4);
  }

  return v9;
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

  v11 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self windowManagementContext];
  v12 = [v6 type];
  if ([(SBContinuousExposeHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
  {
    v13 = [SBReduceMotionHomeGestureSwitcherModifier alloc];
    v14 = [v6 gestureID];
    v15 = [(SBReduceMotionHomeGestureSwitcherModifier *)v13 initWithGestureID:v14 selectedAppLayout:v8 startingEnvironmentMode:v9 scrunchInitiated:v12 == 3 continuingGesture:v7 != 0 lastGestureWasAnArcSwipe:isKindOfClass & 1];

    [(SBReduceMotionHomeGestureSwitcherModifier *)v15 setShouldProvideBlur:0];
    [(SBReduceMotionHomeGestureSwitcherModifier *)v15 setLaysOutNeighboringCards:0];
  }

  else
  {
    v24 = v11;
    if ([v11 isAutomaticStageCreationEnabled] && (-[SBContinuousExposeHomeGestureRootSwitcherModifier peekingAppLayout](self, "peekingAppLayout"), v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
    {
      v17 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v21 = [SBContinuousExposeHomeGestureSwitcherModifier alloc];
      v22 = [v6 gestureID];
      LOBYTE(v23) = isKindOfClass & 1;
      v15 = [(SBContinuousExposeHomeGestureSwitcherModifier *)v21 initWithGestureID:v22 selectedAppLayout:v8 startingEnvironmentMode:v9 multitaskingModifier:v17 scrunchInitiated:v12 == 3 continuingGesture:v7 != 0 lastGestureWasAnArcSwipe:v23];
    }

    else
    {
      v17 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v18 = [SBFlexibleWindowingHomeGestureSwitcherModifier alloc];
      v19 = [v6 gestureID];
      LOBYTE(v23) = isKindOfClass & 1;
      v15 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)v18 initWithGestureID:v19 selectedAppLayout:v8 startingEnvironmentMode:v9 multitaskingModifier:v17 scrunchInitiated:v12 == 3 continuingGesture:v7 != 0 lastGestureWasAnArcSwipe:v23];
    }

    v11 = v24;
  }

  return v15;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_lastGestureEvent, a3);
  if ([v5 phase] == 1)
  {
    v12.receiver = self;
    v12.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
    v6 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)&v12 visibleAppLayouts];
    v7 = [v6 copy];
    initiallyVisibleAppLayouts = self->_initiallyVisibleAppLayouts;
    self->_initiallyVisibleAppLayouts = v7;
  }

  v11.receiver = self;
  v11.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 handleGestureEvent:v5];

  return v9;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 toEnvironmentMode];
  v9 = [v6 fromEnvironmentMode];
  v10 = [v6 transitionID];
  v11 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if (v9 == 3 && v8 == 1)
  {
    if (SBPeekConfigurationIsValid([v6 toPeekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v6, "fromPeekConfiguration")))
    {
      v12 = [v6 toAppLayout];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __121__SBContinuousExposeHomeGestureRootSwitcherModifier_transitionChildModifierForMainTransitionEvent_activeGestureModifier___block_invoke;
      v82[3] = &unk_2783A8C90;
      v83 = v12;
      v13 = v12;
      v14 = [v11 appLayoutWithItemsPassingTest:v82];

      if (v14)
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      v11 = v14;
    }

    else
    {
      v9 = 3;
    }
  }

  v15 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  v16 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled];
  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  if (v16)
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
      v21 = v7;
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
      v26 = v7;
      [v26 liftOffVelocityForGestureEnd];
      v20 = v27;
      v19 = v28;
      [v26 liftOffTranslationForGestureEnd];
      v17 = v29;
      v18 = v30;
    }
  }

  if (v8 != 1)
  {
    if (v8 == 3)
    {
      v35 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self windowManagementContext];
      if ([v35 isAutomaticStageCreationEnabled] && (-[SBContinuousExposeHomeGestureRootSwitcherModifier peekingAppLayout](self, "peekingAppLayout"), v46 = objc_claimAutoreleasedReturnValue(), v46, !v46))
      {
        v63 = [SBContinuousExposeArcSwipeSwitcherModifier alloc];
        v48 = [v6 fromAppLayout];
        v49 = [v6 toAppLayout];
        v64 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
        v36 = [(SBContinuousExposeArcSwipeSwitcherModifier *)v63 initWithTransitionID:v10 fromAppLayout:v48 toAppLayout:v49 selectedAppLayout:v64 initialVisibleAppLayouts:self->_initiallyVisibleAppLayouts pinSpaceCornerRadiiToDisplayCornerRadii:0];
      }

      else
      {
        v47 = [SBFlexibleWindowingArcSwipeSwitcherModifier alloc];
        v48 = [v6 fromAppLayout];
        v49 = [v6 toAppLayout];
        v36 = [(SBFlexibleWindowingArcSwipeSwitcherModifier *)v47 initWithTransitionID:v10 fromAppLayout:v48 toAppLayout:v49 pinSpaceCornerRadiiToDisplayCornerRadii:0];
      }
    }

    else
    {
      if (v8 != 2)
      {
        v36 = 0;
        goto LABEL_60;
      }

      v35 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
      v36 = [[SBHomeGestureToSwitcherSwitcherModifier alloc] initWithTransitionID:v10 multitaskingModifier:v35 selectedAppLayout:v11 startingEnvironmentMode:v15 liftOffVelocity:1 liftOffTranslation:1 adjustAppLayoutsBeforeTransition:v20 keepSelectedAppLayoutAsTopMostElement:v19, v17, v18];
      [(SBHomeGestureToSwitcherSwitcherModifier *)v36 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
    }

    goto LABEL_59;
  }

  if (v9 != 1)
  {
    if ([v6 isMorphToPIPTransition])
    {
      if (v11)
      {
        v37 = -[SBFullScreenToHomePIPSwitcherModifier initWithTransitionID:appLayout:layoutRole:]([SBFullScreenToHomePIPSwitcherModifier alloc], "initWithTransitionID:appLayout:layoutRole:", v10, v11, [v6 morphingPIPLayoutRole]);
        [(SBFullScreenToHomePIPSwitcherModifier *)v37 setShouldForceDefaultAnchorPointForTransition:1];
        v38 = [SBHomeGestureToZoomDownSwitcherModifier alloc];
        v39 = v10;
        v40 = v11;
        v41 = v37;
        v42 = v9;
        v43 = v20;
        v44 = v19;
        v45 = 1;
LABEL_35:
        v36 = [(SBHomeGestureToZoomDownSwitcherModifier *)v38 initWithTransitionID:v39 appLayout:v40 nonGestureInitiatedZoomModifier:v41 effectiveStartingEnvironmentMode:v42 liftOffVelocity:v45 adjustAnimationAttributes:0 showingOrAnimatingCardsForFlyIn:v43, v44];

        goto LABEL_60;
      }

      goto LABEL_36;
    }

    if ([(SBSwitcherModifier *)self shouldZoomToSystemApertureForEvent:v6 activeLayout:v11])
    {
      if (v11)
      {
        v50 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self appLayouts];
        v51 = [v50 indexOfObject:v11];

        [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self frameForIndex:v51];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;
        [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self scaleForIndex:v51];
        v37 = [[SBFullScreenToHomeSystemApertureSwitcherModifier alloc] initWithTransitionID:v10 zoomModifier:0 appLayout:v11 direction:1 expandedCardFrame:v53 cardScale:v55 cardVelocity:v57, v59, v60, v20, v19];
        v38 = [SBHomeGestureToZoomDownSwitcherModifier alloc];
        v39 = v10;
        v40 = v11;
        v41 = v37;
        v42 = v9;
        v43 = v20;
        v44 = v19;
        v45 = 0;
        goto LABEL_35;
      }

LABEL_36:
      v33 = [SBHomeGestureToHomeSwitcherModifier alloc];
      v34 = v10;
      IsValid = 1;
      goto LABEL_37;
    }

    v35 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self displayItemInSlideOver];
    if (v35)
    {
      v62 = [v11 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v11, "layoutRoleForItem:", v35)}];
    }

    else
    {
      v62 = v11;
    }

    v65 = v62;
    if ([v6 isIconZoomDisabled])
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

      if (v35 && (v75 & 1) != 0)
      {
        goto LABEL_49;
      }
    }

    else if (v35)
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
    if ((v16 | CGRectIsNull(v85)))
    {
      v76 = v81;
      if (!v11)
      {
        v36 = [[SBHomeGestureToHomeSwitcherModifier alloc] initWithTransitionID:v10 showingOrAnimatingCardsForFlyIn:1];
        goto LABEL_58;
      }

      v77 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self homeGestureSettings];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v77 homeGestureCenterZoomDownCenterYOffsetFactor];
      v36 = [[SBFullScreenToHomeCenterZoomDownSwitcherModifier alloc] initWithTransitionID:v10 appLayout:v11 offsetYPercentOfScreenHeight:v78];
      [(SBHomeGestureToSwitcherSwitcherModifier *)v36 setShouldForceDefaultAnchorPointForTransition:1];
    }

    else
    {
      v76 = v81;
      v77 = [[SBFullScreenToHomeIconZoomSwitcherModifier alloc] initWithTransitionID:v10 appLayout:v81 direction:1];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v77 setShouldForceDefaultAnchorPointForTransition:1];
      [(SBFullScreenToHomeIconZoomSwitcherModifier *)v77 setShouldDockOrderFrontDuringTransition:1];
      v36 = [[SBHomeGestureToZoomDownSwitcherModifier alloc] initWithTransitionID:v10 appLayout:v81 nonGestureInitiatedZoomModifier:v77 effectiveStartingEnvironmentMode:v9 liftOffVelocity:1 adjustAnimationAttributes:0 showingOrAnimatingCardsForFlyIn:v20, v19];
      if (v35 && [v11 containsItem:v35])
      {
        v79 = [[SBStashSlideOverItemAnimationModifier alloc] initWithDirection:0];
        [(SBChainableModifier *)v79 addChildModifier:v36];

        v36 = v79;
      }
    }

LABEL_58:
    goto LABEL_59;
  }

  if (!SBPeekConfigurationIsValid([v6 fromPeekConfiguration]) || SBPeekConfigurationIsValid(objc_msgSend(v6, "toPeekConfiguration")))
  {
    v31 = [SBHomeGestureToHomeSwitcherModifier alloc];
    IsValid = SBPeekConfigurationIsValid([v6 toPeekConfiguration]);
    v33 = v31;
    v34 = v10;
LABEL_37:
    v36 = [(SBHomeGestureToHomeSwitcherModifier *)v33 initWithTransitionID:v34 showingOrAnimatingCardsForFlyIn:IsValid];
    goto LABEL_60;
  }

  v61 = [SBHomePeekToHomeTransitionModifier alloc];
  v35 = [v6 fromAppLayout];
  v36 = -[SBHomePeekToHomeTransitionModifier initWithFromAppLayout:fromConfiguration:](v61, "initWithFromAppLayout:fromConfiguration:", v35, [v6 fromPeekConfiguration]);
LABEL_59:

LABEL_60:

  return v36;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)a3 fromAppLayouts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBGestureRootSwitcherModifier *)self selectedAppLayout];
  if ([v7 count] >= 2 && v8)
  {
    v9 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)self maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v8 ignoreOcclusion:1 ignoreCentering:0];
    if ([v9 count])
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __115__SBContinuousExposeHomeGestureRootSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
      v14[3] = &unk_2783A8CB8;
      v15 = v9;
      v10 = v9;
      v11 = [v7 bs_firstObjectPassingTest:v14];

      goto LABEL_7;
    }
  }

  v13.receiver = self;
  v13.super_class = SBContinuousExposeHomeGestureRootSwitcherModifier;
  v11 = [(SBContinuousExposeHomeGestureRootSwitcherModifier *)&v13 preferredAppLayoutToReuseAccessoryForAppLayout:v6 fromAppLayouts:v7];
LABEL_7:

  return v11;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 multitaskingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeHomeGestureRootSwitcherModifier.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"multitaskingModifier"}];
}

@end