@interface SBReduceMotionHomeGestureSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBReduceMotionHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 scrunchInitiated:(BOOL)a6 continuingGesture:(BOOL)a7 lastGestureWasAnArcSwipe:(BOOL)a8;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (id)_newDockModifierRequiringVerticalSwipeToTrackDock:(BOOL)a3 startingEnvironmentMode:(int64_t)a4;
- (id)_responseForActivatingFinalDestination:(int64_t)a3;
- (id)_updateForGestureDidBeginWithEvent:(id)a3;
- (id)_updateForGestureDidChangeWithEvent:(id)a3;
- (id)_updateForGestureDidEndWithEvent:(id)a3;
- (id)_updateReduceMotionAxisIfNecessaryWithEvent:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
- (void)_applyPrototypeSettings;
- (void)_updateGestureTranslationAndVelocityWithEvent:(id)a3;
- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBReduceMotionHomeGestureSwitcherModifier

- (SBReduceMotionHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 scrunchInitiated:(BOOL)a6 continuingGesture:(BOOL)a7 lastGestureWasAnArcSwipe:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  if (self->_startingEnvironmentMode == 2)
  {
    [SBReduceMotionHomeGestureSwitcherModifier initWithGestureID:selectedAppLayout:startingEnvironmentMode:scrunchInitiated:continuingGesture:lastGestureWasAnArcSwipe:];
  }

  v23.receiver = self;
  v23.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  v16 = [(SBGestureSwitcherModifier *)&v23 initWithGestureID:v14];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_selectedAppLayout, a4);
    v17->_startingEnvironmentMode = a5;
    v17->_continuingGesture = a7;
    v17->_lastGestureWasAnArcSwipe = a8;
    v17->_scrunchInitiated = a6;
    v18 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:v17->_selectedAppLayout];
    coplanarLayoutModifier = v17->_coplanarLayoutModifier;
    v17->_coplanarLayoutModifier = v18;

    [(SBCoplanarSwitcherModifier *)v17->_coplanarLayoutModifier setSpacingType:0];
    v20 = objc_alloc_init(SBDismissSiriSwitcherModifier);
    dismissSiriModifier = v17->_dismissSiriModifier;
    v17->_dismissSiriModifier = v20;

    [(SBChainableModifier *)v17 addChildModifier:v17->_dismissSiriModifier];
  }

  return v17;
}

- (void)didMoveToParentModifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v15 didMoveToParentModifier:?];
  if (a3)
  {
    if ([(SBReduceMotionHomeGestureSwitcherModifier *)self isFloatingDockSupported])
    {
      v5 = !self->_scrunchInitiated;
    }

    else
    {
      v5 = 0;
    }

    v6 = self->_continuingGesture && self->_lastGestureWasAnArcSwipe;
    if (self->_dockModifier == 0 && v5)
    {
      v7 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v6 startingEnvironmentMode:self->_startingEnvironmentMode];
      dockModifier = self->_dockModifier;
      self->_dockModifier = v7;

      [(SBChainableModifier *)self addChildModifier:self->_dockModifier];
    }

    if (!self->_finalDestinationModifier)
    {
      if (v5)
      {
        v9 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v6 startingEnvironmentMode:self->_startingEnvironmentMode];
      }

      else
      {
        v9 = 0;
      }

      v10 = [SBHomeGestureFinalDestinationSwitcherModifier alloc];
      v11 = [(SBReduceMotionHomeGestureSwitcherModifier *)self homeGestureSettings];
      [v11 minimumYDistanceForHomeOrAppSwitcher];
      v13 = [(SBHomeGestureFinalDestinationSwitcherModifier *)v10 initWithDelegate:self initialTranslationAdjustment:self->_startingEnvironmentMode minYDistanceForHomeOrSwitcher:self->_continuingGesture startingEnvironmentMode:v9 continuingGesture:*MEMORY[0x277CBF348] dockModifier:*(MEMORY[0x277CBF348] + 8), v12];
      finalDestinationModifier = self->_finalDestinationModifier;
      self->_finalDestinationModifier = v13;

      [(SBChainableModifier *)self addChildModifier:self->_finalDestinationModifier];
    }

    [(SBReduceMotionHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)_newDockModifierRequiringVerticalSwipeToTrackDock:(BOOL)a3 startingEnvironmentMode:(int64_t)a4
{
  v5 = a3;
  v7 = [SBHomeGestureDockSwitcherModifier alloc];

  return [(SBHomeGestureDockSwitcherModifier *)v7 initWithDelegate:self startingEnvironmentMode:a4 requireVerticalSwipeToTrackDock:v5];
}

- (id)handleHomeGestureSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBReduceMotionHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBReduceMotionHomeGestureSwitcherModifier.m" lineNumber:151 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
  }

  v8 = v9;
LABEL_11:
  v11 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v6];

  return v11;
}

