@interface SBFluidSwitcherGestureWorkspaceTransaction
- (BOOL)_isDeferringCompletionForAnyReason;
- (BOOL)_isDeferringCompletionForReason:(id)reason;
- (BOOL)_safeAreasChangingFromSettings:(id)settings toSettings:(id)toSettings;
- (BOOL)_sceneUpdateTransactionIsForLiveResize:(id)resize;
- (BOOL)_shouldComplete;
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (BOOL)transaction:(id)transaction shouldKeepSceneForeground:(id)foreground withReason:(id *)reason;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (SBFluidSwitcherGestureWorkspaceTransaction)initWithTransitionRequest:(id)request switcherController:(id)controller delegate:(id)delegate;
- (SBFluidSwitcherGestureWorkspaceTransactionDelegate)delegate;
- (SBFluidSwitcherViewController)switcherViewController;
- (SBSwitcherController)switcherController;
- (id)_copiedTransitionRequestFromTransitionRequest:(id)request;
- (id)_createWorkspaceTransientOverlayForAppLayout:(id)layout;
- (id)_currentGestureEventForGesture:(id)gesture;
- (id)_switcherControllerForWorkspaceTransitionRequest:(id)request;
- (id)_transitionRequestForApplicationTransitionContext:(id)context eventLabel:(id)label;
- (id)_windowSceneForWorkspaceTransitionRequest:(id)request;
- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)request fromGestureManager:(id)manager withEventLabel:(id)label;
- (id)createSceneEntityForHandle:(id)handle;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (id)previousLayoutStateForApplicationTransitionContext:(id)context;
- (int64_t)_gestureType;
- (void)_acquireBackgroundingScenesDeactivationAssertionForTransitionRequest:(id)request;
- (void)_addChildWorkspaceTransaction:(id)transaction;
- (void)_addWaitForSceneLayoutTransitionTransaction:(id)transaction forLeafAnimationControllers:(id)controllers;
- (void)_begin;
- (void)_beginDeferringCompletionForReason:(id)reason;
- (void)_beginWithGesture:(id)gesture;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)reason;
- (void)_endDeferringCompletionForReason:(id)reason;
- (void)_failRunningLayoutStateTransition;
- (void)_finishWithCompletionType:(int64_t)type;
- (void)_finishWithGesture:(id)gesture;
- (void)_runSceneLayoutTransactionForTransitionRequest:(id)request updateScenes:(BOOL)scenes;
- (void)_startSceneUpdateTransaction:(id)transaction forSceneIdentifier:(id)identifier;
- (void)_switcherGestureDidUpdate:(id)update;
- (void)_updateDigitizerSurfaceDimensions;
- (void)_updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:(id)requests;
- (void)_updatePPTsForAnimationEndedWithFinalLayoutState:(id)state;
- (void)_updatePPTsForGestureEnded;
- (void)_updatePPTsForGestureTransactionBegan;
- (void)_updateWithGesture:(id)gesture;
- (void)_willBeginWithGesture:(id)gesture;
- (void)_willInterruptWithReason:(id)reason;
- (void)dealloc;
- (void)didEndAllAnimations;
- (void)handleTransitionRequestForGestureComplete:(id)complete fromGestureManager:(id)manager;
- (void)handleTransitionRequestForGestureUpdate:(id)update fromGestureManager:(id)manager;
- (void)interceptTransitionRequest:(id)request;
- (void)setSelectedAppLayout:(id)layout;
- (void)systemGestureStateChanged:(id)changed;
- (void)transaction:(id)transaction didEndLayoutTransitionWithContinuation:(id)continuation;
- (void)transaction:(id)transaction performTransitionWithCompletion:(id)completion;
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBFluidSwitcherGestureWorkspaceTransaction

- (SBFluidSwitcherGestureWorkspaceTransaction)initWithTransitionRequest:(id)request switcherController:(id)controller delegate:(id)delegate
{
  v49 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  delegateCopy = delegate;
  v47.receiver = self;
  v47.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  v10 = [(SBSystemGestureWorkspaceTransaction *)&v47 initWithTransitionRequest:request];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_switcherController, controllerCopy);
    contentViewController = [controllerCopy contentViewController];
    objc_storeWeak(&v11->_switcherViewController, contentViewController);

    v42 = delegateCopy;
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v13 = +[SBSceneManagerCoordinator sharedInstance];
    sceneDeactivationManager = [v13 sceneDeactivationManager];
    v15 = [sceneDeactivationManager newAssertionWithReason:0];
    backgroundingScenesDeactivationAssertion = v11->_backgroundingScenesDeactivationAssertion;
    v11->_backgroundingScenesDeactivationAssertion = v15;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    originalLayoutStatesBySwitcherController = v11->_originalLayoutStatesBySwitcherController;
    v11->_originalLayoutStatesBySwitcherController = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activeLayoutStatesBySwitcherController = v11->_activeLayoutStatesBySwitcherController;
    v11->_activeLayoutStatesBySwitcherController = weakToStrongObjectsMapTable2;

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];

    v23 = [connectedWindowScenes countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(connectedWindowScenes);
          }

          switcherController = [*(*(&v43 + 1) + 8 * v26) switcherController];
          layoutState = [switcherController layoutState];
          [(NSMapTable *)v11->_originalLayoutStatesBySwitcherController setObject:layoutState forKey:switcherController];
          [(NSMapTable *)v11->_activeLayoutStatesBySwitcherController setObject:layoutState forKey:switcherController];

          ++v26;
        }

        while (v24 != v26);
        v24 = [connectedWindowScenes countByEnumeratingWithState:&v43 objects:v48 count:16];
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
    animationSettings = [v33 animationSettings];

    arcSwipeSettings = [animationSettings arcSwipeSettings];
    [arcSwipeSettings settlingDuration];
    *&SBFluidSwitcherMaximumActivationDelayForArcSwipes = v36 * 0.9;

    v11->_shouldCancelGestureUponInterruption = 1;
    v37 = objc_opt_new();
    sceneIdentifiersWithSceneUpdateTransactionsInProgress = v11->_sceneIdentifiersWithSceneUpdateTransactionsInProgress;
    v11->_sceneIdentifiersWithSceneUpdateTransactionsInProgress = v37;

    v39 = objc_opt_new();
    pendingSceneUpdateTransactionsBySceneIdentifier = v11->_pendingSceneUpdateTransactionsBySceneIdentifier;
    v11->_pendingSceneUpdateTransactionsBySceneIdentifier = v39;

    delegateCopy = v42;
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

