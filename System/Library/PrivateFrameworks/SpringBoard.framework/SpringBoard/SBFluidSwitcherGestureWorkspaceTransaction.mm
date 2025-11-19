@interface SBFluidSwitcherGestureWorkspaceTransaction
- (BOOL)_isDeferringCompletionForAnyReason;
- (BOOL)_isDeferringCompletionForReason:(id)a3;
- (BOOL)_safeAreasChangingFromSettings:(id)a3 toSettings:(id)a4;
- (BOOL)_sceneUpdateTransactionIsForLiveResize:(id)a3;
- (BOOL)_shouldComplete;
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (BOOL)transaction:(id)a3 shouldKeepSceneForeground:(id)a4 withReason:(id *)a5;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (SBFluidSwitcherGestureWorkspaceTransaction)initWithTransitionRequest:(id)a3 switcherController:(id)a4 delegate:(id)a5;
- (SBFluidSwitcherGestureWorkspaceTransactionDelegate)delegate;
- (SBFluidSwitcherViewController)switcherViewController;
- (SBSwitcherController)switcherController;
- (id)_copiedTransitionRequestFromTransitionRequest:(id)a3;
- (id)_createWorkspaceTransientOverlayForAppLayout:(id)a3;
- (id)_currentGestureEventForGesture:(id)a3;
- (id)_switcherControllerForWorkspaceTransitionRequest:(id)a3;
- (id)_transitionRequestForApplicationTransitionContext:(id)a3 eventLabel:(id)a4;
- (id)_windowSceneForWorkspaceTransitionRequest:(id)a3;
- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)a3 fromGestureManager:(id)a4 withEventLabel:(id)a5;
- (id)createSceneEntityForHandle:(id)a3;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)previousLayoutStateForApplicationTransitionContext:(id)a3;
- (int64_t)_gestureType;
- (void)_acquireBackgroundingScenesDeactivationAssertionForTransitionRequest:(id)a3;
- (void)_addChildWorkspaceTransaction:(id)a3;
- (void)_addWaitForSceneLayoutTransitionTransaction:(id)a3 forLeafAnimationControllers:(id)a4;
- (void)_begin;
- (void)_beginDeferringCompletionForReason:(id)a3;
- (void)_beginWithGesture:(id)a3;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)a3;
- (void)_endDeferringCompletionForReason:(id)a3;
- (void)_failRunningLayoutStateTransition;
- (void)_finishWithCompletionType:(int64_t)a3;
- (void)_finishWithGesture:(id)a3;
- (void)_runSceneLayoutTransactionForTransitionRequest:(id)a3 updateScenes:(BOOL)a4;
- (void)_startSceneUpdateTransaction:(id)a3 forSceneIdentifier:(id)a4;
- (void)_switcherGestureDidUpdate:(id)a3;
- (void)_updateDigitizerSurfaceDimensions;
- (void)_updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:(id)a3;
- (void)_updatePPTsForAnimationEndedWithFinalLayoutState:(id)a3;
- (void)_updatePPTsForGestureEnded;
- (void)_updatePPTsForGestureTransactionBegan;
- (void)_updateWithGesture:(id)a3;
- (void)_willBeginWithGesture:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)dealloc;
- (void)didEndAllAnimations;
- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4;
- (void)handleTransitionRequestForGestureUpdate:(id)a3 fromGestureManager:(id)a4;
- (void)interceptTransitionRequest:(id)a3;
- (void)setSelectedAppLayout:(id)a3;
- (void)systemGestureStateChanged:(id)a3;
- (void)transaction:(id)a3 didEndLayoutTransitionWithContinuation:(id)a4;
- (void)transaction:(id)a3 performTransitionWithCompletion:(id)a4;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBFluidSwitcherGestureWorkspaceTransaction

- (SBFluidSwitcherGestureWorkspaceTransaction)initWithTransitionRequest:(id)a3 switcherController:(id)a4 delegate:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v47.receiver = self;
  v47.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  v10 = [(SBSystemGestureWorkspaceTransaction *)&v47 initWithTransitionRequest:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_switcherController, v8);
    v12 = [v8 contentViewController];
    objc_storeWeak(&v11->_switcherViewController, v12);

    v42 = v9;
    objc_storeWeak(&v11->_delegate, v9);
    v13 = +[SBSceneManagerCoordinator sharedInstance];
    v14 = [v13 sceneDeactivationManager];
    v15 = [v14 newAssertionWithReason:0];
    backgroundingScenesDeactivationAssertion = v11->_backgroundingScenesDeactivationAssertion;
    v11->_backgroundingScenesDeactivationAssertion = v15;

    v17 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    originalLayoutStatesBySwitcherController = v11->_originalLayoutStatesBySwitcherController;
    v11->_originalLayoutStatesBySwitcherController = v17;

    v19 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeLayoutStatesBySwitcherController = v11->_activeLayoutStatesBySwitcherController;
    v11->_activeLayoutStatesBySwitcherController = v19;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v21 = [SBApp windowSceneManager];
    v22 = [v21 connectedWindowScenes];

    v23 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        v26 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v43 + 1) + 8 * v26) switcherController];
          v28 = [v27 layoutState];
          [(NSMapTable *)v11->_originalLayoutStatesBySwitcherController setObject:v28 forKey:v27];
          [(NSMapTable *)v11->_activeLayoutStatesBySwitcherController setObject:v28 forKey:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v24);
    }

    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
    ancillaryLayoutTransactions = v11->_ancillaryLayoutTransactions;
    v11->_ancillaryLayoutTransactions = v29;

    v31 = objc_alloc_init(MEMORY[0x277CBEB58]);
    layoutTransitionCompletions = v11->_layoutTransitionCompletions;
    v11->_layoutTransitionCompletions = v31;

    v33 = +[SBAppSwitcherDomain rootSettings];
    v34 = [v33 animationSettings];

    v35 = [v34 arcSwipeSettings];
    [v35 settlingDuration];
    *&SBFluidSwitcherMaximumActivationDelayForArcSwipes = v36 * 0.9;

    v11->_shouldCancelGestureUponInterruption = 1;
    v37 = objc_opt_new();
    sceneIdentifiersWithSceneUpdateTransactionsInProgress = v11->_sceneIdentifiersWithSceneUpdateTransactionsInProgress;
    v11->_sceneIdentifiersWithSceneUpdateTransactionsInProgress = v37;

    v39 = objc_opt_new();
    pendingSceneUpdateTransactionsBySceneIdentifier = v11->_pendingSceneUpdateTransactionsBySceneIdentifier;
    v11->_pendingSceneUpdateTransactionsBySceneIdentifier = v39;

    v9 = v42;
  }

  return v11;
}

- (void)dealloc
{
  [(UIApplicationSceneDeactivationAssertion *)self->_backgroundingScenesDeactivationAssertion relinquish];
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v3 dealloc];
}

