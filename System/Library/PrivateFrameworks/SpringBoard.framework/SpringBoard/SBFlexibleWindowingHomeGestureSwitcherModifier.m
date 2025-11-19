@interface SBFlexibleWindowingHomeGestureSwitcherModifier
- (BOOL)_inMultitaskingForLocation:(CGPoint)a3 translation:(CGPoint)a4;
- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3;
- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe;
- (BOOL)_shouldResignActiveBasedOnCardScale;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3;
- (CGPoint)_rubberbandedTranslationForAdjacentCards;
- (CGPoint)_unadjustedGestureTranslation;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGPoint)liftOffTranslationForGestureEnd;
- (CGPoint)liftOffVelocityForGestureEnd;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (NSString)debugDescription;
- (SBFlexibleWindowingHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
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
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
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
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
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
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)headerStyleForIndex:(unint64_t)a3;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)_selectedAppLayoutIndex;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)_applyPrototypeSettings;
- (void)_beginAnimatingExposeMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_displayLinkFired:(id)a3;
- (void)_getActivePositionAndScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5 outPosition:(CGPoint *)a6 outScale:(double *)a7;
- (void)_updateFrameOffsetForXRubberbandingForTranslation:(CGPoint)a3;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3;
- (void)_updateShouldResignActiveWithEvent:(id)a3;
- (void)_updateStackedProgress;
- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3;
- (void)dealloc;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFlexibleWindowingHomeGestureSwitcherModifier

- (SBFlexibleWindowingHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9
{
  v16 = a4;
  v17 = a6;
  v25.receiver = self;
  v25.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
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
  v3.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v3 dealloc];
}

- (void)didMoveToParentModifier:(id)a3
{
  v32.receiver = self;
  v32.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v32 didMoveToParentModifier:?];
  if (!a3)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    return;
  }

  self->_laysOutNeighboringCards = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self prefersStripHiddenAndDisabled];
  if ((self->_startingEnvironmentMode | 2) != 3)
  {
    v10 = objc_alloc_init(SBHomeScreenSwitcherModifier);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__SBFlexibleWindowingHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2;
    v28[3] = &unk_2783A92D8;
    v28[4] = self;
    v29 = v10;
    v7 = v10;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:v28];

    goto LABEL_7;
  }

  multitaskingModifier = self->_multitaskingModifier;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __74__SBFlexibleWindowingHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke;
  v31[3] = &unk_2783A8C18;
  v31[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v31];
  if (!self->_providesHomeScreenDimmingAlpha)
  {
    v30.receiver = self;
    v30.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v30 homeScreenAlpha];
    self->_toHomeScreenAlpha = v6;
    v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
    v8 = [(SBHomeScreenSwitcherModifier *)v7 animationSettings];
    [v8 homeScreenBlurProgressForMode:2];
    self->_toHomeScreenBlurProgress = v9;

LABEL_7:
  }

  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isFloatingDockSupported])
  {
    v11 = !self->_scrunchInitiated;
  }

  else
  {
    v11 = 0;
  }

  v12 = self->_continuingGesture && self->_lastGestureWasAnArcSwipe;
  if (self->_dockModifier == 0 && v11)
  {
    v13 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v12 startingEnvironmentMode:self->_startingEnvironmentMode];
    dockModifier = self->_dockModifier;
    self->_dockModifier = v13;

    [(SBChainableModifier *)self addChildModifier:self->_dockModifier atLevel:0 key:0];
  }

  if (!self->_finalDestinationModifier)
  {
    if (self->_startingEnvironmentMode == 2)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
      self->_translationAdjustmentForStartingFromSwitcher.y = -v15;
    }

    if (v11)
    {
      v16 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v12 startingEnvironmentMode:self->_startingEnvironmentMode];
    }

    else
    {
      v16 = 0;
    }

    v17 = [SBHomeGestureFinalDestinationSwitcherModifier alloc];
    v18 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeGestureSettings];
    [v18 minimumYDistanceForHomeOrAppSwitcher];
    v20 = [(SBHomeGestureFinalDestinationSwitcherModifier *)v17 initWithDelegate:self initialTranslationAdjustment:self->_startingEnvironmentMode minYDistanceForHomeOrSwitcher:self->_continuingGesture startingEnvironmentMode:v16 continuingGesture:self->_translationAdjustmentForStartingFromSwitcher.x dockModifier:self->_translationAdjustmentForStartingFromSwitcher.y, v19];
    finalDestinationModifier = self->_finalDestinationModifier;
    self->_finalDestinationModifier = v20;

    [(SBChainableModifier *)self addChildModifier:self->_finalDestinationModifier atLevel:1 key:0];
  }

  v22 = [(SBAppLayout *)self->_selectedAppLayout allItems];
  v23 = [v22 count];
  v24 = (v23 > 1 || (selectedAppLayout = self->_selectedAppLayout) != 0 && (-[SBFlexibleWindowingHomeGestureSwitcherModifier maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", selectedAppLayout, 0, 1), v26 = ;
  self->_canEnterExposeMultitasking = v24;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
}

uint64_t __74__SBFlexibleWindowingHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) homeScreenAlpha];
  *(*(a1 + 32) + 504) = v2;
  [*(*(a1 + 32) + 544) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 512) = v3;
  result = [*(*(a1 + 32) + 544) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 520) = v5;
  return result;
}

