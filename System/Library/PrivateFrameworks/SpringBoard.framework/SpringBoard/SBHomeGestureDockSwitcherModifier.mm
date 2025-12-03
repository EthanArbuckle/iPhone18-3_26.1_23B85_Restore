@interface SBHomeGestureDockSwitcherModifier
- (BOOL)_shouldPresentDockForFinalDestination:(int64_t)destination;
- (CGPoint)adjustedTranslationForTranslation:(CGPoint)translation;
- (CGPoint)translationForAdjustedTranslation:(CGPoint)translation;
- (SBHomeGestureDockSwitcherModifier)initWithDelegate:(id)delegate startingEnvironmentMode:(int64_t)mode requireVerticalSwipeToTrackDock:(BOOL)dock;
- (double)dockProgress;
- (id)_updateForGestureDidBeginWithEvent:(id)event;
- (id)_updateForGestureDidChangeWithEvent:(id)event;
- (id)_updateForGestureDidEndWithEvent:(id)event;
- (id)debugDescription;
- (id)handleGestureEvent:(id)event;
- (id)handleHomeGestureSettingsChangedEvent:(id)event;
- (id)studyLogData;
- (int64_t)adjustedFinalDestinationForDestination:(int64_t)destination withTranslation:(CGPoint)translation velocity:(CGPoint)velocity;
- (int64_t)dockUpdateMode;
- (void)_applyPrototypeSettings;
- (void)_updateGestureTranslationAndVelocityWithEvent:(id)event;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBHomeGestureDockSwitcherModifier

- (SBHomeGestureDockSwitcherModifier)initWithDelegate:(id)delegate startingEnvironmentMode:(int64_t)mode requireVerticalSwipeToTrackDock:(BOOL)dock
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBHomeGestureDockSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_startingEnvironmentMode = mode;
    v10->_requireVerticalSwipeToTrackDock = dock;
  }

  return v10;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBHomeGestureDockSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBHomeGestureDockSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleHomeGestureSettingsChangedEvent:(id)event
{
  eventCopy = event;
  [(SBHomeGestureDockSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureDockSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:eventCopy];

  return v5;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = SBHomeGestureDockSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleGestureEvent:eventCopy];
  phase = [eventCopy phase];
  if (phase < 2)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidBeginWithEvent:eventCopy];
    goto LABEL_7;
  }

  if (phase == 2)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidChangeWithEvent:eventCopy];
    goto LABEL_7;
  }

  if (phase == 3)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidEndWithEvent:eventCopy];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

  return v9;
}

