@interface SBHomeGestureSwitcherModifier
- (BOOL)_hasPausedEnoughForFlyIn;
- (BOOL)_inMultitaskingForLocation:(CGPoint)a3 translation:(CGPoint)a4;
- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3;
- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe;
- (BOOL)_shouldResignActiveBasedOnCardScale;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3;
- (CGPoint)_rubberbandedTranslationForAdjacentCards;
- (CGPoint)_unadjustedGestureTranslation;
- (CGPoint)liftOffTranslationForGestureEnd;
- (CGPoint)liftOffVelocityForGestureEnd;
- (CGRect)frameForIndex:(unint64_t)a3;
- (NSString)debugDescription;
- (SBHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_centerYOffsetDuringGesture;
- (double)_coplanarSpacing;
- (double)_distanceYToInSwitcherCardScale;
- (double)_distanceYToMaxTranslation;
- (double)_gestureProgressToMaxTranslationForTranslation:(double)a3;
- (double)_inSwitcherCenterYOffsetWhenPresented;
- (double)_scaleForAdjacentCards;
- (double)_scaleForOffscreenAdjacentCardsForFlyIn;
- (double)_scaleForTranslation:(CGPoint)a3;
- (double)_switcherCardScale;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)lighteningAlphaForIndex:(unint64_t)a3;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)titleAndIconOpacityForIndex:(unint64_t)a3;
- (double)unconditionalDistanceThresholdForHome;
- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)_cornerRadiusSettings;
- (id)_layoutSettingsForAppLayout:(id)a3 layoutSettings:(id)a4;
- (id)_newDockModifierRequiringVerticalSwipeToTrackDock:(BOOL)a3 startingEnvironmentMode:(int64_t)a4;
- (id)_responseForActivatingFinalDestination:(int64_t)a3;
- (id)_responseForActivatingReachabilityIfNeededWithFinalDestination:(int64_t)a3;
- (id)_responseForCancelingSystemGesturesIfNeededWithFinalDestination:(int64_t)a3;
- (id)_responseForSBEventGestureBeganWithTimeDelta:(double)a3;
- (id)_responseForSBEventGestureEndWithEvent:(id)a3 finalDestination:(int64_t)a4;
- (id)_responseForStudyLogDidBeginGesture;
- (id)_responseForStudyLogDidEndGestureWithEvent:(id)a3 finalDestination:(int64_t)a4 destinationReason:(id)a5;
- (id)_responseForUpdatingIconViewVisibility:(BOOL)a3;
- (id)_responseForUpdatingLayoutForGestureBegan;
- (id)_updateForGestureDidBeginWithEvent:(id)a3;
- (id)_updateForGestureDidChangeWithEvent:(id)a3;
- (id)_updateForGestureDidEndWithEvent:(id)a3;
- (id)_updateInMultitaskingIfNeededWithEvent:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)visibleAppLayouts;
- (int64_t)headerStyleForIndex:(unint64_t)a3;
- (int64_t)homeScreenBackdropBlurType;
- (unint64_t)_selectedAppLayoutIndex;
- (void)_applyPrototypeSettings;
- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_displayLinkFired:(id)a3;
- (void)_updateFrameOffsetForXRubberbandingForTranslation:(CGPoint)a3;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3;
- (void)_updateShouldResignActiveWithEvent:(id)a3;
- (void)_updateStackedProgress;
- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3;
- (void)dealloc;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBHomeGestureSwitcherModifier

- (SBHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9
{
  v16 = a4;
  v17 = a6;
  v25.receiver = self;
  v25.super_class = SBHomeGestureSwitcherModifier;
  v18 = [(SBGestureSwitcherModifier *)&v25 initWithGestureID:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_selectedAppLayout, a4);
    v19->_startingEnvironmentMode = a5;
    v19->_scrunchInitiated = a7;
    v19->_continuingGesture = a8;
    v19->_lastGestureWasAnArcSwipe = a9;
    v19->_laysOutNeighboringCards = 0;
    v19->_providesHomeScreenDimmingAlpha = 1;
    objc_storeStrong(&v19->_multitaskingModifier, a6);
    v20 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:v19->_selectedAppLayout];
    coplanarLayoutModifier = v19->_coplanarLayoutModifier;
    v19->_coplanarLayoutModifier = v20;

    [(SBCoplanarSwitcherModifier *)v19->_coplanarLayoutModifier setUsesContainerViewBoundsAsActiveFrame:1];
    [(SBCoplanarSwitcherModifier *)v19->_coplanarLayoutModifier setSpacingType:1];
    v22 = objc_alloc_init(SBDismissSiriSwitcherModifier);
    dismissSiriModifier = v19->_dismissSiriModifier;
    v19->_dismissSiriModifier = v22;

    [(SBChainableModifier *)v19 addChildModifier:v19->_dismissSiriModifier];
  }

  return v19;
}

- (void)dealloc
{
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = SBHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v3 dealloc];
}

- (void)didMoveToParentModifier:(id)a3
{
  v31.receiver = self;
  v31.super_class = SBHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v31 didMoveToParentModifier:?];
  if (!a3)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    return;
  }

  v5 = [(SBHomeGestureSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  if (v6)
  {
    v7 = [(SBHomeGestureSwitcherModifier *)self prefersStripHiddenAndDisabled];
  }

  else
  {
    v7 = 1;
  }

  self->_laysOutNeighboringCards = v7;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  if (startingEnvironmentMode != 1 && (startingEnvironmentMode != 3 || v6 == 0))
  {
    v10 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__SBHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2;
    v27[3] = &unk_2783A92D8;
    v27[4] = self;
    v28 = v10;
    v11 = v10;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v11 usingBlock:v27];

LABEL_15:
    goto LABEL_16;
  }

  multitaskingModifier = self->_multitaskingModifier;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __57__SBHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke;
  v30[3] = &unk_2783A8C18;
  v30[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v30];
  if (!self->_providesHomeScreenDimmingAlpha)
  {
    v29.receiver = self;
    v29.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v29 homeScreenAlpha];
    self->_toHomeScreenAlpha = v13;
    v11 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
    v14 = [(SBHomeScreenSwitcherModifier *)v11 animationSettings];
    [v14 homeScreenBlurProgressForMode:2];
    self->_toHomeScreenBlurProgress = v15;

    goto LABEL_15;
  }