uint64_t __74__SBFlexibleWindowingHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) homeScreenAlpha];
  *(*(a1 + 32) + 504) = v2;
  [*(a1 + 40) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 512) = v3;
  result = [*(a1 + 40) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 520) = v5;
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
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
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
  v10.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
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
  v13.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBFlexibleWindowingHomeGestureSwitcherModifier.m" lineNumber:346 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
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
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v6 = objc_opt_new();
  v7 = SBAppendSwitcherModifierResponse(v6, v5);

  v8 = CACurrentMediaTime();
  [v4 lastTouchTimestamp];
  v10 = v9;
  v11 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v11;

  v13 = self->_displayLink;
  v14 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v13 addToRunLoop:v14 forMode:*MEMORY[0x277CBE738]];

  v15 = self->_startingEnvironmentMode == 2;
  self->_inMultitasking = v15;
  v16 = 0.0;
  if (v15)
  {
    v16 = 1.0;
  }

  self->_stackedProgress = v16;
  self->_inExposeMultitasking = v15;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  v18 = v17;
  v20 = v19;
  [v4 locationInContainerView];
  v22 = v21;
  v24 = v23;
  UIRectGetCenter();
  self->_touchOffset.x = v22 - v25;
  self->_touchOffset.y = v24 - v26;
  self->_initialTouchLocation.x = v22;
  self->_initialTouchLocation.y = v24;
  self->_lastTouchLocation.x = v22;
  self->_lastTouchLocation.y = v24;
  if (self->_startingEnvironmentMode == 2)
  {
    self->_initialTouchLocation.y = v20;
  }

  self->_didPlayFlyInHaptic = self->_inMultitasking;
  [v4 translationInContainerView];
  v28 = v27;
  [v4 hysteresis];
  self->_everTranslatedUpwards = v28 < -v29;
  self->_centroidAdjustment = *MEMORY[0x277CBF348];
  if (self->_scrunchInitiated)
  {
    v30 = v4;
    if ([v30 touchType] == 1)
    {
      [v30 initialCentroid];
      self->_centroidAdjustment.x = v18 * 0.5 - v31;
      self->_centroidAdjustment.y = v20 * 0.5 - v32;
    }
  }

  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateStackedProgress];
  v33 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForUpdatingLayoutForGestureBegan];
  [v7 addChildResponse:v33];
  v34 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:0];
  if (v34)
  {
    [v7 addChildResponse:v34];
  }

  v35 = v8 - v10;
  v36 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForStudyLogDidBeginGesture];
  if (v36)
  {
    [v7 addChildResponse:v36];
  }

  v37 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForSBEventGestureBeganWithTimeDelta:v35];
  if (v37)
  {
    [v7 addChildResponse:v37];
  }

  return v7;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateStackedProgress];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _unadjustedGestureTranslation];
  v6 = v5;
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:v5])
  {
    self->_gestureHoldTimer = 0;
  }

  v7 = objc_alloc_init(SBSwitcherModifierEventResponse);
  [v4 locationInContainerView];
  v9 = v8;
  v11 = v10;
  v12 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateInMultitaskingIfNeededWithEvent:v4];
  if (v12)
  {
    [(SBChainableModifierEventResponse *)v7 addChildResponse:v12];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    [(SBCoplanarSwitcherModifier *)self->_coplanarLayoutModifier setSpacingType:0];
  }

  coplanarLayoutModifier = self->_coplanarLayoutModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  [(SBCoplanarSwitcherModifier *)coplanarLayoutModifier setScale:?];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateFrameOffsetForXRubberbandingForTranslation:self->_translation.x, self->_translation.y];
  self->_lastTouchLocation.x = v9;
  self->_lastTouchLocation.y = v11;
  if (!self->_everTranslatedUpwards)
  {
    self->_everTranslatedUpwards = v6 < 0.0;
  }

  if (self->_startingEnvironmentMode == 1)
  {
    v14 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBFlexibleWindowingHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
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
    v11 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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

    goto LABEL_70;
  }

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
    v24 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeGestureSettings];
    v25 = v24;
    if (v8 != 4 || !self->_selectedAppLayout || ![v24 injectGestureVelocityForZoomDown])
    {
      goto LABEL_57;
    }

    v26 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
    if ([v26 isEqual:self->_selectedAppLayout])
    {
      v27 = self->_startingEnvironmentMode;

      if (v27 == 1)
      {
LABEL_57:

        goto LABEL_58;
      }
    }

    else
    {
    }

    [v4 velocityInContainerView];
    v29 = v28;
    v31 = v30;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherViewBounds];
    v33 = v32;
    v34 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeGestureSettings];
    v35 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"transform"];
    v36 = v35;
    if (v35)
    {
      [v35 CATransform3DValue];
      CATransform3DGetAffineTransform(&v77, &v78);
      a = v77.a;
    }

    else
    {
      a = 0.0;
    }

    [v34 scaleVelocityPercentOfGestureVelocityYDividedByViewHeight];
    v39 = v31 / v33 * v38;
    v75 = v34;
    if ([v34 onlyInjectVelocityForShortFlicks] && fabs(a / v39) >= 0.15)
    {
      v54 = 0;
    }

    else
    {
      v73 = v36;
      v74 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
      [v34 maximumScaleVelocity];
      memset(&v78, 0, sizeof(v78));
      SBVelocityMatrixForUniform2DScaling();
      v40 = [SBInjectVelocitySwitcherEventResponse alloc];
      v76 = v78;
      v41 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v76];
      v42 = [(SBInjectVelocitySwitcherEventResponse *)v40 initWithVelocity:v41 forKey:@"transform" appLayout:self->_selectedAppLayout];
      [v74 addObject:v42];

      v43 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"position"];
      v72 = v43;
      if (v43)
      {
        [v43 CGPointValue];
      }

      else
      {
        v44 = *MEMORY[0x277CBF348];
        v45 = *(MEMORY[0x277CBF348] + 8);
      }

      v46 = fabs(v44);
      if (fabs(v29) < v46)
      {
        v29 = v44;
      }

      if (fabs(v29) >= v46)
      {
        v47 = v31;
      }

      else
      {
        v47 = v45;
      }

      [v75 positionVelocityXPercentOfGestureVelocityX];
      v49 = v48 * v29;
      [v75 positionVelocityYPercentOfGestureVelocityY];
      v51 = v50 * v47;
      v52 = [SBInjectVelocitySwitcherEventResponse alloc];
      v71 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v49, v51}];
      v53 = [(SBInjectVelocitySwitcherEventResponse *)v52 initWithVelocity:v71 forKey:@"position" appLayout:self->_selectedAppLayout];
      v54 = v74;
      [v74 addObject:v53];

      v36 = v73;
    }

    if ([v54 count])
    {
      [(SBChainableModifierEventResponse *)v10 addChildResponses:v54];
    }

    goto LABEL_57;
  }

LABEL_58:
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenIsOnFirstPage])
  {
    v55 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
    v56 = v55 != 0;
  }

  else
  {
    v56 = 0;
  }

  if (self->_startingEnvironmentMode == 1)
  {
    v57 = [(SBAppLayout *)self->_selectedAppLayout type]!= 2 && v8 == 4;
    v58 = !v57;
    if (!v58 && !v56)
    {
      v59 = objc_alloc_init(SBActivateHomeButtonSwitcherEventResponse);
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v59];

      v8 = 4;
    }
  }

LABEL_70:
  v60 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    v61 = NSStringFromSBHomeGestureFinalDestination(v8);
    LODWORD(v78.m11) = 138412802;
    *(&v78.m11 + 4) = v61;
    WORD2(v78.m12) = 2048;
    *(&v78.m12 + 6) = v8;
    HIWORD(v78.m13) = 2112;
    *&v78.m14 = v9;
    _os_log_impl(&dword_21ED4E000, v60, OS_LOG_TYPE_INFO, "Home Gesture Modifier - Final Response: %@ (%lu), Reason: %@", &v78, 0x20u);
  }

  v62 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:1];
  if (v62)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v62];
  }

  v63 = objc_opt_new();
  v64 = SBAppendSwitcherModifierResponse(v63, v10);

  v65 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForActivatingFinalDestination:v8];
  [v64 addChildResponse:v65];
  if ((v16 & 1) == 0)
  {
    v66 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForActivatingReachabilityIfNeededWithFinalDestination:v8];
    if (v66)
    {
      [v64 addChildResponse:v66];
    }

    v67 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForCancelingSystemGesturesIfNeededWithFinalDestination:v8];
    if (v67)
    {
      [v64 addChildResponse:v67];
    }
  }

  v68 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForStudyLogDidEndGestureWithEvent:v4 finalDestination:v8 destinationReason:v9];
  if (v68)
  {
    [v64 addChildResponse:v68];
  }

  v69 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _responseForSBEventGestureEndWithEvent:v4 finalDestination:v8];
  if (v69)
  {
    [v64 addChildResponse:v69];
  }

  return v64;
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
  v4 = a3;
  [v4 translationInContainerView];
  v6 = v5;
  v8 = v7;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:v4];
  v9 = self->_translationAdjustmentForStartingFromSwitcher.y + self->_translationAdjustmentForStartingFromHomeScreen.y;
  v10 = v6 + self->_translationAdjustmentForStartingFromSwitcher.x + self->_translationAdjustmentForStartingFromHomeScreen.x;
  v11 = v8 + v9;
  dockModifier = self->_dockModifier;
  if (dockModifier)
  {
    [(SBHomeGestureDockSwitcherModifier *)dockModifier adjustedTranslationForTranslation:v10, v8 + v9];
    v10 = v13;
    v11 = v14;
  }

  [v4 averageTouchVelocityOverTimeDuration:0.0416666667];
  v16 = v15;
  v18 = v17;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
  v20 = -v11 / v19;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v11];
  self->_translation.x = v10;
  self->_translation.y = v11;
  self->_velocity.x = v16;
  self->_velocity.y = v18;
  self->_progressToInSwitcherCardScale = v20;
  self->_progressToMaxTranslation = v21;
  [v4 lastTouchTimestamp];
  self->_lastTouchTimestamp = v22;
  if (self->_scrunchInitiated)
  {
    v23 = v4;
    [v23 initialCentroid];
    self->_initialCentroid.x = v24;
    self->_initialCentroid.y = v25;
    [v23 centroid];
    self->_centroid.x = v26;
    self->_centroid.y = v27;
    self->_initialCentroid = vaddq_f64(self->_initialCentroid, self->_centroidAdjustment);
    self->_centroid = vaddq_f64(self->_centroid, self->_centroidAdjustment);
    [v23 absoluteScale];
    self->_absoluteScale = v28;
    [v23 translationWithoutScale];
    v30 = v29;
    v32 = v31;

    self->_translationWithoutScale.x = v30;
    self->_translationWithoutScale.y = v32;
  }

  if (self->_selectedAppLayout)
  {
    v33 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
    v34 = [v33 indexOfObject:self->_selectedAppLayout];

    if (!self->_hideSplitViewHandles && v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self frameForIndex:v34];
      SBRectWithSize();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v53.receiver = self;
      v53.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v53 frameForIndex:v34];
      SBRectWithSize();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = [(SBAppLayout *)self->_selectedAppLayout allItems];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __104__SBFlexibleWindowingHomeGestureSwitcherModifier__updateGestureTranslationVelocityAndProgressWithEvent___block_invoke;
      v52[3] = &unk_2783BA128;
      v52[4] = self;
      v52[5] = v36;
      v52[6] = v38;
      v52[7] = v40;
      v52[8] = v42;
      v52[9] = v44;
      v52[10] = v46;
      v52[11] = v48;
      v52[12] = v50;
      [v51 enumerateObjectsUsingBlock:v52];
    }
  }
}