- (id)_updateForGestureDidBeginWithEvent:(id)event
{
  eventCopy = event;
  if (self->_gestureHasBegun)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  if (([(SBHomeGestureDockSwitcherModifier *)self isFloatingDockFullyPresented]& 1) != 0)
  {
    isFloatingDockGesturePossible = 0;
  }

  else
  {
    isFloatingDockGesturePossible = [(SBHomeGestureDockSwitcherModifier *)self isFloatingDockGesturePossible];
  }

  self->_wantsDockAssertion = isFloatingDockGesturePossible;
  if ([eventCopy isPointerTouch])
  {
    self->_wantsDockAssertion = 0;
  }

  if (self->_requireVerticalSwipeToTrackDock)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.2;
  }

  [eventCopy averageTouchVelocityOverTimeDuration:0.0416666667];
  if (self->_wantsDockAssertion)
  {
    v9 = v7;
    v10 = v8;
    v11 = (BSFloatIsZero() & 1) != 0 || fabs(v10 / v9) > v6;
  }

  else
  {
    v11 = 0;
  }

  self->_currentlyTrackingDock = v11;
  self->_wasTrackingDockWhenGestureBegan = v11;
  if (([(SBHomeGestureDockSwitcherModifier *)self homeScreenHasOpenFolderInLocation:*MEMORY[0x277D66690]]& 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = [(SBHomeGestureDockSwitcherModifier *)self homeScreenHasOpenFolderInLocation:@"SBIconLocationFloatingDockSuggestions"];
  }

  self->_hadOpenDockFolderWhenGestureBegan = v12;
  self->_hadOpenHomeScreenFolderWhenGestureBegan = [(SBHomeGestureDockSwitcherModifier *)self homeScreenHasOpenFolderInLocation:*MEMORY[0x277D666D0]];
  self->_hadOpenForegroundLibraryWhenGestureBegan = [(SBHomeGestureDockSwitcherModifier *)self homeScreenHasModalLibraryOpenInForeground];
  [(SBHomeGestureDockSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:eventCopy];

  return 0;
}

- (id)_updateForGestureDidChangeWithEvent:(id)event
{
  eventCopy = event;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBHomeGestureDockSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:eventCopy];
  x = self->_unadjustedGestureTranslation.x;
  y = self->_unadjustedGestureTranslation.y;
  homeGestureSettings = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
  v8 = homeGestureSettings;
  if (!self->_currentlyTrackingDock)
  {
    [homeGestureSettings verticalRubberbandEnd];
    v20 = 199;
    if (self->_highEnoughToShowDock)
    {
      goto LABEL_16;
    }

    v21 = v19 + v19 < -y;
LABEL_15:
    *(&self->super.super.super.super.isa + v20) = v21;
    goto LABEL_16;
  }

  [homeGestureSettings maximumDistanceYThresholdToPresentDock];
  v10 = v9;
  [v8 horizontalRubberbandStart];
  v12 = v11;
  [v8 horizontalRubberbandEnd];
  v14 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentFinalDestination = [WeakRetained currentFinalDestination];

  v17 = fabs(x);
  v18 = v17 <= v12 || (currentFinalDestination - 1) > 1;
  if (v18 && v17 <= v14)
  {
    if (v10 >= -y)
    {
      goto LABEL_16;
    }

    self->_currentlyTrackingDock = 0;
    v20 = 197;
    v21 = 1;
    goto LABEL_15;
  }

  self->_currentlyTrackingDock = 0;
LABEL_16:

  return 0;
}

