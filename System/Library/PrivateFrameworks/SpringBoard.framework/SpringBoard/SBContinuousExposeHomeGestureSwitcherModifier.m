@interface SBContinuousExposeHomeGestureSwitcherModifier
- (BOOL)_isSelectedAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3;
- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe;
- (BOOL)_shouldResignActiveBasedOnCardScale;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)_frameOffsetForTranslation:(CGPoint)a3;
- (CGPoint)_maxPerspectiveAngleForSelectedAppLayout;
- (CGPoint)_rubberbandedTranslationForAdjacentCards;
- (CGPoint)_unadjustedGestureTranslation;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGPoint)liftOffTranslationForGestureEnd;
- (CGPoint)liftOffVelocityForGestureEnd;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (NSString)debugDescription;
- (SBContinuousExposeHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)_centerYOffsetDuringGesture;
- (double)_coplanarSpacing;
- (double)_distanceYToInSwitcherCardScale;
- (double)_distanceYToMaxTranslation;
- (double)_gestureProgressToMaxTranslationForTranslation:(double)a3;
- (double)_inSwitcherCenterYOffsetWhenPresented;
- (double)_rangeForPerspectiveAngleProgressOfAppLayout:(id)a3 outMin:(double)a4 outMax:(double)a5;
- (double)_scaleForOffscreenAdjacentCardsForFlyIn;
- (double)_scaleForTranslation:(CGPoint)a3;
- (double)_switcherCardScale;
- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)lighteningAlphaForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
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
- (id)_nextRecentAppLayout;
- (id)_previousRecentAppLayout;
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
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)appLayoutsToResignActive;
- (id)continuousExposeIdentifiersInSwitcher;
- (id)handleGestureEvent:(id)a3;
- (id)handleHomeGestureSettingsChangedEvent:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleSwitcherSettingsChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)keyboardSuppressionMode;
- (id)topMostLayoutElements;
- (id)visibleAppLayouts;
- (id)visibleSplitViewHandleDimmingViews;
- (id)visibleSplitViewHandleNubViews;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)occlusionStateForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (unint64_t)_selectedAppLayoutIndex;
- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (void)_applyPrototypeSettings;
- (void)_beginAnimatingArcSwipePullingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_beginAnimatingExposeMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_beginAnimatingMultitaskingPropertyWithMode:(int64_t)a3 settings:(id)a4;
- (void)_displayLinkFired:(id)a3;
- (void)_getActivePositionAndScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5 outPosition:(CGPoint *)a6 outScale:(double *)a7;
- (void)_updateGestureTranslationVelocityAndProgressWithEvent:(id)a3;
- (void)_updateShouldResignActiveWithEvent:(id)a3;
- (void)_updateStackedProgress;
- (void)_updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:(id)a3;
- (void)dealloc;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBContinuousExposeHomeGestureSwitcherModifier

- (SBContinuousExposeHomeGestureSwitcherModifier)initWithGestureID:(id)a3 selectedAppLayout:(id)a4 startingEnvironmentMode:(int64_t)a5 multitaskingModifier:(id)a6 scrunchInitiated:(BOOL)a7 continuingGesture:(BOOL)a8 lastGestureWasAnArcSwipe:(BOOL)a9
{
  v16 = a4;
  v17 = a6;
  v25.receiver = self;
  v25.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v18 = [(SBGestureSwitcherModifier *)&v25 initWithGestureID:a3];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_selectedAppLayout, a4);
    v19->_startingEnvironmentMode = a5;
    v19->_scrunchInitiated = a7;
    v19->_continuingGesture = a8;
    v19->_lastGestureWasAnArcSwipe = a9;
    v19->_providesHomeScreenDimmingAlpha = 1;
    objc_storeStrong(&v19->_exposeModifier, a6);
    v20 = objc_alloc_init(SBAppSwitcherContinuousExposeSwitcherModifier);
    appSwitcherModifier = v19->_appSwitcherModifier;
    v19->_appSwitcherModifier = v20;

    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v19->_appSwitcherModifier setHandlesTapAppLayoutHeaderEvents:0];
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v19->_appSwitcherModifier setShowsActiveAppLayoutInSwitcher:0];
    [(SBAppSwitcherContinuousExposeSwitcherModifier *)v19->_appSwitcherModifier setHandlesTapAppLayoutEvents:0];
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
  v3.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v3 dealloc];
}

- (void)didMoveToParentModifier:(id)a3
{
  v38.receiver = self;
  v38.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBChainableModifier *)&v38 didMoveToParentModifier:?];
  if (!a3)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    return;
  }

  startingEnvironmentMode = self->_startingEnvironmentMode;
  if (startingEnvironmentMode != 1)
  {
    if (startingEnvironmentMode != 3 || (-[SBContinuousExposeHomeGestureSwitcherModifier switcherSettings](self, "switcherSettings"), v6 = objc_claimAutoreleasedReturnValue(), [v6 windowingSettings], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "blurWallpaperInApps"), v7, v6, (v8 & 1) != 0))
    {
      v9 = objc_alloc_init(SBHomeScreenSwitcherModifier);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __73__SBContinuousExposeHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2;
      v34[3] = &unk_2783A92D8;
      v34[4] = self;
      v35 = v9;
      v10 = v9;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v10 usingBlock:v34];

LABEL_9:
      goto LABEL_10;
    }
  }

  appSwitcherModifier = self->_appSwitcherModifier;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __73__SBContinuousExposeHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke;
  v37[3] = &unk_2783A8C18;
  v37[4] = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v37];
  if (!self->_providesHomeScreenDimmingAlpha)
  {
    v36.receiver = self;
    v36.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v36 homeScreenAlpha];
    self->_toHomeScreenAlpha = v12;
    v10 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v13 = [(SBHomeScreenSwitcherModifier *)v10 animationSettings];
    [v13 homeScreenBlurProgressForMode:2];
    self->_toHomeScreenBlurProgress = v14;

    goto LABEL_9;
  }

LABEL_10:
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isFloatingDockSupported])
  {
    v15 = !self->_scrunchInitiated;
  }

  else
  {
    v15 = 0;
  }

  v16 = self->_continuingGesture && self->_lastGestureWasAnArcSwipe;
  if (self->_dockModifier == 0 && v15)
  {
    v17 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v16 startingEnvironmentMode:self->_startingEnvironmentMode];
    dockModifier = self->_dockModifier;
    self->_dockModifier = v17;

    [(SBChainableModifier *)self addChildModifier:self->_dockModifier atLevel:0 key:0];
  }

  if (!self->_finalDestinationModifier)
  {
    if (self->_startingEnvironmentMode == 2)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
      self->_translationAdjustmentForStartingFromSwitcher.y = -v19;
    }

    if (v15)
    {
      v20 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _newDockModifierRequiringVerticalSwipeToTrackDock:v16 startingEnvironmentMode:self->_startingEnvironmentMode];
    }

    else
    {
      v20 = 0;
    }

    v21 = [SBHomeGestureFinalDestinationSwitcherModifier alloc];
    v22 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v23 = [v22 windowingSettings];
    [v23 homeGestureMinimumYDistanceForHomeOrAppSwitcher];
    v25 = [(SBHomeGestureFinalDestinationSwitcherModifier *)v21 initWithDelegate:self initialTranslationAdjustment:self->_startingEnvironmentMode minYDistanceForHomeOrSwitcher:self->_continuingGesture startingEnvironmentMode:v20 continuingGesture:self->_translationAdjustmentForStartingFromSwitcher.x dockModifier:self->_translationAdjustmentForStartingFromSwitcher.y, v24];
    finalDestinationModifier = self->_finalDestinationModifier;
    self->_finalDestinationModifier = v25;

    [(SBChainableModifier *)self addChildModifier:self->_finalDestinationModifier atLevel:1 key:0];
  }

  v27 = [(SBAppLayout *)self->_selectedAppLayout allItems];
  v28 = [v27 count];
  v29 = (v28 > 1 || (selectedAppLayout = self->_selectedAppLayout) != 0 && (-[SBContinuousExposeHomeGestureSwitcherModifier maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:](self, "maximizedCenteredAndUnoccludedDisplayItemsInAppLayout:ignoreOcclusion:ignoreCentering:", selectedAppLayout, 0, 1), v31 = ;
  self->_canEnterExposeMultitasking = v29;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v33 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  self->_selectedIndex = [v33 indexOfObject:self->_selectedAppLayout];
}

uint64_t __73__SBContinuousExposeHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 528) homeScreenAlpha];
  *(*(a1 + 32) + 480) = v2;
  [*(*(a1 + 32) + 528) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 488) = v3;
  result = [*(*(a1 + 32) + 528) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 496) = v5;
  return result;
}

uint64_t __73__SBContinuousExposeHomeGestureSwitcherModifier_didMoveToParentModifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 40) homeScreenAlpha];
  *(*(a1 + 32) + 480) = v2;
  [*(a1 + 40) homeScreenBackdropBlurProgress];
  *(*(a1 + 32) + 488) = v3;
  result = [*(a1 + 40) homeScreenDimmingAlpha];
  *(*(a1 + 32) + 496) = v5;
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
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleHomeGestureSettingsChangedEvent:v4];

  return v5;
}

- (id)handleSwitcherSettingsChangedEvent:(id)a3
{
  v4 = a3;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _applyPrototypeSettings];
  v7.receiver = self;
  v7.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleSwitcherSettingsChangedEvent:v4];

  return v5;
}

