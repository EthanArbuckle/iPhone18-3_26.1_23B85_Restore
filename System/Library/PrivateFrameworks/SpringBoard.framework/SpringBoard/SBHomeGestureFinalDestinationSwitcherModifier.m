@interface SBHomeGestureFinalDestinationSwitcherModifier
- (BOOL)_hasTraveledSufficientDistanceForHomeOrAppSwitcherForMouseEvent:(BOOL)a3;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3;
- (SBHomeGestureFinalDestinationSwitcherModifier)initWithDelegate:(id)a3 initialTranslationAdjustment:(CGPoint)a4 minYDistanceForHomeOrSwitcher:(double)a5 startingEnvironmentMode:(int64_t)a6 continuingGesture:(BOOL)a7 dockModifier:(id)a8;
- (double)_unconditionalDistanceThresholdForHome;
- (id)debugDescription;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)studyLogData;
- (int64_t)_adjustedFinalDestinationAccountingForEdgeDataDistortion:(int64_t)a3 location:(CGPoint)a4;
- (int64_t)currentFinalDestination;
- (void)_applyPrototypeSettings;
- (void)_updateAdaptiveThresholdsForCurrentFinalDestination:(int64_t)a3 velocityAverage:(CGPoint)a4;
- (void)_updateForGestureDidBeginWithEvent:(id)a3;
- (void)_updateForGestureDidChangeWithEvent:(id)a3;
- (void)_updateForGestureDidEndWithEvent:(id)a3;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBHomeGestureFinalDestinationSwitcherModifier

- (SBHomeGestureFinalDestinationSwitcherModifier)initWithDelegate:(id)a3 initialTranslationAdjustment:(CGPoint)a4 minYDistanceForHomeOrSwitcher:(double)a5 startingEnvironmentMode:(int64_t)a6 continuingGesture:(BOOL)a7 dockModifier:(id)a8
{
  y = a4.y;
  x = a4.x;
  v15 = a3;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_finalDestinationDelegate, v15);
    v18->_initialTranslationAdjustment.x = x;
    v18->_initialTranslationAdjustment.y = y;
    v18->_minYDistanceForHomeOrSwitcher = a5;
    v18->_startingEnvironmentMode = a6;
    v18->_continuingGesture = a7;
    objc_storeStrong(&v18->_dockModifier, a8);
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
    if (self->_dockModifier)
    {
      [(SBChainableModifier *)self addChildModifier:?];
    }
  }
}

- (id)handleHomeGestureSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v10 handleGestureEvent:v5];
  v7 = [v5 phase];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else if (v7 == 3)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SBHomeGestureFinalDestinationSwitcherModifier.m" lineNumber:156 description:@"Should not be getting PhasePossible"];
  }

  return v6;
}

- (void)_updateForGestureDidBeginWithEvent:(id)a3
{
  v10 = a3;
  if (self->_gestureHasBegun)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  self->_numberOfTouchSamples = 0;
  v4 = [v10 type];
  self->_scrunchInitiated = v4 == 3;
  *&self->_adaptiveMinimumYVelocityForHome = kMinimumYVelocityForHome;
  *&self->_adaptivePauseVelocityThresholdForAppSwitcher = kPauseVelocityThresholdForAppSwitcher_0;
  v5 = &kVelocitySlopeThresholdForScrunchArc;
  if (v4 != 3)
  {
    v5 = &kVelocitySlopeThresholdForBottomSwipeUpArc;
  }

  *&self->_adaptiveVelocitySlopeThresholdForArc = *v5;
  self->_lastFinalDestination = 0.0;
  [v10 averageTouchVelocityOverTimeDuration:0.25];
  self->_lastAverageVelocityYForAcceleration = v6;
  [v10 locationInContainerView];
  self->_initialTouchLocation.x = v7;
  self->_initialTouchLocation.y = v8;
  self->_lastTouchLocation.x = v7;
  self->_lastTouchLocation.y = v8;
  if (self->_startingEnvironmentMode == 2)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
    self->_initialTouchLocation.y = v9;
  }

  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v10];
}