uint64_t __104__SBFlexibleWindowingHomeGestureSwitcherModifier__updateGestureTranslationVelocityAndProgressWithEvent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 584) layoutRoleForItem:a2];
  [*(a1 + 32) scaleForLayoutRole:v6 inAppLayout:*(*(a1 + 32) + 584)];
  v7 = *(*(a1 + 32) + 584);
  v15.receiver = *(a1 + 32);
  v15.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  objc_msgSendSuper2(&v15, sel_scaleForLayoutRole_inAppLayout_, v6, v7);
  v8 = BSFloatApproximatelyEqualToFloat();
  result = *(a1 + 32);
  if (v8)
  {
    [result frameForLayoutRole:v6 inAppLayout:*(result + 584) withBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v10 = *(*(a1 + 32) + 584);
    v14.receiver = *(a1 + 32);
    v14.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    objc_msgSendSuper2(&v14, sel_frameForLayoutRole_inAppLayout_withBounds_, v6, v10, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
    UIRectGetCenter();
    v12 = v11;
    result = UIRectGetCenter();
    if (vabdd_f64(v12, v13) <= 1.0)
    {
      return result;
    }

    result = *(a1 + 32);
  }

  *(result + 624) = 1;
  *a4 = 1;
  return result;
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
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds:v19];
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
    v11 = *&kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_0;
  }

  v12 = kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_0;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds:v17];
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
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  if (([v7 isOrContainsAppLayout:v6] & 1) == 0)
  {
    if (self->_canEnterExposeMultitasking)
    {
      v16 = [(SBAppLayout *)self->_selectedAppLayout isEqual:v6];

      if (v16)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x4010000000;
    v41 = &unk_21F9DA6A3;
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    coplanarLayoutModifier = self->_coplanarLayoutModifier;
    v42 = *MEMORY[0x277CBF3A0];
    v43 = v17;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __64__SBFlexibleWindowingHomeGestureSwitcherModifier_frameForIndex___block_invoke;
    v37[3] = &unk_2783AA618;
    v37[4] = self;
    v37[5] = &v38;
    v37[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:coplanarLayoutModifier usingBlock:v37];
    v36.receiver = self;
    v36.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v36 frameForIndex:a3];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v39[1].origin.y = v21;
    if (BSFloatGreaterThanOrEqualToFloat())
    {
      v39[1].origin.x = v39[1].origin.x + self->_stackedProgress * (v20 - v39[1].origin.x);
    }

    if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:a3])
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:self->_translation.x, self->_translation.y];
    }

    else
    {
      v29 = *MEMORY[0x277CBF348];
      v30 = *(MEMORY[0x277CBF348] + 8);
      if (!self->_laysOutNeighboringCards)
      {
        p_x = &v39->origin.x;
        v39[1].origin.x = v20;
        p_x[5] = v22;
        *(p_x + 6) = v24;
        *(p_x + 7) = v26;
        goto LABEL_17;
      }

      if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _shouldPositionAdjacentCardsOffscreenForFlyIn])
      {
LABEL_17:
        v45 = CGRectOffset(v39[1], v29, v30);
        x = v45.origin.x;
        y = v45.origin.y;
        width = v45.size.width;
        height = v45.size.height;
        v39[1] = v45;
        _Block_object_dispose(&v38, 8);
        goto LABEL_18;
      }

      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:?];
    }

    v29 = v27;
    v30 = v28;
    goto LABEL_17;
  }

LABEL_3:
  v44.receiver = self;
  v44.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v44 frameForIndex:a3];
  x = v8;
  y = v10;
  width = v12;
  height = v14;
LABEL_18:

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

uint64_t __64__SBFlexibleWindowingHomeGestureSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 552) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?];
  v6 = v5;
  if (v5)
  {
    if (self->_canEnterExposeMultitasking)
    {
      v13.receiver = self;
      v13.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v13 scaleForIndex:a3];
    }

    else
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
    }
  }

  else if (self->_laysOutNeighboringCards)
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v12 scaleForIndex:a3];
  }

  v8 = v7;
  if (BSFloatGreaterThanOrEqualToFloat() && (v6 || self->_laysOutNeighboringCards))
  {
    v11.receiver = self;
    v11.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v11 scaleForIndex:a3];
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
    BSFloatByLinearlyInterpolatingFloats();
    return v9;
  }

  return v8;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = v11;
  if (!self->_inExposeMultitasking)
  {
    v13 = [v11 itemForLayoutRole:a3];
    v14 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self displayItemInSlideOver];
    v15 = BSEqualObjects();

    if (v15)
    {
      v37.receiver = self;
      v37.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v37 frameForLayoutRole:a3 inAppLayout:v12 withBounds:x, y, width, height, v32.receiver, v32.super_class];
LABEL_10:
      v26 = v16;
      v27 = v17;
      v23 = v18;
      v25 = v19;
      goto LABEL_11;
    }
  }

  v20 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  v21 = [v20 isOrContainsAppLayout:v12];

  if (v21)
  {
    v36.receiver = self;
    v36.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v36 frameForLayoutRole:a3 inAppLayout:v12 withBounds:x, y, width, height, v32.receiver, v32.super_class];
    goto LABEL_10;
  }

  if (!self->_canEnterExposeMultitasking || ![(SBAppLayout *)self->_selectedAppLayout isEqual:v12])
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v32 frameForLayoutRole:a3 inAppLayout:v12 withBounds:x, y, width, height, self, SBFlexibleWindowingHomeGestureSwitcherModifier];
    goto LABEL_10;
  }

  v35.receiver = self;
  v35.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v35 frameForLayoutRole:a3 inAppLayout:v12 withBounds:x, y, width, height];
  v23 = v22;
  v25 = v24;
  v33 = 0.0;
  v34 = 0.0;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _getActivePositionAndScaleForLayoutRole:a3 inAppLayout:v12 withBounds:&v33 outPosition:0 outScale:x, y, width, height];
  v26 = v33 - v23 * 0.5;
  v27 = v34 - v25 * 0.5;
LABEL_11:

  v28 = v26;
  v29 = v27;
  v30 = v23;
  v31 = v25;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_inExposeMultitasking)
  {
    v8 = [v6 itemForLayoutRole:a3];
    v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self displayItemInSlideOver];
    v10 = BSEqualObjects();

    if (v10)
    {
      v19.receiver = self;
      v19.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v19 scaleForLayoutRole:a3 inAppLayout:v7];