- (id)_currentGestureEventForGesture:(id)a3
{
  v5 = a3;
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];
  v7 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  v8 = [v5 state];

  v9 = SBGestureModifierPhaseForGestureState(v8);
  v10 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v11 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v12 = [v11 view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v13 recognizedTouchType];
    v15 = [(SBGestureSwitcherModifierEvent *)[SBScrunchGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:v7 gestureType:v6 phase:v9];
    [v13 velocityInView:v12];
    [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
    [v13 initialCentroid];
    v17 = v16;
    v19 = v18;
    [v13 centroid];
    v21 = v20;
    v23 = v22;
    [v13 absoluteScale];
    [(SBScrunchGestureSwitcherModifierEvent *)v15 setAbsoluteScale:?];
    [v13 locationInView:v12];
    [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];
    [v13 translationInView:v12];
    v25 = v24;
    v27 = v26;
    [v13 translationWithoutConsideringScaleInView:v12];
    v29 = v28;
    v31 = v30;
    if (v14 == 1)
    {
      v46 = v28;
      v47 = v25;
      v48 = v17;
      v32 = +[SBHomeGestureDomain rootSettings];
      [v32 travelDistanceForTranslatingScreenHeight];
      v34 = v33;
      digitizerSurfaceHeightForLastGestureEvent = self->_digitizerSurfaceHeightForLastGestureEvent;
      if (BSFloatIsZero())
      {
        digitizerSurfaceHeightForLastGestureEvent = 110.0;
      }

      v36 = digitizerSurfaceHeightForLastGestureEvent / v34;
      [v32 minimumDistanceThresholdToScaleMultiplier];
      v38 = v37;
      [v12 bounds];
      v40 = digitizerSurfaceHeightForLastGestureEvent * (v19 / v39);
      if (v40 < v38 && BSFloatGreaterThanFloat())
      {
        v36 = v36 / (v40 / v38);
      }

      v29 = v46;
      v27 = v27 * v36;
      v31 = v31 * v36;
      v17 = v48;
      v21 = v48 + v21 - v48;
      v23 = v19 + (v23 - v19) * v36;

      v25 = v47;
    }

    [(SBScrunchGestureSwitcherModifierEvent *)v15 setInitialCentroid:v17, v19];
    [(SBScrunchGestureSwitcherModifierEvent *)v15 setCentroid:v21, v23];
    [(SBGestureSwitcherModifierEvent *)v15 setTranslationInContainerView:v25, v27];
    [(SBScrunchGestureSwitcherModifierEvent *)v15 setTranslationWithoutScale:v29, v31];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = -[SBGestureSwitcherModifierEvent initWithGestureID:selectedAppLayout:gestureType:phase:modifierFlags:]([SBItemResizeGestureSwitcherModifierEvent alloc], "initWithGestureID:selectedAppLayout:gestureType:phase:modifierFlags:", self->_gestureID, v7, v6, v9, [v41 modifierFlags]);
        [(SBScrunchGestureSwitcherModifierEvent *)v15 setSelectedLayoutRole:[(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedLayoutRole]];
        [(SBScrunchGestureSwitcherModifierEvent *)v15 setSelectedEdge:[(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedEdge]];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SBGestureSwitcherModifierEvent *)[SBWindowDragSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:v7 gestureType:v6 phase:v9];
          [(SBScrunchGestureSwitcherModifierEvent *)v15 setDraggingFromContinuousExposeStrips:[(SBFluidSwitcherGestureWorkspaceTransaction *)self isDraggingFromContinuousExposeStrips]];
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self locationInSelectedDisplayItem];
          [(SBScrunchGestureSwitcherModifierEvent *)v15 setLocationInSelectedDisplayItem:?];
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self sizeOfSelectedDisplayItem];
          [(SBScrunchGestureSwitcherModifierEvent *)v15 setSizeOfSelectedDisplayItem:?];
          [(SBScrunchGestureSwitcherModifierEvent *)v15 setSelectedEdge:[(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedEdge]];
          [(SBScrunchGestureSwitcherModifierEvent *)v15 setUnstashingFromHome:[(SBFluidSwitcherGestureWorkspaceTransaction *)self unstashingFromHome]];
        }

        else
        {
          v15 = [[SBGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:v7 gestureType:v6 phase:v9];
        }
      }

      [v41 velocityInView:v12];
      [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
      [v41 translationInView:v12];
      [(SBGestureSwitcherModifierEvent *)v15 setTranslationInContainerView:?];
      [v41 _hysteresis];
      [(SBGestureSwitcherModifierEvent *)v15 setHysteresis:?];
      [v41 locationInView:v12];
      [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];

      v14 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = v10;
        v15 = [(SBGestureSwitcherModifierEvent *)[SBIndirectPanGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:v7 gestureType:v6 phase:v9];
        -[SBGestureSwitcherModifierEvent setMouseEvent:](v15, "setMouseEvent:", [v42 currentInputType] == 1);
        [v42 velocityInView:v12];
        [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
        [v42 translationInView:v12];
        [(SBGestureSwitcherModifierEvent *)v15 setTranslationInContainerView:?];
        [(SBGestureSwitcherModifierEvent *)v15 setHysteresis:10.0];
        [v42 locationInView:v12];
        [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];
        v43 = [v42 endReason];

        [(SBScrunchGestureSwitcherModifierEvent *)v15 setIndirectPanEndReason:v43];
        v14 = 1;
      }

      else
      {
        v44 = [MEMORY[0x277CCA890] currentHandler];
        [v44 handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureWorkspaceTransaction.m" lineNumber:302 description:{@"Unknown gesture recognizer: %@", v10}];

        v14 = 0;
        v15 = 0;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBGestureSwitcherModifierEvent *)v15 setTouchHistoryProvider:v10];
  }

  [(SBGestureSwitcherModifierEvent *)v15 setTouchType:v14];
  [(SBGestureSwitcherModifierEvent *)v15 setPointerTouch:self->_isPointerTouch];
  [(SBGestureSwitcherModifierEvent *)v15 setHidEventSenderID:self->_hidEventSenderID];
  [v10 lastTouchTimestamp];
  [(SBGestureSwitcherModifierEvent *)v15 setLastTouchTimestamp:?];
  -[SBGestureSwitcherModifierEvent setCanceled:](v15, "setCanceled:", [v10 state] == 4);

  return v15;
}

- (void)_willInterruptWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _willInterruptWithReason:a3];
  [(NSMutableSet *)self->_layoutTransitionCompletions removeAllObjects];
  [(NSTimer *)self->_activateScenesTimer invalidate];
  activateScenesTimer = self->_activateScenesTimer;
  self->_activateScenesTimer = 0;

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _failRunningLayoutStateTransition];
  [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeAllObjects];
}

- (void)_didInterruptWithReason:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v8 _didInterruptWithReason:a3];
  if (self->_shouldCancelGestureUponInterruption)
  {
    v4 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    v5 = [v4 state];

    if ((v5 - 1) <= 1)
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _beginDeferringCompletionForReason:@"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"];
    }

    [(SBSystemGestureWorkspaceTransaction *)self finishWithCompletionType:1];
    v6 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    [v6 setEnabled:0];

    v7 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    [v7 setEnabled:1];
  }

  else
  {
    [(SBSystemGestureWorkspaceTransaction *)self finishWithCompletionType:1];
  }
}

- (BOOL)canInterruptForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];

  if (v5)
  {
    v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];
    v7 = [v6 canInterruptForTransitionRequest:v4];
  }

  else
  {
    v7 = [SBToAppsWorkspaceTransaction canInterruptTransaction:0 forTransitionRequest:v4];
  }

  return v7;
}

- (void)interceptTransitionRequest:(id)a3
{
  v4 = a3;
  [v4 finalize];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _runSceneLayoutTransactionForTransitionRequest:v4 updateScenes:1];
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v5 = [v4 applicationContext];

  [v6 performTransitionWithContext:v5 animated:1 completion:0];
}

- (void)_begin
{
  v1 = SBStringForFluidSwitcherGestureType([a1 _gestureType]);
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "Began fluid switcher gesture transaction of type: %@.", v4, v5, v6, v7, 2u);
}

void __52__SBFluidSwitcherGestureWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([*(a1 + 32) isAcquiredTransientOverlayViewController:v5] & 1) == 0 && objc_msgSend(*(a1 + 40), "isPresentingViewController:", v5))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

void __52__SBFluidSwitcherGestureWorkspaceTransaction__begin__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:{v7, v9}];
        [*(a1 + 32) addAcquiredTransientOverlayViewController:v8 forAppLayout:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_childTransactionDidComplete:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  v4 = a3;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v11 _childTransactionDidComplete:v4];
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  if (v6)
  {
    v7 = [v6 applicationSceneEntity];
    v8 = [v7 sceneHandle];
    v9 = [v8 sceneIdentifier];

    [(NSMutableSet *)self->_sceneIdentifiersWithSceneUpdateTransactionsInProgress removeObject:v9];
    v10 = [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier objectForKey:v9];
    if (v10)
    {
      [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:v9];
      if (([(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted]& 1) == 0)
      {
        [(SBFluidSwitcherGestureWorkspaceTransaction *)self _startSceneUpdateTransaction:v10 forSceneIdentifier:v9];
      }
    }
  }
}

- (BOOL)_shouldComplete
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  v3 = [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _shouldComplete];
  if (v3)
  {
    LOBYTE(v3) = ![(SBFluidSwitcherGestureWorkspaceTransaction *)self _isDeferringCompletionForAnyReason];
  }

  return v3;
}

- (void)_didComplete
{
  v1 = SBStringForFluidSwitcherGestureType([a1 _gestureType]);
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "Completed fluid switcher gesture transaction of type: %@.", v4, v5, v6, v7, 2u);
}

- (void)systemGestureStateChanged:(id)a3
{
  v4 = a3;
  if ([(SBFluidSwitcherGestureWorkspaceTransaction *)self isRunning])
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherGestureDidUpdate:v4];
    if ([v4 state] == 4 && -[SBFluidSwitcherGestureWorkspaceTransaction isInterrupted](self, "isInterrupted") && -[SBFluidSwitcherGestureWorkspaceTransaction _isDeferringCompletionForReason:](self, "_isDeferringCompletionForReason:", @"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"))
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _endDeferringCompletionForReason:@"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"];
    }
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self systemGestureStateChanged:v4, v5];
    }
  }
}

- (void)_finishWithCompletionType:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBSystemGestureWorkspaceTransaction *)&v4 _finishWithCompletionType:a3];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self removeMilestone:@"trackingGesture"];
}

- (void)didEndAllAnimations
{
  v3 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherGestureDidUpdate:v3];
}