- (id)_updateForGestureDidBeginWithEvent:(id)a3
{
  v4 = a3;
  if (self->_gestureHasBegun)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  self->_reduceMotionAxis = 0;
  [v4 locationInContainerView];
  self->_initialTouchLocation.x = v5;
  self->_initialTouchLocation.y = v6;
  self->_lastTouchLocation.x = v5;
  self->_lastTouchLocation.y = v6;
  v7 = objc_alloc_init(SBSwitcherModifierEventResponse);
  [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:v4];
  v8 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateReduceMotionAxisIfNecessaryWithEvent:v4];
  if (v8)
  {
    [(SBChainableModifierEventResponse *)v7 addChildResponse:v8];
  }

  return v7;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:v4];
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v6 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateReduceMotionAxisIfNecessaryWithEvent:v4];
  if (v6)
  {
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v6];
  }

  if (self->_reduceMotionAxis == 2)
  {
    v7 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
    v8 = BSFloatLessThanFloat();
    v9 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier hasSeenAccelerationDipForAppSwitcher];
    if (v7 == 3 && ((v8 | v9) & 1) != 0)
    {
      self->_endingGestureForAppSwitcher = 1;
      v10 = objc_alloc_init(SBCompleteGestureSwitcherEventResponse);
      [(SBChainableModifierEventResponse *)v5 addChildResponse:v10];
    }
  }

  return v5;
}

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBReduceMotionHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v6 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v7 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier finalDestinationReason];
  v8 = v7;
  reduceMotionAxis = self->_reduceMotionAxis;
  if (reduceMotionAxis == 1)
  {
    if (v6 - 3 > 1)
    {
      goto LABEL_12;
    }

    v10 = @"CurrentLayoutBecauseLockedHorizontallyAndTriedToGoHomeOrAppSwitcher";
    goto LABEL_11;
  }

  if (reduceMotionAxis == 2 && v6 - 1 < 2)
  {
    v10 = @"CurrentLayoutBecauseLockedVerticallyAndTriedToArc";
LABEL_11:

    v6 = 0;
    v8 = v10;
  }

LABEL_12:
  if ([v4 isCanceled])
  {
    if (!self->_endingGestureForAppSwitcher)
    {
      goto LABEL_23;
    }

    v11 = v8;
    v8 = @"EndedGestureForAppSwitcher";
    v6 = 3;
    goto LABEL_22;
  }

  if (self->_startingEnvironmentMode == 1 && [(SBAppLayout *)self->_selectedAppLayout type]!= 2 && v6 == 4)
  {
    v11 = objc_alloc_init(SBActivateHomeButtonSwitcherEventResponse);
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v11];
    v6 = 4;
LABEL_22:
  }

LABEL_23:
  v13 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = NSStringFromSBHomeGestureFinalDestination(v6);
    *buf = 138412802;
    v30 = v14;
    v31 = 2048;
    v32 = v6;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "Reduce Motion Home Gesture Modifier - Final Response: %@ (%lu), Reason: %@", buf, 0x20u);
  }

  v15 = [(SBReduceMotionHomeGestureSwitcherModifier *)self _responseForActivatingFinalDestination:v6];
  [(SBChainableModifierEventResponse *)v5 addChildResponse:v15];
  if (v6 - 3 <= 1)
  {
    objc_initWeak(buf, self);
    v16 = [(SBReduceMotionHomeGestureSwitcherModifier *)self switcherSettings];
    v17 = [v16 animationSettings];
    [v17 reduceMotionTriggerDelay];
    v19 = v18;

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __78__SBReduceMotionHomeGestureSwitcherModifier__updateForGestureDidEndWithEvent___block_invoke;
    v26[3] = &unk_2783AD4A0;
    objc_copyWeak(&v27, buf);
    [v15 setDelay:v26 withValidator:v19];
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  if (v6 == 4)
  {
    v20 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:2 phase:1];
    -[SBHapticSwitcherEventResponse setHidEventSenderID:](v20, "setHidEventSenderID:", [v4 hidEventSenderID]);
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v20];
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_32;
    }

    v20 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:0];
    v21 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
    -[SBHapticSwitcherEventResponse setHidEventSenderID:](v21, "setHidEventSenderID:", [v4 hidEventSenderID]);
    v22 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:2];
    v28[0] = v20;
    v28[1] = v21;
    v28[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    [(SBChainableModifierEventResponse *)v5 addChildResponses:v23];
  }

LABEL_32:
  if (self->_didWarmupReduceMotionHaptic)
  {
    self->_didWarmupReduceMotionHaptic = 0;
    v24 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:2 phase:2];
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v24];
  }

  return v5;
}

