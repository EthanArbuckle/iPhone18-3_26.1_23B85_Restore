@interface RBProcessMonitor
+ (id)_clientStateForServerState:(void *)state process:;
- (NSString)description;
- (NSString)stateCaptureTitle;
- (RBProcessMonitor)initWithStateCaptureManager:(id)manager historialStatistics:(id)statistics xnuWrapper:(id)wrapper;
- (id)preventLaunchPredicates;
- (id)statesMatchingConfiguration:(id)configuration;
- (id)statesMatchingPredicate:(id)predicate;
- (void)_queue_adjustMemoryPageThresholdLimitationForProcess:(void *)process oldState:(void *)state newState:;
- (void)_queue_publishState:(void *)state forIdentity:;
- (void)_queue_suppressUpdatesForIdentity:(uint64_t)identity;
- (void)_queue_unsuppressUpdatesForIdentity:(uint64_t)identity;
- (void)_queue_updateServerState:(void *)state forProcess:(char)process force:;
- (void)addObserver:(id)observer;
- (void)didAddProcess:(id)process withState:(id)state;
- (void)didRemoveProcess:(id)process withState:(id)state;
- (void)didResolvePreventLaunchPredicates:(id)predicates;
- (void)didUpdateProcessStates:(id)states;
- (void)removeObserver:(id)observer;
- (void)removeStateForProcessIdentity:(id)identity;
- (void)suppressUpdatesForIdentity:(id)identity;
- (void)trackStateForProcessIdentity:(id)identity;
- (void)unsuppressUpdatesForIdentity:(id)identity;
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

- (RBProcessMonitor)initWithStateCaptureManager:(id)manager historialStatistics:(id)statistics xnuWrapper:(id)wrapper
{
  managerCopy = manager;
  statisticsCopy = statistics;
  wrapperCopy = wrapper;
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

    objc_storeStrong(&v12->_stateCaptureManager, manager);
    objc_storeStrong(&v12->_historicalStatistics, statistics);
    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    runningVisibleApps = v12->_runningVisibleApps;
    v12->_runningVisibleApps = v28;

    objc_storeStrong(&v12->_xnuWrapper, wrapper);
  }

  return v12;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers addObject:observerCopy];
  [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyMonitorCount:[(NSMutableSet *)self->_observers count]];
  os_unfair_lock_unlock(&self->_observersLock);
  [(RBStateCaptureManaging *)self->_stateCaptureManager addItem:observerCopy];
}