LABEL_16:
  if ([(SBHomeGestureSwitcherModifier *)self isFloatingDockSupported])
  {
    v16 = !self->_scrunchInitiated;
  }

  else
  {
    v16 = 0;
  }

  v17 = self->_continuingGesture && self->_lastGestureWasAnArcSwipe;
  if (self->_dockModifier == 0 && v16)
  {
    v18 = [(SBHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v17 startingEnvironmentMode:self->_startingEnvironmentMode];
    dockModifier = self->_dockModifier;
    self->_dockModifier = v18;

    [(SBChainableModifier *)self addChildModifier:self->_dockModifier atLevel:0 key:0];
  }

  if (!self->_finalDestinationModifier)
  {
    if (self->_startingEnvironmentMode == 2)
    {
      [(SBHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
      self->_translationAdjustmentForStartingFromSwitcher.y = -v20;
    }

    if (v16)
    {
      v21 = [(SBHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v17 startingEnvironmentMode:self->_startingEnvironmentMode];
    }

    else
    {
      v21 = 0;
    }

    v22 = [SBHomeGestureFinalDestinationSwitcherModifier alloc];
    v23 = [(SBHomeGestureSwitcherModifier *)self homeGestureSettings];
    [v23 minimumYDistanceForHomeOrAppSwitcher];
    v25 = [(SBHomeGestureFinalDestinationSwitcherModifier *)v22 initWithDelegate:self initialTranslationAdjustment:self->_startingEnvironmentMode minYDistanceForHomeOrSwitcher:self->_continuingGesture startingEnvironmentMode:v21 continuingGesture:self->_translationAdjustmentForStartingFromSwitcher.x dockModifier:self->_translationAdjustmentForStartingFromSwitcher.y, v24];
    finalDestinationModifier = self->_finalDestinationModifier;
    self->_finalDestinationModifier = v25;

    [(SBChainableModifier *)self addChildModifier:self->_finalDestinationModifier atLevel:1 key:0];
  }

  [(SBHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
}

uint64_t __57__SBHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 528) homeScreenAlpha];
  *(*(a1 + 32) + 488) = v2;
  [*(*(a1 + 32) + 528) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 496) = v3;
  result = [*(*(a1 + 32) + 528) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 504) = v5;
  return result;
}

uint64_t __57__SBHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) homeScreenAlpha];
  *(*(a1 + 32) + 488) = v2;
  [*(a1 + 40) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 496) = v3;
  result = [*(a1 + 40) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 504) = v5;
  return result;
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
  [(SBHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureSwitcherModifier;
  v4 = a3;
  v5 = [(SBGestureSwitcherModifier *)&v8 handleTransitionEvent:v4];
  v6 = [v4 phase];

  if (v6 >= 2)
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)handleRemovalEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v10 handleRemovalEvent:v4];
  if ([v4 phase] == 1)
  {
    v6 = [v4 appLayout];
    if ([(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
    {
      v7 = objc_alloc_init(SBCompleteGestureSwitcherEventResponse);
      v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

      v5 = v8;
    }
  }

  return v5;
}

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SBHomeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBHomeGestureSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBHomeGestureSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBHomeGestureSwitcherModifier.m" lineNumber:319 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBHomeGestureSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
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
    [SBHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  v5 = ([(SBHomeGestureSwitcherModifier *)self isDevicePad]& 1) == 0 && self->_startingEnvironmentMode == 3;
  self->_isPendingViewsForAcceleratedHomeGesture = v5;
  v6 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v7 = CACurrentMediaTime();
  [v4 lastTouchTimestamp];
  v9 = v8;
  v10 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v10;

  v12 = self->_displayLink;
  v13 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v12 addToRunLoop:v13 forMode:*MEMORY[0x277CBE738]];

  v14 = self->_startingEnvironmentMode == 2;
  self->_inMultitasking = v14;
  v15 = 0.0;
  if (v14)
  {
    v15 = 1.0;
  }

  self->_stackedProgress = v15;
  [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
  v17 = v16;
  v19 = v18;
  [v4 locationInContainerView];
  v21 = v20;
  v23 = v22;
  UIRectGetCenter();
  self->_touchOffset.x = v21 - v24;
  self->_touchOffset.y = v23 - v25;
  self->_initialTouchLocation.x = v21;
  self->_initialTouchLocation.y = v23;
  self->_lastTouchLocation.x = v21;
  self->_lastTouchLocation.y = v23;
  if (self->_startingEnvironmentMode == 2)
  {
    self->_initialTouchLocation.y = v19;
  }

  self->_didPlayFlyInHaptic = self->_inMultitasking;
  [v4 translationInContainerView];
  v27 = v26;
  [v4 hysteresis];
  self->_everTranslatedUpwards = v27 < -v28;
  self->_centroidAdjustment = *MEMORY[0x277CBF348];
  if (self->_scrunchInitiated)
  {
    v29 = v4;
    if ([v29 touchType] == 1)
    {
      [v29 initialCentroid];
      self->_centroidAdjustment.x = v17 * 0.5 - v30;
      self->_centroidAdjustment.y = v19 * 0.5 - v31;
    }
  }

  [(SBHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBHomeGestureSwitcherModifier *)self _updateStackedProgress];
  v32 = [(SBHomeGestureSwitcherModifier *)self _responseForUpdatingLayoutForGestureBegan];
  [(SBChainableModifierEventResponse *)v6 addChildResponse:v32];
  v33 = [(SBHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:0];
  if (v33)
  {
    [(SBChainableModifierEventResponse *)v6 addChildResponse:v33];
  }

  v34 = v7 - v9;
  v35 = [(SBHomeGestureSwitcherModifier *)self _responseForStudyLogDidBeginGesture];
  if (v35)
  {
    [(SBChainableModifierEventResponse *)v6 addChildResponse:v35];
  }

  v36 = [(SBHomeGestureSwitcherModifier *)self _responseForSBEventGestureBeganWithTimeDelta:v34];
  if (v36)
  {
    [(SBChainableModifierEventResponse *)v6 addChildResponse:v36];
  }

  return v6;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBHomeGestureSwitcherModifier *)self _updateStackedProgress];
  [(SBHomeGestureSwitcherModifier *)self _unadjustedGestureTranslation];
  v6 = v5;
  if ([(SBHomeGestureSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:v5])
  {
    self->_gestureHoldTimer = 0;
  }

  v7 = objc_alloc_init(SBSwitcherModifierEventResponse);
  [v4 locationInContainerView];
  v9 = v8;
  v11 = v10;
  v12 = [(SBHomeGestureSwitcherModifier *)self _updateInMultitaskingIfNeededWithEvent:v4];
  if (v12)
  {
    [(SBChainableModifierEventResponse *)v7 addChildResponse:v12];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    [(SBCoplanarSwitcherModifier *)self->_coplanarLayoutModifier setSpacingType:0];
  }

  coplanarLayoutModifier = self->_coplanarLayoutModifier;
  [(SBHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  [(SBCoplanarSwitcherModifier *)coplanarLayoutModifier setScale:?];
  [(SBHomeGestureSwitcherModifier *)self _updateFrameOffsetForXRubberbandingForTranslation:self->_translation.x, self->_translation.y];
  self->_lastTouchLocation.x = v9;
  self->_lastTouchLocation.y = v11;
  if (!self->_everTranslatedUpwards)
  {
    self->_everTranslatedUpwards = v6 < 0.0;
  }

  if (self->_startingEnvironmentMode == 1)
  {
    v14 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
    if (![(SBCompleteGestureSwitcherEventResponse *)v14 count])
    {
      inMultitasking = self->_inMultitasking;

      if (!inMultitasking)
      {
        goto LABEL_18;
      }

      self->_cancelledGestureForEmptySwitcher = 1;
      v14 = objc_alloc_init(SBCompleteGestureSwitcherEventResponse);
      [(SBChainableModifierEventResponse *)v7 addChildResponse:v14];
    }
  }

LABEL_18:

  return v7;
}

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  [(SBHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  self->_gestureLiftOffVelocity = self->_velocity;
  self->_gestureLiftOffTranslation = self->_translation;
  [v4 locationInContainerView];
  self->_lastTouchLocation.x = v6;
  self->_lastTouchLocation.y = v7;
  v8 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v9 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier finalDestinationReason];
  v10 = objc_alloc_init(SBSwitcherModifierEventResponse);
  if (v8 == 3 && !self->_didPlayFlyInHaptic)
  {
    v11 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
    v12 = [v11 count];

    if (v12)
    {
      self->_didPlayFlyInHaptic = 1;
      v13 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
      -[SBHapticSwitcherEventResponse setHidEventSenderID:](v13, "setHidEventSenderID:", [v4 hidEventSenderID]);
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v13];
    }
  }

  if (self->_didWarmupFlyInHaptic)
  {
    v14 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:2];
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v14];
  }

  v15 = [v4 isCanceled];
  v16 = v15;
  if (v15)
  {
    if (self->_cancelledGestureForEmptySwitcher)
    {

      v9 = @"CancelledGestureForEmptySwitcher";
      v8 = 3;
    }

    else
    {
      startingEnvironmentMode = self->_startingEnvironmentMode;

      v20 = @"CancelledGestureAndStayingInApplication";
      v21 = 4;
      if (startingEnvironmentMode == 1)
      {
        v20 = @"CancelledGestureAndStayingHome";
      }

      else
      {
        v21 = 0;
      }

      v22 = startingEnvironmentMode == 2;
      if (startingEnvironmentMode == 2)
      {
        v8 = 3;
      }

      else
      {
        v8 = v21;
      }

      if (v22)
      {
        v9 = @"CancelledGestureAndStayingInSwitcher";
      }

      else
      {
        v9 = v20;
      }
    }
  }

  else
  {
    if (self->_startingEnvironmentMode == 1 && v8 == 4)
    {
      if (!self->_inMultitasking || (inMultitaskingChangedProperty = self->_inMultitaskingChangedProperty) != 0 && ([(UIViewFloatAnimatableProperty *)inMultitaskingChangedProperty presentationValue], v18 <= 0.2))
      {
        v8 = 4;
      }

      else
      {

        v9 = @"AppSwitcherBecauseStartingFromHomeScreenAndShowingCards";
        v8 = 3;
      }
    }

    v23 = [v4 touchType];
    if (((self->_scrunchInitiated | [v4 isPointerTouch]) & 1) == 0 || v23 == 1)
    {
      v24 = [(SBHomeGestureSwitcherModifier *)self homeGestureSettings];
      v25 = v24;
      if (v8 == 4 && self->_selectedAppLayout && [v24 injectGestureVelocityForZoomDown])
      {
        [v4 velocityInContainerView];
        v27 = v26;
        v29 = v28;
        [(SBHomeGestureSwitcherModifier *)self switcherViewBounds];
        v31 = v30;
        v32 = [(SBHomeGestureSwitcherModifier *)self homeGestureSettings];
        v33 = [(SBHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"transform"];
        v34 = v33;
        if (v33)
        {
          [v33 CATransform3DValue];
          CATransform3DGetAffineTransform(&v70, &v71);
          a = v70.a;
        }

        else
        {
          a = 0.0;
        }

        [v32 scaleVelocityPercentOfGestureVelocityYDividedByViewHeight];
        v37 = v29 / v31 * v36;
        v68 = v32;
        if ([v32 onlyInjectVelocityForShortFlicks] && fabs(a / v37) >= 0.15)
        {
          v52 = 0;
        }

        else
        {
          v66 = v34;
          v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
          [v32 maximumScaleVelocity];
          memset(&v71, 0, sizeof(v71));
          SBVelocityMatrixForUniform2DScaling();
          v38 = [SBInjectVelocitySwitcherEventResponse alloc];
          v69 = v71;
          v39 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v69];
          v40 = [(SBInjectVelocitySwitcherEventResponse *)v38 initWithVelocity:v39 forKey:@"transform" appLayout:self->_selectedAppLayout];
          [v67 addObject:v40];

          v41 = [(SBHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"position"];
          v63 = v41;
          if (v41)
          {
            [v41 CGPointValue];
          }

          else
          {
            v42 = *MEMORY[0x277CBF348];
            v43 = *(MEMORY[0x277CBF348] + 8);
          }

          v44 = fabs(v42);
          if (fabs(v27) < v44)
          {
            v27 = v42;
          }

          if (fabs(v27) >= v44)
          {
            v45 = v29;
          }

          else
          {
            v45 = v43;
          }

          [v68 positionVelocityXPercentOfGestureVelocityX];
          v47 = v46 * v27;
          [v68 positionVelocityYPercentOfGestureVelocityY];
          v49 = v48 * v45;
          v50 = [SBInjectVelocitySwitcherEventResponse alloc];
          v65 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v47, v49}];
          v51 = [(SBInjectVelocitySwitcherEventResponse *)v50 initWithVelocity:v65 forKey:@"position" appLayout:self->_selectedAppLayout];
          v52 = v67;
          [v67 addObject:v51];

          v34 = v66;
        }

        if ([v52 count])
        {
          [(SBChainableModifierEventResponse *)v10 addChildResponses:v52];
        }
      }
    }

    if (self->_startingEnvironmentMode == 1 && [(SBAppLayout *)self->_selectedAppLayout type]!= 2 && v8 == 4)
    {
      v53 = objc_alloc_init(SBActivateHomeButtonSwitcherEventResponse);
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v53];

      v8 = 4;
    }
  }

  v54 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    v55 = NSStringFromSBHomeGestureFinalDestination(v8);
    LODWORD(v71.m11) = 138412802;
    *(&v71.m11 + 4) = v55;
    WORD2(v71.m12) = 2048;
    *(&v71.m12 + 6) = v8;
    HIWORD(v71.m13) = 2112;
    *&v71.m14 = v9;
    _os_log_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_INFO, "Home Gesture Modifier - Final Response: %@ (%lu), Reason: %@", &v71, 0x20u);
  }

  v56 = [(SBHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:1];
  if (v56)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v56];
  }

  v57 = [(SBHomeGestureSwitcherModifier *)self _responseForActivatingFinalDestination:v8];
  [(SBChainableModifierEventResponse *)v10 addChildResponse:v57];
  if ((v16 & 1) == 0)
  {
    v58 = [(SBHomeGestureSwitcherModifier *)self _responseForActivatingReachabilityIfNeededWithFinalDestination:v8];
    if (v58)
    {
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v58];
    }

    v59 = [(SBHomeGestureSwitcherModifier *)self _responseForCancelingSystemGesturesIfNeededWithFinalDestination:v8];
    if (v59)
    {
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v59];
    }
  }

  v60 = [(SBHomeGestureSwitcherModifier *)self _responseForStudyLogDidEndGestureWithEvent:v4 finalDestination:v8 destinationReason:v9];
  if (v60)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v60];
  }

  v61 = [(SBHomeGestureSwitcherModifier *)self _responseForSBEventGestureEndWithEvent:v4 finalDestination:v8];
  if (v61)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v61];
  }

  return v10;
}