BOOL __78__SBReduceMotionHomeGestureSwitcherModifier__updateForGestureDidEndWithEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateGestureTranslationAndVelocityWithEvent:(id)a3
{
  v16 = a3;
  [v16 translationInContainerView];
  v5 = v4;
  v7 = v6;
  [(SBReduceMotionHomeGestureSwitcherModifier *)self _updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:v16];
  v8 = v5 + self->_translationAdjustmentForStartingFromHomeScreen.x;
  v9 = v7 + self->_translationAdjustmentForStartingFromHomeScreen.y;
  dockModifier = self->_dockModifier;
  if (dockModifier)
  {
    [(SBHomeGestureDockSwitcherModifier *)dockModifier adjustedTranslationForTranslation:v8, v9];
  }

  self->_translation.x = v8;
  self->_translation.y = v9;
  [v16 averageTouchVelocityOverTimeDuration:0.0416666667];
  self->_velocity.x = v11;
  self->_velocity.y = v12;
  p_lastTouchLocation = &self->_lastTouchLocation;
  [v16 locationInContainerView];
  p_lastTouchLocation->x = v14;
  p_lastTouchLocation->y = v15;
}

- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3
{
  v4 = a3;
  if (self->_reduceMotionAxis != 2 && self->_startingEnvironmentMode == 1)
  {
    x = self->_lastTouchLocation.x;
    v16 = v4;
    [v4 locationInContainerView];
    v7 = v6;
    v8 = v6 - x;
    v9 = MEMORY[0x277D76620];
    v10 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v11 = -v8;
    v12 = v10 == 1;
    v4 = v16;
    if (!v12)
    {
      v11 = v8;
    }

    if (v11 < 0.0)
    {
      v13 = self->_initialTouchLocation.x - self->_translationAdjustmentForStartingFromHomeScreen.x;
      v12 = [*v9 userInterfaceLayoutDirection] == 1;
      v4 = v16;
      v14 = !v12 || v7 <= v13;
      if (!v14 || ((v12 = [*v9 userInterfaceLayoutDirection] == 1, v4 = v16, !v12) ? (v15 = v7 < v13) : (v15 = 0), v15))
      {
        self->_translationAdjustmentForStartingFromHomeScreen.x = self->_translationAdjustmentForStartingFromHomeScreen.x - v8;
      }
    }
  }
}

- (id)_responseForActivatingFinalDestination:(int64_t)a3
{
  v5 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
  v6 = v5;
  v7 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v9 = self->_selectedAppLayout;
      goto LABEL_25;
    }

    v8 = 0;
    if (a3 != 1)
    {
      goto LABEL_27;
    }

    v10 = [v5 indexOfObject:self->_selectedAppLayout];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      if ([v6 count])
      {
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12 - 1;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        v7 = 0;
        v8 = 2;
        goto LABEL_27;
      }

      v8 = 0;
      if (a3 != 4)
      {
        goto LABEL_27;
      }

      v9 = +[SBAppLayout homeScreenAppLayout];
      goto LABEL_25;
    }

    if (!self->_selectedAppLayout)
    {
      v9 = [v5 firstObject];
      goto LABEL_25;
    }

    v14 = [v5 indexOfObject:?];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v14;
      if ([v6 count])
      {
        v16 = [v6 count];
        if (v15 + 1 < v16 - 1)
        {
          v13 = v15 + 1;
        }

        else
        {
          v13 = v16 - 1;
        }

LABEL_20:
        v9 = [v6 objectAtIndex:v13];
LABEL_25:
        v7 = v9;
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
LABEL_26:
  v8 = 0;
LABEL_27:
  v17 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v17 setAppLayout:v7];
  [(SBSwitcherTransitionRequest *)v17 setUnlockedEnvironmentMode:v8];
  v18 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v17 gestureInitiated:1];

  return v18;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x4010000000;
  v19 = &unk_21F9DA6A3;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  coplanarLayoutModifier = self->_coplanarLayoutModifier;
  v20 = *MEMORY[0x277CBF3A0];
  v21 = v4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__SBReduceMotionHomeGestureSwitcherModifier_frameForIndex___block_invoke;
  v15[3] = &unk_2783AA618;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:coplanarLayoutModifier usingBlock:v15];
  v6 = v17;
  if (self->_reduceMotionAxis == 1)
  {
    v7 = self->_translation.x + v17[4];
    v17[4] = v7;
  }

  else
  {
    v7 = v17[4];
  }

  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];
  _Block_object_dispose(&v16, 8);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t __59__SBReduceMotionHomeGestureSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 152) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  result = 1.0;
  if (!self->_laysOutNeighboringCards)
  {
    v4.receiver = self;
    v4.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    [(SBReduceMotionHomeGestureSwitcherModifier *)&v4 scaleForIndex:a3, 1.0];
  }

  return result;
}