- (void)_updateForGestureDidChangeWithEvent:(id)a3
{
  v22 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  lastTouchTimestamp = self->_lastTouchTimestamp;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v22];
  if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:self->_translation.y])
  {
    self->_hasSeenAccelerationDipForAppSwitcher = 0;
    self->_lastAverageVelocityYForAcceleration = 0.0;
  }

  v5 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self switcherSettings];
  v6 = [v5 animationSettings];

  [v22 averageTouchVelocityOverTimeDuration:0.25];
  v8 = v7;
  numberOfTouchSamples = self->_numberOfTouchSamples;
  if (numberOfTouchSamples > [v6 minimumTouchSamplesForAccelerationDip] && (BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
    v11 = v10;
    [v22 locationInContainerView];
    if (v12 <= v11 - *&kMinimumYDistanceToConsiderAccelerationDip)
    {
      lastAverageVelocityYForAcceleration = self->_lastAverageVelocityYForAcceleration;
      v14 = self->_lastTouchTimestamp;
      [v6 cardFlyInAccelerationDipThreshold];
      if (!self->_hasSeenAccelerationDipForAppSwitcher && (v8 - lastAverageVelocityYForAcceleration) / (v14 - lastTouchTimestamp) > v15)
      {
        self->_hasSeenAccelerationDipForAppSwitcher = 1;
      }
    }
  }

  self->_lastAverageVelocityYForAcceleration = v8;
  v16 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self currentFinalDestination];
  self->_updateEdgeRegionSampleCounter = 1;
  self->_lastFinalDestination = v16;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateAdaptiveThresholdsForCurrentFinalDestination:v16 velocityAverage:self->_velocity.x, self->_velocity.y];
  self->_updateEdgeRegionSampleCounter = 0;
  [v22 locationInContainerView];
  v18 = v17;
  v20 = v19;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
  v21 = v18 > self->_lastTouchLocation.x;
  if (self->_movingTowardsNextLayoutState != v21)
  {
    self->_movingTowardsNextLayoutState = v21;
    self->_directionSwitchLocation.x = v18;
    self->_directionSwitchLocation.y = v20;
  }

  self->_lastTouchLocation.x = v18;
  self->_lastTouchLocation.y = v20;
}

- (void)_updateForGestureDidEndWithEvent:(id)a3
{
  v7 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:?];
  p_lastTouchLocation = &self->_lastTouchLocation;
  [v7 locationInContainerView];
  p_lastTouchLocation->x = v5;
  p_lastTouchLocation->y = v6;
}

- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3
{
  v4 = a3;
  [v4 translationInContainerView];
  v6 = v5 + self->_initialTranslationAdjustment.x;
  v8 = v7 + self->_initialTranslationAdjustment.y;
  [v4 averageTouchVelocityOverTimeDuration:0.0416666667];
  self->_translation.x = v6;
  self->_translation.y = v8;
  self->_velocity.x = v9;
  self->_velocity.y = v10;
  [v4 lastTouchTimestamp];
  self->_lastTouchTimestamp = v11;
  ++self->_numberOfTouchSamples;
  self->_touchType = [v4 touchType];
  v12 = [v4 isMouseEvent];

  self->_isMouseEvent = v12;
}

