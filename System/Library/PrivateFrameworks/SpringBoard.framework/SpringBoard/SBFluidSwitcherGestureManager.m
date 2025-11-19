@interface SBFluidSwitcherGestureManager
- (BOOL)_areContinuousExposeStripsAvailableWithReason:(id *)a3;
- (BOOL)_areContinuousExposeStripsOccludedOrHiddenWithOutReason:(id *)a3;
- (BOOL)_edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:(double)a3;
- (BOOL)_hasActiveModalFloatingApplication;
- (BOOL)_isBannerOccludingRegionAtReferencePoint:(CGPoint)a3;
- (BOOL)_isEdgeLocationInHomeAffordanceRegion:(double)a3;
- (BOOL)_isHomeAffordanceDoubleTapGestureEnabled;
- (BOOL)_isHomeAffordanceHitTestRectForAppLayoutRelevant:(id)a3;
- (BOOL)_isHomeAffordanceSingleTapGatingEnabled;
- (BOOL)_isLiveResizeGestureWithinPreferredLiveResizeRegion;
- (BOOL)_isLiveResizeGestureWithinTopEdgeResizeRegionForTouch;
- (BOOL)_isTouchLocationInSplitViewGutter:(CGPoint)a3;
- (BOOL)_isTouchLocationInWindowControlsFrame:(CGPoint)a3;
- (BOOL)_isTransactionRunningForGestureRecognizer:(id)a3;
- (BOOL)_isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:(CGPoint)a3 withinUnstashLocationOnHomeScreen:(BOOL)a4;
- (BOOL)_shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:(unint64_t)a3;
- (BOOL)_shouldAllowFloatingApplicationGesture:(id)a3 gestureType:(unint64_t)a4 failureReason:(id *)a5;
- (BOOL)_shouldBeginBottomEdgePanGesture:(id)a3;
- (BOOL)_shouldBeginBringItemContainerForwardGesture:(id)a3 type:(unint64_t)a4;
- (BOOL)_shouldBeginClickAndDragHomeGesture:(id)a3;
- (BOOL)_shouldBeginClickDownToBringItemContainerForwardGesture:(id)a3;
- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)a3;
- (BOOL)_shouldBeginContinuousExposeStripOverflowPanGesture:(id)a3;
- (BOOL)_shouldBeginContinuousExposeStripRevealGesture:(id)a3;
- (BOOL)_shouldBeginDeckInSwitcherPanGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationMoveGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)a3;
- (BOOL)_shouldBeginFloatingApplicationSwipeUpGesture:(id)a3;
- (BOOL)_shouldBeginFluidScrunchGesture:(id)a3;
- (BOOL)_shouldBeginHoverGesture:(id)a3;
- (BOOL)_shouldBeginIndirectFloatingAppScrunchGesture:(id)a3;
- (BOOL)_shouldBeginIndirectHomePanGesture:(id)a3;
- (BOOL)_shouldBeginLiveWindowResizeGesture:(id)a3;
- (BOOL)_shouldBeginSplitViewApplicationUnpinGesture:(id)a3;
- (BOOL)_shouldBringItemContainerForwardGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldClickAndDragHomeGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldClickDownToBringItemContainerForward:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldContinuousExposeStripOverflowPanGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldDeckInSwitcherPanGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldFlexibleWindowingSceneResizeGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldFloatingApplicationMoveGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldFloatingApplicationPinGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldFloatingApplicationSwipeUpGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldIndirectFloatingAppScrunchGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldLiveResizeGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldLiveResizeItemContainerGestureWithPointer:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldLiveResizeItemContainerGestureWithTouch:(id)a3 receiveTouch:(id)a4 allowedCorners:(unint64_t)a5 requiresVisibleCorner:(BOOL)a6 allowedEdges:(unint64_t)a7;
- (BOOL)_shouldMedusaSceneResizeGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldProtectEdgeLocation:(double)a3 edge:(unint64_t)a4;
- (BOOL)_shouldSceneResizeGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldSplitViewApplicationUnpinGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_shouldSuppressEdgeProtect;
- (BOOL)_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition;
- (BOOL)_shouldUserClickInAppInteractionGesture:(id)a3 receiveTouch:(id)a4;
- (BOOL)_touchIsWithinUnstashRegionOnHomeScreen:(id)a3;
- (BOOL)_touchLocationIsWithinSlideOverTongue:(double)a3;
- (BOOL)_touchLocationIsWithinUnstashRegion:(CGPoint)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)grabberTongue:(id)a3 shouldAllowSecondSwipeWithEdgeLocation:(double)a4;
- (BOOL)grabberTongue:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)grabberTongue:(id)a3 shouldShowTongueOnFirstSwipeWithEdgeLocation:(double)a4;
- (BOOL)grabberTongueOrPullEnabled:(id)a3 forGestureRecognizer:(id)a4;
- (BOOL)shouldAllowThinStyleForHomeGrabberView:(id)a3;
- (BOOL)shouldSuppressTongueViewForGrabberTongue:(id)a3;
- (CGRect)_edgeSwipeHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4;
- (CGRect)_floatingApplicationBounds;
- (CGRect)_innerLeftEdgeDragHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4;
- (CGRect)_innerRightEdgeDragHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4;
- (CGRect)_paddedHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4;
- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)a3;
- (Class)_fluidSwitcherGestureTransactionClassForGestureType:(int64_t)a3;
- (SBDisplayItemSlideOverConfiguration)_currentSlideOverConfiguration;
- (SBFluidSwitcherGestureManager)initWithSwitcherController:(id)a3 delegate:(id)a4;
- (SBFluidSwitcherGestureManagerDelegate)delegate;
- (SBFluidSwitcherViewController)switcherContentController;
- (SBSwitcherContentViewControlling)contentViewController;
- (SBSwitcherController)switcherController;
- (UINotificationFeedbackGenerator)edgeProtectFeedbackGenerator;
- (double)additionalEdgeSpacingForHomeGrabberView:(id)a3;
- (id)_appLayoutForHomeGrabberView:(id)a3;
- (id)_currentFlexibleWindowingAutoLayoutSpace;
- (id)_currentFloatingAppLayout;
- (id)_currentLayoutState;
- (id)_deviceApplicationSceneEntityForFloatingApplicationGrabberTongue;
- (id)_firstFloatingAppLayout;
- (id)_grabberTongueForGestureRecognizer:(id)a3;
- (id)_hitTestStageItemContainerForUnpinGestureWithTouch:(id)a3 atGestureLocation:(CGPoint)a4;
- (id)_indirectPresentFloatingAppGestureRecognizerForEdge:(unint64_t)a3;
- (id)_scenesForAppLayout:(id)a3;
- (id)_scenesForHomeGrabberView:(id)a3;
- (id)_slideOverDisplayItem;
- (id)_slideOverLeafAppLayout;
- (id)acquireSystemApertureSuppressionAssertionForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4;
- (id)customGestureRecognizerForGrabberTongue:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dragAndDropManager:(id)a3 displayItemForDraggingWindowWithGestureRecognizer:(id)a4;
- (id)dragAndDropManager:(id)a3 sourceViewProviderForDraggingWindowWithGestureRecognizer:(id)a4;
- (id)indirectPanGestureRecognizerForGrabberTongue:(id)a3;
- (id)succinctDescription;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (int64_t)_currentUnlockedEnvironmentMode;
- (int64_t)_gestureTypeForGestureRecognizer:(id)a3;
- (unint64_t)_continuousExposeStripEdge;
- (unint64_t)indirectPanSystemGestureTypeForGrabberTongue:(id)a3;
- (void)_configureTransitionRequest:(id)a3 forGestureBegin:(id)a4;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_handleClickDownToBringItemContainerForward:(id)a3;
- (void)_handleContinuousExposeStripRevealGesture:(id)a3;
- (void)_handleDeckSwitcherPanGesture:(id)a3;
- (void)_handleFloatingAppPresentGesture:(id)a3;
- (void)_handleFluidGesture:(id)a3;
- (void)_handleHoverGesture:(id)a3;
- (void)_handleScrunchGesture:(id)a3;
- (void)_handleSwitcherGestureBegan:(id)a3;
- (void)_handleSwitcherPanGestureBegan:(id)a3;
- (void)_handleSwitcherPanGestureChanged:(id)a3;
- (void)_handleSwitcherPanGestureEnded:(id)a3;
- (void)_handleTapToBringItemContainerForward:(id)a3;
- (void)_handleWindowDragGestureRecognizer:(id)a3;
- (void)_setUpChamoisGestureRecognizers;
- (void)_setUpFloatingApplicationGestureRecognizers;
- (void)_setUpGestureRecognizers;
- (void)_setUpScrunchGestureRecognizerIfNeeded;
- (void)_startFluidSwitcherTransactionForGestureRecognizer:(id)a3;
- (void)_tearDownChamoisGestureRecognizers;
- (void)_tearDownFloatingApplicationGestureRecognizers;
- (void)_updateChamoisGestureRecognizerPresenceForWindowManagementContext:(id)a3;
- (void)_updateCurrentHomeGrabberViews;
- (void)_updateDeckSwitcherInSwitcherGesturePresence;
- (void)_updateExclusionTrapezoidDebugView;
- (void)_updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:(id)a3;
- (void)_updateFluidDragAndDropManagerPresenceForWindowManagementContext:(id)a3;
- (void)_updateGestureDefaults;
- (void)_updateHomeAffordanceHitTestRects;
- (void)_updateHomeAffordanceInteraction;
- (void)_updateHomeGrabberViewsWithAnimationMode:(int64_t)a3;
- (void)_updateIndirectBottomEdgePanGesturePresence;
- (void)_updateSwitcherBottomEdgeGesturePresence;
- (void)_updateZStackPolicyAssistantsWithLayoutState:(id)a3;
- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)dragAndDropManager:(id)a3 didBeginDraggingWindowWithSceneIdentifier:(id)a4;
- (void)dragAndDropManager:(id)a3 didBeginGesture:(id)a4;
- (void)dragAndDropManager:(id)a3 didEndGesture:(id)a4;
- (void)dragAndDropManager:(id)a3 didPlatterizeWindowDragWithSceneIdentifier:(id)a4;
- (void)dragAndDropManager:(id)a3 didUpdateGesture:(id)a4;
- (void)dragAndDropManager:(id)a3 willEndDraggingWindowWithSceneIdentifier:(id)a4;
- (void)failMultitaskingGesturesForReason:(id)a3;
- (void)fluidSwitcherGestureTransaction:(id)a3 didBeginGesture:(id)a4;
- (void)fluidSwitcherGestureTransaction:(id)a3 didEndGesture:(id)a4;
- (void)fluidSwitcherGestureTransaction:(id)a3 didUpdateGesture:(id)a4;
- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueDidPresentInteractively:(id)a3 withDistance:(double)a4 andVelocity:(double)a5;
- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6;
- (void)grabberTongueWillDismiss:(id)a3;
- (void)grabberTongueWillPresent:(id)a3;
- (void)grabberTongueWillPresentInteractively:(id)a3 withDistance:(double)a4 andVelocity:(double)a5;
- (void)handleTransitionRequestForGestureComplete:(id)a3;
- (void)homeGrabberViewDidFailToRecognizeDoubleTap:(id)a3;
- (void)homeGrabberViewDidReceiveClick:(id)a3;
- (void)homeGrabberViewDidRecognizeDoubleTap:(id)a3;
- (void)invalidate;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)relinquishHiddenAssertionForHomeGrabber:(id)a3;
- (void)setActiveGestureTransaction:(id)a3;
- (void)setCurrentHomeGrabberViews:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)takeHiddenAssertionForHomeGrabber:(id)a3;
- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisible;
- (void)updateForWindowManagementContext:(id)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBFluidSwitcherGestureManager

- (void)_updateHomeAffordanceHitTestRects
{
  v75 = *MEMORY[0x277D85DE8];
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceDoubleTapGestureEnabled])
  {
    if ([MEMORY[0x277D75FC8] instancesRespondToSelector:sel_setHomeAffordanceScreenFixedFrame_])
    {
      v69 = 0uLL;
      v70 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      obj = [(SBFluidSwitcherGestureManager *)self currentHomeGrabberViews];
      v3 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v68;
        v6 = *MEMORY[0x277CBF3A0];
        v7 = *(MEMORY[0x277CBF3A0] + 8);
        v8 = *(MEMORY[0x277CBF3A0] + 16);
        v9 = *(MEMORY[0x277CBF3A0] + 24);
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v68 != v5)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v67 + 1) + 8 * i);
            v12 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:v11];
            v13 = v9;
            v14 = v8;
            v15 = v7;
            v16 = v6;
            if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceHitTestRectForAppLayoutRelevant:v12])
            {
              v17 = [v11 _screen];
              v18 = [v17 fixedCoordinateSpace];

              [v11 grabberHitTestRect];
              [v11 convertRect:v18 toCoordinateSpace:?];
              v16 = v19;
              v15 = v20;
              v14 = v21;
              v13 = v22;
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v23 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v12];
            v24 = [v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v64;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v64 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = [*(*(&v63 + 1) + 8 * j) _homeAffordanceHostSceneComponent];
                  [v28 setHomeAffordanceScreenFixedFrame:{v16, v15, v14, v13}];
                }

                v25 = [v23 countByEnumeratingWithState:&v63 objects:v73 count:16];
              }

              while (v25);
            }
          }

          v4 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
        }

        while (v4);
      }
    }

    else
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      obj = [(SBFluidSwitcherGestureManager *)self currentHomeGrabberViews];
      v29 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v60;
        v32 = *MEMORY[0x277CBF3A0];
        v33 = *(MEMORY[0x277CBF3A0] + 8);
        v34 = *(MEMORY[0x277CBF3A0] + 16);
        v35 = *(MEMORY[0x277CBF3A0] + 24);
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v60 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v59 + 1) + 8 * k);
            v38 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:v37];
            v39 = v35;
            v40 = v34;
            v41 = v33;
            v42 = v32;
            if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceHitTestRectForAppLayoutRelevant:v38])
            {
              v43 = [v37 window];
              [v37 grabberHitTestRect];
              [v37 convertRect:v43 toView:?];
              [v43 _convertRectToSceneReferenceSpace:?];
              v42 = v44;
              v41 = v45;
              v40 = v46;
              v39 = v47;
            }

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v38];
            v49 = [v48 countByEnumeratingWithState:&v55 objects:v71 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v56;
              do
              {
                for (m = 0; m != v50; ++m)
                {
                  if (*v56 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v53 = [*(*(&v55 + 1) + 8 * m) _homeAffordanceHostSceneComponent];
                  [v53 setHomeAffordanceSceneReferenceFrame:{v42, v41, v40, v39}];
                }

                v50 = [v48 countByEnumeratingWithState:&v55 objects:v71 count:16];
              }

              while (v50);
            }
          }

          v30 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v30);
      }
    }
  }
}

- (id)_currentLayoutState
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained layoutState];

  return v3;
}

- (void)_updateHomeAffordanceInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v4 = [WeakRetained windowManagementContext];
  v5 = [v4 isChamoisOrFlexibleWindowing];

  if (v5)
  {
    v6 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    v7 = [v6 unlockedEnvironmentMode];
    v8 = [v6 appLayout];
    v5 = 0;
    if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]&& v7 == 3)
    {
      v9 = objc_loadWeakRetained(&self->_switcherContentController);
      v5 = [v9 appLayoutContainsAnUnoccludedMaximizedDisplayItem:v8] ^ 1;
    }
  }

  [(SBFHomeAffordanceInteraction *)self->_homeAffordanceInteraction setEnabled:v5];
  homeAffordanceInteraction = self->_homeAffordanceInteraction;

  [(SBFHomeAffordanceInteraction *)homeAffordanceInteraction setNeedsUpdate];
}

- (BOOL)_isHomeAffordanceDoubleTapGestureEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];
  v4 = [v3 assistantController];
  v5 = [v4 isHomeAffordanceDoubleTapGestureEnabled];

  return v5;
}

- (void)_updateExclusionTrapezoidDebugView
{
  exclusionTrapezoidDebugView = self->_exclusionTrapezoidDebugView;
  v4 = MEMORY[0x277D76BA0];
  v5 = MEMORY[0x277D76BA8];
  if (exclusionTrapezoidDebugView)
  {
    [(UIView *)exclusionTrapezoidDebugView removeFromSuperview];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*v4 object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:*v5 object:0];
  }

  v8 = [(SBHomeGestureSettings *)self->_homeGestureSettings exclusionTrapezoidSettings];
  v9 = [v8 showExclusionTrapezoidDebugView];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__updateExclusionTrapezoidDebugView name:*v4 object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:self selector:sel__updateExclusionTrapezoidDebugView name:*v5 object:0];

    v12 = objc_opt_class();
    v13 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
    v20 = SBSafeCast(v12, v13);

    [v20 _touchInterfaceOrientation];
    v14 = [v20 _currentExclusionShapeForEdge:_screenRegionGivenInterfaceOrientedRegion()];
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v16 = [WeakRetained view];

    v17 = [v14 debugView];
    v18 = self->_exclusionTrapezoidDebugView;
    self->_exclusionTrapezoidDebugView = v17;

    v19 = self->_exclusionTrapezoidDebugView;
    [v16 bounds];
    [(UIView *)v19 setFrame:?];
    [(UIView *)self->_exclusionTrapezoidDebugView setAutoresizingMask:18];
    [v16 addSubview:self->_exclusionTrapezoidDebugView];
  }
}

- (void)_updateCurrentHomeGrabberViews
{
  v3 = [(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture];
  v10 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v4 = [v10 appLayout];
  v5 = [v10 floatingAppLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [WeakRetained homeGrabberViewForAppLayout:v4];
  v8 = [WeakRetained homeGrabberViewForAppLayout:v5];
  v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  if (v7)
  {
    [v7 setHomeAffordanceInteractionEnabled:v3];
    [v9 addObject:v7];
  }

  if (v8)
  {
    [v8 setHomeAffordanceInteractionEnabled:v3];
    [v9 addObject:v8];
  }

  [(SBFluidSwitcherGestureManager *)self setCurrentHomeGrabberViews:v9];
}

- (BOOL)_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v4 = [WeakRetained layoutContext];

  [v4 secondsSinceLastTransitionCompletion];
  v6 = v5;
  [(SBHomeGestureSettings *)v2->_homeGestureSettings secondsToAllowMultipleEdges];
  LOBYTE(v2) = v6 < v7;

  return v2;
}

- (int64_t)_currentUnlockedEnvironmentMode
{
  v2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v3 = [v2 unlockedEnvironmentMode];

  return v3;
}

- (BOOL)_shouldSuppressEdgeProtect
{
  v3 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

  if (v3)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v5 = [WeakRetained layoutContext];
  v6 = [v5 activeTransitionContext];

  if (v6)
  {
    return 1;
  }

  v9 = +[SBWorkspace mainWorkspace];
  v10 = [v9 transientOverlayPresentationManager];

  v7 = ([v10 hasActivePresentation] & 1) != 0 || -[SBFluidSwitcherGestureManager _shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition](self, "_shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition");
  return v7;
}

- (SBFluidSwitcherGestureManager)initWithSwitcherController:(id)a3 delegate:(id)a4
{
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v48 = a4;
  v54.receiver = self;
  v54.super_class = SBFluidSwitcherGestureManager;
  v7 = [(SBFluidSwitcherGestureManager *)&v54 init];
  if (v7)
  {
    v46 = [v6 windowScene];
    v8 = [v6 contentViewController];
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    obj = v11;

    objc_storeWeak(&v7->_switcherController, v6);
    objc_storeWeak(&v7->_switcherContentController, obj);
    objc_storeWeak(&v7->_delegate, v48);
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    currentHomeGrabberViews = v7->_currentHomeGrabberViews;
    v7->_currentHomeGrabberViews = v12;

    v14 = [v46 homeAffordanceInteractionManager];
    v15 = [v14 newHomeAffordanceInteraction];
    homeAffordanceInteraction = v7->_homeAffordanceInteraction;
    v7->_homeAffordanceInteraction = v15;

    [(SBFHomeAffordanceInteraction *)v7->_homeAffordanceInteraction setDelegate:v7];
    v17 = [obj view];
    [v17 addInteraction:v7->_homeAffordanceInteraction];

    v18 = [v46 layoutStateTransitionCoordinator];
    layoutStateTransitionCoordinator = v7->_layoutStateTransitionCoordinator;
    v7->_layoutStateTransitionCoordinator = v18;

    [(SBLayoutStateTransitionCoordinator *)v7->_layoutStateTransitionCoordinator addObserver:v7];
    v20 = +[SBAppSwitcherDomain rootSettings];
    appSwitcherSettings = v7->_appSwitcherSettings;
    v7->_appSwitcherSettings = v20;

    v22 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v7->_homeGestureSettings;
    v7->_homeGestureSettings = v22;

    [(PTSettings *)v7->_homeGestureSettings addKeyObserver:v7];
    v24 = [MEMORY[0x277D65E80] rootSettings];
    homeGrabberSettings = v7->_homeGrabberSettings;
    v7->_homeGrabberSettings = v24;

    v26 = +[SBIndirectPanGestureDomain rootSettings];
    indirectPanGestureSettings = v7->_indirectPanGestureSettings;
    v7->_indirectPanGestureSettings = v26;

    objc_initWeak(&location, v7);
    v28 = +[SBDefaults localDefaults];
    v29 = [v28 appSwitcherDefaults];
    appSwitcherDefaults = v7->_appSwitcherDefaults;
    v7->_appSwitcherDefaults = v29;

    v31 = v7->_appSwitcherDefaults;
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"trackpadSwitcherGesturesEnabled"];
    v56[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:1];
    v34 = MEMORY[0x277D85CD0];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke;
    v51[3] = &unk_2783A8C68;
    objc_copyWeak(&v52, &location);
    v35 = [(SBAppSwitcherDefaults *)v31 observeDefaults:v33 onQueue:MEMORY[0x277D85CD0] withBlock:v51];

    v36 = +[SBDefaults localDefaults];
    v37 = [v36 gestureDefaults];

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"multitaskingGesturesRequireEducation"];
    v55[0] = v38;
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"systemGesturesAllowed"];
    v55[1] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke_2;
    v49[3] = &unk_2783A8C68;
    objc_copyWeak(&v50, &location);
    v41 = [v37 observeDefaults:v40 onQueue:MEMORY[0x277D85CD0] withBlock:v49];

    [(SBFluidSwitcherGestureManager *)v7 _updateGestureDefaults];
    v42 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    displayItemLayoutAttributesCalculator = v7->_displayItemLayoutAttributesCalculator;
    v7->_displayItemLayoutAttributesCalculator = v42;

    if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
    {
      v44 = [SBApp bannerManager];
      [v44 addTransitionObserver:v7];
    }

    [(SBFluidSwitcherGestureManager *)v7 _setUpGestureRecognizers];
    [(SBFluidSwitcherGestureManager *)v7 _updateZStackParticipantWithReason:@"init"];
    objc_destroyWeak(&v50);

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIndirectBottomEdgePanGesturePresence];
}

void __69__SBFluidSwitcherGestureManager_initWithSwitcherController_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateGestureDefaults];
}

- (void)dealloc
{
  [(SBFluidSwitcherGestureManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherGestureManager;
  [(SBFluidSwitcherGestureManager *)&v3 dealloc];
}

- (void)_setUpGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];
  v4 = [v3 zStackResolver];
  v5 = [v4 acquireParticipantWithIdentifier:1 delegate:self];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = v5;

  v7 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
  zStackAudioCategoryPolicyAssistant = self->_zStackAudioCategoryPolicyAssistant;
  self->_zStackAudioCategoryPolicyAssistant = v7;

  v9 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithParticipant:?];
  zStackSystemAperturePolicyAssistant = self->_zStackSystemAperturePolicyAssistant;
  self->_zStackSystemAperturePolicyAssistant = v9;

  v11 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithParticipant:self->_zStackParticipant];
  zStackPhysicalButtonPolicyAssistant = self->_zStackPhysicalButtonPolicyAssistant;
  self->_zStackPhysicalButtonPolicyAssistant = v11;

  v13 = [MEMORY[0x277CBEB58] set];
  suppressionAssertions = self->_suppressionAssertions;
  self->_suppressionAssertions = v13;

  [(SBFluidSwitcherGestureManager *)self _updateSwitcherBottomEdgeGesturePresence];
  [(SBFluidSwitcherGestureManager *)self _updateDeckSwitcherInSwitcherGesturePresence];
  [(SBFluidSwitcherGestureManager *)self _setUpScrunchGestureRecognizerIfNeeded];
  [(SBFluidSwitcherGestureManager *)self _updateIndirectBottomEdgePanGesturePresence];
  v15 = [WeakRetained windowManagementContext];
  [(SBFluidSwitcherGestureManager *)self updateForWindowManagementContext:v15];
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v9 = [WeakRetained windowScene];
  v10 = [v9 controlCenterController];
  v11 = [v10 _presentGestureRecognizers];
  v26 = [v11 containsObject:v7];

  v12 = +[SBCoverSheetPresentationManager sharedInstance];
  v13 = [v12 coverSheetSlidingViewController];
  v14 = [v13 systemGesturesDelegate];
  v15 = [v14 presentGestureRecognizer];
  v16 = [(SBFluidSwitcherPanGestureRecognizer *)v7 isEqual:v15];

  v17 = [v9 menuBarManager];
  v18 = [v17 presentGestureRecognizer];
  v19 = [(SBFluidSwitcherPanGestureRecognizer *)v7 isEqual:v18];

  if (self->_unpinSplitViewApplicationGestureRecognizer == v6)
  {
    v20 = [WeakRetained windowManagementContext];
    v21 = [v20 isChamoisOrFlexibleWindowing];

    if ((v21 & 1) == 0)
    {
      v23 = v26 | v19 | v16;
      goto LABEL_15;
    }
  }

  if (self->_liveWindowResizeGestureRecognizer == v6)
  {
    v22 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

    if (v22 == v7)
    {
      v24 = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinPreferredLiveResizeRegion];
LABEL_13:
      v23 = v24;
      goto LABEL_15;
    }
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == v6 && self->_liveWindowResizeGestureRecognizer == v7)
  {
    v24 = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinTopEdgeResizeRegionForTouch];
    goto LABEL_13;
  }

  v23 = self->_sceneResizePanGestureRecognizer == v6 && self->_liveWindowResizeGestureRecognizer == v7;