- (id)_currentGestureEventForGesture:(id)gesture
{
  gestureCopy = gesture;
  _gestureType = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];
  selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  state = [gestureCopy state];

  v9 = SBGestureModifierPhaseForGestureState(state);
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  view = [switcherViewController view];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = gestureRecognizer;
    recognizedTouchType = [v13 recognizedTouchType];
    v15 = [(SBGestureSwitcherModifierEvent *)[SBScrunchGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:selectedAppLayout gestureType:_gestureType phase:v9];
    [v13 velocityInView:view];
    [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
    [v13 initialCentroid];
    v17 = v16;
    v19 = v18;
    [v13 centroid];
    v21 = v20;
    v23 = v22;
    [v13 absoluteScale];
    [(SBScrunchGestureSwitcherModifierEvent *)v15 setAbsoluteScale:?];
    [v13 locationInView:view];
    [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];
    [v13 translationInView:view];
    v25 = v24;
    v27 = v26;
    [v13 translationWithoutConsideringScaleInView:view];
    v29 = v28;
    v31 = v30;
    if (recognizedTouchType == 1)
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
      [view bounds];
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
      v41 = gestureRecognizer;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = -[SBGestureSwitcherModifierEvent initWithGestureID:selectedAppLayout:gestureType:phase:modifierFlags:]([SBItemResizeGestureSwitcherModifierEvent alloc], "initWithGestureID:selectedAppLayout:gestureType:phase:modifierFlags:", self->_gestureID, selectedAppLayout, _gestureType, v9, [v41 modifierFlags]);
        [(SBScrunchGestureSwitcherModifierEvent *)v15 setSelectedLayoutRole:[(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedLayoutRole]];
        [(SBScrunchGestureSwitcherModifierEvent *)v15 setSelectedEdge:[(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedEdge]];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [(SBGestureSwitcherModifierEvent *)[SBWindowDragSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:selectedAppLayout gestureType:_gestureType phase:v9];
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
          v15 = [[SBGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:selectedAppLayout gestureType:_gestureType phase:v9];
        }
      }

      [v41 velocityInView:view];
      [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
      [v41 translationInView:view];
      [(SBGestureSwitcherModifierEvent *)v15 setTranslationInContainerView:?];
      [v41 _hysteresis];
      [(SBGestureSwitcherModifierEvent *)v15 setHysteresis:?];
      [v41 locationInView:view];
      [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];

      recognizedTouchType = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = gestureRecognizer;
        v15 = [(SBGestureSwitcherModifierEvent *)[SBIndirectPanGestureSwitcherModifierEvent alloc] initWithGestureID:self->_gestureID selectedAppLayout:selectedAppLayout gestureType:_gestureType phase:v9];
        -[SBGestureSwitcherModifierEvent setMouseEvent:](v15, "setMouseEvent:", [v42 currentInputType] == 1);
        [v42 velocityInView:view];
        [(SBGestureSwitcherModifierEvent *)v15 setVelocityInContainerView:?];
        [v42 translationInView:view];
        [(SBGestureSwitcherModifierEvent *)v15 setTranslationInContainerView:?];
        [(SBGestureSwitcherModifierEvent *)v15 setHysteresis:10.0];
        [v42 locationInView:view];
        [(SBGestureSwitcherModifierEvent *)v15 setLocationInContainerView:?];
        endReason = [v42 endReason];

        [(SBScrunchGestureSwitcherModifierEvent *)v15 setIndirectPanEndReason:endReason];
        recognizedTouchType = 1;
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBFluidSwitcherGestureWorkspaceTransaction.m" lineNumber:302 description:{@"Unknown gesture recognizer: %@", gestureRecognizer}];

        recognizedTouchType = 0;
        v15 = 0;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBGestureSwitcherModifierEvent *)v15 setTouchHistoryProvider:gestureRecognizer];
  }

  [(SBGestureSwitcherModifierEvent *)v15 setTouchType:recognizedTouchType];
  [(SBGestureSwitcherModifierEvent *)v15 setPointerTouch:self->_isPointerTouch];
  [(SBGestureSwitcherModifierEvent *)v15 setHidEventSenderID:self->_hidEventSenderID];
  [gestureRecognizer lastTouchTimestamp];
  [(SBGestureSwitcherModifierEvent *)v15 setLastTouchTimestamp:?];
  -[SBGestureSwitcherModifierEvent setCanceled:](v15, "setCanceled:", [gestureRecognizer state] == 4);

  return v15;
}

- (void)_willInterruptWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _willInterruptWithReason:reason];
  [(NSMutableSet *)self->_layoutTransitionCompletions removeAllObjects];
  [(NSTimer *)self->_activateScenesTimer invalidate];
  activateScenesTimer = self->_activateScenesTimer;
  self->_activateScenesTimer = 0;

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _failRunningLayoutStateTransition];
  [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeAllObjects];
}

- (void)_didInterruptWithReason:(id)reason
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v8 _didInterruptWithReason:reason];
  if (self->_shouldCancelGestureUponInterruption)
  {
    gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    state = [gestureRecognizer state];

    if ((state - 1) <= 1)
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _beginDeferringCompletionForReason:@"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"];
    }

    [(SBSystemGestureWorkspaceTransaction *)self finishWithCompletionType:1];
    gestureRecognizer2 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    [gestureRecognizer2 setEnabled:0];

    gestureRecognizer3 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    [gestureRecognizer3 setEnabled:1];
  }

  else
  {
    [(SBSystemGestureWorkspaceTransaction *)self finishWithCompletionType:1];
  }
}

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  requestCopy = request;
  finalRootTransaction = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];

  if (finalRootTransaction)
  {
    finalRootTransaction2 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];
    v7 = [finalRootTransaction2 canInterruptForTransitionRequest:requestCopy];
  }

  else
  {
    v7 = [SBToAppsWorkspaceTransaction canInterruptTransaction:0 forTransitionRequest:requestCopy];
  }

  return v7;
}

- (void)interceptTransitionRequest:(id)request
{
  requestCopy = request;
  [requestCopy finalize];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _runSceneLayoutTransactionForTransitionRequest:requestCopy updateScenes:1];
  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  applicationContext = [requestCopy applicationContext];

  [switcherController performTransitionWithContext:applicationContext animated:1 completion:0];
}

- (void)_begin
{
  v1 = SBStringForFluidSwitcherGestureType([self _gestureType]);
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

- (void)_childTransactionDidComplete:(id)complete
{
  v11.receiver = self;
  v11.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  completeCopy = complete;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)&v11 _childTransactionDidComplete:completeCopy];
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, completeCopy);

  if (v6)
  {
    applicationSceneEntity = [v6 applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
    sceneIdentifier = [sceneHandle sceneIdentifier];

    [(NSMutableSet *)self->_sceneIdentifiersWithSceneUpdateTransactionsInProgress removeObject:sceneIdentifier];
    v10 = [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier objectForKey:sceneIdentifier];
    if (v10)
    {
      [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:sceneIdentifier];
      if (([(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted]& 1) == 0)
      {
        [(SBFluidSwitcherGestureWorkspaceTransaction *)self _startSceneUpdateTransaction:v10 forSceneIdentifier:sceneIdentifier];
      }
    }
  }
}

- (BOOL)_shouldComplete
{
  v5.receiver = self;
  v5.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  _shouldComplete = [(SBFluidSwitcherGestureWorkspaceTransaction *)&v5 _shouldComplete];
  if (_shouldComplete)
  {
    LOBYTE(_shouldComplete) = ![(SBFluidSwitcherGestureWorkspaceTransaction *)self _isDeferringCompletionForAnyReason];
  }

  return _shouldComplete;
}

- (void)_didComplete
{
  v1 = SBStringForFluidSwitcherGestureType([self _gestureType]);
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v2, v3, "Completed fluid switcher gesture transaction of type: %@.", v4, v5, v6, v7, 2u);
}