- (int64_t)currentFinalDestination
{
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  v6 = v5;
  x = self->_translation.x;
  y = self->_translation.y;
  p_initialTouchLocation = &self->_initialTouchLocation;
  v10 = self->_initialTouchLocation.y;
  v70 = self->_initialTouchLocation.x;
  v11 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self switcherInterfaceOrientation];
  adaptiveMinimumYVelocityForHome = self->_adaptiveMinimumYVelocityForHome;
  if (self->_scrunchInitiated)
  {
    v13 = 0;
    v14 = self->_velocity.y;
  }

  else
  {
    if (adaptiveMinimumYVelocityForHome <= *&kVelocityYThresholdForUnconditionalHome)
    {
      v15 = self->_adaptiveMinimumYVelocityForHome;
    }

    else
    {
      v15 = *&kVelocityYThresholdForUnconditionalHome;
    }

    v14 = self->_velocity.y;
    v13 = v14 < v15;
  }

  p_velocity = &self->_velocity;
  v17 = v14 < adaptiveMinimumYVelocityForHome && v14 < -(self->_adaptiveVelocitySlopeThresholdForArc * fabs(p_velocity->x));
  v18 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:y];
  v19 = self->_velocity.y;
  v20 = fabs(p_velocity->x);
  v21 = fabs(v19);
  v22 = v20 <= *&kVelocityXThresholdForUnconditionalArcSwipe_0 || v21 >= v20 * self->_adaptiveVelocitySlopeThresholdForArc;
  if ((v11 - 3) >= 2)
  {
    v23 = &kMinimumXDistanceToTriggerArcByDistancePortrait;
  }

  else
  {
    v23 = &kMinimumXDistanceToTriggerArcByDistanceLandscape;
  }

  v24 = *v23;
  v25 = fabs(y);
  v26 = *&kMaximumYDistanceToTriggerArcByDistance;
  v27 = fabs(x);
  adaptivePauseVelocityThresholdForAppSwitcher = self->_adaptivePauseVelocityThresholdForAppSwitcher;
  v29 = v27 > *v23 && v25 < *&kMaximumYDistanceToTriggerArcByDistance;
  v30 = v20 < adaptivePauseVelocityThresholdForAppSwitcher;
  if (v21 >= adaptivePauseVelocityThresholdForAppSwitcher)
  {
    v30 = 0;
  }

  if (v19 <= adaptivePauseVelocityThresholdForAppSwitcher)
  {
    v31 = 0;
  }

  else
  {
    v31 = v27 < v24;
    if (v20 * *&kVelocitySlopeThresholdForCurrentLayout > v21)
    {
      v31 = 0;
    }
  }

  v32 = self->_touchType != 1 || self->_scrunchInitiated;
  v33 = y + v10;
  if (!v13 && !v17)
  {
    if (v18)
    {
      v34 = 0;
      finalDestinationReason = self->_finalDestinationReason;
      v36 = @"HomeByDistanceThreshold";
      goto LABEL_33;
    }

    if (v22 || !v32)
    {
      if (v29 && v32)
      {
        if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled])
        {
          v54 = x > 0.0;
        }

        else
        {
          v54 = x < 0.0;
        }

        finalDestinationReason = self->_finalDestinationReason;
        if (v54)
        {
          self->_finalDestinationReason = @"PreviousLayoutByLowArcOrBottomSwipePastXDistanceThreshold";
LABEL_96:
          v37 = 1;
          v34 = 1;
          goto LABEL_34;
        }

        v67 = @"NextLayoutByLowArcOrBottomSwipePastXDistanceThreshold";
LABEL_94:
        self->_finalDestinationReason = &v67->isa;
        v34 = 1;
        v37 = 2;
        goto LABEL_34;
      }

      if (v30)
      {
        v34 = 0;
        finalDestinationReason = self->_finalDestinationReason;
        v68 = @"AppSwitcherByPausing";
        goto LABEL_101;
      }

      if (v31)
      {
        v37 = 0;
        finalDestinationReason = self->_finalDestinationReason;
        v69 = @"CurrentLayoutByMovingDownwardWithinSlope";
LABEL_92:
        self->_finalDestinationReason = &v69->isa;
        v34 = 1;
        goto LABEL_34;
      }

      if (!v32 || v19 <= *&kMinimumYVelocityForArcSwipe && v25 >= *&kMaximumYDistanceToTriggerArcByFlick)
      {
        v34 = 0;
        finalDestinationReason = self->_finalDestinationReason;
        v68 = @"AppSwitcherByNotFulfillingArcThresholds";
        goto LABEL_101;
      }

      if (v27 < *&kMinimumXDistanceForFirstArcSwipe && !self->_continuingGesture)
      {
        v37 = 0;
        finalDestinationReason = self->_finalDestinationReason;
        v69 = @"CurrentLayoutInsteadOfArcBecauseAtLeastOneGestureNotCompleted?";
        goto LABEL_92;
      }

      if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled])
      {
        if (p_velocity->x <= 0.0)
        {
LABEL_106:
          finalDestinationReason = self->_finalDestinationReason;
          self->_finalDestinationReason = @"NextLayoutByArc";
          v34 = 1;
          v37 = 2;
          goto LABEL_34;
        }
      }

      else if (p_velocity->x >= 0.0)
      {
        goto LABEL_106;
      }

      finalDestinationReason = self->_finalDestinationReason;
      self->_finalDestinationReason = @"PreviousLayoutByArc";
      v34 = 1;
      v37 = 1;
      goto LABEL_34;
    }

    if (([(SBHomeGestureFinalDestinationSwitcherModifier *)self isDevicePad]& 1) == 0 && v33 + v19 * 0.15 <= v6 - *&kMaximumYDistanceToTriggerArcByFlick && v25 >= v26)
    {
      v34 = 0;
      finalDestinationReason = self->_finalDestinationReason;
      v68 = @"AppSwitcherByHorizontalMotion";
LABEL_101:
      self->_finalDestinationReason = &v68->isa;
      v37 = 3;
      goto LABEL_34;
    }

    v61 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
    v62 = p_velocity->x;
    if (v61)
    {
      if (p_velocity->x <= 0.0)
      {
LABEL_77:
        v63 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
        v64 = self->_directionSwitchLocation.x - p_initialTouchLocation->x;
        if (v63)
        {
          v64 = -v64;
        }

        finalDestinationReason = self->_finalDestinationReason;
        if (v64 >= v4 * -0.25)
        {
          v67 = @"NextLayoutByFastBottomSwipe";
          goto LABEL_94;
        }

        v37 = 0;
        self->_finalDestinationReason = @"CurrentLayoutByRetractingFromBottomSwipeToNextLayout";
LABEL_88:
        v34 = 1;
        goto LABEL_34;
      }
    }

    else if (p_velocity->x >= 0.0)
    {
      goto LABEL_77;
    }

    v65 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
    v66 = self->_directionSwitchLocation.x - p_initialTouchLocation->x;
    if (v65)
    {
      v66 = -v66;
    }

    finalDestinationReason = self->_finalDestinationReason;
    if (v66 <= v4 * 0.25)
    {
      self->_finalDestinationReason = @"PreviousLayoutByFastBottomSwipe";
      goto LABEL_96;
    }

    v37 = 0;
    self->_finalDestinationReason = @"CurrentLayoutByRetractingFromBottomSwipeToPreviousLayout";
    goto LABEL_88;
  }

  v34 = 0;
  finalDestinationReason = self->_finalDestinationReason;
  v36 = @"HomeByUnconditionalOrVerticalMotionVelocityThreshold";