- (id)handleTransitionEvent:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
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
  v10.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
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
  v13.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v6 = [(SBGestureSwitcherModifier *)&v13 handleGestureEvent:v5];
  v7 = [v5 phase];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateForGestureDidChangeWithEvent:v5];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateForGestureDidEndWithEvent:v5];
    }
  }

  else
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBContinuousExposeHomeGestureSwitcherModifier.m" lineNumber:352 description:@"Should not be getting PhasePossible"];

      v8 = 0;
      goto LABEL_11;
    }

    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateForGestureDidBeginWithEvent:v5];
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
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidBeginWithEvent:];
  }

  self->_gestureHasBegun = 1;
  v5 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  v9 = CACurrentMediaTime();
  [v4 lastTouchTimestamp];
  v11 = v10;
  v12 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkFired_];
  displayLink = self->_displayLink;
  self->_displayLink = v12;

  v14 = self->_displayLink;
  v15 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v14 addToRunLoop:v15 forMode:*MEMORY[0x277CBE738]];

  v16 = self->_startingEnvironmentMode == 2;
  self->_inMultitasking = v16;
  v17 = 0.0;
  if (v16)
  {
    v17 = 1.0;
  }

  self->_stackedProgress = v17;
  self->_inExposeMultitasking = v16;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
  v19 = v18;
  v21 = v20;
  [v4 locationInContainerView];
  v23 = v22;
  v25 = v24;
  UIRectGetCenter();
  self->_touchOffset.x = v23 - v26;
  self->_touchOffset.y = v25 - v27;
  self->_initialTouchLocation.x = v23;
  self->_initialTouchLocation.y = v25;
  self->_lastTouchLocation.x = v23;
  self->_lastTouchLocation.y = v25;
  if (self->_startingEnvironmentMode == 2)
  {
    self->_initialTouchLocation.y = v21;
  }

  self->_didPlayFlyInHaptic = self->_inMultitasking;
  [v4 translationInContainerView];
  v29 = v28;
  [v4 hysteresis];
  self->_everTranslatedUpwards = v29 < -v30;
  self->_centroidAdjustment = *MEMORY[0x277CBF348];
  if (self->_scrunchInitiated)
  {
    v31 = v4;
    if ([v31 touchType] == 1)
    {
      [v31 initialCentroid];
      self->_centroidAdjustment.x = v19 * 0.5 - v32;
      self->_centroidAdjustment.y = v21 * 0.5 - v33;
    }
  }

  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateStackedProgress];
  v34 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForUpdatingLayoutForGestureBegan];
  [(SBChainableModifierEventResponse *)v5 addChildResponse:v34];
  v35 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:0];
  if (v35)
  {
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v35];
  }

  v36 = v9 - v11;
  v37 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForStudyLogDidBeginGesture];
  if (v37)
  {
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v37];
  }

  v38 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForSBEventGestureBeganWithTimeDelta:v36];
  if (v38)
  {
    [(SBChainableModifierEventResponse *)v5 addChildResponse:v38];
  }

  return v5;
}

- (id)_updateForGestureDidChangeWithEvent:(id)a3
{
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidChangeWithEvent:];
  }

  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateStackedProgress];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _unadjustedGestureTranslation];
  v6 = v5;
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self _isTranslationPastDistanceThresholdToUnconditionallyGoHome:v5])
  {
    self->_gestureHoldTimer = 0;
  }

  v7 = objc_alloc_init(SBSwitcherModifierEventResponse);
  [v4 locationInContainerView];
  v9 = v8;
  v11 = v10;
  v12 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateInMultitaskingIfNeededWithEvent:v4];
  if (v12)
  {
    [(SBChainableModifierEventResponse *)v7 addChildResponse:v12];
  }

  self->_lastTouchLocation.x = v9;
  self->_lastTouchLocation.y = v11;
  if (!self->_everTranslatedUpwards)
  {
    self->_everTranslatedUpwards = v6 < 0.0;
  }

  if (self->_startingEnvironmentMode == 1)
  {
    v13 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    if (![(SBCompleteGestureSwitcherEventResponse *)v13 count])
    {
      inMultitasking = self->_inMultitasking;

      if (!inMultitasking)
      {
        goto LABEL_16;
      }

      self->_cancelledGestureForEmptySwitcher = 1;
      v13 = objc_alloc_init(SBCompleteGestureSwitcherEventResponse);
      [(SBChainableModifierEventResponse *)v7 addChildResponse:v13];
    }
  }

LABEL_16:

  return v7;
}

- (id)_updateForGestureDidEndWithEvent:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_gestureHasBegun)
  {
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  if (self->_gestureHasEnded)
  {
    [SBContinuousExposeHomeGestureSwitcherModifier _updateForGestureDidEndWithEvent:];
  }

  self->_gestureHasEnded = 1;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateGestureTranslationVelocityAndProgressWithEvent:v4];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateShouldResignActiveWithEvent:v4];
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
    v11 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
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
      v24 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeGestureSettings];
      v25 = v24;
      if (v8 == 4 && self->_selectedAppLayout && [v24 injectGestureVelocityForZoomDown])
      {
        [v4 velocityInContainerView];
        v27 = v26;
        v29 = v28;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherViewBounds];
        v31 = v30;
        v32 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeGestureSettings];
        v33 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"transform"];
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

          v41 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self currentVelocityValueForVisibleAppLayout:self->_selectedAppLayout key:@"position"];
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

  v56 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForUpdatingIconViewVisibility:1];
  if (v56)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v56];
  }

  v57 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForActivatingFinalDestination:v8];
  [(SBChainableModifierEventResponse *)v10 addChildResponse:v57];
  if ((v16 & 1) == 0)
  {
    v58 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForActivatingReachabilityIfNeededWithFinalDestination:v8];
    if (v58)
    {
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v58];
    }

    v59 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForCancelingSystemGesturesIfNeededWithFinalDestination:v8];
    if (v59)
    {
      [(SBChainableModifierEventResponse *)v10 addChildResponse:v59];
    }
  }

  v60 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForStudyLogDidEndGestureWithEvent:v4 finalDestination:v8 destinationReason:v9];
  if (v60)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v60];
  }

  v61 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _responseForSBEventGestureEndWithEvent:v4 finalDestination:v8];
  if (v61)
  {
    [(SBChainableModifierEventResponse *)v10 addChildResponse:v61];
  }

  return v10;
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
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _updateTranslationAdjustmentForGestureFromHomeScreenIfNeededWithEvent:v4];
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
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
  v20 = -v11 / v19;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v11];
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

  v33 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];

  if (v33)
  {
    v34 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    self->_selectedIndex = [v34 indexOfObject:self->_selectedAppLayout];
  }

  if (!self->_hideSplitViewHandles && self->_selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self frameForIndex:?];
    SBRectWithSize();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    selectedIndex = self->_selectedIndex;
    v54.receiver = self;
    v54.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v54 frameForIndex:selectedIndex];
    SBRectWithSize();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [(SBAppLayout *)self->_selectedAppLayout allItems];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __103__SBContinuousExposeHomeGestureSwitcherModifier__updateGestureTranslationVelocityAndProgressWithEvent___block_invoke;
    v53[3] = &unk_2783BA128;
    v53[4] = self;
    v53[5] = v36;
    v53[6] = v38;
    v53[7] = v40;
    v53[8] = v42;
    v53[9] = v45;
    v53[10] = v47;
    v53[11] = v49;
    v53[12] = v51;
    [v52 enumerateObjectsUsingBlock:v53];
  }
}

uint64_t __103__SBContinuousExposeHomeGestureSwitcherModifier__updateGestureTranslationVelocityAndProgressWithEvent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 568) layoutRoleForItem:a2];
  [*(a1 + 32) scaleForLayoutRole:v6 inAppLayout:*(*(a1 + 32) + 568)];
  v7 = *(*(a1 + 32) + 568);
  v15.receiver = *(a1 + 32);
  v15.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  objc_msgSendSuper2(&v15, sel_scaleForLayoutRole_inAppLayout_, v6, v7);
  v8 = BSFloatApproximatelyEqualToFloat();
  result = *(a1 + 32);
  if (v8)
  {
    [result frameForLayoutRole:v6 inAppLayout:*(result + 568) withBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v10 = *(*(a1 + 32) + 568);
    v14.receiver = *(a1 + 32);
    v14.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
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

  *(result + 608) = 1;
  *a4 = 1;
  return result;
}

- (void)_updateStackedProgress
{
  if (self->_startingEnvironmentMode == 2)
  {
    v18 = v9;
    v19 = v7;
    v20 = v2;
    v11 = BSFloatLessThanOrEqualToFloat();
    v12 = -0.75;
    if (v11)
    {
      v12 = 0.75;
    }

    v13 = (self->_progressToInSwitcherCardScale + -1.0) / v12 + 1.0;
    v14 = (0.0 - v13) * fabs(self->_translation.x);
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds:v18];
    v16 = fmin(fmax(v13 + v14 / (v15 * 0.25), 0.0), 1.0);
    if (self->_inMultitasking)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    if (BSFloatIsZero())
    {
      if (!self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan)
      {
        self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan = 1;
        self->_translationYWhenTriggeredMultitasking = self->_translation.y;
      }
    }

    else if (!self->_hasBecomeCoplanarSinceGestureFromSwitcherBegan)
    {
LABEL_12:
      self->_stackedProgress = v17;
      return;
    }

    v17 = 0.0;
    goto LABEL_12;
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
    v11 = *&kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_2;
  }

  v12 = kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_2;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds:v17];
  result = v11 * v13;
  if (self->_inMultitasking)
  {
    v14 = 0.1;
    if (!scrunchInitiated)
    {
      v14 = *&v12;
    }

    v15 = result - v14 * v13;
    result = result + v14 * v13;
    v16 = 100.0 - self->_translationYWhenTriggeredMultitasking;
    if (v15 >= v16)
    {
      v16 = v15;
    }

    if (result > v16)
    {
      return v16;
    }
  }

  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v60 = 0;
  v61 = &v60;
  v62 = 0x4010000000;
  v63 = &unk_21F9DA6A3;
  v64 = 0u;
  v65 = 0u;
  v59.receiver = self;
  v59.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v59 frameForIndex:?];
  *&v64 = v5;
  *(&v64 + 1) = v6;
  *&v65 = v7;
  *(&v65 + 1) = v8;
  if (![(SBContinuousExposeHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:a3])
  {
    if (self->_inMultitasking)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
      *&v53 = 0x3FE3333333333333;
      *&v54 = 0x3FF0000000000000;
      *(&v53 + 1) = 1;
      *(&v54 + 1) = 1;
      BSUIConstrainValueToIntervalWithRubberBand();
      v18 = v17;
      [(SBAppSwitcherContinuousExposeSwitcherModifier *)self->_appSwitcherModifier setScaleFactor:?];
      [(SBAppSwitcherContinuousExposeSwitcherModifier *)self->_appSwitcherModifier setHorizontalEdgeSpacingScaleFactor:0.75 / v18];
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x2020000000;
      v57[3] = 0;
      *&v53 = 0;
      *(&v53 + 1) = &v53;
      *&v54 = 0x3010000000;
      v55 = 0;
      v56 = 0;
      *(&v54 + 1) = &unk_21F9DA6A3;
      appSwitcherModifier = self->_appSwitcherModifier;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __63__SBContinuousExposeHomeGestureSwitcherModifier_frameForIndex___block_invoke;
      v52[3] = &unk_2783C0FE8;
      v52[4] = self;
      v52[5] = &v60;
      v52[7] = v57;
      v52[8] = a3;
      v52[6] = &v53;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v52];
      UIRectGetCenter();
      v20 = MEMORY[0x277D76620];
      [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      [*v20 userInterfaceLayoutDirection];
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      SBUnintegralizedRectCenteredAboutPoint();
      v21 = v61;
      v61[4] = v22;
      v21[5] = v23;
      v21[6] = v24;
      v21[7] = v25;
      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(v57, 8);
      v26 = v61;
    }

    else
    {
      arcSwipePulledStripAppLayout = self->_arcSwipePulledStripAppLayout;
      v39 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
      v40 = [v39 objectAtIndex:a3];
      LODWORD(arcSwipePulledStripAppLayout) = [(SBAppLayout *)arcSwipePulledStripAppLayout isEqual:v40];

      v26 = v61;
      if (arcSwipePulledStripAppLayout)
      {
        UIRectGetCenter();
        v41 = [(SBSwitcherModifier *)self windowingConfiguration];
        [v41 stripWidth];
        v43 = v42 / 1.2;

        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rangeForPerspectiveAngleProgressOfAppLayout:self->_arcSwipePulledStripAppLayout outMin:0.0 outMax:v43];
        [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
        v53 = 0u;
        v54 = 0u;
        BYTE8(v53) = 1;
        BYTE8(v54) = 1;
        BSUIConstrainValueToIntervalWithRubberBand();
        SBUnintegralizedRectCenteredAboutPoint();
LABEL_16:
        v26 = v61;
        v61[4] = v44;
        *(v26 + 5) = v45;
        *(v26 + 6) = v46;
        *(v26 + 7) = v47;
      }
    }

    v10 = v26[4];
    v12 = v26[5];
    v14 = v26[6];
    v16 = v26[7];
    goto LABEL_18;
  }

  if (!self->_inExposeMultitasking)
  {
    UIRectGetCenter();
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
    v28 = v27;
    v29 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    v30 = [v29 objectAtIndex:a3];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rangeForPerspectiveAngleProgressOfAppLayout:v30 outMin:0.0 outMax:v28];

    v31 = MEMORY[0x277D76620];
    [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v32 = [*v31 userInterfaceLayoutDirection];
    x = self->_translation.x;
    v34 = v61[4];
    v35 = v61[5];
    v36 = v61[6];
    v37 = v61[7];
    if (v32 == 1)
    {
      if (x >= 0.0)
      {
        CGRectGetMaxX(*&v34);
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self scaleForIndex:a3];
      }

      else
      {
        CGRectGetMinX(*&v34);
      }
    }

    else if (x <= 0.0)
    {
      CGRectGetMinX(*&v34);
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self scaleForIndex:a3];
    }

    else
    {
      CGRectGetMaxX(*&v34);
    }

    v53 = 0u;
    v54 = 0u;
    BYTE8(v53) = 1;
    BYTE8(v54) = 1;
    BSUIConstrainValueToIntervalWithRubberBand();
    SBUnintegralizedRectCenteredAboutPoint();
    goto LABEL_16;
  }

  v58.receiver = self;
  v58.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v58 frameForIndex:a3];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
