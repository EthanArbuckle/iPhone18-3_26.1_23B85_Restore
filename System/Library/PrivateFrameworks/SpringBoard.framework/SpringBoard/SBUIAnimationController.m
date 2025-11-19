@interface SBUIAnimationController
+ (void)_addAlertItemsPendingReason:(id)a3;
- (BOOL)_willAnimate;
- (BOOL)isInteractive;
- (BOOL)transitionSupportsCancelling;
- (BOOL)transitionSupportsRestarting;
- (BOOL)transitionWasCancelled;
- (BOOL)transitionWasRestarted;
- (SBApplicationSceneEntity)fromApplicationSceneEntity;
- (SBApplicationSceneEntity)toApplicationSceneEntity;
- (SBUIAnimationController)initWithTransitionContextProvider:(id)a3;
- (id)__startTransactionDependencyForEntity:(id)a3;
- (id)_animationIdentifier;
- (id)_transitionAnimator;
- (id)_viewsForAnimationStepping;
- (void)__abortAnimation;
- (void)__cleanupAnimation;
- (void)__noteAnimationDidTerminate;
- (void)__reportAnimationCompletion;
- (void)__startAnimation;
- (void)_addDebugLogCategory:(id)a3;
- (void)_begin;
- (void)_cleanupEntityObservers;
- (void)_didInterruptWithReason:(id)a3;
- (void)_entityObserverProgressDidChange:(id)a3 waitForSceneContentAvailableTransactionBlock:(id)a4;
- (void)_enumerateCoordinatingAnimationsWithBlock:(id)a3;
- (void)_enumerateCoordinatingAnimationsWithSchedulingPolicy:(unint64_t)a3 block:(id)a4;
- (void)_enumerateCoordinatingChildRelationshipsWithBlock:(id)a3;
- (void)_noteAnimationDidFail;
- (void)_noteAnimationDidFinish;
- (void)_noteAnimationDidRevealApplication;
- (void)_notifyObserversOfAnimationCompletion;
- (void)_processStateDidChange:(id)a3;
- (void)_registerEntityObserversIfNecessary;
- (void)_startAnimation;
- (void)_willComplete;
- (void)addCoordinatingChildTransaction:(id)a3 withSchedulingPolicy:(unint64_t)a4;
- (void)addObserver:(id)a3;
- (void)addSteppedCoordinatingChildAnimation:(id)a3;
- (void)cancelTransition;
- (void)dealloc;
- (void)delayAnimationUntilTransactionFinishes:(id)a3;
- (void)enableSteppingWithAnimationSettings:(id)a3;
- (void)finishSteppingBackwardToStart;
- (void)finishSteppingForwardToEnd;
- (void)removeObserver:(id)a3;
- (void)restartTransition;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)setStepPercentage:(double)a3;
- (void)startInteractiveTransition:(id)a3;
- (void)stopDelayingAnimationForTransaction:(id)a3;
- (void)transitionDidFinish:(id)a3;
@end

@implementation SBUIAnimationController

- (void)_begin
{
  OUTLINED_FUNCTION_3_1();
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v1 = _SBUIAnimationStateDescription(*v0);
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (BOOL)_willAnimate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = ![(SBUIAnimationController *)self _isNullAnimation];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__SBUIAnimationController__willAnimate__block_invoke;
    v5[3] = &unk_2783A8D30;
    v5[4] = &v6;
    [(SBUIAnimationController *)self _enumerateCoordinatingAnimationsWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (id)_animationIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void __33__SBUIAnimationController__begin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 animationController:*(a1 + 32) willBeginAnimation:*(a1 + 40)];
  }
}

