@interface RBProcessMonitor
+ (id)_clientStateForServerState:(void *)a3 process:;
- (NSString)description;
- (NSString)stateCaptureTitle;
- (RBProcessMonitor)initWithStateCaptureManager:(id)a3 historialStatistics:(id)a4 xnuWrapper:(id)a5;
- (id)preventLaunchPredicates;
- (id)statesMatchingConfiguration:(id)a3;
- (id)statesMatchingPredicate:(id)a3;
- (void)_queue_adjustMemoryPageThresholdLimitationForProcess:(void *)a3 oldState:(void *)a4 newState:;
- (void)_queue_publishState:(void *)a3 forIdentity:;
- (void)_queue_suppressUpdatesForIdentity:(uint64_t)a1;
- (void)_queue_unsuppressUpdatesForIdentity:(uint64_t)a1;
- (void)_queue_updateServerState:(void *)a3 forProcess:(char)a4 force:;
- (void)addObserver:(id)a3;
- (void)didAddProcess:(id)a3 withState:(id)a4;
- (void)didRemoveProcess:(id)a3 withState:(id)a4;
- (void)didResolvePreventLaunchPredicates:(id)a3;
- (void)didUpdateProcessStates:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeStateForProcessIdentity:(id)a3;
- (void)suppressUpdatesForIdentity:(id)a3;
- (void)trackStateForProcessIdentity:(id)a3;
- (void)unsuppressUpdatesForIdentity:(id)a3;
@end

@implementation RBProcessMonitor

- (id)preventLaunchPredicates
{
  dispatch_assert_queue_V2(self->_queue);
  preventLaunchPredicates = self->_preventLaunchPredicates;
  if (preventLaunchPredicates)
  {
    v4 = preventLaunchPredicates;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

- (RBProcessMonitor)initWithStateCaptureManager:(id)a3 historialStatistics:(id)a4 xnuWrapper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = RBProcessMonitor;
  v12 = [(RBProcessMonitor *)&v31 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("RBProcessMonitor", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    v16 = objc_alloc_init(RBProcessIndex);
    processIndex = v12->_processIndex;
    v12->_processIndex = v16;

    v18 = objc_alloc_init(RBProcessMap);
    stateMap = v12->_stateMap;
    v12->_stateMap = v18;

    v20 = objc_alloc_init(RBProcessMap);
    suppressedState = v12->_suppressedState;
    v12->_suppressedState = v20;

    v22 = objc_alloc_init(RBProcessMap);
    publishedState = v12->_publishedState;
    v12->_publishedState = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCA940]);
    suppressedIdentities = v12->_suppressedIdentities;
    v12->_suppressedIdentities = v24;

    v12->_observersLock._os_unfair_lock_opaque = 0;
    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    observers = v12->_observers;
    v12->_observers = v26;

    objc_storeStrong(&v12->_stateCaptureManager, a3);
    objc_storeStrong(&v12->_historicalStatistics, a4);
    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    runningVisibleApps = v12->_runningVisibleApps;
    v12->_runningVisibleApps = v28;

    objc_storeStrong(&v12->_xnuWrapper, a5);
  }

  return v12;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers addObject:v4];
  [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyMonitorCount:[(NSMutableSet *)self->_observers count]];
  os_unfair_lock_unlock(&self->_observersLock);
  [(RBStateCaptureManaging *)self->_stateCaptureManager addItem:v4];
}

- (void)removeObserver:(id)a3
{
  stateCaptureManager = self->_stateCaptureManager;
  v5 = a3;
  [(RBStateCaptureManaging *)stateCaptureManager removeItem:v5];
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers removeObject:v5];

  [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyMonitorCount:[(NSMutableSet *)self->_observers count]];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (id)statesMatchingPredicate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(RBProcessMap *)self->_stateMap allValue];
  v6 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 process];
        if ([v4 matchesProcess:v13])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)statesMatchingConfiguration:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stateDescriptor];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(RBProcessMap *)self->_stateMap allValue];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 process];
          if ([v4 matchesProcess:v12])
          {
            if (!v5)
            {
              v5 = [MEMORY[0x277CBEB18] array];
            }

            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)didAddProcess:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RBProcessMonitor_didAddProcess_withState___block_invoke;
  block[3] = &unk_279B329D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __44__RBProcessMonitor_didAddProcess_withState___block_invoke(void *a1)
{
  [*(a1[4] + 8) addProcess:a1[5]];
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];

  [(RBProcessMonitor *)v4 _queue_updateServerState:v2 forProcess:v3 force:1];
}