LABEL_18:
  _Block_object_dispose(&v60, 8);
  v48 = v10;
  v49 = v12;
  v50 = v14;
  v51 = v16;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

double __63__SBContinuousExposeHomeGestureSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  [*(a1[4] + 528) frameForIndex:a1[8]];
  v2 = *(a1[5] + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v7 = [*(a1[4] + 528) scrollViewAttributes];
  [v7 contentSize];
  v8 = *(a1[6] + 8);
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;

  result = *(*(a1[6] + 8) + 32);
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v96 = 0;
  v97 = &v96;
  v98 = 0x4010000000;
  v99 = &unk_21F9DA6A3;
  v100 = 0u;
  v101 = 0u;
  v12 = [v11 isEqual:self->_selectedAppLayout];
  v13 = [v11 itemForLayoutRole:a3];
  v14 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];
  if (BSEqualObjects() && !self->_inExposeMultitasking && (selectedAppLayout = self->_selectedAppLayout) != 0)
  {
    v16 = [(SBAppLayout *)selectedAppLayout containsItem:v13];

    if (v16)
    {
      v17 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
      v18 = [v17 indexOfObject:v11];

      v95.receiver = self;
      v95.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v95 frameForIndex:v18];
      v76 = v20;
      v77 = v19;
      v74 = v22;
      v75 = v21;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self frameForIndex:v18];
      v72 = v24;
      v73 = v23;
      v70 = v26;
      v71 = v25;
      v94.receiver = self;
      v94.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v94 scaleForLayoutRole:a3 inAppLayout:v11];
      v28 = v27;
      v93.receiver = self;
      v93.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v93 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
      v68 = v30;
      v69 = v29;
      v79 = v32;
      v80 = v31;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self scaleForIndex:v18];
      v67 = v33;
      v92.receiver = self;
      v92.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v92 anchorPointForIndex:v18];
      v65 = v35;
      v66 = v34;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self scaleForLayoutRole:a3 inAppLayout:v11];
      v36.f64[0] = v76;
      v36.f64[1] = v74;
      v37.f64[0] = v72;
      v38.f64[0] = v69;
      v37.f64[1] = v70;
      v40.f64[0] = v66;
      v40.f64[1] = v65;
      v41 = v97;
      v42.f64[0] = v80;
      v42.f64[1] = v79;
      __asm { FMOV            V5.2D, #0.5 }

      v38.f64[1] = v68;
      v48.f64[0] = v77;
      v48.f64[1] = v75;
      __asm { FMOV            V3.2D, #-0.5 }

      v50 = vaddq_f64(vmlaq_f64(vaddq_f64(v38, vmlaq_f64(vmlaq_f64(v48, v40, v36), _Q3, v36)), _Q5, v42), vmulq_n_f64(vmulq_n_f64(vaddq_f64(v38, vmlaq_f64(vmulq_f64(v40, vnegq_f64(v36)), _Q5, v42)), 1.0 - v28), *&v67));
      v48.f64[0] = v73;
      v48.f64[1] = v71;
      v78 = vdivq_f64(vsubq_f64(v50, vmlaq_n_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v48, v40, v37), _Q3, v37), _Q5, v42), vmulq_n_f64(vmlaq_f64(vmulq_f64(v40, vnegq_f64(v37)), _Q5, v42), 1.0 - v39), *&v67)), vdupq_lane_s64(v67, 0));
      v97[2] = v78;
      v41[3].f64[0] = v80;
      v41[3].f64[1] = v79;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (v12)
  {
    v91.receiver = self;
    v91.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v91 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v79 = v52;
    v80 = v51;
    v90 = 0uLL;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _getActivePositionAndScaleForLayoutRole:a3 inAppLayout:v11 withBounds:&v90 outPosition:0 outScale:x, y, width, height];
    v53.f64[0] = v80;
    v53.f64[1] = v79;
    __asm { FMOV            V2.2D, #-0.5 }

    v78 = vaddq_f64(v90, vmulq_f64(v53, _Q2));
  }

  else if (self->_inMultitasking)
  {
    appSwitcherModifier = self->_appSwitcherModifier;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __91__SBContinuousExposeHomeGestureSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v82[3] = &unk_2783AA640;
    v84 = &v96;
    v85 = a3;
    v82[4] = self;
    v83 = v11;
    v86 = x;
    v87 = y;
    v88 = width;
    v89 = height;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v82];

    v80 = v97[3].f64[0];
    v78 = v97[2];
    v79 = v97[3].f64[1];
  }

  else
  {
    v81.receiver = self;
    v81.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v81 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v56 = v97;
    v97[2].f64[0] = v57.f64[0];
    v56[5] = v58;
    v56[6] = v59;
    v56[7] = v60;
    v57.f64[1] = v58;
    v78 = v57;
    v79 = v60;
    v80 = v59;
  }

LABEL_12:

  _Block_object_dispose(&v96, 8);
  v61 = v78.f64[0];
  v62 = v79;
  v63 = v78.f64[1];
  v64 = v80;
  result.size.height = v62;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v61;
  return result;
}

uint64_t __91__SBContinuousExposeHomeGestureSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 528) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = [v6 itemForLayoutRole:a3];
  v8 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];
  if (BSEqualObjects() && !self->_inExposeMultitasking && (selectedAppLayout = self->_selectedAppLayout) != 0)
  {
    v10 = [(SBAppLayout *)selectedAppLayout containsItem:v7];

    if (v10)
    {
      v11 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
      -[SBContinuousExposeHomeGestureSwitcherModifier scaleForIndex:](self, "scaleForIndex:", [v11 indexOfObject:v6]);
      v13 = v12;

      if (BSFloatIsZero())
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 1.0 / v13;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v18 = 0.0;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _getActivePositionAndScaleForLayoutRole:a3 inAppLayout:v6 withBounds:0 outPosition:&v18 outScale:?];
    v14 = v18;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v17 scaleForLayoutRole:a3 inAppLayout:v6];
    v14 = v15;
  }

LABEL_12:

  return v14;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?])
  {
    if (self->_inExposeMultitasking)
    {
      v20.receiver = self;
      v20.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v20 scaleForIndex:a3];
    }

    else
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
      v8 = v7;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rangeForPerspectiveAngleProgressOfAppLayout:self->_selectedAppLayout outMin:1.0 outMax:0.5];
      v5 = v8 * v9;
    }

    v10 = v22;
LABEL_8:
    v10[3] = v5;
    goto LABEL_9;
  }

  if (!self->_inMultitasking)
  {
    v18.receiver = self;
    v18.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v18 scaleForIndex:a3];
    *(v22 + 3) = v13;
    arcSwipePulledStripAppLayout = self->_arcSwipePulledStripAppLayout;
    v15 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    v16 = [v15 objectAtIndex:a3];
    LODWORD(arcSwipePulledStripAppLayout) = [(SBAppLayout *)arcSwipePulledStripAppLayout isEqual:v16];

    if (!arcSwipePulledStripAppLayout)
    {
      goto LABEL_9;
    }

    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rangeForPerspectiveAngleProgressOfAppLayout:self->_arcSwipePulledStripAppLayout outMin:1.0 outMax:1.6];
    v10 = v22;
    v5 = v17 * v22[3];
    goto LABEL_8;
  }

  appSwitcherModifier = self->_appSwitcherModifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__SBContinuousExposeHomeGestureSwitcherModifier_scaleForIndex___block_invoke;
  v19[3] = &unk_2783AA618;
  v19[4] = self;
  v19[5] = &v21;
  v19[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v19];