- (void)_updateFrameOffsetForXRubberbandingForTranslation:(CGPoint)a3
{
  if (self->_inMultitasking || self->_hasTriggeredCardFlyIn)
  {
    v3 = a3.x - self->_translationXLostToRubberbanding;
  }

  else
  {
    v3 = a3.x - self->_lastTranslationXForRubberbanding + -(a3.x - self->_lastTranslationXForRubberbanding - (a3.x - self->_lastTranslationXForRubberbanding) * 0.3) * fmin(fmax(-self->_velocity.y, 0.0), 6000.0) / 6000.0 + self->_lastFrameOffsetX;
    self->_lastTranslationXForRubberbanding = a3.x;
  }

  v4 = v3 + 0.0;
  self->_lastFrameOffsetX = v4;
  self->_translationXLostToRubberbanding = a3.x - v4;
}

- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_inMultitasking && self->_startingEnvironmentMode == 1)
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

- (CGPoint)_unadjustedGestureTranslation
{
  x = self->_translation.x;
  y = self->_translation.y;
  dockModifier = self->_dockModifier;
  if (dockModifier)
  {
    [(SBHomeGestureDockSwitcherModifier *)dockModifier translationForAdjustedTranslation:x, y];
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3
{
  v33 = a3;
  [v33 translationInContainerView];
  v5 = v4;
  v7 = v6;
  [(SBHomeGestureSwitcherModifier *)self _updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:v33];
  v8 = self->_translationAdjustmentForStartingFromSwitcher.y + self->_translationAdjustmentForStartingFromHomeScreen.y;
  v9 = v5 + self->_translationAdjustmentForStartingFromSwitcher.x + self->_translationAdjustmentForStartingFromHomeScreen.x;
  v10 = v7 + v8;
  dockModifier = self->_dockModifier;
  if (dockModifier)
  {
    [(SBHomeGestureDockSwitcherModifier *)dockModifier adjustedTranslationForTranslation:v9, v7 + v8];
    v9 = v12;
    v10 = v13;
  }

  [v33 averageTouchVelocityOverTimeDuration:0.0416666667];
  v15 = v14;
  v17 = v16;
  [(SBHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
  v19 = -v10 / v18;
  [(SBHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v10];
  self->_translation.x = v9;
  self->_translation.y = v10;
  self->_velocity.x = v15;
  self->_velocity.y = v17;
  self->_progressToInSwitcherCardScale = v19;
  self->_progressToMaxTranslation = v20;
  [v33 lastTouchTimestamp];
  self->_lastTouchTimestamp = v21;
  if (self->_scrunchInitiated)
  {
    v22 = v33;
    [v22 initialCentroid];
    self->_initialCentroid.x = v23;
    self->_initialCentroid.y = v24;
    [v22 centroid];
    self->_centroid.x = v25;
    self->_centroid.y = v26;
    self->_initialCentroid = vaddq_f64(self->_initialCentroid, self->_centroidAdjustment);
    self->_centroid = vaddq_f64(self->_centroid, self->_centroidAdjustment);
    [v22 absoluteScale];
    self->_absoluteScale = v27;
    p_translationWithoutScale = &self->_translationWithoutScale;
    [v22 translationWithoutScale];
    v30 = v29;
    v32 = v31;

    p_translationWithoutScale->x = v30;
    p_translationWithoutScale->y = v32;
  }
}

- (void)_updateStackedProgress
{
  if (self->_startingEnvironmentMode == 2)
  {
    v19 = v9;
    v20 = v8;
    v21 = v2;
    v11 = BSFloatLessThanOrEqualToFloat();
    v12 = -0.75;
    if (v11)
    {
      v12 = 0.75;
    }

    v13 = (self->_progressToInSwitcherCardScale + -1.0) / v12 + 1.0;
    v14 = (0.0 - v13) * fabs(self->_translation.x);
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds:v19];
    v16 = fmin(fmax(v13 + v14 / (v15 * 0.25), 0.0), 1.0);
    if (self->_inMultitasking)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    if (BSFloatIsZero() && !self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan)
    {
      self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan = 1;
      self->_hasTriggeredCardFlyIn = 1;
      self->_translationYWhenTriggeredCardFlyIn = self->_translation.y;
    }

    if (self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v17;
    }

    self->_stackedProgress = v18;
  }
}

- (double)unconditionalDistanceThresholdForHome
{
  if (self->_startingEnvironmentMode == 1)
  {
    return 1.79769313e308;
  }

  v17 = v7;
  v18 = v6;
  v19 = v3;
  v20 = v2;
  scrunchInitiated = self->_scrunchInitiated;
  if (self->_scrunchInitiated)
  {
    v11 = 0.4;
  }

  else
  {
    v11 = *&kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome;
  }

  v12 = kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome;
  [(SBHomeGestureSwitcherModifier *)self containerViewBounds:v17];
  result = v11 * v13;
  if (self->_hasTriggeredCardFlyIn)
  {
    v14 = 0.1;
    if (!scrunchInitiated)
    {
      v14 = *&v12;
    }

    v15 = result - v14 * v13;
    result = result + v14 * v13;
    v16 = 100.0 - self->_translationYWhenTriggeredCardFlyIn;
    if (v15 >= v16)
    {
      v16 = v15;
    }

    if (result > v16)
    {
      result = v16;
    }

    if (!self->_inMultitasking)
    {
      return result + -50.0;
    }
  }

  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  coplanarLayoutModifier = self->_coplanarLayoutModifier;
  v34 = *MEMORY[0x277CBF3A0];
  v35 = v5;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __47__SBHomeGestureSwitcherModifier_frameForIndex___block_invoke;
  v29[3] = &unk_2783AA618;
  v29[4] = self;
  v29[5] = &v30;
  v29[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:coplanarLayoutModifier usingBlock:v29];
  v28.receiver = self;
  v28.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v28 frameForIndex:a3];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v31[1].origin.y = v9;
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v31[1].origin.x = v31[1].origin.x + self->_stackedProgress * (v8 - v31[1].origin.x);
  }

  if ([(SBHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:a3])
  {
    [(SBHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:self->_translation.x, self->_translation.y];
LABEL_5:
    v17 = v15;
    v18 = v16;
    goto LABEL_10;
  }

  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  if (!self->_laysOutNeighboringCards)
  {
    p_x = &v31->origin.x;
    v31[1].origin.x = v8;
    p_x[5] = v10;
    *(p_x + 6) = v12;
    *(p_x + 7) = v14;
    goto LABEL_10;
  }

  if (![(SBHomeGestureSwitcherModifier *)self _shouldPositionAdjacentCardsOffscreenForFlyIn])
  {
    [(SBHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
    [(SBHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:?];
    goto LABEL_5;
  }

LABEL_10:
  v36 = CGRectOffset(v31[1], v17, v18);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v31[1] = v36;
  _Block_object_dispose(&v30, 8);
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

uint64_t __47__SBHomeGestureSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 536) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?])
  {
    [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
    v6 = v5;
    if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
    {
      return v6;
    }

    goto LABEL_9;
  }

  if (self->_laysOutNeighboringCards)
  {
    [(SBHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v11 scaleForIndex:a3];
  }

  v6 = v7;
  if ((BSFloatGreaterThanOrEqualToFloat() & 1) != 0 && self->_laysOutNeighboringCards)
  {
LABEL_9:
    v10.receiver = self;
    v10.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v10 scaleForIndex:a3];
    [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
    BSFloatByLinearlyInterpolatingFloats();
    return v8;
  }

  return v6;
}

- (id)visibleAppLayouts
{
  v3 = +[SBSetupManager sharedInstance];
  v4 = [v3 isInSetupMode];

  if (v4)
  {
    if (self->_selectedAppLayout)
    {
      [MEMORY[0x277CBEB98] setWithObjects:0];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v6 = ;
  }

  else
  {
    v41.receiver = self;
    v41.super_class = SBHomeGestureSwitcherModifier;
    v5 = [(SBHomeGestureSwitcherModifier *)&v41 visibleAppLayouts];
    v6 = [v5 mutableCopy];

    if (self->_selectedAppLayout)
    {
      [v6 addObject:?];
    }

    v7 = [(SBHomeGestureSwitcherModifier *)self _selectedAppLayoutIndex];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
    if ((!-[SBHomeGestureDockSwitcherModifier isCurrentlyTrackingDock](self->_dockModifier, "isCurrentlyTrackingDock") || self->_shouldResignActive || self->_hasTriggeredCardFlyIn || self->_startingEnvironmentMode == 2) && [v9 count])
    {
      if (self->_hasTriggeredCardFlyIn || (v10 = self->_startingEnvironmentMode != 1, (BSFloatIsZero() & 1) == 0))
      {
        [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
        v13 = v12;
        v39 = v12;
        [(SBHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
        [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
        v15 = v14;
        [(SBHomeGestureSwitcherModifier *)self _coplanarSpacing];
        v17 = v15 * v16;
        v18 = v15 * v16 + v13 * v15;
        [(SBHomeGestureSwitcherModifier *)self frameForIndex:v8];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        UIRectGetCenter();
        [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
        CGAffineTransformMakeScale(&v40, v27, v27);
        v43.origin.x = v20;
        v43.origin.y = v22;
        v43.size.width = v24;
        v43.size.height = v26;
        CGRectApplyAffineTransform(v43, &v40);
        SBUnintegralizedRectCenteredAboutPoint();
        v29 = v28 - v17;
        v31 = v39 - (v28 + v30) - v17;
        if ([(SBHomeGestureSwitcherModifier *)self isRTLEnabled])
        {
          v32 = v31;
        }

        else
        {
          v32 = v29;
        }

        v10 = vcvtpd_s64_f64(v32 / v18);
        if ([(SBHomeGestureSwitcherModifier *)self isRTLEnabled])
        {
          v33 = v29;
        }

        else
        {
          v33 = v31;
        }

        v11 = vcvtpd_s64_f64(v33 / v18);
        if (v11 <= 1)
        {
          v11 = 1;
        }

        if (v10 <= 1)
        {
          v10 = 1;
        }
      }

      else
      {
        v11 = 1;
      }

      v34 = (v8 - v11) & ~((v8 - v11) >> 63);
      v35 = v10 + v8;
      v36 = [v9 count];
      if (v35 >= v36 - 1)
      {
        v35 = v36 - 1;
      }

      if (v34 < [v9 count] && (v35 & 0x8000000000000000) == 0)
      {
        v37 = [v9 subarrayWithRange:{v34, v35 - v34 + 1}];
        [v6 addObjectsFromArray:v37];
      }
    }
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHomeGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v11 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType])
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 layoutSettings];
    v8 = [(SBHomeGestureSwitcherModifier *)self _layoutSettingsForAppLayout:v4 layoutSettings:v7];
    [v6 setLayoutSettings:v8];

    v9 = [(SBHomeGestureSwitcherModifier *)self _cornerRadiusSettings];
    [v6 setCornerRadiusSettings:v9];

    v5 = v6;
  }

  return v5;
}

- (id)_cornerRadiusSettings
{
  v2 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 appToSwitcherCornerRadiusSettings];

  return v4;
}

- (id)_layoutSettingsForAppLayout:(id)a3 layoutSettings:(id)a4
{
  v6 = a4;
  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:a3])
  {
    goto LABEL_21;
  }

  if (self->_inMultitaskingChangedProperty)
  {
    v10 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
    v11 = [v10 animationSettings];
    v7 = [v11 cardFlyInSettings];

    v9 = objc_alloc_init(MEMORY[0x277D65E60]);
    [v9 setDefaultValues];
    v12 = 0.0;
    if (self->_inMultitasking)
    {
      [(UIViewFloatAnimatableProperty *)self->_inMultitaskingChangedProperty presentationValue];
      v14 = v13;
      v15 = fabs(self->_translation.x);
      [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
      v17 = v15 / v16;
      v18 = v15 / v16 + 0.0;
      if (v17 <= 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v18;
      }

      v12 = fmin(fmax(1.0 - (1.0 - v14) * (1.0 - fmin(v19, 1.0)), 0.0), 1.0);
    }

    [v6 trackingResponse];
    v21 = v20;
    [v7 response];
    v23 = v12 * (v21 - v22);
    [v7 response];
    [v9 setTrackingResponse:v24 + v23];
    [v6 dampingRatio];
    [v9 setTrackingDampingRatio:?];
    v27 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v9 setFrameRateRange:1114113 highFrameRateReason:{*&v27.minimum, *&v27.maximum, *&v27.preferred}];
    goto LABEL_12;
  }

  if (self->_inMultitasking)
  {
LABEL_21:
    if (self->_startingEnvironmentMode == 2 && BSFloatGreaterThanFloat())
    {
      v7 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
      v8 = [v7 animationSettings];
      v9 = [v8 stackedSwitcherTrackingSettings];

LABEL_12:
      goto LABEL_14;
    }

    v9 = v6;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277D65E60]);
    [v9 setDefaultValues];
    [v9 setTrackingResponse:0.0];
    v28 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v9 setFrameRateRange:1114113 highFrameRateReason:{*&v28.minimum, *&v28.maximum, *&v28.preferred}];
  }

LABEL_14:

  return v9;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isOrContainsAppLayout:self->_selectedAppLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBHomeGestureSwitcherModifier;
    v7 = [(SBHomeGestureSwitcherModifier *)&v9 shouldPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3
{
  y = a3.y;
  v5 = MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  if (self->_startingEnvironmentMode == 1)
  {
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      [(SBHomeGestureSwitcherModifier *)self floatingDockHeight];
      v6 = v7 * -0.5;
      if (self->_scrunchInitiated)
      {
        v8 = (v6 * 0.25 - v6) * self->_centroid.y;
        [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
        v6 = v6 + v8 / v9;
      }
    }
  }

  v10 = *v5;
  if (self->_scrunchInitiated)
  {
    if (self->_startingEnvironmentMode != 1)
    {
      [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
      v12 = v11;
      x = self->_initialCentroid.x;
      v14 = self->_centroid.x;
      v15 = x - v14;
      v17 = (self->_initialCentroid.y - self->_centroid.y) * (vabdd_f64(x, v14) / (v16 * -0.8) + 1.0);
      v18 = v6 - v17;
      UIRectGetCenter();
      v20 = v19;
      v22 = v21;
      [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:v15, v17];
      v24 = v23;
      v10 = v10 - (v20 - self->_initialCentroid.x) * (1.0 - v23);
      v6 = v18 - (v22 - self->_initialCentroid.y) * (1.0 - v23);
      v25 = v12 * ((1.0 - v23) * 0.5);
      [(SBHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
      v27 = v26 * (v24 / self->_homeGestureMinimumCardScale);
      if (v6 > v25 || v6 < v27)
      {
        BSUIConstrainValueToIntervalWithRubberBand();
        v6 = v29;
      }
    }
  }

  else
  {
    [(SBHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:y];
    v31 = v30;
    if (self->_startingEnvironmentMode == 2 && v30 < 0.0)
    {
      progressToInSwitcherCardScale = self->_progressToInSwitcherCardScale;
      [(SBHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v34 = progressToInSwitcherCardScale * (0.0 - v33);
      [(SBHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v6 = v6 - (v35 + v34);
    }

    else
    {
      [(SBHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
      v6 = v6 + v31 * v36 + 0.0;
    }

    if (self->_startingEnvironmentMode != 1)
    {
      [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
      v38 = v37;
      [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
      v40 = v39;
      v41 = 1.0;
      if (self->_startingEnvironmentMode == 2)
      {
        [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
      }

      v10 = v10 + (v40 * v41 - v40 * v38) * 0.5 * (self->_touchOffset.x / (v40 * 0.5));
    }
  }

  v42 = (v10 + self->_lastFrameOffsetX) * self->_homeGestureXOffsetFactor;
  v43 = v6;
  result.y = v43;
  result.x = v42;
  return result;
}

- (double)_scaleForTranslation:(CGPoint)a3
{
  if (self->_scrunchInitiated)
  {
    x = self->_translationWithoutScale.x;
    y = self->_translationWithoutScale.y;
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds:a3.x];
    v8 = self->_initialCentroid.y;
    if (v8 < v7 * 0.5)
    {
      v8 = v7 * 0.5;
    }

    v9 = (fabs(x) / (v6 * -0.8) + 1.0) * (y * (v7 / v8));
  }

  else
  {
    v9 = a3.y;
  }

  [(SBHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v9];
  v11 = v10;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  if (startingEnvironmentMode == 1)
  {
    [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
    homeGestureMinimumCardScale = v13;
  }

  else
  {
    homeGestureMinimumCardScale = self->_homeGestureMinimumCardScale;
  }

  v15 = self->_startingEnvironmentMode;
  if (v15 == 2 && v11 < 0.0)
  {
    progressToInSwitcherCardScale = self->_progressToInSwitcherCardScale;
    [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
    v18 = progressToInSwitcherCardScale * (v17 + -1.0) + 1.0;
  }

  else
  {
    v19 = 1.0;
    if (v15 == 2)
    {
      [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
    }

    v20 = v19 + v11 * (0.0 - v19);
    if (v20 >= 0.0)
    {
      v18 = v20;
    }

    else
    {
      v18 = 0.0;
    }
  }

  if (self->_scrunchInitiated)
  {
    v18 = v18 * self->_absoluteScale;
  }

  if (v18 >= homeGestureMinimumCardScale)
  {
    if (v18 > 1.0)
    {
      BSUIConstrainValueWithRubberBand();
      v18 = v21 + 1.0;
    }
  }

  else
  {
    BSUIConstrainValueWithRubberBand();
    v18 = homeGestureMinimumCardScale - v22;
  }

  if (startingEnvironmentMode == 1)
  {
    if (+[SBFloatingDockController isFloatingDockSupported])
    {
      v23 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
      [v23 offscreenCardScaleForFlyIn];
    }

    BSUIConstrainValueToIntervalWithRubberBand();
    return v24;
  }

  return v18;
}

- (double)_scaleForAdjacentCards
{
  if ([(SBHomeGestureSwitcherModifier *)self _shouldPositionAdjacentCardsOffscreenForFlyIn])
  {

    [(SBHomeGestureSwitcherModifier *)self _scaleForOffscreenAdjacentCardsForFlyIn];
  }

  else
  {
    [(SBHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];

    [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
  }

  return result;
}

- (double)_scaleForOffscreenAdjacentCardsForFlyIn
{
  v3 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 offscreenCardScaleForFlyIn];
  v5 = v4;
  [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v7 = v6;

  if (v5 >= v7)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

- (CGPoint)_rubberbandedTranslationForAdjacentCards
{
  x = self->_translation.x;
  y = self->_translation.y;
  if (self->_startingEnvironmentMode != 1)
  {
    [(SBHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
    translationYWhenTriggeredCardFlyIn = self->_translationYWhenTriggeredCardFlyIn;
    if (translationYWhenTriggeredCardFlyIn > 100.0 - v5)
    {
      translationYWhenTriggeredCardFlyIn = 100.0 - v5;
    }

    v7 = y;
    if (y < translationYWhenTriggeredCardFlyIn)
    {
      v7 = translationYWhenTriggeredCardFlyIn + (1.0 - ((translationYWhenTriggeredCardFlyIn - y) / (v5 + translationYWhenTriggeredCardFlyIn) * 2.0 + -1.0) * ((translationYWhenTriggeredCardFlyIn - y) / (v5 + translationYWhenTriggeredCardFlyIn) * 2.0 + -1.0)) * -0.25 * (v5 + translationYWhenTriggeredCardFlyIn);
    }

    [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
    v9 = fabs(x) / (v8 * 0.25);
    if (v9 <= 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9 + 0.0;
    }

    y = v7 + (y - v7) * fmin(v10, 1.0);
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v8 dimmingAlphaForLayoutRole:a3 inAppLayout:a4];
  v6 = v5;
  if (BSFloatIsZero())
  {
    return v6 * self->_stackedProgress + 0.0;
  }

  return v6;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3
{
  stackedProgress = self->_stackedProgress;
  v6.receiver = self;
  v6.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v6 wallpaperOverlayAlphaForIndex:a3];
  return stackedProgress * v4 + 0.0;
}

- (double)lighteningAlphaForIndex:(unint64_t)a3
{
  stackedProgress = self->_stackedProgress;
  v6.receiver = self;
  v6.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v6 lighteningAlphaForIndex:a3];
  return stackedProgress * v4 + 0.0;
}

- (int64_t)headerStyleForIndex:(unint64_t)a3
{
  if (self->_laysOutNeighboringCards)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBHomeGestureSwitcherModifier;
  return [(SBHomeGestureSwitcherModifier *)&v6 headerStyleForIndex:a3];
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  result = 0.0;
  if (!self->_laysOutNeighboringCards)
  {
    v4.receiver = self;
    v4.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v4 titleAndIconOpacityForIndex:a3, 0.0];
  }

  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  result = 1.0;
  if (!self->_inMultitasking)
  {
    v5.receiver = self;
    v5.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v5 shadowOpacityForLayoutRole:a3 atIndex:a4, 1.0];
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v6 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v7 = [v6 objectAtIndex:a3];

  if (([v7 isEqual:self->_selectedAppLayout] & 1) != 0 || self->_laysOutNeighboringCards)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v8 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
    [(SBHomeGestureSwitcherModifier *)self displayCornerRadius];
    v10 = v9;
    [v8 deckSwitcherPageScale];
    v12 = v11;
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = 5.0;
      }
    }

    else
    {
      v14 = [MEMORY[0x277D75418] currentDevice];
      if ([v14 userInterfaceIdiom] == 1)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = 5.0;
      }
    }

    if (!BSFloatIsZero())
    {
      v13 = v10 * v12;
    }

    if (self->_startingEnvironmentMode == 1)
    {
      multitaskingModifier = self->_multitaskingModifier;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __53__SBHomeGestureSwitcherModifier_cornerRadiiForIndex___block_invoke;
      v35[3] = &unk_2783B0508;
      v35[4] = &v36;
      *&v35[5] = v13;
      *&v35[6] = v12;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v35];
LABEL_29:
      SBRectCornerRadiiForRadius();
      v19 = v27;
      v21 = v28;
      v23 = v29;
      v25 = v30;

      _Block_object_dispose(&v36, 8);
      goto LABEL_30;
    }

    v16 = __sb__runningInSpringBoard();
    v17 = v16;
    if (v16)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v3 = [MEMORY[0x277D75418] currentDevice];
      if ([v3 userInterfaceIdiom] != 1)
      {
        goto LABEL_27;
      }
    }

    [(SBHomeGestureSwitcherModifier *)self displayCornerRadius];
    if (BSFloatIsZero() && [v8 shouldRoundCornersDuringSwipeUp])
    {
      v26 = [(SBHomeGestureSwitcherModifier *)self isContentStatusBarVisibleForIndex:a3];
      if ((v17 & 1) == 0)
      {
      }

      if (!v26)
      {
        v37[3] = v13;
        goto LABEL_29;
      }

LABEL_28:
      v37[3] = v10;
      goto LABEL_29;
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_27:

    goto LABEL_28;
  }

  v40.receiver = self;
  v40.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v40 cornerRadiiForIndex:a3];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
LABEL_30:

  v31 = v19;
  v32 = v21;
  v33 = v23;
  v34 = v25;
  result.topRight = v34;
  result.bottomRight = v33;
  result.bottomLeft = v32;
  result.topLeft = v31;
  return result;
}

double __53__SBHomeGestureSwitcherModifier_cornerRadiiForIndex___block_invoke(uint64_t a1)
{
  result = *(a1 + 40) / *(a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (double)homeScreenAlpha
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (!self->_inMultitasking)
    {
      v11.receiver = self;
      v11.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v11 homeScreenAlpha];
      return result;
    }
  }

  else if (![(SBHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]|| [(SBHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]== 3)
  {
    progressToMaxTranslation = self->_progressToMaxTranslation;
    toHomeScreenAlpha = self->_toHomeScreenAlpha;
    v10.receiver = self;
    v10.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v10 homeScreenAlpha];
    v7 = progressToMaxTranslation * (toHomeScreenAlpha - v6);
    v9.receiver = self;
    v9.super_class = SBHomeGestureSwitcherModifier;
    [(SBHomeGestureSwitcherModifier *)&v9 homeScreenAlpha];
    return v7 + v8;
  }

  return self->_toHomeScreenAlpha;
}

- (double)homeScreenScale
{
  v9.receiver = self;
  v9.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v9 homeScreenScale];
  if (self->_startingEnvironmentMode == 1)
  {
    y = self->_translation.y;
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
    if (y / (v5 * 0.5) + 1.0 >= 1.0)
    {
      BSUIConstrainValueWithRubberBand();
      v3 = v7 + 1.0;
    }

    else
    {
      BSUIConstrainValueWithRubberBand();
      v3 = 1.0 - v6;
    }
  }

  return fmin(fmax(v3, 0.0), 1.1);
}

- (double)wallpaperScale
{
  v9.receiver = self;
  v9.super_class = SBHomeGestureSwitcherModifier;
  [(SBHomeGestureSwitcherModifier *)&v9 wallpaperScale];
  v4 = v3;
  if (self->_startingEnvironmentMode == 1 && self->_inMultitasking)
  {
    v5 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
    v6 = [v5 animationSettings];
    [v6 wallpaperScaleInSwitcher];
    v4 = v7;
  }

  return v4;
}

- (double)homeScreenDimmingAlpha
{
  if (self->_providesHomeScreenDimmingAlpha)
  {
    if (self->_startingEnvironmentMode == 1)
    {
      if (self->_inMultitasking)
      {
        return self->_toHomeScreenDimmingAlpha;
      }

      else
      {
        v12.receiver = self;
        v12.super_class = SBHomeGestureSwitcherModifier;
        [(SBHomeGestureSwitcherModifier *)&v12 homeScreenDimmingAlpha:v9.receiver];
      }
    }

    else
    {
      progressToMaxTranslation = self->_progressToMaxTranslation;
      toHomeScreenDimmingAlpha = self->_toHomeScreenDimmingAlpha;
      v11.receiver = self;
      v11.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v11 homeScreenDimmingAlpha];
      v7 = progressToMaxTranslation * (toHomeScreenDimmingAlpha - v6);
      v10.receiver = self;
      v10.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v10 homeScreenDimmingAlpha];
      result = v7 + v8;
      if (result < 0.2)
      {
        return 0.2;
      }
    }
  }

  else
  {
    [(SBHomeGestureSwitcherModifier *)&v9 homeScreenDimmingAlpha:self];
  }

  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if (self->_startingEnvironmentMode == 1)
  {
    return 3;
  }

  if ([(SBHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder:v2]&& SBFEffectiveHomeButtonType() != 2)
  {
    return 2;
  }

  return 3;
}

- (double)homeScreenBackdropBlurProgress
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (self->_inMultitasking)
    {
      toHomeScreenBlurProgress = self->_toHomeScreenBlurProgress;
    }

    else
    {
      v15.receiver = self;
      v15.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v15 homeScreenBackdropBlurProgress];
      toHomeScreenBlurProgress = v9;
    }
  }

  else
  {
    if ([(SBHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]&& [(SBHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]!= 3)
    {
      toHomeScreenBlurProgress = self->_toHomeScreenBlurProgress;
    }

    else
    {
      progressToMaxTranslation = self->_progressToMaxTranslation;
      v5 = self->_toHomeScreenBlurProgress;
      v14.receiver = self;
      v14.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v14 homeScreenBackdropBlurProgress];
      v7 = progressToMaxTranslation * (v5 - v6);
      v13.receiver = self;
      v13.super_class = SBHomeGestureSwitcherModifier;
      [(SBHomeGestureSwitcherModifier *)&v13 homeScreenBackdropBlurProgress];
      toHomeScreenBlurProgress = v7 + v8;
    }

    v10 = [(SBHomeGestureSwitcherModifier *)self windowManagementContext];
    if ([v10 isChamoisOrFlexibleWindowing])
    {
      startingEnvironmentMode = self->_startingEnvironmentMode;

      if (startingEnvironmentMode == 3)
      {
        return fmin(fmax(toHomeScreenBlurProgress, 0.0), 1.0);
      }
    }

    else
    {
    }

    if (toHomeScreenBlurProgress < 0.5)
    {
      toHomeScreenBlurProgress = 0.5;
    }
  }

  return fmin(fmax(toHomeScreenBlurProgress, 0.0), 1.0);
}

- (BOOL)isContainerStatusBarVisible
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (self->_inMultitasking)
    {
      v2 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
      v3 = [v2 count] == 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBHomeGestureSwitcherModifier;
    return [(SBHomeGestureSwitcherModifier *)&v5 isContainerStatusBarVisible];
  }

  return v3;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    if (self->_selectedAppLayout)
    {
      v4 = [v3 indexOfObject:?];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
    v8 = [v7 numberOfSnapshotsToAlwaysKeepAround];
    if (!v8)
    {
      if (self->_hasTriggeredCardFlyIn)
      {
        v8 = [v7 numberOfSnapshotsToCacheInSwitcher];
      }

      else
      {
        v8 = 0;
      }
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
  v3 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  if (!self->_selectedAppLayout)
  {
    goto LABEL_4;
  }

  v4 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v5 = [v4 indexOfObject:self->_selectedAppLayout];

  if (v5)
  {
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_4:
      v5 = 0;
      v6 = 1;
      goto LABEL_7;
    }

    --v5;
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

LABEL_7:
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
  if (self->_shouldResignActive)
  {
    v2 = MEMORY[0x277CBEAC0];
    v3 = MEMORY[0x277CBEB98];
    v4 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283370718];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBHomeGestureSwitcherModifier;
    v7 = [(SBHomeGestureSwitcherModifier *)&v20 appLayoutsToResignActive];
    v8 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v7 allValues];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) allObjects];
          [v8 addObjectsFromArray:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:&unk_283370718];
  }

  return v6;
}

- (id)keyboardSuppressionMode
{
  if (self->_shouldResignActive)
  {
    v2 = +[SBSwitcherKeyboardSuppressionMode suppressionModeForAllScenes];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBHomeGestureSwitcherModifier;
    v2 = [(SBHomeGestureSwitcherModifier *)&v4 keyboardSuppressionMode];
  }

  return v2;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  if (self->_shouldResignActive)
  {
    v3 = 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBHomeGestureSwitcherModifier;
    v3 = [(SBHomeGestureSwitcherModifier *)&v5 asyncRenderingAttributesForAppLayout:a3];
  }

  return SBSwitcherAsyncRenderingAttributesMake(v3 & 1, 1);
}

- (CGPoint)liftOffVelocityForGestureEnd
{
  x = self->_gestureLiftOffVelocity.x;
  y = self->_gestureLiftOffVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)liftOffTranslationForGestureEnd
{
  x = self->_gestureLiftOffTranslation.x;
  y = self->_gestureLiftOffTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSString)debugDescription
{
  v3 = [(SBGestureSwitcherModifier *)self descriptionBuilderWithMultilinePrefix:&stru_283094718];
  v4 = [v3 appendSuper];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __49__SBHomeGestureSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  v6 = [v5 build];

  return v6;
}

id __49__SBHomeGestureSwitcherModifier_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 152) withName:@"inMultitasking"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 160) withName:@"inMultitaskingChangedProperty"];
  v4 = *(a1 + 40);
  v5 = *(v4 + 160);
  if (v5)
  {
    v6 = *(a1 + 32);
    [v5 presentationValue];
    v7 = [v6 appendFloat:@"inMultitaskingChangedProperty.presentationValue" withName:?];
    v4 = *(a1 + 40);
  }

  v8 = [*(a1 + 32) appendPoint:@"touchOffset" withName:{*(v4 + 168), *(v4 + 176)}];
  v9 = [*(a1 + 32) appendFloat:@"lastFrameOffsetX" withName:*(*(a1 + 40) + 184)];
  v10 = [*(a1 + 32) appendFloat:@"lastTranslationXForRubberbanding" withName:*(*(a1 + 40) + 192)];
  v11 = [*(a1 + 32) appendFloat:@"translationXLostToRubberbanding" withName:*(*(a1 + 40) + 200)];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 208) withName:@"hasTriggeredCardFlyIn"];
  v13 = [*(a1 + 32) appendFloat:@"translationYWhenTriggeredCardFlyIn" withName:*(*(a1 + 40) + 216)];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 224) withName:@"hasBecomeCoplanarSinceGestureFromSwitcherBegan"];
  v15 = [*(a1 + 32) appendPoint:@"gestureLiftOffVelocity" withName:{*(*(a1 + 40) + 232), *(*(a1 + 40) + 240)}];
  v16 = [*(a1 + 32) appendPoint:@"gestureLiftOffTranslation" withName:{*(*(a1 + 40) + 248), *(*(a1 + 40) + 256)}];
  v17 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromSwitcher" withName:{*(*(a1 + 40) + 264), *(*(a1 + 40) + 272)}];
  v18 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromHomeScreen" withName:{*(*(a1 + 40) + 280), *(*(a1 + 40) + 288)}];
  v19 = [*(a1 + 32) appendFloat:@"progressToInSwitcherCardScale" withName:*(*(a1 + 40) + 296)];
  v20 = [*(a1 + 32) appendFloat:@"progressToMaxTranslation" withName:*(*(a1 + 40) + 304)];
  v21 = [*(a1 + 32) appendPoint:@"translation" withName:{*(*(a1 + 40) + 312), *(*(a1 + 40) + 320)}];
  v22 = [*(a1 + 32) appendPoint:@"velocity" withName:{*(*(a1 + 40) + 328), *(*(a1 + 40) + 336)}];
  v23 = [*(a1 + 32) appendFloat:@"stackedProgress" withName:*(*(a1 + 40) + 344)];
  v24 = [*(a1 + 32) appendPoint:@"initialCentroid" withName:{*(*(a1 + 40) + 352), *(*(a1 + 40) + 360)}];
  v25 = [*(a1 + 32) appendPoint:@"centroid" withName:{*(*(a1 + 40) + 368), *(*(a1 + 40) + 376)}];
  v26 = [*(a1 + 32) appendFloat:@"absoluteScale" withName:*(*(a1 + 40) + 400)];
  v27 = [*(a1 + 32) appendPoint:@"translationWithoutScale" withName:{*(*(a1 + 40) + 408), *(*(a1 + 40) + 416)}];
  v28 = [*(a1 + 32) appendFloat:@"lastTouchTimestamp" withName:*(*(a1 + 40) + 432)];
  v29 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 440) withName:@"gestureHoldTimer"];
  v30 = [*(a1 + 32) appendPoint:@"initialTouchLocation" withName:{*(*(a1 + 40) + 448), *(*(a1 + 40) + 456)}];
  v31 = [*(a1 + 32) appendPoint:@"lastTouchLocation" withName:{*(*(a1 + 40) + 464), *(*(a1 + 40) + 472)}];
  v32 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 480) withName:@"everTranslatedUpwards"];
  v33 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 481) withName:@"cancelledGestureForEmptySwitcher"];
  v34 = [*(a1 + 32) appendFloat:@"toHomeScreenAlpha" withName:*(*(a1 + 40) + 488)];
  v35 = [*(a1 + 32) appendFloat:@"toHomeScreenBlurProgress" withName:*(*(a1 + 40) + 496)];
  v36 = [*(a1 + 32) appendFloat:@"toHomeScreenDimmingAlpha" withName:*(*(a1 + 40) + 504)];
  v37 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 520) withName:@"didWarmupFlyInHaptic"];
  v38 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 521) withName:@"didPlayFlyInHaptic"];
  v39 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 568) withName:@"selectedAppLayout"];
  v40 = *(a1 + 32);
  v41 = SBStringForUnlockedEnvironmentMode(*(*(a1 + 40) + 576));
  [v40 appendString:v41 withName:@"startingEnvironmentMode"];

  v42 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 584) withName:@"scrunchInitiated"];
  v43 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 585) withName:@"continuingGesture"];
  v44 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 586) withName:@"lastGestureWasAnArcSwipe"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 587) withName:@"shouldResignActive"];
}