- (void)_switcherGestureDidUpdate:(id)a3
{
  v8 = a3;
  if (self->_calledBeginWithGesture || ([(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    animationController = self->_animationController;
    if (!animationController || [(SBUISwitcherAnimationController *)animationController isInterruptible])
    {
      v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
      v6 = [v5 pipViewMorphAnimator];
      v7 = v6;
      if (v6)
      {
        [v6 addObserver:self];
      }

      else
      {
        if (!self->_calledBeginWithGesture)
        {
          self->_calledBeginWithGesture = 1;
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self _willBeginWithGesture:v8];
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self _beginWithGesture:v8];
        }

        if ([v8 state] != 1)
        {
          if ([v8 state] == 2)
          {
            [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateWithGesture:v8];
          }

          else
          {
            [(SBFluidSwitcherGestureWorkspaceTransaction *)self _finishWithGesture:v8];
            self->_calledBeginWithGesture = 0;
          }
        }
      }
    }
  }
}

- (void)_willBeginWithGesture:(id)a3
{
  v4 = [MEMORY[0x277CCAD78] UUID];
  gestureID = self->_gestureID;
  self->_gestureID = v4;

  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  [v6 willBeginGestureWithType:-[SBFluidSwitcherGestureWorkspaceTransaction _gestureType](self identifier:{"_gestureType"), self->_gestureID}];
}

- (void)_beginWithGesture:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = SBSystemGestureRecognizerStateDescription([v4 state]);
    *buf = 138544386;
    v41 = v7;
    v42 = 2050;
    v43 = self;
    v44 = 2114;
    v45 = v9;
    v46 = 2050;
    v47 = v4;
    v48 = 2114;
    v49 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Begin with gesture recognizer: <%{public}@:%{public}p> (%{public}@)", buf, 0x34u);
  }

  v11 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  v12 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _transitionRequestForApplicationTransitionContext:v11 eventLabel:@"InterruptingGesture"];
  [v12 setSource:11];
  finalRootTransaction = self->_finalRootTransaction;
  if (finalRootTransaction)
  {
    [(SBWorkspaceTransaction *)finalRootTransaction interruptForTransitionRequest:v12];
    v14 = self->_finalRootTransaction;
    self->_finalRootTransaction = 0;
  }

  [(SBUISwitcherAnimationController *)self->_animationController interruptWithReason:@"InterruptingGesture"];
  animationController = self->_animationController;
  self->_animationController = 0;

  [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPWorkspaceTransaction setCompletionBlock:0];
  if ([(SBAutoPIPWorkspaceTransaction *)self->_autoPIPWorkspaceTransaction isRunning])
  {
    [(SBAutoPIPWorkspaceTransaction *)self->_autoPIPWorkspaceTransaction interruptWithReason:@"InterruptingGesture"];
  }

  autoPIPWorkspaceTransaction = self->_autoPIPWorkspaceTransaction;
  self->_autoPIPWorkspaceTransaction = 0;

  [(SBWorkspaceTransaction *)self->_layoutTransaction interruptForTransitionRequest:v12];
  layoutTransaction = self->_layoutTransaction;
  self->_layoutTransaction = 0;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_ancillaryLayoutTransactions;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v35 + 1) + 8 * v21++) interruptForTransitionRequest:v12];
      }

      while (v19 != v21);
      v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  [(NSMutableSet *)self->_ancillaryLayoutTransactions removeAllObjects];
  [(NSMutableSet *)self->_layoutTransitionCompletions removeAllObjects];
  [(NSTimer *)self->_activateScenesTimer invalidate];
  activateScenesTimer = self->_activateScenesTimer;
  self->_activateScenesTimer = 0;

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateDigitizerSurfaceDimensions];
  v23 = [v4 _activeEventOfType:0];
  v24 = [v4 _activeTouchesForEvent:v23];
  v25 = [v24 anyObject];
  self->_isPointerTouch = [v25 _isPointerTouch];

  SenderID = [v23 _hidEvent];
  if (SenderID)
  {
    SenderID = IOHIDEventGetSenderID();
  }

  self->_hidEventSenderID = SenderID;
  objc_initWeak(buf, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __64__SBFluidSwitcherGestureWorkspaceTransaction__beginWithGesture___block_invoke;
  v33[3] = &unk_2783B0290;
  objc_copyWeak(&v34, buf);
  v27 = MEMORY[0x223D6F7F0](v33);
  v28 = [[SBFluidSwitcherGesture alloc] initWithType:[(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType] eventProvider:v27];
  [(SBFluidSwitcherGesture *)v28 _setState:1];
  v29 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  [(SBFluidSwitcherGesture *)v28 _setSelectedAppLayout:v29];

  v30 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [(SBFluidSwitcherGesture *)v28 _setGestureRecognizerForStudyLog:v30];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didBeginGesture:v28];

  v32 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
  [v32 relinquish];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

id __64__SBFluidSwitcherGestureWorkspaceTransaction__beginWithGesture___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentGestureEventForGesture:v3];

  return v5;
}

- (void)_updateWithGesture:(id)a3
{
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateDigitizerSurfaceDimensions];
  v7 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v4 = [v7 layoutContext];
  v5 = [v4 activeGesture];

  [v5 _setState:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didUpdateGesture:v5];
}

- (void)_finishWithGesture:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = SBSystemGestureRecognizerStateDescription([v4 state]);
    v15 = 138544386;
    v16 = v7;
    v17 = 2050;
    v18 = self;
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    v22 = v4;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Finish with gesture recognizer: <%{public}@:%{public}p> (%{public}@)", &v15, 0x34u);
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updatePPTsForGestureEnded];
  self->_hasCompletedAtLeastOneGesture = 1;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateDigitizerSurfaceDimensions];
  v11 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  v12 = [v11 layoutContext];
  v13 = [v12 activeGesture];

  [v13 _setState:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didEndGesture:v13];
}

- (void)setSelectedAppLayout:(id)a3
{
  v5 = a3;
  if (self->_selectedAppLayout != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_selectedAppLayout, a3);
    WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
    v7 = [WeakRetained layoutContext];
    v8 = [v7 activeGesture];
    [v8 _setSelectedAppLayout:v9];

    v5 = v9;
  }
}

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _windowSceneForWorkspaceTransitionRequest:v5];

  v7 = [v6 layoutStateTransitionCoordinator];
  v8 = [v7 layoutStateForApplicationTransitionContext:v4];

  return v8;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)a3
{
  v4 = [a3 request];
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:v4];

  v6 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:v5];

  return v6;
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 request];
  [v7 applicationTransitionContext:v6 frameForApplicationSceneEntity:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

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

- (void)transactionDidComplete:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544130;
    v63 = v7;
    v64 = 2050;
    v65 = self;
    v66 = 2114;
    v67 = v9;
    v68 = 2050;
    v69 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Transaction did complete: <%{public}@:%{public}p>", buf, 0x2Au);
  }

  v10 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self animationController];
  v11 = v10 == v4;

  if (v11)
  {
    v49 = [(SBUIWorkspaceAnimationController *)self->_animationController workspaceTransitionRequest];
    v12 = [v49 completionBlock];

    if (v12)
    {
      v13 = [v49 completionBlock];
      v13[2](v13, 1);
    }

    animationController = self->_animationController;
    self->_animationController = 0;

    autoPIPWorkspaceTransaction = self->_autoPIPWorkspaceTransaction;
    self->_autoPIPWorkspaceTransaction = 0;

    if (([(SBSceneLayoutWorkspaceTransaction *)v4 isInterrupted]& 1) == 0)
    {
      v16 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _copiedTransitionRequestFromTransitionRequest:v49];
      v17 = [v16 applicationContext];
      [v17 setAnimationDisabled:1];

      v18 = [v16 transientOverlayContext];
      [v18 setAnimated:0];

      [v16 finalize];
      v19 = [v16 applicationContext];
      v47 = [v19 layoutState];

      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updatePPTsForAnimationEndedWithFinalLayoutState:v47];
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self setSelectedAppLayout:0];
      [(NSTimer *)self->_activateScenesTimer invalidate];
      activateScenesTimer = self->_activateScenesTimer;
      self->_activateScenesTimer = 0;

      if ([(NSMutableSet *)self->_layoutTransitionCompletions count])
      {
        v21 = [(NSMutableSet *)self->_layoutTransitionCompletions copy];
        [(NSMutableSet *)self->_layoutTransitionCompletions removeAllObjects];
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
        if (v23)
        {
          v24 = *v59;
          do
          {
            v25 = 0;
            do
            {
              if (*v59 != v24)
              {
                objc_enumerationMutation(v22);
              }

              (*(*(*(&v58 + 1) + 8 * v25++) + 16))();
            }

            while (v23 != v25);
            v23 = [v22 countByEnumeratingWithState:&v58 objects:v73 count:16];
          }

          while (v23);
        }
      }

      else
      {
        [(SBFluidSwitcherGestureWorkspaceTransaction *)self _failRunningLayoutStateTransition];
      }

      layoutTransaction = self->_layoutTransaction;
      if (layoutTransaction)
      {
        [(SBWorkspaceTransaction *)layoutTransaction interruptForTransitionRequest:v16];
        v29 = self->_layoutTransaction;
        self->_layoutTransaction = 0;
      }

      if ([(NSMutableSet *)self->_ancillaryLayoutTransactions count])
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v30 = self->_ancillaryLayoutTransactions;
        v31 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v54 objects:v72 count:16];
        if (v31)
        {
          v32 = *v55;
          do
          {
            v33 = 0;
            do
            {
              if (*v55 != v32)
              {
                objc_enumerationMutation(v30);
              }

              [*(*(&v54 + 1) + 8 * v33++) interruptForTransitionRequest:v16];
            }

            while (v31 != v33);
            v31 = [(NSMutableSet *)v30 countByEnumeratingWithState:&v54 objects:v72 count:16];
          }

          while (v31);
        }

        [(NSMutableSet *)self->_ancillaryLayoutTransactions removeAllObjects];
      }

      if ([v48 unlockedEnvironmentMode] == 1)
      {
        [SBApp updateNativeOrientationWithOrientation:objc_msgSend(SBApp updateMirroredDisplays:"interfaceOrientationForCurrentDeviceOrientation:" animated:0) logMessage:{1, 1, @"SBFluidSwitcherGestureWorkspaceTransaction completed transition to home screen"}];
      }

      v34 = [(SBWorkspaceTransaction *)self transitionRequest];
      v35 = [v34 workspace];
      v36 = [v35 transactionForTransitionRequest:v16];

      objc_storeStrong(&self->_finalRootTransaction, v36);
      v37 = objc_opt_class();
      v38 = SBSafeCast(v37, v36);
      v39 = v38;
      if (v38)
      {
        [v38 _setShouldSerialDismissOverlays:0];
      }

      objc_initWeak(&location, self);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __69__SBFluidSwitcherGestureWorkspaceTransaction_transactionDidComplete___block_invoke;
      v50[3] = &unk_2783AFDE8;
      objc_copyWeak(&v52, &location);
      v50[4] = self;
      v40 = v16;
      v51 = v40;
      [(SBSceneLayoutWorkspaceTransaction *)v36 setCompletionBlock:v50];
      v41 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:v40];
      [(NSMapTable *)self->_activeLayoutStatesBySwitcherController setObject:v48 forKey:v41];
      v42 = SBLogSystemGestureAppSwitcher();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138544386;
        v63 = v44;
        v64 = 2050;
        v65 = self;
        v66 = 2114;
        v67 = v46;
        v68 = 2050;
        v69 = v36;
        v70 = 2114;
        v71 = v48;
        _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Running final root transaction: <%{public}@:%{public}p> to transition to layout state: %{public}@", buf, 0x34u);
      }

      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _addChildWorkspaceTransaction:v36];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
    }
  }

  else if (self->_layoutTransaction == v4)
  {
    v26 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    [v26 relinquish];

    v27 = self->_layoutTransaction;
    self->_layoutTransaction = 0;
  }

  else if ([(NSMutableSet *)self->_ancillaryLayoutTransactions containsObject:v4])
  {
    [(NSMutableSet *)self->_ancillaryLayoutTransactions removeObject:v4];
  }
}