void __33__SBUIAnimationController__begin__block_invoke_104(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 coordinatingChildTransaction];
  v5 = [v4 coordinatingAnimationControllers];
  v6 = [v3 schedulingPolicy];
  v7 = *(a1 + 32);
  v8 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
  v27 = v3;
  if (v6 == 1)
  {
    v7 = v7[20];
    v9 = v4;
    v10 = 1;
  }

  else
  {
    v9 = v4;
    v10 = 0;
  }

  [v7 addChildTransaction:v9 withSchedulingPolicy:{v10, v4}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    v14 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
    v15 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
    v28 = a1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if (!v6)
        {
          v18 = *(*(a1 + 32) + v8[802]);
          [*(*(&v30 + 1) + 8 * i) animationTransaction];
          v19 = v15;
          v20 = v14;
          v22 = v21 = v8;
          [v18 addChildTransaction:v22 withSchedulingPolicy:0];

          v8 = v21;
          v14 = v20;
          v15 = v19;
          v6 = 0;
          a1 = v28;
        }

        v23 = [v17 notifyObserversTransaction];
        [v23 addChildTransaction:*(*(a1 + 32) + v14[803]) withSchedulingPolicy:1];

        v24 = *(*(a1 + 32) + v15[804]);
        v25 = [v17 cleanupTransaction];
        [v24 addChildTransaction:v25 withSchedulingPolicy:0];
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }
}

- (void)_registerEntityObserversIfNecessary
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(NSSet *)self->_entitiesToObserve count]&& self->_animationState != 3)
  {
    v14 = [MEMORY[0x277CBEB58] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_entitiesToObserve;
    v3 = [(NSSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        v6 = 0;
        do
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * v6);
          v8 = [MEMORY[0x277CCAB98] defaultCenter];
          v9 = [v7 application];
          [v8 addObserver:self selector:sel__processStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:v9];

          v10 = [v7 sceneHandle];
          v11 = v10;
          if (v10)
          {
            [v10 addObserver:self];
            [(NSSet *)v14 addObject:v11];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [(NSSet *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }

    sceneHandlesBeingObserved = self->_sceneHandlesBeingObserved;
    self->_sceneHandlesBeingObserved = v14;
  }
}

- (void)__startAnimation
{
  OUTLINED_FUNCTION_3_1();
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v1 = _SBUIAnimationStateDescription(*v0);
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (id)_transitionAnimator
{
  if (self->_stepper)
  {
    v2 = [[SBUIAnimationControllerSteppedAnimator alloc] initWithAnimationController:self stepper:self->_stepper];
  }

  else
  {
    v2 = [[SBUIAnimationControllerAnimator alloc] initWithAnimationController:self];
  }

  return v2;
}

- (BOOL)isInteractive
{
  v2 = [(SBUIAnimationController *)self transition];
  v3 = [v2 isInteractive];

  return v3;
}

- (void)_noteAnimationDidFinish
{
  v3 = SBLogWorkspace();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBUIAnimationController] noteAnimationDidFinish: Animation succeeded.", v5, 2u);
  }

  v4 = [(SBUIAnimationController *)self transition];
  if ([v4 isTransitioning])
  {
    [v4 completeTransition:1];
  }

  else
  {
    [(SBUIAnimationController *)self __noteAnimationDidTerminate];
  }
}

- (void)__noteAnimationDidTerminate
{
  animationState = self->_animationState;
  if ((animationState - 1) >= 2)
  {
    if ((animationState - 3) < 2)
    {
      return;
    }

    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ or %@)", @"waiting", @"running"];
    v7 = _SBUIAnimationStateDescription(self->_animationState);
    [v5 handleFailureInMethod:a2 object:self file:@"SBUIAnimationController.m" lineNumber:790 description:{@" %s : unexpected animation state : expected=%@ actual=%@", "-[SBUIAnimationController __noteAnimationDidTerminate]", v6, v7}];
  }

  v8 = [(SBUIAnimationController *)self animationTransactionCompletion];
  if (v8)
  {
    [(SBUIAnimationController *)self setAnimationTransactionCompletion:0];
    v8[2](v8, 1);
  }

  else if (([(BSBlockTransaction *)self->_animationTransaction hasStarted]& 1) == 0)
  {
    [(SBUIAnimationController *)self failWithReason:@"Animation completed before it started"];
  }
}

- (void)__reportAnimationCompletion
{
  OUTLINED_FUNCTION_3_1();
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v1 = _SBUIAnimationStateDescription(*v0);
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (void)_notifyObserversOfAnimationCompletion
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ or %@)", @"finished", @"cleanedUp"];
  v2 = _SBUIAnimationStateDescription(*v0);
  [OUTLINED_FUNCTION_0_19(v2 v3];
}

void __64__SBUIAnimationController__notifyObserversOfAnimationCompletion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 animationControllerDidFinishAnimation:*(a1 + 32)];
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ or %@)", @"none", @"cleanedUp"];
  v2 = _SBUIAnimationStateDescription(*v0);
  [OUTLINED_FUNCTION_0_19(v2 v3];
}