LABEL_15:

  return v23 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v87 = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained windowScene];
  v86 = [v9 floatingDockController];
  v10 = [v86 presentFloatingDockIndirectPanGestureRecognizer];
  v11 = [v9 controlCenterController];
  v12 = [v11 _presentGestureRecognizers];
  v85 = [v12 containsObject:v7];

  v13 = +[SBCoverSheetPresentationManager sharedInstance];
  v14 = [v13 coverSheetSlidingViewController];
  v15 = [v14 systemGesturesDelegate];
  v16 = [v15 presentGestureRecognizer];
  v84 = [(SBFluidSwitcherPanGestureRecognizer *)v7 isEqual:v16];

  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  v18 = [v9 menuBarManager];
  v19 = [v18 presentGestureRecognizer];
  v82 = [(SBFluidSwitcherPanGestureRecognizer *)v7 isEqual:v19];

  v20 = [WeakRetained windowManagementContext];
  v21 = [v20 isFlexibleWindowingEnabled];

  if (self->_indirectBottomEdgePanGestureRecognizer == v6 && v10 == v7 || self->_hoverGestureRecognizer == v6)
  {
    LOBYTE(v25) = 1;
    goto LABEL_11;
  }

  if (self->_moveFloatingApplicationGestureRecognizer == v6)
  {
    LOBYTE(v25) = v85 | v84;
    goto LABEL_11;
  }

  if (self->_pinFloatingApplicationGestureRecognizer == v6)
  {
    LOBYTE(v25) = v85 | v84;
    goto LABEL_11;
  }

  v22 = self->_liveWindowResizeGestureRecognizer;
  if (v22 != v6 || ((v21 ^ 1) & 1) != 0 || ((v85 ^ 1) & 1) != 0)
  {
    if (v22 == v6)
    {
      v28 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

      if (v28 == v7)
      {
        LOBYTE(v25) = ![(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinPreferredLiveResizeRegion];
        goto LABEL_11;
      }
    }

    if (self->_unpinSplitViewApplicationGestureRecognizer != v6)
    {
      LOBYTE(v25) = 0;
      goto LABEL_11;
    }

    if (windowMoveClientGateRelationshipGestureRecognizer == v7)
    {
      v81 = v10;
      v26 = v87;
      v32 = [v87 view];
      v75 = [(SBIndirectPanGestureRecognizer *)v6 _activeEventOfType:0];
      v33 = [v75 touchesForGestureRecognizer:v6];
      v34 = [v33 anyObject];

      v77 = v32;
      _UISystemGestureLocationForTouchInView();
      v36 = v35;
      v38 = v37;
      v39 = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:v34 atGestureLocation:?];
      if (v39)
      {
        v79 = v39;
        v40 = [v34 _isPointerTouch];
        [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:v79 forPointerTouch:v40];
        v71.origin.x = v41;
        v71.origin.y = v42;
        v71.size.width = v43;
        v71.size.height = v44;
        [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:v79 forPointerTouch:v40];
        v72.origin.x = v45;
        v72.origin.y = v46;
        v72.size.width = v47;
        v72.size.height = v48;
        [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:v79 forPointerTouch:v40];
        v49 = v40;
        v39 = v79;
        [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:v79 forPointerTouch:v49];
        [v79 frame];
        v97.x = v36;
        v97.y = v38;
        if (CGRectContainsPoint(v98, v97) && (SBRectContainsPoint() & 1) == 0 && ![(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v36, v38]&& (SBRectContainsPoint() & 1) == 0 && (SBRectContainsPoint() & 1) == 0)
        {
          v66 = SBLogSystemGestureAppSwitcher();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            v96.x = v36;
            v96.y = v38;
            v67 = NSStringFromCGPoint(v96);
            v68 = NSStringFromCGRect(v71);
            NSStringFromCGRect(v72);
            v69 = v74 = v34;
            *buf = 138412802;
            v89 = v67;
            v90 = 2112;
            v91 = v68;
            v92 = 2112;
            v93 = v69;
            _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: touch (%@) hit-tested to item container (%@) and was outside edge swipe hit test rect (%@)", buf, 0x20u);

            v34 = v74;
            v39 = v79;

            v26 = v87;
          }

LABEL_22:
          LOBYTE(v25) = 1;
LABEL_56:
          v10 = v81;
          goto LABEL_12;
        }

        v50 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v95.x = v36;
          v95.y = v38;
          v70 = NSStringFromCGPoint(v95);
          v51 = NSStringFromCGRect(v71);
          NSStringFromCGRect(v72);
          v52 = v73 = v34;
          *buf = 138412802;
          v89 = v70;
          v90 = 2112;
          v91 = v51;
          v92 = 2112;
          v93 = v52;
          _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer not requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: touch (%@) hit-tested to item container (%@) but was inside edge swipe hit test rect (%@)", buf, 0x20u);

          v34 = v73;
          v39 = v79;
        }
      }

      else
      {
        v50 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer not requiring failure of _windowMoveClientGateRelationshipGestureRecognizer: did not hit-test to item container", buf, 2u);
        }
      }
    }

    else
    {
      v29 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
      v30 = v29;
      v26 = v87;
      if (v29 == v7)
      {

        LOBYTE(v25) = 1;
        goto LABEL_12;
      }

      v81 = v10;
      v31 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

      if (v31 == v7)
      {
        goto LABEL_22;
      }
    }

    v53 = [WeakRetained windowManagementContext];
    LODWORD(v25) = [v53 isFlexibleWindowingEnabled];

    if (!v25)
    {
      goto LABEL_56;
    }

    if (liveWindowResizeGestureRecognizer == v7)
    {
      v57 = [WeakRetained _slideOverDisplayItem];
      if (v57 && ([v26 view], v78 = objc_claimAutoreleasedReturnValue(), -[SBIndirectPanGestureRecognizer _activeEventOfType:](v6, "_activeEventOfType:", 0), v80 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v80, "touchesForGestureRecognizer:", v6), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v58, "anyObject"), v59 = objc_claimAutoreleasedReturnValue(), v58, _UISystemGestureLocationForTouchInView(), -[SBFluidSwitcherGestureManager _hitTestStageItemContainerForUnpinGestureWithTouch:atGestureLocation:](self, "_hitTestStageItemContainerForUnpinGestureWithTouch:atGestureLocation:", v59), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "appLayout"), v61 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v61, "containsItem:", v57), v61, v60, v59, v80, v78, v76))
      {
      }

      else
      {
        v62 = [(SBFluidSwitcherGestureManager *)self _isLiveResizeGestureWithinTopEdgeResizeRegionForTouch];

        v55 = v84;
        v54 = v85;
        v56 = v82;
        if (!v62)
        {
LABEL_45:
          v63 = @"(unexpected gesture recognizer)";
          if (v56)
          {
            v63 = @"(Menu Bar presentation gesture recognizer)";
          }

          if (liveWindowResizeGestureRecognizer == v7)
          {
            v63 = @"_liveWindowResizeGestureRecognizer";
          }

          if (v55)
          {
            v63 = @"(Cover Sheet presentation gesture recognizer)";
          }

          if (v54)
          {
            v63 = @"(some Control Center presentation gesture recognizer)";
          }

          v64 = v63;
          v65 = SBLogSystemGestureAppSwitcher();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v89 = v64;
            _os_log_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer requiring failure of %{public}@", buf, 0xCu);
          }

          LOBYTE(v25) = 1;
          v26 = v87;
          goto LABEL_56;
        }
      }
    }

    else
    {
      v55 = v84;
      v54 = v85;
      v56 = v82;
      if ((v85 | v84 | v82))
      {
        goto LABEL_45;
      }
    }

    LOBYTE(v25) = 0;
    goto LABEL_56;
  }

  v23 = [(SBIndirectPanGestureRecognizer *)v6 _activeEventOfType:0];
  v25 = [v23 touchesForGestureRecognizer:v6];
  v24 = [v25 anyObject];

  LOBYTE(v25) = [v24 type] == 0;
LABEL_11:
  v26 = v87;
LABEL_12:

  return v25 & 1;
}

- (void)_setUpScrunchGestureRecognizerIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v9 = [WeakRetained windowScene];

  v4 = [v9 systemGestureManager];
  if ([(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
  {
    v5 = [SBFluidScrunchGestureRecognizer alloc];
    v6 = [v9 _fbsDisplayConfiguration];
    v7 = [(SBFluidScrunchGestureRecognizer *)v5 initWithTarget:self action:sel__handleScrunchGesture_ displayConfiguration:v6];
    fluidScrunchGestureRecognizer = self->_fluidScrunchGestureRecognizer;
    self->_fluidScrunchGestureRecognizer = v7;

    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setName:@"fluidScrunch"];
    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setDelegate:self];
    [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setAllowedTouchTypes:&unk_28336ED60];
    [v4 addGestureRecognizer:self->_fluidScrunchGestureRecognizer withType:12];
  }
}

- (void)_updateFluidDragAndDropManagerPresenceForWindowManagementContext:(id)a3
{
  v4 = [a3 baseStyle];
  fluidDragAndDropManager = self->_fluidDragAndDropManager;
  if (!v4 || fluidDragAndDropManager)
  {
    if (v4 || !fluidDragAndDropManager)
    {
      return;
    }

    self->_fluidDragAndDropManager = 0;
  }

  else
  {
    v6 = [SBFluidSwitcherDragAndDropManager alloc];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v7 = [(SBFluidSwitcherDragAndDropManager *)v6 initWithSwitcherController:WeakRetained delegate:self];
    v8 = self->_fluidDragAndDropManager;
    self->_fluidDragAndDropManager = v7;

    fluidDragAndDropManager = WeakRetained;
  }
}

- (void)_updateIndirectBottomEdgePanGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v4 = [WeakRetained windowScene];
  v10 = [v4 systemGestureManager];

  v5 = [(SBAppSwitcherDefaults *)self->_appSwitcherDefaults areTrackpadSwitcherGesturesEnabled];
  indirectBottomEdgePanGestureRecognizer = self->_indirectBottomEdgePanGestureRecognizer;
  if (v5)
  {
    if (!indirectBottomEdgePanGestureRecognizer)
    {
      v7 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:4];
      v8 = self->_indirectBottomEdgePanGestureRecognizer;
      self->_indirectBottomEdgePanGestureRecognizer = v7;

      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setName:@"indirectHomePanGestureRecognizer"];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setShouldInvertYAxis:1];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setDelegate:self];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setHysteresis:0 forInputType:10.0];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setHysteresis:1 forInputType:10.0];
      [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setTranslationAdjustmentBlock:&__block_literal_global_401];
      [v10 addGestureRecognizer:self->_indirectBottomEdgePanGestureRecognizer withType:35];
    }
  }

  else if (indirectBottomEdgePanGestureRecognizer)
  {
    [v10 removeGestureRecognizer:?];
    [(SBIndirectPanGestureRecognizer *)self->_indirectBottomEdgePanGestureRecognizer setDelegate:0];
    v9 = self->_indirectBottomEdgePanGestureRecognizer;
    self->_indirectBottomEdgePanGestureRecognizer = 0;
  }
}

double __76__SBFluidSwitcherGestureManager__updateIndirectBottomEdgePanGesturePresence__block_invoke(double result, double a2, double a3, double a4)
{
  v4 = a2 - fabs(result);
  if (a4 == 0.0 && v4 < 0.0)
  {
    return *MEMORY[0x277CBF348];
  }

  return result;
}

- (void)_updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:(id)a3
{
  v4 = [a3 baseStyle];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  if (!v4 || unpinSplitViewApplicationGestureRecognizer)
  {
    if (!v4 && unpinSplitViewApplicationGestureRecognizer)
    {

      [(SBFluidSwitcherGestureManager *)self _tearDownFloatingApplicationGestureRecognizers];
    }
  }

  else
  {

    [(SBFluidSwitcherGestureManager *)self _setUpFloatingApplicationGestureRecognizers];
  }
}

- (void)_setUpFloatingApplicationGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];
  v4 = objc_loadWeakRetained(&self->_switcherContentController);
  v5 = [v3 systemGestureManager];
  v6 = [SBGrabberTongue alloc];
  v7 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  v9 = [(SBGrabberTongue *)v6 initWithDelegate:self edge:v8 type:19 windowScene:v3];
  rightEdgeFloatingAppGrabberTongue = self->_rightEdgeFloatingAppGrabberTongue;
  self->_rightEdgeFloatingAppGrabberTongue = v9;

  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue setName:@"RightEdgeFloatingAppGrabberTongue"];
  v11 = self->_rightEdgeFloatingAppGrabberTongue;
  v12 = [v4 view];
  [(SBGrabberTongue *)v11 installInView:v12 withColorStyle:0];

  v13 = [SBGrabberTongue alloc];
  if ([*v7 userInterfaceLayoutDirection] == 1)
  {
    v14 = 8;
  }

  else
  {
    v14 = 2;
  }

  v15 = [(SBGrabberTongue *)v13 initWithDelegate:self edge:v14 type:20 windowScene:v3];
  leftEdgeFloatingAppGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue;
  self->_leftEdgeFloatingAppGrabberTongue = v15;

  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue setName:@"LeftEdgeFloatingAppGrabberTongue"];
  v17 = self->_leftEdgeFloatingAppGrabberTongue;
  v18 = [v4 view];
  [(SBGrabberTongue *)v17 installInView:v18 withColorStyle:0];

  v19 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)v19 setName:@"_swipeUpFloatingAppGestureRecognizer"];
  swipeUpFloatingAppGestureRecognizer = self->_swipeUpFloatingAppGestureRecognizer;
  self->_swipeUpFloatingAppGestureRecognizer = v19;
  v21 = v19;

  [v5 addGestureRecognizer:self->_swipeUpFloatingAppGestureRecognizer withType:26];
  v22 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setName:@"_moveFloatingApplicationGestureRecognizer"];
  [(SBPanSystemGestureRecognizer *)v22 setFailsPastMaximumPressDurationWithoutHysteresis:1];
  [(SBFluidSwitcherPanGestureRecognizer *)v22 setMaximumNumberOfTouches:1];
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v22 setMaximumPressDuration:?];
  moveFloatingApplicationGestureRecognizer = self->_moveFloatingApplicationGestureRecognizer;
  self->_moveFloatingApplicationGestureRecognizer = v22;
  v24 = v22;

  [v5 addGestureRecognizer:self->_moveFloatingApplicationGestureRecognizer withType:23];
  v25 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleWindowDragGestureRecognizer_];
  pinFloatingApplicationGestureRecognizer = self->_pinFloatingApplicationGestureRecognizer;
  self->_pinFloatingApplicationGestureRecognizer = v25;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setName:@"_pinFloatingApplicationGestureRecognizer"];
  [v5 addGestureRecognizer:self->_pinFloatingApplicationGestureRecognizer withType:24];
  v27 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleWindowDragGestureRecognizer_];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  self->_unpinSplitViewApplicationGestureRecognizer = v27;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setSwitcherViewController:v4];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setMaximumNumberOfTouches:1];
  v29 = self->_unpinSplitViewApplicationGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v29 setMaximumPressDuration:?];
  [(SBPanSystemGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setName:@"_unpinSplitViewApplicationGestureRecognizer"];
  [v5 addGestureRecognizer:self->_unpinSplitViewApplicationGestureRecognizer withType:18];
  v30 = _os_feature_enabled_impl();
  v31 = [(SBPanSystemGestureRecognizer *)[SBSplitViewResizePanSystemGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  sceneResizePanGestureRecognizer = self->_sceneResizePanGestureRecognizer;
  self->_sceneResizePanGestureRecognizer = v31;

  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer _setHysteresis:10.0];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setAllowedTouchTypes:&unk_28336ED78];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer sbf_setPencilTouchesAllowed:v30];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setDelegate:self];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setMaximumNumberOfTouches:1];
  v33 = self->_sceneResizePanGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v33 setMaximumPressDuration:?];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setName:@"_sceneResizePanGestureRecognizer"];
  [v5 addGestureRecognizer:self->_sceneResizePanGestureRecognizer withType:16];
  v34 = [[SBFluidScrunchGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  indirectFloatingAppScrunchGestureRecognizer = self->_indirectFloatingAppScrunchGestureRecognizer;
  self->_indirectFloatingAppScrunchGestureRecognizer = v34;

  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setName:@"floatingApplicationScrunchGestureRecognizer"];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setDelegate:self];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setAllowedTouchTypes:&unk_28336ED90];
  [v5 addGestureRecognizer:self->_indirectFloatingAppScrunchGestureRecognizer withType:13];
  v36 = [(SBIndirectPanGestureRecognizer *)[SBFluidSwitcherIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:10];
  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
  self->_indirectDismissFloatingApplicationGestureRecognizer = v36;

  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setName:@"indirectDismissFloatingApplicationGestureRecognizer"];
  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setDelegate:self];
  [(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setShouldActivateWithThresholdForTrackpad:1];
  v38 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  [(SBIndirectPanGestureSettings *)self->_indirectPanGestureSettings trackpadHysteresis];
  [(SBIndirectPanGestureRecognizer *)v38 setHysteresis:0 forInputType:?];
  v39 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  [(SBIndirectPanGestureSettings *)self->_indirectPanGestureSettings mouseHysteresis];
  [(SBIndirectPanGestureRecognizer *)v39 setHysteresis:1 forInputType:?];
  v40 = self->_indirectDismissFloatingApplicationGestureRecognizer;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __76__SBFluidSwitcherGestureManager__setUpFloatingApplicationGestureRecognizers__block_invoke;
  v53[3] = &unk_2783B7868;
  v53[4] = self;
  [(SBIndirectPanGestureRecognizer *)v40 setTranslationAdjustmentBlock:v53];
  [v5 addGestureRecognizer:self->_indirectDismissFloatingApplicationGestureRecognizer withType:38];
  v41 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [v41 requireGestureRecognizerToFail:self->_swipeUpFloatingAppGestureRecognizer];

  v42 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [v5 gestureRecognizerOfType:123 shouldBeRequiredToFailByGestureRecognizer:v42];

  v43 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [v5 gestureRecognizerOfType:122 shouldBeRequiredToFailByGestureRecognizer:v43];

  v44 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [v5 gestureRecognizerOfType:108 shouldBeRequiredToFailByGestureRecognizer:v44];

  v45 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [v5 gestureRecognizerOfType:107 shouldBeRequiredToFailByGestureRecognizer:v45];

  v46 = self->_moveFloatingApplicationGestureRecognizer;
  v47 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)v46 requireGestureRecognizerToFail:v47];

  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_swipeUpFloatingAppGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_pinFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer requireGestureRecognizerToFail:self->_unpinSplitViewApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer requireGestureRecognizerToFail:self->_pinFloatingApplicationGestureRecognizer];
  v48 = self->_unpinSplitViewApplicationGestureRecognizer;
  v49 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)v48 requireGestureRecognizerToFail:v49];

  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer requireGestureRecognizerToFail:self->_sceneResizePanGestureRecognizer];
  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer requireGestureRecognizerToFail:self->_indirectFloatingAppScrunchGestureRecognizer];
  v50 = [v4 scrollView];
  v51 = [v50 panGestureRecognizer];

  [v51 _setRequiresSystemGesturesToFail:1];
  [v51 requireGestureRecognizerToFail:self->_unpinSplitViewApplicationGestureRecognizer];
}

double __76__SBFluidSwitcherGestureManager__setUpFloatingApplicationGestureRecognizers__block_invoke(uint64_t a1, double a2, double a3)
{
  v4 = fabs(a3);
  [*(*(a1 + 32) + 88) orthogonalTranslationAdjustmentFactor];
  return a2 - v4 * v5;
}

- (void)_tearDownFloatingApplicationGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];
  v4 = [v3 systemGestureManager];
  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue invalidate];
  rightEdgeFloatingAppGrabberTongue = self->_rightEdgeFloatingAppGrabberTongue;
  self->_rightEdgeFloatingAppGrabberTongue = 0;

  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue invalidate];
  leftEdgeFloatingAppGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue;
  self->_leftEdgeFloatingAppGrabberTongue = 0;

  [v4 removeGestureRecognizer:self->_swipeUpFloatingAppGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_swipeUpFloatingAppGestureRecognizer setDelegate:0];
  swipeUpFloatingAppGestureRecognizer = self->_swipeUpFloatingAppGestureRecognizer;
  self->_swipeUpFloatingAppGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_moveFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer setDelegate:0];
  moveFloatingApplicationGestureRecognizer = self->_moveFloatingApplicationGestureRecognizer;
  self->_moveFloatingApplicationGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_pinFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_pinFloatingApplicationGestureRecognizer setDelegate:0];
  pinFloatingApplicationGestureRecognizer = self->_pinFloatingApplicationGestureRecognizer;
  self->_pinFloatingApplicationGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_unpinSplitViewApplicationGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setDelegate:0];
  unpinSplitViewApplicationGestureRecognizer = self->_unpinSplitViewApplicationGestureRecognizer;
  self->_unpinSplitViewApplicationGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_sceneResizePanGestureRecognizer];
  [(SBSplitViewResizePanSystemGestureRecognizer *)self->_sceneResizePanGestureRecognizer setDelegate:0];
  sceneResizePanGestureRecognizer = self->_sceneResizePanGestureRecognizer;
  self->_sceneResizePanGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_indirectFloatingAppScrunchGestureRecognizer];
  [(SBFluidScrunchGestureRecognizer *)self->_indirectFloatingAppScrunchGestureRecognizer setDelegate:0];
  indirectFloatingAppScrunchGestureRecognizer = self->_indirectFloatingAppScrunchGestureRecognizer;
  self->_indirectFloatingAppScrunchGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_indirectDismissFloatingApplicationGestureRecognizer];
  [(SBFluidSwitcherIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer setDelegate:0];
  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
  self->_indirectDismissFloatingApplicationGestureRecognizer = 0;
}

- (void)_updateChamoisGestureRecognizerPresenceForWindowManagementContext:(id)a3
{
  v4 = [a3 isChamoisOrFlexibleWindowing];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  if (!v4 || liveWindowResizeGestureRecognizer)
  {
    if (liveWindowResizeGestureRecognizer)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {

      [(SBFluidSwitcherGestureManager *)self _tearDownChamoisGestureRecognizers];
    }
  }

  else
  {

    [(SBFluidSwitcherGestureManager *)self _setUpChamoisGestureRecognizers];
  }
}

- (void)_setUpChamoisGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v4 = [WeakRetained windowScene];
  v5 = [v4 systemGestureManager];
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  self->_liveWindowResizeGestureRecognizer = v7;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _setHysteresis:0.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setName:@"_liveWindowResizeGestureRecognizer"];
  v9 = self->_liveWindowResizeGestureRecognizer;
  _UIDragInteractionDefaultLiftDelay();
  [(SBPanSystemGestureRecognizer *)v9 setMaximumPressDuration:?];
  [v5 addGestureRecognizer:self->_liveWindowResizeGestureRecognizer withType:31];
  v10 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:self action:sel__handleHoverGesture_];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = v10;

  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setCancelsTouchesInView:0];
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:self];
  [v5 addGestureRecognizer:self->_hoverGestureRecognizer withType:47];
  v12 = [(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge];
  v13 = [[SBGrabberTongue alloc] initWithDelegate:self edge:v12 type:51 windowScene:v4];
  continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;
  self->_continuousExposeStripRevealGrabberTongue = v13;

  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue setName:@"ContinuousExposeStripRevealGrabberTongue"];
  v15 = self->_continuousExposeStripRevealGrabberTongue;
  v16 = [v6 view];
  [(SBGrabberTongue *)v15 installInView:v16 withColorStyle:0];

  v17 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_ edges:v12];
  indirectContinuousExposeStripOverflowGestureRecognizer = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  self->_indirectContinuousExposeStripOverflowGestureRecognizer = v17;

  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setPausedUntilTouchedUpOrMovedAwayFromEdge:1];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setName:@"_indirectContinuousExposeStripOverflowGestureRecognizer"];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setDelegate:self];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setHysteresis:0 forInputType:30.0];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setHysteresis:1 forInputType:10.0];
  objc_initWeak(&location, v6);
  v19 = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __64__SBFluidSwitcherGestureManager__setUpChamoisGestureRecognizers__block_invoke;
  v35 = &unk_2783C1F08;
  objc_copyWeak(&v36, &location);
  [(SBIndirectPanGestureRecognizer *)v19 setTranslationAdjustmentBlock:&v32];
  v20 = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  v21 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue indirectEdgePullGestureRecognizer:v32];
  [(SBIndirectPanGestureRecognizer *)v20 requireGestureRecognizerToFail:v21];

  [v5 addGestureRecognizer:self->_indirectContinuousExposeStripOverflowGestureRecognizer withType:49];
  v22 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleFluidGesture_];
  dragContinuousExposeStripOverflowGestureRecognizer = self->_dragContinuousExposeStripOverflowGestureRecognizer;
  self->_dragContinuousExposeStripOverflowGestureRecognizer = v22;

  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setInstalledAsSystemGesture:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setSwitcherViewController:v6];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer _setHysteresis:10.0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setDelegate:self];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setMaximumNumberOfTouches:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setName:@"_dragContinuousExposeStripOverflowGestureRecognizer"];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer requireGestureRecognizerToFail:self->_liveWindowResizeGestureRecognizer];
  [v5 addGestureRecognizer:self->_dragContinuousExposeStripOverflowGestureRecognizer withType:50];
  v24 = [objc_alloc(MEMORY[0x277D76148]) initWithTarget:self action:sel__handleTapToBringItemContainerForward_];
  tapToBringItemContainerForwardGestureRecognizer = self->_tapToBringItemContainerForwardGestureRecognizer;
  self->_tapToBringItemContainerForwardGestureRecognizer = v24;

  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setDelegate:self];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setAllowedTouchTypes:&unk_28336EDA8];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setName:@"tapToBringItemContainerForwardGestureRecognizer"];
  [v5 addGestureRecognizer:self->_tapToBringItemContainerForwardGestureRecognizer withType:14];
  v26 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handleClickDownToBringItemContainerForward_];
  clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
  self->_clickDownToBringItemContainerForwardGestureRecognizer = v26;

  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setDelegate:self];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setAllowedTouchTypes:&unk_28336EDC0];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setName:@"clickDownToBringItemContainerForwardGestureRecognizer"];
  [v5 addGestureRecognizer:self->_clickDownToBringItemContainerForwardGestureRecognizer withType:15];
  v28 = objc_alloc_init(SBFailingSystemGestureRecognizer);
  userClickInAppInteractionGestureRecognizer = self->_userClickInAppInteractionGestureRecognizer;
  self->_userClickInAppInteractionGestureRecognizer = v28;

  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setAllowedTouchTypes:&unk_28336EDD8];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setDelegate:self];
  [v5 addGestureRecognizer:self->_userClickInAppInteractionGestureRecognizer withType:52];
  v30 = [MEMORY[0x277D75E50] hostGestureRecognizerForFailureRelationshipsWithIdentifier:*MEMORY[0x277D77640]];
  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  self->_windowMoveClientGateRelationshipGestureRecognizer = v30;

  [(UIGestureRecognizer *)self->_windowMoveClientGateRelationshipGestureRecognizer setAllowedTouchTypes:&unk_28336EDF0];
  [(UIGestureRecognizer *)self->_windowMoveClientGateRelationshipGestureRecognizer setName:@"_windowMoveClientGateRelationshipGestureRecognizer"];
  [v5 addGestureRecognizer:self->_windowMoveClientGateRelationshipGestureRecognizer withType:25];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

double __64__SBFluidSwitcherGestureManager__setUpChamoisGestureRecognizers__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained view];
    [v11 bounds];
    v13 = v12;

    v14 = a2 - fabs(a3);
    if (a6 >= v13 * 0.5)
    {
      a2 = fmax(v14, 0.0);
    }

    else if (v14 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = 0.0;
    }
  }

  return a2;
}

- (void)_tearDownChamoisGestureRecognizers
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained windowScene];
  v4 = [v3 systemGestureManager];
  [v4 removeGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer setDelegate:0];
  liveWindowResizeGestureRecognizer = self->_liveWindowResizeGestureRecognizer;
  self->_liveWindowResizeGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_hoverGestureRecognizer];
  [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:0];
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  self->_hoverGestureRecognizer = 0;

  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue uninstall];
  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue invalidate];
  continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;
  self->_continuousExposeStripRevealGrabberTongue = 0;

  [v4 removeGestureRecognizer:self->_indirectContinuousExposeStripOverflowGestureRecognizer];
  [(SBIndirectPanGestureRecognizer *)self->_indirectContinuousExposeStripOverflowGestureRecognizer setDelegate:0];
  indirectContinuousExposeStripOverflowGestureRecognizer = self->_indirectContinuousExposeStripOverflowGestureRecognizer;
  self->_indirectContinuousExposeStripOverflowGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_dragContinuousExposeStripOverflowGestureRecognizer];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_dragContinuousExposeStripOverflowGestureRecognizer setDelegate:0];
  dragContinuousExposeStripOverflowGestureRecognizer = self->_dragContinuousExposeStripOverflowGestureRecognizer;
  self->_dragContinuousExposeStripOverflowGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_tapToBringItemContainerForwardGestureRecognizer];
  [(_UIPassthroughTapGestureRecognizer *)self->_tapToBringItemContainerForwardGestureRecognizer setDelegate:0];
  tapToBringItemContainerForwardGestureRecognizer = self->_tapToBringItemContainerForwardGestureRecognizer;
  self->_tapToBringItemContainerForwardGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_clickDownToBringItemContainerForwardGestureRecognizer];
  [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setDelegate:0];
  clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
  self->_clickDownToBringItemContainerForwardGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_userClickInAppInteractionGestureRecognizer];
  [(SBFailingSystemGestureRecognizer *)self->_userClickInAppInteractionGestureRecognizer setDelegate:0];
  userClickInAppInteractionGestureRecognizer = self->_userClickInAppInteractionGestureRecognizer;
  self->_userClickInAppInteractionGestureRecognizer = 0;

  [v4 removeGestureRecognizer:self->_windowMoveClientGateRelationshipGestureRecognizer];
  windowMoveClientGateRelationshipGestureRecognizer = self->_windowMoveClientGateRelationshipGestureRecognizer;
  self->_windowMoveClientGateRelationshipGestureRecognizer = 0;
}

- (void)_updateDeckSwitcherInSwitcherGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  if ([(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled]&& [(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 1)
  {
    if (self->_deckInSwitcherPanGestureRecognizer)
    {
      goto LABEL_8;
    }

    v3 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleDeckSwitcherPanGesture_];
    deckInSwitcherPanGestureRecognizer = self->_deckInSwitcherPanGestureRecognizer;
    self->_deckInSwitcherPanGestureRecognizer = v3;

    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setName:@"deckInSwitcherPan"];
    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setSwitcherViewController:WeakRetained];
    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer setDelegate:self];
    v5 = [WeakRetained view];
    [v5 addGestureRecognizer:self->_deckInSwitcherPanGestureRecognizer];

    [(SBFluidSwitcherPanGestureRecognizer *)self->_deckInSwitcherPanGestureRecognizer _setRequiresSystemGesturesToFail:0];
    v6 = [WeakRetained scrollView];
    v7 = [v6 panGestureRecognizer];
    [v7 requireGestureRecognizerToFail:self->_deckInSwitcherPanGestureRecognizer];
  }

  else
  {
    if (!self->_deckInSwitcherPanGestureRecognizer)
    {
      goto LABEL_8;
    }

    v8 = [WeakRetained view];
    [v8 removeGestureRecognizer:self->_deckInSwitcherPanGestureRecognizer];

    v6 = self->_deckInSwitcherPanGestureRecognizer;
    self->_deckInSwitcherPanGestureRecognizer = 0;
  }

LABEL_8:
}