void __69__SBFluidSwitcherGestureWorkspaceTransaction_transactionDidComplete___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = SBLogSystemGestureAppSwitcher();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [WeakRetained finalRootTransaction];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [WeakRetained finalRootTransaction];
      v15 = 138544130;
      v16 = v5;
      v17 = 2050;
      v18 = WeakRetained;
      v19 = 2114;
      v20 = v8;
      v21 = 2050;
      v22 = v9;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Transaction did complete: <%{public}@:%{public}p>", &v15, 0x2Au);
    }

    v10 = [WeakRetained gestureRecognizer];
    v11 = [v10 state];

    if ((v11 - 3) > 0xFFFFFFFFFFFFFFFDLL || ([WeakRetained animationController], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [*(a1 + 32) _switcherControllerForWorkspaceTransitionRequest:*(a1 + 40)];
      v14 = [v13 layoutState];
      [WeakRetained[44] setObject:v14 forKey:v13];
    }

    else
    {
      [WeakRetained finishWithCompletionType:1];
    }

    [WeakRetained setFinalRootTransaction:0];
  }
}

- (id)createSceneEntityForHandle:(id)a3
{
  v3 = a3;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:v3];

  return v4;
}

- (void)transaction:(id)a3 performTransitionWithCompletion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_animationController)
  {
    layoutTransitionCompletions = self->_layoutTransitionCompletions;
    v10 = [v7 copy];
    v11 = MEMORY[0x223D6F7F0]();
    [(NSMutableSet *)layoutTransitionCompletions addObject:v11];
  }

  else if (v7)
  {
    v7[2](v7);
  }

  if (self->_layoutTransaction == v6 && [(NSMutableSet *)self->_ancillaryLayoutTransactions count])
  {
    v30 = v8;
    v12 = [(SBWorkspaceTransaction *)v6 displayIdentity];
    v13 = [SBApp windowSceneManager];
    v29 = v12;
    v14 = [v13 windowSceneForDisplayIdentity:v12];

    v28 = [v14 switcherController];
    v15 = [v28 windowManagementContext];
    v16 = [v15 isChamoisOrFlexibleWindowing];

    v17 = [v14 sceneManager];
    v18 = [(SBWorkspaceTransaction *)v6 transitionRequest];
    v19 = [v18 applicationContext];
    v20 = [v19 layoutState];
    v21 = [v20 elements];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v36 + 1) + 8 * i);
          v27 = +[SBSceneManagerCoordinator sharedInstance];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __90__SBFluidSwitcherGestureWorkspaceTransaction_transaction_performTransitionWithCompletion___block_invoke;
          v32[3] = &unk_2783B02B8;
          v33 = v17;
          v34 = v26;
          v35 = v16;
          [v27 enumerateSceneManagersWithBlock:v32];
        }

        v23 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v23);
    }

    v8 = v30;
  }
}

void __90__SBFluidSwitcherGestureWorkspaceTransaction_transaction_performTransitionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v3 allScenes];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 identifier];
          v12 = [*(a1 + 40) uniqueIdentifier];
          v13 = [v11 isEqualToString:v12];

          if (v13)
          {
            v14 = [v10 identity];
            [v4 transferOwnershipOfSceneWithIdentity:v14 toSceneManager:*(a1 + 32)];

            v15 = [*(a1 + 32) existingSceneHandleForScene:v10];
            v16 = objc_opt_class();
            v17 = v15;
            if (v16)
            {
              if (objc_opt_isKindOfClass())
              {
                v18 = v17;
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

            v19 = v18;

            [v19 setWantsEnhancedWindowingEnabled:*(a1 + 48)];
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }
}

- (void)transaction:(id)a3 didEndLayoutTransitionWithContinuation:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (BOOL)transaction:(id)a3 shouldKeepSceneForeground:(id)a4 withReason:(id *)a5
{
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType:a3];
  if (a5 && v6 == 8)
  {
    *a5 = @"window drag";
  }

  return v6 == 8;
}

- (void)handleTransitionRequestForGestureUpdate:(id)a3 fromGestureManager:(id)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v84 = self;
  v75 = a4;
  v81 = [SBFluidSwitcherGestureWorkspaceTransaction _workspaceTransitionRequestForSwitcherTransitionRequest:"_workspaceTransitionRequestForSwitcherTransitionRequest:fromGestureManager:withEventLabel:" fromGestureManager:v6 withEventLabel:?];
  v7 = [v75 switcherController];
  v78 = [v81 applicationContext];
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v8 = [v7 switcherCoordinator];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __105__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureUpdate_fromGestureManager___block_invoke;
  v90[3] = &unk_2783B02E0;
  v73 = v6;
  v91 = v73;
  v92 = v84;
  v94 = &v95;
  v74 = v7;
  v93 = v74;
  [v8 enumerateSwitcherControllersWithBlock:v90];

  [v81 setCrossingDisplays:*(v96 + 24)];
  v9 = [v74 windowManagementContext];
  LOBYTE(v6) = [v9 isChamoisOrFlexibleWindowing];

  v10 = [v78 isInLiveResize];
  v11 = *(v96 + 24) | v6;
  v12 = v10 ^ 1;
  if ((v11 & 1) == 0 || !v12)
  {
    [v81 finalize];
    v76 = v12;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v13 = [v78 entities];
    v14 = [v13 countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (!v14)
    {
      goto LABEL_47;
    }

    v79 = *v87;
    obj = v13;
    while (1)
    {
      v80 = v14;
      for (i = 0; i != v80; ++i)
      {
        if (*v87 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v86 + 1) + 8 * i);
        if ([v16 isApplicationSceneEntity])
        {
          v17 = v16;
          v18 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v17 transitionRequest:v81];
          v82 = [v17 sceneHandle];
          v19 = [v82 sceneIfExists];
          v20 = [v19 identifier];
          v21 = v20;
          if (v20)
          {
            v83 = v20;
          }

          else
          {
            v83 = [v82 sceneIdentifier];
          }

          v22 = [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _sceneUpdateTransactionIsForLiveResize:v18];
          v23 = [v19 settings];
          v24 = objc_opt_class();
          v25 = v23;
          if (v24)
          {
            if (objc_opt_isKindOfClass())
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          v85 = v26;

          v27 = [(SBApplicationSceneUpdateTransaction *)v18 sceneSettings];
          v28 = objc_opt_class();
          v29 = v27;
          if (v28)
          {
            if (objc_opt_isKindOfClass())
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;

          v32 = [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _safeAreasChangingFromSettings:v85 toSettings:v31];
          v33 = [v19 settings];
          [v33 frame];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          if ([v17 supportsPresentationAtAnySize])
          {
            [v78 frameForApplicationSceneEntity:v17];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
          }

          else
          {
            v50 = [(SBApplicationSceneUpdateTransaction *)v18 sceneSettings];
            [v50 frame];
            v43 = v51;
            v45 = v52;
            v47 = v53;
            v49 = v54;
          }

          if (v32)
          {
            v55 = [v81 applicationContext];
            v56 = [v55 animationSettings];
            v57 = v56 == 0;

            if (!v57)
            {
              v101.origin.x = v35;
              v101.origin.y = v37;
              v101.size.width = v39;
              v101.size.height = v41;
              v103.origin.x = v43;
              v103.origin.y = v45;
              v103.size.width = v47;
              v103.size.height = v49;
              if (!CGRectEqualToRect(v101, v103))
              {
                [(NSMutableDictionary *)v84->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:v83];
                v65 = [v17 deviceApplicationSceneEntity];
                v64 = [v65 sceneHandle];

                v66 = [v85 ui_safeAreaSettings];
                [v64 setPreferredSafeAreaSettings:v66];

                v67 = [v81 applicationContext];
                v68 = [v67 animationSettings];

                v69 = [v81 applicationContext];
                [v69 setAnimationSettings:0];

                v70 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v17 transitionRequest:v81];
                [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _startSceneUpdateTransaction:v70 forSceneIdentifier:v83];
                [v64 setPreferredSafeAreaSettings:0];
                v71 = [v81 applicationContext];
                [v71 setAnimationSettings:v68];

                v72 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v17 transitionRequest:v81];
                [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _startSceneUpdateTransaction:v72 forSceneIdentifier:v83];

                v18 = v72;
                goto LABEL_43;
              }
            }
          }

          v58 = [v85 interfaceOrientation];
          v59 = [v78 layoutState];
          v60 = [v17 uniqueIdentifier];
          v61 = [v59 interfaceOrientationForElementIdentifier:v60];

          if (!v19)
          {
            goto LABEL_41;
          }

          if (((v76 | v22) & 1) == 0)
          {
            v102.origin.x = v35;
            v102.origin.y = v37;
            v102.size.width = v39;
            v102.size.height = v41;
            v104.origin.x = v43;
            v104.origin.y = v45;
            v104.size.width = v47;
            v104.size.height = v49;
            v62 = CGRectEqualToRect(v102, v104);
            if (v58 == v61 && v62)
            {
              goto LABEL_44;
            }
          }

          if (v22 && SBSceneLiveResizeTransactionThrottlingEnabled() && [(NSMutableSet *)v84->_sceneIdentifiersWithSceneUpdateTransactionsInProgress containsObject:v83])
          {
            v64 = [(NSMutableDictionary *)v84->_pendingSceneUpdateTransactionsBySceneIdentifier objectForKey:v83];
            if (v64)
            {
              [(NSMutableDictionary *)v84->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:v83];
            }

            [(NSMutableDictionary *)v84->_pendingSceneUpdateTransactionsBySceneIdentifier setObject:v18 forKey:v83];
LABEL_43:
          }

          else
          {
LABEL_41:
            [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _startSceneUpdateTransaction:v18 forSceneIdentifier:v83];
          }

LABEL_44:

          continue;
        }
      }

      v13 = obj;
      v14 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (!v14)
      {
LABEL_47:

        goto LABEL_48;
      }
    }
  }

  [v81 modifyApplicationContext:&__block_literal_global_71];
  [v81 finalize];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)v84 _runSceneLayoutTransactionForTransitionRequest:v81 updateScenes:1];