- (id)_updateForGestureDidEndWithEvent:(id)event
{
  eventCopy = event;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  if ([eventCopy isCanceled])
  {
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentFinalDestination = [WeakRetained currentFinalDestination];

  if (currentFinalDestination)
  {
    if (self->_startingEnvironmentMode != 1 || currentFinalDestination != 4)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = objc_alloc_init(SBPresentDockSwitcherEventResponse);
    goto LABEL_17;
  }

  if ([(SBHomeGestureDockSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcher])
  {
    if (![(SBHomeGestureDockSwitcherModifier *)self _rubberbandedOutOfDockHorizontally])
    {
      v9 = self->_lastTouchLocation.y + self->_velocity.y * 0.15;
      [(SBHomeGestureDockSwitcherModifier *)self switcherViewBounds];
      v11 = v10;
      [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight];
      if (v9 < v11 + v12 * -0.25)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_16:
  v8 = 0;
LABEL_17:

  return v8;
}

- (void)_updateGestureTranslationAndVelocityWithEvent:(id)event
{
  p_lastTouchLocation = &self->_lastTouchLocation;
  eventCopy = event;
  [eventCopy locationInContainerView];
  p_lastTouchLocation->x = v6;
  p_lastTouchLocation->y = v7;
  p_unadjustedGestureTranslation = &self->_unadjustedGestureTranslation;
  [eventCopy translationInContainerView];
  self->_unadjustedGestureTranslation.x = v9;
  self->_unadjustedGestureTranslation.y = v10;
  [eventCopy velocityInContainerView];
  v12 = v11;
  v14 = v13;

  self->_velocity.x = v12;
  self->_velocity.y = v14;
  if (self->_currentlyTrackingDock)
  {
    v15 = p_unadjustedGestureTranslation->f64[0];
    y = self->_unadjustedGestureTranslation.y;
    homeGestureSettings = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
    [homeGestureSettings verticalRubberbandStart];
    v18 = v17;
    [homeGestureSettings verticalRubberbandEnd];
    v20 = v19;
    v44 = v19;
    [homeGestureSettings verticalRubberbandDistance];
    v45 = v21;
    [homeGestureSettings verticalRubberbandExponent];
    __y = v22;
    [homeGestureSettings horizontalRubberbandStart];
    v24 = v23;
    [homeGestureSettings horizontalRubberbandEnd];
    v26 = v25;
    [homeGestureSettings horizontalRubberbandDistance];
    v28 = v27;
    [homeGestureSettings horizontalRubberbandExponent];
    v30 = v29;
    v31 = (-y - v18) / (v20 - v18);
    if (v31 <= 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v31 + 0.0;
    }

    v33 = fmax(pow(fmin(v32, 1.0), __y), 0.0);
    v34 = (fabs(v15) - v24) / (v26 - v24);
    if (v34 <= 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34 + 0.0;
    }

    v36 = fmin(fmax(pow(fmin(v35, 1.0), v30), 0.0), 1.0);
    v37 = v15 + v26;
    if (v15 + v26 > 0.0)
    {
      v37 = 0.0;
    }

    v38 = v37 - v36 * v28;
    v39 = v15 - v26;
    if (v15 - v26 < 0.0)
    {
      v39 = 0.0;
    }

    v40.f64[0] = v39 + v36 * v28;
    if (v15 <= 0.0)
    {
      v40.f64[0] = v38;
    }

    v41 = y + v44;
    if (y + v44 > 0.0)
    {
      v41 = 0.0;
    }

    v42 = -v33;
    if (v33 >= 1.0)
    {
      v42 = -1.0;
    }

    v40.f64[1] = v41 + v42 * v45;
    self->_translationAdjustmentForFloatingDock = vsubq_f64(*p_unadjustedGestureTranslation, v40);
  }
}

- (CGPoint)adjustedTranslationForTranslation:(CGPoint)translation
{
  v3 = translation.x - self->_translationAdjustmentForFloatingDock.x;
  v4 = translation.y - self->_translationAdjustmentForFloatingDock.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationForAdjustedTranslation:(CGPoint)translation
{
  v3 = translation.x + self->_translationAdjustmentForFloatingDock.x;
  v4 = translation.y + self->_translationAdjustmentForFloatingDock.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (int64_t)adjustedFinalDestinationForDestination:(int64_t)destination withTranslation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  v6 = translation.y;
  [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight:translation.x];
  v10 = v9;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  v12 = *&kVelocityYThresholdForUnconditionalHome_0;
  if (self->_wasTrackingDockWhenGestureBegan)
  {
    v13 = ![(SBHomeGestureDockSwitcherModifier *)self _rubberbandedOutOfDockHorizontally];
  }

  else
  {
    v13 = 0;
  }

  if (self->_hadOpenDockFolderWhenGestureBegan || self->_hadOpenForegroundLibraryWhenGestureBegan)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = !self->_hadOpenHomeScreenFolderWhenGestureBegan;
    v14 = 1;
  }

  [(SBHomeGestureDockSwitcherModifier *)self switcherViewBounds];
  if (y >= v12 || startingEnvironmentMode != 1)
  {
    v18 = kMaximumDistanceYThresholdToPresentDock;
  }

  else
  {
    v18 = v16;
  }

  v19 = destination == 3 && self->_wasTrackingDockWhenGestureBegan;
  if ((v19 & v13) != 0)
  {
    v20 = *&v18;
  }

  else
  {
    v20 = v10;
  }

  if (!((v14 | v13 ^ 1) & 1 | (y >= v12)))
  {
    v20 = *&v18;
  }

  v21 = (v14 | v13 ^ 1 | (y >= v12)) ^ 1 | v19;
  if (startingEnvironmentMode == 1)
  {
    v22 = v13 | v19;
    if (!v13)
    {
      *&v18 = v10;
    }

    if (!v15)
    {
      v21 = v22;
      v20 = *&v18;
    }
  }

  if (v20 >= -v6)
  {
    destinationCopy = 0;
  }

  else
  {
    destinationCopy = destination;
  }

  if (v21)
  {
    return destinationCopy;
  }

  else
  {
    return destination;
  }
}

- (id)studyLogData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_wasTrackingDockWhenGestureBegan];
  [v3 setObject:v4 forKeyedSubscript:@"wasTrackingDockWhenGestureBegan"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_currentlyTrackingDock];
  [v3 setObject:v5 forKeyedSubscript:@"isTrackingDockWhenGestureEnded"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBHomeGestureDockSwitcherModifier _rubberbandedOutOfDockHorizontally](self, "_rubberbandedOutOfDockHorizontally")}];
  [v3 setObject:v6 forKeyedSubscript:@"rubberbandedOutOfDockHorizontally"];

  v7 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v7 numberWithBool:{-[SBHomeGestureDockSwitcherModifier _shouldPresentDockForFinalDestination:](self, "_shouldPresentDockForFinalDestination:", objc_msgSend(WeakRetained, "currentFinalDestination"))}];
  [v3 setObject:v9 forKeyedSubscript:@"didPresentDock"];

  return v3;
}