- (void)didUpdateProcessStates:(id)a3
{
  v4 = a3;
  if ([v4 hasChanges])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__RBProcessMonitor_didUpdateProcessStates___block_invoke;
    v6[3] = &unk_279B32B80;
    v7 = v4;
    v8 = self;
    dispatch_async(queue, v6);
  }
}

void __43__RBProcessMonitor_didUpdateProcessStates___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 identity];
        v9 = [*(*(a1 + 40) + 8) processForIdentity:v8];
        v10 = *(a1 + 40);
        v11 = [v7 updatedState];
        [(RBProcessMonitor *)v10 _queue_updateServerState:v11 forProcess:v9 force:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didRemoveProcess:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RBProcessMonitor_didRemoveProcess_withState___block_invoke;
  block[3] = &unk_279B329D0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)didResolvePreventLaunchPredicates:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RBProcessMonitor_didResolvePreventLaunchPredicates___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __54__RBProcessMonitor_didResolvePreventLaunchPredicates___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  os_unfair_lock_lock((*(a1 + 32) + 48));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) didResolvePreventLaunchPredicates:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)trackStateForProcessIdentity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RBProcessMonitor_trackStateForProcessIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)removeStateForProcessIdentity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RBProcessMonitor_removeStateForProcessIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)suppressUpdatesForIdentity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RBProcessMonitor_suppressUpdatesForIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)unsuppressUpdatesForIdentity:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RBProcessMonitor_unsuppressUpdatesForIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)_clientStateForServerState:(void *)a3 process:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (!v4)
  {
    [RBProcessMonitor _clientStateForServerState:v6 process:?];
  }

  v7 = [v4 clientStateForProcess:v5];

  return v7;
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSMutableSet *)self->_observers copy];
  os_unfair_lock_unlock(&self->_observersLock);
  v4 = [v3 count];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [objc_opt_class() description];
  v7 = [v3 allObjects];
  v8 = [v7 componentsJoinedByString:{@", \n\t"}];
  v9 = [v5 initWithFormat:@"<%@| count:%lu observers:{\n\t%@\n\t}>", v6, v4, v8];

  return v9;
}