- (id)visibleAppLayouts
{
  if (self->_reduceMotionAxis == 1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    selectedAppLayout = self->_selectedAppLayout;
    v5 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
    v6 = v5;
    if (selectedAppLayout)
    {
      v7 = [v5 indexOfObject:self->_selectedAppLayout];
      v8 = v7;
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = v7 + 1;
      v11 = [v6 count] - 1;
      if (v10 < v11)
      {
        v11 = v8 + 1;
      }

      v12 = [v6 subarrayWithRange:{v9 - 1, v11 - v9 + 2}];
      [v3 addObjectsFromArray:v12];
    }

    else
    {
      v13 = [v5 firstObject];

      if (v13)
      {
        [v3 addObject:v13];
      }

      v6 = v13;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)&v15 visibleAppLayouts];
  }

  return v3;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if (self->_laysOutNeighboringCards)
  {
    [(SBReduceMotionHomeGestureSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    [(SBReduceMotionHomeGestureSwitcherModifier *)&v7 cornerRadiiForIndex:a3];
  }

  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if (self->_shouldProvideBlur)
  {
    if (self->_reduceMotionAxis == 1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v5.receiver = self;
    v5.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    return [(SBReduceMotionHomeGestureSwitcherModifier *)&v5 homeScreenBackdropBlurType];
  }
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    if (self->_selectedAppLayout)
    {
      v4 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
      v5 = [v4 indexOfObject:self->_selectedAppLayout];
    }

    else
    {
      v5 = 0;
    }

    v7 = [(SBReduceMotionHomeGestureSwitcherModifier *)self switcherSettings];
    v8 = [v7 numberOfSnapshotsToAlwaysKeepAround];
    if (!v8)
    {
      v8 = [v7 numberOfSnapshotsToCacheInSwitcher];
    }

    v6 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v5 numberOfSnapshotsToCache:1 biasForward:v8, 1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
  if (self->_selectedAppLayout)
  {
    v4 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
    v5 = [v4 indexOfObject:self->_selectedAppLayout];

    if (v5)
    {
      --v5;
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  v12.length = [v3 count];
  v11.location = v5;
  v11.length = v6;
  v12.location = 0;
  v7 = NSIntersectionRange(v11, v12);
  v8 = [v3 subarrayWithRange:{v7.location, v7.length}];

  return v8;
}

- (id)appLayoutsToResignActive
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
  {
    v20.receiver = self;
    v20.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)&v20 appLayoutsToResignActive];
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v3 allValues];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) allObjects];
          [v4 addObjectsFromArray:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:&unk_283371E70];
  }

  else
  {
    v12 = MEMORY[0x277CBEAC0];
    v13 = MEMORY[0x277CBEB98];
    v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)self appLayouts];
    v14 = [v13 setWithArray:v3];
    v11 = [v12 dictionaryWithObject:v14 forKey:&unk_283371E70];
  }

  return v11;
}

- (id)keyboardSuppressionMode
{
  if ([(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
  {
    v5.receiver = self;
    v5.super_class = SBReduceMotionHomeGestureSwitcherModifier;
    v3 = [(SBReduceMotionHomeGestureSwitcherModifier *)&v5 keyboardSuppressionMode];
  }

  else
  {
    v3 = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  return v3;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBReduceMotionHomeGestureSwitcherModifier;
  v4 = [(SBReduceMotionHomeGestureSwitcherModifier *)&v6 asyncRenderingAttributesForAppLayout:a3];
  if ([(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
  {
    return 257;
  }

  else
  {
    return (v4 | 0x100);
  }
}

- (id)_updateReduceMotionAxisIfNecessaryWithEvent:(id)a3
{
  if (self->_reduceMotionAxis)
  {
    goto LABEL_11;
  }

  [a3 velocityInContainerView];
  v6 = v5;
  v7 = v4;
  v8 = v5 == *MEMORY[0x277CBF348] && v4 == *(MEMORY[0x277CBF348] + 8);
  if (v8 || [(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
  {
    goto LABEL_11;
  }

  v9 = fabs(v7 / v6);
  v10 = 2;
  if (v9 < 0.5)
  {
    v10 = 1;
  }

  self->_reduceMotionAxis = v10;
  self->_endingGestureForAppSwitcher = 0;
  if (v9 < 0.5)
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    self->_didWarmupReduceMotionHaptic = 1;
    v11 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:2 phase:0];
  }

  return v11;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  v5 = [(SBReduceMotionHomeGestureSwitcherModifier *)self homeGestureSettings];
  [v5 cardFlyInMaximumVelocityThreshold];
  *&kEndGestureForAppSwitcherMaximumVelocityThreshold = v3 * v4;
}

- (void)initWithGestureID:selectedAppLayout:startingEnvironmentMode:scrunchInitiated:continuingGesture:lastGestureWasAnArcSwipe:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidBeginWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidBeginWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidChangeWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidChangeWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidEndWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateForGestureDidEndWithEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end