- (void)_cleanupEntityObservers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sceneHandlesBeingObserved;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeObserver:{self, v9}];
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:@"SBApplicationProcessStateDidChange" object:0];
}

- (void)__cleanupAnimation
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ or %@)", @"finished", @"cleanedUp"];
  v10 = _SBUIAnimationStateDescription(*a1);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBUIAnimationController.m" lineNumber:815 description:{@" %s : unexpected animation state : expected=%@ actual=%@", "-[SBUIAnimationController __cleanupAnimation]", v9, v10}];

  *a4 = *a1;
}

- (void)_willComplete
{
  v6.receiver = self;
  v6.super_class = SBUIAnimationController;
  [(SBUIAnimationController *)&v6 _willComplete];
  animationState = self->_animationState;
  if ((animationState - 3) >= 2)
  {
    v4 = SBLogWorkspace();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "[SBUIAnimationController] willComplete: Canceling animation", v5, 2u);
    }

    [(SBUIAnimationController *)self __abortAnimation];
    [(SBUIAnimationController *)self _notifyObserversOfAnimationCompletion];
    animationState = self->_animationState;
  }

  if (animationState != 4)
  {
    [(SBUIAnimationController *)self __cleanupAnimation];
  }
}

- (SBUIAnimationController)initWithTransitionContextProvider:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = SBUIAnimationController;
  v6 = [(SBTransaction *)&v33 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D66448]);
    transition = v6->_transition;
    v6->_transition = v7;

    [(SBViewControllerTransitionContext *)v6->_transition setDelegate:v6];
    objc_storeStrong(&v6->_transitionContextProvider, a3);
    v9 = [MEMORY[0x277CBEB18] array];
    coordinatingChildRelationships = v6->_coordinatingChildRelationships;
    v6->_coordinatingChildRelationships = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    steppedCoordinatingChildAnimations = v6->_steppedCoordinatingChildAnimations;
    v6->_steppedCoordinatingChildAnimations = v11;

    objc_initWeak(&location, v6);
    v13 = objc_alloc(MEMORY[0x277CF0BA8]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke;
    v30[3] = &unk_2783B6F88;
    objc_copyWeak(&v31, &location);
    v14 = [v13 initWithBlock:v30];
    animationTransaction = v6->_animationTransaction;
    v6->_animationTransaction = v14;

    [(BSBlockTransaction *)v6->_animationTransaction setDebugName:@"animation"];
    [(SBUIAnimationController *)v6 addChildTransaction:v6->_animationTransaction withSchedulingPolicy:0];
    v16 = objc_alloc(MEMORY[0x277CF0BA8]);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke_2;
    v28[3] = &unk_2783B6F88;
    objc_copyWeak(&v29, &location);
    v17 = [v16 initWithBlock:v28];
    notifyObserversTransaction = v6->_notifyObserversTransaction;
    v6->_notifyObserversTransaction = v17;

    [(BSBlockTransaction *)v6->_notifyObserversTransaction setDebugName:@"notify observers"];
    [(BSBlockTransaction *)v6->_animationTransaction addChildTransaction:v6->_notifyObserversTransaction withSchedulingPolicy:1];
    v19 = objc_alloc(MEMORY[0x277CF0BA8]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke_3;
    v26 = &unk_2783B6F88;
    objc_copyWeak(&v27, &location);
    v20 = [v19 initWithBlock:&v23];
    cleanupTransaction = v6->_cleanupTransaction;
    v6->_cleanupTransaction = v20;

    [(BSBlockTransaction *)v6->_cleanupTransaction setDebugName:@"clean up", v23, v24, v25, v26];
    [(SBUIAnimationController *)v6 addChildTransaction:v6->_cleanupTransaction withSchedulingPolicy:0];
    [(BSBlockTransaction *)v6->_notifyObserversTransaction addChildTransaction:v6->_cleanupTransaction withSchedulingPolicy:1];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _animationState] == 1 && objc_msgSend(WeakRetained, "__animationShouldStart"))
  {
    [WeakRetained setAnimationTransactionCompletion:v5];
    [WeakRetained _prepareAnimation];
    [WeakRetained __startAnimation];
  }

  else
  {
    v5[2](v5, 0);
  }
}