- (void)_updateShouldResignActiveWithEvent:(id)a3
{
  if ([a3 phase] < 2 || !self->_shouldResignActive)
  {
    if ([(SBAppLayout *)self->_selectedAppLayout type])
    {
      self->_shouldResignActive = 1;
    }

    else
    {
      if (self->_gestureHasEnded)
      {
        self->_shouldResignActive = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination]!= 0;
      }

      dockModifier = self->_dockModifier;
      v5 = dockModifier && ![(SBHomeGestureDockSwitcherModifier *)dockModifier isCurrentlyTrackingDock]|| [(SBHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale];
      self->_shouldResignActive = v5;
    }
  }
}

- (BOOL)_shouldResignActiveBasedOnCardScale
{
  [(SBHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  if (BSFloatLessThanOrEqualToFloat())
  {
    return 1;
  }

  v4 = fabs(self->_translation.x);
  [(SBHomeGestureSwitcherModifier *)self _coplanarSpacing];
  return v4 > v5;
}

- (id)_responseForUpdatingLayoutForGestureBegan
{
  v3 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v3 addChildResponse:v4];

  startingEnvironmentMode = self->_startingEnvironmentMode;
  v6 = startingEnvironmentMode == 3 && !self->_continuingGesture;
  if (startingEnvironmentMode == 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = [(SBAppLayout *)self->_selectedAppLayout type]== 2;
    v7 = self->_startingEnvironmentMode == 1;
  }

  if (v6 || v8 || v7)
  {
    v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:2];
    [(SBChainableModifierEventResponse *)v3 addChildResponse:v9];

    if (v7 || v8 && !self->_continuingGesture)
    {
      v10 = 2;
    }

    else
    {
      v10 = 4;
    }

    v11 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:v10];
    [(SBChainableModifierEventResponse *)v3 addChildResponse:v11];
  }

  return v3;
}