LABEL_10:
      v14 = v11;
      goto LABEL_11;
    }
  }

  v12 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  v13 = [v12 isOrContainsAppLayout:v7];

  if (v13)
  {
    v18.receiver = self;
    v18.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v18 scaleForLayoutRole:a3 inAppLayout:v7];
    goto LABEL_10;
  }

  if (!self->_canEnterExposeMultitasking || ![(SBAppLayout *)self->_selectedAppLayout isEqual:v7])
  {
    v16.receiver = self;
    v16.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v16 scaleForLayoutRole:a3 inAppLayout:v7];
    goto LABEL_10;
  }

  v17 = 0.0;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _getActivePositionAndScaleForLayoutRole:a3 inAppLayout:v7 withBounds:0 outPosition:&v17 outScale:?];
  v14 = v17;
LABEL_11:

  return v14;
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
    v42.receiver = self;
    v42.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v42 visibleAppLayouts];
    v6 = [v5 mutableCopy];

    if (self->_selectedAppLayout)
    {
      [v6 addObject:?];
    }

    v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _selectedAppLayoutIndex];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
    if ((!-[SBHomeGestureDockSwitcherModifier isCurrentlyTrackingDock](self->_dockModifier, "isCurrentlyTrackingDock") || self->_shouldResignActive || self->_hasTriggeredCardFlyIn || self->_startingEnvironmentMode == 2) && [v9 count])
    {
      if (self->_startingEnvironmentMode == 1)
      {
        v10 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
        v11 = 2 * (v10 != 0);
      }

      else
      {
        v11 = 2;
      }

      if (self->_inExposeMultitasking || !self->_hasTriggeredCardFlyIn && (BSFloatIsZero() & 1) != 0)
      {
        v12 = 1;
      }

      else
      {
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
        v14 = v13;
        v40 = v13;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
        v16 = v15;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _coplanarSpacing];
        v18 = v16 * v17;
        v19 = v16 * v17 + v14 * v16;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self frameForIndex:v8];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        UIRectGetCenter();
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
        CGAffineTransformMakeScale(&v41, v28, v28);
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        CGRectApplyAffineTransform(v44, &v41);
        SBUnintegralizedRectCenteredAboutPoint();
        v30 = v29 - v18;
        v32 = v40 - (v29 + v31) - v18;
        if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isRTLEnabled])
        {
          v33 = v32;
        }

        else
        {
          v33 = v30;
        }

        v11 = vcvtpd_s64_f64(v33 / v19);
        if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isRTLEnabled])
        {
          v34 = v30;
        }

        else
        {
          v34 = v32;
        }

        v12 = vcvtpd_s64_f64(v34 / v19);
        if (v12 <= 1)
        {
          v12 = 1;
        }

        if (v11 <= 1)
        {
          v11 = 1;
        }
      }

      v35 = (v8 - v12) & ~((v8 - v12) >> 63);
      v36 = v11 + v8;
      v37 = [v9 count];
      if (v36 >= v37 - 1)
      {
        v36 = v37 - 1;
      }

      if (v35 < [v9 count] && (v36 & 0x8000000000000000) == 0)
      {
        v38 = [v9 subarrayWithRange:{v35, v36 - v35 + 1}];
        [v6 addObjectsFromArray:v38];
      }
    }
  }

  return v6;
}

- (id)visibleSplitViewHandleNubViews
{
  if (self->_hideSplitViewHandles)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v4 visibleSplitViewHandleNubViews];
  }

  return v2;
}

- (id)visibleSplitViewHandleDimmingViews
{
  if (self->_hideSplitViewHandles)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v4 visibleSplitViewHandleDimmingViews];
  }

  return v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v11 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType])
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 layoutSettings];
    v8 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _layoutSettingsForAppLayout:v4 layoutSettings:v7];
    [v6 setLayoutSettings:v8];

    v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _cornerRadiusSettings];
    [v6 setCornerRadiusSettings:v9];

    v5 = v6;
  }

  return v5;
}

- (id)_cornerRadiusSettings
{
  v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  v3 = [v2 animationSettings];
  v4 = [v3 appToSwitcherCornerRadiusSettings];

  return v4;
}

- (id)_layoutSettingsForAppLayout:(id)a3 layoutSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  inExposeMultitaskingChangedProperty = self->_inExposeMultitaskingChangedProperty;
  if (inExposeMultitaskingChangedProperty)
  {
    if (self->_inExposeMultitasking)
    {
      v9 = 0.45;
    }

    else
    {
      [(UIViewFloatAnimatableProperty *)inExposeMultitaskingChangedProperty presentationValue];
      v9 = v29 * -0.37 + 0.45;
    }

    v15 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [v15 setTrackingResponse:v9];
    [v15 setTrackingDampingRatio:0.85];
    goto LABEL_16;
  }

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v10 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
    if (([v10 isEqual:self->_selectedAppLayout] & 1) == 0)
    {

      goto LABEL_22;
    }

    v11 = [(SBAppLayout *)self->_selectedAppLayout isEqual:v6];

    if (!v11)
    {
LABEL_22:
      if (self->_startingEnvironmentMode == 2 && BSFloatGreaterThanFloat())
      {
        v31 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
        v32 = [v31 animationSettings];
        v15 = [v32 stackedSwitcherTrackingSettings];
      }

      else
      {
        v15 = v7;
      }

      goto LABEL_17;
    }
  }

  if (!self->_inMultitaskingChangedProperty)
  {
    if (!self->_inMultitasking)
    {
      v15 = objc_alloc_init(MEMORY[0x277D65E60]);
      [v15 setDefaultValues];
      [v15 setTrackingResponse:0.0];
LABEL_16:
      v35 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
      [v15 setFrameRateRange:1114113 highFrameRateReason:{*&v35.minimum, *&v35.maximum, *&v35.preferred}];
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v12 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  v13 = [v12 animationSettings];
  v14 = [v13 cardFlyInSettings];

  v15 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v15 setDefaultValues];
  v16 = 0.0;
  if (self->_inMultitasking)
  {
    [(UIViewFloatAnimatableProperty *)self->_inMultitaskingChangedProperty presentationValue];
    v18 = v17;
    v19 = fabs(self->_translation.x);
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
    v21 = v19 / v20;
    v22 = v19 / v20 + 0.0;
    if (v21 <= 0.0)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v22;
    }

    v16 = fmin(fmax(1.0 - (1.0 - v18) * (1.0 - fmin(v23, 1.0)), 0.0), 1.0);
  }

  [v7 trackingResponse];
  v25 = v24;
  [v14 response];
  v27 = v16 * (v25 - v26);
  [v14 response];
  [v15 setTrackingResponse:v28 + v27];
  [v7 dampingRatio];
  [v15 setTrackingDampingRatio:?];
  v34 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v15 setFrameRateRange:1114113 highFrameRateReason:{*&v34.minimum, *&v34.maximum, *&v34.preferred}];