void __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __reportAnimationCompletion];
  v4[2](v4, 1);
}

void __61__SBUIAnimationController_initWithTransitionContextProvider___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained __cleanupAnimation];
  v4[2](v4, 1);
}

- (SBApplicationSceneEntity)toApplicationSceneEntity
{
  v2 = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v3 = [v2 anyObject];

  return v3;
}

- (SBApplicationSceneEntity)fromApplicationSceneEntity
{
  v2 = [(SBUIAnimationController *)self fromApplicationSceneEntities];
  v3 = [v2 anyObject];

  return v3;
}

- (BOOL)transitionSupportsCancelling
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = [(SBUIAnimationController *)self transition];
  v4 = [v3 supportsCancelling];

  v11 = v4;
  if (*(v9 + 24) == 1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SBUIAnimationController_transitionSupportsCancelling__block_invoke;
    v7[3] = &unk_2783A8D30;
    v7[4] = &v8;
    [(SBUIAnimationController *)self _enumerateCoordinatingAnimationsWithSchedulingPolicy:0 block:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __55__SBUIAnimationController_transitionSupportsCancelling__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 transitionSupportsCancelling];
  *(*(*(a1 + 32) + 8) + 24) &= result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

- (BOOL)transitionSupportsRestarting
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = [(SBUIAnimationController *)self transition];
  v4 = [v3 supportsRestarting];

  v11 = v4;
  if (*(v9 + 24) == 1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SBUIAnimationController_transitionSupportsRestarting__block_invoke;
    v7[3] = &unk_2783A8D30;
    v7[4] = &v8;
    [(SBUIAnimationController *)self _enumerateCoordinatingAnimationsWithSchedulingPolicy:0 block:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __55__SBUIAnimationController_transitionSupportsRestarting__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 transitionSupportsRestarting];
  *(*(*(a1 + 32) + 8) + 24) &= result;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

- (void)cancelTransition
{
  v3 = [(SBUIAnimationController *)self transition];
  [v3 cancelTransition];

  [(SBUIAnimationController *)self _enumerateCoordinatingAnimationsWithSchedulingPolicy:0 block:&__block_literal_global_174];
}

- (void)restartTransition
{
  v3 = [(SBUIAnimationController *)self transition];
  [v3 restartTransition];

  [(SBUIAnimationController *)self _enumerateCoordinatingAnimationsWithSchedulingPolicy:0 block:&__block_literal_global_67_0];
}

- (BOOL)transitionWasCancelled
{
  v2 = [(SBUIAnimationController *)self transition];
  v3 = [v2 transitionWasCancelled];

  return v3;
}

- (BOOL)transitionWasRestarted
{
  v2 = [(SBUIAnimationController *)self transition];
  v3 = [v2 transitionWasRestarted];

  return v3;
}

- (void)addCoordinatingChildTransaction:(id)a3 withSchedulingPolicy:(unint64_t)a4
{
  v9 = a3;
  if ([(SBUIAnimationController *)self hasStarted])
  {
    [SBUIAnimationController addCoordinatingChildTransaction:withSchedulingPolicy:];
  }

  v6 = v9;
  if (v9)
  {
    if ([v9 hasStarted])
    {
      [SBUIAnimationController addCoordinatingChildTransaction:withSchedulingPolicy:];
    }

    coordinatingChildRelationships = self->_coordinatingChildRelationships;
    v8 = [[_SBUIAnimationControllerCoordinatingChildRelationship alloc] initWithCoordinatingChildTransaction:v9 schedulingPolicy:a4];
    [(NSMutableArray *)coordinatingChildRelationships addObject:v8];

    v6 = v9;
  }
}

- (void)addSteppedCoordinatingChildAnimation:(id)a3
{
  v4 = a3;
  if (![(SBUIAnimationController *)self isStepped])
  {
    [SBUIAnimationController addSteppedCoordinatingChildAnimation:];
  }

  if (([v4 isStepped] & 1) == 0)
  {
    [SBUIAnimationController addSteppedCoordinatingChildAnimation:];
  }

  [(SBUIAnimationController *)self addCoordinatingChildTransaction:v4 withSchedulingPolicy:0];
  [(NSMutableArray *)self->_steppedCoordinatingChildAnimations addObject:v4];
}

- (void)delayAnimationUntilTransactionFinishes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = [v4 hasStarted];
    v5 = v8;
    if ((v6 & 1) == 0)
    {
      v7 = [(BSBlockTransaction *)self->_animationTransaction hasStarted];
      v5 = v8;
      if ((v7 & 1) == 0)
      {
        [v8 addChildTransaction:self->_animationTransaction withSchedulingPolicy:1];
        v5 = v8;
      }
    }
  }
}