LABEL_48:

  _Block_object_dispose(&v95, 8);
}

void __105__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureUpdate_fromGestureManager___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = a2;
  v12 = [v5 appLayout];
  v7 = [*(a1[5] + 352) objectForKey:v6];
  v8 = [v7 appLayout];
  v9 = [v7 floatingAppLayout];
  v10 = [v6 isEqual:a1[6]];

  if (v10)
  {
    v11 = 0;
  }

  else if ([v8 containsAnyItemFromAppLayout:v12])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v9 containsAnyItemFromAppLayout:v12];
  }

  *(*(a1[7] + 8) + 24) = v11;
  *a3 = *(*(a1[7] + 8) + 24);
}

void __105__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureUpdate_fromGestureManager___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntities];
  [v2 bs_each:&__block_literal_global_80];
}

- (BOOL)_safeAreasChangingFromSettings:(id)a3 toSettings:(id)a4
{
  v5 = a4;
  v6 = [a3 ui_safeAreaSettings];
  v7 = [v5 ui_safeAreaSettings];

  v8 = 0;
  if (v6 && v7)
  {
    v9 = [v6 safeAreaCornerInsetResolver];
    v10 = [v7 safeAreaCornerInsetResolver];
    v11 = [v6 safeAreaEdgeInsetResolver];
    v12 = [v7 safeAreaEdgeInsetResolver];
    v8 = !BSEqualObjects() || (BSEqualObjects() & 1) == 0;
  }

  return v8;
}

- (BOOL)_sceneUpdateTransactionIsForLiveResize:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [v3 applicationSceneEntity];

  v6 = [v5 sceneHandle];
  v7 = [v6 sceneIfExists];
  v8 = [v7 settings];
  v9 = SBSafeCast(v4, v8);

  LOBYTE(v6) = [v9 inLiveResize];
  return v6;
}

- (void)_startSceneUpdateTransaction:(id)a3 forSceneIdentifier:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 applicationSceneEntity];
  v9 = [v8 sceneHandle];
  v10 = [v9 sceneIfExists];

  if (v10)
  {
    v11 = [v10 settings];
    [v11 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v6 sceneSettings];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [v10 settings];
    v30 = objc_opt_class();
    v31 = v29;
    if (v30)
    {
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    v34 = [v6 sceneSettings];
    v35 = objc_opt_class();
    v36 = v34;
    if (v35)
    {
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    v39 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _safeAreasChangingFromSettings:v33 toSettings:v38];
    v40 = [v10 settings];
    v41 = [v40 interfaceOrientation];

    v42 = [v6 sceneSettings];
    v43 = [v42 interfaceOrientation];

    if ([(SBFluidSwitcherGestureWorkspaceTransaction *)self _sceneUpdateTransactionIsForLiveResize:v6])
    {
      v71.origin.x = v13;
      v71.origin.y = v15;
      v71.size.width = v17;
      v71.size.height = v19;
      v72.origin.x = v22;
      v72.origin.y = v24;
      v72.size.width = v26;
      v72.size.height = v28;
      if (!((v41 != v43) | !CGRectEqualToRect(v71, v72) | v39))
      {

        goto LABEL_29;
      }
    }
  }

  v62 = v10;
  [(NSMutableSet *)self->_sceneIdentifiersWithSceneUpdateTransactionsInProgress addObject:v7];
  v63 = v6;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:v6 withSchedulingPolicy:0];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v44 = [WeakRetained liveContentOverlays];
  v45 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v66;
    while (2)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v66 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v65 + 1) + 8 * i);
        if (![v49 type])
        {
          v50 = [v49 itemForLayoutRole:1];
          v51 = [v50 uniqueIdentifier];
          v52 = [v51 isEqual:v7];

          if (v52)
          {
            v53 = [WeakRetained liveContentOverlays];
            v54 = [v53 objectForKey:v49];

            if (objc_opt_respondsToSelector())
            {
              v55 = [v63 sceneSettings];
              [v55 frame];
              v57 = v56;
              v59 = v58;

              v60 = [v63 sceneSettings];
              v61 = [v60 interfaceOrientation];

              [v54 setContentReferenceSize:v61 interfaceOrientation:{v57, v59}];
            }

            goto LABEL_28;
          }
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  v10 = v62;
  v6 = v63;
LABEL_29:
}

- (void)handleTransitionRequestForGestureComplete:(id)a3 fromGestureManager:(id)a4
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v75 = a4;
  v76 = [v7 appLayout];
  v8 = [v7 unlockedEnvironmentMode];
  v72 = [v7 floatingConfiguration];
  [v7 floatingSwitcherVisible];
  [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeAllObjects];
  LODWORD(a4) = [(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted];
  v9 = SBLogSystemGestureAppSwitcher();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = SBStringForUnlockedEnvironmentMode(v8);
      v14 = SBStringForFloatingConfiguration(v72);
      v15 = BSSettingFlagDescription();
      *buf = 138544642;
      *&buf[4] = v12;
      v84 = 2050;
      v85 = self;
      v86 = 2114;
      v87 = v76;
      v88 = 2114;
      v89 = v13;
      v90 = 2114;
      v91 = v14;
      v92 = 2114;
      v93 = v15;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> skipping adding final child transaction, because current transaction interrupted: appLayout: %{public}@, unlockedEnvironmentMode: %{public}@, floatingConfiguration: %{public}@, floatingSwitcherVisible: %{public}@", buf, 0x3Eu);
    }

    goto LABEL_58;
  }

  if (v10)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = SBStringForUnlockedEnvironmentMode(v8);
    v19 = SBStringForFloatingConfiguration(v72);
    v20 = BSSettingFlagDescription();
    *buf = 138544642;
    *&buf[4] = v17;
    v84 = 2050;
    v85 = self;
    v86 = 2114;
    v87 = v76;
    v88 = 2114;
    v89 = v18;
    v90 = 2114;
    v91 = v19;
    v92 = 2114;
    v93 = v20;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Adding child transaction to activate appLayout: %{public}@, unlockedEnvironmentMode: %{public}@, floatingConfiguration: %{public}@, floatingSwitcherVisible: %{public}@", buf, 0x3Eu);
  }

  v9 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _workspaceTransitionRequestForSwitcherTransitionRequest:v7 fromGestureManager:v75 withEventLabel:@"FinalFluidSwitcherGestureAction"];
  [v9 finalize];
  v74 = [v75 switcherController];
  v69 = [v74 switcherCoordinator];
  [(SBUISwitcherAnimationController *)self->_animationController interruptWithReason:@"GestureCompleting"];
  animationController = self->_animationController;
  self->_animationController = 0;

  v22 = objc_opt_class();
  v23 = [v69 animationControllerForTransitionRequest:v9];
  v24 = SBSafeCast(v22, v23);
  v25 = self->_animationController;
  self->_animationController = v24;

  v26 = self->_animationController;
  if (!v26)
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)a2 handleTransitionRequestForGestureComplete:&self->_animationController fromGestureManager:buf];
    v26 = *buf;
  }

  [(SBUIAnimationController *)v26 addObserver:self];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:self->_animationController];
  v27 = [v9 applicationContext];
  v70 = [v27 layoutState];

  v28 = [v9 applicationContext];
  v71 = [v28 previousLayoutState];

  v29 = [v71 unlockedEnvironmentMode];
  v30 = [v70 unlockedEnvironmentMode];
  v31 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];
  if (v31 == 1)
  {
    if (v29 == 3 && v30 == 1)
    {
      [MEMORY[0x277CD9FF0] flush];
      kdebug_trace();
    }

    else
    {
      BSRunLoopPerformAfterCACommit();
    }
  }

  else if (v31 == 8)
  {
    if ((-[NSObject applicationContext](v9, "applicationContext"), v32 = objc_claimAutoreleasedReturnValue(), [v32 minimizingDisplayItem], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, !v34) || v29 == 3 && v30 == 1 || (objc_msgSend(v74, "_slideOverDisplayItem"), (v66 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SBFluidSwitcherGestureWorkspaceTransaction selectedAppLayout](self, "selectedAppLayout"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "containsItem:", v66), v67, v66, v68))
    {
      [MEMORY[0x277CD9FF0] flush];
    }
  }

  v35 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:v35];

  if (v8 == 2)
  {
    IsYes = 1;
LABEL_22:
    v38 = [v76 allItems];
    v37 = [v38 count] == 0;

    if ((IsYes | SBFloatingConfigurationIsStashed(v72) | v37))
    {
      v39 = 1;
    }

    else
    {
      v40 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
      LOBYTE(v37) = ([v76 isOrContainsAppLayout:v40] & 1) == 0 && -[SBFluidSwitcherGestureWorkspaceTransaction _gestureType](self, "_gestureType") != 8;

      v39 = !v37;
    }

    v73 = v39;
    goto LABEL_29;
  }

  IsYes = BSSettingFlagIsYes();
  if (v8 != 1)
  {
    goto LABEL_22;
  }

  SBFloatingConfigurationIsStashed(v72);
  v73 = 1;
  LOBYTE(v37) = 1;