LABEL_17:

  return v15;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  v8 = [v7 isOrContainsAppLayout:v6];

  if (v8)
  {
    v13 = self;
    v9 = &v13;
LABEL_7:
    v9[1] = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v10 = objc_msgSendSuper2(v9, sel_shouldUseAnchorPointToPinLayoutRolesToSpace_, a3, v12);
    goto LABEL_8;
  }

  if (!self->_canEnterExposeMultitasking || ![(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v12 = self;
    v9 = &v12;
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  v8 = [v7 isOrContainsAppLayout:v6];

  if (v8)
  {
    v13 = self;
    v9 = &v13;
LABEL_9:
    v9[1] = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v10 = objc_msgSendSuper2(v9, sel_shouldPinLayoutRolesToSpace_, a3, v12);
    goto LABEL_10;
  }

  if (self->_canEnterExposeMultitasking && [(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v10 = 0;
  }

  else
  {
    if (([v6 isOrContainsAppLayout:self->_selectedAppLayout] & 1) == 0)
    {
      v12 = self;
      v9 = &v12;
      goto LABEL_9;
    }

    v10 = 1;
  }

LABEL_10:

  return v10;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  if (![v7 isEqual:v6])
  {

    goto LABEL_5;
  }

  inMultitasking = self->_inMultitasking;

  if (!inMultitasking)
  {
LABEL_5:
    v15.receiver = self;
    v15.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v15 perspectiveAngleForIndex:a3];
    v9 = v11;
    v10 = v12;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277CBF348];
  v10 = *(MEMORY[0x277CBF348] + 8);
LABEL_6:

  v13 = v9;
  v14 = v10;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];
  if (![v10 isEqual:v9])
  {

    goto LABEL_5;
  }

  inMultitasking = self->_inMultitasking;

  if (!inMultitasking)
  {
LABEL_5:
    v18.receiver = self;
    v18.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v18 perspectiveAngleForLayoutRole:a3 inAppLayout:v9 withPerspectiveAngle:x, y];
    v12 = v14;
    v13 = v15;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277CBF348];
  v13 = *(MEMORY[0x277CBF348] + 8);
LABEL_6:

  v16 = v12;
  v17 = v13;
  result.y = v17;
  result.x = v16;
  return result;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isAutomaticStageCreationEnabled];

  if (v6)
  {
    v12.receiver = self;
    v12.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v12 adjustedAppLayoutsForAppLayouts:v4];
  }

  else
  {
    v8 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self desktopSpaceDisplayItems];
    v15.receiver = self;
    v15.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v9 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v15 adjustedAppLayoutsForAppLayouts:v4];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__SBFlexibleWindowingHomeGestureSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v13[3] = &unk_2783AEDB8;
    v13[4] = self;
    v14 = v8;
    v10 = v8;
    v7 = [v9 bs_filter:v13];
  }

  return v7;
}

uint64_t __82__SBFlexibleWindowingHomeGestureSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allItems];
  if ([v4 count] == 1)
  {
    v5 = 1;
    v6 = [*(a1 + 32) maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:v3 ignoreOcclusion:1 ignoreCentering:0];
    v7 = [v6 count];

    if (v7 == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([*(*(a1 + 32) + 584) containsAnyItemFromAppLayout:v3])
  {
    v5 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) appLayoutOnStage];
    if ([v8 containsAnyItemFromAppLayout:v3])
    {
      v5 = 1;
    }

    else if ([*(a1 + 40) count])
    {
      v5 = [v3 containsAllItemsFromSet:*(a1 + 40)];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_13:

  return v5;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = &unk_21F9DA6A3;
  multitaskingModifier = self->_multitaskingModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SBFlexibleWindowingHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AA6B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  v9[7] = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __82__SBFlexibleWindowingHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(void *a1)
{
  result = [*(a1[4] + 544) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
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
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self floatingDockHeight];
      v6 = v7 * -0.5;
      if (self->_scrunchInitiated)
      {
        v8 = (v6 * 0.25 - v6) * self->_centroid.y;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
        v6 = v6 + v8 / v9;
      }
    }
  }

  v10 = *v5;
  if (self->_scrunchInitiated)
  {
    if (self->_startingEnvironmentMode != 1)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
      v12 = v11;
      v14 = v13;
      x = self->_centroid.x;
      v16 = self->_initialCentroid.x;
      v17 = x - v16;
      v18 = (self->_centroid.y - self->_initialCentroid.y) * (vabdd_f64(x, v16) / (v12 * -0.8) + 1.0);
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v18];
      v20 = v19;
      if (self->_startingEnvironmentMode == 2 && v19 < 0.0)
      {
        progressToInSwitcherCardScale = self->_progressToInSwitcherCardScale;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
        v23 = progressToInSwitcherCardScale * (0.0 - v22);
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
        v25 = v6 - (v24 + v23);
      }

      else
      {
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
        v25 = v6 + v20 * v38 + 0.0;
      }

      UIRectGetCenter();
      v40 = v39;
      v42 = v41;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:v17, v18];
      v44 = v43;
      v10 = v10 - (v40 - self->_initialCentroid.x) * (1.0 - v43);
      v6 = v25 - (v42 - self->_initialCentroid.y) * (1.0 - v43);
      v45 = v14 * ((1.0 - v43) * 0.5);
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
      v47 = v46 * (v44 / self->_homeGestureMinimumCardScale);
      if (v6 > v45 || v6 < v47)
      {
        BSUIConstrainValueToIntervalWithRubberBand();
        v6 = v49;
      }
    }
  }

  else
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:y];
    v27 = v26;
    if (self->_startingEnvironmentMode == 2 && v26 < 0.0)
    {
      v28 = self->_progressToInSwitcherCardScale;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v30 = v28 * (0.0 - v29);
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v6 = v6 - (v31 + v30);
    }

    else
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
      v6 = v6 + v27 * v32 + 0.0;
    }

    if (self->_startingEnvironmentMode != 1)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
      v34 = v33;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
      v36 = v35;
      v37 = 1.0;
      if (self->_startingEnvironmentMode == 2)
      {
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
      }

      v10 = v10 + (v36 * v37 - v36 * v34) * 0.5 * (self->_touchOffset.x / (v36 * 0.5));
    }
  }

  v50 = (v10 + self->_lastFrameOffsetX) * self->_homeGestureXOffsetFactor;
  v51 = v6;
  result.y = v51;
  result.x = v50;
  return result;
}

- (double)_scaleForTranslation:(CGPoint)a3
{
  if (self->_scrunchInitiated)
  {
    x = self->_translationWithoutScale.x;
    y = self->_translationWithoutScale.y;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds:a3.x];
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

  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v9];
  v11 = v10;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  if (startingEnvironmentMode == 1)
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
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
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
    v18 = progressToInSwitcherCardScale * (v17 + -1.0) + 1.0;
  }

  else
  {
    v19 = 1.0;
    if (v15 == 2)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
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
    v23 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self peekingAppLayout];

    if (!v23)
    {
      if (+[SBFloatingDockController isFloatingDockSupported])
      {
        v24 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
        [v24 offscreenCardScaleForFlyIn];
      }

      BSUIConstrainValueToIntervalWithRubberBand();
      return v25;
    }
  }

  return v18;
}

- (double)_scaleForAdjacentCards
{
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _shouldPositionAdjacentCardsOffscreenForFlyIn])
  {

    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForOffscreenAdjacentCardsForFlyIn];
  }

  else
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];

    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
  }

  return result;
}

- (double)_scaleForOffscreenAdjacentCardsForFlyIn
{
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 offscreenCardScaleForFlyIn];
  v5 = v4;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
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
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
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

    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
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