- (void)systemGestureStateChanged:(id)changed
{
  changedCopy = changed;
  if ([(SBFluidSwitcherGestureWorkspaceTransaction *)self isRunning])
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherGestureDidUpdate:changedCopy];
    if ([changedCopy state] == 4 && -[SBFluidSwitcherGestureWorkspaceTransaction isInterrupted](self, "isInterrupted") && -[SBFluidSwitcherGestureWorkspaceTransaction _isDeferringCompletionForReason:](self, "_isDeferringCompletionForReason:", @"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"))
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _endDeferringCompletionForReason:@"SBFluidSwitcherGestureWorkspaceTransactionCompletionDeferralReasonAwaitingGestureCancellation"];
    }
  }

  else
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SBFluidSwitcherGestureWorkspaceTransaction *)self systemGestureStateChanged:changedCopy, v5];
    }
  }
}

- (void)_finishWithCompletionType:(int64_t)type
{
  v4.receiver = self;
  v4.super_class = SBFluidSwitcherGestureWorkspaceTransaction;
  [(SBSystemGestureWorkspaceTransaction *)&v4 _finishWithCompletionType:type];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self removeMilestone:@"trackingGesture"];
}

- (void)didEndAllAnimations
{
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherGestureDidUpdate:gestureRecognizer];
}

- (void)_switcherGestureDidUpdate:(id)update
{
  updateCopy = update;
  if (self->_calledBeginWithGesture || ([(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    animationController = self->_animationController;
    if (!animationController || [(SBUISwitcherAnimationController *)animationController isInterruptible])
    {
      switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
      pipViewMorphAnimator = [switcherViewController pipViewMorphAnimator];
      v7 = pipViewMorphAnimator;
      if (pipViewMorphAnimator)
      {
        [pipViewMorphAnimator addObserver:self];
      }

      else
      {
        if (!self->_calledBeginWithGesture)
        {
          self->_calledBeginWithGesture = 1;
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self _willBeginWithGesture:updateCopy];
          [(SBFluidSwitcherGestureWorkspaceTransaction *)self _beginWithGesture:updateCopy];
        }

        if ([updateCopy state] != 1)
        {
          if ([updateCopy state] == 2)
          {
            [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateWithGesture:updateCopy];
          }

          else
          {
            [(SBFluidSwitcherGestureWorkspaceTransaction *)self _finishWithGesture:updateCopy];
            self->_calledBeginWithGesture = 0;
          }
        }
      }
    }
  }
}

- (void)_willBeginWithGesture:(id)gesture
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  gestureID = self->_gestureID;
  self->_gestureID = uUID;

  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  [switcherViewController willBeginGestureWithType:-[SBFluidSwitcherGestureWorkspaceTransaction _gestureType](self identifier:{"_gestureType"), self->_gestureID}];
}

- (void)_beginWithGesture:(id)gesture
{
  v50 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = SBSystemGestureRecognizerStateDescription([gestureCopy state]);
    *buf = 138544386;
    v41 = v7;
    v42 = 2050;
    selfCopy = self;
    v44 = 2114;
    v45 = v9;
    v46 = 2050;
    v47 = gestureCopy;
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
  v23 = [gestureCopy _activeEventOfType:0];
  v24 = [gestureCopy _activeTouchesForEvent:v23];
  anyObject = [v24 anyObject];
  self->_isPointerTouch = [anyObject _isPointerTouch];

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
  selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  [(SBFluidSwitcherGesture *)v28 _setSelectedAppLayout:selectedAppLayout];

  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [(SBFluidSwitcherGesture *)v28 _setGestureRecognizerForStudyLog:gestureRecognizer];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didBeginGesture:v28];

  backgroundingScenesDeactivationAssertion = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
  [backgroundingScenesDeactivationAssertion relinquish];

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

- (void)_updateWithGesture:(id)gesture
{
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateDigitizerSurfaceDimensions];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  layoutContext = [switcherViewController layoutContext];
  activeGesture = [layoutContext activeGesture];

  [activeGesture _setState:2];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didUpdateGesture:activeGesture];
}

- (void)_finishWithGesture:(id)gesture
{
  v25 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v5 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = SBSystemGestureRecognizerStateDescription([gestureCopy state]);
    v15 = 138544386;
    v16 = v7;
    v17 = 2050;
    selfCopy = self;
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    v22 = gestureCopy;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Finish with gesture recognizer: <%{public}@:%{public}p> (%{public}@)", &v15, 0x34u);
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updatePPTsForGestureEnded];
  self->_hasCompletedAtLeastOneGesture = 1;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateDigitizerSurfaceDimensions];
  switcherViewController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherViewController];
  layoutContext = [switcherViewController layoutContext];
  activeGesture = [layoutContext activeGesture];

  [activeGesture _setState:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fluidSwitcherGestureTransaction:self didEndGesture:activeGesture];
}

- (void)setSelectedAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_selectedAppLayout != layoutCopy)
  {
    v9 = layoutCopy;
    objc_storeStrong(&self->_selectedAppLayout, layout);
    WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
    layoutContext = [WeakRetained layoutContext];
    activeGesture = [layoutContext activeGesture];
    [activeGesture _setSelectedAppLayout:v9];

    layoutCopy = v9;
  }
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  request = [contextCopy request];
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _windowSceneForWorkspaceTransitionRequest:request];

  layoutStateTransitionCoordinator = [v6 layoutStateTransitionCoordinator];
  v8 = [layoutStateTransitionCoordinator layoutStateForApplicationTransitionContext:contextCopy];

  return v8;
}

- (id)previousLayoutStateForApplicationTransitionContext:(id)context
{
  request = [context request];
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:request];

  v6 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:v5];

  return v6;
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  contextCopy = context;
  request = [contextCopy request];
  [request applicationTransitionContext:contextCopy frameForApplicationSceneEntity:entityCopy];
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

- (void)transactionDidComplete:(id)complete
{
  v74 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
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
    selfCopy2 = self;
    v66 = 2114;
    v67 = v9;
    v68 = 2050;
    v69 = completeCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Transaction did complete: <%{public}@:%{public}p>", buf, 0x2Au);
  }

  animationController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self animationController];
  v11 = animationController == completeCopy;

  if (v11)
  {
    workspaceTransitionRequest = [(SBUIWorkspaceAnimationController *)self->_animationController workspaceTransitionRequest];
    completionBlock = [workspaceTransitionRequest completionBlock];

    if (completionBlock)
    {
      completionBlock2 = [workspaceTransitionRequest completionBlock];
      completionBlock2[2](completionBlock2, 1);
    }

    animationController = self->_animationController;
    self->_animationController = 0;

    autoPIPWorkspaceTransaction = self->_autoPIPWorkspaceTransaction;
    self->_autoPIPWorkspaceTransaction = 0;

    if (([(SBSceneLayoutWorkspaceTransaction *)completeCopy isInterrupted]& 1) == 0)
    {
      v16 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _copiedTransitionRequestFromTransitionRequest:workspaceTransitionRequest];
      applicationContext = [v16 applicationContext];
      [applicationContext setAnimationDisabled:1];

      transientOverlayContext = [v16 transientOverlayContext];
      [transientOverlayContext setAnimated:0];

      [v16 finalize];
      applicationContext2 = [v16 applicationContext];
      layoutState = [applicationContext2 layoutState];

      [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updatePPTsForAnimationEndedWithFinalLayoutState:layoutState];
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

      transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
      workspace = [transitionRequest workspace];
      v36 = [workspace transactionForTransitionRequest:v16];

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
        selfCopy2 = self;
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

  else if (self->_layoutTransaction == completeCopy)
  {
    backgroundingScenesDeactivationAssertion = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    [backgroundingScenesDeactivationAssertion relinquish];

    v27 = self->_layoutTransaction;
    self->_layoutTransaction = 0;
  }

  else if ([(NSMutableSet *)self->_ancillaryLayoutTransactions containsObject:completeCopy])
  {
    [(NSMutableSet *)self->_ancillaryLayoutTransactions removeObject:completeCopy];
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

- (id)createSceneEntityForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:handleCopy];

  return v4;
}