LABEL_29:
  if (SBPeekConfigurationIsValid([v71 peekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(v70, "peekConfiguration")))
  {
    [v74 _dismissMedusaBanner];
  }

  v41 = self->_animationController;
  if (v41 == 0 || !v37)
  {
    goto LABEL_45;
  }

  v42 = [v74 contentViewController];
  v43 = objc_opt_class();
  v44 = v42;
  if (v43)
  {
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  v47 = [v9 applicationContext];
  v48 = [v46 shouldMorphToPIPForTransitionContext:v47];

  if (v48)
  {
    v49 = [[SBAutoPIPWorkspaceTransaction alloc] initWithTransitionRequest:v9];
    autoPIPWorkspaceTransaction = self->_autoPIPWorkspaceTransaction;
    self->_autoPIPWorkspaceTransaction = v49;

    v51 = [v9 transientOverlayContext];
    v52 = [v51 transientOverlay];
    v53 = [v52 viewController];
    v54 = v53;
    if (v53)
    {
      v55 = self->_autoPIPWorkspaceTransaction;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_2;
      v81[3] = &unk_2783A9398;
      v82 = v53;
      [(SBAutoPIPWorkspaceTransaction *)v55 setCompletionBlock:v81];
    }

    [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:self->_autoPIPWorkspaceTransaction];
  }

  if (self->_autoPIPWorkspaceTransaction || [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:v9 reason:1])
  {
    [(SBUISwitcherAnimationController *)self->_animationController _setInterruptible:0];
    v56 = 0;
  }

  else
  {
LABEL_45:
    v56 = 1;
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _acquireBackgroundingScenesDeactivationAssertionForTransitionRequest:v9];
  v57 = [(NSMapTable *)self->_originalLayoutStatesBySwitcherController objectForKey:v74];
  v58 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:v74];
  if ([v58 unlockedEnvironmentMode] == 3 && !((v41 == 0) | (objc_msgSend(v76, "type") != 0) | v73 & 1))
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self _runSceneLayoutTransactionForTransitionRequest:v9 updateScenes:0];
    ++self->_numberOfAppLayoutsTraveledWithArcSwipe;
    v59 = [v57 appLayout];
    v60 = [v76 isEqual:v59];

    if (v60)
    {
      self->_numberOfAppLayoutsTraveledWithArcSwipe = 0;
    }

    objc_initWeak(buf, self);
    numberOfAppLayoutsTraveledWithArcSwipe = self->_numberOfAppLayoutsTraveledWithArcSwipe;
    if (numberOfAppLayoutsTraveledWithArcSwipe <= 1)
    {
      numberOfAppLayoutsTraveledWithArcSwipe = 1;
    }

    if ((numberOfAppLayoutsTraveledWithArcSwipe - 1) * 0.5 + 0.1 <= *&SBFluidSwitcherMaximumActivationDelayForArcSwipes)
    {
      v62 = (numberOfAppLayoutsTraveledWithArcSwipe - 1) * 0.5 + 0.1;
    }

    else
    {
      v62 = *&SBFluidSwitcherMaximumActivationDelayForArcSwipes;
    }

    v63 = MEMORY[0x277CBEBB8];
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_3;
    v77[3] = &unk_2783B0328;
    objc_copyWeak(&v79, buf);
    v78 = v9;
    v80 = v56;
    v64 = [v63 scheduledTimerWithTimeInterval:0 repeats:v77 block:v62];
    activateScenesTimer = self->_activateScenesTimer;
    self->_activateScenesTimer = v64;

    objc_destroyWeak(&v79);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self _runSceneLayoutTransactionForTransitionRequest:v9 updateScenes:v56];
  }

LABEL_58:
}

uint64_t __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) handlePictureInPictureDidBegin];
  }

  return result;
}

void __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_4;
    v3[3] = &unk_2783ACA48;
    v4 = *(a1 + 32);
    SBLayoutRoleEnumerateValidRoles(v3);
    [WeakRetained _runSceneLayoutTransactionForTransitionRequest:*(a1 + 32) updateScenes:*(a1 + 48)];
  }
}

void __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) applicationContext];
  v8 = [v4 entityForLayoutRole:a2];

  v5 = v8;
  if (!v8)
  {
    v6 = [*(a1 + 32) applicationContext];
    v7 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    [v6 setEntity:v7 forLayoutRole:a2];

    v5 = 0;
  }
}

- (void)_updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:(id)a3
{
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__SBFluidSwitcherGestureWorkspaceTransaction__updateMainDisplayIfNecessaryForWorkspaceTransitionRequests___block_invoke;
  v22[3] = &unk_2783B0350;
  v22[4] = self;
  v4 = [a3 bs_firstObjectPassingTest:v22];
  if (v4)
  {
    v5 = [(SBWorkspaceTransaction *)self windowScene];
    v6 = [v5 homeScreenController];
    v7 = [v4 applicationContext];
    v8 = [v7 layoutState];

    v9 = [v8 appLayout];
    v10 = [v8 unlockedEnvironmentMode];
    v11 = [v8 floatingConfiguration];
    [v8 isFloatingSwitcherVisible];
    if (v10 == 2)
    {
      v12 = 1;
    }

    else
    {
      IsYes = BSSettingFlagIsYes();
      if (v10 == 1)
      {
        SBFloatingConfigurationIsStashed(v11);
        goto LABEL_18;
      }

      v12 = IsYes;
    }

    v14 = [v9 allItems];
    v15 = [v14 count];

    IsStashed = SBFloatingConfigurationIsStashed(v11);
    if (v15)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0 && !IsStashed)
    {
      v18 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
      if ([v9 isOrContainsAppLayout:v18])
      {
LABEL_26:

        goto LABEL_27;
      }

      v19 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];

      if (v19 == 8)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v15)
    {
      if ((v17 & 1) == 0)
      {
LABEL_27:

        goto LABEL_28;
      }

LABEL_17:
      v20 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v21 = [v8 interfaceOrientation];
    [SBApp noteInterfaceOrientationChanged:v21 logMessage:@"SBFluidSwitcherGestureWorkspaceTransaction running animation to home screen"];
    [v6 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
    v20 = 1;
LABEL_19:
    v18 = [v6 iconManager];
    if ([v18 isFolderPageManagementUIVisible])
    {
      [v18 dismissFolderPageManagementUI];
    }

    else if ([v18 isShowingModalInteraction])
    {
      if (v20)
      {
        [v18 popModalInteraction];
      }

      else
      {
        [v18 dismissModalInteractions];
      }
    }

    else
    {
      [v18 setEditing:0];
    }

    goto LABEL_26;
  }

LABEL_28:
}

uint64_t __106__SBFluidSwitcherGestureWorkspaceTransaction__updateMainDisplayIfNecessaryForWorkspaceTransitionRequests___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _windowSceneForWorkspaceTransitionRequest:a2];
  if ([v2 isMainDisplayWindowScene])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isContinuityDisplayWindowScene];
  }

  return v3;
}

- (void)_acquireBackgroundingScenesDeactivationAssertionForTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:v4];
  v6 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:v5];
  v7 = [v6 elements];
  v8 = [v7 mutableCopy];

  v9 = [v4 applicationContext];

  v10 = [v9 layoutState];
  v11 = [v10 elements];
  [v8 minusSet:v11];

  if ([v8 count])
  {
    v12 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    [v12 relinquish];

    v13 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __115__SBFluidSwitcherGestureWorkspaceTransaction__acquireBackgroundingScenesDeactivationAssertionForTransitionRequest___block_invoke;
    v14[3] = &unk_2783ADD00;
    v15 = v8;
    [v13 acquireWithPredicate:v14 transitionContext:0];
  }
}