- (id)_responseForUpdatingIconViewVisibility:(BOOL)a3
{
  if (self->_selectedAppLayout && self->_startingEnvironmentMode == 3)
  {
    v4 = a3;
    if (a3)
    {
      v5 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
      v6 = [v5 animationSettings];
      v7 = [v6 iconFadeInSettings];
    }

    else
    {
      v7 = 0;
    }

    v9 = [SBIconViewVisibilitySwitcherEventResponse alloc];
    selectedAppLayout = self->_selectedAppLayout;
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D66690], @"SBIconLocationFloatingDockSuggestions", 0}];
    v8 = [(SBIconViewVisibilitySwitcherEventResponse *)v9 initWithAppLayout:selectedAppLayout visible:v4 animationSettings:v7 excludedIconLocations:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_responseForActivatingFinalDestination:(int64_t)a3
{
  v5 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v6 = v5;
  v7 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v8 = self->_selectedAppLayout;
      v7 = [(SBHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
      goto LABEL_26;
    }

    v8 = 0;
    v9 = 0;
    if (a3 != 1)
    {
      goto LABEL_27;
    }

    v11 = [v5 indexOfObject:self->_selectedAppLayout];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      if ([v6 count])
      {
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        v14 = v13 - 1;
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
        v7 = [(SBHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
        v8 = 0;
        v9 = 2;
        goto LABEL_27;
      }

      v8 = 0;
      v9 = 0;
      if (a3 != 4)
      {
        goto LABEL_27;
      }

      v10 = +[SBAppLayout homeScreenAppLayout];
      goto LABEL_25;
    }

    if (!self->_selectedAppLayout)
    {
      v10 = [v5 firstObject];
      goto LABEL_25;
    }

    v15 = [v5 indexOfObject:?];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if ([v6 count])
      {
        v17 = [v6 count];
        if (v16 + 1 < v17 - 1)
        {
          v14 = v16 + 1;
        }

        else
        {
          v14 = v17 - 1;
        }

LABEL_20:
        v10 = [v6 objectAtIndex:v14];
LABEL_25:
        v8 = v10;
        v7 = 0;
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
  v8 = 0;
LABEL_26:
  v9 = 0;
LABEL_27:
  v18 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v18 setAppLayout:v8];
  [(SBSwitcherTransitionRequest *)v18 setUnlockedEnvironmentMode:v9];
  [(SBSwitcherTransitionRequest *)v18 setPreferredInterfaceOrientation:v7];
  v19 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v18 gestureInitiated:1];

  return v19;
}

- (id)_responseForStudyLogDidBeginGesture
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ([(SBHomeGestureSwitcherModifier *)self isStudyLogEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v26[0] = @"x";
    p_lastTouchLocation = &self->_lastTouchLocation;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastTouchLocation.x];
    v26[1] = @"y";
    v27[0] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:p_lastTouchLocation->y];
    v27[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v3 setObject:v15 forKeyedSubscript:@"locationInView"];
    v24[0] = @"x";
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    v25[0] = v16;
    v24[1] = @"y";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v25[1] = v17;
    v24[2] = @"width";
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v25[2] = v18;
    v24[3] = @"height";
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v25[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
    [v3 setObject:v20 forKeyedSubscript:@"switcherViewBounds"];

    v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v3];
    v22 = [[SBEmitStudyLogSwitcherEventResponse alloc] initWithStudyLogWithName:@"[SBDeckSwitcherPanGestureWorkspaceTransresponse _beginWithGesture:]" payload:v21];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_responseForStudyLogDidEndGestureWithEvent:(id)a3 finalDestination:(int64_t)a4 destinationReason:(id)a5
{
  v37[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([(SBHomeGestureSwitcherModifier *)self isStudyLogEnabled])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v8 averageTouchPathAngleOverTimeDuration:0.0416666667];
    v12 = v11;
    [v8 velocityInContainerView];
    v14 = v13;
    v16 = v15;
    v36[0] = @"x";
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastTouchLocation.x];
    v36[1] = @"y";
    v37[0] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastTouchLocation.y];
    v37[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v10 setObject:v19 forKeyedSubscript:@"location"];

    v34[0] = @"x";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v34[1] = @"y";
    v35[0] = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v35[1] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v10 setObject:v22 forKeyedSubscript:@"velocity"];

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [v10 setObject:v23 forKeyedSubscript:@"touchPathAngleAverage"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v10 setObject:v24 forKeyedSubscript:@"finalDestination"];

    v25 = NSStringFromSBHomeGestureFinalDestination(a4);
    [v10 setObject:v25 forKeyedSubscript:@"finalDestinationString"];

    if (v9)
    {
      v26 = v9;
    }

    else
    {
      v26 = &stru_283094718;
    }

    [v10 setObject:v26 forKeyedSubscript:@"finalDestinationReason"];
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBHomeGestureSwitcherModifier _hasPausedEnoughForFlyIn](self, "_hasPausedEnoughForFlyIn")}];
    [v10 setObject:v27 forKeyedSubscript:@"hasPausedEnoughForCardFlyIn"];

    dockModifier = self->_dockModifier;
    if (dockModifier)
    {
      v29 = [(SBHomeGestureDockSwitcherModifier *)dockModifier studyLogData];
      [v10 addEntriesFromDictionary:v29];
    }

    v30 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier studyLogData];
    [v10 addEntriesFromDictionary:v30];

    v31 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v10];
    v32 = [[SBEmitStudyLogSwitcherEventResponse alloc] initWithStudyLogWithName:@"[SBDeckSwitcherPanGestureWorkspaceTransresponse _finishWithGesture:]" payload:v31];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)_responseForSBEventGestureBeganWithTimeDelta:(double)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D67660];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_initialTouchLocation.x];
  v13[0] = v5;
  v12[1] = *MEMORY[0x277D67668];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_initialTouchLocation.y];
  v13[1] = v6;
  v12[2] = *MEMORY[0x277D67648];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBHomeGestureSwitcherModifier switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
  v13[2] = v7;
  v12[3] = *MEMORY[0x277D67658];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = [[SBEmitSBEventSwitcherEventResponse alloc] initWithSBEventWithEventType:33 payload:v9];

  return v10;
}