LABEL_33:
  self->_finalDestinationReason = &v36->isa;
  v37 = 4;
LABEL_34:

  isMouseEvent = self->_isMouseEvent;
  v39 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcherForMouseEvent:self->_isMouseEvent];
  if ((v34 & 1) == 0 && !v39)
  {
    v40 = self->_finalDestinationReason;
    self->_finalDestinationReason = @"CurrentLayoutByNotTravelingSufficientYDistance";

    v37 = 0;
  }

  if (isMouseEvent)
  {
    startingEnvironmentMode = self->_startingEnvironmentMode;
    if (v37 == 3 && startingEnvironmentMode != 1)
    {
      v42 = @"HomeByIndirectMousePanGesture";
      v37 = 4;
LABEL_44:
      v43 = self->_finalDestinationReason;
      self->_finalDestinationReason = &v42->isa;

      goto LABEL_45;
    }

    if (v37 == 4 && startingEnvironmentMode == 1)
    {
      v42 = @"AppSwitcherByIndirectMousePanGestureOnHomeScreen";
      v37 = 3;
      goto LABEL_44;
    }
  }

LABEL_45:
  dockModifier = self->_dockModifier;
  if (dockModifier)
  {
    v45 = [(SBHomeGestureDockSwitcherModifier *)dockModifier adjustedFinalDestinationForDestination:v37 withTranslation:x velocity:y, self->_velocity.x, self->_velocity.y];
    if (v37 != v45)
    {
      v46 = v45;
      v47 = self->_finalDestinationReason;
      self->_finalDestinationReason = @"CurrentLayoutByNotTravelingSufficientYDistanceForDock";

      v37 = v46;
    }
  }

  v48 = x + v70;
  v49 = self->_startingEnvironmentMode;
  if ((v37 - 3) < 0xFFFFFFFFFFFFFFFELL || v49 != 2 || v29)
  {
    if (v37 != 4)
    {
      goto LABEL_65;
    }

    if (v49 != 3 || (-[SBHomeGestureFinalDestinationSwitcherModifier isDisplayEmbedded](self, "isDisplayEmbedded") & 1) != 0 || (-[SBHomeGestureFinalDestinationSwitcherModifier windowManagementContext](self, "windowManagementContext"), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 restoresPreviouslyOpenWindows], v52, !v53))
    {
      v37 = 4;
      goto LABEL_65;
    }

    v50 = @"AppSwitcherByIndirectPanGesture";
  }

  else
  {
    v50 = @"AppSwitcherBecauseAlreadyInAppSwitcher";
  }

  v51 = self->_finalDestinationReason;
  self->_finalDestinationReason = &v50->isa;

  v37 = 3;
LABEL_65:
  v55 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self _adjustedFinalDestinationAccountingForEdgeDataDistortion:v37 location:v48, v33];
  v56 = +[SBSetupManager sharedInstance];
  v57 = [v56 isInSetupMode];

  if (v57 && v55 != 4)
  {
    v58 = self->_finalDestinationReason;
    self->_finalDestinationReason = @"CurrentLayoutInBuddyBecauseHomeFailed";

    return 0;
  }

  return v55;
}