- (void)_queue_updateServerState:(void *)a3 forProcess:(char)a4 force:
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (!v7)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:sel__queue_updateServerState_forProcess_force_ object:a1 file:@"RBProcessMonitor.m" lineNumber:291 description:@"serverState can not be nil"];
    }

    context = objc_autoreleasePoolPush();
    v9 = [v8 identity];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 identity];
    }

    v12 = v11;

    v13 = [*(a1 + 16) valueForIdentity:v12];
    v14 = [RBProcessMonitor _clientStateForServerState:v7 process:v8];
    [(RBProcessMonitor *)a1 _queue_adjustMemoryPageThresholdLimitationForProcess:v12 oldState:v13 newState:v14];
    v38 = 0;
    if ((a4 & 1) != 0 || [v14 isDifferentFromState:v13 significantly:&v38])
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      [v14 setLastStateChangeTimestamp:v15];

      if ([v8 isReported])
      {
        v16 = rbs_monitor_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v12 shortDescription];
          [v14 taskState];
          NSStringFromRBSTaskState();
          v18 = v34 = v13;
          [v7 role];
          NSStringFromRBSRole();
          v19 = v33 = a4;
          v15 = [v14 endowmentInfos];
          *buf = 138544130;
          v40 = v17;
          v41 = 2114;
          v42 = v18;
          v43 = 2114;
          v44 = v19;
          v45 = 2112;
          v46 = v15;
          _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "Calculated state for %{public}@: %{public}@ (role: %{public}@) (endowments: %@) ", buf, 0x2Au);

          a4 = v33;
          v13 = v34;
        }
      }

      v20 = [v14 isEmptyState];
      v21 = *(a1 + 16);
      if (v20)
      {
        v22 = [v21 removeValueForIdentity:v12];
      }

      else
      {
        v23 = [v21 setValue:v14 forIdentity:v12];
      }

      v24 = [*(a1 + 24) removeValueForIdentity:v12];
      if ((a4 & 1) != 0 || (v38 & 1) != 0 || ([*(a1 + 40) containsObject:v12] & 1) == 0)
      {
        [(RBProcessMonitor *)a1 _queue_publishState:v14 forIdentity:v12];
        [(RBProcessMonitor *)a1 _queue_suppressUpdatesForIdentity:v12];
        v29 = dispatch_time(0, 100000000);
        v30 = *(a1 + 104);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__RBProcessMonitor__queue_updateServerState_forProcess_force___block_invoke;
        block[3] = &unk_279B32B80;
        block[4] = a1;
        v37 = v12;
        dispatch_after(v29, v30, block);
      }

      else
      {
        v25 = rbs_monitor_log();
        if (OUTLINED_FUNCTION_2_3(v25))
        {
          *buf = 138543618;
          v40 = v12;
          v41 = 2114;
          v42 = v14;
          _os_log_debug_impl(&dword_262485000, v15, OS_LOG_TYPE_DEBUG, "SUPPRESSING state update for %{public}@: %{public}@", buf, 0x16u);
        }

        v26 = [*(a1 + 24) setValue:v14 forIdentity:v12];
      }
    }

    else
    {
      v27 = rbs_monitor_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v12 shortDescription];
        *buf = 138543362;
        v40 = v28;
        _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_INFO, "Ignoring insignificant state update for %{public}@", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(context);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __47__RBProcessMonitor_didRemoveProcess_withState___block_invoke(uint64_t a1)
{
  [(RBProcessMonitor *)*(a1 + 32) _queue_updateServerState:*(a1 + 48) forProcess:1 force:?];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 48);

  return [v2 removeProcess:v3];
}