- (void)stopDelayingAnimationForTransaction:(id)a3
{
  if (a3)
  {
    [a3 removeChildTransaction:self->_animationTransaction];
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBUIAnimationController;
  [(SBUIAnimationController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBUIAnimationController;
  [(SBUIAnimationController *)&v3 removeObserver:a3];
}

+ (void)_addAlertItemsPendingReason:(id)a3
{
  v3 = _addAlertItemsPendingReason__onceToken;
  v4 = a3;
  v6 = v4;
  if (v3 == -1)
  {
    v5 = v4;
  }

  else
  {
    +[SBUIAnimationController _addAlertItemsPendingReason:];
    v5 = v6;
  }

  [__animationControllerPendingAlertItemsReasons addObject:v5];
}

void __55__SBUIAnimationController__addAlertItemsPendingReason___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = __animationControllerPendingAlertItemsReasons;
  __animationControllerPendingAlertItemsReasons = v0;
}

- (void)__abortAnimation
{
  [(SBUIAnimationController *)self _setAnimationState:3];

  [(SBUIAnimationController *)self _abortAnimation];
}

- (void)enableSteppingWithAnimationSettings:(id)a3
{
  if (!self->_stepper)
  {
    v4 = a3;
    v5 = [[SBAnimationStepper alloc] initWithAnimationSettings:v4];

    stepper = self->_stepper;
    self->_stepper = v5;
  }
}

- (void)_enumerateCoordinatingChildRelationshipsWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v14 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_coordinatingChildRelationships;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9), &v14);
        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)_enumerateCoordinatingAnimationsWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SBUIAnimationController__enumerateCoordinatingAnimationsWithBlock___block_invoke;
  v6[3] = &unk_2783B6FD0;
  v7 = v4;
  v5 = v4;
  [(SBUIAnimationController *)self _enumerateCoordinatingChildRelationshipsWithBlock:v6];
}

