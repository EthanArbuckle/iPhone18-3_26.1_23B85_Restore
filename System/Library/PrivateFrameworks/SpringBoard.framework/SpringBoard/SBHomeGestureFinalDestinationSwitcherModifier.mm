@interface SBHomeGestureFinalDestinationSwitcherModifier
- (BOOL)_hasTraveledSufficientDistanceForHomeOrAppSwitcherForMouseEvent:(BOOL)event;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)home;
- (SBHomeGestureFinalDestinationSwitcherModifier)initWithDelegate:(id)delegate initialTranslationAdjustment:(CGPoint)adjustment minYDistanceForHomeOrSwitcher:(double)switcher startingEnvironmentMode:(int64_t)mode continuingGesture:(BOOL)gesture dockModifier:(id)modifier;
- (double)_unconditionalDistanceThresholdForHome;
- (id)debugDescription;
- (id)handleGestureEvent:(id)event;
- (id)handleHomeGestureSettingsChangedEvent:(id)event;
- (id)handleSwitcherSettingsChangedEvent:(id)event;
- (id)studyLogData;
- (int64_t)_adjustedFinalDestinationAccountingForEdgeDataDistortion:(int64_t)distortion location:(CGPoint)location;
- (int64_t)currentFinalDestination;
- (void)_applyPrototypeSettings;
- (void)_updateAdaptiveThresholdsForCurrentFinalDestination:(int64_t)destination velocityAverage:(CGPoint)average;
- (void)_updateForGestureDidBeginWithEvent:(id)event;
- (void)_updateForGestureDidChangeWithEvent:(id)event;
- (void)_updateForGestureDidEndWithEvent:(id)event;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)event;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBHomeGestureFinalDestinationSwitcherModifier

- (SBHomeGestureFinalDestinationSwitcherModifier)initWithDelegate:(id)delegate initialTranslationAdjustment:(CGPoint)adjustment minYDistanceForHomeOrSwitcher:(double)switcher startingEnvironmentMode:(int64_t)mode continuingGesture:(BOOL)gesture dockModifier:(id)modifier
{
  y = adjustment.y;
  x = adjustment.x;
  delegateCopy = delegate;
  modifierCopy = modifier;
  v20.receiver = self;
  v20.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v17 = [(SBSwitcherModifier *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_finalDestinationDelegate, delegateCopy);
    v18->_initialTranslationAdjustment.x = x;
    v18->_initialTranslationAdjustment.y = y;
    v18->_minYDistanceForHomeOrSwitcher = switcher;
    v18->_startingEnvironmentMode = mode;
    v18->_continuingGesture = gesture;
    objc_storeStrong(&v18->_dockModifier, modifier);
  }

  return v18;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
    if (self->_dockModifier)
    {
      [(SBChainableModifier *)self addChildModifier:?];
    }
  }
}

- (id)handleHomeGestureSettingsChangedEvent:(id)event
{
  eventCopy = event;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:eventCopy];

  return v5;
}

- (id)handleSwitcherSettingsChangedEvent:(id)event
{
  eventCopy = event;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:eventCopy];

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = SBHomeGestureFinalDestinationSwitcherModifier;
  v6 = [(SBSwitcherModifier *)&v10 handleGestureEvent:eventCopy];
  phase = [eventCopy phase];
  if (phase > 1)
  {
    if (phase == 2)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidChangeWithEvent:eventCopy];
    }

    else if (phase == 3)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidEndWithEvent:eventCopy];
    }
  }

  else if (phase)
  {
    if (phase == 1)
    {
      [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateForGestureDidBeginWithEvent:eventCopy];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBHomeGestureFinalDestinationSwitcherModifier.m" lineNumber:156 description:@"Should not be getting PhasePossible"];
  }

  return v6;
}

- (void)_updateForGestureDidBeginWithEvent:(id)event
{
  eventCopy = event;
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
  type = [eventCopy type];
  self->_scrunchInitiated = type == 3;
  *&self->_adaptiveMinimumYVelocityForHome = kMinimumYVelocityForHome;
  *&self->_adaptivePauseVelocityThresholdForAppSwitcher = kPauseVelocityThresholdForAppSwitcher_0;
  v5 = &kVelocitySlopeThresholdForScrunchArc;
  if (type != 3)
  {
    v5 = &kVelocitySlopeThresholdForBottomSwipeUpArc;
  }

  *&self->_adaptiveVelocitySlopeThresholdForArc = *v5;
  self->_lastFinalDestination = 0.0;
  [eventCopy averageTouchVelocityOverTimeDuration:0.25];
  self->_lastAverageVelocityYForAcceleration = v6;
  [eventCopy locationInContainerView];
  self->_initialTouchLocation.x = v7;
  self->_initialTouchLocation.y = v8;
  self->_lastTouchLocation.x = v7;
  self->_lastTouchLocation.y = v8;
  if (self->_startingEnvironmentMode == 2)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
    self->_initialTouchLocation.y = v9;
  }

  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:eventCopy];
}