- (void)transaction:(id)transaction performTransitionWithCompletion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  completionCopy = completion;
  v8 = completionCopy;
  if (self->_animationController)
  {
    layoutTransitionCompletions = self->_layoutTransitionCompletions;
    v10 = [completionCopy copy];
    v11 = MEMORY[0x223D6F7F0]();
    [(NSMutableSet *)layoutTransitionCompletions addObject:v11];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  if (self->_layoutTransaction == transactionCopy && [(NSMutableSet *)self->_ancillaryLayoutTransactions count])
  {
    v30 = v8;
    displayIdentity = [(SBWorkspaceTransaction *)transactionCopy displayIdentity];
    windowSceneManager = [SBApp windowSceneManager];
    v29 = displayIdentity;
    v14 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    switcherController = [v14 switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    sceneManager = [v14 sceneManager];
    transitionRequest = [(SBWorkspaceTransaction *)transactionCopy transitionRequest];
    applicationContext = [transitionRequest applicationContext];
    layoutState = [applicationContext layoutState];
    elements = [layoutState elements];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = elements;
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
          v33 = sceneManager;
          v34 = v26;
          v35 = isChamoisOrFlexibleWindowing;
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

- (void)transaction:(id)transaction didEndLayoutTransitionWithContinuation:(id)continuation
{
  if (continuation)
  {
    (*(continuation + 2))(continuation, 0, 0);
  }
}

- (BOOL)transaction:(id)transaction shouldKeepSceneForeground:(id)foreground withReason:(id *)reason
{
  v6 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType:transaction];
  if (reason && v6 == 8)
  {
    *reason = @"window drag";
  }

  return v6 == 8;
}

- (void)handleTransitionRequestForGestureUpdate:(id)update fromGestureManager:(id)manager
{
  v100 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  selfCopy = self;
  managerCopy = manager;
  v81 = [SBFluidSwitcherGestureWorkspaceTransaction _workspaceTransitionRequestForSwitcherTransitionRequest:"_workspaceTransitionRequestForSwitcherTransitionRequest:fromGestureManager:withEventLabel:" fromGestureManager:updateCopy withEventLabel:?];
  switcherController = [managerCopy switcherController];
  applicationContext = [v81 applicationContext];
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  switcherCoordinator = [switcherController switcherCoordinator];
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __105__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureUpdate_fromGestureManager___block_invoke;
  v90[3] = &unk_2783B02E0;
  v73 = updateCopy;
  v91 = v73;
  v92 = selfCopy;
  v94 = &v95;
  v74 = switcherController;
  v93 = v74;
  [switcherCoordinator enumerateSwitcherControllersWithBlock:v90];

  [v81 setCrossingDisplays:*(v96 + 24)];
  windowManagementContext = [v74 windowManagementContext];
  LOBYTE(updateCopy) = [windowManagementContext isChamoisOrFlexibleWindowing];

  isInLiveResize = [applicationContext isInLiveResize];
  v11 = *(v96 + 24) | updateCopy;
  v12 = isInLiveResize ^ 1;
  if ((v11 & 1) == 0 || !v12)
  {
    [v81 finalize];
    v76 = v12;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    entities = [applicationContext entities];
    v14 = [entities countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (!v14)
    {
      goto LABEL_47;
    }

    v79 = *v87;
    obj = entities;
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
          sceneHandle = [v17 sceneHandle];
          sceneIfExists = [sceneHandle sceneIfExists];
          identifier = [sceneIfExists identifier];
          v21 = identifier;
          if (identifier)
          {
            sceneIdentifier = identifier;
          }

          else
          {
            sceneIdentifier = [sceneHandle sceneIdentifier];
          }

          v22 = [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _sceneUpdateTransactionIsForLiveResize:v18];
          settings = [sceneIfExists settings];
          v24 = objc_opt_class();
          v25 = settings;
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

          sceneSettings = [(SBApplicationSceneUpdateTransaction *)v18 sceneSettings];
          v28 = objc_opt_class();
          v29 = sceneSettings;
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

          v32 = [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _safeAreasChangingFromSettings:v85 toSettings:v31];
          settings2 = [sceneIfExists settings];
          [settings2 frame];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          if ([v17 supportsPresentationAtAnySize])
          {
            [applicationContext frameForApplicationSceneEntity:v17];
            v43 = v42;
            v45 = v44;
            v47 = v46;
            v49 = v48;
          }

          else
          {
            sceneSettings2 = [(SBApplicationSceneUpdateTransaction *)v18 sceneSettings];
            [sceneSettings2 frame];
            v43 = v51;
            v45 = v52;
            v47 = v53;
            v49 = v54;
          }

          if (v32)
          {
            applicationContext2 = [v81 applicationContext];
            animationSettings = [applicationContext2 animationSettings];
            v57 = animationSettings == 0;

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
                [(NSMutableDictionary *)selfCopy->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:sceneIdentifier];
                deviceApplicationSceneEntity = [v17 deviceApplicationSceneEntity];
                sceneHandle2 = [deviceApplicationSceneEntity sceneHandle];

                ui_safeAreaSettings = [v85 ui_safeAreaSettings];
                [sceneHandle2 setPreferredSafeAreaSettings:ui_safeAreaSettings];

                applicationContext3 = [v81 applicationContext];
                animationSettings2 = [applicationContext3 animationSettings];

                applicationContext4 = [v81 applicationContext];
                [applicationContext4 setAnimationSettings:0];

                v70 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v17 transitionRequest:v81];
                [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _startSceneUpdateTransaction:v70 forSceneIdentifier:sceneIdentifier];
                [sceneHandle2 setPreferredSafeAreaSettings:0];
                applicationContext5 = [v81 applicationContext];
                [applicationContext5 setAnimationSettings:animationSettings2];

                v72 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v17 transitionRequest:v81];
                [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _startSceneUpdateTransaction:v72 forSceneIdentifier:sceneIdentifier];

                v18 = v72;
                goto LABEL_43;
              }
            }
          }

          interfaceOrientation = [v85 interfaceOrientation];
          layoutState = [applicationContext layoutState];
          uniqueIdentifier = [v17 uniqueIdentifier];
          v61 = [layoutState interfaceOrientationForElementIdentifier:uniqueIdentifier];

          if (!sceneIfExists)
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
            if (interfaceOrientation == v61 && v62)
            {
              goto LABEL_44;
            }
          }

          if (v22 && SBSceneLiveResizeTransactionThrottlingEnabled() && [(NSMutableSet *)selfCopy->_sceneIdentifiersWithSceneUpdateTransactionsInProgress containsObject:sceneIdentifier])
          {
            sceneHandle2 = [(NSMutableDictionary *)selfCopy->_pendingSceneUpdateTransactionsBySceneIdentifier objectForKey:sceneIdentifier];
            if (sceneHandle2)
            {
              [(NSMutableDictionary *)selfCopy->_pendingSceneUpdateTransactionsBySceneIdentifier removeObjectForKey:sceneIdentifier];
            }

            [(NSMutableDictionary *)selfCopy->_pendingSceneUpdateTransactionsBySceneIdentifier setObject:v18 forKey:sceneIdentifier];
LABEL_43:
          }

          else
          {
LABEL_41:
            [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _startSceneUpdateTransaction:v18 forSceneIdentifier:sceneIdentifier];
          }