- (void)_updateSwitcherBottomEdgeGesturePresence
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v3 = objc_loadWeakRetained(&self->_switcherController);
  v4 = [v3 windowScene];

  v5 = [v4 systemGestureManager];
  v6 = [(SBHomeGestureSettings *)self->_homeGestureSettings isHomeGestureEnabled];
  deckGrabberTongue = self->_deckGrabberTongue;
  if (v6)
  {
    if (!deckGrabberTongue)
    {
      self->_usesHomeAffordanceRulesForGrabberTongue = SBFEffectiveHomeButtonType() == 2;
      v8 = [[SBGrabberTongue alloc] initWithDelegate:self edge:4 type:39 windowScene:v4];
      v9 = self->_deckGrabberTongue;
      self->_deckGrabberTongue = v8;

      [(SBGrabberTongue *)self->_deckGrabberTongue setName:@"DeckGrabberTongue"];
      v10 = self->_deckGrabberTongue;
      v11 = [WeakRetained view];
      [(SBGrabberTongue *)v10 installInView:v11 withColorStyle:0];

      v12 = [[SBFluidSwitcherPanGestureRecognizer alloc] initWithTarget:self action:sel__handleClickAndDragHomeGesture_];
      clickAndDragHomeGestureRecognizer = self->_clickAndDragHomeGestureRecognizer;
      self->_clickAndDragHomeGestureRecognizer = v12;

      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setSwitcherViewController:WeakRetained];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setInstalledAsSystemGesture:1];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setDelegate:self];
      [(SBFluidSwitcherPanGestureRecognizer *)self->_clickAndDragHomeGestureRecognizer setAllowedTouchTypes:&unk_28336EE08];
      [v5 addGestureRecognizer:self->_clickAndDragHomeGestureRecognizer withType:42];
    }
  }

  else
  {
    if (deckGrabberTongue)
    {
      [(SBGrabberTongue *)deckGrabberTongue invalidate];
      v14 = self->_deckGrabberTongue;
      self->_deckGrabberTongue = 0;
    }

    if (self->_clickAndDragHomeGestureRecognizer)
    {
      [v5 removeGestureRecognizer:?];
      v15 = self->_clickAndDragHomeGestureRecognizer;
      self->_clickAndDragHomeGestureRecognizer = 0;
    }
  }
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v4 = [WeakRetained view];
  [v4 removeInteraction:self->_homeAffordanceInteraction];

  [(SBLayoutStateTransitionCoordinator *)self->_layoutStateTransitionCoordinator removeObserver:self];
  [(SBFZStackParticipant *)self->_zStackParticipant invalidate];
  zStackParticipant = self->_zStackParticipant;
  self->_zStackParticipant = 0;

  [(SBGrabberTongue *)self->_deckGrabberTongue invalidate];
  v6 = objc_loadWeakRetained(&self->_switcherController);
  v7 = [v6 windowScene];
  v10 = [v7 systemGestureManager];

  [v10 removeGestureRecognizer:self->_fluidScrunchGestureRecognizer];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x277D76478] object:0];

  [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_deckGrabberTongue invalidate];
  [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue invalidate];
  v9 = [SBApp bannerManager];
  [v9 removeTransitionObserver:self];
}

- (void)failMultitaskingGesturesForReason:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGesture();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Failing multitasking gestures for reason: %{public}@", &v6, 0xCu);
  }

  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setEnabled:0];
  [(SBFluidScrunchGestureRecognizer *)self->_fluidScrunchGestureRecognizer setEnabled:1];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setEnabled:0];
  [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setEnabled:1];
}

- (void)setActiveGestureTransaction:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_activeGestureTransaction != v5)
  {
    objc_storeStrong(&self->_activeGestureTransaction, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_currentHomeGrabberViews;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) updateStyle];
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)handleTransitionRequestForGestureComplete:(id)a3
{
  v7 = a3;
  v4 = [v7 appLayout];
  v5 = +[SBAppLayout homeScreenAppLayout];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    [(SBFluidSwitcherGestureManager *)self _clearSystemApertureZStackPolicyAssistantSuppression];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self->_activeGestureTransaction handleTransitionRequestForGestureComplete:v7 fromGestureManager:self];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v14 = a4;
  [(NSTimer *)self->_delayedHomeGrabberUpdateTimer invalidate];
  delayedHomeGrabberUpdateTimer = self->_delayedHomeGrabberUpdateTimer;
  self->_delayedHomeGrabberUpdateTimer = 0;

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction];
  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceHitTestRects];
  [(SBFluidSwitcherGestureManager *)self _updateExclusionTrapezoidDebugView];
  v6 = [v14 toLayoutState];
  v7 = [v6 elements];
  v8 = [v7 count];

  if (v8 >= 2)
  {
    _UIInitializeDraggingSystem();
  }

  v9 = [v14 toLayoutState];
  v10 = objc_opt_self();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [(SBFluidSwitcherGestureManager *)self _updateZStackPolicyAssistantsWithLayoutState:v13];
  [(SBFluidSwitcherGestureManager *)self _updateZStackParticipantWithReason:@"layout state transition did begin"];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 toLayoutState];
  if (([v7 isInterrupted] & 1) == 0)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = *v29;
      do
      {
        v12 = 0;
        do
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v28 + 1) + 8 * v12++) updateStyle];
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    if ([(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtectToAllowSwipesImmediatelyAfterTransition])
    {
      objc_initWeak(&location, self);
      v13 = MEMORY[0x277CBEBB8];
      [(SBHomeGestureSettings *)self->_homeGestureSettings secondsToAllowMultipleEdges];
      v15 = v14;
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __104__SBFluidSwitcherGestureManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke;
      v25 = &unk_2783AA438;
      objc_copyWeak(&v26, &location);
      v16 = [v13 scheduledTimerWithTimeInterval:0 repeats:&v22 block:v15];
      delayedHomeGrabberUpdateTimer = self->_delayedHomeGrabberUpdateTimer;
      self->_delayedHomeGrabberUpdateTimer = v16;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    v18 = objc_opt_self();
    v19 = v8;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    [(SBFluidSwitcherGestureManager *)self _updateZStackPolicyAssistantsWithLayoutState:v21];
  }

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction:v22];
  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceHitTestRects];
  [(SBFluidSwitcherGestureManager *)self _updateExclusionTrapezoidDebugView];
}

void __104__SBFluidSwitcherGestureManager_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained currentHomeGrabberViews];

  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateStyle];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setCurrentHomeGrabberViews:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _isHomeAffordanceDoubleTapGestureEnabled];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = self->_currentHomeGrabberViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        if (([v4 containsObject:v12] & 1) == 0)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        if (![(NSHashTable *)self->_currentHomeGrabberViews containsObject:v19])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v16);
  }

  objc_storeStrong(&self->_currentHomeGrabberViews, a3);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v37 + 1) + 8 * k);
        if (([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]& 1) == 0)
        {
          [(SBFluidSwitcherGestureManager *)self relinquishHiddenAssertionForHomeGrabber:v25];
          [(SBFluidSwitcherGestureManager *)self takeHiddenAssertionForHomeGrabber:v25];
        }

        [v25 setDelegate:0];
        [v25 setPointerClickDelegate:0];
        if (v5)
        {
          [v25 removeObserver:self];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v22);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v13;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v33 + 1) + 8 * m);
        [v31 setDelegate:self];
        [v31 setPointerClickDelegate:self];
        if (v5)
        {
          [v31 addObserver:self];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v28);
  }
}

- (void)_handleDeckSwitcherPanGesture:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if ((v4 - 3) < 3)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:v7];
LABEL_8:
    v6 = v7;
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureChanged:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureBegan:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleSwitcherPanGestureBegan:(id)a3
{
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureManager *)v4 _handleSwitcherPanGestureBegan:?];
  }

  kdebug_trace();
  v6 = +[SBReachabilityManager sharedInstance];
  v7 = [v6 reachabilityGestureRecognizer];

  [v7 setEnabled:0];
  [v7 setEnabled:1];
  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:v4])
  {
    v8 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

    if (v8)
    {
      v9 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
      v10 = [v9 transitionRequest];

      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      [WeakRetained _configureTransitionRequestForGestureBegin:v10];
    }
  }

  else
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherGestureBegan:v4];
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:v4])
  {
    v12 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [v12 systemGestureStateChanged:v4];
  }
}

- (void)_handleSwitcherPanGestureChanged:(id)a3
{
  v6 = a3;
  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:?])
  {
    v4 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    if (!self->_shouldRubberbandGrabberViewForReduceMotion)
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      self->_shouldRubberbandGrabberViewForReduceMotion = [WeakRetained shouldRubberbandFullScreenHomeGrabberView];
    }

    [v4 systemGestureStateChanged:v6];
  }

  if (self->_shouldRubberbandGrabberViewForReduceMotion)
  {
    [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
  }
}

- (void)_handleSwitcherPanGestureEnded:(id)a3
{
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureManager *)v4 _handleSwitcherPanGestureEnded:?];
  }

  if ([v4 state] == 3)
  {
    kdebug_trace();
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:v4])
  {
    v6 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [v6 systemGestureStateChanged:v4];
  }

  else
  {
    if ([v4 state] == 4)
    {
      goto LABEL_10;
    }

    [v4 setEnabled:0];
    [v4 setEnabled:1];
    v7 = [MEMORY[0x277D6A798] sharedInstance];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__SBFluidSwitcherGestureManager__handleSwitcherPanGestureEnded___block_invoke;
    v8[3] = &unk_2783AC3E8;
    v9 = v4;
    [v7 logBlock:v8];

    v6 = v9;
  }

LABEL_10:
  if (self->_shouldRubberbandGrabberViewForReduceMotion)
  {
    self->_shouldRubberbandGrabberViewForReduceMotion = 0;
    [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
  }
}

id __64__SBFluidSwitcherGestureManager__handleSwitcherPanGestureEnded___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"[SBFluidSwitcherGestureManager _handleSwitcherPanGestureEnded:]";
  v9[0] = @"address";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v10[0] = v2;
  v9[1] = @"name";
  v3 = [*(a1 + 32) name];
  v4 = v3;
  v5 = &stru_283094718;
  if (v3)
  {
    v5 = v3;
  }

  v9[2] = @"failureReason";
  v10[1] = v5;
  v10[2] = @"GestureCancelledByOverlappingExistingTransaction";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v7;
}

- (void)_handleScrunchGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] != 1)
  {
    if ([v4 state] == 3)
    {
      kdebug_trace();
    }

    goto LABEL_7;
  }

  kdebug_trace();
  if ([v4 recognizedTouchType])
  {
    goto LABEL_7;
  }

  if (self->_multitaskingGesturesRequireEducation)
  {
    v5 = @"requires education";
    goto LABEL_11;
  }

  if (!self->_multitaskingGesturesUserPreferenceIsOff)
  {
LABEL_7:
    [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:v4];
    goto LABEL_8;
  }

  v5 = @"user preference off";
LABEL_11:
  [(SBFluidSwitcherGestureManager *)self failMultitaskingGesturesForReason:v5];
  if (self->_multitaskingGesturesRequireEducation)
  {
    v6 = SBLogSystemGesture();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Suggesting education for multitasking gesture instead of actually performing it", v8, 2u);
    }

    v7 = [SBApp productivityGestureEducationController];
    [v7 gestureActivatedForType:6];
  }

LABEL_8:
}

- (void)_handleFloatingAppPresentGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _grabberTongueForGestureRecognizer:v4];
  [v5 dismissWithStyle:0 animated:1];
  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:v4];
}

- (void)_handleTapToBringItemContainerForward:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 tapWasCommandModified];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Tap was command modified:%@", &v9, 0xCu);
  }

  if (([v4 tapWasCommandModified] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleTapToBringItemContainerForward:v4];
  }
}

- (void)_handleClickDownToBringItemContainerForward:(id)a3
{
  v5 = a3;
  if ([v5 state] == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleClickDownToBringItemContainerForward:v5];

    [v5 setEnabled:0];
    [v5 setEnabled:1];
  }
}

- (void)_handleHoverGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained handleContinuousExposeHoverGesture:v4];
}

- (void)_handleContinuousExposeStripRevealGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _grabberTongueForGestureRecognizer:v4];
  [v5 dismissWithStyle:0 animated:1];
  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:v4];
}

- (void)_handleWindowDragGestureRecognizer:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_unpinSplitViewApplicationGestureRecognizer == v4)
  {
    clickDownToBringItemContainerForwardGestureRecognizer = self->_clickDownToBringItemContainerForwardGestureRecognizer;
    if (clickDownToBringItemContainerForwardGestureRecognizer)
    {
      v6 = [(UILongPressGestureRecognizer *)clickDownToBringItemContainerForwardGestureRecognizer isEnabled];
      [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_clickDownToBringItemContainerForwardGestureRecognizer setEnabled:v6];
      v4 = v7;
    }
  }

  [(SBFluidSwitcherGestureManager *)self _handleFluidGesture:v4];
}

- (BOOL)_shouldSceneResizeGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v9 = [WeakRetained windowManagementContext];
  v10 = [v9 isFlexibleWindowingEnabled];

  if (v10)
  {
    v11 = [(SBFluidSwitcherGestureManager *)self _shouldFlexibleWindowingSceneResizeGesture:v7 receiveTouch:v6];
  }

  else
  {
    v11 = [(SBFluidSwitcherGestureManager *)self _shouldMedusaSceneResizeGesture:v7 receiveTouch:v6];
  }

  v12 = v11;

  return v12;
}

- (BOOL)_shouldFlexibleWindowingSceneResizeGesture:(id)a3 receiveTouch:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v9 = [v8 appLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v11 = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v13 = v12;
  v15 = v14;

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    *(v44 + 24) = 0;
    v20 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher doesn't own the home gesture.", buf, 2u);
    }

    goto LABEL_10;
  }

  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]!= 3)
  {
    *(v44 + 24) = 0;
    v20 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
      *buf = 134217984;
      v48 = v21;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher's unlocked environment mode is: %li", buf, 0xCu);
    }

LABEL_10:

    goto LABEL_17;
  }

  v17 = [v9 allItems];
  v18 = [v17 count] < 2;

  if (v18)
  {
    v19 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because there are not multiple app scenes on stage.", buf, 2u);
    }

    *(v44 + 24) = 0;
  }

  else
  {
    v22 = [WeakRetained visibleSplitViewHandleNubViews];
    if ([v22 count])
    {
      +[SBSplitViewHandleNubView nubHitTestSize];
      SBRectWithSize();
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke;
      v33[3] = &unk_2783C1F30;
      v37 = v23;
      v38 = v24;
      v39 = v25;
      v40 = v26;
      v36 = &v43;
      v41 = v13;
      v42 = v15;
      v34 = v9;
      v35 = self;
      [v22 enumerateKeysAndObjectsUsingBlock:v33];
    }
  }

LABEL_17:
  if (*(v44 + 24) == 1)
  {
    -[SBPanSystemGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:](self->_sceneResizePanGestureRecognizer, "setFailsPastMaximumPressDurationWithoutHysteresis:", [v7 _isPointerTouch] ^ 1);
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    v50.x = v13;
    v50.y = v15;
    v28 = NSStringFromPoint(v50);
    v29 = [v27 stringWithFormat:@"didn't find an SBSplitViewHandleNubView at location %@", v28];

    v30 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v29;
      _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because %@", buf, 0xCu);
    }
  }

  v31 = *(v44 + 24);

  _Block_object_dispose(&v43, 8);
  return v31 & 1;
}

void __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 center];
  UIRectCenteredAboutPoint();
  *(*(*(a1 + 48) + 8) + 24) = CGRectContainsPoint(v18, *(a1 + 88));
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v8 = [v7 displayItems];
    v9 = *(a1 + 32);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__SBFluidSwitcherGestureManager__shouldFlexibleWindowingSceneResizeGesture_receiveTouch___block_invoke_2;
    v16[3] = &unk_2783A8C90;
    v10 = v8;
    v17 = v10;
    v11 = [v9 appLayoutWithItemsPassingTest:v16];
    v12 = [v10 firstObject];
    v13 = [v11 itemForLayoutRole:1];
    v14 = [(SBDisplayItem *)v12 isEqualToItem:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [v11 flippedAppLayout];

      v11 = v15;
    }

    [*(*(a1 + 40) + 312) setSplitPairAppLayout:v11];
    *a4 = 1;
  }
}

- (BOOL)_shouldMedusaSceneResizeGesture:(id)a3 receiveTouch:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v10 = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v12 = v11;
  v14 = v13;

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v18 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Preventing the switcher resize gesture because the switcher doesn't own the home gesture.";
      goto LABEL_18;
    }

LABEL_19:

    goto LABEL_20;
  }

  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]!= 3)
  {
    v20 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because the switcher's unlocked environment mode is: %li", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v16 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v17 = [v16 isFloatingSwitcherVisible];

  if (v17)
  {
    v18 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Preventing the switcher resize gesture because the floating switcher is visible.";
LABEL_18:
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (([v8 layoutContainsRole:2] & 1) == 0)
  {
    v18 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Preventing the switcher resize gesture because there isn't a side app.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ([(SBFluidSwitcherGestureManager *)self _hasActiveModalFloatingApplication])
  {
    v18 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Preventing the switcher resize gesture because there is an modal floating application presented.";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v23 = [v8 appLayout];
  v20 = [v23 leafAppLayoutForRole:1];

  v24 = [v8 appLayout];
  v25 = [v24 leafAppLayoutForRole:2];

  v26 = [WeakRetained visibleItemContainers];
  v27 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    v28 = v20;
  }

  else
  {
    v28 = v25;
  }

  v29 = [v26 objectForKey:v28];

  v30 = [WeakRetained visibleItemContainers];
  if ([*v27 userInterfaceLayoutDirection] == 1)
  {
    v31 = v25;
  }

  else
  {
    v31 = v20;
  }

  v32 = [v30 objectForKey:v31];

  [v32 frame];
  CGRectGetMaxX(v47);
  [v29 frame];
  CGRectGetMinX(v48);
  +[SBSeparatorView nubHitTestSize];
  SBRectWithSize();
  v33 = [(SBFluidSwitcherGestureManager *)self switcherContentController];
  [v33 keyboardHeight];

  [v32 frame];
  CGRectGetMaxX(v49);
  [v32 frame];
  [v32 frame];
  UIRectCenteredAboutPoint();
  v46.x = v12;
  v46.y = v14;
  if (!CGRectContainsPoint(v50, v46))
  {
    v37 = MEMORY[0x277CCACA8];
    v45.x = v12;
    v45.y = v14;
    v38 = NSStringFromPoint(v45);
    v39 = [v37 stringWithFormat:@"didn't find a SBSeparatorView at location %@", v38];

    v40 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v39;
      _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "Preventing the switcher resize gesture because %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![v8 layoutContainsRole:3] || (objc_msgSend(WeakRetained, "_itemContainerAtLocation:environment:", 2, v12, v14), (v34 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![v8 layoutContainsRole:4] || (objc_msgSend(WeakRetained, "_itemContainerAtLocation:environment:", 3, v12, v14), (v41 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      -[SBPanSystemGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:](self->_sceneResizePanGestureRecognizer, "setFailsPastMaximumPressDurationWithoutHysteresis:", [v6 _isPointerTouch] ^ 1);
      v21 = 1;
      goto LABEL_21;
    }

    v20 = v41;
    v35 = SBLogSystemGestureAppSwitcher();
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 0;
    v36 = "Preventing the switcher resize gesture because the separator nub is occluded by a center window application.";
    goto LABEL_40;
  }

  v20 = v34;
  v35 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v36 = "Preventing the switcher resize gesture because the separator nub is occluded by a floating application.";
LABEL_40:
    _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 2u);
  }

LABEL_41:

LABEL_9:
LABEL_20:
  v21 = 0;
LABEL_21:

  return v21;
}

- (BOOL)_hasActiveModalFloatingApplication
{
  v2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  if ([v2 layoutContainsRole:3])
  {
    v3 = +[SBPlatformController sharedInstance];
    v4 = [v3 medusaCapabilities];

    v5 = v4 == 1 && SBSpaceConfigurationIsSplitView([v2 spaceConfiguration]);
    v6 = [v2 elementWithRole:1];
    v7 = v6;
    if (v6)
    {
      v5 |= ([v6 layoutAttributes] >> 1) & 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (id)dragAndDropManager:(id)a3 displayItemForDraggingWindowWithGestureRecognizer:(id)a4
{
  v5 = a4;
  if (self->_pinFloatingApplicationGestureRecognizer == v5)
  {
    WeakRetained = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
    v13 = [WeakRetained itemForLayoutRole:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v7 = [WeakRetained view];
    [(SBFluidSwitcherPanGestureRecognizer *)v5 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [WeakRetained _leafAppLayoutForItemContainerAtLocation:1 environment:{v9, v11}];
    v13 = [v12 itemForLayoutRole:1];
  }

  return v13;
}

- (id)dragAndDropManager:(id)a3 sourceViewProviderForDraggingWindowWithGestureRecognizer:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = WeakRetained;
  if (self->_pinFloatingApplicationGestureRecognizer != v5)
  {
    v8 = [WeakRetained view];
    [(SBFluidSwitcherPanGestureRecognizer *)v5 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [v7 _leafAppLayoutForItemContainerAtLocation:1 environment:{v10, v12}];
LABEL_4:
    v14 = [v7 visibleItemContainers];
    v15 = [v14 objectForKey:v13];

    goto LABEL_5;
  }

  v13 = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
  if (v13)
  {
    goto LABEL_4;
  }

  v15 = 0;
LABEL_5:

  return v15;
}

- (void)dragAndDropManager:(id)a3 didBeginDraggingWindowWithSceneIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self didBeginDraggingWindowWithSceneIdentifier:v5];
}

- (void)dragAndDropManager:(id)a3 didPlatterizeWindowDragWithSceneIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self didPlatterizeWindowDragWithSceneIdentifier:v5];
}

- (void)dragAndDropManager:(id)a3 willEndDraggingWindowWithSceneIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self willEndDraggingWindowWithSceneIdentifier:v5];
}

- (void)dragAndDropManager:(id)a3 didBeginGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self didBeginGesture:v5];
}

- (void)dragAndDropManager:(id)a3 didUpdateGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self didUpdateGesture:v5];
}

- (void)dragAndDropManager:(id)a3 didEndGesture:(id)a4
{
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self delegate];
  [v6 fluidSwitcherGestureManager:self didEndGesture:v5];
}

- (void)_handleFluidGesture:(id)a3
{
  v5 = a3;
  if (![(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:?])
  {
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherGestureBegan:v5];
  }

  if ([(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:v5])
  {
    v4 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    [v4 systemGestureStateChanged:v5];
  }
}

- (void)_handleSwitcherGestureBegan:(id)a3
{
  v4 = a3;
  [(SBFluidSwitcherGestureManager *)self _hideGrabberAnimated:1];
  [(SBFluidSwitcherGestureManager *)self _startFluidSwitcherTransactionForGestureRecognizer:v4];
}

- (void)_startFluidSwitcherTransactionForGestureRecognizer:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(SBFluidSwitcherGestureManager *)self _isTransactionRunningForGestureRecognizer:v4])
  {
    v5 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    v6 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = SBSystemGestureRecognizerStateDescription([v4 state]);
      *buf = 138544130;
      v22 = v8;
      v23 = 2050;
      v24 = v4;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Requesting fluid switcher gesture transaction for gesture recognizer: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", buf, 0x2Au);
    }

    if (v5)
    {
      v10 = [v5 gestureRecognizer];

      if (v10 == v4)
      {
        [v5 setShouldCancelGestureUponInterruption:0];
      }
    }

    v11 = [MEMORY[0x277D0AB20] sharedInstance];
    [v11 cancelEventsWithName:@"SBFluidSwitcherGesture"];

    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v13 = [WeakRetained windowScene];
    v14 = [v13 _fbsDisplayConfiguration];

    v15 = +[SBWorkspace mainWorkspace];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke;
    v19[3] = &unk_2783AAA48;
    v19[4] = self;
    v20 = v4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_2;
    v16[3] = &unk_2783B3CF0;
    v17 = v20;
    v18 = self;
    [v15 requestTransitionWithOptions:0 displayConfiguration:v14 builder:v19 validator:v16];
  }
}

void __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:11];
  [v3 setEventLabel:@"SBFluidSwitcherGesture"];
  [*(a1 + 32) _configureTransitionRequest:v3 forGestureBegin:*(a1 + 40)];
}

BOOL __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) state];
  v5 = v4 - 1;
  if ((v4 - 1) > 1)
  {
    v7 = v4;
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = SBSystemGestureRecognizerStateDescription(v7);
      *buf = 138543874;
      v18 = v10;
      v19 = 2050;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "No longer creating transaction for gesture recognizer since it has ended since the request was enqueued: <%{public}@:%{public}p> (%{public}@)", buf, 0x20u);
    }
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_3;
    v15[3] = &unk_2783B40C0;
    v14 = *(a1 + 32);
    v6 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    [v3 setTransactionProvider:v15];
  }

  return v5 < 2;
}

id __84__SBFluidSwitcherGestureManager__startFluidSwitcherTransactionForGestureRecognizer___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [*(a1 + 32) _fluidSwitcherGestureTransactionClassForGestureType:{objc_msgSend(v3, "_gestureTypeForGestureRecognizer:", v4)}];
  v7 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromClass(v6);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 40);
    v12 = SBSystemGestureRecognizerStateDescription([v11 state]);
    v19 = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v10;
    v23 = 2050;
    v24 = v11;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Creating %{public}@ for gesture recognizer: <%{public}@:%{public}p> (%{public}@)", &v19, 0x2Au);
  }

  v13 = [v6 alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v15 = [v13 initWithTransitionRequest:v5 switcherController:WeakRetained delegate:*(a1 + 32)];

  [v15 setGestureRecognizer:*(a1 + 40)];
  v16 = [*(a1 + 32) switcherController];
  v17 = [v16 switcherCoordinator];
  [v17 setActiveGestureTransaction:v15];

  return v15;
}

- (void)_configureTransitionRequest:(id)a3 forGestureBegin:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained _configureTransitionRequestForGestureBegin:v6];

  v9 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (v9 == v7)
  {
    goto LABEL_8;
  }

  v10 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
  if (v10 == v7)
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v14 = [(SBFluidSwitcherGestureManager *)self _firstFloatingAppLayout];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77__SBFluidSwitcherGestureManager__configureTransitionRequest_forGestureBegin___block_invoke;
    v16[3] = &unk_2783A96A0;
    v17 = v14;
    v18 = self;
    v15 = v14;
    [v6 modifyApplicationContext:v16];

    goto LABEL_10;
  }

  v11 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  v12 = v11;
  if (v11 == v7)
  {

    goto LABEL_7;
  }

  v13 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (v13 == v7)
  {
    goto LABEL_9;
  }

LABEL_10:
}

void __77__SBFluidSwitcherGestureManager__configureTransitionRequest_forGestureBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [*(a1 + 32) itemForLayoutRole:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v7 = [v4 _entityForDisplayItem:v5 switcherController:WeakRetained];

  [v3 setEntity:v7 forLayoutRole:3];
}

- (void)fluidSwitcherGestureTransaction:(id)a3 didBeginGesture:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didBeginGesture:v5];
}

- (void)fluidSwitcherGestureTransaction:(id)a3 didUpdateGesture:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didUpdateGesture:v5];
}

- (void)fluidSwitcherGestureTransaction:(id)a3 didEndGesture:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureManager:self didEndGesture:v5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant || ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v20 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      Name = class_getName(v21);
      v23 = objc_opt_class();
      v26 = 136446978;
      v27 = Name;
      v28 = 2050;
      v29 = v6;
      v30 = 2082;
      v31 = class_getName(v23);
      v32 = 2048;
      v33 = v7;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Preventing <%{public}s: %{public}p> from receiving <%{public}s: %p> because the switcher does not own the home gesture.", &v26, 0x2Au);
    }

    goto LABEL_25;
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == v6 || self->_liveWindowResizeGestureRecognizer == v6 || self->_tapToBringItemContainerForwardGestureRecognizer == v6 || self->_clickDownToBringItemContainerForwardGestureRecognizer == v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v10 = [WeakRetained view];

    _UISystemGestureLocationForTouchInView();
    v12 = v11;
    v14 = v13;
    v15 = objc_loadWeakRetained(&self->_switcherController);
    v16 = [v15 windowScene];
    v17 = [v16 menuBarManager];
    v18 = [v17 isPointInsideMenuBarContent:v10 fromCoordinateSpace:{v12, v14}];

    if (v18)
    {
LABEL_25:
      v19 = 0;
      goto LABEL_26;
    }
  }

  if (self->_deckInSwitcherPanGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldDeckInSwitcherPanGesture:v6 receiveTouch:v7];