uint64_t __115__SBFluidSwitcherGestureWorkspaceTransaction__acquireBackgroundingScenesDeactivationAssertionForTransitionRequest___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) workspaceEntity];
        v9 = [v8 applicationSceneEntity];
        v10 = [v9 sceneHandle];
        v11 = [v10 sceneIfExists];

        v12 = [v11 identifier];
        v13 = [v3 identifier];
        LOBYTE(v10) = [v12 isEqual:v13];

        if (v10)
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)_runSceneLayoutTransactionForTransitionRequest:(id)a3 updateScenes:(BOOL)a4
{
  v4 = a4;
  v88 = *MEMORY[0x277D85DE8];
  v7 = a3;
  layoutTransaction = self->_layoutTransaction;
  if (layoutTransaction)
  {
    [(SBWorkspaceTransaction *)layoutTransaction interruptForTransitionRequest:v7];
    v9 = self->_layoutTransaction;
    self->_layoutTransaction = 0;
  }

  if ([(NSMutableSet *)self->_ancillaryLayoutTransactions count])
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v10 = self->_ancillaryLayoutTransactions;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v80;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v80 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v79 + 1) + 8 * i) interruptForTransitionRequest:v7];
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)self->_ancillaryLayoutTransactions removeAllObjects];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _failRunningLayoutStateTransition];
  v15 = !v4;
  v16 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v17 = [v16 switcherCoordinator];

  [v17 setLiveContentOverlayUpdatesSuspended:v15];
  if (v15)
  {
    objc_storeStrong(&self->super.super.super._transitionRequest, a3);
    if (!self->_hasActiveLayoutStateTransitionCoordinatorTransition)
    {
      self->_hasActiveLayoutStateTransitionCoordinatorTransition = 1;
      v43 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
      [v43 beginTransitionForWorkspaceTransaction:self];
    }

    v44 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:v7];
    v45 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v46 = [v45 setByAddingObjectsFromSet:v44];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v33 = v46;
    v47 = [v33 countByEnumeratingWithState:&v59 objects:v83 count:16];
    if (!v47)
    {
      v42 = v33;
      goto LABEL_49;
    }

    v48 = v47;
    v56 = v44;
    v58 = v17;
    v49 = *v60;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(v33);
        }

        v51 = *(*(&v59 + 1) + 8 * j);
        v52 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:v51];
        v53 = [v51 applicationContext];
        v54 = [v53 layoutState];

        [(NSMapTable *)self->_activeLayoutStatesBySwitcherController setObject:v54 forKey:v52];
      }

      v48 = [v33 countByEnumeratingWithState:&v59 objects:v83 count:16];
    }

    while (v48);
    v42 = v33;
    v17 = v58;
  }

  else
  {
    v57 = v17;
    v18 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:v7 delegate:self];
    v19 = self->_layoutTransaction;
    self->_layoutTransaction = v18;

    [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction addObserver:self];
    [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction setOptions:6];
    v20 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:v7];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v76;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v76 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:*(*(&v75 + 1) + 8 * k) delegate:self];
          [(SBSceneLayoutWorkspaceTransaction *)v25 addObserver:self];
          [(SBSceneLayoutWorkspaceTransaction *)v25 setOptions:6];
          [(NSMutableSet *)self->_ancillaryLayoutTransactions addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v75 objects:v86 count:16];
      }

      while (v22);
    }

    [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:self->_layoutTransaction];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v26 = self->_ancillaryLayoutTransactions;
    v27 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v72;
      do
      {
        for (m = 0; m != v28; ++m)
        {
          if (*v72 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:*(*(&v71 + 1) + 8 * m)];
        }

        v28 = [(NSMutableSet *)v26 countByEnumeratingWithState:&v71 objects:v85 count:16];
      }

      while (v28);
    }

    v55 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController copy];
    v31 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v56 = v20;
    v32 = [v31 setByAddingObjectsFromSet:v20];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v33 = v32;
    v34 = [v33 countByEnumeratingWithState:&v67 objects:v84 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v68;
      do
      {
        for (n = 0; n != v35; ++n)
        {
          if (*v68 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v67 + 1) + 8 * n);
          v39 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:v38];
          v40 = [v38 applicationContext];
          v41 = [v40 layoutState];

          [(NSMapTable *)self->_activeLayoutStatesBySwitcherController setObject:v41 forKey:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v67 objects:v84 count:16];
      }

      while (v35);
    }

    if ([v33 count] < 2)
    {
      v44 = v56;
      v17 = v57;
      v42 = v55;
      goto LABEL_49;
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __106__SBFluidSwitcherGestureWorkspaceTransaction__runSceneLayoutTransactionForTransitionRequest_updateScenes___block_invoke;
    v63[3] = &unk_2783B03A0;
    v17 = v57;
    v64 = v57;
    v42 = v55;
    v65 = v42;
    v66 = self;
    [v64 enumerateSwitcherControllersWithBlock:v63];
  }

  v44 = v56;
LABEL_49:
}

void __106__SBFluidSwitcherGestureWorkspaceTransaction__runSceneLayoutTransactionForTransitionRequest_updateScenes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __106__SBFluidSwitcherGestureWorkspaceTransaction__runSceneLayoutTransactionForTransitionRequest_updateScenes___block_invoke_2;
  v8[3] = &unk_2783B0378;
  v9 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v3;
  [v4 enumerateSwitcherControllersWithBlock:v8];
}

void __106__SBFluidSwitcherGestureWorkspaceTransaction__runSceneLayoutTransactionForTransitionRequest_updateScenes___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32) != v3)
  {
    v4 = [*(a1 + 40) objectForKey:?];
    v5 = [*(*(a1 + 48) + 352) objectForKey:v3];
    v21 = v4;
    v6 = [v4 appLayout];
    v20 = v5;
    v7 = [v5 appLayout];
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v6 allItems];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          if ([v7 containsItem:v14])
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v15 = *(a1 + 32);
      v16 = [v3 layoutState];
      v17 = [v6 appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(v16, "displayOrdinal")}];
      v18 = +[SBApplicationController sharedInstance];
      v19 = [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v8 fromSwitcherController:v15 fromAppLayout:v6 toAppLayout:v17 toSwitcherController:v3 withApplicationController:v18];

      [*(a1 + 56) prepareForCoordinatedLayoutStateTransitionWithContext:v19];
      [*(a1 + 56) cleanUpAfterCoordinatedLayoutStateTransitionWithContext:v19];
    }
  }
}

- (void)_failRunningLayoutStateTransition
{
  v6 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if (self->_hasActiveLayoutStateTransitionCoordinatorTransition && [v6 isTransitioning])
  {
    self->_hasActiveLayoutStateTransitionCoordinatorTransition = 0;
    [v6 willEndTransition];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.springboard.fluidSwitcherGestureTransaction" code:0 userInfo:0];
    [v6 endTransitionWithError:v3];
  }

  v4 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  v5 = [v4 switcherCoordinator];
  [v5 setLiveContentOverlayUpdatesSuspended:0];
}

- (void)_addChildWorkspaceTransaction:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(SBFluidSwitcherGestureWorkspaceTransaction *)a2 _addChildWorkspaceTransaction:v5];
      }
    }
  }

  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];
  if (v6)
  {
    v7 = [v5 transitionRequest];
    [v6 interruptForTransitionRequest:v7];
  }

  v8 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)v5 _addChildWorkspaceTransaction:v8];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setFinalRootTransaction:v5];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:v5];
}

- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)a3 fromGestureManager:(id)a4 withEventLabel:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 appLayout];
  v12 = [v10 switcherController];

  v33 = [v12 windowScene];
  v13 = [v33 _fbsDisplayConfiguration];
  v14 = [(SBWorkspaceTransaction *)self transitionRequest];
  v15 = [v14 workspace];

  v32 = v13;
  v16 = [v15 createRequestWithOptions:0 displayConfiguration:v13];
  [v12 configureRequest:v16 forSwitcherTransitionRequest:v8 withEventLabel:v9];

  v17 = [(SBWorkspaceTransaction *)self transitionRequest];
  [v16 setSource:{objc_msgSend(v17, "source")}];

  v35 = [(NSMapTable *)self->_originalLayoutStatesBySwitcherController objectForKey:v12];
  v18 = [v8 unlockedEnvironmentMode];
  v34 = v11;
  if (v18 == 1)
  {
    v19 = 1;
  }

  else
  {
    v20 = +[SBAppLayout homeScreenAppLayout];
    v19 = [v11 isEqual:v20];
  }

  v21 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  v22 = [(SBWorkspaceTransaction *)self transitionRequest];
  v23 = [v22 transientOverlayContext];

  if (v18 == 2 || v19)
  {
    if (v23)
    {
      v24 = [v23 transientOverlay];

      if (v24)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __136__SBFluidSwitcherGestureWorkspaceTransaction__workspaceTransitionRequestForSwitcherTransitionRequest_fromGestureManager_withEventLabel___block_invoke;
        v38[3] = &unk_2783AC2E0;
        v39 = v23;
        [v16 modifyTransientOverlayContext:v38];
        v25 = v39;
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([v21 type] == 2 && ((v19 & 1) != 0 || objc_msgSend(v35, "unlockedEnvironmentMode") != 2))
    {
      v26 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _createWorkspaceTransientOverlayForAppLayout:v21];
      v25 = v26;
      if (v26)
      {
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __136__SBFluidSwitcherGestureWorkspaceTransaction__workspaceTransitionRequestForSwitcherTransitionRequest_fromGestureManager_withEventLabel___block_invoke_2;
        v36[3] = &unk_2783AC2E0;
        v25 = v26;
        v37 = v25;
        [v16 modifyTransientOverlayContext:v36];
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v27 = [v16 applicationContext];
  [v27 setInLiveResize:{-[SBFluidSwitcherGestureWorkspaceTransaction isLiveResize](self, "isLiveResize")}];
  [v27 setPreventSwitcherRecencyModelUpdates:{objc_msgSend(v8, "preventSwitcherRecencyModelUpdates")}];
  v28 = [v16 applicationContext];
  v29 = [v28 applicationSceneEntities];
  [v29 bs_each:&__block_literal_global_122];

  v30 = [v16 applicationContext];
  [v30 setDelegate:self];

  return v16;
}

void __136__SBFluidSwitcherGestureWorkspaceTransaction__workspaceTransitionRequestForSwitcherTransitionRequest_fromGestureManager_withEventLabel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = a2;
  v3 = [v2 transientOverlay];
  v4 = [v3 copy];
  [v5 setTransientOverlay:v4];

  [v5 setTransitionType:1];
}

void __136__SBFluidSwitcherGestureWorkspaceTransaction__workspaceTransitionRequestForSwitcherTransitionRequest_fromGestureManager_withEventLabel___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setTransientOverlay:v2];
  [v3 setTransitionType:1];
}

- (id)_copiedTransitionRequestFromTransitionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 copyMainWorkspaceTransitionRequest];
  v17 = 0;
  v6 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:v4 foundEntity:&v17];
  v7 = v17;
  v8 = v7;
  if (v6 && v7 != 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SBFluidSwitcherGestureWorkspaceTransaction__copiedTransitionRequestFromTransitionRequest___block_invoke;
    v15[3] = &unk_2783A98C8;
    v16 = v7;
    [v5 modifyApplicationContext:v15];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__SBFluidSwitcherGestureWorkspaceTransaction__copiedTransitionRequestFromTransitionRequest___block_invoke_2;
  v12[3] = &unk_2783A96A0;
  v13 = v4;
  v14 = self;
  v10 = v4;
  [v5 modifyApplicationContext:v12];

  return v5;
}