LABEL_9:
  v11 = v22[3];
  _Block_object_dispose(&v21, 8);
  return v11;
}

uint64_t __63__SBContinuousExposeHomeGestureSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 528) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([v6 isEqual:self->_selectedAppLayout])
  {
    if (!self->_inExposeMultitasking)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      v7 = 0.0;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _maxPerspectiveAngleForSelectedAppLayout];
      BSDegreesToRadians();
      v9 = v8;
      goto LABEL_6;
    }

LABEL_5:
    v7 = *MEMORY[0x277CBF348];
    v9 = *(MEMORY[0x277CBF348] + 8);
    goto LABEL_6;
  }

  if (self->_inMultitasking)
  {
    goto LABEL_5;
  }

  v35.receiver = self;
  v35.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v35 perspectiveAngleForIndex:a3];
  v7 = v12;
  v9 = v13;
  x = self->_translation.x;
  if (x != 0.0)
  {
    v15 = MEMORY[0x277D76620];
    v16 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v17 = -x;
    if (v16 != 1)
    {
      v17 = x;
    }

    if (v17 <= 0.0)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _previousRecentAppLayout];
    }

    else
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _nextRecentAppLayout];
    }
    v18 = ;
    objc_storeStrong(&self->_arcSwipePulledStripAppLayout, v18);

    if ([(SBAppLayout *)self->_arcSwipePulledStripAppLayout isEqual:v6])
    {
      BSRadiansToDegrees();
      v20 = v19;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      v22 = fabs(self->_translation.x) - v21 / 6.0;
      v23 = 0.0;
      if (v22 > 0.0)
      {
        v24 = v22 / (v21 - v21 / 6.0);
        if (v24 <= 0.0)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v24 + 0.0;
        }

        v23 = fmin(v25, 1.0);
      }

      v26 = [*v15 userInterfaceLayoutDirection];
      v27 = 1.0;
      if (v26 == 1)
      {
        v27 = -1.0;
      }

      v28 = v20 + v23 * -(v20 - v27 * 25.0);
      BSDegreesToRadians();
      v9 = v29;
      if (fabs(v28) >= fabs(v20))
      {
        v30 = 0;
      }

      else
      {
        v30 = v6;
      }

      v31 = v30;
      if ((BSEqualObjects() & 1) == 0)
      {
        v32 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
        v33 = [v32 animationSettings];
        v34 = [v33 arcSwipeSwitcherGlancingSettings];

        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _beginAnimatingArcSwipePullingPropertyWithMode:3 settings:v34];
        objc_storeStrong(&self->_arcSwipePulledStripAppLayout, v30);
      }
    }
  }

LABEL_6:

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  v10 = [v9 itemForLayoutRole:a3];
  v11 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];
  v12 = BSEqualObjects();

  if (v12)
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v19 perspectiveAngleForLayoutRole:a3 inAppLayout:v9 withPerspectiveAngle:x, y];
    v13 = v15;
    v14 = v16;
  }

  v17 = v13;
  v18 = v14;
  result.y = v18;
  result.x = v17;
  return result;
}

- (double)_rangeForPerspectiveAngleProgressOfAppLayout:(id)a3 outMin:(double)a4 outMax:(double)a5
{
  v8 = a3;
  v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  -[SBContinuousExposeHomeGestureSwitcherModifier perspectiveAngleForIndex:](self, "perspectiveAngleForIndex:", [v9 indexOfObject:v8]);
  BSRadiansToDegrees();
  v11 = v10;

  v12 = [v8 isEqual:self->_selectedAppLayout];
  v13 = 0.0;
  v14 = MEMORY[0x277D76620];
  if ((v12 & 1) == 0)
  {
    [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v15 = [(SBSwitcherModifier *)self windowingConfiguration];
    [v15 stripTiltAngle];
    BSRadiansToDegrees();
    v13 = v16;
  }

  if ([v8 isEqual:self->_selectedAppLayout])
  {
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _maxPerspectiveAngleForSelectedAppLayout];
  }

  else
  {
    v18 = [*v14 userInterfaceLayoutDirection];
    v17 = -25.0;
    if (v18 != 1)
    {
      v17 = 25.0;
    }
  }

  v19 = (a5 - a4) * (v11 - v13) / (v17 - v13) + a4;

  return v19;
}

- (CGPoint)_maxPerspectiveAngleForSelectedAppLayout
{
  v3 = MEMORY[0x277D76620];
  v4 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  x = self->_translation.x;
  v6 = [*v3 userInterfaceLayoutDirection];
  v7 = -x;
  if (v6 != 1)
  {
    v7 = x;
  }

  v8 = v7 <= 0.0;
  v9 = 45.0;
  if (v8)
  {
    v9 = 23.0;
  }

  v10 = -v9;
  if (v4 != 1)
  {
    v10 = v9;
  }

  v11 = 0.0;
  result.y = v10;
  result.x = v11;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v21 = 0;
  v22 = 0;
  v20 = &unk_21F9DA6A3;
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?];
  if (self->_inExposeMultitasking && v5)
  {
    v16.receiver = self;
    v16.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v16 anchorPointForIndex:a3];
  }

  else
  {
    if (!v5 && self->_inMultitasking)
    {
      appSwitcherModifier = self->_appSwitcherModifier;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__SBContinuousExposeHomeGestureSwitcherModifier_anchorPointForIndex___block_invoke;
      v15[3] = &unk_2783AA618;
      v15[4] = self;
      v15[5] = &v17;
      v15[6] = a3;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v15];
      v8 = v18[4];
      v9 = v18[5];
      goto LABEL_7;
    }

    v14.receiver = self;
    v14.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v14 anchorPointForIndex:a3];
  }

  v8 = v6;
  v9 = v7;
  v10 = v18;
  v18[4] = v6;
  v10[5] = v7;
LABEL_7:
  _Block_object_dispose(&v17, 8);
  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

uint64_t __69__SBContinuousExposeHomeGestureSwitcherModifier_anchorPointForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 528) anchorPointForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (BOOL)shouldPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_inExposeMultitasking && [(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self selectedAppLayout];
    v9 = [v6 isOrContainsAppLayout:v8];

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      v7 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v11 shouldPinLayoutRolesToSpace:a3];
    }
  }

  return v7;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (self->_inExposeMultitasking && [(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_9;
  }

  v7 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self selectedAppLayout];
  v8 = [v6 isOrContainsAppLayout:v7];

  if ((v8 & 1) == 0)
  {
    if (self->_gestureHasEnded || !self->_inMultitasking)
    {
      v11.receiver = self;
      v11.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v11 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (double)adjustedSpaceAccessoryViewScale:(double)a3 forAppLayout:(id)a4
{
  v6 = a4;
  if (!self->_inMultitasking || [(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v9.receiver = self;
    v9.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v9 adjustedSpaceAccessoryViewScale:v6 forAppLayout:a3];
    a3 = v7;
  }

  return a3;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)a3 forAppLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  if (!self->_inMultitasking || [(SBAppLayout *)self->_selectedAppLayout isEqual:v9])
  {
    v18.receiver = self;
    v18.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v18 adjustedSpaceAccessoryViewFrame:v9 forAppLayout:x, y, width, height];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)a3 forAppLayout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!self->_inMultitasking || [(SBAppLayout *)self->_selectedAppLayout isEqual:v7])
  {
    v12.receiver = self;
    v12.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v12 adjustedSpaceAccessoryViewAnchorPoint:v7 forAppLayout:x, y];
    x = v8;
    y = v9;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)continuousExposeIdentifiersInSwitcher
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__118;
  v12 = __Block_byref_object_dispose__118;
  v7.receiver = self;
  v7.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v13 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v7 continuousExposeIdentifiersInSwitcher];
  if (self->_inMultitasking && self->_selectedAppLayout)
  {
    appSwitcherModifier = self->_appSwitcherModifier;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__SBContinuousExposeHomeGestureSwitcherModifier_continuousExposeIdentifiersInSwitcher__block_invoke;
    v6[3] = &unk_2783A8CE0;
    v6[4] = self;
    v6[5] = &v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v6];
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __86__SBContinuousExposeHomeGestureSwitcherModifier_continuousExposeIdentifiersInSwitcher__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[66];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v2 continuousExposeIdentifiersInStrip];
  v5 = [v3 adjustedContinuousExposeIdentifiersInSwitcherFromPreviousIdentifiersInSwitcher:v4 identifiersInStrip:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v11 appLayoutsForContinuousExposeIdentifier:v4];
  v6 = v5;
  if (self->_inMultitasking && [v5 count] >= 2)
  {
    v7 = [(SBAppLayout *)self->_selectedAppLayout continuousExposeIdentifier];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
      [v9 removeObject:self->_selectedAppLayout];
      [v9 addObject:self->_selectedAppLayout];

      v6 = v9;
    }
  }

  return v6;
}

- (id)topMostLayoutElements
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__118;
  v31 = __Block_byref_object_dispose__118;
  v32 = 0;
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isShowingOrAnimatingCardsForFlyIn])
  {
    appSwitcherModifier = self->_appSwitcherModifier;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__SBContinuousExposeHomeGestureSwitcherModifier_topMostLayoutElements__block_invoke;
    v26[3] = &unk_2783A8CE0;
    v26[4] = self;
    v26[5] = &v27;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v26];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v25 topMostLayoutElements];
    v5 = v28[5];
    v28[5] = v4;
  }

  if (self->_arcSwipePulledStripAppLayout || self->_arcSwipePullingChangedProperty)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v28[5];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
    if (v7)
    {
      v8 = *v22;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v11 = objc_opt_class();
          v12 = SBSafeCast(v11, v10);
          v13 = v12;
          if (v12 && [v12 isEqual:{self->_arcSwipePulledStripAppLayout, v21}])
          {
            v14 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:v13 toTopMostLayoutElements:v28[5] orderFront:1];
            v15 = v28[5];
            v28[5] = v14;

            goto LABEL_17;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v21 objects:v33 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  selectedAppLayout = self->_selectedAppLayout;
  if (selectedAppLayout)
  {
    v17 = [(SBSwitcherModifier *)self topMostLayoutElementsByAddingAppLayoutAndAccessories:selectedAppLayout toTopMostLayoutElements:v28[5] orderFront:1];
    v18 = v28[5];
    v28[5] = v17;
  }

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v19;
}

void __70__SBContinuousExposeHomeGestureSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 528) topMostLayoutElements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = &unk_21F9DA6A3;
  v33 = 0u;
  v34 = 0u;
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self _isSelectedAppLayoutAtIndex:?])
  {
    v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v6 = [(SBSwitcherModifier *)self windowingConfiguration];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayCornerRadius];
    [v6 nonSolariumStageCornerRadii];
    v7 = [v5 windowingSettings];
    [v7 switcherCornerRadius];

    if (self->_startingEnvironmentMode != 1 && [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayoutContainsAnUnoccludedMaximizedDisplayItem:self->_selectedAppLayout])
    {
      BSFloatIsZero();
    }

    [(SBContinuousExposeHomeGestureSwitcherModifier *)self scaleForIndex:a3];
    SBRectCornerRadiiForRadius();
    v14 = v30;
    v30[4] = v15;
    v14[5] = v16;
    v14[6] = v17;
    v14[7] = v18;
  }

  else if (self->_inMultitasking)
  {
    appSwitcherModifier = self->_appSwitcherModifier;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __69__SBContinuousExposeHomeGestureSwitcherModifier_cornerRadiiForIndex___block_invoke;
    v28[3] = &unk_2783AA618;
    v28[4] = self;
    v28[5] = &v29;
    v28[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v28];
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v27 cornerRadiiForIndex:a3];
    v9 = v30;
    v30[4] = v10;
    v9[5] = v11;
    v9[6] = v12;
    v9[7] = v13;
  }

  v19 = *(v30 + 4);
  v20 = *(v30 + 5);
  v21 = *(v30 + 6);
  v22 = *(v30 + 7);
  _Block_object_dispose(&v29, 8);
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  result.topRight = v26;
  result.bottomRight = v25;
  result.bottomLeft = v24;
  result.topLeft = v23;
  return result;
}

uint64_t __69__SBContinuousExposeHomeGestureSwitcherModifier_cornerRadiiForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 528) cornerRadiiForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
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
    if (-[SBContinuousExposeHomeGestureSwitcherModifier _shouldResignActiveBasedOnCardScale](self, "_shouldResignActiveBasedOnCardScale") && (-[SBContinuousExposeHomeGestureSwitcherModifier displayItemInSlideOver](self, "displayItemInSlideOver"), v13 = objc_claimAutoreleasedReturnValue(), [v11 itemForLayoutRole:a3], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, !v15))
    {
      v48 = 0;
      v49 = &v48;
      v50 = 0x4010000000;
      v51 = &unk_21F9DA6A3;
      exposeModifier = self->_exposeModifier;
      v52 = 0u;
      v53 = 0u;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __102__SBContinuousExposeHomeGestureSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke;
      v40[3] = &unk_2783AA640;
      v42 = &v48;
      v43 = a3;
      v40[4] = self;
      v41 = v11;
      v44 = topLeft;
      v45 = bottomLeft;
      v46 = bottomRight;
      v47 = topRight;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v40];
      v19 = v49[4];
      v21 = v49[5];
      v17 = v49[6];
      v25 = v49[7];

      _Block_object_dispose(&v48, 8);
    }

    else
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayCornerRadius];
      v17 = v16;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v11];
      SBRectCornerRadiiForRadius();
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v11];
      v27 = [v11 itemForLayoutRole:a3];
      v28 = [v26 flexibleAutoLayoutItemForDisplayItem:v27];
      v29 = [v28 intersectedDisplayRectCorners];

      if (v29)
      {
        v19 = v17;
      }

      if ((v29 & 2) != 0)
      {
        v25 = v17;
      }

      if ((v29 & 4) != 0)
      {
        v21 = v17;
      }

      if ((v29 & 8) == 0)
      {
        v17 = v23;
      }
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v39 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
    v19 = v30;
    v21 = v31;
    v17 = v32;
    v25 = v33;
  }

  v34 = v19;
  v35 = v21;
  v36 = v17;
  v37 = v25;
  result.topRight = v37;
  result.bottomRight = v36;
  result.bottomLeft = v35;
  result.topLeft = v34;
  return result;
}

uint64_t __102__SBContinuousExposeHomeGestureSwitcherModifier_cornerRadiiForLayoutRole_inAppLayout_withCornerRadii___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 536) cornerRadiiForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withCornerRadii:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (([v6 isEqual:self->_selectedAppLayout] & 1) != 0 || (v7 = 0.0, v8 = 0.0, !self->_inMultitasking))
  {
    v7 = 0.0;
    v8 = 0.0;
    if (([v6 isEqual:self->_arcSwipePulledStripAppLayout] & 1) == 0)
    {
      v13.receiver = self;
      v13.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v13 wallpaperGradientAttributesForLayoutRole:a3 inAppLayout:v6];
      v8 = v9;
      v7 = v10;
    }
  }

  v11 = v8;
  v12 = v7;
  result.trailingAlpha = v12;
  result.leadingAlpha = v11;
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (([v6 isEqual:self->_selectedAppLayout] & 1) != 0 || (v7 = 0.0, !self->_inMultitasking))
  {
    v7 = 0.0;
    if (([v6 isEqual:self->_arcSwipePulledStripAppLayout] & 1) == 0)
    {
      v10.receiver = self;
      v10.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v10 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
      v7 = v8;
      if (BSFloatIsZero())
      {
        v7 = v7 * self->_stackedProgress + 0.0;
      }
    }
  }

  return v7;
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
    v42.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v42 visibleAppLayouts];
    v6 = [v5 mutableCopy];

    if (self->_selectedAppLayout)
    {
      [v6 addObject:?];
    }

    v7 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _selectedAppLayoutIndex];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    v10 = v9;
    if ((self->_shouldResignActive || self->_inMultitasking || self->_startingEnvironmentMode == 2) && [v9 count])
    {
      if (self->_inMultitasking || (v11 = self->_startingEnvironmentMode != 1, (BSFloatIsZero() & 1) == 0))
      {
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
        v14 = v13;
        v40 = v13;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
        v16 = v15;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _coplanarSpacing];
        v18 = v16 * v17;
        v19 = v16 * v17 + v14 * v16;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self frameForIndex:v8];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        UIRectGetCenter();
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
        CGAffineTransformMakeScale(&v41, v28, v28);
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        CGRectApplyAffineTransform(v44, &v41);
        SBUnintegralizedRectCenteredAboutPoint();
        v30 = v29 - v18;
        v32 = v40 - (v29 + v31) - v18;
        if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isRTLEnabled])
        {
          v33 = v32;
        }

        else
        {
          v33 = v30;
        }

        v11 = vcvtpd_s64_f64(v33 / v19);
        if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isRTLEnabled])
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

      else
      {
        v12 = 1;
      }

      v35 = (v8 - v12) & ~((v8 - v12) >> 63);
      v36 = v11 + v8;
      v37 = [v10 count];
      if (v36 >= v37 - 1)
      {
        v36 = v37 - 1;
      }

      if (v35 < [v10 count] && (v36 & 0x8000000000000000) == 0)
      {
        v38 = [v10 subarrayWithRange:{v35, v36 - v35 + 1}];
        [v6 addObjectsFromArray:v38];
      }
    }
  }

  return v6;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v12 animationAttributesForLayoutElement:v4];
  if (![v4 switcherLayoutElementType])
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 layoutSettings];
    v8 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _layoutSettingsForAppLayout:v4 layoutSettings:v7];
    [v6 setLayoutSettings:v8];

    v9 = [v6 opacitySettings];
    [v6 setOpacitySettings:v9];

    v10 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _cornerRadiusSettings];
    [v6 setCornerRadiusSettings:v10];

    v5 = v6;
  }

  return v5;
}

- (id)_cornerRadiusSettings
{
  v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
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
      v9 = v10 * -0.37 + 0.45;
    }

    goto LABEL_7;
  }

  if (self->_inExposeMultitasking)
  {
    v9 = 0.45;
LABEL_7:
    v11 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
    [v11 setTrackingResponse:v9];
    [v11 setTrackingDampingRatio:0.85];
LABEL_8:
    v16 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    [v11 setFrameRateRange:1114113 highFrameRateReason:{*&v16.minimum, *&v16.maximum, *&v16.preferred}];
    goto LABEL_9;
  }

  if ([(SBAppLayout *)self->_selectedAppLayout isEqual:v6])
  {
    v11 = v7;
  }

  else
  {
    if (!-[SBContinuousExposeHomeGestureSwitcherModifier isShowingOrAnimatingCardsForFlyIn](self, "isShowingOrAnimatingCardsForFlyIn") && !self->_arcSwipePullingChangedProperty && ![v6 isEqual:self->_arcSwipePulledStripAppLayout])
    {
      v11 = objc_alloc_init(MEMORY[0x277D65E60]);
      [v11 setDefaultValues];
      [v11 setTrackingResponse:0.0];
      goto LABEL_8;
    }

    v13 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v14 = [v13 animationSettings];
    v11 = [v14 arcSwipeSwitcherGlancingSettings];
  }

LABEL_9:

  return v11;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v16 = 0;
  v17 = 0;
  v15 = &unk_21F9DA6A3;
  if (self->_inMultitasking && !self->_gestureHasEnded)
  {
    appSwitcherModifier = self->_appSwitcherModifier;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SBContinuousExposeHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
    v11[3] = &unk_2783AA6B8;
    v11[4] = self;
    v11[5] = &v12;
    v11[6] = a3;
    v11[7] = a4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appSwitcherModifier usingBlock:v11];
  }

  else
  {
    exposeModifier = self->_exposeModifier;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__SBContinuousExposeHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke_2;
    v10[3] = &unk_2783AA6B8;
    v10[4] = self;
    v10[5] = &v12;
    v10[6] = a3;
    v10[7] = a4;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v10];
  }

  v6 = v13[4];
  v7 = v13[5];
  _Block_object_dispose(&v12, 8);
  v8 = v6;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