- (void)removeObserver:(id)observer
{
  stateCaptureManager = self->_stateCaptureManager;
  observerCopy = observer;
  [(RBStateCaptureManaging *)stateCaptureManager removeItem:observerCopy];
  os_unfair_lock_lock(&self->_observersLock);
  [(NSMutableSet *)self->_observers removeObject:observerCopy];

  [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyMonitorCount:[(NSMutableSet *)self->_observers count]];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (id)statesMatchingPredicate:(id)predicate
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  dispatch_assert_queue_V2(self->_queue);
  allValue = [(RBProcessMap *)self->_stateMap allValue];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = allValue;
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
        process = [v12 process];
        if ([predicateCopy matchesProcess:process])
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)statesMatchingConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  stateDescriptor = [configurationCopy stateDescriptor];

  if (stateDescriptor)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValue = [(RBProcessMap *)self->_stateMap allValue];
    v7 = [allValue countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      stateDescriptor = 0;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(allValue);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          process = [v11 process];
          if ([configurationCopy matchesProcess:process])
          {
            if (!stateDescriptor)
            {
              stateDescriptor = [MEMORY[0x277CBEB18] array];
            }

            [stateDescriptor addObject:v11];
          }
        }

        v8 = [allValue countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    else
    {
      stateDescriptor = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return stateDescriptor;
}

- (void)didAddProcess:(id)process withState:(id)state
{
  processCopy = process;
  stateCopy = state;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__RBProcessMonitor_didAddProcess_withState___block_invoke;
  block[3] = &unk_279B329D0;
  block[4] = self;
  v12 = processCopy;
  v13 = stateCopy;
  v9 = stateCopy;
  v10 = processCopy;
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

- (void)didUpdateProcessStates:(id)states
{
  statesCopy = states;
  if ([statesCopy hasChanges])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__RBProcessMonitor_didUpdateProcessStates___block_invoke;
    v6[3] = &unk_279B32B80;
    v7 = statesCopy;
    selfCopy = self;
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

- (void)didRemoveProcess:(id)process withState:(id)state
{
  processCopy = process;
  stateCopy = state;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RBProcessMonitor_didRemoveProcess_withState___block_invoke;
  block[3] = &unk_279B329D0;
  block[4] = self;
  v12 = stateCopy;
  v13 = processCopy;
  v9 = processCopy;
  v10 = stateCopy;
  dispatch_async(queue, block);
}

- (void)didResolvePreventLaunchPredicates:(id)predicates
{
  predicatesCopy = predicates;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RBProcessMonitor_didResolvePreventLaunchPredicates___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = predicatesCopy;
  v6 = predicatesCopy;
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

- (void)trackStateForProcessIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RBProcessMonitor_trackStateForProcessIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

- (void)removeStateForProcessIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__RBProcessMonitor_removeStateForProcessIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

- (void)suppressUpdatesForIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__RBProcessMonitor_suppressUpdatesForIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

- (void)unsuppressUpdatesForIdentity:(id)identity
{
  identityCopy = identity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RBProcessMonitor_unsuppressUpdatesForIdentity___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(queue, v7);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)_clientStateForServerState:(void *)state process:
{
  v4 = a2;
  stateCopy = state;
  v6 = objc_opt_self();
  if (!v4)
  {
    [RBProcessMonitor _clientStateForServerState:v6 process:?];
  }

  v7 = [v4 clientStateForProcess:stateCopy];

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
  allObjects = [v3 allObjects];
  v8 = [allObjects componentsJoinedByString:{@", \n\t"}];
  v9 = [v5 initWithFormat:@"<%@| count:%lu observers:{\n\t%@\n\t}>", v6, v4, v8];

  return v9;
}

- (void)_queue_updateServerState:(void *)state forProcess:(char)process force:
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  stateCopy = state;
  if (self)
  {
    if (!v7)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__queue_updateServerState_forProcess_force_ object:self file:@"RBProcessMonitor.m" lineNumber:291 description:@"serverState can not be nil"];
    }

    context = objc_autoreleasePoolPush();
    identity = [stateCopy identity];
    v10 = identity;
    if (identity)
    {
      identity2 = identity;
    }

    else
    {
      identity2 = [v7 identity];
    }

    v12 = identity2;

    v13 = [*(self + 16) valueForIdentity:v12];
    v14 = [RBProcessMonitor _clientStateForServerState:v7 process:stateCopy];
    [(RBProcessMonitor *)self _queue_adjustMemoryPageThresholdLimitationForProcess:v12 oldState:v13 newState:v14];
    v38 = 0;
    if ((process & 1) != 0 || [v14 isDifferentFromState:v13 significantly:&v38])
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v14 setLastStateChangeTimestamp:date];

      if ([stateCopy isReported])
      {
        v16 = rbs_monitor_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          shortDescription = [v12 shortDescription];
          [v14 taskState];
          NSStringFromRBSTaskState();
          v18 = v34 = v13;
          [v7 role];
          NSStringFromRBSRole();
          v19 = v33 = process;
          date = [v14 endowmentInfos];
          *buf = 138544130;
          v40 = shortDescription;
          v41 = 2114;
          v42 = v18;
          v43 = 2114;
          v44 = v19;
          v45 = 2112;
          v46 = date;
          _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "Calculated state for %{public}@: %{public}@ (role: %{public}@) (endowments: %@) ", buf, 0x2Au);

          process = v33;
          v13 = v34;
        }
      }

      isEmptyState = [v14 isEmptyState];
      v21 = *(self + 16);
      if (isEmptyState)
      {
        v22 = [v21 removeValueForIdentity:v12];
      }

      else
      {
        v23 = [v21 setValue:v14 forIdentity:v12];
      }

      v24 = [*(self + 24) removeValueForIdentity:v12];
      if ((process & 1) != 0 || (v38 & 1) != 0 || ([*(self + 40) containsObject:v12] & 1) == 0)
      {
        [(RBProcessMonitor *)self _queue_publishState:v14 forIdentity:v12];
        [(RBProcessMonitor *)self _queue_suppressUpdatesForIdentity:v12];
        v29 = dispatch_time(0, 100000000);
        v30 = *(self + 104);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __62__RBProcessMonitor__queue_updateServerState_forProcess_force___block_invoke;
        block[3] = &unk_279B32B80;
        block[4] = self;
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
          _os_log_debug_impl(&dword_262485000, date, OS_LOG_TYPE_DEBUG, "SUPPRESSING state update for %{public}@: %{public}@", buf, 0x16u);
        }

        v26 = [*(self + 24) setValue:v14 forIdentity:v12];
      }
    }

    else
    {
      v27 = rbs_monitor_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        shortDescription2 = [v12 shortDescription];
        *buf = 138543362;
        v40 = shortDescription2;
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

- (void)_queue_suppressUpdatesForIdentity:(uint64_t)identity
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (identity)
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

- (void)_queue_unsuppressUpdatesForIdentity:(uint64_t)identity
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (identity)
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

        v8 = [*(identity + 24) valueForIdentity:v3];
        if (v8)
        {
          [(RBProcessMonitor *)identity _queue_publishState:v8 forIdentity:v3];
        }

        [*(identity + 24) removeIdentity:v3];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_publishState:(void *)state forIdentity:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  stateCopy = state;
  if (self)
  {
    v7 = rbs_monitor_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v28 = stateCopy;
      v29 = 2114;
      v30 = v5;
      _os_log_debug_impl(&dword_262485000, v7, OS_LOG_TYPE_DEBUG, "Sending state update for %{public}@: %{public}@", buf, 0x16u);
    }

    v8 = [*(self + 32) valueForIdentity:stateCopy];
    [v5 encodeWithPreviousState:v8];
    v26 = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    os_unfair_lock_lock((self + 48));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(self + 56);
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

          [*(*(&v21 + 1) + 8 * v14++) processMonitor:self didChangeProcessStates:{v9, v21}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock((self + 48));
    isEmptyState = [v5 isEmptyState];
    v16 = *(self + 32);
    if (isEmptyState)
    {
      v17 = [v16 removeValueForIdentity:stateCopy];
      v18 = [*(self + 16) removeValueForIdentity:stateCopy];
    }

    else
    {
      v19 = [v16 setValue:v5 forIdentity:stateCopy];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_queue_adjustMemoryPageThresholdLimitationForProcess:(void *)process oldState:(void *)state newState:
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  processCopy = process;
  stateCopy = state;
  if (self)
  {
    if ([*(self + 96) ballastOffsetMB])
    {
      if ([v7 isApplication])
      {
        embeddedApplicationIdentifier = [v7 embeddedApplicationIdentifier];
        v11 = [embeddedApplicationIdentifier isEqual:@"com.apple.chrono.WidgetRenderer-Default"];

        if ((v11 & 1) == 0)
        {
          taskState = [processCopy taskState];
          v13 = MEMORY[0x277D470D0];
          if (taskState == 4)
          {
            endowmentNamespaces = [processCopy endowmentNamespaces];
            v15 = [endowmentNamespaces containsObject:*v13];
          }

          else
          {
            v15 = 0;
          }

          if ([stateCopy taskState] == 4)
          {
            endowmentNamespaces2 = [stateCopy endowmentNamespaces];
            v17 = [endowmentNamespaces2 containsObject:*v13];

            if (!(v15 & 1 | ((v17 & 1) == 0)))
            {
              [*(self + 88) addObject:v7];
              if ([*(self + 88) count] == 1)
              {
                if ([*(self + 96) setBallastDrained:0] < 0)
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
              [*(self + 88) removeObject:v7];
              if (![*(self + 88) count])
              {
                if ([*(self + 96) setBallastDrained:1] < 0)
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