LABEL_40:
    v19 = v25;
    goto LABEL_26;
  }

  if (self->_swipeUpFloatingAppGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationSwipeUpGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_moveFloatingApplicationGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationMoveGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_pinFloatingApplicationGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldFloatingApplicationPinGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_unpinSplitViewApplicationGestureRecognizer == v6)
  {
    v25 = [SBFluidSwitcherGestureManager _shouldSplitViewApplicationUnpinGesture:"_shouldSplitViewApplicationUnpinGesture:receiveTouch:" receiveTouch:?];
    goto LABEL_40;
  }

  if (self->_sceneResizePanGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldSceneResizeGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_indirectFloatingAppScrunchGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldIndirectFloatingAppScrunchGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_clickAndDragHomeGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldClickAndDragHomeGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_liveWindowResizeGestureRecognizer == v6)
  {
    v25 = [SBFluidSwitcherGestureManager _shouldLiveResizeGesture:"_shouldLiveResizeGesture:receiveTouch:" receiveTouch:?];
    goto LABEL_40;
  }

  if (self->_tapToBringItemContainerForwardGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldTapToBringItemContainerForward:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_clickDownToBringItemContainerForwardGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldClickDownToBringItemContainerForward:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_dragContinuousExposeStripOverflowGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldContinuousExposeStripOverflowPanGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  if (self->_userClickInAppInteractionGestureRecognizer == v6)
  {
    v25 = [(SBFluidSwitcherGestureManager *)self _shouldUserClickInAppInteractionGesture:v6 receiveTouch:v7];
    goto LABEL_40;
  }

  v19 = 1;
LABEL_26:

  return v19;
}

- (BOOL)_shouldDeckInSwitcherPanGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained view];
  _UISystemGestureLocationForTouchInView();
  v11 = v10;
  v13 = v12;

  v14 = [WeakRetained _itemContainerAtLocation:1 environment:{v11, v13}];

  if (v14)
  {
    v15 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_INFO, "Preventing the in switcher gesture because the touch is on top of an item container.", v17, 2u);
    }
  }

  return v14 == 0;
}

- (BOOL)_shouldFloatingApplicationSwipeUpGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained view];

  _UISystemGestureLocationForTouchInView();
  v11 = v10;
  v13 = v12;

  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [MEMORY[0x277D77750] sb_floatingApplicationDisplayEdgeInfo];
  v31.origin.x = v15;
  v31.origin.y = v17;
  v31.size.width = v19;
  v31.size.height = v21;
  MaxY = CGRectGetMaxY(v31);
  v24 = [v22 safeAreaInsetsPortrait];
  [v24 bottomInset];
  v26 = MaxY - v25;
  v27 = v13 > v26;

  v28 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  LOBYTE(v24) = [v28 isFloatingSwitcherVisible];

  if ((v24 & 1) == 0)
  {
    v32.origin.x = v15;
    v32.origin.y = v17;
    v32.size.width = v19;
    v32.size.height = v21;
    if (v11 >= CGRectGetMinX(v32))
    {
      v33.origin.x = v15;
      v33.origin.y = v17;
      v33.size.width = v19;
      v33.size.height = v21;
      v29 = v11 < CGRectGetMaxX(v33);
      v27 = v13 > v26 && v29;
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (BOOL)_shouldFloatingApplicationMoveGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 _isPointerTouch])
  {
    v8 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v10 = [WeakRetained view];

    _UISystemGestureLocationForTouchInView();
    [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    [v7 locationInView:0];
    v21 = v20;
    v23 = v22;
    v24 = objc_loadWeakRetained(&self->_switcherController);
    v25 = [v24 windowScene];

    v26 = [v25 systemGestureManager];
    v27 = [v26 shouldSystemGestureReceiveTouchWithLocation:{v21, v23}];
    v28 = SBIsSystemGestureAllowed(v25, 23);
    v29 = [v19 layoutContainsRole:3];
    v8 = 0;
    if (v27 && v28)
    {
      v30 = 0;
      if (v29)
      {
        +[SBNubView height];
        UIRectInset();
        v44 = v12;
        v43 = v16;
        UIRectInset();
        v32 = v31;
        v34 = v33;
        v41 = v35;
        v42 = v36;
        if (SBRectContainsPoint() && (SBRectContainsPoint() & 1) == 0)
        {
          v37 = [v19 floatingConfiguration];
          v38 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
          v39 = 1;
          if (v38 == 1)
          {
            v39 = 2;
          }

          if (v37 == v39)
          {
            v45.origin.x = v41;
            v45.origin.y = v32;
            v45.size.width = v34;
            v45.size.height = v42;
            CGRectGetMaxX(v45);
          }

          v46.origin.x = v44;
          v46.origin.y = v14;
          v46.size.width = v43;
          v46.size.height = v18;
          CGRectGetMaxX(v46);
          if ((SBRectContainsPoint() & 1) != 0 || (SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint())
          {
            v8 = 1;
            v30 = 1;
          }

          else
          {
            v30 = 0;
            v8 = 1;
          }
        }

        else
        {
          v8 = 0;
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    [(SBPanSystemGestureRecognizer *)self->_moveFloatingApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:v30];
  }

  return v8;
}

- (BOOL)_shouldFloatingApplicationPinGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained view];

  _UISystemGestureLocationForTouchInView();
  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  [v6 locationInView:0];
  v20 = v19;
  v22 = v21;

  v23 = objc_loadWeakRetained(&self->_switcherController);
  v24 = [v23 windowScene];

  v25 = [v24 systemGestureManager];
  v26 = [v25 shouldSystemGestureReceiveTouchWithLocation:{v20, v22}];
  v27 = SBIsSystemGestureAllowed(v24, 24);
  v28 = [v18 layoutContainsRole:3];
  v29 = [(SBFluidSwitcherGestureManager *)self _isBannerOccludingRegionAtReferencePoint:v20, v22];
  v30 = 0;
  if (v26 && v27 && v28 && !v29)
  {
    v31 = +[SBMedusaDomain rootSettings];
    [v31 narrowEdgeSwipeHitTestWidth];

    +[SBNubView height];
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    CGRectGetMidX(v33);
    v30 = SBRectContainsPoint();
  }

  return v30;
}

- (BOOL)_shouldSplitViewApplicationUnpinGesture:(id)a3 receiveTouch:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v82 = a3;
  v6 = a4;
  [v6 locationInView:0];
  if (![(SBFluidSwitcherGestureManager *)self _isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:[(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:v6] withinUnstashLocationOnHomeScreen:v7, v8])
  {
    v23 = 0;
    goto LABEL_61;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v10 = objc_loadWeakRetained(&self->_switcherContentController);
  v79 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v81 = [v79 appLayout];
  v80 = [v10 view];
  _UISystemGestureLocationForTouchInView();
  v12 = v11;
  v14 = v13;
  v15 = [WeakRetained windowManagementContext];
  v16 = [v15 isFlexibleWindowingEnabled];

  if (v16)
  {
    v17 = [v10 visibleItemContainers];
    v18 = [v17 allValues];
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke;
    v88[3] = &unk_2783C1F58;
    v19 = v81;
    v89 = v19;
    v90 = v80;
    v91 = v12;
    v92 = v14;
    v20 = [v18 bs_firstObjectPassingTest:v88];

    if (v20)
    {
      v21 = [v20 appLayout];
      if ([v19 containsAnyItemFromAppLayout:v21])
      {
        v22 = 0;
      }

      else
      {
        v24 = [v10 adjustedAppLayoutForLeafAppLayout:v21];
        if (v24)
        {
          v77 = v10;
          v25 = WeakRetained;
          v26 = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
          v27 = [v26 isStripVisible];

          v22 = (v27 & 1) != 0 ? 0 : v20;
          WeakRetained = v25;
          v10 = v77;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      goto LABEL_24;
    }
  }

  v28 = [WeakRetained windowManagementContext];
  if ([v28 isFlexibleWindowingEnabled])
  {
    v29 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
    if (v29)
    {
      v30 = v29;
      v31 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
      if (![v81 containsItem:v31])
      {
        if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v12, v14])
        {
        }

        else
        {
          v62 = [(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:v6];

          if (!v62)
          {
            goto LABEL_22;
          }
        }

        v22 = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
        [v82 setInitialTouchLeafAppLayout:v22];
        v61 = 1;
        goto LABEL_50;
      }
    }
  }

LABEL_22:
  v22 = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:v6 atGestureLocation:v12, v14];
  if (v22 && !self->_windowMoveClientGateRelationshipGestureRecognizer)
  {
    -[SBFluidSwitcherGestureManager _edgeSwipeHitTestRectForItemContainer:forPointerTouch:](self, "_edgeSwipeHitTestRectForItemContainer:forPointerTouch:", v22, [v6 _isPointerTouch]);
    v61 = 0;
    v32 = 0;
    if (SBRectContainsPoint())
    {
      goto LABEL_25;
    }

LABEL_50:

    v22 = 0;
    v32 = v61;
    goto LABEL_25;
  }

LABEL_24:
  v32 = 0;
LABEL_25:
  v33 = [WeakRetained windowManagementContext];
  v34 = [v33 isChamoisOrFlexibleWindowing];

  if (v34 && !v22)
  {
    v35 = [v10 visibleItemContainers];
    v36 = [v35 allValues];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke_2;
    v83[3] = &unk_2783C1F58;
    v84 = v81;
    v85 = v80;
    v86 = v12;
    v87 = v14;
    v22 = [v36 bs_firstObjectPassingTest:v83];
  }

  if (v22)
  {
    v76 = v32;
    v78 = v10;
    v37 = [v22 appLayout];
    [v82 setInitialTouchLeafAppLayout:v37];

    v38 = [v6 _isPointerTouch];
    v39 = [WeakRetained windowManagementContext];
    v40 = [v39 isChamoisOrFlexibleWindowing];

    [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:v22 forPointerTouch:v38];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = SBRectContainsPoint();
    v50 = [v22 appLayout];
    v51 = [v81 isOrContainsAppLayout:v50];

    if (v38 & [(SBFluidSwitcherGestureManager *)self _isTouchLocationInWindowControlsFrame:v12, v14]& 1 | ((v40 & v51 & (v38 | v49) & 1) == 0))
    {
      v52 = 10.0;
    }

    else
    {
      v52 = 1.0;
    }

    [(SBFluidSwitcherPanGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer _setHysteresis:v52];
    v53 = 0;
    if (!v40 || (v38 & 1) != 0)
    {
      goto LABEL_54;
    }

    v54 = [WeakRetained _slideOverDisplayItem];
    if (v54)
    {
      v74 = WeakRetained;
      v55 = [v22 appLayout];
      v56 = [v55 containsItem:v54];

      if (!v56 || (*v94 = 0, memset(buf, 0, sizeof(buf)), [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration], (v94[1] & 1) != 0))
      {
        v53 = 0;
        WeakRetained = v74;
LABEL_53:

LABEL_54:
        [(SBPanSystemGestureRecognizer *)self->_unpinSplitViewApplicationGestureRecognizer setFailsPastMaximumPressDurationWithoutHysteresis:v53];
        v57 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v108.x = v12;
          v108.y = v14;
          v63 = NSStringFromCGPoint(v108);
          [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:v22 forPointerTouch:v38 & 1];
          v64 = NSStringFromCGRect(v109);
          v65 = NSStringFromBOOL();
          NSStringFromBOOL();
          v66 = v73 = v6;
          v67 = NSStringFromBOOL();
          v68 = NSStringFromBOOL();
          v110.origin.x = v42;
          v110.origin.y = v44;
          v110.size.width = v46;
          v110.size.height = v48;
          v69 = NSStringFromCGRect(v110);
          NSStringFromBOOL();
          v70 = v75 = WeakRetained;
          *buf = 138414338;
          *&buf[4] = v63;
          *&buf[12] = 2112;
          *&buf[14] = v64;
          *&buf[22] = 2112;
          *&buf[24] = v65;
          *v94 = 2112;
          *&v94[2] = v66;
          v95 = 2112;
          v96 = v67;
          v97 = 2112;
          v98 = v68;
          v99 = 2112;
          v100 = v69;
          v101 = 2112;
          v102 = v70;
          v103 = 2048;
          v104 = v52;
          _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, "_unpinSplitViewApplicationGestureRecognizer receiving touch (%@): hit-tested to item container (%@); isChamoisWindowingUIEnabled: %@; isSelectedAppLayoutOnStage: %@; isPointerTouch: %@; isTouchWithinEdgeSwipeHitTestRect: %@ (%@); isTouchLocationInWindowControlsFrame: %@; hysteresis: %f", buf, 0x5Cu);

          WeakRetained = v75;
          v6 = v73;
        }

        v10 = v78;
        LOBYTE(v32) = v76;
        goto LABEL_57;
      }

      WeakRetained = v74;
      if ((SBRectContainsPoint() & 1) == 0)
      {
        [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:v22 forPointerTouch:0];
        [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:v22 forPointerTouch:0];
        v72 = (SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint();
        [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:v22 forPointerTouch:1];
        v53 = v72 | SBRectContainsPoint() ^ 1;
        goto LABEL_53;
      }
    }

    v53 = 0;
    goto LABEL_53;
  }

  v57 = SBLogSystemGestureAppSwitcher();
  v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
  if (v32)
  {
    if (v58)
    {
      v106.x = v12;
      v106.y = v14;
      v59 = NSStringFromCGPoint(v106);
      *buf = 138412290;
      *&buf[4] = v59;
      v60 = "_unpinSplitViewApplicationGestureRecognizer receiving touch (%@): hit-tested to slideover tongue region with a stashed slideover item";
LABEL_43:
      _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, v60, buf, 0xCu);
    }
  }

  else if (v58)
  {
    v107.x = v12;
    v107.y = v14;
    v59 = NSStringFromCGPoint(v107);
    *buf = 138412290;
    *&buf[4] = v59;
    v60 = "_unpinSplitViewApplicationGestureRecognizer not receiving touch (%@): did not hit-test to item container";
    goto LABEL_43;
  }

LABEL_57:

  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v32;
  }

LABEL_61:
  return v23;
}

BOOL __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

BOOL __86__SBFluidSwitcherGestureManager__shouldSplitViewApplicationUnpinGesture_receiveTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (BOOL)_shouldIndirectFloatingAppScrunchGesture:(id)a3 receiveTouch:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained view];
  [(SBFluidSwitcherGestureManager *)self _floatingApplicationBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v16 = [v15 isFloatingSwitcherVisible];

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v18 = objc_loadWeakRetained(&self->_switcherController);
    v19 = [v18 windowScene];
    v20 = [v19 systemGestureManager];
    v21 = [v20 indirectTouchLifecycleMonitor];
    [v21 systemGestureHoverLocationInView:v6];
    v23 = v22;
    v25 = v24;

    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    v27.x = v23;
    v27.y = v25;
    v17 = CGRectContainsPoint(v28, v27);
  }

  return v17;
}

- (BOOL)_shouldClickAndDragHomeGesture:(id)a3 receiveTouch:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if ([a4 _isPointerTouch])
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v6 = [WeakRetained windowScene];
    v7 = [v6 systemPointerInteractionManager];
    v8 = [v7 activePointerRegionView];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(&v14 + 1) + 8 * i) == v8)
          {
            LOBYTE(v10) = 1;
            goto LABEL_13;
          }
        }

        v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_shouldLiveResizeItemContainerGestureWithTouch:(id)a3 receiveTouch:(id)a4 allowedCorners:(unint64_t)a5 requiresVisibleCorner:(BOOL)a6 allowedEdges:(unint64_t)a7
{
  v77 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v14 = objc_loadWeakRetained(&self->_switcherContentController);
  v15 = [v14 view];
  v54 = v12;
  _UISystemGestureLocationForTouchInView();
  v17 = v16;
  v19 = v18;

  v20 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v21 = [v20 appLayout];
  v22 = +[SBApplicationController sharedInstance];
  LOBYTE(v12) = [v22 _appLayoutContainsOnlyResizableApps:v21];

  if (v12)
  {
    v46 = a6;
    v48 = a7;
    v23 = [v14 _itemContainerAtLocation:0 environment:{v17, v19}];
    [v11 initialTouchLeafAppLayout];
    v50 = v53 = WeakRetained;
    if (!v50 || ![v21 containsAnyItemFromAppLayout:v50] || (objc_msgSend(v14, "visibleItemContainers"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "objectForKey:", v50), v25 = objc_claimAutoreleasedReturnValue(), v24, !v25) || (v74 = v25, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v74, 1), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
    {
      v27 = [WeakRetained displayItemLayoutAttributesProvider];
      v28 = [v20 interfaceOrientation];
      if ((v28 - 1) < 2)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2 * ((v28 - 3) < 2);
      }

      v30 = [v27 zOrderedItemsInAppLayout:v21 orientation:v29];

      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke;
      v71[3] = &unk_2783B9DC8;
      v72 = v21;
      v73 = v14;
      v31 = [v30 bs_compactMap:v71];
      v26 = v31;
      if (v23 && [v31 containsObject:v23])
      {
        v32 = [v26 sb_arrayByInsertingOrMovingObject:v23 toIndex:0];

        v26 = v32;
      }

      WeakRetained = v53;
    }

    v45 = [WeakRetained _slideOverDisplayItem];
    if (v45 && ([(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration], (v70 & 1) == 0))
    {
      v33 = [(SBFluidSwitcherGestureManager *)self _hitTestStageItemContainerForUnpinGestureWithTouch:v54 atGestureLocation:v17, v19];
    }

    else
    {
      v33 = 0;
    }

    v35 = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke_2;
    v55[3] = &unk_2783C1F80;
    v56 = v33;
    v57 = v35;
    v58 = v23;
    v65 = a5;
    v69 = v46;
    v66 = v17;
    v67 = v19;
    v59 = v21;
    v60 = self;
    v61 = v53;
    v68 = v48;
    v36 = v11;
    v62 = v36;
    v37 = v54;
    v63 = v37;
    v64 = v14;
    v52 = v23;
    v49 = v35;
    v47 = v33;
    v38 = [v26 bs_firstObjectPassingTest:v55];
    v39 = v38;
    v34 = v38 != 0;
    if (v38)
    {
      v40 = [v38 appLayout];
      [v36 setInitialTouchLeafAppLayout:v40];

      if (![v36 selectedEdge] || (objc_msgSend(v36, "hasEdgeResizeSeenTouchOutsideHittestedView") & 1) != 0 || (objc_msgSend(v37, "_isPointerTouch") & 1) != 0)
      {
        [v36 _setHysteresis:0.0];
        v41 = v36;
        v42 = 0;
      }

      else
      {
        [v36 _setHysteresis:10.0];
        v41 = v36;
        v42 = 1;
      }

      [v41 setFailsPastMaximumPressDurationWithoutHysteresis:v42];
    }

    else
    {
      v43 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v43, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize touch gesture because no item container.", buf, 2u);
      }
    }

    WeakRetained = v53;
  }

  else
  {
    v26 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = v21;
      _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize touch gesture because app layout doesn't contain only resizable apps. %@", buf, 0xCu);
    }

    v34 = 0;
  }

  return v34;
}

id __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) leafAppLayoutForItem:a2];
  v4 = [*(a1 + 40) visibleItemContainers];
  v5 = [v4 objectForKey:v3];

  return v5;
}

uint64_t __143__SBFluidSwitcherGestureManager__shouldLiveResizeItemContainerGestureWithTouch_receiveTouch_allowedCorners_requiresVisibleCorner_allowedEdges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5 == v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [v3 appLayout];
    v8 = [v7 itemForLayoutRole:1];

    v9 = [*(a1 + 40) flexibleAutoLayoutItemForDisplayItem:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isFullyOccluded] & 1) == 0)
      {
        if (![v10 isOverlapped] || (v13 = *(a1 + 48)) == 0 || v13 == v4 || (v14 = *(a1 + 56), objc_msgSend(v13, "appLayout"), v15 = objc_claimAutoreleasedReturnValue(), LOBYTE(v14) = objc_msgSend(v14, "containsAnyItemFromAppLayout:", v15), v15, (v14 & 1) == 0))
        {
          [v4 frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = *(a1 + 104) & [v4 allowedTouchResizeCorners];
          if (*(a1 + 136) == 1)
          {
            LOBYTE(v24) = [v4 visibleTouchResizeCorners] & v24;
          }

          SBRectWithSize();
          if ((v24 & 8) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v43, *(a1 + 112));
            if (v26)
            {
              v25 = 8;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
            v26 = 0;
          }

          if (!v26 && (v24 & 4) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v44, *(a1 + 112));
            v27 = 4;
            if (!v26)
            {
              v27 = 0;
            }

            v25 |= v27;
          }

          if (!v26 && (v24 & 2) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v45, *(a1 + 112));
            v28 = 2;
            if (!v26)
            {
              v28 = 0;
            }

            v25 |= v28;
          }

          if (!v26 && (v24 & 1) != 0)
          {
            UIRectCenteredAboutPoint();
            v26 = CGRectContainsPoint(v46, *(a1 + 112));
            v25 |= v26;
          }

          WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 16));
          v30 = [WeakRetained _isDisplayItemFullScreen:v8 preferredAttributes:0];

          v31 = [*(a1 + 72) _slideOverDisplayItem];
          v32 = BSEqualObjects();

          if (v26 || (v30 & 1) != 0 || (v32 & 1) != 0)
          {
            if (v26)
            {
LABEL_56:
              v36 = +[SBMainSwitcherControllerCoordinator sharedInstance];
              v37 = [v36 _entityForDisplayItem:v8 switcherController:*(a1 + 72)];

              v38 = [v37 deviceApplicationSceneEntity];
              v39 = [v38 sceneHandle];

              LOBYTE(v38) = [*(a1 + 96) isHintingResizeGrabberForDisplayItem:v8 corner:v25 inAppLayout:*(a1 + 56)];
              [v39 screenEdgesDeferringSystemGestures];
              v40 = UIRectCornersAtEdges();
              if ((v38 & 1) != 0 || (((~v40 & v25) == 0) & v30) != 1)
              {
                v11 = 1;
              }

              else
              {
                v41 = SBLogSystemGestureAppSwitcher();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *v42 = 0;
                  _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because of edge protect.", v42, 2u);
                }

                [*(a1 + 96) noteDidEdgeProtectResizeGrabberForDisplayItem:v8 inCorner:v25];
                v11 = 0;
              }

              goto LABEL_9;
            }
          }

          else
          {
            if ((*(a1 + 128) & 2) != 0 && ([*(a1 + 64) _touchLocationIsWithinUnstashRegion:{*(a1 + 112), *(a1 + 120)}] & 1) == 0)
            {
              v47.origin.x = v17 + -32.0;
              v47.size.width = 64.0;
              v47.origin.y = v19;
              v47.size.height = v23;
              if (CGRectContainsPoint(v47, *(a1 + 112)))
              {
                v33 = 2;
                goto LABEL_51;
              }
            }

            if ((*(a1 + 128) & 8) != 0 && ([*(a1 + 64) _touchLocationIsWithinUnstashRegion:{*(a1 + 112), *(a1 + 120)}] & 1) == 0)
            {
              v48.origin.x = v17 + v21 + -32.0;
              v48.size.width = 64.0;
              v48.origin.y = v19;
              v48.size.height = v23;
              if (CGRectContainsPoint(v48, *(a1 + 112)))
              {
                v33 = 8;
                goto LABEL_51;
              }
            }

            if ((*(a1 + 128) & 4) != 0)
            {
              v49.origin.y = v19 + v23 + -32.0;
              v49.size.height = 64.0;
              v49.origin.x = v17;
              v49.size.width = v21;
              if (CGRectContainsPoint(v49, *(a1 + 112)))
              {
                v33 = 4;
LABEL_51:
                [*(a1 + 80) setSelectedEdge:v33];
                if (([*(a1 + 80) hasEdgeResizeSeenTouchOutsideHittestedView] & 1) == 0)
                {
                  v34 = *(a1 + 80);
                  v50.origin.x = v17;
                  v50.origin.y = v19;
                  v50.size.width = v21;
                  v50.size.height = v23;
                  if (CGRectContainsPoint(v50, *(a1 + 112)))
                  {
                    v35 = [*(a1 + 88) _isPointerTouch];
                  }

                  else
                  {
                    v35 = 1;
                  }

                  [v34 setHasEdgeResizeSeenTouchOutsideHittestedView:v35];
                }

                goto LABEL_56;
              }
            }
          }
        }
      }
    }

    v11 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)_shouldLiveResizeItemContainerGestureWithPointer:(id)a3 receiveTouch:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if ([a4 _isPointerTouch])
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v6 = [WeakRetained itemContainerToResizeUsingPointer];
    v7 = v6;
    if (!v6)
    {
      v8 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because no item container.", &v20, 2u);
      }

      v15 = 0;
      goto LABEL_16;
    }

    v8 = [v6 appLayout];
    v9 = [WeakRetained adjustedAppLayoutForLeafAppLayout:v8];
    v10 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    v11 = [v10 appLayout];
    v12 = [v11 isOrContainsAppLayout:v8];

    if (v12)
    {
      v13 = +[SBApplicationController sharedInstance];
      v14 = [v13 _appLayoutContainsOnlyResizableApps:v9];

      if (v14)
      {
        v15 = 1;
LABEL_15:

LABEL_16:
        return v15;
      }

      v16 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because app layout doesn't contain only resizable apps. %@", &v20, 0xCu);
      }
    }

    else
    {
      v16 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        v18 = [v17 appLayout];
        v20 = 138412546;
        v21 = v18;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize pointer gesture because current layout state doesn't contain leaf app layout. %@ %@", &v20, 0x16u);
      }
    }

    v15 = 0;
    goto LABEL_15;
  }

  return 0;
}

- (BOOL)_shouldLiveResizeGesture:(id)a3 receiveTouch:(id)a4
{
  v43 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v8 = [WeakRetained windowScene];
  v9 = [v8 systemGestureManager];
  v10 = [v8 floatingDockController];
  v11 = [v8 screen];
  v12 = [v11 fixedCoordinateSpace];

  [v6 locationInView:0];
  v13 = [v10 containsPoint:v12 fromCoordinateSpace:?];
  v14 = [WeakRetained windowManagementContext];
  v15 = [v14 isChamoisOrFlexibleWindowing];

  if ((v15 & 1) == 0)
  {
    v16 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 0;
      v17 = "Preventing the switcher live resize gesture because neither Stage Manager nor Flexible Windowing was enabled.";
      v18 = &v50;
      goto LABEL_11;
    }

LABEL_12:

    v19 = 0;
    v20 = v43;
    goto LABEL_13;
  }

  [v6 locationInView:0];
  if (([v9 shouldSystemGestureReceiveTouchWithLocation:?] & 1) == 0)
  {
    v16 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "Preventing the switcher live resize gesture because covered by keyboard or PiP.";
      v18 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (([v9 isGestureWithTypeAllowed:31] & 1) == 0)
  {
    v22 = SBLogSystemGestureAppSwitcher();
    v20 = v43;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because not allowed.", v48, 2u);
    }

    goto LABEL_31;
  }

  if (v13)
  {
    v16 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v47 = 0;
      v17 = "Preventing the switcher live resize gesture because touch is inside floating dock.";
      v18 = &v47;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, v17, v18, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v23 = objc_loadWeakRetained(&self->_switcherContentController);
  v24 = [v23 itemContainerToResizeUsingPointer];
  if (!v24)
  {
    v25 = [v23 view];
    v20 = v43;
    _UISystemGestureLocationInView();
    v27 = v26;
    v29 = v28;

    v24 = [v23 _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:{v27, v29}];
    if (!v24)
    {
      v37 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 0;
        _os_log_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because no item container.", v46, 2u);
      }

      goto LABEL_30;
    }
  }

  v41 = v24;
  v30 = [v24 appLayout];
  v42 = v23;
  v39 = [v23 adjustedAppLayoutForLeafAppLayout:v30];
  v31 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v32 = [v31 appLayout];
  v40 = v30;
  LOBYTE(v30) = [v32 isOrContainsAppLayout:v30];

  if ((v30 & 1) == 0)
  {
    v34 = v39;
    v36 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v45 = 0;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because item container isn't on stage.", v45, 2u);
    }

    v23 = v42;
    v20 = v43;
    goto LABEL_29;
  }

  v33 = +[SBApplicationController sharedInstance];
  v34 = v39;
  v35 = [v33 _appLayoutContainsOnlyResizableApps:v39];

  if ((v35 & 1) == 0)
  {
    v36 = SBLogSystemGestureAppSwitcher();
    v23 = v42;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "Preventing the switcher live resize gesture because app layout contains non resizable items.", v44, 2u);
    }

    v20 = v43;
LABEL_29:

LABEL_30:
LABEL_31:
    v19 = 0;
    goto LABEL_13;
  }

  v20 = v43;
  if ([(SBFluidSwitcherGestureManager *)self _shouldLiveResizeItemContainerGestureWithPointer:v43 receiveTouch:v6])
  {
    v19 = 1;
  }

  else
  {
    if ([v6 _isPointerTouch])
    {
      v38 = 0;
    }

    else
    {
      v38 = 15;
    }

    v19 = [(SBFluidSwitcherGestureManager *)self _shouldLiveResizeItemContainerGestureWithTouch:v43 receiveTouch:v6 allowedCorners:-1 requiresVisibleCorner:0 allowedEdges:v38];
  }

LABEL_13:

  return v19;
}