- (id)studyLogData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_adaptiveMinimumYVelocityForHome];
  [v3 setObject:v4 forKeyedSubscript:@"adaptiveMinimumYVelocityForHome"];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_adaptivePauseVelocityThresholdForAppSwitcher];
  [v3 setObject:v5 forKeyedSubscript:@"adaptiveVelocityAbsForAppSwitcher"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_adaptiveVelocitySlopeThresholdForArc];
  [v3 setObject:v6 forKeyedSubscript:@"adaptiveVelocitySlopeThresholdForArc"];

  return v3;
}

- (id)debugDescription
{
  v3 = [(SBChainableModifier *)self descriptionBuilderWithMultilinePrefix:&stru_283094718];
  v4 = [v3 appendSuper];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__SBHomeGestureFinalDestinationSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  v6 = [v5 build];

  return v6;
}

id __65__SBHomeGestureFinalDestinationSwitcherModifier_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendPoint:@"initialTranslationAdjustment" withName:{*(*(a1 + 40) + 128), *(*(a1 + 40) + 136)}];
  v3 = [*(a1 + 32) appendPoint:@"translation" withName:{*(*(a1 + 40) + 152), *(*(a1 + 40) + 160)}];
  v4 = [*(a1 + 32) appendPoint:@"velocity" withName:{*(*(a1 + 40) + 168), *(*(a1 + 40) + 176)}];
  v5 = [*(a1 + 32) appendFloat:@"lastTouchTimestamp" withName:*(*(a1 + 40) + 184)];
  v6 = [*(a1 + 32) appendFloat:@"lastAverageVelocityYForAcceleration" withName:*(*(a1 + 40) + 192)];
  v7 = [*(a1 + 32) appendPoint:@"initialTouchLocation" withName:{*(*(a1 + 40) + 200), *(*(a1 + 40) + 208)}];
  v8 = [*(a1 + 32) appendPoint:@"lastTouchLocation" withName:{*(*(a1 + 40) + 216), *(*(a1 + 40) + 224)}];
  v9 = [*(a1 + 32) appendPoint:@"directionSwitchLocation" withName:{*(*(a1 + 40) + 232), *(*(a1 + 40) + 240)}];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 248) withName:@"movingTowardsNextLayoutState"];
  v11 = [*(a1 + 32) appendFloat:@"adaptiveMinimumYVelocityForHome" withName:*(*(a1 + 40) + 256)];
  v12 = [*(a1 + 32) appendFloat:@"adaptivePauseVelocityThresholdForAppSwitcher" withName:*(*(a1 + 40) + 264)];
  v13 = [*(a1 + 32) appendFloat:@"adaptiveVelocitySlopeThresholdForArc" withName:*(*(a1 + 40) + 272)];
  v14 = [*(a1 + 32) appendFloat:@"lastFinalDestination" withName:*(*(a1 + 40) + 280)];
  v15 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 288) withName:@"edgeRegionSampleCounter"];
  v16 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 296) withName:@"updateEdgeRegionSampleCounter"];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 328) withName:@"scrunchInitiated"];
  v18 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 320) == 2 withName:@"startingInAppSwitcher"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 329) withName:@"continuingGesture"];
}

- (int64_t)_adjustedFinalDestinationAccountingForEdgeDataDistortion:(int64_t)a3 location:(CGPoint)a4
{
  x = a4.x;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds:a4.x];
  v8 = fmin(x, vabdd_f64(v7, x)) >= *&kEdgeDistanceToCorrectGestureFinalDestination;
  if ((a3 - 1) < 2 || v8 || self->_lastFinalDestination != 3.0 || self->_edgeRegionSampleCounter > 10)
  {
    if (self->_updateEdgeRegionSampleCounter)
    {
      self->_edgeRegionSampleCounter = 0;
    }
  }

  else
  {
    finalDestinationReason = self->_finalDestinationReason;
    self->_finalDestinationReason = @"AppSwitcherBecauseLatchedByEdgeDistortionCompensation";

    if (self->_updateEdgeRegionSampleCounter)
    {
      ++self->_edgeRegionSampleCounter;
    }

    return 3;
  }

  return a3;
}

- (BOOL)_hasTraveledSufficientDistanceForHomeOrAppSwitcherForMouseEvent:(BOOL)a3
{
  v3 = a3;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
  v6 = &kMinimumYDistanceForHomeOrAppSwitcherForMouseEvent;
  if (!v3)
  {
    v6 = &kMinimumYDistanceForHomeOrAppSwitcher_0;
  }

  return self->_lastTouchLocation.y <= v5 - *v6;
}