- (int64_t)dockUpdateMode
{
  if (self->_currentlyTrackingDock)
  {
    return 5;
  }

  else
  {
    return 3;
  }
}

- (double)dockProgress
{
  if (self->_wantsDockAssertion && self->_currentlyTrackingDock)
  {
    [(SBHomeGestureDockSwitcherModifier *)self floatingDockViewTopMargin];
    [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight];
  }

  BSUIConstrainValueToIntervalWithRubberBand();
  return result;
}

- (id)debugDescription
{
  v3 = [(SBChainableModifier *)self descriptionBuilderWithMultilinePrefix:&stru_283094718];
  appendSuper = [v3 appendSuper];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__SBHomeGestureDockSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  build = [v5 build];

  return build;
}

id __53__SBHomeGestureDockSwitcherModifier_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendPoint:@"lastTouchLocation" withName:{*(*(a1 + 40) + 128), *(*(a1 + 40) + 136)}];
  v3 = [*(a1 + 32) appendPoint:@"unadjustedGestureTranslation" withName:{*(*(a1 + 40) + 144), *(*(a1 + 40) + 152)}];
  v4 = [*(a1 + 32) appendPoint:@"velocity" withName:{*(*(a1 + 40) + 160), *(*(a1 + 40) + 168)}];
  v5 = [*(a1 + 32) appendPoint:@"translationAdjustmentForFloatingDock" withName:{*(*(a1 + 40) + 176), *(*(a1 + 40) + 184)}];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 192) withName:@"currentlyTrackingDock"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 193) withName:@"wasTrackingDockWhenGestureBegan"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 194) withName:@"hadOpenDockFolderWhenGestureBegan"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 195) withName:@"hadOpenHomeScreenFolderWhenGestureBegan"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 196) withName:@"hadOpenForegroundLibraryWhenGestureBegan"];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 197) withName:@"verticallyRubberbandedOutOfDock"];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 198) withName:@"wantsDockAssertion"];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 199) withName:@"highEnoughToShowDock"];
  v14 = *(a1 + 32);
  v15 = SBStringForUnlockedEnvironmentMode(*(*(a1 + 40) + 216));
  [v14 appendString:v15 withName:@"startingEnvironmentMode"];

  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 224) withName:@"requireVerticalSwipeToTrackDock"];
}

- (BOOL)_shouldPresentDockForFinalDestination:(int64_t)destination
{
  if (destination)
  {
    LOBYTE(_hasTraveledSufficientDistanceForHomeOrAppSwitcher) = destination == 4 && self->_startingEnvironmentMode == 1;
  }

  else
  {
    _hasTraveledSufficientDistanceForHomeOrAppSwitcher = [(SBHomeGestureDockSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcher];
    if (_hasTraveledSufficientDistanceForHomeOrAppSwitcher)
    {
      if ([(SBHomeGestureDockSwitcherModifier *)self _rubberbandedOutOfDockHorizontally])
      {
        LOBYTE(_hasTraveledSufficientDistanceForHomeOrAppSwitcher) = 0;
      }

      else
      {
        v6 = self->_lastTouchLocation.y + self->_velocity.y * 0.15;
        [(SBHomeGestureDockSwitcherModifier *)self switcherViewBounds];
        v8 = v7;
        [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight];
        LOBYTE(_hasTraveledSufficientDistanceForHomeOrAppSwitcher) = v6 < v8 + v9 * -0.25;
      }
    }
  }

  return _hasTraveledSufficientDistanceForHomeOrAppSwitcher;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  homeGestureSettings = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
  [homeGestureSettings minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher_3 = v3 * v4;
  [homeGestureSettings velocityYThresholdForUnconditionalHome];
  *&kVelocityYThresholdForUnconditionalHome_0 = v3 * v5;
  [homeGestureSettings maximumDistanceYThresholdToPresentDock];
  kMaximumDistanceYThresholdToPresentDock = v6;
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