LABEL_44:

          continue;
        }
      }

      entities = obj;
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
  [(SBFluidSwitcherGestureWorkspaceTransaction *)selfCopy _runSceneLayoutTransactionForTransitionRequest:v81 updateScenes:1];
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

- (BOOL)_safeAreasChangingFromSettings:(id)settings toSettings:(id)toSettings
{
  toSettingsCopy = toSettings;
  ui_safeAreaSettings = [settings ui_safeAreaSettings];
  ui_safeAreaSettings2 = [toSettingsCopy ui_safeAreaSettings];

  v8 = 0;
  if (ui_safeAreaSettings && ui_safeAreaSettings2)
  {
    safeAreaCornerInsetResolver = [ui_safeAreaSettings safeAreaCornerInsetResolver];
    safeAreaCornerInsetResolver2 = [ui_safeAreaSettings2 safeAreaCornerInsetResolver];
    safeAreaEdgeInsetResolver = [ui_safeAreaSettings safeAreaEdgeInsetResolver];
    safeAreaEdgeInsetResolver2 = [ui_safeAreaSettings2 safeAreaEdgeInsetResolver];
    v8 = !BSEqualObjects() || (BSEqualObjects() & 1) == 0;
  }

  return v8;
}

- (BOOL)_sceneUpdateTransactionIsForLiveResize:(id)resize
{
  resizeCopy = resize;
  v4 = objc_opt_class();
  applicationSceneEntity = [resizeCopy applicationSceneEntity];

  sceneHandle = [applicationSceneEntity sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];
  v9 = SBSafeCast(v4, settings);

  LOBYTE(sceneHandle) = [v9 inLiveResize];
  return sceneHandle;
}

- (void)_startSceneUpdateTransaction:(id)transaction forSceneIdentifier:(id)identifier
{
  v70 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  identifierCopy = identifier;
  applicationSceneEntity = [transactionCopy applicationSceneEntity];
  sceneHandle = [applicationSceneEntity sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  if (sceneIfExists)
  {
    settings = [sceneIfExists settings];
    [settings frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    sceneSettings = [transactionCopy sceneSettings];
    [sceneSettings frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    settings2 = [sceneIfExists settings];
    v30 = objc_opt_class();
    v31 = settings2;
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

    sceneSettings2 = [transactionCopy sceneSettings];
    v35 = objc_opt_class();
    v36 = sceneSettings2;
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
    settings3 = [sceneIfExists settings];
    interfaceOrientation = [settings3 interfaceOrientation];

    sceneSettings3 = [transactionCopy sceneSettings];
    interfaceOrientation2 = [sceneSettings3 interfaceOrientation];

    if ([(SBFluidSwitcherGestureWorkspaceTransaction *)self _sceneUpdateTransactionIsForLiveResize:transactionCopy])
    {
      v71.origin.x = v13;
      v71.origin.y = v15;
      v71.size.width = v17;
      v71.size.height = v19;
      v72.origin.x = v22;
      v72.origin.y = v24;
      v72.size.width = v26;
      v72.size.height = v28;
      if (!((interfaceOrientation != interfaceOrientation2) | !CGRectEqualToRect(v71, v72) | v39))
      {

        goto LABEL_29;
      }
    }
  }

  v62 = sceneIfExists;
  [(NSMutableSet *)self->_sceneIdentifiersWithSceneUpdateTransactionsInProgress addObject:identifierCopy];
  v63 = transactionCopy;
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:transactionCopy withSchedulingPolicy:0];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  liveContentOverlays = [WeakRetained liveContentOverlays];
  v45 = [liveContentOverlays countByEnumeratingWithState:&v65 objects:v69 count:16];
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
          objc_enumerationMutation(liveContentOverlays);
        }

        v49 = *(*(&v65 + 1) + 8 * i);
        if (![v49 type])
        {
          v50 = [v49 itemForLayoutRole:1];
          uniqueIdentifier = [v50 uniqueIdentifier];
          v52 = [uniqueIdentifier isEqual:identifierCopy];

          if (v52)
          {
            liveContentOverlays2 = [WeakRetained liveContentOverlays];
            v54 = [liveContentOverlays2 objectForKey:v49];

            if (objc_opt_respondsToSelector())
            {
              sceneSettings4 = [v63 sceneSettings];
              [sceneSettings4 frame];
              v57 = v56;
              v59 = v58;

              sceneSettings5 = [v63 sceneSettings];
              interfaceOrientation3 = [sceneSettings5 interfaceOrientation];

              [v54 setContentReferenceSize:interfaceOrientation3 interfaceOrientation:{v57, v59}];
            }

            goto LABEL_28;
          }
        }
      }

      v46 = [liveContentOverlays countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v46)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  sceneIfExists = v62;
  transactionCopy = v63;
LABEL_29:
}