- (void)_updateForGestureDidChangeWithEvent:(id)event
{
  eventCopy = event;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureFinalDestinationSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  lastTouchTimestamp = self->_lastTouchTimestamp;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:eventCopy];
  if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:self->_translation.y])
  {
    self->_hasSeenAccelerationDipForAppSwitcher = 0;
    self->_lastAverageVelocityYForAcceleration = 0.0;
  }

  switcherSettings = [(SBHomeGestureFinalDestinationSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  [eventCopy averageTouchVelocityOverTimeDuration:0.25];
  v8 = v7;
  numberOfTouchSamples = self->_numberOfTouchSamples;
  if (numberOfTouchSamples > [animationSettings minimumTouchSamplesForAccelerationDip] && (BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
    v11 = v10;
    [eventCopy locationInContainerView];
    if (v12 <= v11 - *&kMinimumYDistanceToConsiderAccelerationDip)
    {
      lastAverageVelocityYForAcceleration = self->_lastAverageVelocityYForAcceleration;
      v14 = self->_lastTouchTimestamp;
      [animationSettings cardFlyInAccelerationDipThreshold];
      if (!self->_hasSeenAccelerationDipForAppSwitcher && (v8 - lastAverageVelocityYForAcceleration) / (v14 - lastTouchTimestamp) > v15)
      {
        self->_hasSeenAccelerationDipForAppSwitcher = 1;
      }
    }
  }

  self->_lastAverageVelocityYForAcceleration = v8;
  currentFinalDestination = [(SBHomeGestureFinalDestinationSwitcherModifier *)self currentFinalDestination];
  self->_updateEdgeRegionSampleCounter = 1;
  self->_lastFinalDestination = currentFinalDestination;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self _updateAdaptiveThresholdsForCurrentFinalDestination:currentFinalDestination velocityAverage:self->_velocity.x, self->_velocity.y];
  self->_updateEdgeRegionSampleCounter = 0;
  [eventCopy locationInContainerView];
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

- (void)_updateForGestureDidEndWithEvent:(id)event
{
  eventCopy = event;
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
  [eventCopy locationInContainerView];
  p_lastTouchLocation->x = v5;
  p_lastTouchLocation->y = v6;
}

- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)event
{
  eventCopy = event;
  [eventCopy translationInContainerView];
  v6 = v5 + self->_initialTranslationAdjustment.x;
  v8 = v7 + self->_initialTranslationAdjustment.y;
  [eventCopy averageTouchVelocityOverTimeDuration:0.0416666667];
  self->_translation.x = v6;
  self->_translation.y = v8;
  self->_velocity.x = v9;
  self->_velocity.y = v10;
  [eventCopy lastTouchTimestamp];
  self->_lastTouchTimestamp = v11;
  ++self->_numberOfTouchSamples;
  self->_touchType = [eventCopy touchType];
  isMouseEvent = [eventCopy isMouseEvent];

  self->_isMouseEvent = isMouseEvent;
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
  switcherInterfaceOrientation = [(SBHomeGestureFinalDestinationSwitcherModifier *)self switcherInterfaceOrientation];
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
  if ((switcherInterfaceOrientation - 3) >= 2)
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

    isRTLEnabled = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
    v62 = p_velocity->x;
    if (isRTLEnabled)
    {
      if (p_velocity->x <= 0.0)
      {
LABEL_77:
        isRTLEnabled2 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
        v64 = self->_directionSwitchLocation.x - p_initialTouchLocation->x;
        if (isRTLEnabled2)
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

    isRTLEnabled3 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self isRTLEnabled];
    v66 = self->_directionSwitchLocation.x - p_initialTouchLocation->x;
    if (isRTLEnabled3)
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
  isInSetupMode = [v56 isInSetupMode];

  if (isInSetupMode && v55 != 4)
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
  appendSuper = [v3 appendSuper];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__SBHomeGestureFinalDestinationSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  build = [v5 build];

  return build;
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

- (int64_t)_adjustedFinalDestinationAccountingForEdgeDataDistortion:(int64_t)distortion location:(CGPoint)location
{
  x = location.x;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds:location.x];
  v8 = fmin(x, vabdd_f64(v7, x)) >= *&kEdgeDistanceToCorrectGestureFinalDestination;
  if ((distortion - 1) < 2 || v8 || self->_lastFinalDestination != 3.0 || self->_edgeRegionSampleCounter > 10)
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

  return distortion;
}

- (BOOL)_hasTraveledSufficientDistanceForHomeOrAppSwitcherForMouseEvent:(BOOL)event
{
  eventCopy = event;
  [(SBHomeGestureFinalDestinationSwitcherModifier *)self containerViewBounds];
  v6 = &kMinimumYDistanceForHomeOrAppSwitcherForMouseEvent;
  if (!eventCopy)
  {
    v6 = &kMinimumYDistanceForHomeOrAppSwitcher_0;
  }

  return self->_lastTouchLocation.y <= v5 - *v6;
}

- (void)_updateAdaptiveThresholdsForCurrentFinalDestination:(int64_t)destination velocityAverage:(CGPoint)average
{
  [(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock];
  BSFloatByLinearlyInterpolatingFloats();
  self->_adaptiveMinimumYVelocityForHome = v5;
  self->_adaptivePauseVelocityThresholdForAppSwitcher = fabs(v5);
}

- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)home
{
  v3 = -home;
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
  homeGestureSettings = [(SBHomeGestureFinalDestinationSwitcherModifier *)self homeGestureSettings];
  [homeGestureSettings pauseVelocityThresholdForAppSwitcher];
  *&kPauseVelocityThresholdForAppSwitcher_0 = v3 * v4;
  [homeGestureSettings velocityXThresholdForUnconditionalArcSwipe];
  *&kVelocityXThresholdForUnconditionalArcSwipe_0 = v3 * v5;
  [homeGestureSettings maximumYDistanceToTriggerArcByDistance];
  *&kMaximumYDistanceToTriggerArcByDistance = v3 * v6;
  *&kMinimumYDistanceForHomeOrAppSwitcher_0 = v3 * self->_minYDistanceForHomeOrSwitcher;
  [homeGestureSettings minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcherForMouseEvent = v3 * v7;
  [homeGestureSettings minimumYDistanceToConsiderAccelerationDip];
  *&kMinimumYDistanceToConsiderAccelerationDip = v3 * v8;
  [homeGestureSettings minimumXDistanceForFirstArcSwipe];
  *&kMinimumXDistanceForFirstArcSwipe = v3 * v9;
  [homeGestureSettings minimumXDistanceToTriggerArcByDistancePortrait];
  *&kMinimumXDistanceToTriggerArcByDistancePortrait = v3 * v10;
  [homeGestureSettings minimumXDistanceToTriggerArcByDistanceLandscape];
  *&kMinimumXDistanceToTriggerArcByDistanceLandscape = v3 * v11;
  [homeGestureSettings maximumYDistanceToTriggerArcByFlick];
  *&kMaximumYDistanceToTriggerArcByFlick = v3 * v12;
  [homeGestureSettings velocityYThresholdForUnconditionalHome];
  *&kVelocityYThresholdForUnconditionalHome = v3 * v13;
  [homeGestureSettings minimumYVelocityForHome];
  *&kMinimumYVelocityForHome = v3 * v14;
  [homeGestureSettings minimumYVelocityForArcSwipe];
  *&kMinimumYVelocityForArcSwipe = v3 * v15;
  [homeGestureSettings pauseVelocityThresholdForDefiniteAppSwitcher];
  *&kPauseVelocityThresholdForDefiniteAppSwitcher = v3 * v16;
  [homeGestureSettings maximumAdaptivePauseVelocityThresholdForAppSwitcher];
  *&kMaximumAdaptivePauseVelocityThresholdForAppSwitcher = v3 * v17;
  kSnapToMaxVelocityThresholdAfterAccelerationDip = [homeGestureSettings snapToMaxVelocityThresholdAfterAccelerationDip];
  [homeGestureSettings maximumAdaptiveVelocityThresholdForDock];
  *&kMaximumAdaptiveVelocityThresholdForDock = v3 * v18;
  [homeGestureSettings appSwitcherVelocityThresholdIncreasingRateFraction];
  kAppSwitcherVelocityThresholdIncreasingRateFraction = v19;
  [homeGestureSettings dockVelocityThresholdIncreasingRateFraction];
  kDockVelocityThresholdIncreasingRateFraction = v20;
  [homeGestureSettings adaptiveThresholdsDecreasingRateFraction];
  kAdaptiveThresholdsDecreasingRateFraction = v21;
  [homeGestureSettings velocitySlopeThresholdForBottomSwipeUpArc];
  kVelocitySlopeThresholdForBottomSwipeUpArc = v22;
  [homeGestureSettings velocitySlopeThresholdForScrunchArc];
  kVelocitySlopeThresholdForScrunchArc = v23;
  [homeGestureSettings velocitySlopeThresholdForCurrentLayout];
  kVelocitySlopeThresholdForCurrentLayout = v24;
  [homeGestureSettings edgeDistanceToCorrectGestureFinalDestination];
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