uint64_t __81__SBContinuousExposeHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(void *a1)
{
  result = [*(a1[4] + 528) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

uint64_t __81__SBContinuousExposeHomeGestureSwitcherModifier_contentOffsetForIndex_alignment___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 536) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (double)_scaleForTranslation:(CGPoint)a3
{
  if (self->_scrunchInitiated)
  {
    x = self->_translationWithoutScale.x;
    y = self->_translationWithoutScale.y;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds:a3.x];
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

  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v9];
  v11 = v10;
  startingEnvironmentMode = self->_startingEnvironmentMode;
  if (startingEnvironmentMode == 1)
  {
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _switcherCardScale];
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
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _switcherCardScale];
    v18 = progressToInSwitcherCardScale * (v17 + -1.0) + 1.0;
  }

  else
  {
    v19 = 1.0;
    if (v15 == 2)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _switcherCardScale];
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
      v23 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
      [v23 offscreenCardScaleForFlyIn];
    }

    BSUIConstrainValueToIntervalWithRubberBand();
    return v24;
  }

  return v18;
}

- (double)_scaleForOffscreenAdjacentCardsForFlyIn
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 offscreenCardScaleForFlyIn];
  v5 = v4;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
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
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
    translationYWhenTriggeredMultitasking = self->_translationYWhenTriggeredMultitasking;
    if (translationYWhenTriggeredMultitasking > 100.0 - v5)
    {
      translationYWhenTriggeredMultitasking = 100.0 - v5;
    }

    v7 = y;
    if (y < translationYWhenTriggeredMultitasking)
    {
      v7 = translationYWhenTriggeredMultitasking + (1.0 - ((translationYWhenTriggeredMultitasking - y) / (v5 + translationYWhenTriggeredMultitasking) * 2.0 + -1.0) * ((translationYWhenTriggeredMultitasking - y) / (v5 + translationYWhenTriggeredMultitasking) * 2.0 + -1.0)) * -0.25 * (v5 + translationYWhenTriggeredMultitasking);
    }

    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
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
  v53.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v48 = height;
  v49 = width;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v53 frameForLayoutRole:a3 inAppLayout:v15 withBounds:x, y, width, height];
  UIRectGetCenter();
  v18 = v17;
  v45 = v19;
  v52.receiver = self;
  v52.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v52 scaleForLayoutRole:a3 inAppLayout:v15];
  v21 = v20;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v23 = v22;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _frameOffsetForTranslation:self->_translation.x, self->_translation.y];
  v46 = v25;
  v47 = v24;
  v26 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v15];

  [v26 boundingBox];
  v28 = v27;
  v30 = v29;
  v31 = [v26 autoLayoutItems];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __133__SBContinuousExposeHomeGestureSwitcherModifier__getActivePositionAndScaleForLayoutRole_inAppLayout_withBounds_outPosition_outScale___block_invoke;
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

uint64_t __133__SBContinuousExposeHomeGestureSwitcherModifier__getActivePositionAndScaleForLayoutRole_inAppLayout_withBounds_outPosition_outScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayItem];
  v4 = [(SBDisplayItem *)v3 isEqualToItem:?];

  return v4;
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
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self floatingDockHeight];
      v6 = v7 * -0.5;
      if (self->_scrunchInitiated)
      {
        v8 = (v6 * 0.25 - v6) * self->_centroid.y;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
        v6 = v6 + v8 / v9;
      }
    }
  }

  v10 = *v5;
  if (self->_scrunchInitiated)
  {
    if (self->_startingEnvironmentMode != 1)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      v12 = v11;
      v14 = v13;
      x = self->_centroid.x;
      v16 = self->_initialCentroid.x;
      v17 = x - v16;
      v18 = (self->_centroid.y - self->_initialCentroid.y) * (vabdd_f64(x, v16) / (v12 * -0.8) + 1.0);
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:v18];
      v20 = v19;
      if (self->_startingEnvironmentMode == 2 && v19 < 0.0)
      {
        progressToInSwitcherCardScale = self->_progressToInSwitcherCardScale;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
        v23 = progressToInSwitcherCardScale * (0.0 - v22);
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
        v25 = v6 - (v24 + v23);
      }

      else
      {
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
        v25 = v6 + v20 * v38 + 0.0;
      }

      UIRectGetCenter();
      v40 = v39;
      v42 = v41;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:v17, v18];
      v44 = v43;
      v10 = v10 - (v40 - self->_initialCentroid.x) * (1.0 - v43);
      v6 = v25 - (v42 - self->_initialCentroid.y) * (1.0 - v43);
      v45 = v14 * ((1.0 - v43) * 0.5);
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
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
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _gestureProgressToMaxTranslationForTranslation:y];
    v27 = v26;
    if (self->_startingEnvironmentMode == 2 && v26 < 0.0)
    {
      v28 = self->_progressToInSwitcherCardScale;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v30 = v28 * (0.0 - v29);
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
      v6 = v6 - (v31 + v30);
    }

    else
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
      v6 = v6 + v27 * v32 + 0.0;
    }

    if (self->_startingEnvironmentMode != 1)
    {
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
      v34 = v33;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
      v36 = v35;
      v37 = 1.0;
      if (self->_startingEnvironmentMode == 2)
      {
        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _switcherCardScale];
      }

      v10 = v10 + (v36 * v37 - v36 * v34) * 0.5 * (self->_touchOffset.x / (v36 * 0.5));
    }
  }

  v50 = v10;
  v51 = v6;
  result.y = v51;
  result.x = v50;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self peekingAppLayout];

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v13 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  return v11;
}

- (double)wallpaperOverlayAlphaForIndex:(unint64_t)a3
{
  stackedProgress = self->_stackedProgress;
  v6.receiver = self;
  v6.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v6 wallpaperOverlayAlphaForIndex:a3];
  return stackedProgress * v4 + 0.0;
}

- (double)lighteningAlphaForIndex:(unint64_t)a3
{
  stackedProgress = self->_stackedProgress;
  v6.receiver = self;
  v6.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v6 lighteningAlphaForIndex:a3];
  return stackedProgress * v4 + 0.0;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)a3
{
  result = 0.0;
  if (!self->_inMultitasking)
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v4 titleAndIconOpacityForIndex:a3, 0.0];
  }

  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  result = 1.0;
  if (!self->_inMultitasking)
  {
    v5.receiver = self;
    v5.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v5 shadowOpacityForLayoutRole:a3 atIndex:a4, 1.0];
  }

  return result;
}

- (double)homeScreenAlpha
{
  if (self->_startingEnvironmentMode == 1)
  {
    if (!self->_inMultitasking)
    {
      v11.receiver = self;
      v11.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v11 homeScreenAlpha];
      return result;
    }
  }

  else if (![(SBContinuousExposeHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]|| [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]== 3)
  {
    progressToMaxTranslation = self->_progressToMaxTranslation;
    toHomeScreenAlpha = self->_toHomeScreenAlpha;
    v10.receiver = self;
    v10.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v10 homeScreenAlpha];
    v7 = progressToMaxTranslation * (toHomeScreenAlpha - v6);
    v9.receiver = self;
    v9.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v9 homeScreenAlpha];
    return v7 + v8;
  }

  return self->_toHomeScreenAlpha;
}

- (double)homeScreenScale
{
  v9.receiver = self;
  v9.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v9 homeScreenScale];
  if (self->_startingEnvironmentMode == 1)
  {
    y = self->_translation.y;
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
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
  v9.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)&v9 wallpaperScale];
  v4 = v3;
  if (self->_startingEnvironmentMode == 1 && self->_inMultitasking)
  {
    v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
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
        v17.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)&v17 homeScreenDimmingAlpha:v13.receiver];
      }
    }

    else
    {
      v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self windowManagementContext];
      v5 = [v4 isFlexibleWindowingEnabled];

      if (v5)
      {
        v16.receiver = self;
        v16.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)&v16 homeScreenDimmingAlpha];
        v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
        v7 = [v6 windowingSettings];
        [v7 maxHomeScreenDimmingAlphaForNonFullscreen];

        BSFloatByLinearlyInterpolatingFloats();
      }

      else
      {
        progressToMaxTranslation = self->_progressToMaxTranslation;
        toHomeScreenDimmingAlpha = self->_toHomeScreenDimmingAlpha;
        v15.receiver = self;
        v15.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)&v15 homeScreenDimmingAlpha];
        v11 = progressToMaxTranslation * (toHomeScreenDimmingAlpha - v10);
        v14.receiver = self;
        v14.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
        [(SBContinuousExposeHomeGestureSwitcherModifier *)&v14 homeScreenDimmingAlpha];
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
    [(SBContinuousExposeHomeGestureSwitcherModifier *)&v13 homeScreenDimmingAlpha:self];
  }

  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if (self->_startingEnvironmentMode == 1)
  {
    return 3;
  }

  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder:v2]&& SBFEffectiveHomeButtonType() != 2)
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
      v16.receiver = self;
      v16.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v16 homeScreenBackdropBlurProgress];
      toHomeScreenBlurProgress = v9;
    }
  }

  else
  {
    if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self homeScreenHasOpenFolder]&& [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeScreenBackdropBlurType]!= 3)
    {
      toHomeScreenBlurProgress = self->_toHomeScreenBlurProgress;
    }

    else
    {
      progressToMaxTranslation = self->_progressToMaxTranslation;
      v5 = self->_toHomeScreenBlurProgress;
      v15.receiver = self;
      v15.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v15 homeScreenBackdropBlurProgress];
      v7 = progressToMaxTranslation * (v5 - v6);
      v14.receiver = self;
      v14.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
      [(SBContinuousExposeHomeGestureSwitcherModifier *)&v14 homeScreenBackdropBlurProgress];
      toHomeScreenBlurProgress = v7 + v8;
    }

    v10 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v11 = [v10 windowingSettings];
    if ([v11 blurWallpaperInApps])
    {
      startingEnvironmentMode = self->_startingEnvironmentMode;

      if (startingEnvironmentMode == 3 && toHomeScreenBlurProgress < 0.5)
      {
        toHomeScreenBlurProgress = 0.5;
      }
    }

    else
    {
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
      v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
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
    v5.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    return [(SBContinuousExposeHomeGestureSwitcherModifier *)&v5 isContainerStatusBarVisible];
  }

  return v3;
}