- (void)handleTransitionRequestForGestureComplete:(id)complete fromGestureManager:(id)manager
{
  v94 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  managerCopy = manager;
  appLayout = [completeCopy appLayout];
  unlockedEnvironmentMode = [completeCopy unlockedEnvironmentMode];
  floatingConfiguration = [completeCopy floatingConfiguration];
  [completeCopy floatingSwitcherVisible];
  [(NSMutableDictionary *)self->_pendingSceneUpdateTransactionsBySceneIdentifier removeAllObjects];
  LODWORD(manager) = [(SBFluidSwitcherGestureWorkspaceTransaction *)self isInterrupted];
  v9 = SBLogSystemGestureAppSwitcher();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (manager)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = SBStringForUnlockedEnvironmentMode(unlockedEnvironmentMode);
      v14 = SBStringForFloatingConfiguration(floatingConfiguration);
      v15 = BSSettingFlagDescription();
      *buf = 138544642;
      *&buf[4] = v12;
      v84 = 2050;
      selfCopy2 = self;
      v86 = 2114;
      v87 = appLayout;
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
    v18 = SBStringForUnlockedEnvironmentMode(unlockedEnvironmentMode);
    v19 = SBStringForFloatingConfiguration(floatingConfiguration);
    v20 = BSSettingFlagDescription();
    *buf = 138544642;
    *&buf[4] = v17;
    v84 = 2050;
    selfCopy2 = self;
    v86 = 2114;
    v87 = appLayout;
    v88 = 2114;
    v89 = v18;
    v90 = 2114;
    v91 = v19;
    v92 = 2114;
    v93 = v20;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "<%{public}@:%{public}p> Adding child transaction to activate appLayout: %{public}@, unlockedEnvironmentMode: %{public}@, floatingConfiguration: %{public}@, floatingSwitcherVisible: %{public}@", buf, 0x3Eu);
  }

  v9 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _workspaceTransitionRequestForSwitcherTransitionRequest:completeCopy fromGestureManager:managerCopy withEventLabel:@"FinalFluidSwitcherGestureAction"];
  [v9 finalize];
  switcherController = [managerCopy switcherController];
  switcherCoordinator = [switcherController switcherCoordinator];
  [(SBUISwitcherAnimationController *)self->_animationController interruptWithReason:@"GestureCompleting"];
  animationController = self->_animationController;
  self->_animationController = 0;

  v22 = objc_opt_class();
  v23 = [switcherCoordinator animationControllerForTransitionRequest:v9];
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
  applicationContext = [v9 applicationContext];
  layoutState = [applicationContext layoutState];

  applicationContext2 = [v9 applicationContext];
  previousLayoutState = [applicationContext2 previousLayoutState];

  unlockedEnvironmentMode2 = [previousLayoutState unlockedEnvironmentMode];
  unlockedEnvironmentMode3 = [layoutState unlockedEnvironmentMode];
  _gestureType = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];
  if (_gestureType == 1)
  {
    if (unlockedEnvironmentMode2 == 3 && unlockedEnvironmentMode3 == 1)
    {
      [MEMORY[0x277CD9FF0] flush];
      kdebug_trace();
    }

    else
    {
      BSRunLoopPerformAfterCACommit();
    }
  }

  else if (_gestureType == 8)
  {
    if ((-[NSObject applicationContext](v9, "applicationContext"), v32 = objc_claimAutoreleasedReturnValue(), [v32 minimizingDisplayItem], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, !v34) || unlockedEnvironmentMode2 == 3 && unlockedEnvironmentMode3 == 1 || (objc_msgSend(switcherController, "_slideOverDisplayItem"), (v66 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SBFluidSwitcherGestureWorkspaceTransaction selectedAppLayout](self, "selectedAppLayout"), v67 = objc_claimAutoreleasedReturnValue(), v68 = objc_msgSend(v67, "containsItem:", v66), v67, v66, v68))
    {
      [MEMORY[0x277CD9FF0] flush];
    }
  }

  v35 = [MEMORY[0x277CBEB98] setWithObject:v9];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:v35];

  if (unlockedEnvironmentMode == 2)
  {
    IsYes = 1;
LABEL_22:
    allItems = [appLayout allItems];
    v37 = [allItems count] == 0;

    if ((IsYes | SBFloatingConfigurationIsStashed(floatingConfiguration) | v37))
    {
      v39 = 1;
    }

    else
    {
      selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
      LOBYTE(v37) = ([appLayout isOrContainsAppLayout:selectedAppLayout] & 1) == 0 && -[SBFluidSwitcherGestureWorkspaceTransaction _gestureType](self, "_gestureType") != 8;

      v39 = !v37;
    }

    v73 = v39;
    goto LABEL_29;
  }

  IsYes = BSSettingFlagIsYes();
  if (unlockedEnvironmentMode != 1)
  {
    goto LABEL_22;
  }

  SBFloatingConfigurationIsStashed(floatingConfiguration);
  v73 = 1;
  LOBYTE(v37) = 1;
LABEL_29:
  if (SBPeekConfigurationIsValid([previousLayoutState peekConfiguration]) && !SBPeekConfigurationIsValid(objc_msgSend(layoutState, "peekConfiguration")))
  {
    [switcherController _dismissMedusaBanner];
  }

  v41 = self->_animationController;
  if (v41 == 0 || !v37)
  {
    goto LABEL_45;
  }

  contentViewController = [switcherController contentViewController];
  v43 = objc_opt_class();
  v44 = contentViewController;
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

  applicationContext3 = [v9 applicationContext];
  v48 = [v46 shouldMorphToPIPForTransitionContext:applicationContext3];

  if (v48)
  {
    v49 = [[SBAutoPIPWorkspaceTransaction alloc] initWithTransitionRequest:v9];
    autoPIPWorkspaceTransaction = self->_autoPIPWorkspaceTransaction;
    self->_autoPIPWorkspaceTransaction = v49;

    transientOverlayContext = [v9 transientOverlayContext];
    transientOverlay = [transientOverlayContext transientOverlay];
    viewController = [transientOverlay viewController];
    v54 = viewController;
    if (viewController)
    {
      v55 = self->_autoPIPWorkspaceTransaction;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __107__SBFluidSwitcherGestureWorkspaceTransaction_handleTransitionRequestForGestureComplete_fromGestureManager___block_invoke_2;
      v81[3] = &unk_2783A9398;
      v82 = viewController;
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
  v57 = [(NSMapTable *)self->_originalLayoutStatesBySwitcherController objectForKey:switcherController];
  v58 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:switcherController];
  if ([v58 unlockedEnvironmentMode] == 3 && !((v41 == 0) | (objc_msgSend(appLayout, "type") != 0) | v73 & 1))
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self _runSceneLayoutTransactionForTransitionRequest:v9 updateScenes:0];
    ++self->_numberOfAppLayoutsTraveledWithArcSwipe;
    appLayout2 = [v57 appLayout];
    v60 = [appLayout isEqual:appLayout2];

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

- (void)_updateMainDisplayIfNecessaryForWorkspaceTransitionRequests:(id)requests
{
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__SBFluidSwitcherGestureWorkspaceTransaction__updateMainDisplayIfNecessaryForWorkspaceTransitionRequests___block_invoke;
  v22[3] = &unk_2783B0350;
  v22[4] = self;
  v4 = [requests bs_firstObjectPassingTest:v22];
  if (v4)
  {
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    homeScreenController = [windowScene homeScreenController];
    applicationContext = [v4 applicationContext];
    layoutState = [applicationContext layoutState];

    appLayout = [layoutState appLayout];
    unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];
    floatingConfiguration = [layoutState floatingConfiguration];
    [layoutState isFloatingSwitcherVisible];
    if (unlockedEnvironmentMode == 2)
    {
      v12 = 1;
    }

    else
    {
      IsYes = BSSettingFlagIsYes();
      if (unlockedEnvironmentMode == 1)
      {
        SBFloatingConfigurationIsStashed(floatingConfiguration);
        goto LABEL_18;
      }

      v12 = IsYes;
    }

    allItems = [appLayout allItems];
    v15 = [allItems count];

    IsStashed = SBFloatingConfigurationIsStashed(floatingConfiguration);
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
      selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
      if ([appLayout isOrContainsAppLayout:selectedAppLayout])
      {
LABEL_26:

        goto LABEL_27;
      }

      _gestureType = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _gestureType];

      if (_gestureType == 8)
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
    interfaceOrientation = [layoutState interfaceOrientation];
    [SBApp noteInterfaceOrientationChanged:interfaceOrientation logMessage:@"SBFluidSwitcherGestureWorkspaceTransaction running animation to home screen"];
    [homeScreenController beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];
    v20 = 1;