- (void)_getActivePositionAndScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5 outPosition:(CGPoint *)a6 outScale:(double *)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = a4;
  v16 = [v15 itemForLayoutRole:a3];
  v53.receiver = self;
  v53.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  v48 = height;
  v49 = width;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v53 frameForLayoutRole:a3 inAppLayout:v15 withBounds:x, y, width, height];
  UIRectGetCenter();
  v18 = v17;
  v45 = v19;
  v52.receiver = self;
  v52.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v52 scaleForLayoutRole:a3 inAppLayout:v15];
  v21 = v20;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v23 = v22;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:self->_translation.x, self->_translation.y];
  v46 = v25;
  v47 = v24;
  v26 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v15];

  [v26 boundingBox];
  v28 = v27;
  v30 = v29;
  v31 = [v26 autoLayoutItems];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __134__SBFlexibleWindowingHomeGestureSwitcherModifier__getActivePositionAndScaleForLayoutRole_inAppLayout_withBounds_outPosition_outScale___block_invoke;
  v50[3] = &unk_2783B6060;
  v51 = v16;
  v32 = v16;
  v33 = [v31 bs_firstObjectPassingTest:v50];

  [v33 exposePosition];
  v35 = v34 - v28;
  v37 = v36 - v30;
  [v33 exposeScale];
  v39 = v38;
  IsZero = BSFloatIsZero();
  v41 = -(v23 + -1.0);
  v42 = 0.0;
  if (IsZero)
  {
    v41 = 0.0;
  }

  v43 = fmin(fmax(v41, 0.0), 1.0) * -0.5 + 1.0;
  if (!self->_inExposeMultitasking)
  {
    if ((BSFloatIsZero() & 1) == 0)
    {
      v42 = (v43 + -1.0) / -0.2;
    }

    v44 = fmin(fmax(v42, 0.0), 1.0);
    v35 = v18 + v44 * (v35 - v18);
    v37 = v45 + v44 * (v37 - v45);
    v39 = v21 + v44 * (v39 - v21);
  }

  if (a6)
  {
    a6->x = v47 + v35 - (1.0 - v43) * (v47 + v35 - v49 * 0.5);
    a6->y = v46 + v37 - (1.0 - v43) * (v46 + v37 - v48 * 0.5);
  }

  if (a7)
  {
    *a7 = v43 * v39;
  }
}

uint64_t __134__SBFlexibleWindowingHomeGestureSwitcherModifier__getActivePositionAndScaleForLayoutRole_inAppLayout_withBounds_outPosition_outScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v8.receiver = self;
  v8.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v8 dimmingAlphaForLayoutRole:a3 inAppLayout:a4];
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
  v6.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v6 wallpaperOverlayAlphaForIndex:a3];
  return stackedProgress * v4 + 0.0;
}

- (double)lighteningAlphaForIndex:(unint64_t)a3
{
  stackedProgress = self->_stackedProgress;
  v6.receiver = self;
  v6.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v6 lighteningAlphaForIndex:a3];
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
  v6.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  return [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v6 headerStyleForIndex:a3];
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  result = 0.0;
  if (!self->_laysOutNeighboringCards)
  {
    v4.receiver = self;
    v4.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v4 titleAndIconOpacityForIndex:a3, 0.0];
  }

  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  result = 1.0;
  if (!self->_inMultitasking)
  {
    v5.receiver = self;
    v5.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v5 shadowOpacityForLayoutRole:a3 atIndex:a4, 1.0];
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v11 = a4;
  if (BSEqualObjects() && ([v11 itemForLayoutRole:a3], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale])
    {
      v45 = 0;
      v46 = &v45;
      v47 = 0x4010000000;
      v48 = &unk_21F9DA6A3;
      multitaskingModifier = self->_multitaskingModifier;
      v49 = 0u;
      v50 = 0u;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __103__SBFlexibleWindowingHomeGestureSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
      v37[3] = &unk_2783AA640;
      v39 = &v45;
      v40 = a3;
      v37[4] = self;
      v38 = v11;
      v41 = topLeft;
      v42 = bottomLeft;
      v43 = bottomRight;
      v44 = topRight;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v37];
      v14 = v46[4];
      v15 = v46[5];
      v17 = v46[6];
      v16 = v46[7];

      _Block_object_dispose(&v45, 8);
    }

    else
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self displayCornerRadius];
      v17 = v26;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
      SBRectCornerRadiiForRadius();
      v14 = v27;
      v15 = v28;
      v30 = v29;
      v16 = v31;
      v32 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
      v33 = [v11 itemForLayoutRole:a3];
      v34 = [v32 flexibleAutoLayoutItemForDisplayItem:v33];
      v35 = [v34 intersectedDisplayRectCorners];

      if (v35)
      {
        v14 = v17;
      }

      if ((v35 & 2) != 0)
      {
        v16 = v17;
      }

      if ((v35 & 4) != 0)
      {
        v15 = v17;
      }

      if ((v35 & 8) == 0)
      {
        v17 = v30;
      }
    }
  }

  else
  {
    v36.receiver = self;
    v36.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v36 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v14 = v18;
    v15 = v19;
    v17 = v20;
    v16 = v21;
  }

  v22 = v14;
  v23 = v15;
  v24 = v17;
  v25 = v16;
  result.topRight = v25;
  result.bottomRight = v24;
  result.bottomLeft = v23;
  result.topLeft = v22;
  return result;
}

uint64_t __103__SBFlexibleWindowingHomeGestureSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 544) cornerRadiiForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withCornerRadii:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)homeScreenAlpha
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (!self->_inMultitasking)
    {
      v11.receiver = self;
      v11.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v11 homeScreenAlpha];
      return result;
    }
  }

  else if (![(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]|| [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]== 3)
  {
    progressToMaxTranslation = self->_progressToMaxTranslation;
    toHomeScreenAlpha = self->_toHomeScreenAlpha;
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v10 homeScreenAlpha];
    v7 = progressToMaxTranslation * (toHomeScreenAlpha - v6);
    v9.receiver = self;
    v9.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v9 homeScreenAlpha];
    return v7 + v8;
  }

  return self->_toHomeScreenAlpha;
}

- (double)homeScreenScale
{
  v9.receiver = self;
  v9.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v9 homeScreenScale];
  if (self->_startingEnvironmentMode == 1)
  {
    y = self->_translation.y;
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
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
  v9.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v9 wallpaperScale];
  v4 = v3;
  if (self->_startingEnvironmentMode == 1 && self->_inMultitasking)
  {
    v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
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
        v17.receiver = self;
        v17.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v17 homeScreenDimmingAlpha:v13.receiver];
      }
    }

    else
    {
      v4 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self windowManagementContext];
      v5 = [v4 isFlexibleWindowingEnabled];

      if (v5)
      {
        v16.receiver = self;
        v16.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v16 homeScreenDimmingAlpha];
        v6 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
        v7 = [v6 windowingSettings];
        [v7 maxHomeScreenDimmingAlphaForNonFullscreen];

        BSFloatByLinearlyInterpolatingFloats();
      }

      else
      {
        progressToMaxTranslation = self->_progressToMaxTranslation;
        toHomeScreenDimmingAlpha = self->_toHomeScreenDimmingAlpha;
        v15.receiver = self;
        v15.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v15 homeScreenDimmingAlpha];
        v11 = progressToMaxTranslation * (toHomeScreenDimmingAlpha - v10);
        v14.receiver = self;
        v14.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
        [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v14 homeScreenDimmingAlpha];
        result = v11 + v12;
        if (result < 0.2)
        {
          return 0.2;
        }
      }
    }
  }

  else
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v13 homeScreenDimmingAlpha:self];
  }

  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if (self->_startingEnvironmentMode == 1)
  {
    return 3;
  }

  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder:v2]&& SBFEffectiveHomeButtonType() != 2)
  {
    return 2;
  }

  return 3;
}

- (double)homeScreenBackdropBlurProgress
{
  if (self->_startingEnvironmentMode != 1)
  {
    if (![(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]|| [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]== 3)
    {
      progressToMaxTranslation = self->_progressToMaxTranslation;
      toHomeScreenBlurProgress = self->_toHomeScreenBlurProgress;
      v11.receiver = self;
      v11.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v11 homeScreenBackdropBlurProgress];
      v7 = progressToMaxTranslation * (toHomeScreenBlurProgress - v6);
      v10.receiver = self;
      v10.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v10 homeScreenBackdropBlurProgress];
      v3 = v7 + v8;
      return fmin(fmax(v3, 0.0), 1.0);
    }

LABEL_7:
    v3 = self->_toHomeScreenBlurProgress;
    return fmin(fmax(v3, 0.0), 1.0);
  }

  if (self->_inMultitasking)
  {
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v12 homeScreenBackdropBlurProgress];
  return fmin(fmax(v3, 0.0), 1.0);
}