- (unint64_t)hiddenContentStatusBarPartsForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (![(SBContinuousExposeHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale])
  {
    goto LABEL_4;
  }

  v7 = [v6 itemForLayoutRole:a3];
  v8 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];
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
    v10.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v8 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v10 occlusionStateForLayoutRole:a3 inAppLayout:v6];
  }

  return v8;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v15 adjustedAppLayoutsForAppLayouts:v4];
  v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self displayItemInSlideOver];
  if (v6 && ([v4 firstObject], v7 = objc_claimAutoreleasedReturnValue(), -[SBContinuousExposeHomeGestureSwitcherModifier layoutAttributesForDisplayItem:inAppLayout:](self, "layoutAttributesForDisplayItem:inAppLayout:", v6, v7), v8 = objc_claimAutoreleasedReturnValue(), -[SBDisplayItemLayoutAttributes slideOverConfiguration](v8, v14), v9 = v14[33], v8, v7, v9 == 1))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__SBContinuousExposeHomeGestureSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v12[3] = &unk_2783A8CB8;
    v13 = v6;
    v10 = [v5 bs_filter:v12];
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
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

    v7 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
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
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  if (!self->_selectedAppLayout)
  {
    goto LABEL_4;
  }

  v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
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

- (id)visibleSplitViewHandleNubViews
{
  if (self->_hideSplitViewHandles)
  {
    v2 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v4 visibleSplitViewHandleNubViews];
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
    v4.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v4 visibleSplitViewHandleDimmingViews];
  }

  return v2;
}

- (id)appLayoutsToResignActive
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_shouldResignActive)
  {
    v2 = MEMORY[0x277CBEAC0];
    v3 = MEMORY[0x277CBEB98];
    v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 dictionaryWithObject:v5 forKey:&unk_283372080];
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v7 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v20 appLayoutsToResignActive];
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

    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:&unk_283372080];
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
    v4.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v4 keyboardSuppressionMode];
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
    v5.super_class = SBContinuousExposeHomeGestureSwitcherModifier;
    v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)&v5 asyncRenderingAttributesForAppLayout:a3];
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
  v10 = __65__SBContinuousExposeHomeGestureSwitcherModifier_debugDescription__block_invoke;
  v11 = &unk_2783A92D8;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:0 multilinePrefix:@"\t" block:&v8];
  v6 = [v5 build];

  return v6;
}

id __65__SBContinuousExposeHomeGestureSwitcherModifier_debugDescription__block_invoke(uint64_t a1)
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

  v8 = [*(a1 + 32) appendBool:*(v4 + 177) withName:@"inExposeMultitasking"];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 184) withName:@"inExposeMultitaskingChangedProperty"];
  v10 = *(a1 + 40);
  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = *(a1 + 32);
    [v11 presentationValue];
    v13 = [v12 appendFloat:@"inExposeMultitaskingChangedProperty.presentationValue" withName:?];
    v10 = *(a1 + 40);
  }

  v14 = [*(a1 + 32) appendPoint:@"touchOffset" withName:{*(v10 + 192), *(v10 + 200)}];
  v15 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 576) withName:@"arcSwipePulledStripAppLayout" skipIfNil:1];
  v16 = [*(a1 + 32) appendFloat:@"translationYWhenTriggeredCardFlyIn" withName:*(*(a1 + 40) + 208)];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 216) withName:@"hasBecomeCoplanarSinceGestureFromSwitcherBegan"];
  v18 = [*(a1 + 32) appendPoint:@"gestureLiftOffVelocity" withName:{*(*(a1 + 40) + 224), *(*(a1 + 40) + 232)}];
  v19 = [*(a1 + 32) appendPoint:@"gestureLiftOffTranslation" withName:{*(*(a1 + 40) + 240), *(*(a1 + 40) + 248)}];
  v20 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromSwitcher" withName:{*(*(a1 + 40) + 256), *(*(a1 + 40) + 264)}];
  v21 = [*(a1 + 32) appendPoint:@"translationAdjustmentForStartingFromHomeScreen" withName:{*(*(a1 + 40) + 272), *(*(a1 + 40) + 280)}];
  v22 = [*(a1 + 32) appendFloat:@"progressToInSwitcherCardScale" withName:*(*(a1 + 40) + 288)];
  v23 = [*(a1 + 32) appendFloat:@"progressToMaxTranslation" withName:*(*(a1 + 40) + 296)];
  v24 = [*(a1 + 32) appendPoint:@"translation" withName:{*(*(a1 + 40) + 304), *(*(a1 + 40) + 312)}];
  v25 = [*(a1 + 32) appendPoint:@"velocity" withName:{*(*(a1 + 40) + 320), *(*(a1 + 40) + 328)}];
  v26 = [*(a1 + 32) appendFloat:@"stackedProgress" withName:*(*(a1 + 40) + 336)];
  v27 = [*(a1 + 32) appendPoint:@"initialCentroid" withName:{*(*(a1 + 40) + 344), *(*(a1 + 40) + 352)}];
  v28 = [*(a1 + 32) appendPoint:@"centroid" withName:{*(*(a1 + 40) + 360), *(*(a1 + 40) + 368)}];
  v29 = [*(a1 + 32) appendFloat:@"absoluteScale" withName:*(*(a1 + 40) + 392)];
  v30 = [*(a1 + 32) appendPoint:@"translationWithoutScale" withName:{*(*(a1 + 40) + 400), *(*(a1 + 40) + 408)}];
  v31 = [*(a1 + 32) appendFloat:@"lastTouchTimestamp" withName:*(*(a1 + 40) + 424)];
  v32 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 432) withName:@"gestureHoldTimer"];
  v33 = [*(a1 + 32) appendPoint:@"initialTouchLocation" withName:{*(*(a1 + 40) + 440), *(*(a1 + 40) + 448)}];
  v34 = [*(a1 + 32) appendPoint:@"lastTouchLocation" withName:{*(*(a1 + 40) + 456), *(*(a1 + 40) + 464)}];
  v35 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 472) withName:@"everTranslatedUpwards"];
  v36 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 473) withName:@"cancelledGestureForEmptySwitcher"];
  v37 = [*(a1 + 32) appendFloat:@"toHomeScreenAlpha" withName:*(*(a1 + 40) + 480)];
  v38 = [*(a1 + 32) appendFloat:@"toHomeScreenBlurProgress" withName:*(*(a1 + 40) + 488)];
  v39 = [*(a1 + 32) appendFloat:@"toHomeScreenDimmingAlpha" withName:*(*(a1 + 40) + 496)];
  v40 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 520) withName:@"didWarmupFlyInHaptic"];
  v41 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 521) withName:@"didPlayFlyInHaptic"];
  v42 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 568) withName:@"selectedAppLayout"];
  v43 = *(a1 + 32);
  v44 = SBStringForUnlockedEnvironmentMode(*(*(a1 + 40) + 584));
  [v43 appendString:v44 withName:@"startingEnvironmentMode"];

  v45 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 592) withName:@"scrunchInitiated"];
  v46 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 593) withName:@"continuingGesture"];
  v47 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 594) withName:@"lastGestureWasAnArcSwipe"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 595) withName:@"shouldResignActive"];
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

      if ([(SBHomeGestureDockSwitcherModifier *)self->_dockModifier isCurrentlyTrackingDock])
      {
        v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _shouldResignActiveBasedOnCardScale];
      }

      else
      {
        v4 = 1;
      }

      self->_shouldResignActive = v4;
    }
  }
}

- (BOOL)_shouldResignActiveBasedOnCardScale
{
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _rubberbandedTranslationForAdjacentCards];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:?];
  if (BSFloatLessThanOrEqualToFloat())
  {
    return 1;
  }

  v4 = fabs(self->_translation.x);
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _coplanarSpacing];
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
      v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
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
  v4 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v5 = self->_selectedAppLayout;
      v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
      v4 = 0;
      goto LABEL_13;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (a3 != 1)
    {
      goto LABEL_14;
    }

    v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _previousRecentAppLayout];
  }

  else if (a3 == 2)
  {
    v9 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self _nextRecentAppLayout];
  }

  else
  {
    if (a3 == 3)
    {
      v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherInterfaceOrientation];
      v10 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self windowManagementContext];
      LODWORD(v7) = [v10 isFlexibleWindowingEnabled];

      v7 = v7;
      v11 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:0 alignment:0 animated:0];
      v8 = SBAppendSwitcherModifierResponse(v11, 0);

      v5 = 0;
      v4 = 2;
      goto LABEL_14;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (a3 != 4)
    {
      goto LABEL_14;
    }

    v9 = +[SBAppLayout homeScreenAppLayout];
  }

  v5 = v9;
  v4 = 0;
  v6 = 0;
LABEL_13:
  v7 = 0;
  v8 = 0;
LABEL_14:
  v12 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
  [(SBSwitcherTransitionRequest *)v12 setAppLayout:v5];
  [(SBSwitcherTransitionRequest *)v12 setUnlockedEnvironmentMode:v4];
  [(SBSwitcherTransitionRequest *)v12 setPreferredInterfaceOrientation:v6];
  [(SBSwitcherTransitionRequest *)v12 setPeekConfiguration:v7];
  v13 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v12 gestureInitiated:1];
  v14 = SBAppendSwitcherModifierResponse(v13, v8);

  return v14;
}

- (id)_nextRecentAppLayout
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v4 = v3;
  if (self->_selectedAppLayout)
  {
    v5 = [v3 indexOfObject:?];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5, ![v4 count]))
    {
      v10 = 0;
      goto LABEL_11;
    }

    v7 = [v4 count];
    if (v6 + 1 < v7 - 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    v9 = [v4 objectAtIndex:v8];
  }

  else
  {
    v9 = [v3 firstObject];
  }

  v10 = v9;
LABEL_11:

  return v10;
}

- (id)_previousRecentAppLayout
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v4 = [v3 indexOfObject:self->_selectedAppLayout];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4, ![v3 count]))
  {
    v7 = 0;
  }

  else
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v3 objectAtIndex:v6 - 1];
  }

  return v7;
}