- (BOOL)_shouldClickDownToBringItemContainerForward:(id)a3 receiveTouch:(id)a4
{
  v6 = a3;
  v10 = [v7 _isPointerTouch] && (-[SBAppSwitcherSettings windowingSettings](self->_appSwitcherSettings, "windowingSettings"), v8 = v7 = a4;

  return v10;
}

- (BOOL)_shouldBringItemContainerForwardGesture:(id)a3 receiveTouch:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v68 = a3;
  v67 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained windowManagementContext];
  v8 = [v7 isChamoisOrFlexibleWindowing];

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_switcherContentController);
    [v67 locationInView:0];
    v11 = v10;
    v13 = v12;
    v14 = [WeakRetained windowScene];
    v15 = [v14 systemGestureManager];
    v58 = [v15 shouldSystemGestureReceiveTouchWithLocation:{v11, v13}];

    v16 = [v9 view];
    _UISystemGestureLocationForTouchInView();
    v18 = v17;
    v20 = v19;

    v21 = [v9 _itemContainerAtLocation:1 environment:{v18, v20}];
    v22 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    v23 = [v21 appLayout];
    v65 = [v9 adjustedAppLayoutForLeafAppLayout:v23];
    v24 = [v9 liveContentOverlays];
    v66 = v23;
    v25 = [v24 objectForKey:v23];

    v62 = v25;
    [v25 touchBehavior];
    v26 = [v21 appLayout];
    v27 = [v26 itemForLayoutRole:1];

    v61 = WeakRetained;
    v28 = [WeakRetained displayItemLayoutAttributesProvider];
    v29 = [v22 appLayout];
    v64 = v22;
    v30 = [v22 interfaceOrientation];
    if ((v30 - 1) < 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * ((v30 - 3) < 2);
    }

    v32 = [v28 lastInteractedDisplayItemsInAppLayout:v29 orientation:v31];
    v33 = [v32 firstObject];

    v55 = [(NSHashTable *)self->_presentedSceneBackedBanners count];
    v34 = [v14 screen];
    v35 = [v34 fixedCoordinateSpace];

    v60 = [v14 floatingDockController];
    v57 = [v60 containsPoint:v35 fromCoordinateSpace:{v11, v13}];
    v36 = [(SBFluidSwitcherGestureManager *)self _isTouchLocationInSplitViewGutter:v18, v20];
    v54 = [(SBFluidSwitcherGestureManager *)self _isTouchLocationInWindowControlsFrame:v18, v20];
    v63 = v21;
    if (v21)
    {
      LOBYTE(v21) = 0;
      v37 = v27;
      if ((BSEqualObjects() & 1) == 0 && ((v58 ^ 1) & 1) == 0)
      {
        v38 = v35;
        v39 = [v64 appLayout];
        if ([v39 isOrContainsAppLayout:v66])
        {
          v40 = +[SBApplicationController sharedInstance];
          v41 = [v40 _appLayoutContainsOnlyResizableApps:v65] ^ 1;
          if (v55)
          {
            LOBYTE(v41) = 1;
          }

          LOBYTE(v21) = (v41 | v54 | v57 | v36) ^ 1;

          v37 = v27;
        }

        else
        {
          LOBYTE(v21) = 0;
        }

        v35 = v38;
      }
    }

    else
    {
      v37 = v27;
    }

    v42 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v51 = NSStringFromBOOL();
      v50 = NSStringFromBOOL();
      v43 = NSStringFromBOOL();
      v44 = [v65 succinctDescription];
      [v66 succinctDescription];
      v21 = v52 = v21;
      NSStringFromBKSSceneHostTouchBehavior();
      v45 = v56 = v35;
      NSStringFromBOOL();
      v46 = v53 = v33;
      NSStringFromBOOL();
      v47 = v59 = v9;
      v48 = NSStringFromBOOL();
      *buf = 138414338;
      v70 = v51;
      v71 = 2112;
      v72 = v50;
      v73 = 2112;
      v74 = v43;
      v75 = 2112;
      v76 = v44;
      v77 = 2112;
      v78 = v21;
      v79 = 2112;
      v80 = v45;
      v81 = 2112;
      v82 = v46;
      v83 = 2112;
      v84 = v47;
      v85 = 2112;
      v86 = v48;
      _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "Should bring item container forward:%@ TouchAllowedAtLocation:%@ SceneBackedBannersPresented:%@ AppLayout:%@ LeafAppLayoutToBringForward:%@ TouchBehavior:%@ ItemAlreadyOnTop:%@ TouchInsideWindowControls:%@ TouchInsideDock:%@", buf, 0x5Cu);

      v9 = v59;
      v33 = v53;

      v35 = v56;
      LOBYTE(v21) = v52;
    }

    WeakRetained = v61;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21 & 1;
}

- (BOOL)_isTouchLocationInWindowControlsFrame:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained _leafAppLayoutForItemContainerAtLocation:1 environment:{x, y}];
  if (v6)
  {
    v7 = [WeakRetained liveContentOverlayForAppLayout:v6];
    v8 = [v7 windowControlsView];
    v9 = v8;
    if (v8)
    {
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [WeakRetained view];
      [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v30.origin.x = v20;
      v30.origin.y = v22;
      v30.size.width = v24;
      v30.size.height = v26;
      v29.x = x;
      v29.y = y;
      v27 = CGRectContainsPoint(v30, v29);
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (BOOL)_isTouchLocationInSplitViewGutter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [WeakRetained visibleSplitViewHandleDimmingViews];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        [v11 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v20 = [WeakRetained view];
        [v11 convertRect:v20 toView:{v13, v15, v17, v19}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v37.origin.x = v22;
        v37.origin.y = v24;
        v37.size.width = v26;
        v37.size.height = v28;
        v36.x = x;
        v36.y = y;
        if (CGRectContainsPoint(v37, v36))
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)_shouldContinuousExposeStripOverflowPanGesture:(id)a3 receiveTouch:(id)a4
{
  v38 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v37 = v6;
  [v6 locationInView:0];
  v9 = v8;
  v11 = v10;
  v36 = [WeakRetained windowScene];
  v12 = [v36 systemGestureManager];
  v13 = [v12 shouldSystemGestureReceiveTouchWithLocation:{v9, v11}];
  v14 = [v12 isGestureWithTypeAllowed:50];
  v15 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v16 = [v15 unlockedEnvironmentMode];
  v17 = [v15 peekConfiguration];
  v18 = [WeakRetained windowManagementContext];
  v19 = 0;
  if (![v18 isChamoisOrFlexibleWindowing] || !v13 || !v14 || v16 != 3)
  {
    v22 = v37;
    v21 = v38;
    v23 = v36;
LABEL_14:

    goto LABEL_15;
  }

  IsValid = SBPeekConfigurationIsValid(v17);

  if (!IsValid)
  {
    v18 = objc_loadWeakRetained(&self->_switcherContentController);
    v24 = [v18 view];
    v22 = v37;
    v21 = v38;
    _UISystemGestureLocationForTouchInView();
    v26 = v25;
    v28 = v27;

    v29 = [v18 windowingConfiguration];
    [v29 stripWidth];
    v31 = v30;
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v32 = [v18 view];
      [v32 frame];
      v33 = CGRectGetMaxX(v39) - v31;

      if (v26 < v33)
      {
LABEL_10:
        v19 = 0;
LABEL_13:
        v23 = v36;

        goto LABEL_14;
      }
    }

    else if (v26 > v31)
    {
      goto LABEL_10;
    }

    v34 = [v18 _itemContainerAtLocation:0 environment:{v26, v28}];
    v19 = v34 == 0;

    goto LABEL_13;
  }

  v19 = 0;
  v22 = v37;
  v21 = v38;
  v23 = v36;
LABEL_15:

  return v19;
}

- (CGRect)_paddedHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4
{
  v49 = a4;
  v5 = a3;
  [v5 frame];
  x = v6;
  y = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v15 = [WeakRetained windowManagementContext];
  v16 = [v15 isChamoisOrFlexibleWindowing];

  v17 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v18 = [v17 appLayout];
  v19 = [v5 appLayout];
  v20 = [v19 itemForLayoutRole:1];
  v21 = [v18 layoutRoleForItem:v20];

  v22 = +[SBMedusaDomain rootSettings];
  v23 = [(SBFluidSwitcherGestureManager *)self switcherController];
  v24 = [v23 _slideOverDisplayItem];
  if (v16)
  {
    v25 = [v5 appLayout];
    v26 = [v25 itemForLayoutRole:1];
    v27 = [(SBDisplayItem *)v24 isEqualToItem:v26];

    if (v27)
    {
      v28 = objc_loadWeakRetained(&self->_switcherContentController);
      v29 = [v28 windowingConfiguration];
      [v29 slideOverBorderWidth];
      v31 = v30;

      if (v49)
      {
        v32 = -v31;
        v33 = x;
        v34 = y;
        v35 = v11;
        v36 = v13;
        v37 = -v31;
      }

      else
      {
        [v22 wideEdgeSwipeHitTestWidth];
        v42 = v41 * 0.5;
        if (v31 >= v42)
        {
          v42 = v31;
        }

        v32 = v42 * -0.5;
        v37 = -v31;
        v33 = x;
        v34 = y;
        v35 = v11;
        v36 = v13;
      }

      v50 = CGRectInset(*&v33, v32, v37);
      x = v50.origin.x;
      y = v50.origin.y;
      width = v50.size.width;
      height = v50.size.height;
      v13 = v50.size.height;
      v11 = v50.size.width;
    }

    else
    {
      height = v13;
      width = v11;
    }
  }

  else
  {
    height = *(MEMORY[0x277CBF3A8] + 8);
    if (v21 == 4)
    {
      [v22 wideEdgeSwipeHitTestWidth];
      width = v39;
    }

    else
    {
      width = *MEMORY[0x277CBF3A8];
    }
  }

  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v11;
  v51.size.height = v13;
  v43 = CGRectGetMidX(v51) - width * 0.5;
  v52.origin.x = v43;
  v52.origin.y = y;
  v52.size.width = v11;
  v52.size.height = v13;
  v44 = CGRectGetMidY(v52) - height * 0.5;

  v45 = v43;
  v46 = v44;
  v47 = width;
  v48 = height;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (CGRect)_edgeSwipeHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 frame];
  v8 = v7;
  +[SBNubView height];
  v10 = v9;
  v11 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v12 = [v11 appLayout];

  v13 = [v6 appLayout];
  v14 = [v13 itemForLayoutRole:1];
  v15 = [v12 layoutRoleForItem:v14];

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v17 = [WeakRetained windowManagementContext];
  v18 = [v17 isChamoisOrFlexibleWindowing];

  [(SBFluidSwitcherGestureManager *)self _paddedHitTestRectForItemContainer:v6 forPointerTouch:v4];
  v20 = v19;
  v22 = v21;

  if (v15 == 4)
  {
    v23 = v10 + v10;
    v8 = v8 - v10;
  }

  else if (v18)
  {
    if (v4)
    {
      v23 = v10;
    }

    else
    {
      v23 = v10 + v10;
    }

    if (!v4)
    {
      v8 = v8 - v10;
    }
  }

  else
  {
    v23 = v10;
  }

  v24 = v20;
  v25 = v8;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_innerLeftEdgeDragHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && !a4 && ([v6 appLayout], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "allItems"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), -[SBFluidSwitcherGestureManager _slideOverDisplayItem](self, "_slideOverDisplayItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v9, v8, (v12 & 1) != 0))
  {
    v13 = +[SBMedusaDomain rootSettings];
    [v7 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v13 narrowEdgeSwipeHitTestWidth];
    v21 = v20 * 0.5;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v23 = [WeakRetained windowingConfiguration];
    [v23 slideOverBorderWidth];
    v25 = v21 - v24;

    if (v25 < 0.0)
    {
      v25 = 0.0;
    }
  }

  else
  {
    v15 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v25 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v26 = v15;
  v27 = v17;
  v28 = v25;
  v29 = v19;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_innerRightEdgeDragHitTestRectForItemContainer:(id)a3 forPointerTouch:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && !a4 && ([v6 appLayout], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "allItems"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), -[SBFluidSwitcherGestureManager _slideOverDisplayItem](self, "_slideOverDisplayItem"), v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualObjects(), v11, v10, v9, v8, (v12 & 1) != 0))
  {
    v13 = +[SBMedusaDomain rootSettings];
    [v7 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    [v13 narrowEdgeSwipeHitTestWidth];
    v23 = v22 * 0.5;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v25 = [WeakRetained windowingConfiguration];
    [v25 slideOverBorderWidth];
    v27 = v23 - v26;

    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v28 = v15 + v19 - v27;
  }

  else
  {
    v28 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = *(MEMORY[0x277CBF3A0] + 16);
    v21 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v29 = v28;
  v30 = v17;
  v31 = v27;
  v32 = v21;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (BOOL)_isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:(CGPoint)a3 withinUnstashLocationOnHomeScreen:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v16 = self;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v8 = [WeakRetained windowScene];
  v9 = [v8 systemGestureManager];
  v10 = [(SBFluidSwitcherGestureManager *)v16 _currentLayoutState];
  v11 = [v9 shouldSystemGestureReceiveTouchWithLocation:{x, y}];
  v12 = SBIsSystemGestureAllowed(v8, 18);
  v13 = [(SBFluidSwitcherGestureManager *)v16 _isBannerOccludingRegionAtReferencePoint:x, y];
  v14 = [v10 unlockedEnvironmentMode];
  v15 = [v10 peekConfiguration];
  LOBYTE(v16) = 0;
  v17 = v14 == 3 || v4;
  if (v11 && v12 && !v13 && v17)
  {
    LODWORD(v16) = !SBPeekConfigurationIsValid(v15);
  }

  return v16;
}

- (id)_hitTestStageItemContainerForUnpinGestureWithTouch:(id)a3 atGestureLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v78 = *MEMORY[0x277D85DE8];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v9 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v10 = objc_loadWeakRetained(&self->_switcherContentController);
  v11 = [v10 view];
  v65 = [v9 appLayout];
  [v7 locationInView:0];
  v13 = v12;
  v15 = v14;
  v16 = [WeakRetained windowManagementContext];
  v64 = [v16 isChamoisOrFlexibleWindowing];

  v62 = v7;
  v17 = [(SBFluidSwitcherGestureManager *)self _touchIsWithinUnstashRegionOnHomeScreen:v7];
  v61 = self;
  v18 = [(SBFluidSwitcherGestureManager *)self _isUnpinGestureAllowedToMoveWindowsAtLocationInReferenceCoordinateSpace:v17 withinUnstashLocationOnHomeScreen:v13, v15];
  if (v17 && v18)
  {
    v19 = objc_loadWeakRetained(&self->_switcherContentController);
    v20 = [v19 visibleItemContainers];
    v21 = [v20 allValues];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke;
    v76[3] = &unk_2783A8FD0;
    v76[4] = v61;
    v22 = [v21 bs_firstObjectPassingTest:v76];

LABEL_41:
    goto LABEL_42;
  }

  if (!v18)
  {
    v22 = 0;
LABEL_42:
    v22 = v22;
    v53 = v22;
    goto LABEL_43;
  }

  v19 = objc_loadWeakRetained(&self->_switcherContentController);
  v23 = [WeakRetained windowManagementContext];
  v24 = [v23 isFlexibleWindowingEnabled];

  if (!v24)
  {
    v22 = 0;
    goto LABEL_11;
  }

  v25 = [v19 visibleItemContainers];
  v26 = [v25 allValues];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_2;
  v71[3] = &unk_2783C1F58;
  v27 = v65;
  v72 = v27;
  v73 = v11;
  v74 = x;
  v75 = y;
  v22 = [v26 bs_firstObjectPassingTest:v71];

  if (!v22 || ([v22 appLayout], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "containsAnyItemFromAppLayout:", v28), v28, v29))
  {

LABEL_11:
    v30 = [WeakRetained displayItemLayoutAttributesProvider];
    v31 = [v9 interfaceOrientation];
    if ((v31 - 1) < 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2 * ((v31 - 3) < 2);
    }

    v33 = [v30 zOrderedItemsInAppLayout:v65 orientation:v32];

    v34 = [v65 centerItem];
    if (v34)
    {
      v35 = v64;
    }

    else
    {
      v35 = 1;
    }

    v59 = v34;
    if ((v35 & 1) == 0)
    {
      v36 = v34;
      v37 = [v33 firstObject];
      v38 = BSEqualObjects();

      if ((v38 & 1) == 0)
      {
        v39 = [v33 mutableCopy];
        [v39 removeObject:v36];
        [v39 insertObject:v36 atIndex:0];

        v33 = v39;
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v33;
    v40 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v40)
    {
      v41 = v40;
      v55 = v22;
      v56 = v11;
      v57 = v9;
      v58 = WeakRetained;
      v42 = 0;
      v63 = *v68;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v68 != v63)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v67 + 1) + 8 * i);
          v45 = [v19 visibleItemContainers];
          v46 = [v45 allValues];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_3;
          v66[3] = &unk_2783A8FD0;
          v66[4] = v44;
          v22 = [v46 bs_firstObjectPassingTest:v66];

          [v22 frame];
          v47 = [v22 appLayout];
          v48 = [v47 itemForLayoutRole:1];
          v49 = [v65 layoutRoleForItem:v48];

          if (v49)
          {
            -[SBFluidSwitcherGestureManager _paddedHitTestRectForItemContainer:forPointerTouch:](v61, "_paddedHitTestRectForItemContainer:forPointerTouch:", v22, [v62 _isPointerTouch]);
            v50 = SBRectContainsPoint();
            if ((v50 & v64) == 1 && v42)
            {
              if ((CGRegionContainsPoint() & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            else if (v50)
            {
LABEL_38:

              goto LABEL_39;
            }

            if (v64)
            {
              v51 = SBSafeAutoreleasedRegionFromCGRect();
              if (v42)
              {
                UnionWithRegion = CGRegionCreateUnionWithRegion();
                v42 = CFAutorelease(UnionWithRegion);
              }

              else
              {
                v42 = v51;
              }
            }
          }
        }

        v41 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }

      v22 = v55;
LABEL_39:
      v9 = v57;
      WeakRetained = v58;
      v11 = v56;
    }

    goto LABEL_41;
  }

  v53 = 0;
LABEL_43:

  return v53;
}

uint64_t __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appLayout];
  v4 = [*(a1 + 32) _slideOverDisplayItem];
  v5 = [v3 containsItem:v4];

  return v5;
}

BOOL __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 appLayout];
  v6 = [v5 itemForLayoutRole:1];
  v7 = [v4 layoutRoleForItem:v6];

  v10 = 0;
  if (!v7)
  {
    v8 = [*(a1 + 40) hitTest:0 withEvent:{*(a1 + 48), *(a1 + 56)}];
    v9 = [v8 isDescendantOfView:v3];

    if (v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

uint64_t __102__SBFluidSwitcherGestureManager__hitTestStageItemContainerForUnpinGestureWithTouch_atGestureLocation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 appLayout];
  v4 = [v3 containsItem:*(a1 + 32)];

  return v4;
}

- (CGRect)_floatingApplicationBounds
{
  v3 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v4 = [v3 interfaceOrientation];
  v5 = [v3 floatingConfiguration];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [WeakRetained dataSource];
  if (objc_opt_respondsToSelector())
  {
    [v7 switcherContentController:WeakRetained frameForFloatingAppLayoutInInterfaceOrientation:v4 floatingConfiguration:v5];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A0];
    v11 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)_shouldUserClickInAppInteractionGesture:(id)a3 receiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 _isPointerTouch])
  {
    v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    if ([v8 unlockedEnvironmentMode] == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      if ([WeakRetained wantsUserClickInAppInteractionEvent])
      {
        v10 = [WeakRetained view];
        _UISystemGestureLocationForTouchInView();
        v12 = v11;
        v14 = v13;

        v15 = [WeakRetained _itemContainerAtLocation:1 environment:{v12, v14}];
        v16 = [v15 appLayout];
        v17 = [v8 appLayout];
        v18 = [v17 isOrContainsAppLayout:v16];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
  v6 = [v5 gestureRecognizer];
  v7 = [v6 state];
  if (!v5 || !v6 || (v7 - 1) > 1)
  {
    v10 = [SBApp multiDisplayUserInteractionCoordinator];
    v11 = [v10 activeTouchDownOriginatedWindowScene];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_switcherController);
        v13 = [WeakRetained windowScene];
        v14 = [v13 isEqual:v11];

        if (!v14)
        {
          goto LABEL_28;
        }
      }
    }

    v15 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];

    if (v15 == v4)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginBottomEdgePanGesture:v4];
    }

    else if (self->_deckInSwitcherPanGestureRecognizer == v4)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginDeckInSwitcherPanGesture:v4];
    }

    else if (self->_fluidScrunchGestureRecognizer == v4)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFluidScrunchGesture:v4];
    }

    else if (self->_swipeUpFloatingAppGestureRecognizer == v4)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationSwipeUpGesture:v4];
    }

    else
    {
      if (self->_moveFloatingApplicationGestureRecognizer == v4)
      {
        goto LABEL_33;
      }

      if (self->_pinFloatingApplicationGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationPinGesture:v4];
        goto LABEL_46;
      }

      if (self->_unpinSplitViewApplicationGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginSplitViewApplicationUnpinGesture:?];
        goto LABEL_46;
      }

      if (self->_indirectBottomEdgePanGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginIndirectHomePanGesture:v4];
        goto LABEL_46;
      }

      if (self->_sceneResizePanGestureRecognizer == v4)
      {
        v9 = 1;
        goto LABEL_47;
      }

      if (self->_indirectFloatingAppScrunchGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginIndirectFloatingAppScrunchGesture:v4];
        goto LABEL_46;
      }

      if (self->_indirectDismissFloatingApplicationGestureRecognizer == v4)
      {
LABEL_33:
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationMoveGesture:v4];
      }

      else if (self->_clickAndDragHomeGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginClickAndDragHomeGesture:v4];
      }

      else if (self->_liveWindowResizeGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginLiveWindowResizeGesture:?];
      }

      else if (self->_hoverGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginHoverGesture:?];
      }

      else if (self->_tapToBringItemContainerForwardGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginTapToBringItemContainerForwardGesture:v4];
      }

      else if (self->_clickDownToBringItemContainerForwardGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginClickDownToBringItemContainerForwardGesture:v4];
      }

      else if (self->_indirectContinuousExposeStripOverflowGestureRecognizer == v4)
      {
        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowGesture:?];
      }

      else
      {
        if (self->_dragContinuousExposeStripOverflowGestureRecognizer != v4)
        {
LABEL_28:
          v9 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v16 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowPanGesture:?];
      }
    }

LABEL_46:
    v9 = v16;
    goto LABEL_47;
  }

  v8 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(SBFluidSwitcherGestureManager *)v4 gestureRecognizerShouldBegin:v6, v8];
  }

  v9 = 0;
LABEL_48:

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  hoverGestureRecognizer = self->_hoverGestureRecognizer;
  v9 = hoverGestureRecognizer == v6 || hoverGestureRecognizer == v7;
  v10 = v9 || (self->_tapToBringItemContainerForwardGestureRecognizer == v6 || self->_clickDownToBringItemContainerForwardGestureRecognizer == v6) && self->_windowMoveClientGateRelationshipGestureRecognizer == v7 || self->_unpinSplitViewApplicationGestureRecognizer == v6 && self->_clickDownToBringItemContainerForwardGestureRecognizer == v7;

  return v10;
}

- (BOOL)_shouldBeginBottomEdgePanGesture:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode];
  v6 = objc_opt_class();
  v7 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  v8 = SBSafeCast(v6, v7);

  v9 = [v8 touchedEdges];
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v15 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because switcher doesn't own the home gesture.", buf, 2u);
    }

    v16 = @"DeckSwitcherBottomEdgeGestureNotOwned";
  }

  else if ([(SBFluidSwitcherGestureManager *)self _shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:v9])
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v12 = [WeakRetained windowScene];
    v13 = [v12 systemGestureManager];
    v14 = [v13 isGestureWithTypeAllowed:39];

    if (v14)
    {
      if (v5 != 2 || !SBReduceMotion())
      {
        v16 = 0;
        v17 = 1;
        goto LABEL_20;
      }

      v15 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because we're in the app switcher in Reduce Motion.", buf, 2u);
      }

      v16 = @"SwitcherBottomEdgeGesturePreventedInAppSwitcherInReduceMotion";
    }

    else
    {
      v15 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because it's not allowed by the system gesture manager.", buf, 2u);
      }

      v16 = @"SwitcherBottomEdgeGestureNotAllowedBySystemGestureManager";
    }
  }

  else
  {
    v15 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = v9;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "Preventing the switcher bottom edge gesture because the recognized edges (%ld) aren't supported.", buf, 0xCu);
    }

    v16 = @"DeckSwitcherRecognizedEdgesNotSupported";
  }

  v17 = 0;
LABEL_20:
  v18 = [MEMORY[0x277D6A798] sharedInstance];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__SBFluidSwitcherGestureManager__shouldBeginBottomEdgePanGesture___block_invoke;
  v21[3] = &unk_2783B77A8;
  v24 = v17;
  v22 = v4;
  v23 = v16;
  v19 = v4;
  [v18 logBlock:v21];

  return v17;
}

id __66__SBFluidSwitcherGestureManager__shouldBeginBottomEdgePanGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginBottomEdgePanGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginDeckInSwitcherPanGesture:(id)a3
{
  if (SBReduceMotion())
  {
    v4 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v5 = "Preventing the in switcher gesture because reduce motion is enabled.";
      v6 = &v17;
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }

  else if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]== 2)
  {
    deckInSwitcherPanGestureRecognizer = self->_deckInSwitcherPanGestureRecognizer;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v9 = [WeakRetained view];
    [(SBFluidSwitcherPanGestureRecognizer *)deckInSwitcherPanGestureRecognizer velocityInView:v9];
    v11 = v10;
    v13 = v12;

    if (fabs(v13) > fabs(v11))
    {
      return 1;
    }

    v4 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Preventing the in switcher gesture because we're scrolling horizontally.";
      v6 = buf;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v5 = "Preventing the in switcher gesture because we're not in in the app switcher.";
      v6 = &v15;
      goto LABEL_11;
    }
  }

  return 0;
}

- (BOOL)_shouldBeginClickAndDragHomeGesture:(id)a3
{
  v4 = a3;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v11 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "Preventing the click and drag home gesture because switcher doesn't own the home gesture.";
      v13 = buf;
      goto LABEL_9;
    }

LABEL_10:

    v10 = 0;
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained windowScene];
  v8 = [v7 systemGestureManager];
  v9 = [v8 isGestureWithTypeAllowed:42];

  if ((v9 & 1) == 0)
  {
    v11 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = 0;
      v12 = "Preventing the click and drag home gesture because it's not allowed by the system gesture manager.";
      v13 = &v15;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, v12, v13, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (BOOL)_shouldBeginLiveWindowResizeGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = [WeakRetained windowManagementContext];
  v7 = [v6 isChamoisOrFlexibleWindowing];

  if ((v7 & 1) == 0)
  {
    v12 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v38 = 0;
      v16 = "Preventing the live window resize gesture because neither Chamois nor FlexibleWindowing is enabled.";
      v17 = &v38;
LABEL_13:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, v16, v17, 2u);
    }

LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v12 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v16 = "Preventing the live window resize gesture because switcher doesn't own the home gesture.";
      v17 = buf;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = [WeakRetained windowScene];
  v10 = [v9 systemGestureManager];
  v11 = [v10 isGestureWithTypeAllowed:42];

  if ((v11 & 1) == 0)
  {
    v12 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v36 = 0;
      v16 = "Preventing the live window resize gesture because it's not allowed by the system gesture manager.";
      v17 = &v36;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = objc_loadWeakRetained(&self->_switcherContentController);
  v13 = [v12 itemContainerToResizeUsingPointer];
  if (v13)
  {
    v14 = v13;
    v15 = 1;
  }

  else
  {
    v19 = [v12 view];
    _UISystemGestureLocationInView();
    v21 = v20;
    v23 = v22;

    v15 = 1;
    v24 = [v12 _itemContainerNearestLocation:1 environment:1 prioritizeForegroundedItemContainers:v21, v23];
    if (v24)
    {
      v14 = v24;
    }

    else
    {
      v25 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v35 = 0;
        _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_INFO, "Preventing the live window resize gesture because no item container.", v35, 2u);
      }

      v14 = 0;
      v15 = 0;
    }
  }

  v26 = [v4 selectedEdge];
  if (v26)
  {
    v27 = v26;
    if ([v4 hasEdgeResizeSeenTouchOutsideHittestedView])
    {
      v15 = 1;
    }

    else
    {
      v28 = [v12 view];
      _UISystemGestureTranslationInView();
      v30 = v29;
      v32 = v31;

      if (v27 == 8 || v27 == 2)
      {
        v33 = fabs(v30);
        v34 = fabs(v32);
      }

      else
      {
        v33 = fabs(v32);
        v34 = fabs(v30);
      }

      v15 = v33 >= v34;
    }
  }

LABEL_15:
  return v15;
}

- (BOOL)_shouldBeginClickDownToBringItemContainerForwardGesture:(id)a3
{
  v4 = a3;
  if (![(SBFluidSwitcherGestureManager *)self _shouldBeginBringItemContainerForwardGesture:v4 type:15])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (([v4 modifierFlags] & 0x100000) != 0)
  {
    v6 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Preventing the click down to bring item container forward gesture because the command key is pressed.", v8, 2u);
    }

    goto LABEL_7;
  }

  v5 = 1;
LABEL_8:

  return v5;
}