- (id)_responseForSBEventGestureEndWithEvent:(id)a3 finalDestination:(int64_t)a4
{
  v23[7] = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 averageTouchPathAngleOverTimeDuration:0.0416666667];
  v8 = fmin(fmax(v7, 2.22507386e-308), 1.79769313e308);
  [v6 peakSpeed];
  v10 = v9;

  v22[0] = *MEMORY[0x277D67628];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v23[0] = v11;
  v22[1] = *MEMORY[0x277D67660];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastTouchLocation.x];
  v23[1] = v12;
  v22[2] = *MEMORY[0x277D67668];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastTouchLocation.y];
  v23[2] = v13;
  v22[3] = *MEMORY[0x277D67638];
  p_velocity = &self->_velocity;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_velocity.x];
  v23[3] = v15;
  v22[4] = *MEMORY[0x277D67640];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:p_velocity->y];
  v23[4] = v16;
  v22[5] = *MEMORY[0x277D67630];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v23[5] = v17;
  v22[6] = *MEMORY[0x277D67650];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(fmax(v10, 2.22507386e-308), 1.79769313e308)}];
  v23[6] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];

  v20 = [[SBEmitSBEventSwitcherEventResponse alloc] initWithSBEventWithEventType:34 payload:v19];

  return v20;
}