void __69__SBUIAnimationController__enumerateCoordinatingAnimationsWithBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a2 coordinatingChildTransaction];
  v6 = [v5 coordinatingAnimationControllers];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v13 != v10)
      {
        objc_enumerationMutation(v7);
      }

      (*(*(a1 + 32) + 16))(*(a1 + 32));
      if (*a3)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)_enumerateCoordinatingAnimationsWithSchedulingPolicy:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBUIAnimationController__enumerateCoordinatingAnimationsWithSchedulingPolicy_block___block_invoke;
  v8[3] = &unk_2783B6FF8;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(SBUIAnimationController *)self _enumerateCoordinatingChildRelationshipsWithBlock:v8];
}

void __86__SBUIAnimationController__enumerateCoordinatingAnimationsWithSchedulingPolicy_block___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 schedulingPolicy] == *(a1 + 40))
  {
    v6 = [v5 coordinatingChildTransaction];
    v7 = [v6 coordinatingAnimationControllers];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32));
        if (*a3)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)_didInterruptWithReason:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBUIAnimationController;
  [(SBUIAnimationController *)&v4 _didInterruptWithReason:a3];
  [(SBUIAnimationController *)self _noteAnimationDidFail];
}

- (void)_addDebugLogCategory:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBUIAnimationController;
  [(SBUIAnimationController *)&v14 _addDebugLogCategory:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_startTransactionDependencies;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _addDebugLogCategory:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

uint64_t __39__SBUIAnimationController__willAnimate__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _willAnimate];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (id)__startTransactionDependencyForEntity:(id)a3
{
  v3 = [a3 sceneHandle];
  if (v3)
  {
    v4 = [[SBWaitForSceneContentAvailableTransaction alloc] initWithSceneHandle:v3 manualListener:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_startAnimation
{
  if (![(SBUIAnimationController *)self isStepped])
  {

    [(SBUIAnimationController *)self _noteAnimationDidFinish];
  }
}

- (id)_viewsForAnimationStepping
{
  v2 = [(SBUIAnimationController *)self _getTransitionWindow];
  if (v2)
  {
    [MEMORY[0x277CBEB98] setWithObject:v2];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBUIAnimationController_sceneHandle_didUpdateContentState___block_invoke;
  v9[3] = &unk_2783AB2A8;
  v9[4] = self;
  v10 = v6;
  v11 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SBUIAnimationController_sceneHandle_didUpdateContentState___block_invoke_2;
  v8[3] = &__block_descriptor_40_e51_v16__0__SBWaitForSceneContentAvailableTransaction_8l;
  v8[4] = a4;
  v7 = v6;
  [(SBUIAnimationController *)self _entityObserverProgressDidChange:v9 waitForSceneContentAvailableTransactionBlock:v8];
}

- (void)_processStateDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 processState];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__SBUIAnimationController__processStateDidChange___block_invoke;
  v10[3] = &unk_2783A8ED8;
  v10[4] = self;
  v11 = v4;
  v12 = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SBUIAnimationController__processStateDidChange___block_invoke_2;
  v8[3] = &unk_2783B7090;
  v9 = v12;
  v6 = v12;
  v7 = v4;
  [(SBUIAnimationController *)self _entityObserverProgressDidChange:v10 waitForSceneContentAvailableTransactionBlock:v8];
}

void __50__SBUIAnimationController__processStateDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isRunning] & 1) == 0 && (objc_msgSend(v3, "isComplete") & 1) == 0)
  {
    [v3 failWithReason:@"Process exited"];
  }
}