- (void)_queue_suppressUpdatesForIdentity:(uint64_t)a1
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    [OUTLINED_FUNCTION_2_7() addObject:?];
    if ([OUTLINED_FUNCTION_2_7() countForObject:?] == 1)
    {
      v5 = rbs_monitor_log();
      if (OUTLINED_FUNCTION_2_3(v5))
      {
        OUTLINED_FUNCTION_0_7();
        OUTLINED_FUNCTION_1_9();
        _os_log_debug_impl(v13, v14, v15, v16, v17, 0xCu);
      }
    }

    v6 = rbs_monitor_log();
    if (OUTLINED_FUNCTION_2_3(v6))
    {
      [OUTLINED_FUNCTION_2_7() countForObject:?];
      OUTLINED_FUNCTION_1_9();
      _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_unsuppressUpdatesForIdentity:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [OUTLINED_FUNCTION_2_7() countForObject:?];
    if (v4)
    {
      v5 = v4;
      v6 = rbs_monitor_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v15 = 134218242;
        v16 = v5 - 1;
        v17 = 2114;
        v18 = v3;
        _os_log_debug_impl(&dword_262485000, v6, OS_LOG_TYPE_DEBUG, "Decrementing suppression state to %lu for %{public}@", &v15, 0x16u);
      }

      [OUTLINED_FUNCTION_2_7() removeObject:?];
      if (v5 == 1)
      {
        v7 = rbs_monitor_log();
        if (OUTLINED_FUNCTION_2_3(v7))
        {
          OUTLINED_FUNCTION_0_7();
          OUTLINED_FUNCTION_1_9();
          _os_log_debug_impl(v10, v11, v12, v13, v14, 0xCu);
        }

        v8 = [*(a1 + 24) valueForIdentity:v3];
        if (v8)
        {
          [(RBProcessMonitor *)a1 _queue_publishState:v8 forIdentity:v3];
        }

        [*(a1 + 24) removeIdentity:v3];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_publishState:(void *)a3 forIdentity:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = rbs_monitor_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v28 = v6;
      v29 = 2114;
      v30 = v5;
      _os_log_debug_impl(&dword_262485000, v7, OS_LOG_TYPE_DEBUG, "Sending state update for %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 32) valueForIdentity:v6];
    [v5 encodeWithPreviousState:v8];
    v26 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    os_unfair_lock_lock((a1 + 48));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v21 + 1) + 8 * v14++) processMonitor:a1 didChangeProcessStates:{v9, v21}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock((a1 + 48));
    v15 = [v5 isEmptyState];
    v16 = *(a1 + 32);
    if (v15)
    {
      v17 = [v16 removeValueForIdentity:v6];
      v18 = [*(a1 + 16) removeValueForIdentity:v6];
    }

    else
    {
      v19 = [v16 setValue:v5 forIdentity:v6];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_queue_adjustMemoryPageThresholdLimitationForProcess:(void *)a3 oldState:(void *)a4 newState:
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([*(a1 + 96) ballastOffsetMB])
    {
      if ([v7 isApplication])
      {
        v10 = [v7 embeddedApplicationIdentifier];
        v11 = [v10 isEqual:@"com.apple.chrono.WidgetRenderer-Default"];

        if ((v11 & 1) == 0)
        {
          v12 = [v8 taskState];
          v13 = MEMORY[0x277D470D0];
          if (v12 == 4)
          {
            v14 = [v8 endowmentNamespaces];
            v15 = [v14 containsObject:*v13];
          }

          else
          {
            v15 = 0;
          }

          if ([v9 taskState] == 4)
          {
            v16 = [v9 endowmentNamespaces];
            v17 = [v16 containsObject:*v13];

            if (!(v15 & 1 | ((v17 & 1) == 0)))
            {
              [*(a1 + 88) addObject:v7];
              if ([*(a1 + 88) count] == 1)
              {
                if ([*(a1 + 96) setBallastDrained:0] < 0)
                {
                  v18 = rbs_general_log();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                  {
                    v35 = __error();
                    strerror(*v35);
                    OUTLINED_FUNCTION_0_7();
                    v38 = 2082;
                    v39 = v36;
                    _os_log_error_impl(&dword_262485000, v18, OS_LOG_TYPE_ERROR, "Error setting ballast drained for %@: %{public}s", v37, 0x16u);
                  }
                }

                v19 = rbs_process_log();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_0_7();
                  _os_log_impl(&dword_262485000, v19, OS_LOG_TYPE_DEFAULT, "Foreground app is %@, setting ballast drained to NO", v37, 0xCu);
                }
              }
            }
          }

          else
          {
            v17 = 0;
          }

          if (v15)
          {
            if ((v17 & 1) == 0)
            {
              [*(a1 + 88) removeObject:v7];
              if (![*(a1 + 88) count])
              {
                if ([*(a1 + 96) setBallastDrained:1] < 0)
                {
                  v20 = rbs_process_log();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    OUTLINED_FUNCTION_0_7();
                    OUTLINED_FUNCTION_3_3(&dword_262485000, v21, v22, "Error setting ballast drained to YES for %@", v23, v24, v25, v26, v37[0]);
                  }
                }

                v27 = rbs_process_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  OUTLINED_FUNCTION_0_7();
                  OUTLINED_FUNCTION_3_3(&dword_262485000, v28, v29, "The last foreground app removed was app is %@, setting ballast drained to YES", v30, v31, v32, v33, v37[0]);
                }
              }
            }
          }
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

+ (void)_clientStateForServerState:(uint64_t)a1 process:.cold.1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:sel__clientStateForServerState_process_ object:a1 file:@"RBProcessMonitor.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"serverState != nil"}];
}

@end