@interface SBHomeGestureDockSwitcherModifier
- (BOOL)_shouldPresentDockForFinalDestination:(int64_t)a3;
- (CGPoint)adjustedTranslationForTranslation:(CGPoint)a3;
- (CGPoint)translationForAdjustedTranslation:(CGPoint)a3;
- (SBHomeGestureDockSwitcherModifier)initWithDelegate:(id)a3 startingEnvironmentMode:(int64_t)a4 requireVerticalSwipeToTrackDock:(BOOL)a5;
- (double)dockProgress;
- (id)_updateForGestureDidBeginWithEvent:(id)a3;
- (id)_updateForGestureDidChangeWithEvent:(id)a3;
- (id)_updateForGestureDidEndWithEvent:(id)a3;
- (id)debugDescription;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)studyLogData;
- (int64_t)adjustedFinalDestinationForDestination:(int64_t)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5;
- (int64_t)dockUpdateMode;
- (void)_applyPrototypeSettings;
- (void)_updateGestureTranslationAndVelocityWithEvent:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBHomeGestureDockSwitcherModifier

- (SBHomeGestureDockSwitcherModifier)initWithDelegate:(id)a3 startingEnvironmentMode:(int64_t)a4 requireVerticalSwipeToTrackDock:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SBHomeGestureDockSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_startingEnvironmentMode = a4;
    v10->_requireVerticalSwipeToTrackDock = a5;
  }

  return v10;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBHomeGestureDockSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBHomeGestureDockSwitcherModifier *)self _applyPrototypeSettings];
  }
}

- (id)handleHomeGestureSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBHomeGestureDockSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureDockSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHomeGestureDockSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v11 handleGestureEvent:v4];
  v6 = [v4 phase];
  if (v6 < 2)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v4];
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v4];
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    v7 = [(SBHomeGestureDockSwitcherModifier *)self _updateForGestureDidEndWithEvent:v4];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

  return v9;
}

- (id)_updateForGestureDidBeginWithEvent:(id)a3
{
  v4 = a3;
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
    v5 = 0;
  }

  else
  {
    v5 = [(SBHomeGestureDockSwitcherModifier *)self isFloatingDockGesturePossible];
  }

  self->_wantsDockAssertion = v5;
  if ([v4 isPointerTouch])
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

  [v4 averageTouchVelocityOverTimeDuration:0.0416666667];
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
  [(SBHomeGestureDockSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:v4];

  return 0;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBHomeGestureDockSwitcherModifier *)self _updateGestureTranslationAndVelocityWithEvent:v4];
  x = self->_unadjustedGestureTranslation.x;
  y = self->_unadjustedGestureTranslation.y;
  v7 = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
  v8 = v7;
  if (!self->_currentlyTrackingDock)
  {
    [v7 verticalRubberbandEnd];
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

  [v7 maximumDistanceYThresholdToPresentDock];
  v10 = v9;
  [v8 horizontalRubberbandStart];
  v12 = v11;
  [v8 horizontalRubberbandEnd];
  v14 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained currentFinalDestination];

  v17 = fabs(x);
  v18 = v17 <= v12 || (v16 - 1) > 1;
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

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureDockSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  if ([v4 isCanceled])
  {
    goto LABEL_16;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained currentFinalDestination];

  if (v6)
  {
    if (self->_startingEnvironmentMode != 1 || v6 != 4)
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

- (void)_updateGestureTranslationAndVelocityWithEvent:(id)a3
{
  p_lastTouchLocation = &self->_lastTouchLocation;
  v5 = a3;
  [v5 locationInContainerView];
  p_lastTouchLocation->x = v6;
  p_lastTouchLocation->y = v7;
  p_unadjustedGestureTranslation = &self->_unadjustedGestureTranslation;
  [v5 translationInContainerView];
  self->_unadjustedGestureTranslation.x = v9;
  self->_unadjustedGestureTranslation.y = v10;
  [v5 velocityInContainerView];
  v12 = v11;
  v14 = v13;

  self->_velocity.x = v12;
  self->_velocity.y = v14;
  if (self->_currentlyTrackingDock)
  {
    v15 = p_unadjustedGestureTranslation->f64[0];
    y = self->_unadjustedGestureTranslation.y;
    v46 = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
    [v46 verticalRubberbandStart];
    v18 = v17;
    [v46 verticalRubberbandEnd];
    v20 = v19;
    v44 = v19;
    [v46 verticalRubberbandDistance];
    v45 = v21;
    [v46 verticalRubberbandExponent];
    __y = v22;
    [v46 horizontalRubberbandStart];
    v24 = v23;
    [v46 horizontalRubberbandEnd];
    v26 = v25;
    [v46 horizontalRubberbandDistance];
    v28 = v27;
    [v46 horizontalRubberbandExponent];
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

- (CGPoint)adjustedTranslationForTranslation:(CGPoint)a3
{
  v3 = a3.x - self->_translationAdjustmentForFloatingDock.x;
  v4 = a3.y - self->_translationAdjustmentForFloatingDock.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationForAdjustedTranslation:(CGPoint)a3
{
  v3 = a3.x + self->_translationAdjustmentForFloatingDock.x;
  v4 = a3.y + self->_translationAdjustmentForFloatingDock.y;
  result.y = v4;
  result.x = v3;
  return result;
}

- (int64_t)adjustedFinalDestinationForDestination:(int64_t)a3 withTranslation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  v6 = a4.y;
  [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight:a4.x];
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

  v19 = a3 == 3 && self->_wasTrackingDockWhenGestureBegan;
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
    v23 = 0;
  }

  else
  {
    v23 = a3;
  }

  if (v21)
  {
    return v23;
  }

  else
  {
    return a3;
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
  v4 = [v3 appendSuper];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__SBHomeGestureDockSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  v6 = [v5 build];

  return v6;
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

- (BOOL)_shouldPresentDockForFinalDestination:(int64_t)a3
{
  if (a3)
  {
    LOBYTE(v5) = a3 == 4 && self->_startingEnvironmentMode == 1;
  }

  else
  {
    v5 = [(SBHomeGestureDockSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcher];
    if (v5)
    {
      if ([(SBHomeGestureDockSwitcherModifier *)self _rubberbandedOutOfDockHorizontally])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v6 = self->_lastTouchLocation.y + self->_velocity.y * 0.15;
        [(SBHomeGestureDockSwitcherModifier *)self switcherViewBounds];
        v8 = v7;
        [(SBHomeGestureDockSwitcherModifier *)self floatingDockHeight];
        LOBYTE(v5) = v6 < v8 + v9 * -0.25;
      }
    }
  }

  return v5;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  v7 = [(SBHomeGestureDockSwitcherModifier *)self homeGestureSettings];
  [v7 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher_3 = v3 * v4;
  [v7 velocityYThresholdForUnconditionalHome];
  *&kVelocityYThresholdForUnconditionalHome_0 = v3 * v5;
  [v7 maximumDistanceYThresholdToPresentDock];
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