- (id)_responseForActivatingReachabilityIfNeededWithFinalDestination:(int64_t)a3
{
  v4 = 0;
  if (!a3 && self->_startingEnvironmentMode != 2)
  {
    v26 = 0;
    lastTouchLocation = self->_lastTouchLocation;
    v25 = 0;
    translation = self->_translation;
    v27 = lastTouchLocation;
    v28 = translation;
    velocity = self->_velocity;
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(SBHomeGestureSwitcherModifier *)self isLocationInSafeArea:self->_initialTouchLocation.x, self->_initialTouchLocation.y];
    everTranslatedUpwards = self->_everTranslatedUpwards;
    v18[0] = v27;
    v18[1] = v28;
    v18[2] = velocity;
    v19 = v8;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    v23 = v15;
    v24 = everTranslatedUpwards;
    v4 = [[SBActivateReachabilitySwitcherEventResponse alloc] initWithReachabilityContext:v18];
  }

  return v4;
}

- (id)_responseForCancelingSystemGesturesIfNeededWithFinalDestination:(int64_t)a3
{
  if (a3 && [(SBHomeGestureSwitcherModifier *)self isSystemAssistantExperienceEnabled])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283370730, &unk_283370748, 0}];
    v4 = [[SBCancelSystemGesturesSwitcherEventResponse alloc] initWithSystemGestureTypes:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_updateInMultitaskingIfNeededWithEvent:(id)a3
{
  v4 = a3;
  [v4 locationInContainerView];
  v6 = v5;
  v8 = v7;
  v9 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v10 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v11 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v12 = [v11 count];

  inMultitasking = self->_inMultitasking;
  if (v10 == 3)
  {
    if (!self->_didWarmupFlyInHaptic)
    {
      v14 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:0];
      [(SBChainableModifierEventResponse *)v9 addChildResponse:v14];
      self->_didWarmupFlyInHaptic = 1;
    }

    if (inMultitasking && !self->_didPlayFlyInHaptic && v12 && fabs(self->_velocity.x) < *&kPauseVelocityThresholdForAppSwitcher && fabs(self->_velocity.y) < *&kPauseVelocityThresholdForAppSwitcher)
    {
      v15 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
      -[SBHapticSwitcherEventResponse setHidEventSenderID:](v15, "setHidEventSenderID:", [v4 hidEventSenderID]);
      [(SBChainableModifierEventResponse *)v9 addChildResponse:v15];
      self->_didPlayFlyInHaptic = 1;
    }
  }

  [(SBHomeGestureSwitcherModifier *)self _unadjustedGestureTranslation];
  v18 = [(SBHomeGestureSwitcherModifier *)self _inMultitaskingForLocation:v6 translation:v8, v16, v17];
  self->_inMultitasking = v18;
  if (inMultitasking != v18)
  {
    if (v18)
    {
      self->_hasTriggeredCardFlyIn = 1;
      self->_isPendingViewsForAcceleratedHomeGesture = 0;
      [(SBHomeGestureSwitcherModifier *)self gestureHandlingModifierReleasePendingViews:self];
      v19 = 0;
      self->_translationYWhenTriggeredCardFlyIn = self->_translation.y;
    }

    else
    {
      self->_didPlayFlyInHaptic = 0;
      v19 = 1;
    }

    [(SBCoplanarSwitcherModifier *)self->_coplanarLayoutModifier setSpacingType:v19];
    if (![(SBHomeGestureSwitcherModifier *)self _preventPositioningCardsOffscreenForFlatBottomEdgeSwipe])
    {
      if (self->_inMultitasking && !self->_didPlayFlyInHaptic && v12 && fabs(self->_velocity.x) < *&kVelocityXThresholdForUnconditionalArcSwipe)
      {
        v20 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
        -[SBHapticSwitcherEventResponse setHidEventSenderID:](v20, "setHidEventSenderID:", [v4 hidEventSenderID]);
        [(SBChainableModifierEventResponse *)v9 addChildResponse:v20];
        self->_didPlayFlyInHaptic = 1;
      }

      v21 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
      v22 = [v21 animationSettings];
      v23 = [v22 layoutSettings];
      [(SBHomeGestureSwitcherModifier *)self _beginAnimatingMultitaskingPropertyWithMode:3 settings:v23];
    }
  }

  return v9;
}

- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe
{
  [(SBHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v4 = v3;
  [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
  v6 = (1.0 - v4) * v5;
  [(SBHomeGestureSwitcherModifier *)self _coplanarSpacing];
  return v6 < v7 * 0.75;
}

- (BOOL)_hasPausedEnoughForFlyIn
{
  if ([(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier hasSeenAccelerationDipForAppSwitcher])
  {
    return 1;
  }

  v4 = *&kCardFlyInDelayAfterEnteringAppSwitcher;
  return self->_gestureHoldTimer > (v4 * SBScreenMaximumFramesPerSecond());
}

- (void)_displayLinkFired:(id)a3
{
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 2 && [(SBChainableModifier *)self state]!= 1)
  {
    [(SBHomeGestureSwitcherModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
    v4 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
    if (v4)
    {
      v5 = v4 == 4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      self->_gestureHoldTimer = 0;
    }

    else if (v4 == 3 && BSFloatLessThanFloat())
    {
      ++self->_gestureHoldTimer;
    }

    if (!self->_inMultitasking && [(SBHomeGestureSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {

      [(SBHomeGestureSwitcherModifier *)self gestureHandlingModifierRequestsUpdate:self];
    }
  }
}

- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4
{
  v6 = a4;
  inMultitaskingChangedProperty = self->_inMultitaskingChangedProperty;
  if (inMultitaskingChangedProperty)
  {
    [(UIViewFloatAnimatableProperty *)inMultitaskingChangedProperty invalidate];
    v8 = self->_inMultitaskingChangedProperty;
    self->_inMultitaskingChangedProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_inMultitaskingChangedProperty;
  self->_inMultitaskingChangedProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_inMultitaskingChangedProperty setValue:0.0];
  v11 = [v6 copy];
  LODWORD(v12) = *MEMORY[0x277CD9DD0];
  LODWORD(v13) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v14) = *(MEMORY[0x277CD9DD0] + 8);
  [v11 setFrameRateRange:0 highFrameRateReason:{v12, v13, v14}];
  v15 = v11;

  objc_initWeak(&location, self);
  v16 = self->_inMultitaskingChangedProperty;
  v17 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__SBHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__SBHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __86__SBHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[20];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[20];
      v6[20] = 0;
    }

    WeakRetained = v6;
  }
}

- (BOOL)_inMultitaskingForLocation:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  inMultitasking = self->_inMultitasking;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  v9 = [SBSetupManager sharedInstance:a3.x];
  v10 = [v9 isInSetupMode];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
    [(SBHomeGestureSwitcherModifier *)self _coplanarSpacing];
    v14 = v13;
    if (self->_selectedAppLayout)
    {
      v15 = [(SBHomeGestureSwitcherModifier *)self _selectedAppLayoutIndex];
    }

    else
    {
      v15 = 0;
    }

    v16 = (v12 - 1) < 2 || inMultitasking;
    v17 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
    v18 = [v17 count];

    if (v18)
    {
      [(SBHomeGestureSwitcherModifier *)self scaleForIndex:v15];
      v21 = fabs(x) > v14 / v19 && v12 != 4;
      v16 |= v21;
    }

    if ([(SBHomeGestureSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {
      v16 |= ![(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock];
    }

    if ([(SBHomeGestureSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:y])
    {
      v11 = (startingEnvironmentMode == 1) & v16;
    }

    else
    {
      v11 = v16;
    }

    v22 = [(SBHomeGestureSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcher];
    if (startingEnvironmentMode == 1)
    {
      v23 = v22;
      v24 = [(SBHomeGestureSwitcherModifier *)self isRTLEnabled];
      v25 = -x;
      if (!v24)
      {
        v25 = x;
      }

      if (v25 < v14)
      {
        v11 &= v23;
      }
    }
  }

  return v11 & 1;
}

- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3
{
  v3 = -a3;
  [(SBHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
  return v4 < v3;
}

- (double)_gestureProgressToMaxTranslationForTranslation:(double)a3
{
  [(SBHomeGestureSwitcherModifier *)self _distanceYToMaxTranslation];
  v6 = v5;
  if (self->_startingEnvironmentMode == 2 && !self->_scrunchInitiated)
  {
    [(SBHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
    a3 = v7 + a3;
    v6 = v6 - v7;
  }

  return -a3 / v6;
}

- (double)_distanceYToInSwitcherCardScale
{
  [(SBHomeGestureSwitcherModifier *)self _switcherCardScale];
  v4 = v3;
  [(SBHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  v6 = v5;
  [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
  return (1.0 - v4) * v7 * 0.5 - v6;
}

- (double)_distanceYToMaxTranslation
{
  [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  [(SBHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
  return v4 * 0.5 - v5;
}

- (double)_inSwitcherCenterYOffsetWhenPresented
{
  v3 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 switcherCenterYOffsetPercentOfScreenHeight];

  [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
  [(SBHomeGestureSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_centerYOffsetDuringGesture
{
  if (self->_startingEnvironmentMode == 1)
  {

    [(SBHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  }

  else
  {
    v4 = [(SBHomeGestureSwitcherModifier *)self homeGestureSettings];
    [v4 homeGestureCenterZoomDownCenterYOffsetFactor];
    [(SBHomeGestureSwitcherModifier *)self containerViewBounds];
    [(SBHomeGestureSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)_switcherCardScale
{
  v2 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
  [v2 deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

- (unint64_t)_selectedAppLayoutIndex
{
  v3 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v4 = v3;
  if (v3 && self->_selectedAppLayout)
  {
    v5 = [v3 indexOfObject:?];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_selectedAppLayout];
  return v4;
}

- (double)_coplanarSpacing
{
  v3 = [(SBHomeGestureSwitcherModifier *)self switcherSettings];
  if ([(SBHomeGestureSwitcherModifier *)self isDevicePad])
  {
    [v3 coplanarSpacingPad];
  }

  else
  {
    [v3 coplanarSpacingPhone];
  }

  v5 = v4;

  return v5;
}

- (void)_applyPrototypeSettings
{
  v3 = SBMainScreenPointsPerMillimeter();
  v14 = [(SBHomeGestureSwitcherModifier *)self homeGestureSettings];
  [v14 homeGestureMinimumCardScale];
  self->_homeGestureMinimumCardScale = v4;
  [v14 homeGestureMinimumCardScaleRubberBandingRange];
  self->_homeGestureMinimumCardScaleRubberBandingRange = v5;
  [v14 homeGestureXOffsetFactor];
  self->_homeGestureXOffsetFactor = v6;
  [v14 normalizedDistanceYThresholdForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome = v7;
  [v14 normalizedDistanceYThresholdRangeForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome = v8;
  [v14 pauseVelocityThresholdForAppSwitcher];
  *&kPauseVelocityThresholdForAppSwitcher = v3 * v9;
  [v14 velocityXThresholdForUnconditionalArcSwipe];
  *&kVelocityXThresholdForUnconditionalArcSwipe = v3 * v10;
  [v14 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher = v3 * v11;
  [v14 cardFlyInMaximumVelocityThreshold];
  *&kCardFlyInMaximumVelocityThreshold = v3 * v12;
  [v14 cardFlyInDelayAfterEnteringAppSwitcher];
  kCardFlyInDelayAfterEnteringAppSwitcher = v13;
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