- (void)_updateAdaptiveThresholdsForCurrentFinalDestination:(int64_t)a3 velocityAverage:(CGPoint)a4
{
  [(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock];
  BSFloatByLinearlyInterpolatingFloats();
  self->_adaptiveMinimumYVelocityForHome = v5;
  self->_adaptivePauseVelocityThresholdForAppSwitcher = fabs(v5);
}

- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3
{
  v3 = -a3;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _unconditionalDistanceThresholdForHome];
  return v4 < v3;
}

- (double)_unconditionalDistanceThresholdForHome
{
  WeakRetained = objc_loadWeakRetained(&self->_finalDestinationDelegate);
  [WeakRetained unconditionalDistanceThresholdForHome];
  v4 = v3;

  return v4;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  v26 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self homeGestureSettings];
  [v26 pauseVelocityThresholdForAppSwitcher];
  *&kPauseVelocityThresholdForAppSwitcher_0 = v3 * v4;
  [v26 velocityXThresholdForUnconditionalArcSwipe];
  *&kVelocityXThresholdForUnconditionalArcSwipe_0 = v3 * v5;
  [v26 maximumYDistanceToTriggerArcByDistance];
  *&kMaximumYDistanceToTriggerArcByDistance = v3 * v6;
  *&kMinimumYDistanceForHomeOrAppSwitcher_0 = v3 * self->_minYDistanceForHomeOrSwitcher;
  [v26 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcherForMouseEvent = v3 * v7;
  [v26 minimumYDistanceToConsiderAccelerationDip];
  *&kMinimumYDistanceToConsiderAccelerationDip = v3 * v8;
  [v26 minimumXDistanceForFirstArcSwipe];
  *&kMinimumXDistanceForFirstArcSwipe = v3 * v9;
  [v26 minimumXDistanceToTriggerArcByDistancePortrait];
  *&kMinimumXDistanceToTriggerArcByDistancePortrait = v3 * v10;
  [v26 minimumXDistanceToTriggerArcByDistanceLandscape];
  *&kMinimumXDistanceToTriggerArcByDistanceLandscape = v3 * v11;
  [v26 maximumYDistanceToTriggerArcByFlick];
  *&kMaximumYDistanceToTriggerArcByFlick = v3 * v12;
  [v26 velocityYThresholdForUnconditionalHome];
  *&kVelocityYThresholdForUnconditionalHome = v3 * v13;
  [v26 minimumYVelocityForHome];
  *&kMinimumYVelocityForHome = v3 * v14;
  [v26 minimumYVelocityForArcSwipe];
  *&kMinimumYVelocityForArcSwipe = v3 * v15;
  [v26 pauseVelocityThresholdForDefiniteAppSwitcher];
  *&kPauseVelocityThresholdForDefiniteAppSwitcher = v3 * v16;
  [v26 maximumAdaptivePauseVelocityThresholdForAppSwitcher];
  *&kMaximumAdaptivePauseVelocityThresholdForAppSwitcher = v3 * v17;
  kSnapToMaxVelocityThresholdAfterAccelerationDip = [v26 snapToMaxVelocityThresholdAfterAccelerationDip];
  [v26 maximumAdaptiveVelocityThresholdForDock];
  *&kMaximumAdaptiveVelocityThresholdForDock = v3 * v18;
  [v26 appSwitcherVelocityThresholdIncreasingRateFraction];
  kAppSwitcherVelocityThresholdIncreasingRateFraction = v19;
  [v26 dockVelocityThresholdIncreasingRateFraction];
  kDockVelocityThresholdIncreasingRateFraction = v20;
  [v26 adaptiveThresholdsDecreasingRateFraction];
  kAdaptiveThresholdsDecreasingRateFraction = v21;
  [v26 velocitySlopeThresholdForBottomSwipeUpArc];
  kVelocitySlopeThresholdForBottomSwipeUpArc = v22;
  [v26 velocitySlopeThresholdForScrunchArc];
  kVelocitySlopeThresholdForScrunchArc = v23;
  [v26 velocitySlopeThresholdForCurrentLayout];
  kVelocitySlopeThresholdForCurrentLayout = v24;
  [v26 edgeDistanceToCorrectGestureFinalDestination];
  *&kEdgeDistanceToCorrectGestureFinalDestination = v3 * v25;
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