- (BOOL)_shouldBeginBringItemContainerForwardGesture:(id)a3 type:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained windowScene];
  v8 = [v7 homeScreenController];
  v9 = [WeakRetained windowManagementContext];
  v10 = [v9 isChamoisOrFlexibleWindowing];

  if ((v10 & 1) == 0)
  {
    v14 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v15 = "Preventing the bring item container forward gesture because neither Chamois nor FlexibleWindowing is enabled.";
      goto LABEL_14;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v14 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v15 = "Preventing the bring item container forward gesture because switcher doesn't own the home gesture.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = [v7 systemGestureManager];
  v13 = [v12 isGestureWithTypeAllowed:a4];

  if ((v13 & 1) == 0)
  {
    v14 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v15 = "Preventing the bring item container forward gesture because it's not allowed by the system gesture manager.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v8 areAnyIconViewContextMenusShowing])
  {
    v14 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v15 = "Preventing the bring item container forward gesture because icon is showing context menu.";
LABEL_14:
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, v15, &v21, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v18 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v19 = [v18 unlockedEnvironmentMode];
  v16 = v19 == 3;

  v14 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    if (v19 == 3)
    {
      v20 = @"YES";
    }

    v21 = 138412290;
    v22 = v20;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Should begin bring item container forward:%@", &v21, 0xCu);
  }

LABEL_16:

  return v16;
}

- (BOOL)_shouldBeginHoverGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v5 = [WeakRetained windowManagementContext];
  v6 = [v5 isChamoisOrFlexibleWindowing];

  if ((v6 & 1) == 0)
  {
    v13 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 0;
      v14 = "Preventing the hover gesture because neither Chamois nor FlexibleWindowing is enabled.";
      v15 = &v19;
LABEL_12:
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v13 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Preventing the hover gesture because switcher doesn't own the home gesture.";
      v15 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v8 = [WeakRetained windowScene];
  v9 = [v8 systemGestureManager];
  v10 = [v9 isGestureWithTypeAllowed:47];

  if ((v10 & 1) == 0)
  {
    v13 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v14 = "Preventing the hover gesture because it's not allowed by the system gesture manager.";
      v15 = &v17;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v11 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v12 = [v11 unlockedEnvironmentMode] == 3;

LABEL_14:
  return v12;
}

- (BOOL)_shouldBeginIndirectHomePanGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = [WeakRetained windowScene];

  v7 = [v6 floatingDockController];
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v14 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v15 = "Preventing the indirect home pan gesture because switcher doesn't own the home gesture.";
      v16 = buf;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v9 = [v6 systemGestureManager];
  v10 = [v9 isGestureWithTypeAllowed:35];

  if (v10)
  {
    v11 = +[SBSetupManager sharedInstance];
    if ([v11 isInSetupMode])
    {
      v12 = +[SBSetupManager sharedInstance];
      v13 = [v12 isInSetupModeReadyToExit];

      if ((v13 & 1) == 0)
      {
        v14 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v38 = 0;
          v15 = "Preventing the indirect home pan gesture because Buddy is not ready to exit.";
          v16 = &v38;
LABEL_12:
          _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, v15, v16, 2u);
          goto LABEL_13;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (([v7 isFloatingDockFullyPresented] & 1) == 0)
    {
      v19 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
      if ([v19 isFloatingSwitcherVisible])
      {
      }

      else
      {
        v20 = +[SBSetupManager sharedInstance];
        v21 = [v20 isInSetupMode];

        if ((v21 & 1) == 0)
        {
          v14 = SBLogSystemGestureAppSwitcher();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            goto LABEL_13;
          }

          v37 = 0;
          v15 = "Preventing the indirect home pan gesture because the floating dock is not fully presented.";
          v16 = &v37;
          goto LABEL_12;
        }
      }
    }

    if ([v4 currentInputType] != 1)
    {
      v17 = 1;
      goto LABEL_15;
    }

    v14 = [v7 presentFloatingDockIndirectPanGestureRecognizer];
    BSContinuousMachTimeNow();
    v23 = v22;
    [v14 lastMouseActivationTimestamp];
    v25 = v23 - v24;
    v26 = +[SBCoverSheetPresentationManager sharedInstance];
    v27 = [v26 coverSheetSlidingViewController];
    v28 = [v27 indirectDismissGestureRecognizer];

    BSContinuousMachTimeNow();
    v30 = v29;
    [v28 lastMouseActivationTimestamp];
    if (v25 >= 0.25)
    {
      if (v30 - v31 >= 0.5)
      {
        v17 = 1;
        goto LABEL_34;
      }

      v32 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v35 = 0;
        v33 = "Preventing the indirect home pan gesture because the dismiss cover sheet gesture was recently activated by a mouse.";
        v34 = &v35;
        goto LABEL_29;
      }
    }

    else
    {
      v32 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v36 = 0;
        v33 = "Preventing the indirect home pan gesture because the dock gesture was recently activated by a mouse.";
        v34 = &v36;
LABEL_29:
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_INFO, v33, v34, 2u);
      }
    }

    v17 = 0;
LABEL_34:

    goto LABEL_14;
  }

  v14 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v39 = 0;
    v15 = "Preventing the indirect home pan gesture because it's not allowed by the system gesture manager.";
    v16 = &v39;
    goto LABEL_12;
  }

LABEL_13:
  v17 = 0;
LABEL_14:

LABEL_15:
  return v17;
}

- (BOOL)_shouldBeginIndirectFloatingAppScrunchGesture:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:a3 gestureType:13 failureReason:&v16];
  v5 = v16;
  if (!v4)
  {
    v11 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v5;
      v12 = "Preventing the floating app scrunch gesture because: %@.";
      v13 = v11;
      v14 = 12;
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }

LABEL_9:

    v10 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained windowScene];
  v8 = [v7 systemGestureManager];
  v9 = [v8 isGestureWithTypeAllowed:13];

  if ((v9 & 1) == 0)
  {
    v11 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "Preventing the floating app scrunch gesture because it's not allowed by the system gesture manager.";
      v13 = v11;
      v14 = 2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (BOOL)_shouldBeginFluidScrunchGesture:(id)a3
{
  v4 = a3;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v10 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "Preventing the scrunch gesture because switcher doesn't own the home gesture.";
      v12 = buf;
      goto LABEL_11;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v7 = [WeakRetained windowScene];
    v8 = [v7 systemGestureManager];
    v9 = [v8 isGestureWithTypeAllowed:12];

    if (v9)
    {
      if (![SBApp isTypingActive])
      {
        v13 = 1;
        goto LABEL_13;
      }

      v10 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 0;
        v11 = "Preventing the scrunch gesture because typing is active.";
        v12 = &v15;
LABEL_11:
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v11, v12, 2u);
      }
    }

    else
    {
      v10 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 0;
        v11 = "Preventing the scrunch gesture because it's not allowed by the system gesture manager.";
        v12 = &v16;
        goto LABEL_11;
      }
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)_shouldAllowFloatingApplicationGesture:(id)a3 gestureType:(unint64_t)a4 failureReason:(id *)a5
{
  v7 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState:a3];
  v8 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];

  if (!v8)
  {
    v9 = 0;
    v10 = @"NoSlideOverDisplayItem";
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ([v7 unlockedEnvironmentMode] == 2)
  {
    v9 = 0;
    v10 = @"InAppSwitcher";
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (SBPeekConfigurationIsValid([v7 peekConfiguration]))
  {
    v9 = 0;
    v10 = @"InPeekState";
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant)
  {
    v10 = 0;
    v9 = 1;
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = [(SBFZStackParticipant *)zStackParticipant activationState];
  v9 = v12 == 0;
  v10 = @"NotForegroundActiveInZStack";
  if (!v12)
  {
    v10 = 0;
  }

  if (a5)
  {
LABEL_14:
    *a5 = v10;
  }

LABEL_15:

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationSwipeUpGesture:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  v5 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:v4 gestureType:26 failureReason:&v24];
  v6 = v24;
  if (!v5)
  {
    v12 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v6;
      v13 = "Preventing the floating app swipe up gesture because: %@.";
      v14 = v12;
      v15 = 12;
LABEL_8:
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
    }

LABEL_9:

    v11 = 0;
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v8 = [WeakRetained windowScene];
  v9 = [v8 systemGestureManager];
  v10 = [v9 isGestureWithTypeAllowed:26];

  if ((v10 & 1) == 0)
  {
    v12 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "Preventing the floating app swipe up gesture because it's not allowed by the system gesture manager.";
      v14 = v12;
      v15 = 2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v11 = 1;
LABEL_10:
  v16 = [MEMORY[0x277D6A798] sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationSwipeUpGesture___block_invoke;
  v20[3] = &unk_2783B77A8;
  v23 = v11;
  v21 = v4;
  v22 = v6;
  v17 = v6;
  v18 = v4;
  [v16 logBlock:v20];

  return v11;
}

id __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationSwipeUpGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationSwipeUpGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationPresentGesture:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (v5 == v4)
  {
    v6 = 36;
  }

  else
  {
    v6 = 19;
  }

  v51 = 0;
  v7 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:v4 gestureType:v6 failureReason:&v51];
  v8 = v51;
  if (!v7)
  {
    v9 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Preventing the right floating app present gesture because: %@.", buf, 0xCu);
    }
  }

  v10 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (!v7)
  {
    v13 = v8;
LABEL_21:
    v54 = 0;
    v53 = 0u;
    *buf = 0u;
    [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
LABEL_22:
    LOBYTE(v20) = 0;
    goto LABEL_23;
  }

  if (v10 == v4)
  {
    v11 = 37;
  }

  else
  {
    v11 = 20;
  }

  v50 = v8;
  v12 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:v4 gestureType:v11 failureReason:&v50];
  v13 = v50;

  if (!v12)
  {
    v16 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v13;
      v17 = "Preventing the left floating app present gesture because: %@.";
      v18 = v16;
      v19 = 12;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  v14 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v15 = [v14 isFloatingSwitcherVisible];

  if (v15)
  {
    v16 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v17 = "Preventing the floating app present gesture because the floating switcher is presented.";
      v18 = v16;
      v19 = 2;
LABEL_19:
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, v17, buf, v19);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v54 = 0;
  v53 = 0u;
  *buf = 0u;
  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
  if ((v54 & 0x100) == 0)
  {
    v34 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v47 = 0;
      v35 = "Preventing the floating app present gesture because the slideover app is not stashed.";
LABEL_46:
      _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_INFO, v35, v47, 2u);
    }

LABEL_47:

    goto LABEL_22;
  }

  if (v10 == v4)
  {
LABEL_28:
    *v47 = *buf;
    v48 = v53;
    v49 = v54;
    if (SBDisplayItemSlideOverIsLeftSided(v47))
    {
      goto LABEL_29;
    }

LABEL_44:
    v34 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v47 = 0;
      v35 = "Preventing the floating app present gesture from the left edge because the slideover app is not stashed on the left.";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v25 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

  if (v25 == v4)
  {
    if ((v54 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_28;
  }

LABEL_29:
  if (v5 != v4)
  {
    v26 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];

    if (v26 != v4)
    {
      goto LABEL_31;
    }
  }

  if (BYTE1(v54) != 1 || (*v47 = *buf, v48 = v53, v49 = v54, SBDisplayItemSlideOverIsLeftSided(v47)))
  {
    v34 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v47 = 0;
      v35 = "Preventing the floating app present gesture from the right edge because the slideover app is not stashed on the right.";
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v5 != v4)
  {
LABEL_31:
    LOBYTE(v20) = 1;
LABEL_32:
    if (v10 == v4)
    {
      v27 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
      if ([v27 currentInputType] == 1)
      {
        v28 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        BSContinuousMachTimeNow();
        v30 = v29;
        [(SBIndirectPanGestureRecognizer *)v28 lastMouseActivationTimestamp];
        v32 = v31;

        LOBYTE(v20) = v30 - v32 >= 0.75;
        if (v30 - v32 < 0.75)
        {
          v33 = SBLogSystemGestureAppSwitcher();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *v47 = 0;
            _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_INFO, "Preventing the left indirect floating app present gesture because the dismiss gesture was very recently activated with a mouse.", v47, 2u);
          }

          LOBYTE(v20) = 0;
        }
      }

      else
      {
        LOBYTE(v20) = 1;
      }
    }

    goto LABEL_23;
  }

  v36 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
  if ([v36 currentInputType] == 1)
  {
    v37 = self->_indirectDismissFloatingApplicationGestureRecognizer;
    BSContinuousMachTimeNow();
    v39 = v38;
    [(SBIndirectPanGestureRecognizer *)v37 lastMouseActivationTimestamp];
    v41 = v40;

    v20 = v39 - v41 >= 0.75;
    if (v39 - v41 < 0.75)
    {
      v42 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *v47 = 0;
        _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_INFO, "Preventing the right indirect floating app present gesture because the dismiss gesture was very recently activated with a mouse.", v47, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_32;
  }

LABEL_23:
  v21 = [MEMORY[0x277D6A798] sharedInstance];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationPresentGesture___block_invoke;
  v43[3] = &unk_2783B77A8;
  v46 = v20;
  v44 = v4;
  v45 = v13;
  v22 = v13;
  v23 = v4;
  [v21 logBlock:v43];

  return v20;
}

id __79__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationPresentGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationPresentGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationMoveGesture:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = 0;
  v5 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:v4 gestureType:23 failureReason:&v35];
  v6 = v35;
  if (!v5)
  {
    v9 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Preventing the floating app move gesture because: %@.", buf, 0xCu);
    }

    v7 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    goto LABEL_9;
  }

  v7 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  if ([v7 isFloatingSwitcherVisible])
  {
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Preventing the floating app present move because the floating switcher is presented.", buf, 2u);
    }

LABEL_9:
    LOBYTE(v10) = 0;
LABEL_10:
    v11 = [MEMORY[0x277D6A798] sharedInstance];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationMoveGesture___block_invoke;
    v28[3] = &unk_2783B77A8;
    v31 = v10;
    v29 = v4;
    v30 = v6;
    [v11 logBlock:v28];

    v12 = v29;
    goto LABEL_11;
  }

  v14 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];

  if (v14)
  {
    indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;
    if (indirectDismissFloatingApplicationGestureRecognizer != v4)
    {
      LOBYTE(v10) = 1;
      goto LABEL_10;
    }

    if ([(SBIndirectPanGestureRecognizer *)indirectDismissFloatingApplicationGestureRecognizer currentInputType]== 1)
    {
      v16 = [(SBFluidSwitcherGestureManager *)self _indirectPresentFloatingAppGestureRecognizerForEdge:[(SBIndirectPanGestureRecognizer *)self->_indirectDismissFloatingApplicationGestureRecognizer activatedEdge]];
      BSContinuousMachTimeNow();
      v18 = v17;
      [v16 lastMouseActivationTimestamp];
      v20 = v18 - v19;
      LODWORD(v10) = v20 >= 0.75;
      if (v20 < 0.75)
      {
        v21 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_INFO, "Preventing the indirect floating app dismiss gesture because the present gesture was very recently activated with a mouse.", buf, 2u);
        }
      }
    }

    else
    {
      LODWORD(v10) = 1;
    }

    v22 = objc_opt_class();
    v23 = SBSafeCast(v22, v4);
    v24 = v23;
    if (v10 && v23)
    {
      v38 = 0;
      *buf = 0u;
      v37 = 0u;
      [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
      *v32 = *buf;
      v33 = v37;
      v34 = v38;
      IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v32);
      if ([v24 activatedEdge] == 2 && !IsLeftSided || objc_msgSend(v24, "activatedEdge") == 8 && IsLeftSided)
      {
        v26 = SBLogSystemGestureAppSwitcher();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *v32 = 0;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_INFO, "Preventing the indirect floating app dismiss gesture because it is at the opposite end of the visible SlideOver.", v32, 2u);
        }

        LOBYTE(v10) = 0;
      }

      else
      {
        v27 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        if (v27 != v4)
        {
          LOBYTE(v10) = 1;
          goto LABEL_34;
        }

        [(SBIndirectPanGestureRecognizer *)v27 setShouldInvertXAxis:BYTE1(v38)];
        v10 = self->_indirectDismissFloatingApplicationGestureRecognizer;
        v26 = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
        [(SBFluidSwitcherIndirectPanGestureRecognizer *)v10 setLeafAppLayout:v26];
        LOBYTE(v10) = 1;
      }
    }

LABEL_34:

    goto LABEL_10;
  }

  v12 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Preventing the floating app move gesture because there's no slideover app.", buf, 2u);
  }

  LOBYTE(v10) = 0;
LABEL_11:

  return v10;
}

id __76__SBFluidSwitcherGestureManager__shouldBeginFloatingApplicationMoveGesture___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"[SBFluidSwitcherGestureManager _shouldBeginFloatingApplicationMoveGesture:]";
  v11[0] = @"shouldBegin";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v12[0] = v2;
  v11[1] = @"address";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 32)];
  v12[1] = v3;
  v11[2] = @"name";
  v4 = [*(a1 + 32) name];
  v5 = v4;
  v6 = &stru_283094718;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_283094718;
  }

  v11[3] = @"failureReason";
  if (*(a1 + 40))
  {
    v6 = *(a1 + 40);
  }

  v12[2] = v7;
  v12[3] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  return v9;
}

- (BOOL)_shouldBeginFloatingApplicationPinGesture:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _shouldAllowFloatingApplicationGesture:a3 gestureType:24 failureReason:&v14];
  v5 = v14;
  if (!v4)
  {
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v5;
      v9 = "Preventing the floating app pin gesture because: %@.";
      v10 = v8;
      v11 = 12;
LABEL_12:
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v7 = [v6 isFloatingSwitcherVisible];

  if (v7)
  {
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Preventing the floating app pin gesture because the floating switcher is presented.";
LABEL_11:
      v10 = v8;
      v11 = 2;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (![(SBFluidSwitcherDragAndDropManager *)self->_fluidDragAndDropManager shouldBeginWindowDragGesture])
  {
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "Preventing the floating app pin gesture because the drag and drop interaction manager prevents it.";
      goto LABEL_11;
    }

LABEL_13:

    v12 = 0;
    goto LABEL_14;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

- (BOOL)_shouldBeginSplitViewApplicationUnpinGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v59 = v4;
  v7 = [v4 initialTouchLeafAppLayout];
  v8 = [WeakRetained adjustedAppLayoutForLeafAppLayout:v7];
  v9 = 0;
  if (v7 && v8)
  {
    v53 = v8;
    v10 = [v7 itemForLayoutRole:1];
    v11 = +[SBApplicationController sharedInstance];
    v12 = [v10 bundleIdentifier];
    v13 = [v11 applicationWithBundleIdentifier:v12];

    v58 = v10;
    v14 = [v10 uniqueIdentifier];
    v15 = [v5 elementWithIdentifier:v14];

    v51 = v15;
    v16 = [v15 workspaceEntity];
    v17 = [v16 deviceApplicationSceneEntity];

    v50 = v17;
    [v17 sceneHandle];
    v19 = v18 = v5;
    v20 = WeakRetained;
    v21 = objc_loadWeakRetained(&self->_switcherController);
    v22 = [v18 appLayout];
    [v21 windowScene];
    v48 = v57 = v18;
    v49 = v22;
    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](self->_displayItemLayoutAttributesCalculator, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", 1, v22, [v18 interfaceOrientation], v48);
    v55 = v20;
    v23 = [v20 view];
    [v23 bounds];

    v24 = BSSizeEqualToSize();
    v25 = [v21 windowManagementContext];
    v26 = [v25 isChamoisOrFlexibleWindowing];
    v56 = v21;
    v27 = [v21 displayIdentity];
    v52 = v13;
    v54 = v25;
    LODWORD(v25) = [v13 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v25 displayIdentity:v27];

    v28 = v19;
    if (!v25 || ([v19 screenEdgesDeferringSystemGestures] & 1) != 0 && ((v26 ^ 1 | v24) & 1) != 0 || (SBGuidedAccessIsActive() & 1) != 0)
    {
      goto LABEL_7;
    }

    v32 = v54;
    if (![v54 isFlexibleWindowingEnabled])
    {
      v9 = 1;
      v5 = v57;
      v30 = v58;
      WeakRetained = v55;
      v31 = v56;
      goto LABEL_11;
    }

    v31 = v21;
    v34 = [v21 _slideOverDisplayItem];
    v30 = v58;
    v5 = v57;
    WeakRetained = v55;
    if (([(SBDisplayItem *)v34 isEqualToItem:v58]& 1) != 0)
    {
      v62 = 0;
      *buf = 0u;
      v61 = 0u;
      [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
      v47 = v34;
      v35 = [v55 visibleItemContainers];
      v36 = [v35 objectForKey:v7];

      v46 = v36;
      if (v36)
      {
        v45 = [v59 _activeEventOfType:0];
        v37 = [v45 touchesForGestureRecognizer:v59];
        v38 = [v37 anyObject];

        if (([v38 _isPointerTouch] & 1) == 0)
        {
          v39 = [v55 view];
          _UISystemGestureLocationForTouchInView();

          [(SBFluidSwitcherGestureManager *)self _edgeSwipeHitTestRectForItemContainer:v46 forPointerTouch:0];
          [(SBFluidSwitcherGestureManager *)self _innerLeftEdgeDragHitTestRectForItemContainer:v46 forPointerTouch:0];
          [(SBFluidSwitcherGestureManager *)self _innerRightEdgeDragHitTestRectForItemContainer:v46 forPointerTouch:0];
          if ((SBRectContainsPoint() & 1) == 0 && ((SBRectContainsPoint() & 1) != 0 || SBRectContainsPoint()))
          {
            v40 = [v55 view];
            _UISystemGestureTranslationInView();
            v42 = v41;
            v44 = v43;

            if (fabs(v42) > fabs(v44))
            {
              v9 = 1;
LABEL_10:
              v5 = v57;
              v30 = v58;
              WeakRetained = v55;
              v31 = v56;
              v32 = v54;
LABEL_11:

              v8 = v53;
              goto LABEL_12;
            }

LABEL_7:
            v29 = SBLogSystemGestureAppSwitcher();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Preventing the split view unpin gesture because the drag and drop interaction manager prevents it.", buf, 2u);
            }

            v9 = 0;
            goto LABEL_10;
          }
        }
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_11;
  }

LABEL_12:

  return v9;
}

- (BOOL)_shouldBeginContinuousExposeStripRevealGesture:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsAvailableWithReason:&v12];
  v5 = v12;
  if (v4)
  {
    v11 = 0;
    v6 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsOccludedOrHiddenWithOutReason:&v11];
    v7 = v11;
    v8 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromBOOL();
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Begin continuous expose strip reveal gesture '%{public}@' because '%{public}@'", buf, 0x16u);
    }
  }

  else
  {
    v7 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Won't begin continuous expose strip reveal gesture because '%{public}@'", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowGesture:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v4 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsAvailableWithReason:&v13];
  v5 = v13;
  if (v4)
  {
    v12 = 0;
    v6 = [(SBFluidSwitcherGestureManager *)self _areContinuousExposeStripsOccludedOrHiddenWithOutReason:&v12];
    v7 = v12;
    v8 = !v6;
    v9 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromBOOL();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Begin continuous expose strip overflow gesture '%{public}@' because '%{public}@'", buf, 0x16u);
    }
  }

  else
  {
    v7 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Won't begin continuous expose strip overflow gesture because '%{public}@'", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldBeginContinuousExposeStripOverflowPanGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained view];

  [v4 velocityInView:v6];
  v8 = v7;
  v10 = v9;
  [v4 locationInView:v6];
  [v6 size];
  v11 = BSFloatLessThanOrEqualToFloat();
  LOBYTE(self) = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripOverflowGesture:v4];

  if (self)
  {
    if (((v8 < 0.0) & v11) == 0 && (v8 <= 0.0) | v11 & 1 && fabs(v10) <= fabs(v8))
    {
      v15 = 1;
      goto LABEL_11;
    }

    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 0;
      v13 = "Preventing the reveal overflow pan gesture because we're moving out or vertically.";
      v14 = &v17;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, v13, v14, 2u);
    }
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v13 = "Preventing the reveal overflow pan gesture because the reveal overflow gesture is disabled.";
      v14 = buf;
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (int64_t)_gestureTypeForGestureRecognizer:(id)a3
{
  v5 = a3;
  v6 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
  if (v6 == v5 || self->_deckInSwitcherPanGestureRecognizer == v5 || self->_fluidScrunchGestureRecognizer == v5 || self->_indirectBottomEdgePanGestureRecognizer == v5)
  {
  }

  else
  {
    clickAndDragHomeGestureRecognizer = self->_clickAndDragHomeGestureRecognizer;

    if (clickAndDragHomeGestureRecognizer != v5)
    {
      if (self->_swipeUpFloatingAppGestureRecognizer == v5 || self->_indirectFloatingAppScrunchGestureRecognizer == v5)
      {
        v21 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        v22 = [v21 isFloatingSwitcherVisible];

        if (v22)
        {
          v17 = 5;
        }

        else
        {
          v17 = 3;
        }

        goto LABEL_30;
      }

      v8 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
      if (v8 != v5)
      {
        v9 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
        if (v9 != v5 && self->_moveFloatingApplicationGestureRecognizer != v5)
        {
          v10 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];
          v11 = v10;
          if (v10 != v5)
          {
            v12 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

            if (v12 != v5)
            {
              if (self->_sceneResizePanGestureRecognizer == v5)
              {
                v17 = 7;
                goto LABEL_30;
              }

              if (self->_unpinSplitViewApplicationGestureRecognizer == v5 || self->_pinFloatingApplicationGestureRecognizer == v5 || self->_indirectDismissFloatingApplicationGestureRecognizer == v5)
              {
                v17 = 8;
                goto LABEL_30;
              }

              if (self->_liveWindowResizeGestureRecognizer == v5)
              {
                v17 = 9;
                goto LABEL_30;
              }

              v13 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue edgePullGestureRecognizer];
              v14 = v13;
              if (v13 == v5)
              {
              }

              else
              {
                v15 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue indirectEdgePullGestureRecognizer];

                if (v15 != v5)
                {
                  if (self->_indirectContinuousExposeStripOverflowGestureRecognizer == v5 || self->_dragContinuousExposeStripOverflowGestureRecognizer == v5)
                  {
                    v17 = 11;
                  }

                  else
                  {
                    v16 = [MEMORY[0x277CCA890] currentHandler];
                    [v16 handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureManager.m" lineNumber:3187 description:{@"Gesture recognizer (%@) doesn't correspond to a valid SBFluidSwitcherGestureType.", v5}];

                    v17 = 0;
                  }

                  goto LABEL_30;
                }
              }

              v17 = 10;
              goto LABEL_30;
            }

LABEL_37:
            v17 = 4;
            goto LABEL_30;
          }
        }
      }

      goto LABEL_37;
    }
  }

  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]== 2 && [(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
  {
    v17 = 2;
  }

  else
  {
    v18 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    v19 = [v18 isFloatingSwitcherVisible];

    if (v19)
    {
      v17 = 5;
    }

    else
    {
      v17 = 1;
    }
  }

LABEL_30:

  return v17;
}

- (Class)_fluidSwitcherGestureTransactionClassForGestureType:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 5)
  {
    if (a3 > 2 || a3 == 1 || a3 == 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        [v6 handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureManager.m" lineNumber:3211 description:@"SBFluidSwitcherGestureTypeDragAndDrop is handled by the SBFluidSwitcherDragAndDropManager."];

        v4 = 0;
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (a3 == 9 || a3 == 10 || a3 == 11)
    {
LABEL_17:
      v4 = objc_opt_class();
    }
  }

LABEL_18:

  return v4;
}

- (BOOL)_isTransactionRunningForGestureRecognizer:(id)a3
{
  v4 = a3;
  [(SBFluidSwitcherGestureManager *)self _fluidSwitcherGestureTransactionClassForGestureType:[(SBFluidSwitcherGestureManager *)self _gestureTypeForGestureRecognizer:v4]];
  v5 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 gestureRecognizer];
    if (v7 == v4)
    {
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldProtectEdgeLocation:(double)a3 edge:(unint64_t)a4
{
  if ([(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtect])
  {
    return 0;
  }

  [(SBFHomeGrabberSettings *)self->_homeGrabberSettings edgeProtectOverride];
  if (BSSettingFlagIsYes())
  {
    return 1;
  }

  if (BSSettingFlagIsExplicitNo())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained isEdgeProtectedForHomeGestureAtEdgeLocation:a4 edge:a3];

  return v9;
}

- (BOOL)_isEdgeLocationInHomeAffordanceRegion:(double)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = self->_currentHomeGrabberViews;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
        [WeakRetained containerViewBoundsForHomeGrabberView:{v10, v27}];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v33.origin.x = v13;
        v33.origin.y = v15;
        v33.size.width = v17;
        v33.size.height = v19;
        Width = CGRectGetWidth(v33);
        [v10 suggestedSizeForContentWidth:?];
        v22 = (Width - v21) * 0.5;
        v23 = (Width + v21) * 0.5;
        if (v22 <= a3 && v23 >= a3)
        {
          v25 = 1;
          goto LABEL_14;
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16, v23];
    }

    while (v7);
  }

  v25 = 0;
LABEL_14:

  return v25;
}