LABEL_19:
    selectedAppLayout = [homeScreenController iconManager];
    if ([selectedAppLayout isFolderPageManagementUIVisible])
    {
      [selectedAppLayout dismissFolderPageManagementUI];
    }

    else if ([selectedAppLayout isShowingModalInteraction])
    {
      if (v20)
      {
        [selectedAppLayout popModalInteraction];
      }

      else
      {
        [selectedAppLayout dismissModalInteractions];
      }
    }

    else
    {
      [selectedAppLayout setEditing:0];
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

- (void)_acquireBackgroundingScenesDeactivationAssertionForTransitionRequest:(id)request
{
  requestCopy = request;
  v5 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _switcherControllerForWorkspaceTransitionRequest:requestCopy];
  v6 = [(NSMapTable *)self->_activeLayoutStatesBySwitcherController objectForKey:v5];
  elements = [v6 elements];
  v8 = [elements mutableCopy];

  applicationContext = [requestCopy applicationContext];

  layoutState = [applicationContext layoutState];
  elements2 = [layoutState elements];
  [v8 minusSet:elements2];

  if ([v8 count])
  {
    backgroundingScenesDeactivationAssertion = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    [backgroundingScenesDeactivationAssertion relinquish];

    backgroundingScenesDeactivationAssertion2 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self backgroundingScenesDeactivationAssertion];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __115__SBFluidSwitcherGestureWorkspaceTransaction__acquireBackgroundingScenesDeactivationAssertionForTransitionRequest___block_invoke;
    v14[3] = &unk_2783ADD00;
    v15 = v8;
    [backgroundingScenesDeactivationAssertion2 acquireWithPredicate:v14 transitionContext:0];
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

- (void)_runSceneLayoutTransactionForTransitionRequest:(id)request updateScenes:(BOOL)scenes
{
  scenesCopy = scenes;
  v88 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  layoutTransaction = self->_layoutTransaction;
  if (layoutTransaction)
  {
    [(SBWorkspaceTransaction *)layoutTransaction interruptForTransitionRequest:requestCopy];
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

          [*(*(&v79 + 1) + 8 * i) interruptForTransitionRequest:requestCopy];
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)self->_ancillaryLayoutTransactions removeAllObjects];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _failRunningLayoutStateTransition];
  v15 = !scenesCopy;
  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  switcherCoordinator = [switcherController switcherCoordinator];

  [switcherCoordinator setLiveContentOverlayUpdatesSuspended:v15];
  if (v15)
  {
    objc_storeStrong(&self->super.super.super._transitionRequest, request);
    if (!self->_hasActiveLayoutStateTransitionCoordinatorTransition)
    {
      self->_hasActiveLayoutStateTransitionCoordinatorTransition = 1;
      layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
      [layoutStateTransitionCoordinator beginTransitionForWorkspaceTransaction:self];
    }

    v44 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:requestCopy];
    v45 = [MEMORY[0x277CBEB98] setWithObject:requestCopy];
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
    v58 = switcherCoordinator;
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
        applicationContext = [v51 applicationContext];
        layoutState = [applicationContext layoutState];

        [(NSMapTable *)self->_activeLayoutStatesBySwitcherController setObject:layoutState forKey:v52];
      }

      v48 = [v33 countByEnumeratingWithState:&v59 objects:v83 count:16];
    }

    while (v48);
    v42 = v33;
    switcherCoordinator = v58;
  }

  else
  {
    v57 = switcherCoordinator;
    v18 = [[SBSceneLayoutWorkspaceTransaction alloc] initWithTransitionRequest:requestCopy delegate:self];
    v19 = self->_layoutTransaction;
    self->_layoutTransaction = v18;

    [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction addObserver:self];
    [(SBSceneLayoutWorkspaceTransaction *)self->_layoutTransaction setOptions:6];
    v20 = [SBMainWorkspaceTransitionRequest ancillaryTransitionRequestsForTransitionRequest:requestCopy];
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
    v31 = [MEMORY[0x277CBEB98] setWithObject:requestCopy];
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
          applicationContext2 = [v38 applicationContext];
          layoutState2 = [applicationContext2 layoutState];

          [(NSMapTable *)self->_activeLayoutStatesBySwitcherController setObject:layoutState2 forKey:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v67 objects:v84 count:16];
      }

      while (v35);
    }

    if ([v33 count] < 2)
    {
      v44 = v56;
      switcherCoordinator = v57;
      v42 = v55;
      goto LABEL_49;
    }

    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __106__SBFluidSwitcherGestureWorkspaceTransaction__runSceneLayoutTransactionForTransitionRequest_updateScenes___block_invoke;
    v63[3] = &unk_2783B03A0;
    switcherCoordinator = v57;
    v64 = v57;
    v42 = v55;
    v65 = v42;
    selfCopy = self;
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
  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if (self->_hasActiveLayoutStateTransitionCoordinatorTransition && [layoutStateTransitionCoordinator isTransitioning])
  {
    self->_hasActiveLayoutStateTransitionCoordinatorTransition = 0;
    [layoutStateTransitionCoordinator willEndTransition];
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.springboard.fluidSwitcherGestureTransaction" code:0 userInfo:0];
    [layoutStateTransitionCoordinator endTransitionWithError:v3];
  }

  switcherController = [(SBFluidSwitcherGestureWorkspaceTransaction *)self switcherController];
  switcherCoordinator = [switcherController switcherCoordinator];
  [switcherCoordinator setLiveContentOverlayUpdatesSuspended:0];
}

- (void)_addChildWorkspaceTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(SBFluidSwitcherGestureWorkspaceTransaction *)a2 _addChildWorkspaceTransaction:transactionCopy];
      }
    }
  }

  finalRootTransaction = [(SBFluidSwitcherGestureWorkspaceTransaction *)self finalRootTransaction];
  if (finalRootTransaction)
  {
    transitionRequest = [transactionCopy transitionRequest];
    [finalRootTransaction interruptForTransitionRequest:transitionRequest];
  }

  v8 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)transactionCopy _addChildWorkspaceTransaction:v8];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self setFinalRootTransaction:transactionCopy];
  [(SBFluidSwitcherGestureWorkspaceTransaction *)self addChildTransaction:transactionCopy];
}