- (BOOL)isContainerStatusBarVisible
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (self->_inMultitasking)
    {
      v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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
    v5.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    return [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v5 isContainerStatusBarVisible];
  }

  return v3;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (![(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale])
  {
    goto LABEL_4;
  }

  v7 = [v6 itemForLayoutRole:a3];
  v8 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self displayItemInSlideOver];
  if ((BSEqualObjects() & 1) == 0)
  {

    goto LABEL_6;
  }

  inExposeMultitasking = self->_inExposeMultitasking;

  if (inExposeMultitasking)
  {
LABEL_6:
    v10 = 14;
    goto LABEL_7;
  }

LABEL_4:
  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  if ([(SBAppLayout *)self->_selectedAppLayout containsItem:v7]&& self->_inExposeMultitasking)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v8 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v10 occlusionStateForLayoutRole:a3 inAppLayout:v6];
  }

  return v8;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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

    v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
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
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  if (!self->_selectedAppLayout)
  {
    goto LABEL_4;
  }

  v4 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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
    v4 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 dictionaryWithObject:v5 forKey:&unk_2833713C0];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v20 appLayoutsToResignActive];
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

    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:&unk_2833713C0];
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
    v4.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v4 keyboardSuppressionMode];
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
    v5.super_class = SBFlexibleWindowingHomeGestureSwitcherModifier;
    v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)&v5 asyncRenderingAttributesForAppLayout:a3];
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
  v10 = __66__SBFlexibleWindowingHomeGestureSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  v6 = [v5 build];

  return v6;
}

id __66__SBFlexibleWindowingHomeGestureSwitcherModifier_debugDescription__block_invoke(uint64_t a1)
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

  v8 = [*(a1 + 32) appendBool:*(v4 + 169) withName:@"inExposeMultitasking"];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"inExposeMultitaskingChangedProperty"];
  v10 = *(a1 + 40);
  v11 = *(v10 + 176);
  if (v11)
  {
    v12 = *(a1 + 32);
    [v11 presentationValue];
    v13 = [v12 appendFloat:@"inExposeMultitaskingChangedProperty.presentationValue" withName:?];
    v10 = *(a1 + 40);
  }

  v14 = [*(a1 + 32) appendPoint:@"touchOffset" withName:{*(v10 + 184), *(v10 + 192)}];
  v15 = [*(a1 + 32) appendFloat:@"lastFrameOffsetX" withName:*(*(a1 + 40) + 200)];
  v16 = [*(a1 + 32) appendFloat:@"lastTranslationXForRubberbanding" withName:*(*(a1 + 40) + 208)];
  v17 = [*(a1 + 32) appendFloat:@"translationXLostToRubberbanding" withName:*(*(a1 + 40) + 216)];
  v18 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 224) withName:@"hasTriggeredCardFlyIn"];
  v19 = [*(a1 + 32) appendFloat:@"translationYWhenTriggeredCardFlyIn" withName:*(*(a1 + 40) + 232)];
  v20 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 240) withName:@"hasBecomeCoplanarSinceGestureFromSwitcherBegan"];
  v21 = [*(a1 + 32) appendPoint:@"gestureLiftOffVelocity" withName:{*(*(a1 + 40) + 248), *(*(a1 + 40) + 256)}];
  v22 = [*(a1 + 32) appendPoint:@"gestureLiftOffTranslation" withName:{*(*(a1 + 40) + 264), *(*(a1 + 40) + 272)}];
  v23 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromSwitcher" withName:{*(*(a1 + 40) + 280), *(*(a1 + 40) + 288)}];
  v24 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromHomeScreen" withName:{*(*(a1 + 40) + 296), *(*(a1 + 40) + 304)}];
  v25 = [*(a1 + 32) appendFloat:@"progressToInSwitcherCardScale" withName:*(*(a1 + 40) + 312)];
  v26 = [*(a1 + 32) appendFloat:@"progressToMaxTranslation" withName:*(*(a1 + 40) + 320)];
  v27 = [*(a1 + 32) appendPoint:@"translation" withName:{*(*(a1 + 40) + 328), *(*(a1 + 40) + 336)}];
  v28 = [*(a1 + 32) appendPoint:@"velocity" withName:{*(*(a1 + 40) + 344), *(*(a1 + 40) + 352)}];
  v29 = [*(a1 + 32) appendFloat:@"stackedProgress" withName:*(*(a1 + 40) + 360)];
  v30 = [*(a1 + 32) appendPoint:@"initialCentroid" withName:{*(*(a1 + 40) + 368), *(*(a1 + 40) + 376)}];
  v31 = [*(a1 + 32) appendPoint:@"centroid" withName:{*(*(a1 + 40) + 384), *(*(a1 + 40) + 392)}];
  v32 = [*(a1 + 32) appendFloat:@"absoluteScale" withName:*(*(a1 + 40) + 416)];
  v33 = [*(a1 + 32) appendPoint:@"translationWithoutScale" withName:{*(*(a1 + 40) + 424), *(*(a1 + 40) + 432)}];
  v34 = [*(a1 + 32) appendFloat:@"lastTouchTimestamp" withName:*(*(a1 + 40) + 448)];
  v35 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 456) withName:@"gestureHoldTimer"];
  v36 = [*(a1 + 32) appendPoint:@"initialTouchLocation" withName:{*(*(a1 + 40) + 464), *(*(a1 + 40) + 472)}];
  v37 = [*(a1 + 32) appendPoint:@"lastTouchLocation" withName:{*(*(a1 + 40) + 480), *(*(a1 + 40) + 488)}];
  v38 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 496) withName:@"everTranslatedUpwards"];
  v39 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 497) withName:@"cancelledGestureForEmptySwitcher"];
  v40 = [*(a1 + 32) appendFloat:@"toHomeScreenAlpha" withName:*(*(a1 + 40) + 504)];
  v41 = [*(a1 + 32) appendFloat:@"toHomeScreenBlurProgress" withName:*(*(a1 + 40) + 512)];
  v42 = [*(a1 + 32) appendFloat:@"toHomeScreenDimmingAlpha" withName:*(*(a1 + 40) + 520)];
  v43 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 536) withName:@"didWarmupFlyInHaptic"];
  v44 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 537) withName:@"didPlayFlyInHaptic"];
  v45 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 584) withName:@"selectedAppLayout"];
  v46 = *(a1 + 32);
  v47 = SBStringForUnlockedEnvironmentMode(*(*(a1 + 40) + 592));
  [v46 appendString:v47 withName:@"startingEnvironmentMode"];

  v48 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 600) withName:@"scrunchInitiated"];
  v49 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 601) withName:@"continuingGesture"];
  v50 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 602) withName:@"lastGestureWasAnArcSwipe"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 603) withName:@"shouldResignActive"];
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
      v5 = dockModifier && ![(SBHomeGestureDockSwitcherModifier *)dockModifier isCurrentlyTrackingDock]|| [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale];
      self->_shouldResignActive = v5;
    }
  }
}