- (id)_responseForStudyLogDidBeginGesture
{
  v27[2] = *MEMORY[0x277D85DE8];
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isStudyLogEnabled])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
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
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isStudyLogEnabled])
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
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBContinuousExposeHomeGestureSwitcherModifier _hasPausedEnoughForFlyIn](self, "_hasPausedEnoughForFlyIn")}];
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
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBContinuousExposeHomeGestureSwitcherModifier switcherInterfaceOrientation](self, "switcherInterfaceOrientation")}];
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
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self isLocationInSafeArea:self->_initialTouchLocation.x, self->_initialTouchLocation.y];
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
  if (a3 && [(SBContinuousExposeHomeGestureSwitcherModifier *)self isSystemAssistantExperienceEnabled])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_283372098, &unk_2833720B0, 0}];
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
  v29 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  v6 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v7 = [v6 count];

  inMultitasking = self->_inMultitasking;
  inExposeMultitasking = self->_inExposeMultitasking;
  if (v5 == 3)
  {
    if (!self->_didWarmupFlyInHaptic)
    {
      v10 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:0];
      [(SBChainableModifierEventResponse *)v29 addChildResponse:v10];
      self->_didWarmupFlyInHaptic = 1;
    }

    if (inMultitasking && !self->_didPlayFlyInHaptic && v7 && fabs(self->_velocity.x) < *&kPauseVelocityThresholdForAppSwitcher_2 && fabs(self->_velocity.y) < *&kPauseVelocityThresholdForAppSwitcher_2)
    {
      v28 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
      -[SBHapticSwitcherEventResponse setHidEventSenderID:](v28, "setHidEventSenderID:", [v4 hidEventSenderID]);
      [(SBChainableModifierEventResponse *)v29 addChildResponse:v28];
      self->_didPlayFlyInHaptic = 1;
    }
  }

  v11 = [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination];
  self->_inMultitasking = v11 == 3;
  v13 = self->_canEnterExposeMultitasking && v11 == 3 && [(SBHomeGestureFinalDestinationSwitcherModifier *)self->_finalDestinationModifier currentFinalDestination]== 3;
  self->_inExposeMultitasking = v13;
  if (inExposeMultitasking != v13)
  {
    v14 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
    v15 = [v14 animationSettings];
    v16 = [v15 layoutSettings];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _beginAnimatingExposeMultitaskingPropertyWithMode:3 settings:v16];
  }

  v17 = inMultitasking;
  if (self->_inMultitasking != inMultitasking)
  {
    if (self->_inMultitasking)
    {
      self->_translationYWhenTriggeredMultitasking = self->_translation.y;
    }

    else
    {
      self->_didPlayFlyInHaptic = 0;
      if (!self->_inMultitasking)
      {
LABEL_26:
        v19 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
        v20 = [v19 animationSettings];
        v21 = [v20 arcSwipeSwitcherGlancingSettings];

        [(SBContinuousExposeHomeGestureSwitcherModifier *)self _beginAnimatingMultitaskingPropertyWithMode:3 settings:v21];
        v17 = self->_inMultitasking;
        goto LABEL_27;
      }
    }

    if (!self->_didPlayFlyInHaptic && v7 && fabs(self->_velocity.x) < *&kVelocityXThresholdForUnconditionalArcSwipe_2)
    {
      v18 = [[SBHapticSwitcherEventResponse alloc] initWithHapticType:0 phase:1];
      -[SBHapticSwitcherEventResponse setHidEventSenderID:](v18, "setHidEventSenderID:", [v4 hidEventSenderID]);
      [(SBChainableModifierEventResponse *)v29 addChildResponse:v18];
      self->_didPlayFlyInHaptic = 1;
    }

    goto LABEL_26;
  }

LABEL_27:
  if (!inMultitasking && v17 && self->_startingEnvironmentMode != 1)
  {
    v22 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self continuousExposeIdentifiersInSwitcher];
    if ([v22 count])
    {
      v23 = [v22 firstObject];
      v24 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayoutsForContinuousExposeIdentifier:v23];
      v25 = [v24 firstObject];

      if (v25)
      {
        v26 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v25 alignment:0 animated:0];
        [(SBChainableModifierEventResponse *)v29 addChildResponse:v26];
      }
    }
  }

  return v29;
}

- (BOOL)_preventPositioningCardsOffscreenForFlatBottomEdgeSwipe
{
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _scaleForTranslation:self->_translation.x, self->_translation.y];
  v4 = v3;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
  v6 = (1.0 - v4) * v5;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _coplanarSpacing];
  return v6 < v7 * 0.75;
}

- (void)_displayLinkFired:(id)a3
{
  if ([(SBGestureSwitcherModifier *)self gesturePhase]== 2 && [(SBChainableModifier *)self state]!= 1)
  {
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self gestureHandlingModifier:self averageVelocityOverDuration:0.0416666667];
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

    if (!self->_inMultitasking && [(SBContinuousExposeHomeGestureSwitcherModifier *)self _hasPausedEnoughForFlyIn])
    {

      [(SBContinuousExposeHomeGestureSwitcherModifier *)self gestureHandlingModifierRequestsUpdate:self];
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
  v22[2] = __102__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __102__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __102__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
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

- (void)_beginAnimatingArcSwipePullingPropertyWithMode:(int64_t)a3 settings:(id)a4
{
  v6 = a4;
  arcSwipePullingChangedProperty = self->_arcSwipePullingChangedProperty;
  if (arcSwipePullingChangedProperty)
  {
    [(UIViewFloatAnimatableProperty *)arcSwipePullingChangedProperty invalidate];
    v8 = self->_arcSwipePullingChangedProperty;
    self->_arcSwipePullingChangedProperty = 0;
  }

  v9 = objc_alloc_init(MEMORY[0x277D75D38]);
  v10 = self->_arcSwipePullingChangedProperty;
  self->_arcSwipePullingChangedProperty = v9;

  [(UIViewFloatAnimatableProperty *)self->_arcSwipePullingChangedProperty setValue:0.0];
  v11 = [v6 copy];
  LODWORD(v12) = *MEMORY[0x277CD9DD0];
  LODWORD(v13) = *(MEMORY[0x277CD9DD0] + 4);
  LODWORD(v14) = *(MEMORY[0x277CD9DD0] + 8);
  [v11 setFrameRateRange:0 highFrameRateReason:{v12, v13, v14}];
  v15 = v11;

  objc_initWeak(&location, self);
  v16 = self->_arcSwipePullingChangedProperty;
  v17 = MEMORY[0x277D75D18];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingArcSwipePullingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingArcSwipePullingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __105__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingArcSwipePullingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[21];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[21];
      v6[21] = 0;
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
  v22[2] = __108__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke;
  v22[3] = &unk_2783A8C18;
  v22[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __108__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke_2;
  v19[3] = &unk_2783AF0A0;
  objc_copyWeak(&v21, &location);
  v18 = v16;
  v20 = v18;
  [v17 sb_animateWithSettings:v15 mode:a3 animations:v22 completion:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __108__SBContinuousExposeHomeGestureSwitcherModifier__beginAnimatingExposeMultitaskingPropertyWithMode_settings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained[23];
    v4 = v3;
    if (v3 && v3 == *(a1 + 32))
    {
      v5 = v6[23];
      v6[23] = 0;
    }

    WeakRetained = v6;
  }
}

- (BOOL)_isTranslationPastDistanceThresholdToUnconditionallyGoHome:(double)a3
{
  v3 = -a3;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self unconditionalDistanceThresholdForHome];
  return v4 < v3;
}

- (double)_gestureProgressToMaxTranslationForTranslation:(double)a3
{
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _distanceYToMaxTranslation];
  v6 = v5;
  if (self->_startingEnvironmentMode == 2 && !self->_scrunchInitiated)
  {
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _distanceYToInSwitcherCardScale];
    a3 = v7 + a3;
    v6 = v6 - v7;
  }

  return -a3 / v6;
}

- (double)_distanceYToInSwitcherCardScale
{
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _switcherCardScale];
  v4 = v3;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  v6 = v5;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
  return (1.0 - v4) * v7 * 0.5 - v6;
}

- (double)_distanceYToMaxTranslation
{
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
  v4 = v3;
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self _centerYOffsetDuringGesture];
  return v4 * 0.5 - v5;
}

- (double)_inSwitcherCenterYOffsetWhenPresented
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
  [v3 switcherCenterYOffsetPercentOfScreenHeight];

  [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
  [(SBContinuousExposeHomeGestureSwitcherModifier *)self screenScale];

  BSFloatRoundForScale();
  return result;
}

- (double)_centerYOffsetDuringGesture
{
  if (self->_startingEnvironmentMode == 1)
  {

    [(SBContinuousExposeHomeGestureSwitcherModifier *)self _inSwitcherCenterYOffsetWhenPresented];
  }

  else
  {
    v4 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeGestureSettings];
    [v4 homeGestureCenterZoomDownCenterYOffsetFactor];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self containerViewBounds];
    [(SBContinuousExposeHomeGestureSwitcherModifier *)self screenScale];
    BSFloatRoundForScale();
    v6 = v5;

    return v6;
  }

  return result;
}

- (double)_switcherCardScale
{
  v2 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
  [v2 deckSwitcherPageScale];
  v4 = v3;

  return v4;
}

- (unint64_t)_selectedAppLayoutIndex
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
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
  v5 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LOBYTE(v4) = [v6 isEqual:v4->_selectedAppLayout];
  return v4;
}

- (double)_coplanarSpacing
{
  v3 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self switcherSettings];
  if ([(SBContinuousExposeHomeGestureSwitcherModifier *)self isDevicePad])
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
  v12 = [(SBContinuousExposeHomeGestureSwitcherModifier *)self homeGestureSettings];
  [v12 homeGestureMinimumCardScale];
  self->_homeGestureMinimumCardScale = v4;
  [v12 homeGestureMinimumCardScaleRubberBandingRange];
  self->_homeGestureMinimumCardScaleRubberBandingRange = v5;
  [v12 normalizedDistanceYThresholdForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdForUnconditionalHome_2 = v6;
  [v12 normalizedDistanceYThresholdRangeForUnconditionalHome];
  kHomeGestureNormalizedDistanceYThresholdRangeForUnconditionalHome_2 = v7;
  [v12 pauseVelocityThresholdForAppSwitcher];
  *&kPauseVelocityThresholdForAppSwitcher_2 = v3 * v8;
  [v12 velocityXThresholdForUnconditionalArcSwipe];
  *&kVelocityXThresholdForUnconditionalArcSwipe_2 = v3 * v9;
  [v12 minimumYDistanceForHomeOrAppSwitcher];
  *&kMinimumYDistanceForHomeOrAppSwitcher_4 = v3 * v10;
  [v12 cardFlyInMaximumVelocityThreshold];
  *&kCardFlyInMaximumVelocityThreshold_2 = v3 * v11;
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