- (id)_workspaceTransitionRequestForSwitcherTransitionRequest:(id)request fromGestureManager:(id)manager withEventLabel:(id)label
{
  requestCopy = request;
  labelCopy = label;
  managerCopy = manager;
  appLayout = [requestCopy appLayout];
  switcherController = [managerCopy switcherController];

  windowScene = [switcherController windowScene];
  _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  v32 = _fbsDisplayConfiguration;
  v16 = [workspace createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration];
  [switcherController configureRequest:v16 forSwitcherTransitionRequest:requestCopy withEventLabel:labelCopy];

  transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
  [v16 setSource:{objc_msgSend(transitionRequest2, "source")}];

  v35 = [(NSMapTable *)self->_originalLayoutStatesBySwitcherController objectForKey:switcherController];
  unlockedEnvironmentMode = [requestCopy unlockedEnvironmentMode];
  v34 = appLayout;
  if (unlockedEnvironmentMode == 1)
  {
    v19 = 1;
  }

  else
  {
    v20 = +[SBAppLayout homeScreenAppLayout];
    v19 = [appLayout isEqual:v20];
  }

  selectedAppLayout = [(SBFluidSwitcherGestureWorkspaceTransaction *)self selectedAppLayout];
  transitionRequest3 = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest3 transientOverlayContext];

  if (unlockedEnvironmentMode == 2 || v19)
  {
    if (transientOverlayContext)
    {
      transientOverlay = [transientOverlayContext transientOverlay];

      if (transientOverlay)
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __136__SBFluidSwitcherGestureWorkspaceTransaction__workspaceTransitionRequestForSwitcherTransitionRequest_fromGestureManager_withEventLabel___block_invoke;
        v38[3] = &unk_2783AC2E0;
        v39 = transientOverlayContext;
        [v16 modifyTransientOverlayContext:v38];
        v25 = v39;
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([selectedAppLayout type] == 2 && ((v19 & 1) != 0 || objc_msgSend(v35, "unlockedEnvironmentMode") != 2))
    {
      v26 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _createWorkspaceTransientOverlayForAppLayout:selectedAppLayout];
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
  applicationContext = [v16 applicationContext];
  [applicationContext setInLiveResize:{-[SBFluidSwitcherGestureWorkspaceTransaction isLiveResize](self, "isLiveResize")}];
  [applicationContext setPreventSwitcherRecencyModelUpdates:{objc_msgSend(requestCopy, "preventSwitcherRecencyModelUpdates")}];
  applicationContext2 = [v16 applicationContext];
  applicationSceneEntities = [applicationContext2 applicationSceneEntities];
  [applicationSceneEntities bs_each:&__block_literal_global_122];

  applicationContext3 = [v16 applicationContext];
  [applicationContext3 setDelegate:self];

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

- (id)_copiedTransitionRequestFromTransitionRequest:(id)request
{
  requestCopy = request;
  copyMainWorkspaceTransitionRequest = [requestCopy copyMainWorkspaceTransitionRequest];
  v17 = 0;
  v6 = [SBAutoPIPWorkspaceTransaction shouldAutoPIPEnteringBackgroundForRequest:requestCopy foundEntity:&v17];
  v7 = v17;
  v8 = v7;
  if (v6 && v7 != 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SBFluidSwitcherGestureWorkspaceTransaction__copiedTransitionRequestFromTransitionRequest___block_invoke;
    v15[3] = &unk_2783A98C8;
    v16 = v7;
    [copyMainWorkspaceTransitionRequest modifyApplicationContext:v15];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__SBFluidSwitcherGestureWorkspaceTransaction__copiedTransitionRequestFromTransitionRequest___block_invoke_2;
  v12[3] = &unk_2783A96A0;
  v13 = requestCopy;
  selfCopy = self;
  v10 = requestCopy;
  [copyMainWorkspaceTransitionRequest modifyApplicationContext:v12];

  return copyMainWorkspaceTransitionRequest;
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

- (id)_createWorkspaceTransientOverlayForAppLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v6 = [WeakRetained _createWorkspaceTransientOverlayForAppLayout:layoutCopy];

  return v6;
}

- (id)_transitionRequestForApplicationTransitionContext:(id)context eventLabel:(id)label
{
  labelCopy = label;
  contextCopy = context;
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  _fbsDisplayConfiguration = [windowScene _fbsDisplayConfiguration];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  workspace = [transitionRequest workspace];

  v12 = [workspace createRequestWithOptions:0 displayConfiguration:_fbsDisplayConfiguration];
  transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
  [v12 setSource:{objc_msgSend(transitionRequest2, "source")}];

  [v12 setApplicationContext:contextCopy];
  if (labelCopy)
  {
    [v12 setEventLabel:labelCopy];
  }

  return v12;
}

- (void)_addWaitForSceneLayoutTransitionTransaction:(id)transaction forLeafAnimationControllers:(id)controllers
{
  transactionCopy = transaction;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __118__SBFluidSwitcherGestureWorkspaceTransaction__addWaitForSceneLayoutTransitionTransaction_forLeafAnimationControllers___block_invoke;
  v8[3] = &unk_2783B03C8;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  [controllers _enumerateCoordinatingAnimationsWithBlock:v8];
}

- (void)_updateDigitizerSurfaceDimensions
{
  v17 = *MEMORY[0x277D85DE8];
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  v4 = [gestureRecognizer _activeEventOfType:0];

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

- (void)_beginDeferringCompletionForReason:(id)reason
{
  reasonCopy = reason;
  completionDeferralReasons = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  if (!completionDeferralReasons)
  {
    completionDeferralReasons = objc_alloc_init(MEMORY[0x277CCA940]);
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setCompletionDeferralReasons:completionDeferralReasons];
  }

  [completionDeferralReasons addObject:reasonCopy];
}

- (void)_endDeferringCompletionForReason:(id)reason
{
  reasonCopy = reason;
  completionDeferralReasons = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  [completionDeferralReasons removeObject:reasonCopy];

  if (![completionDeferralReasons count])
  {
    [(SBFluidSwitcherGestureWorkspaceTransaction *)self setCompletionDeferralReasons:0];
  }

  [(SBFluidSwitcherGestureWorkspaceTransaction *)self _evaluateCompletion];
}

- (BOOL)_isDeferringCompletionForAnyReason
{
  completionDeferralReasons = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  v3 = completionDeferralReasons;
  if (completionDeferralReasons)
  {
    v4 = [completionDeferralReasons count] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isDeferringCompletionForReason:(id)reason
{
  reasonCopy = reason;
  completionDeferralReasons = [(SBFluidSwitcherGestureWorkspaceTransaction *)self completionDeferralReasons];
  v6 = completionDeferralReasons;
  if (completionDeferralReasons)
  {
    v7 = [completionDeferralReasons countForObject:reasonCopy] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_windowSceneForWorkspaceTransitionRequest:(id)request
{
  v3 = SBApp;
  requestCopy = request;
  windowSceneManager = [v3 windowSceneManager];
  displayIdentity = [requestCopy displayIdentity];

  v7 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

  return v7;
}

- (id)_switcherControllerForWorkspaceTransitionRequest:(id)request
{
  v3 = [(SBFluidSwitcherGestureWorkspaceTransaction *)self _windowSceneForWorkspaceTransitionRequest:request];
  switcherController = [v3 switcherController];

  return switcherController;
}

- (void)_updatePPTsForGestureTransactionBegan
{
  if (__PPTIsRunningSwitcherGestureTest())
  {
    v3 = +[SBApplicationTestingManager sharedInstance];
    currentTestName = [v3 currentTestName];

    v5 = MEMORY[0x277D76620];
    [*MEMORY[0x277D76620] startedSubTest:@"delay" forTest:currentTestName];
    v6 = *v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __83__SBFluidSwitcherGestureWorkspaceTransaction__updatePPTsForGestureTransactionBegan__block_invoke;
    v8[3] = &unk_2783A92D8;
    v9 = currentTestName;
    selfCopy = self;
    v7 = currentTestName;
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
    currentTestName = [v3 currentTestName];

    v4 = MEMORY[0x277D76620];
    [*MEMORY[0x277D76620] finishedSubTest:@"gesture" forTest:currentTestName];
    [*v4 startedSubTest:@"animation" forTest:currentTestName];
  }
}

- (void)_updatePPTsForAnimationEndedWithFinalLayoutState:(id)state
{
  stateCopy = state;
  if (__PPTIsRunningSwitcherGestureTest())
  {
    v3 = +[SBApplicationTestingManager sharedInstance];
    currentTestName = [v3 currentTestName];

    v5 = __PPTIsRunningSwitcherGestureToAutoPIPTest();
    v6 = MEMORY[0x277D76620];
    if (!v5)
    {
      [*MEMORY[0x277D76620] finishedSubTest:@"animation" forTest:currentTestName];
      [*v6 finishedSubTest:@"overall" forTest:currentTestName];
    }

    v7 = __PPTExpectedFinalUnlockedEnvironmentModeForCurrentTest();
    if (v7 == [stateCopy unlockedEnvironmentMode])
    {
      if (!__PPTIsRunningSwitcherGestureToAutoPIPTest())
      {
        [*v6 finishedTest:currentTestName];
      }
    }

    else
    {
      v8 = *v6;
      v9 = MEMORY[0x277CCACA8];
      v10 = SBStringForUnlockedEnvironmentMode(v7);
      v11 = SBStringForUnlockedEnvironmentMode([stateCopy unlockedEnvironmentMode]);
      v12 = [v9 stringWithFormat:@"%@ - expected end state is %@, but ended up in %@ instead", currentTestName, v10, v11];
      [v8 failedTest:currentTestName withFailure:v12];
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