- (id)_deviceApplicationSceneEntityForFloatingApplicationGrabberTongue
{
  v2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  IsSplitView = SBSpaceConfigurationIsSplitView([v2 spaceConfiguration]);
  v4 = &SBLayoutRoleSide;
  if (!IsSplitView)
  {
    v4 = &SBLayoutRolePrimary;
  }

  v5 = [v2 elementWithRole:*v4];
  v6 = [v5 workspaceEntity];
  v7 = [v6 deviceApplicationSceneEntity];

  return v7;
}

- (BOOL)_edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v5 = [WeakRetained view];
  [v5 bounds];
  MidY = CGRectGetMidY(v8);

  return MidY + 125.0 < a3 || MidY + -125.0 > a3;
}

- (BOOL)_touchLocationIsWithinSlideOverTongue:(double)a3
{
  v5 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration:0];
  if (v5 && v23 == 1)
  {
    displayItemLayoutAttributesCalculator = self->_displayItemLayoutAttributesCalculator;
    v7 = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
    v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    v9 = [v8 interfaceOrientation];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v11 = [WeakRetained windowScene];
    [(SBDisplayItemLayoutAttributesCalculator *)displayItemLayoutAttributesCalculator frameForLayoutRole:1 inAppLayout:v7 containerOrientation:v9 windowScene:v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v24.origin.x = v13;
    v24.origin.y = v15;
    v24.size.width = v17;
    v24.size.height = v19;
    MidY = CGRectGetMidY(v24);
    v21 = MidY + 125.0 > a3 && MidY + -125.0 < a3;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_touchLocationIsWithinUnstashRegion:(CGPoint)a3
{
  x = a3.x;
  v5 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem:a3.x];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
  if (v5 && BYTE1(v16) == 1)
  {
    v12[0] = v14;
    v12[1] = v15;
    v13 = v16;
    if (SBDisplayItemSlideOverIsLeftSided(v12))
    {
      v6 = fabs(x);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      v9 = [WeakRetained view];
      [v9 bounds];
      v6 = vabdd_f64(x, v10);
    }

    v7 = v6 < 28.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_touchIsWithinUnstashRegionOnHomeScreen:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  if ([v5 unlockedEnvironmentMode] == 1 && (-[SBFluidSwitcherGestureManager _currentSlideOverConfiguration](self, "_currentSlideOverConfiguration"), v14 == 1))
  {
    [v4 locationInView:0];
    v6 = [v4 window];
    [v6 bounds];
    v7 = [v4 window];
    [v7 interfaceOrientation];
    [v5 interfaceOrientation];
    _UIConvertPointFromOrientationToOrientation();
    v9 = v8;
    v11 = v10;

    v12 = [(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinUnstashRegion:v9, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges:(unint64_t)a3
{
  v3 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if ((a3 & 4) != 0)
  {
    v6 = 1;
    v27 = 1;
  }

  else if (a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(SBFluidSwitcherGestureManager *)self _currentFloatingAppLayout];
    if (v5 && (v5, (v3 & 0xA) != 0))
    {
      v6 = 0;
      *(v25 + 24) = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      v8 = [WeakRetained layoutContext];
      v9 = [v8 supportedOrientationsForGesture];

      v10 = objc_opt_class();
      v11 = [(SBGrabberTongue *)self->_deckGrabberTongue edgePullGestureRecognizer];
      v12 = SBSafeCast(v10, v11);

      [v12 _touchInterfaceOrientation];
      v13 = _screenRegionGivenInterfaceOrientedRegion();
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v20 = __87__SBFluidSwitcherGestureManager__shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges___block_invoke;
      v21 = &unk_2783AD898;
      v22 = &v24;
      v23 = v13;
      v14 = v19;
      if (v9)
      {
        v15 = 0;
        v28 = 0;
        v16 = vcnt_s8(v9);
        v16.i16[0] = vaddlv_u8(v16);
        v17 = v16.i32[0];
        do
        {
          if (((1 << v15) & *&v9) != 0)
          {
            v20(v14);
            if (v28)
            {
              break;
            }

            --v17;
          }

          if (v15 > 0x3E)
          {
            break;
          }

          ++v15;
        }

        while (v17 > 0);
      }

      if ((v25[3] & 1) == 0 && [WeakRetained homeAffordanceOrientationIfMismatchedFromCurrentLayoutState])
      {
        *(v25 + 24) = (_interfaceOrientedRegionGivenScreenRegion() & 4) != 0;
      }

      v6 = *(v25 + 24);
    }
  }

  _Block_object_dispose(&v24, 8);
  return v6 & 1;
}

uint64_t __87__SBFluidSwitcherGestureManager__shouldAllowDeckBottomEdgeGestureToRecognizeFromEdges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _interfaceOrientedRegionGivenScreenRegion();
  if ((result & 4) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)takeHiddenAssertionForHomeGrabber:(id)a3
{
  v3 = MEMORY[0x277D65E80];
  v4 = a3;
  v7 = [v3 rootSettings];
  v5 = [v7 hideForHomeGestureOwnershipAnimationSettings];
  v6 = [v5 BSAnimationSettings];

  [v4 setHomeAffordanceInteractionEnabled:0];
  [v4 setHidden:1 forReason:@"SBFluidSwitcherHomeGestureNotOwnedGrabberHiddenReason" withAnimationSettings:v6];
}

- (void)relinquishHiddenAssertionForHomeGrabber:(id)a3
{
  v3 = MEMORY[0x277D65E80];
  v4 = a3;
  v7 = [v3 rootSettings];
  v5 = [v7 unhideForHomeGestureOwnershipAnimationSettings];
  v6 = [v5 BSAnimationSettings];

  [v4 setHomeAffordanceInteractionEnabled:1];
  [v4 setHidden:0 forReason:@"SBFluidSwitcherHomeGestureNotOwnedGrabberHiddenReason" withAnimationSettings:v6];
}

- (void)zStackParticipantDidChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_currentHomeGrabberViews;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
        {
          [(SBFluidSwitcherGestureManager *)self relinquishHiddenAssertionForHomeGrabber:v9];
        }

        else
        {
          [(SBFluidSwitcherGestureManager *)self takeHiddenAssertionForHomeGrabber:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained zStackActivationStateUpdated];

  [(SBFluidSwitcherGestureManager *)self _updateHomeAffordanceInteraction];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v7 = v6;
  if (!v6)
  {
LABEL_5:
    v10 = 0;
    v9 = 1;
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  v8 = [v6 unlockedEnvironmentMode];
  v9 = v8;
  v10 = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      v11 = 0;
      if (v8 != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

LABEL_27:
    v33 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
    if (v33)
    {
      v34 = v33;
      v35 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];
      v36 = [v35 isComplete];

      v11 = 0;
      if (v36)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v11 = 0;
      v10 = 2;
    }

    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v10 = 1;
    goto LABEL_6;
  }

  if (v8 == 3)
  {
    goto LABEL_27;
  }

  v11 = 0;
LABEL_7:
  [v5 setHomeGestureConsumption:{1, v9}];
  v38 = v7;
  if ([v7 isFloatingSwitcherVisible])
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v5 setHomeAffordanceDrawingSuppression:v12];
  [v5 setActivationPolicyForParticipantsBelow:v10];
  [v5 setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_zStackSystemAperturePolicyAssistant)];
  v13 = MEMORY[0x277CBEB58];
  v14 = [(SBCameraHardwareButton *)self->_zStackSystemAperturePolicyAssistant foregroundCameraShutterButtonPIDs];
  v15 = [v13 setWithSet:v14];

  v16 = MEMORY[0x277CBEB58];
  v17 = [(SBCameraHardwareButton *)self->_zStackSystemAperturePolicyAssistant allCameraShutterButtonPIDs];
  v18 = [v16 setWithSet:v17];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = self->_suppressionAssertions;
  v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        v25 = [v24 sceneID];
        v26 = [v24 bundleID];
        if (v25)
        {
          [v15 addObject:v25];
        }

        if (v26)
        {
          [v18 addObject:v26];
        }
      }

      v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v21);
  }

  [v5 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v15];
  [v5 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v18];
  v27 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant physicalButtonSceneTargets];
  [v5 setPhysicalButtonSceneTargets:v27];

  v28 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
  [v5 setCaptureButtonFullFidelityEventRequestingScenes:v28];

  v29 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant foregroundCaptureSceneTargets];
  [v5 setForegroundCaptureSceneTargets:v29];

  v30 = [(SBAudioCategoryZStackPolicyAssistant *)self->_zStackAudioCategoryPolicyAssistant audioCategoriesDisablingVolumeHUD];
  [v5 setAudioCategoriesDisablingVolumeHUD:v30];

  if (v37 == 3)
  {
    v31 = v38;
    if ([(SBAppSwitcherSettings *)self->_appSwitcherSettings effectiveSwitcherStyle]== 2)
    {
      v32 = 1;
    }

    else if (([v38 interfaceOrientation] - 3) < 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }
  }

  else
  {
    v32 = 0;
    v31 = v38;
  }

  [v5 setAllowsDimmingWhenForegroundInactive:v32];
}

- (void)_updateZStackPolicyAssistantsWithLayoutState:(id)a3
{
  v5 = a3;
  v6 = [(SBFluidSwitcherGestureManager *)self activeGestureTransaction];

  if (!v5 && v6)
  {
    [(SBFluidSwitcherGestureManager *)self _clearAudioCategoryZStackPolicyAssistant];
    [(SBFluidSwitcherGestureManager *)self _clearSystemApertureZStackPolicyAssistantSuppression];
    [(SBFluidSwitcherGestureManager *)self _clearPhysicalButtonZStackPolicyAssistant];
    goto LABEL_19;
  }

  v24 = a2;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v8 = [WeakRetained dataSource];
  v9 = [v5 unlockedEnvironmentMode];
  v10 = [v5 appLayout];
  v11 = v10;
  if (self->_zStackSystemAperturePolicyAssistant)
  {
    v12 = v8;
    v13 = [v10 itemForLayoutRole:1];
    v14 = [v5 elements];
    if ([v14 count] == 1 && v13)
    {
      v15 = [v13 type];

      v16 = 0;
      v17 = 0;
      if (v9 != 3 || v15)
      {
        goto LABEL_14;
      }

      if (objc_opt_respondsToSelector())
      {
        v17 = [v12 switcherContentController:WeakRetained deviceApplicationSceneHandleForDisplayItem:v13];
        if (v17)
        {
          v16 = [WeakRetained homeGrabberViewForAppLayout:v11];
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    v16 = 0;
    v17 = 0;
LABEL_14:
    [(SBSystemApertureZStackPolicyAssistant *)self->_zStackSystemAperturePolicyAssistant setForegroundExclusiveSceneHandle:v17 homeGrabberView:v16];

    v8 = v12;
  }

  v18 = objc_loadWeakRetained(&self->_switcherController);
  v19 = [v18 windowManagementContext];
  v20 = [v19 isChamoisOrFlexibleWindowing];

  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__129;
  v41 = __Block_byref_object_dispose__129;
  v42 = 0;
  if (v9 == 3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke;
    v28 = &unk_2783C1FA8;
    v36 = v20;
    v29 = v18;
    v21 = v5;
    v35 = v24;
    v30 = v21;
    v31 = self;
    v32 = v8;
    v33 = WeakRetained;
    v34 = &v37;
    v22 = MEMORY[0x223D6F7F0](&v25);
    v23 = [v21 floatingAppLayout];
    (v22)[2](v22, v23);

    (v22)[2](v22, v11);
  }

  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackAudioCategoryPolicyAssistant setForegroundScenes:v38[5], v24, v25, v26, v27, v28];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_zStackPhysicalButtonPolicyAssistant setForegroundScenes:v38[5]];
  _Block_object_dispose(&v37, 8);

LABEL_19:
}

void __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_14;
  }

  if (*(a1 + 88) == 1)
  {
    v4 = [*(a1 + 32) displayItemLayoutAttributesProvider];
    v5 = [*(a1 + 40) interfaceOrientation];
    if ((v5 - 1) < 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * ((v5 - 3) < 2);
    }

    v7 = [v4 zOrderedItemsInAppLayout:v3 orientation:v6];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [v3 itemForLayoutRole:4];
    [v7 bs_safeAddObject:v8];

    v9 = [v3 itemForLayoutRole:1];
    [v7 bs_safeAddObject:v9];

    v10 = [v3 itemForLayoutRole:2];
    [v7 bs_safeAddObject:v10];

    v11 = [v7 count];
    v12 = [v3 allItems];
    v13 = [v12 count];

    if (v11 == v13)
    {
      goto LABEL_9;
    }

    __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_cold_1(a1, &v22);
    v4 = v22;
  }

LABEL_9:
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_2;
  v19[3] = &unk_2783B9DC8;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v14 = [v7 bs_compactMap:v19];
  if ([v14 count])
  {
    v15 = *(*(*(a1 + 72) + 8) + 40);
    if (!v15)
    {
      v16 = [MEMORY[0x277CBEB18] array];
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v15 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v15 addObjectsFromArray:v14];
  }

LABEL_14:
}

id __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) switcherContentController:*(a1 + 40) deviceApplicationSceneHandleForDisplayItem:v3];
  }

  return v4;
}

- (void)homeGrabberViewDidReceiveClick:(id)a3
{
  v4 = a3;
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant && ([(SBFZStackParticipant *)zStackParticipant ownsHomeGesture]& 1) == 0)
  {
    v7 = SBLogSystemGesture();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Preventing the switcher from dismissing due to a home grabber click because it doesn't own the home gesture.", v8, 2u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fluidSwitcherGestureManager:self clickReceivedForHomeGrabberView:v4];
  }
}

- (BOOL)grabberTongueOrPullEnabled:(id)a3 forGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_deckGrabberTongue == v6)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginBottomEdgePanGesture:v7];
    goto LABEL_8;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == v6 || self->_leftEdgeFloatingAppGrabberTongue == v6)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginFloatingApplicationPresentGesture:v7];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == v6)
  {
    v9 = [(SBFluidSwitcherGestureManager *)self _shouldBeginContinuousExposeStripRevealGesture:v7];
    goto LABEL_8;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)grabberTongue:(id)a3 shouldShowTongueOnFirstSwipeWithEdgeLocation:(double)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (self->_deckGrabberTongue == v6)
  {
    LOBYTE(v20) = [(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)v6 screenEdge] edge:a4];
    goto LABEL_42;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue != v6 && self->_leftEdgeFloatingAppGrabberTongue != v6)
  {
    if (self->_continuousExposeStripRevealGrabberTongue == v6 && [(SBFluidSwitcherGestureManager *)self _edgeLocationIsOutsideFloatingApplicationGrabberFreeRegion:a4])
    {
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      v8 = [(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge];
      v9 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
      v10 = [v9 appLayout];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = [v10 leafAppLayouts];
      v11 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v11)
      {
        v12 = v11;
        v50 = v10;
        v52 = v9;
        v13 = *v59;
LABEL_8:
        v14 = 0;
        while (1)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v58 + 1) + 8 * v14);
          v16 = [WeakRetained visibleItemContainers];
          v17 = [v16 objectForKey:v15];

          if (v8 == 8)
          {
            [v17 frame];
            v18 = [WeakRetained view];
            [v18 frame];
            v19 = BSFloatEqualToFloat();

            if (v19)
            {
              goto LABEL_43;
            }
          }

          else if (v8 == 2)
          {
            [v17 frame];
            if (BSFloatIsZero())
            {
LABEL_43:
              v43 = [v15 itemForLayoutRole:1];
              v10 = v50;
              v44 = [v50 layoutRoleForItem:v43];

              v9 = v52;
              v45 = [v52 elementWithRole:v44];
              v46 = [v45 workspaceEntity];
              v47 = [v46 deviceApplicationSceneEntity];

              if (v47)
              {
                v48 = [v47 sceneHandle];
                v49 = [v48 screenEdgesDeferringSystemGestures];

                LOBYTE(v20) = ([(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]& v49) != 0;
                goto LABEL_47;
              }

              LOBYTE(v20) = 0;
              goto LABEL_49;
            }
          }

          if (v12 == ++v14)
          {
            v12 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
            if (v12)
            {
              goto LABEL_8;
            }

            LOBYTE(v20) = 0;
            v10 = v50;
            v9 = v52;
            goto LABEL_46;
          }
        }
      }

      LOBYTE(v20) = 0;
LABEL_46:
      v47 = obj;
LABEL_47:

LABEL_49:
      goto LABEL_42;
    }

LABEL_20:
    LOBYTE(v20) = 0;
    goto LABEL_42;
  }

  if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinSlideOverTongue:a4])
  {
    goto LABEL_20;
  }

  v21 = objc_loadWeakRetained(&self->_switcherContentController);
  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
  IsLeftSided = SBDisplayItemSlideOverIsLeftSided(v66);
  v23 = IsLeftSided;
  if (IsLeftSided)
  {
    v24 = 2;
  }

  else
  {
    v24 = 8;
  }

  v25 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v26 = [v25 appLayout];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v27 = [v26 leafAppLayouts];
  v20 = [v27 countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (!v20)
  {
LABEL_39:

    goto LABEL_41;
  }

  v51 = v24;
  v53 = v26;
  obja = v25;
  v57 = v7;
  v28 = *v63;
LABEL_27:
  v29 = 0;
  while (1)
  {
    if (*v63 != v28)
    {
      objc_enumerationMutation(v27);
    }

    v30 = *(*(&v62 + 1) + 8 * v29);
    v31 = [v21 visibleItemContainers];
    v32 = [v31 objectForKey:v30];

    [v32 frame];
    if (!v23)
    {
      break;
    }

    if (BSFloatIsZero())
    {
      goto LABEL_37;
    }

LABEL_34:

    if (v20 == ++v29)
    {
      v20 = [v27 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v20)
      {
        goto LABEL_27;
      }

      v25 = obja;
      v7 = v57;
      v26 = v53;
      goto LABEL_39;
    }
  }

  v33 = [v21 view];
  [v33 frame];
  v34 = BSFloatEqualToFloat();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v35 = [v30 itemForLayoutRole:1];
  v26 = v53;
  v36 = [v53 layoutRoleForItem:v35];

  v25 = obja;
  v37 = [obja elementWithRole:v36];
  v38 = [v37 workspaceEntity];
  v39 = [v38 deviceApplicationSceneEntity];

  if (v39)
  {
    v40 = [v39 sceneHandle];
    v41 = [v40 screenEdgesDeferringSystemGestures];

    LOBYTE(v20) = (v41 & v51) != 0;
    v27 = v39;
    v7 = v57;
    goto LABEL_39;
  }

  LOBYTE(v20) = 0;
  v7 = v57;
LABEL_41:

LABEL_42:
  return v20;
}

- (BOOL)grabberTongue:(id)a3 shouldAllowSecondSwipeWithEdgeLocation:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_deckGrabberTongue == v6)
  {
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == v6)
  {
LABEL_8:
    if ([(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)v6 screenEdge] edge:a4])
    {
      goto LABEL_9;
    }

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue != v6 && self->_continuousExposeStripRevealGrabberTongue == v6 && ![(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)v6 screenEdge] edge:a4])
  {
    goto LABEL_10;
  }

LABEL_9:
  v8 = [(SBGrabberTongue *)v7 isEdgeLocationInGrabberRegion:a4];
LABEL_11:

  return v8;
}

- (void)grabberTongueBeganPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v10 = a3;
  v8 = a6;
  if (self->_deckGrabberTongue == v10)
  {
    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureBegan:v9];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == v10 || self->_leftEdgeFloatingAppGrabberTongue == v10)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:v8];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != v10)
    {
      goto LABEL_9;
    }

    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:v9];
  }

LABEL_9:
}

- (void)grabberTongueUpdatedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v10 = a3;
  v8 = a6;
  if (self->_deckGrabberTongue == v10)
  {
    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureChanged:v9];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == v10 || self->_leftEdgeFloatingAppGrabberTongue == v10)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:v8];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != v10)
    {
      goto LABEL_9;
    }

    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:v9];
  }

LABEL_9:
}

- (void)grabberTongueEndedPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v10 = a3;
  v8 = a6;
  if (self->_deckGrabberTongue == v10)
  {
    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:v9];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == v10 || self->_leftEdgeFloatingAppGrabberTongue == v10)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:v8];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != v10)
    {
      goto LABEL_9;
    }

    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:v9];
  }

LABEL_9:
}

- (void)grabberTongueCanceledPulling:(id)a3 withDistance:(double)a4 andVelocity:(double)a5 andGesture:(id)a6
{
  v10 = a3;
  v8 = a6;
  if (self->_deckGrabberTongue == v10)
  {
    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleSwitcherPanGestureEnded:v9];
  }

  else
  {
    if (self->_rightEdgeFloatingAppGrabberTongue == v10 || self->_leftEdgeFloatingAppGrabberTongue == v10)
    {
      [(SBFluidSwitcherGestureManager *)self _handleFloatingAppPresentGesture:v8];
      goto LABEL_9;
    }

    if (self->_continuousExposeStripRevealGrabberTongue != v10)
    {
      goto LABEL_9;
    }

    v9 = [(SBGrabberTongue *)v10 edgePullGestureRecognizer];
    [(SBFluidSwitcherGestureManager *)self _handleContinuousExposeStripRevealGesture:v9];
  }

LABEL_9:
}

- (id)customGestureRecognizerForGrabberTongue:(id)a3
{
  v4 = a3;
  v5 = _os_feature_enabled_impl();
  if (self->_deckGrabberTongue == v4)
  {
    v7 = v5;
    v8 = [MEMORY[0x277CF0CA8] sharedInstance];
    v9 = [v8 homeButtonType];

    if (v9 == 2)
    {
      v10 = 5;
    }

    else
    {
      v10 = 3;
    }

    v6 = [(SBHomeGesturePanGestureRecognizer *)[SBFluidSwitcherScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0 type:v10 options:v7];
    [(SBHomeGesturePanGestureRecognizer *)v6 setPreventHorizontalSwipesOutsideTrapezoid:0];
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)v6 setSwitcherViewController:WeakRetained];

    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:15];
    [(SBHomeGestureSettings *)self->_homeGestureSettings edgeAngleWindow];
    [(UIScreenEdgePanGestureRecognizer *)v6 _setBottomEdgeAngleWindow:?];
    goto LABEL_16;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == v4)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    v12 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v13 = 8;
    v14 = 2;
LABEL_12:
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:v15];
    goto LABEL_16;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == v4)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    v12 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v13 = 2;
    v14 = 8;
    goto LABEL_12;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == v4)
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:0 action:0];
    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:[(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]];
    [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)v6 setName:@"revealContinuousExposeStripsGestureRecognizer"];
  }

  else
  {
    v6 = 0;
  }

LABEL_16:

  return v6;
}

- (id)indirectPanGestureRecognizerForGrabberTongue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_rightEdgeFloatingAppGrabberTongue == v4)
  {
    v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v8 = 8;
    v9 = 2;
LABEL_7:
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (self->_rightEdgeFloatingAppGrabberTongue == v5)
    {
      v11 = @"rightIndirectFloatingAppGrabberTongueGestureRecognizer";
    }

    else
    {
      v11 = @"leftIndirectFloatingAppGrabberTongueGestureRecognizer";
    }

    v12 = v11;
    v6 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:0 action:0 edges:v10];
    [(SBIndirectPanGestureRecognizer *)v6 setName:v12];

    [(SBIndirectPanGestureRecognizer *)v6 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldInvertXAxis:1];
    [(SBIndirectPanGestureRecognizer *)v6 setActivationRecognitionDistance:80.0];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:1 forInputType:10.0];
    [(SBIndirectPanGestureRecognizer *)v6 setTranslationAdjustmentBlock:&__block_literal_global_320];
    goto LABEL_14;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == v4)
  {
    v7 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v8 = 2;
    v9 = 8;
    goto LABEL_7;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == v4)
  {
    v6 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:self action:sel__handleContinuousExposeStripRevealGesture_ edges:[(SBFluidSwitcherGestureManager *)self _continuousExposeStripEdge]];
    [(SBIndirectPanGestureRecognizer *)v6 setName:@"indirectRevealContinuousExposeStripsGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)v6 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)v6 setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v6 setHysteresis:1 forInputType:10.0];
    objc_copyWeak(&to, &self->_switcherContentController);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__SBFluidSwitcherGestureManager_indirectPanGestureRecognizerForGrabberTongue___block_invoke_2;
    v14[3] = &unk_2783C1F08;
    objc_copyWeak(&v15, &to);
    [(SBIndirectPanGestureRecognizer *)v6 setTranslationAdjustmentBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&to);
  }

  else
  {
    v6 = 0;
  }

LABEL_14:

  return v6;
}

double __78__SBFluidSwitcherGestureManager_indirectPanGestureRecognizerForGrabberTongue___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained view];
    [v11 bounds];
    v13 = v12;

    v14 = a2 - fabs(a3);
    if (a6 >= v13 * 0.5)
    {
      a2 = fmax(v14, 0.0);
    }

    else if (v14 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = 0.0;
    }
  }

  return a2;
}

- (unint64_t)indirectPanSystemGestureTypeForGrabberTongue:(id)a3
{
  v4 = a3;
  if (self->_rightEdgeFloatingAppGrabberTongue == v4)
  {
    v5 = 36;
  }

  else if (self->_leftEdgeFloatingAppGrabberTongue == v4)
  {
    v5 = 37;
  }

  else if (self->_continuousExposeStripRevealGrabberTongue == v4)
  {
    v5 = 48;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSuppressTongueViewForGrabberTongue:(id)a3
{
  v4 = a3;
  if (self->_deckGrabberTongue == v4)
  {
    usesHomeAffordanceRulesForGrabberTongue = self->_usesHomeAffordanceRulesForGrabberTongue;
  }

  else
  {
    usesHomeAffordanceRulesForGrabberTongue = self->_leftEdgeFloatingAppGrabberTongue == v4 || self->_rightEdgeFloatingAppGrabberTongue == v4 || self->_continuousExposeStripRevealGrabberTongue == v4;
  }

  return usesHomeAffordanceRulesForGrabberTongue;
}

- (BOOL)grabberTongue:(id)a3 shouldReceiveTouch:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_deckGrabberTongue == v6)
  {
    if (![(SBGrabberTongue *)v6 isVisible]&& self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      [(SBGrabberTongue *)v6 edgeLocationForTouch:v7];
      v13 = v12;
      if ([(SBFluidSwitcherGestureManager *)self _shouldProtectEdgeLocation:[(SBGrabberTongue *)v6 screenEdge] edge:v12])
      {
        v10 = [(SBFluidSwitcherGestureManager *)self _isEdgeLocationInHomeAffordanceRegion:v13];
        goto LABEL_15;
      }
    }

    goto LABEL_16;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue != v6 && self->_rightEdgeFloatingAppGrabberTongue != v6)
  {
    if (self->_continuousExposeStripRevealGrabberTongue == v6)
    {
      if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
      {
        v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
        v9 = [v8 unlockedEnvironmentMode];

        if (v9 == 3)
        {
          if ([(SBGrabberTongue *)v6 isVisible])
          {
            [(SBGrabberTongue *)v6 edgeLocationForTouch:v7];
            v10 = [(SBGrabberTongue *)v6 isEdgeLocationInGrabberRegion:?];
LABEL_15:
            v11 = v10;
            goto LABEL_40;
          }

          v52 = 0;
          v50 = 0u;
          v51 = 0u;
          [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
          WeakRetained = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
          if (WeakRetained)
          {
            if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
            {
              v43 = v50;
              v44 = v51;
              v45 = v52;
              if (!SBDisplayItemSlideOverIsLeftSided(&v43))
              {
LABEL_44:
                v11 = BYTE1(v52) ^ 1;
                goto LABEL_39;
              }
            }

            else
            {
              v43 = v50;
              v44 = v51;
              v45 = v52;
              if (SBDisplayItemSlideOverIsLeftSided(&v43))
              {
                goto LABEL_44;
              }
            }
          }

          v11 = 1;
          goto LABEL_39;
        }
      }

LABEL_10:
      v11 = 0;
      goto LABEL_40;
    }

LABEL_16:
    v11 = 1;
    goto LABEL_40;
  }

  [(SBGrabberTongue *)v6 edgeLocationForTouch:v7];
  if ([(SBFluidSwitcherGestureManager *)self _touchLocationIsWithinSlideOverTongue:?])
  {
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
  IsLeftSided = SBDisplayItemSlideOverIsLeftSided(&v50);
  v16 = IsLeftSided;
  if (IsLeftSided)
  {
    v17 = 2;
  }

  else
  {
    v17 = 8;
  }

  v18 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v19 = [v18 appLayout];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v20 = [v19 leafAppLayouts];
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v21)
  {
    v11 = 0;
LABEL_36:

    goto LABEL_38;
  }

  v22 = v21;
  v38 = v17;
  v39 = v18;
  v41 = v6;
  v42 = v19;
  v40 = v7;
  v23 = *v47;
LABEL_22:
  v24 = 0;
  while (1)
  {
    if (*v47 != v23)
    {
      objc_enumerationMutation(v20);
    }

    v25 = *(*(&v46 + 1) + 8 * v24);
    v26 = [WeakRetained visibleItemContainers];
    v27 = [v26 objectForKey:v25];

    [v27 frame];
    if (v16)
    {
      if (BSFloatIsZero())
      {
        break;
      }

      goto LABEL_29;
    }

    v28 = [WeakRetained view];
    [v28 frame];
    v29 = BSFloatEqualToFloat();

    if (v29)
    {
      break;
    }

LABEL_29:

    if (v22 == ++v24)
    {
      v22 = [v20 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v22)
      {
        goto LABEL_22;
      }

      v11 = 0;
      v7 = v40;
      v6 = v41;
      v18 = v39;
      goto LABEL_34;
    }
  }

  v30 = [v25 itemForLayoutRole:1];
  v31 = [v42 layoutRoleForItem:v30];

  v18 = v39;
  v32 = [v39 elementWithRole:v31];
  v33 = [v32 workspaceEntity];
  v34 = [v33 deviceApplicationSceneEntity];

  if (v34)
  {
    v35 = [v34 sceneHandle];
    v36 = [v35 screenEdgesDeferringSystemGestures];

    v11 = (v36 & v38) != 0;
    v20 = v34;
    v7 = v40;
    v6 = v41;
LABEL_34:
    v19 = v42;
    goto LABEL_36;
  }

  v11 = 0;
  v7 = v40;
  v6 = v41;
  v19 = v42;
LABEL_38:

LABEL_39:
LABEL_40:

  return v11 & 1;
}

- (void)grabberTongueWillPresent:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  if (self->_deckGrabberTongue == v8)
  {
    v5 = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
    [v5 activateWithCompletionBlock:0];

    goto LABEL_10;
  }

  if (self->_leftEdgeFloatingAppGrabberTongue == v8)
  {
    v6 = WeakRetained;
    v7 = 2;
LABEL_9:
    [v6 presentSlideOverEdgeProtectTongueOnEdge:v7];
    goto LABEL_10;
  }

  if (self->_rightEdgeFloatingAppGrabberTongue == v8)
  {
    v6 = WeakRetained;
    v7 = 8;
    goto LABEL_9;
  }

  if (self->_continuousExposeStripRevealGrabberTongue == v8)
  {
    [WeakRetained presentContinuousExposeStripEdgeProtectTongue];
  }

LABEL_10:
}