- (void)_entityObserverProgressDidChange:(id)a3 waitForSceneContentAvailableTransactionBlock:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSSet *)self->_startTransactionDependencies copy];
  if ([(NSSet *)self->_entitiesToObserve count]&& self->_animationState != 3)
  {
    v6[2](v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v14 = *(*(&v15 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7[2](v7, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_noteAnimationDidRevealApplication
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __61__SBUIAnimationController__noteAnimationDidRevealApplication__block_invoke;
  v2[3] = &unk_2783A8D80;
  v2[4] = self;
  [(SBUIAnimationController *)self _enumerateObserversWithBlock:v2];
}

void __61__SBUIAnimationController__noteAnimationDidRevealApplication__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 animationControllerDidRevealApplication:*(a1 + 32)];
  }
}

- (void)_noteAnimationDidFail
{
  v3 = SBLogWorkspace();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBUIAnimationController] noteAnimationDidFail: Animation failed.", v5, 2u);
  }

  v4 = [(SBUIAnimationController *)self transition];
  if ([v4 isTransitioning])
  {
    [v4 completeTransition:{objc_msgSend(v4, "transitionWasCancelled") ^ 1}];
  }

  else
  {
    [(SBUIAnimationController *)self __noteAnimationDidTerminate];
  }
}

- (void)setStepPercentage:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(SBUIAnimationController *)self isStepped])
  {
    v5 = [(SBUIAnimationController *)self transition];
    [v5 updateInteractiveTransition:a3];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_steppedCoordinatingChildAnimations;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          [*(*(&v11 + 1) + 8 * v10++) setStepPercentage:{a3, v11}];
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)finishSteppingForwardToEnd
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(SBUIAnimationController *)self isStepped])
  {
    v3 = [(SBUIAnimationController *)self transition];
    [v3 finishInteractiveTransition];

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_steppedCoordinatingChildAnimations;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) finishSteppingForwardToEnd];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)finishSteppingBackwardToStart
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(SBUIAnimationController *)self isStepped])
  {
    v3 = [(SBUIAnimationController *)self transition];
    [v3 cancelInteractiveTransition];

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_steppedCoordinatingChildAnimations;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) finishSteppingBackwardToStart];
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)startInteractiveTransition:(id)a3
{
  v4 = a3;
  v7 = [(SBUIAnimationController *)self transition];

  v5 = v7;
  if (v7 == v4)
  {
    v6 = [v7 animator];
    [v6 animateTransition:v7];

    v5 = v7;
  }
}

- (void)transitionDidFinish:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBUIAnimationController *)self transition];

  if (v5 == v4)
  {
    if ([v4 transitionWasCancelled])
    {
      v6 = [MEMORY[0x277CBEB18] array];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __47__SBUIAnimationController_transitionDidFinish___block_invoke;
      v31[3] = &unk_2783B7048;
      v7 = v6;
      v32 = v7;
      [(SBUIAnimationController *)self _enumerateCoordinatingChildRelationshipsWithBlock:v31];
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v7;
      v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
      if (v20)
      {
        v19 = *v28;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [v21 coordinatingChildTransaction];
            v9 = [v22 coordinatingAnimationControllers];
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v24;
              do
              {
                for (j = 0; j != v11; ++j)
                {
                  if (*v24 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v23 + 1) + 8 * j);
                  v15 = [v14 notifyObserversTransaction];
                  [v15 removeChildTransaction:self->_notifyObserversTransaction];

                  cleanupTransaction = self->_cleanupTransaction;
                  v17 = [v14 cleanupTransaction];
                  [(BSBlockTransaction *)cleanupTransaction removeChildTransaction:v17];
                }

                v11 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
              }

              while (v11);
            }

            [(BSBlockTransaction *)self->_animationTransaction removeChildTransaction:v22];
            [(NSMutableArray *)self->_coordinatingChildRelationships removeObject:v21];
          }

          v20 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
        }

        while (v20);
      }
    }

    [(SBUIAnimationController *)self __noteAnimationDidTerminate];
  }
}

void __47__SBUIAnimationController_transitionDidFinish___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 schedulingPolicy] == 1)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)addCoordinatingChildTransaction:withSchedulingPolicy:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addCoordinatingChildTransaction:withSchedulingPolicy:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addSteppedCoordinatingChildAnimation:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addSteppedCoordinatingChildAnimation:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end