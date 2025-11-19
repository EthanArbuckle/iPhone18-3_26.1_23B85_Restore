@interface SBSystemActionSuppressionManager
- (id)initWithSelectedAction:(id *)a1;
- (uint64_t)removeObserver:(uint64_t)result;
- (uint64_t)suppressionStatus;
- (uint64_t)systemActionInteractionDidStartWithLongPressTimeout:(uint64_t)result;
- (void)_didReduceState:(id)a3;
- (void)_queryPocketStateWithTimeout:(double)a3;
- (void)_subscribeToViewObstructionEvents;
- (void)_unsubscribeFromViewObstructionEvents;
- (void)_updateViewObstructionSubscription;
- (void)addObserver:(uint64_t)a1;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
@end

@implementation SBSystemActionSuppressionManager

- (void)_updateViewObstructionSubscription
{
  if ([(SBSystemActionSuppressionManagerState *)self->_state isEligibleForViewObstructionEvents])
  {

    [(SBSystemActionSuppressionManager *)self _subscribeToViewObstructionEvents];
  }

  else
  {

    [(SBSystemActionSuppressionManager *)self _unsubscribeFromViewObstructionEvents];
  }
}

- (void)_unsubscribeFromViewObstructionEvents
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_subscribedToViewObstructionEvents)
  {
    v3 = SBLogSystemActionSuppression();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) unsubscribing from VO", &v6, 0xCu);
    }

    [(CMSuppressionManager *)self->_suppressionManager stopSuppressionUpdates];
    [(CMSuppressionManager *)self->_suppressionManager stopService];
    self->_subscribedToViewObstructionEvents = 0;
    stateReducer = self->_stateReducer;
    v5 = +[SBSystemActionViewObstructionState emptyState];
    [(SBSystemActionSuppressionManagerStateReducer *)&stateReducer->super.isa setViewObstructionState:v5];
  }
}

- (uint64_t)suppressionStatus
{
  if (a1)
  {
    a1 = [(SBHomeScreenConfigurationServer *)a1[4] listener];
    v1 = vars8;
  }

  return a1;
}

- (id)initWithSelectedAction:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = SBSystemActionSuppressionManager;
    a1 = objc_msgSendSuper2(&v19, sel_init);
    if (a1)
    {
      v4 = [MEMORY[0x277CF0880] sharedBacklight];
      [v4 addObserver:a1];
      objc_initWeak(&location, a1);
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __59__SBSystemActionSuppressionManager_initWithSelectedAction___block_invoke;
      v16 = &unk_2783B0530;
      objc_copyWeak(&v17, &location);
      v5 = MEMORY[0x223D6F7F0](&v13);
      v6 = [SBSystemActionSuppressionManagerStateReducer alloc];
      v7 = +[SBSystemActionViewObstructionState emptyState];
      v8 = -[SBSystemActionSuppressionManagerStateReducer initWithReduceBlock:viewObstructionEligibility:viewObstructionState:selectedAction:pocketState:displayState:isAlwaysOnDisplayEnabled:](&v6->super.isa, v5, 1, v7, v3, 0, [v4 backlightState], objc_msgSend(v4, "isAlwaysOnEnabled"));
      v9 = a1[3];
      a1[3] = v8;

      if ([MEMORY[0x277CC1D28] isPocketStateAvailable])
      {
        v10 = objc_alloc_init(MEMORY[0x277CC1D28]);
        v11 = a1[2];
        a1[2] = v10;

        [a1[2] setDelegate:a1];
      }

      [a1 _updateViewObstructionSubscription];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void __59__SBSystemActionSuppressionManager_initWithSelectedAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReduceState:v3];
}

- (void)_subscribeToViewObstructionEvents
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_subscribedToViewObstructionEvents && [MEMORY[0x277CC1D50] isAvailable])
  {
    v3 = SBLogSystemActionSuppression();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = self;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@) subscribing to VO", buf, 0xCu);
    }

    suppressionManager = self->_suppressionManager;
    if (!suppressionManager)
    {
      v5 = [objc_alloc(MEMORY[0x277CC1D50]) initWithClientType:3];
      v6 = self->_suppressionManager;
      self->_suppressionManager = v5;

      suppressionManager = self->_suppressionManager;
    }

    self->_subscribedToViewObstructionEvents = 1;
    [(CMSuppressionManager *)suppressionManager startService];
    v7 = self->_suppressionManager;
    v8 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__SBSystemActionSuppressionManager__subscribeToViewObstructionEvents__block_invoke;
    v9[3] = &unk_2783B0558;
    v9[4] = self;
    [(CMSuppressionManager *)v7 startSuppressionUpdatesToQueue:v8 withOptions:1 withHandler:v9];
  }
}