- (BOOL)_shouldResignActiveBasedOnCardScale
{
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForAdjacentCards];
  if (BSFloatLessThanOrEqualToFloat())
  {
    return 1;
  }

  v4 = fabs(self->_translation.x);
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _coplanarSpacing];
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
      v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
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
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = v5;
  v7 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v8 = self->_selectedAppLayout;
      v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
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
        v7 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
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
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isStudyLogEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
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
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isStudyLogEnabled])
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
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBFlexibleWindowingHomeGestureSwitcherModifier _hasPausedEnoughForFlyIn](self, "_hasPausedEnoughForFlyIn")}];
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
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBFlexibleWindowingHomeGestureSwitcherModifier switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
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
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isLocationInSafeArea:self->_initialTouchLocation.x, self->_initialTouchLocation.y];
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
  if (a3 && [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isSystemAssistantExperienceEnabled])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_2833713D8, &unk_2833713F0, 0}];
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
  v31 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v9 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v10 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v11 = [v10 count];

  inMultitasking = self->_inMultitasking;
  inExposeMultitasking = self->_inExposeMultitasking;
  if (v9 == 3)
  {
    if (!self->_didWarmupFlyInHaptic)
    {
      v14 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:0];
      [(SBChainableModifierEventResponse *)v31 addChildResponse:v14];
      self->_didWarmupFlyInHaptic = 1;
    }

    if (inMultitasking && !self->_didPlayFlyInHaptic && v11 && fabs(self->_velocity.x) < *&kPauseVelocityThresholdForAppSwitcher_1 && fabs(self->_velocity.y) < *&kPauseVelocityThresholdForAppSwitcher_1)
    {
      v30 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
      -[SBHapticSwitcherEventResponse setHidEventSenderID:](v30, "setHidEventSenderID:", [v4 hidEventSenderID]);
      [(SBChainableModifierEventResponse *)v31 addChildResponse:v30];
      self->_didPlayFlyInHaptic = 1;
    }
  }

  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _unadjustedGestureTranslation];
  v17 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inMultitaskingForLocation:v6 translation:v8, v15, v16];
  self->_inMultitasking = v17;
  v19 = self->_canEnterExposeMultitasking && v17 && [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination]== 3;
  self->_inExposeMultitasking = v19;
  if (inExposeMultitasking != v19)
  {
    v20 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
    v21 = [v20 animationSettings];
    v22 = [v21 layoutSettings];
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _beginAnimatingExposeMultitaskingPropertyWithMode:3 settings:v22];
  }

  v23 = self->_inMultitasking;
  if (v23 != inMultitasking)
  {
    if (v23)
    {
      v24 = 0;
      self->_hasTriggeredCardFlyIn = 1;
      self->_translationYWhenTriggeredCardFlyIn = self->_translation.y;
    }

    else
    {
      self->_didPlayFlyInHaptic = 0;
      v24 = 1;
    }

    [(SBCoplanarSwitcherModifier *)self->_coplanarLayoutModifier setSpacingType:v24];
    if (![(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _preventPositioningCardsOffscreenForFlatBottomEdgeSwipe])
    {
      if (self->_inMultitasking && !self->_didPlayFlyInHaptic && v11 && fabs(self->_velocity.x) < *&kVelocityXThresholdForUnconditionalArcSwipe_1)
      {
        v25 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
        -[SBHapticSwitcherEventResponse setHidEventSenderID:](v25, "setHidEventSenderID:", [v4 hidEventSenderID]);
        [(SBChainableModifierEventResponse *)v31 addChildResponse:v25];
        self->_didPlayFlyInHaptic = 1;
      }

      v26 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
      v27 = [v26 animationSettings];
      v28 = [v27 layoutSettings];
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _beginAnimatingMultitaskingPropertyWithMode:3 settings:v28];
    }
  }

  return v31;
}

- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe
{
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v4 = v3;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  v6 = (1.0 - v4) * v5;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _coplanarSpacing];
  return v6 < v7 * 0.75;
}

- (void)_displayLinkFired:(id)a3
{
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 2 && [(SBChainableModifier *)self state]!= 1)
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
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

    if (!self->_inMultitasking && [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {

      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self gestureHandlingModifierRequestsUpdate:self];
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
  v22[2] = __103__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __103__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
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

- (void)_beginAnimatingExposeMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4
{
  v6 = a4;
  inExposeMultitaskingChangedProperty = self->_inExposeMultitaskingChangedProperty;
  if (inExposeMultitaskingChangedProperty)
  {
    [(UIViewFloatAnimatableProperty *)inExposeMultitaskingChangedProperty invalidate];
    v8 = self->_inExposeMultitaskingChangedProperty;
    self->_inExposeMultitaskingChangedProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_inExposeMultitaskingChangedProperty;
  self->_inExposeMultitaskingChangedProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_inExposeMultitaskingChangedProperty setValue:0.0];
  v11 = [v6 copy];
  LODWORD(v12) = *MEMORY[0x277CD9DD0];
  LODWORD(v13) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v14) = *(MEMORY[0x277CD9DD0] + 8);
  [v11 setFrameRateRange:0 highFrameRateReason:{v12, v13, v14}];
  v15 = v11;

  objc_initWeak(&location, self);
  v16 = self->_inExposeMultitaskingChangedProperty;
  v17 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __109__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __109__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __109__SBFlexibleWindowingHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[22];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[22];
      v6[22] = 0;
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
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _coplanarSpacing];
    v14 = v13;
    if (self->_selectedAppLayout)
    {
      v15 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _selectedAppLayoutIndex];
    }

    else
    {
      v15 = 0;
    }

    v16 = (v12 - 1) < 2 || inMultitasking;
    v17 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
    v18 = [v17 count];

    if (v18)
    {
      [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self scaleForIndex:v15];
      v21 = fabs(x) > v14 / v19 && v12 != 4;
      v16 |= v21;
    }

    if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {
      v16 |= ![(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock];
    }

    if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:y])
    {
      v11 = (startingEnvironmentMode == 1) & v16;
    }

    else
    {
      v11 = v16;
    }

    v22 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _hasTraveledSufficientDistanceForHomeOrAppSwitcher];
    if (startingEnvironmentMode == 1)
    {
      v23 = v22;
      v24 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isRTLEnabled];
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
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
  return v4 < v3;
}

- (double)_gestureProgressToMaxTranslationForTranslation:(double)a3
{
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _distanceYToMaxTranslation];
  v6 = v5;
  if (self->_startingEnvironmentMode == 2 && !self->_scrunchInitiated)
  {
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
    a3 = v7 + a3;
    v6 = v6 - v7;
  }

  return -a3 / v6;
}

- (double)_distanceYToInSwitcherCardScale
{
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _switcherCardScale];
  v4 = v3;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  v6 = v5;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  return (1.0 - v4) * v7 * 0.5 - v6;
}

- (double)_distanceYToMaxTranslation
{
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
  return v4 * 0.5 - v5;
}

- (double)_inSwitcherCenterYOffsetWhenPresented
{
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 switcherCenterYOffsetPercentOfScreenHeight];

  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
  [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_centerYOffsetDuringGesture
{
  if (self->_startingEnvironmentMode == 1)
  {

    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  }

  else
  {
    v4 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeGestureSettings];
    [v4 homeGestureCenterZoomDownCenterYOffsetFactor];
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self containerViewBounds];
    [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)_switcherCardScale
{
  v2 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  [v2 deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

- (unint64_t)_selectedAppLayoutIndex
{
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
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
  v5 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_selectedAppLayout];
  return v4;
}

- (double)_coplanarSpacing
{
  v3 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self switcherSettings];
  if ([(SBFlexibleWindowingHomeGestureSwitcherModifier *)self isDevicePad])
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
  v13 = [(SBFlexibleWindowingHomeGestureSwitcherModifier *)self homeGestureSettings];
  [v13 homeGestureMinimumCardScale];
  self->_homeGestureMinimumCardScale = v4;
  [v13 homeGestureMinimumCardScaleRubberBandingRange];
  self->_homeGestureMinimumCardScaleRubberBandingRange = v5;
  [v13 homeGestureXOffsetFactor];
  self->_homeGestureXOffsetFactor = v6;
  [v13 normalizedDistanceYThresholdForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_0 = v7;
  [v13 normalizedDistanceYThresholdRangeForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_0 = v8;
  [v13 pauseVelocityThresholdForAppSwitcher];
  *&kPauseVelocityThresholdForAppSwitcher_1 = v3 * v9;
  [v13 velocityXThresholdForUnconditionalArcSwipe];
  *&kVelocityXThresholdForUnconditionalArcSwipe_1 = v3 * v10;
  [v13 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher_1 = v3 * v11;
  [v13 cardFlyInMaximumVelocityThreshold];
  *&kCardFlyInMaximumVelocityThreshold_0 = v3 * v12;
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