void __92__SBFluidSwitcherGestureWorkspaceTransaction__copiedTransitionRequestFromTransitionRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [v3 entities];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v37 + 1) + 8 * i) setFlag:1 forActivationSetting:9];
      }

      v6 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v6);
  }

  if ([v3 waitsForSceneUpdates])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [*(a1 + 32) applicationContext];
    v10 = [v9 entities];

    v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v32 = a1;
      v13 = *v34;
      v14 = 1;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v33 + 1) + 8 * j) applicationSceneEntity];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 application];
            v19 = [v18 processState];
            v20 = [v19 isRunning];

            v14 &= v20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v12);
      v21 = v14 ^ 1;
      a1 = v32;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  [v3 setWaitsForSceneUpdates:v21 & 1];
  [v3 setDelegate:*(a1 + 40)];
  v22 = [*(a1 + 32) applicationContext];
  [v3 setRequestedFloatingConfiguration:{objc_msgSend(v22, "requestedFloatingConfiguration")}];

  v23 = [*(a1 + 32) applicationContext];
  [v3 setRequestedSpaceConfiguration:{objc_msgSend(v23, "requestedSpaceConfiguration")}];

  v24 = [*(a1 + 32) applicationContext];
  v25 = [v24 requestedEntityIdentifierToLayoutAttributes];
  [v3 setRequestedEntityIdentifierToLayoutAttributes:v25];

  v26 = [*(a1 + 32) applicationContext];
  [v3 setFencesAnimations:{objc_msgSend(v26, "fencesAnimations")}];

  v27 = [*(a1 + 32) applicationContext];
  [v3 setSettlesMultiAppFullScreenSpacesImmediately:{objc_msgSend(v27, "settlesMultiAppFullScreenSpacesImmediately")}];

  v28 = [*(a1 + 32) applicationContext];
  v29 = [v28 minimizingDisplayItem];
  [v3 setMinimizingDisplayItem:v29];

  v30 = [*(a1 + 32) applicationContext];
  v31 = [v30 itemsCrossingToOtherDisplay];
  [v3 setItemsCrossingToOtherDisplay:v31];
}

- (id)_createWorkspaceTransientOverlayForAppLayout:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v6 = [WeakRetained _createWorkspaceTransientOverlayForAppLayout:v4];

  return v6;
}

- (id)_transitionRequestForApplicationTransitionContext:(id)a3 eventLabel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBWorkspaceTransaction *)self windowScene];
  v9 = [v8 _fbsDisplayConfiguration];
  v10 = [(SBWorkspaceTransaction *)self transitionRequest];
  v11 = [v10 workspace];

  v12 = [v11 createRequestWithOptions:0 displayConfiguration:v9];
  v13 = [(SBWorkspaceTransaction *)self transitionRequest];
  [v12 setSource:{objc_msgSend(v13, "source")}];

  [v12 setApplicationContext:v7];
  if (v6)
  {
    [v12 setEventLabel:v6];
  }

  return v12;
}

- (void)_addWaitForSceneLayoutTransitionTransaction:(id)a3 forLeafAnimationControllers:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __118__SBFluidSwitcherGestureWorkspaceTransaction__addWaitForSceneLayoutTransitionTransaction_forLeafAnimationControllers___block_invoke;
  v8[3] = &unk_2783B03C8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 _enumerateCoordinatingAnimationsWithBlock:v8];
}

- (void)_updateDigitizerSurfaceDimensions
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v4 = [v3 _activeEventOfType:0];

  if ([v4 _hidEvent])
  {
    if (IOHIDEventGetType() != 11)
    {
      IOHIDEventGetChildren();
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v15 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (!v6)
      {
LABEL_11:

LABEL_14:
        goto LABEL_15;
      }

      v7 = v6;
      v8 = *v13;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (IOHIDEventGetType() == 17)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      if (!v10)
      {
        goto LABEL_15;
      }
    }

    v5 = BKSHIDEventGetDigitizerAttributes();
    [v5 digitizerSurfaceHeight];
    self->_digitizerSurfaceHeightForLastGestureEvent = v11;
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_beginDeferringCompletionForReason:(id)a3
{
  v5 = a3;
  v4 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA940]);
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setCompletionDeferralReasons:v4];
  }

  [v4 addObject:v5];
}

- (void)_endDeferringCompletionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  [v5 removeObject:v4];

  if (![v5 count])
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setCompletionDeferralReasons:0];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _evaluateCompletion];
}

- (BOOL)_isDeferringCompletionForAnyReason
{
  v2 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isDeferringCompletionForReason:(id)a3
{
  v4 = a3;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 countForObject:v4] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_windowSceneForWorkspaceTransitionRequest:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v4 displayIdentity];

  v7 = [v5 windowSceneForDisplayIdentity:v6];

  return v7;
}

- (id)_switcherControllerForWorkspaceTransitionRequest:(id)a3
{
  v3 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _windowSceneForWorkspaceTransitionRequest:a3];
  v4 = [v3 switcherController];

  return v4;
}

- (void)_updatePPTsForGestureTransactionBegan
{
  if (__PPTIsRunningSwitcherGestureTest())
  {
    v3 = +[SBApplicationTestingManager sharedInstance];
    v4 = [v3 currentTestName];

    v5 = MEMORY[0x277D76620];
    [*MEMORY[0x277D76620] startedSubTest:@"delay" forTest:v4];
    v6 = *v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __83__SBFluidSwitcherGestureWorkspaceTransaction__updatePPTsForGestureTransactionBegan__block_invoke;
    v8[3] = &unk_2783A92D8;
    v9 = v4;
    v10 = self;
    v7 = v4;
    [v6 installCACommitCompletionBlock:v8];
  }
}

void __83__SBFluidSwitcherGestureWorkspaceTransaction__updatePPTsForGestureTransactionBegan__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  [*MEMORY[0x277D76620] finishedSubTest:@"delay" forTest:*(a1 + 32)];
  [*v2 startedSubTest:@"overall" forTest:*(a1 + 32)];
  [*v2 startedSubTest:@"gesture" forTest:*(a1 + 32)];
  *(*(a1 + 40) + 234) = 1;
  v5 = [*(a1 + 40) switcherViewController];
  v3 = [v5 layoutContext];
  v4 = [v3 activeGesture];

  if (!v4 || [v4 state] == 3)
  {
    [*(a1 + 40) _updatePPTsForGestureEnded];
  }
}

- (void)_updatePPTsForGestureEnded
{
  if (__PPTIsRunningSwitcherGestureTest() && self->_hasCompletedFirstCACommitSinceTransactionBeganForPPT)
  {
    v3 = +[SBApplicationTestingManager sharedInstance];
    v5 = [v3 currentTestName];

    v4 = MEMORY[0x277D76620];
    [*MEMORY[0x277D76620] finishedSubTest:@"gesture" forTest:v5];
    [*v4 startedSubTest:@"animation" forTest:v5];
  }
}

- (void)_updatePPTsForAnimationEndedWithFinalLayoutState:(id)a3
{
  v13 = a3;
  if (__PPTIsRunningSwitcherGestureTest())
  {
    v3 = +[SBApplicationTestingManager sharedInstance];
    v4 = [v3 currentTestName];

    v5 = __PPTIsRunningSwitcherGestureToAutoPIPTest();
    v6 = MEMORY[0x277D76620];
    if (!v5)
    {
      [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:v4];
      [*v6 finishedSubTest:@"overall" forTest:v4];
    }

    v7 = __PPTExpectedFinalUnlockedEnvironmentModeForCurrentTest();
    if (v7 == [v13 unlockedEnvironmentMode])
    {
      if (!__PPTIsRunningSwitcherGestureToAutoPIPTest())
      {
        [*v6 finishedTest:v4];
      }
    }

    else
    {
      v8 = *v6;
      v9 = MEMORY[0x277CCACA8];
      v10 = SBStringForUnlockedEnvironmentMode(v7);
      v11 = SBStringForUnlockedEnvironmentMode([v13 unlockedEnvironmentMode]);
      v12 = [v9 stringWithFormat:@"%@ - expected end state is %@, but ended up in %@ instead", v4, v10, v11];
      [v8 failedTest:v4 withFailure:v12];
    }
  }
}

- (SBSwitcherController)switcherController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);

  return WeakRetained;
}

- (SBFluidSwitcherViewController)switcherViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);

  return WeakRetained;
}

- (SBFluidSwitcherGestureWorkspaceTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)_gestureType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)systemGestureStateChanged:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v5 = a1;
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 hasStarted];
  v7 = [v5 isComplete];
  LODWORD(v5) = [v5 isFinishedWorking];
  v8 = SBSystemGestureRecognizerStateDescription([a2 state]);
  v9[0] = 67109890;
  v9[1] = v6;
  v10 = 1024;
  v11 = v7;
  v12 = 1024;
  v13 = v5;
  v14 = 2114;
  v15 = v8;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "SBFluidSwitcherGestureRecognizer state changed while we aren't running. The transaction is started:%{BOOL}u completed:%{BOOL}u finishedWorking:%{BOOL}u and the gesture state is %{public}@", v9, 0x1Eu);
}

- (void)handleTransitionRequestForGestureComplete:(void *)a3 fromGestureManager:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherGestureWorkspaceTransaction.m" lineNumber:1056 description:@"Got a nil animationController back from SBSwitcherController!"];

  *a4 = *a3;
}

- (void)_addChildWorkspaceTransaction:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBFluidSwitcherGestureWorkspaceTransaction.m" lineNumber:1352 description:{@"transaction of unexpected type, %@", a3}];
}

- (void)_addChildWorkspaceTransaction:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Adding child transaction: %@", &v2, 0xCu);
}

@end