void __69__SBSystemActionSuppressionManager__subscribeToViewObstructionEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SBLogSystemActionSuppression();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a1 + 32);
      v14 = [v6 localizedDescription];
      v15 = [v6 localizedFailureReason];
      v16 = 138544130;
      v17 = v13;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_fault_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_FAULT, "(%{public}@) suppression event error - event:%{public}@ error:%{public}@ reason:%{public}@", &v16, 0x2Au);
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = [SBSystemActionViewObstructionState stateWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@) suppression event: %{public}@", &v16, 0x16u);
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = [SBSystemActionViewObstructionState stateWithEvent:v5];
  }

  v12 = v11;
  [(SBSystemActionSuppressionManagerStateReducer *)v10 setViewObstructionState:v11];
}

- (void)_queryPocketStateWithTimeout:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1D28] isPocketStateAvailable])
  {
    v5 = SBLogSystemActionSuppression();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) querying pocket state", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    BSContinuousMachTimeNow();
    v7 = v6;
    pocketStateManager = self->_pocketStateManager;
    v9 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__SBSystemActionSuppressionManager__queryPocketStateWithTimeout___block_invoke;
    v10[3] = &unk_2783B0580;
    objc_copyWeak(v11, buf);
    v11[1] = v7;
    [(CMPocketStateManager *)pocketStateManager queryStateOntoQueue:MEMORY[0x277D85CD0] andMonitorFor:v10 withTimeout:10.0 andHandler:a3];

    objc_destroyWeak(v11);
    objc_destroyWeak(buf);
  }
}

void __65__SBSystemActionSuppressionManager__queryPocketStateWithTimeout___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = SBLogSystemActionSuppression();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__SBSystemActionSuppressionManager__queryPocketStateWithTimeout___block_invoke_cold_1(WeakRetained, v5, v8);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = SBNSStringFromCMPocketStateType(a2);
        v12 = 138543618;
        v13 = WeakRetained;
        v14 = 2114;
        v15 = v9;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "(%{public}@) pocket state queried: %{public}@", &v12, 0x16u);
      }

      [(SBSystemActionSuppressionManagerStateReducer *)WeakRetained[3] setPocketState:a2];
    }

    v10 = +[SBSystemActionAnalyticsTracker sharedTracker];
    BSContinuousMachTimeNow();
    [(SBSystemActionAnalyticsTracker *)v10 trackPocketStateQueryWithExecutionTime:v5 error:v11 - *(a1 + 40)];
  }
}

- (void)_didReduceState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = self->_state;
    objc_storeStrong(&self->_state, a3);
    [(SBSystemActionSuppressionManager *)self _updateViewObstructionSubscription];
    v7 = [(SBHomeScreenConfigurationServer *)self->_state listener];
    v8 = [(SBHomeScreenConfigurationServer *)v6 listener];
    v9 = BSEqualObjects();

    if ((v9 & 1) == 0)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v10 = [(NSHashTable *)self->_observers copy];
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v18;
        do
        {
          v14 = 0;
          do
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v17 + 1) + 8 * v14);
            v16 = [(SBHomeScreenConfigurationServer *)self->_state listener];
            [v15 systemActionSuppressionManager:self didUpdateSuppressionStatus:v16];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBSystemActionSuppressionManager_pocketStateManager_didUpdateState___block_invoke;
  v4[3] = &unk_2783A8BC8;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __70__SBSystemActionSuppressionManager_pocketStateManager_didUpdateState___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogSystemActionSuppression();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = SBNSStringFromCMPocketStateType(*(a1 + 40));
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "(%{public}@) pocket state change: %{public}@", &v5, 0x16u);
  }

  [(SBSystemActionSuppressionManagerStateReducer *)*(*(a1 + 32) + 24) setPocketState:?];
}

- (uint64_t)systemActionInteractionDidStartWithLongPressTimeout:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ((os_variant_has_internal_diagnostics() & 1) != 0 || (result = [(SBSystemActionSuppressionManagerState *)v3[4] canUsePocketStateForSuppression], result))
    {
      v4 = a2 + -0.1;
      if (a2 + -0.1 < 0.1)
      {
        v4 = 0.1;
      }

      return [v3 _queryPocketStateWithTimeout:v4];
    }
  }

  return result;
}

- (void)addObserver:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 48);
    v7 = v3;
    if (!v4)
    {
      v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v6 = *(a1 + 48);
      *(a1 + 48) = v5;

      v4 = *(a1 + 48);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

- (uint64_t)removeObserver:(uint64_t)result
{
  if (result)
  {
    return [*(result + 48) removeObject:a2];
  }

  return result;
}

void __65__SBSystemActionSuppressionManager__queryPocketStateWithTimeout___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a2 localizedDescription];
  v7 = [a2 localizedFailureReason];
  v8 = 138543874;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "(%{public}@) failed to query pocket state - error:%{public}@ reason:%{public}@", &v8, 0x20u);
}

@end