- (void)grabberTongueWillPresentInteractively:(id)a3 withDistance:(double)a4 andVelocity:(double)a5
{
  v7 = a3;
  if (self->_deckGrabberTongue == v7)
  {
    self->_interactivelyPresentingTongue = 1;
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      v9 = v7;
      if (a4 <= 200.0)
      {
        [(SBGrabberTongue *)v7 dismissWithStyle:0 animated:0];
      }

      else
      {
        [(SBGrabberTongue *)v7 presentAnimated:0];
        if (!self->_playedEdgeProtectHaptic)
        {
          v8 = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
          [v8 _privateNotificationOccurred:1010];

          self->_playedEdgeProtectHaptic = 1;
        }
      }

      [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:5];
      v7 = v9;
    }
  }
}

- (void)grabberTongueDidPresentInteractively:(id)a3 withDistance:(double)a4 andVelocity:(double)a5
{
  v8 = a3;
  if (self->_deckGrabberTongue == v8)
  {
    self->_interactivelyPresentingTongue = 0;
    if (self->_usesHomeAffordanceRulesForGrabberTongue)
    {
      v11 = v8;
      if (a4 > 200.0 || a5 > 150.0)
      {
        [(SBGrabberTongue *)v8 presentAnimated:0];
        if (!self->_playedEdgeProtectHaptic)
        {
          v9 = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
          [v9 _privateNotificationOccurred:1010];

          self->_playedEdgeProtectHaptic = 1;
        }
      }

      else
      {
        [(SBGrabberTongue *)v8 dismissWithStyle:0 animated:0];
      }

      v10 = [(SBFluidSwitcherGestureManager *)self edgeProtectFeedbackGenerator];
      [v10 deactivate];

      [(SBFluidSwitcherGestureManager *)self _updateHomeGrabberViewsWithAnimationMode:3];
      self->_playedEdgeProtectHaptic = 0;
      v8 = v11;
    }
  }
}

- (void)grabberTongueWillDismiss:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = WeakRetained;
  if (self->_deckGrabberTongue != v4)
  {
    if (self->_leftEdgeFloatingAppGrabberTongue == v4)
    {
      v14 = 2;
    }

    else
    {
      if (self->_rightEdgeFloatingAppGrabberTongue != v4)
      {
        if (self->_continuousExposeStripRevealGrabberTongue == v4)
        {
          [WeakRetained dismissContinuousExposeStripEdgeProtectTongue];
        }

        goto LABEL_19;
      }

      v14 = 8;
    }

    [WeakRetained dismissSlideOverEdgeProtectTongueOnEdge:v14];
    goto LABEL_19;
  }

  if (self->_usesHomeAffordanceRulesForGrabberTongue && !self->_interactivelyPresentingTongue)
  {
    v7 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings forcedProminentToThinAnimationSettings];
    v8 = [v7 BSAnimationSettings];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_currentHomeGrabberViews;
    v10 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) updateStyleWithAnimationSettings:{v8, v15}];
        }

        while (v11 != v13);
        v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

LABEL_19:
}

- (UINotificationFeedbackGenerator)edgeProtectFeedbackGenerator
{
  edgeProtectFeedbackGenerator = self->_edgeProtectFeedbackGenerator;
  if (!edgeProtectFeedbackGenerator)
  {
    v4 = objc_alloc(MEMORY[0x277D757B8]);
    v5 = MEMORY[0x277D76138];
    v6 = [MEMORY[0x277CBEB98] setWithObject:&unk_2833721D0];
    v7 = [v5 privateConfigurationForTypes:v6];
    v8 = [v4 initWithConfiguration:v7];
    v9 = self->_edgeProtectFeedbackGenerator;
    self->_edgeProtectFeedbackGenerator = v8;

    edgeProtectFeedbackGenerator = self->_edgeProtectFeedbackGenerator;
  }

  return edgeProtectFeedbackGenerator;
}

- (double)additionalEdgeSpacingForHomeGrabberView:(id)a3
{
  v4 = a3;
  if (self->_interactivelyPresentingTongue || (v5 = 0.0, self->_shouldRubberbandGrabberViewForReduceMotion))
  {
    [(SBGrabberTongue *)self->_deckGrabberTongue distanceFromEdge];
    [v4 suggestedEdgeSpacing];
    BSUIConstrainValueWithRubberBand();
    v5 = v6;
  }

  return v5;
}

- (BOOL)shouldAllowThinStyleForHomeGrabberView:(id)a3
{
  if ([(SBGrabberTongue *)self->_deckGrabberTongue isVisible])
  {
    return 0;
  }

  else
  {
    return ![(SBFluidSwitcherGestureManager *)self _shouldSuppressEdgeProtect];
  }
}

- (void)_updateHomeGrabberViewsWithAnimationMode:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(SBFHomeGrabberSettings *)self->_homeGrabberSettings edgeProtectAnimationSettings];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_currentHomeGrabberViews;
  v6 = [(NSHashTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __74__SBFluidSwitcherGestureManager__updateHomeGrabberViewsWithAnimationMode___block_invoke;
        v12[3] = &unk_2783A8C18;
        v12[4] = v10;
        [MEMORY[0x277D75D18] sb_animateWithSettings:v5 mode:a3 animations:v12 completion:0];
        [v10 updateStyle];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

uint64_t __74__SBFluidSwitcherGestureManager__updateHomeGrabberViewsWithAnimationMode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)homeGrabberViewDidRecognizeDoubleTap:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceSingleTapGatingEnabled])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForHomeGrabberView:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) _homeAffordanceHostSceneComponent];
          [v10 doubleTapGestureDidSucceed:1];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)homeGrabberViewDidFailToRecognizeDoubleTap:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBFluidSwitcherGestureManager *)self _isHomeAffordanceSingleTapGatingEnabled])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForHomeGrabberView:v4, 0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) _homeAffordanceHostSceneComponent];
          [v10 doubleTapGestureDidSucceed:0];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v16 = a4;
  v7 = [SBApp bannerManager];
  v8 = [v7 windowSceneForPresentable:v16];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v10 = [WeakRetained windowScene];
  if ([v8 isEqual:v10])
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
      v13 = v16;
      if (!presentedSceneBackedBanners)
      {
        v14 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
        v15 = self->_presentedSceneBackedBanners;
        self->_presentedSceneBackedBanners = v14;

        v13 = v16;
        presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
      }

      [(NSHashTable *)presentedSceneBackedBanners addObject:v13];
    }
  }

  else
  {
  }
}

- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  [(NSHashTable *)self->_presentedSceneBackedBanners removeObject:a4];
  if (![(NSHashTable *)self->_presentedSceneBackedBanners count])
  {
    presentedSceneBackedBanners = self->_presentedSceneBackedBanners;
    self->_presentedSceneBackedBanners = 0;
  }
}

- (id)_currentFlexibleWindowingAutoLayoutSpace
{
  v3 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v4 = [v3 appLayout];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v5 = objc_loadWeakRetained(&self->_switcherContentController);
    v6 = [v5 view];
    [v6 bounds];
    v40 = v8;
    v41 = v7;
    v38 = v10;
    v39 = v9;

    v11 = [WeakRetained windowScene];
    v37 = [v3 interfaceOrientation];
    v12 = [v5 personality];
    [v12 leftStatusBarPartIntersectionRegion];
    v35 = v14;
    v36 = v13;
    v16 = v15;
    v18 = v17;
    [v12 rightStatusBarPartIntersectionRegion];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    displayItemLayoutAttributesCalculator = self->_displayItemLayoutAttributesCalculator;
    v28 = [v11 floatingDockController];
    [v28 floatingDockHeight];
    v30 = v29;
    v31 = [v11 screen];
    [v31 scale];
    v33 = -[SBDisplayItemLayoutAttributesCalculator flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:](displayItemLayoutAttributesCalculator, "flexibleWindowingAutoLayoutSpaceForAppLayout:containerOrientation:floatingDockHeight:screenScale:bounds:isEmbeddedDisplay:prefersStripHidden:prefersDockHidden:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:", v4, v37, [v11 isExternalDisplayWindowScene] ^ 1, objc_msgSend(v5, "prefersStripHidden"), objc_msgSend(v5, "prefersDockHidden"), v30, v32, v41, v40, v39, v38, v36, v35, v16, v18, v20, v22, v24, v26);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_currentFloatingAppLayout
{
  v2 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v3 = [v2 floatingAppLayout];

  return v3;
}

- (SBDisplayItemSlideOverConfiguration)_currentSlideOverConfiguration
{
  v14 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (v14)
  {
    v5 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    v7 = [WeakRetained displayItemLayoutAttributesProvider];
    v8 = [(SBFluidSwitcherGestureManager *)self _slideOverLeafAppLayout];
    v9 = [v5 displayOrdinal];
    v10 = [v5 interfaceOrientation];
    if ((v10 - 1) < 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * ((v10 - 3) < 2);
    }

    v12 = [v7 layoutAttributesForDisplayItem:v14 inAppLayout:v8 displayOrdinal:v9 orientation:v11];
    [(SBDisplayItemLayoutAttributes *)v12 slideOverConfiguration];
  }

  else
  {
    SBDisplayItemSlideOverConfigurationNone(retstr);
  }

  return result;
}

- (id)_slideOverDisplayItem
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained _slideOverDisplayItem];

  return v3;
}

- (id)_slideOverLeafAppLayout
{
  v3 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v5 = [WeakRetained appLayouts];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__SBFluidSwitcherGestureManager__slideOverLeafAppLayout__block_invoke;
    v10[3] = &unk_2783A8CB8;
    v6 = v3;
    v11 = v6;
    v7 = [v5 bs_firstObjectPassingTest:v10];
    v8 = [v7 leafAppLayoutForItem:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_firstFloatingAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v3 = [WeakRetained appLayouts];
  v4 = [v3 bs_firstObjectPassingTest:&__block_literal_global_336];

  return v4;
}

- (id)_indirectPresentFloatingAppGestureRecognizerForEdge:(unint64_t)a3
{
  if (a3 == 2)
  {
    v5 = 248;
LABEL_5:
    v6 = [*(&self->super.isa + v5) indirectEdgePullGestureRecognizer];

    return v6;
  }

  if (a3 == 8)
  {
    v5 = 240;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_grabberTongueForGestureRecognizer:(id)a3
{
  v4 = a3;
  p_rightEdgeFloatingAppGrabberTongue = &self->_rightEdgeFloatingAppGrabberTongue;
  v6 = [(SBGrabberTongue *)self->_rightEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (v6 == v4)
  {
    goto LABEL_8;
  }

  v7 = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (v7 == v4)
  {
    goto LABEL_9;
  }

  p_rightEdgeFloatingAppGrabberTongue = &self->_leftEdgeFloatingAppGrabberTongue;
  v6 = [(SBGrabberTongue *)self->_leftEdgeFloatingAppGrabberTongue edgePullGestureRecognizer];
  if (v6 == v4)
  {
    goto LABEL_8;
  }

  v8 = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (v8 == v4)
  {
    goto LABEL_9;
  }

  p_rightEdgeFloatingAppGrabberTongue = &self->_continuousExposeStripRevealGrabberTongue;
  v6 = [(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue edgePullGestureRecognizer];
  if (v6 == v4)
  {
LABEL_8:

    goto LABEL_9;
  }

  v9 = [(SBGrabberTongue *)*p_rightEdgeFloatingAppGrabberTongue indirectEdgePullGestureRecognizer];

  if (v9 != v4)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v10 = *p_rightEdgeFloatingAppGrabberTongue;
LABEL_10:

  return v10;
}

- (BOOL)_isBannerOccludingRegionAtReferencePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [SBApp notificationDispatcher];
  v6 = [v5 bannerDestination];

  if ([v6 isPresentingBanner])
  {
    if ([v6 isPresentingBannerInLongLook])
    {
      v7 = 1;
    }

    else
    {
      [v6 presentedBannerScreenFrame];
      v11 = CGRectInset(v10, -30.0, -30.0);
      v9.x = x;
      v9.y = y;
      v7 = CGRectContainsPoint(v11, v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_areContinuousExposeStripsAvailableWithReason:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  v7 = [v6 windowManagementContext];
  v8 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v9 = [WeakRetained personality];
  v10 = [v9 windowingStrip];

  if (v10)
  {
    v11 = [v10 appLayoutsInStrip];
    v12 = [v11 count] != 0;
  }

  else
  {
    v12 = 0;
  }

  if ([v7 isChamoisOrFlexibleWindowing])
  {
    if (v12 | (([v7 isFlexibleWindowingEnabled] & 1) == 0))
    {
      if ([WeakRetained prefersStripHiddenAndDisabled])
      {
        v13 = 0;
        v14 = @"PrefersStripHiddenAndDisabled";
      }

      else if ([v8 unlockedEnvironmentMode] == 3)
      {
        if ([v8 isFloatingSwitcherVisible])
        {
          v13 = 0;
          v14 = @"FloatingSwitcherVisible";
        }

        else
        {
          zStackParticipant = self->_zStackParticipant;
          if (zStackParticipant && [(SBFZStackParticipant *)zStackParticipant activationState])
          {
            v13 = 0;
            v14 = @"NotForegroundActiveInZStack";
          }

          else
          {
            v17 = [v8 appLayout];
            v18 = [v17 itemForLayoutRole:1];

            v19 = [v18 bundleIdentifier];
            if (v19)
            {
              v23 = v18;
              v20 = +[SBApplicationController sharedInstance];
              v21 = [v20 applicationWithBundleIdentifier:v19];

              v14 = @"Available";
              if (v21)
              {
                v22 = [v21 alwaysMaximizedInChamois];
                if (v22)
                {
                  v14 = @"ApplicationAlwaysMaximized";
                }

                v13 = v22 ^ 1;
              }

              else
              {
                v13 = 1;
              }

              v18 = v23;
            }

            else
            {
              v13 = 1;
              v14 = @"Available";
            }
          }
        }
      }

      else
      {
        v13 = 0;
        v14 = @"NotInApplication";
      }
    }

    else
    {
      v13 = 0;
      v14 = @"StripIsEmpty";
    }
  }

  else
  {
    v13 = 0;
    v14 = @"FeatureNotEnabled";
  }

  if (a3)
  {
    *a3 = v14;
  }

  return v13;
}

- (BOOL)_areContinuousExposeStripsOccludedOrHiddenWithOutReason:(id *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = objc_loadWeakRetained(&self->_switcherController);
  v7 = [v6 windowManagementContext];
  v8 = [v7 isChamoisOrFlexibleWindowing];

  if (v8)
  {
    if ([WeakRetained prefersStripHiddenAndDisabled])
    {
      LOBYTE(v9) = 0;
      v10 = @"PrefersStripHiddenAndDisabled";
    }

    else if ([WeakRetained _areContinuousExposeStripsUnoccluded])
    {
      LOBYTE(v9) = 0;
      v10 = @"StripsManuallyUnoccluded";
    }

    else if ([WeakRetained prefersStripHidden] && !objc_msgSend(WeakRetained, "prefersStripHiddenAndDisabled"))
    {
      LOBYTE(v9) = 1;
      v10 = @"PrefersStripHidden";
    }

    else
    {
      v12 = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
      v9 = [v12 isStripVisible] ^ 1;

      v10 = @"StripVisible";
    }
  }

  else
  {
    LOBYTE(v9) = 0;
    v10 = @"FeatureNotEnabled";
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v9;
}

- (unint64_t)_continuousExposeStripEdge
{
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

- (void)_updateGestureDefaults
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 gestureDefaults];

  self->_multitaskingGesturesRequireEducation = [v4 multitaskingGesturesRequireEducation];
  self->_multitaskingGesturesUserPreferenceIsOff = [v4 isSystemGesturesAllowed] ^ 1;
}

- (id)_scenesForHomeGrabberView:(id)a3
{
  v4 = [(SBFluidSwitcherGestureManager *)self _appLayoutForHomeGrabberView:a3];
  if (v4)
  {
    v5 = [(SBFluidSwitcherGestureManager *)self _scenesForAppLayout:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v6 = v5;

  return v6;
}

- (id)_appLayoutForHomeGrabberView:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self _currentLayoutState];
  v6 = [v5 appLayout];
  v7 = [v5 floatingAppLayout];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = WeakRetained;
  if (!v6)
  {
    v10 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [WeakRetained homeGrabberViewForAppLayout:v6];
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [v9 homeGrabberViewForAppLayout:v7];
LABEL_6:
  v12 = [v4 isEqual:v10];
  v13 = v6;
  if ((v12 & 1) != 0 || (v14 = [v4 isEqual:v11], v13 = v7, v14))
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_scenesForAppLayout:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [WeakRetained dataSource];
  if (objc_opt_respondsToSelector())
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__SBFluidSwitcherGestureManager__scenesForAppLayout___block_invoke;
    v9[3] = &unk_2783AED40;
    v10 = v7;
    v11 = WeakRetained;
    v12 = v5;
    [v4 enumerate:v9];
  }

  return v5;
}

void __53__SBFluidSwitcherGestureManager__scenesForAppLayout___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) switcherContentController:*(a1 + 40) deviceApplicationSceneHandleForDisplayItem:a3];
  v4 = [v5 sceneIfExists];
  [*(a1 + 48) bs_safeAddObject:v4];
}

- (BOOL)_isHomeAffordanceSingleTapGatingEnabled
{
  v3 = _UIHomeAffordanceSingleTapGatingEnabled();
  if (v3)
  {
    homeGrabberSettings = self->_homeGrabberSettings;

    LOBYTE(v3) = [(SBFHomeGrabberSettings *)homeGrabberSettings isSingleTapGatingEnabled];
  }

  return v3;
}

- (BOOL)_isHomeAffordanceHitTestRectForAppLayoutRelevant:(id)a3
{
  v4 = a3;
  if ([(SBFluidSwitcherGestureManager *)self _currentUnlockedEnvironmentMode]== 3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v6 = [WeakRetained _windowManagementContext];
    if ([v6 isChamoisOrFlexibleWindowing])
    {
      v7 = [WeakRetained appLayoutContainsAnUnoccludedMaximizedDisplayItem:v4];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isLiveResizeGestureWithinPreferredLiveResizeRegion
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v4 = [WeakRetained view];
  v5 = [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _activeEventOfType:0];
  v6 = [v5 touchesForGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  v7 = [v6 anyObject];

  _UISystemGestureLocationForTouchInView();
  v9 = v8;
  v11 = v10;
  [v4 bounds];
  UIRectGetCenter();
  if (v9 < v12 && v11 < v13)
  {
    v17 = 1;
  }

  else if (v9 >= v12 || v11 < v13)
  {
    v16 = 2;
    if (v9 < v12 || v11 >= v13)
    {
      v16 = 0;
    }

    if (v9 >= v12 && v11 < v13 || v9 < v12 || v11 < v13)
    {
      v17 = v16;
    }

    else
    {
      v17 = 8;
    }
  }

  else
  {
    v17 = 4;
  }

  v18 = [(SBFluidSwitcherGestureManager *)self _currentFlexibleWindowingAutoLayoutSpace];
  v19 = (~[v18 ownedDisplayRectCorners] & v17) == 0 && -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, v7, v17, 0, 0) || -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, v7, -1, 1, 0);

  return v19;
}

- (BOOL)_isLiveResizeGestureWithinTopEdgeResizeRegionForTouch
{
  v3 = [(SBFluidSwitcherPanGestureRecognizer *)self->_liveWindowResizeGestureRecognizer _activeEventOfType:0];
  v4 = [v3 touchesForGestureRecognizer:self->_liveWindowResizeGestureRecognizer];
  v5 = [v4 anyObject];

  v6 = (![v5 _isPointerTouch] || objc_msgSend(v5, "type")) && -[SBFluidSwitcherGestureManager _shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:](self, "_shouldLiveResizeItemContainerGestureWithTouch:receiveTouch:allowedCorners:requiresVisibleCorner:allowedEdges:", self->_liveWindowResizeGestureRecognizer, v5, -1, 0, 15) && -[SBFluidSwitcherPanGestureRecognizer selectedEdge](self->_liveWindowResizeGestureRecognizer, "selectedEdge") == 1;
  return v6;
}

- (id)succinctDescription
{
  v2 = [(SBFluidSwitcherGestureManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBFluidSwitcherGestureManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBFluidSwitcherGestureManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_homeGestureSettings == a3)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SBFluidSwitcherGestureManager_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __61__SBFluidSwitcherGestureManager_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSwitcherBottomEdgeGesturePresence];
  [*(a1 + 32) _updateDeckSwitcherInSwitcherGesturePresence];
  v2 = *(a1 + 32);

  return [v2 _updateExclusionTrapezoidDebugView];
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_userClickInAppInteractionGestureRecognizer == a3)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    [WeakRetained handleUserClickInAppInteractionGesture:v5];
  }
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [v6 view];

  v8 = [(SBFluidSwitcherGestureManager *)self _slideOverDisplayItem];
  if (!v8)
  {
    goto LABEL_8;
  }

  [(SBFluidSwitcherGestureManager *)self _currentSlideOverConfiguration];
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  v9 = [v7 window];
  if (v9 || ([WeakRetained layoutState], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "unlockedEnvironmentMode") != 1))
  {

LABEL_8:
    goto LABEL_9;
  }

  indirectDismissFloatingApplicationGestureRecognizer = self->_indirectDismissFloatingApplicationGestureRecognizer;

  if (indirectDismissFloatingApplicationGestureRecognizer == v4)
  {
    v11 = [WeakRetained windowScene];
    v12 = [v11 homeScreenController];
    v13 = [v12 homeScreenViewController];
    v14 = [v13 view];

    goto LABEL_10;
  }

LABEL_9:
  v14 = v7;
LABEL_10:

  return v14;
}

- (CGRect)homeAffordanceFrameForHomeAffordanceInteraction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v4 = [WeakRetained view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [MEMORY[0x277D26708] sharedInstance];
  v14 = *(MEMORY[0x277CBF3A0] + 8);
  rect = *MEMORY[0x277CBF3A0];
  v15 = objc_opt_class();
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  [v15 suggestedSizeForContentWidth:v13 withSettings:CGRectGetWidth(v35)];
  v17 = v16;
  v19 = v18;
  v36.origin.x = v6;
  v36.origin.y = v8;
  v36.size.width = v10;
  v36.size.height = v12;
  Width = CGRectGetWidth(v36);
  v37.origin.x = rect;
  v37.origin.y = v14;
  v37.size.width = v17;
  v37.size.height = v19;
  v21 = (Width - CGRectGetWidth(v37)) * 0.5;
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  CGRectGetHeight(v38);
  v39.origin.x = v21;
  v39.origin.y = v14;
  v39.size.width = v17;
  v39.size.height = v19;
  CGRectGetHeight(v39);
  [v13 edgeSpacing];
  SBScreenScale();
  BSRectRoundForScale();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (SBSwitcherContentViewControlling)contentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v3 = [WeakRetained contentViewController];

  return v3;
}

- (id)acquireSystemApertureSuppressionAssertionForBundleIdentifier:(id)a3 sceneIdentifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [_SBFluidSwitcherSystemApertureSuppressionAssertion alloc];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke;
  v15 = &unk_2783C1FD0;
  objc_copyWeak(&v16, &location);
  v9 = [(_SBFluidSwitcherSystemApertureSuppressionAssertion *)v8 initWithSceneID:v7 bundleID:v6 invalidationBlock:&v12];
  [(NSMutableSet *)self->_suppressionAssertions addObject:v9, v12, v13, v14, v15];
  [(SBFluidSwitcherGestureManager *)self _updateZStackParticipantWithReason:@"fluid switcher gesture manager system aperture suppression assertion creation"];
  v10 = SBLogSystemApertureController();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349570;
    v19 = v9;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "Adding System Aperture Transition Suppression Assertion <%{public}lx> for %{public}@, %{public}@", buf, 0x20u);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v9;
}

void __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[17] removeObject:v3];
    [v5 _updateZStackParticipantWithReason:@"fluid switcher gesture manager system aperture suppression assertion invalidation"];
    v6 = SBLogSystemApertureController();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke_cold_1(v3, v6);
    }
  }
}

- (void)updateForWindowManagementContext:(id)a3
{
  v4 = a3;
  [(SBFluidSwitcherGestureManager *)self _updateFluidDragAndDropManagerPresenceForWindowManagementContext:v4];
  [(SBFluidSwitcherGestureManager *)self _updateFloatingApplicationGestureRecognizerPresenceForWindowManagementContext:v4];
  [(SBFluidSwitcherGestureManager *)self _updateChamoisGestureRecognizerPresenceForWindowManagementContext:v4];
}

- (void)tickleContinuousExposeStripRevealGrabberTongueIfVisible
{
  if ([(SBGrabberTongue *)self->_continuousExposeStripRevealGrabberTongue isVisible])
  {
    continuousExposeStripRevealGrabberTongue = self->_continuousExposeStripRevealGrabberTongue;

    [(SBGrabberTongue *)continuousExposeStripRevealGrabberTongue presentAnimated:1 autoDismiss:1];
  }
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBFluidSwitcherGestureManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBFluidSwitcherViewController)switcherContentController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);

  return WeakRetained;
}

- (void)_handleSwitcherPanGestureBegan:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBSystemGestureRecognizerStateDescription([a1 state]);
  v7 = [a2 activeGestureTransaction];
  OUTLINED_FUNCTION_0_52();
  OUTLINED_FUNCTION_1_36(&dword_21ED4E000, v8, v9, "Switcher gesture recognizer did begin: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", v10, v11, v12, v13, v14);
}

- (void)_handleSwitcherPanGestureEnded:(void *)a1 .cold.1(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBSystemGestureRecognizerStateDescription([a1 state]);
  v7 = [a2 activeGestureTransaction];
  OUTLINED_FUNCTION_0_52();
  OUTLINED_FUNCTION_1_36(&dword_21ED4E000, v8, v9, "Switcher gesture recognizer did end: <%{public}@:%{public}p> (%{public}@), active gesture transaction:%{public}@", v10, v11, v12, v13, v14);
}

- (void)gestureRecognizerShouldBegin:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a1 name];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [a2 name];
  v12 = 138544642;
  v13 = v7;
  v14 = 2050;
  v15 = a1;
  v16 = 2114;
  v17 = v8;
  v18 = 2114;
  v19 = v10;
  v20 = 2050;
  v21 = a2;
  v22 = 2114;
  v23 = v11;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "Preventing the gesture <%{public}@:%{public}p> (%{public}@) because we have a transaction responding to a gesture already: <%{public}@:%{public}p> (%{public}@)", &v12, 0x3Eu);
}

uint64_t __78__SBFluidSwitcherGestureManager__updateZStackPolicyAssistantsWithLayoutState___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *a2 = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 48);

  return [v4 handleFailureInMethod:v5 object:v6 file:@"SBFluidSwitcherGestureManager.m" lineNumber:3607 description:@"Item counts should match"];
}

void __110__SBFluidSwitcherGestureManager_acquireSystemApertureSuppressionAssertionForBundleIdentifier_sceneIdentifier___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleID];
  v5 = [a1 sceneID];
  v6 = 134349570;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Removing System Aperture Transition Suppression Assertion <%{public}lx> for %{public}@, %@", &v6, 0x20u);
}

@end