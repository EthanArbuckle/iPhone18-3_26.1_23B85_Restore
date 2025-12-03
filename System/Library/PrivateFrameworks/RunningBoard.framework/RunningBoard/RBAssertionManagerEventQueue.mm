@interface RBAssertionManagerEventQueue
- (RBAssertionManagerEventQueue)initWithTimeProvider:(id)provider;
- (RBAssertionManagerQueueDelegate)delegate;
- (id)description;
- (unint64_t)count;
- (void)_queue_enqueueEventsForAssertion:(uint64_t)assertion;
- (void)_queue_enqueueInvalidationEventForAssertion:(double)assertion startTime:;
- (void)_queue_enqueueProcessExpirationEventsForProcesses:(id *)processes;
- (void)_queue_enqueueWarningEventForAssertion:(double)assertion startTime:;
- (void)_queue_removeEventsForContext:(uint64_t)context;
- (void)_queue_updateEventsForAssertion:(uint64_t)assertion;
- (void)updateEventsForAssertions:(id)assertions;
@end

@implementation RBAssertionManagerEventQueue

- (RBAssertionManagerEventQueue)initWithTimeProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = RBAssertionManagerEventQueue;
  v6 = [(RBAssertionManagerEventQueue *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277D47028] createSyncingQueue:@"RBAssertionManagerEventQueue"];
    queue = v7->_queue;
    v7->_queue = v8;

    v10 = objc_alloc_init(RBProcessMap);
    expirationWarningEvents = v7->_expirationWarningEvents;
    v7->_expirationWarningEvents = v10;

    objc_storeStrong(&v7->_timeProvider, provider);
    v12 = [[RBEventQueue alloc] initWithQueue:v7->_queue timeProvider:providerCopy];
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v12;
  }

  return v7;
}

- (void)updateEventsForAssertions:(id)assertions
{
  assertionsCopy = assertions;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__RBAssertionManagerEventQueue_updateEventsForAssertions___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = assertionsCopy;
  v6 = assertionsCopy;
  dispatch_async(queue, v7);
}

void __58__RBAssertionManagerEventQueue_updateEventsForAssertions___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__RBAssertionManagerEventQueue_updateEventsForAssertions___block_invoke_2;
  v5[3] = &unk_279B32B80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 batchModify:v5];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void __58__RBAssertionManagerEventQueue_updateEventsForAssertions___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 target];
        v10 = [v9 identity];

        if (v10)
        {
          [v2 addObject:v10];
        }

        [(RBAssertionManagerEventQueue *)*(a1 + 40) _queue_updateEventsForAssertion:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(RBAssertionManagerEventQueue *)*(a1 + 40) _queue_enqueueProcessExpirationEventsForProcesses:v2];
  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__RBAssertionManagerEventQueue_count__block_invoke;
  v5[3] = &unk_279B32BA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __37__RBAssertionManagerEventQueue_count__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 24) count];
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__RBAssertionManagerEventQueue_description__block_invoke;
  v5[3] = &unk_279B32BA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__RBAssertionManagerEventQueue_description__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() description];
  v5 = [*(*(a1 + 32) + 24) count];
  v6 = [*(*(a1 + 32) + 24) debugDescription];
  v7 = [v2 initWithFormat:@"<%@| eventCount:%lu eventQueue:%@>", v4, v5, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v10);
}

void __65__RBAssertionManagerEventQueue__queue_enqueueEventsForAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained eventQueue:*(a1 + 32) startTimeForAssertion:*(a1 + 40)];
  v4 = v3;

  [(RBAssertionManagerEventQueue *)*(a1 + 32) _queue_enqueueWarningEventForAssertion:v4 startTime:?];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  [(RBAssertionManagerEventQueue *)v5 _queue_enqueueInvalidationEventForAssertion:v6 startTime:v4];
}

void __81__RBAssertionManagerEventQueue__queue_enqueueWarningEventForAssertion_startTime___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isActive];
  WeakRetained = rbs_assertion_log();
  v4 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_262485000, WeakRetained, OS_LOG_TYPE_INFO, "Assertion warning event: %{public}@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained eventQueue:*(a1 + 40) handleWarningEventForAssertion:*(a1 + 32)];
  }

  else if (v4)
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_262485000, WeakRetained, OS_LOG_TYPE_INFO, "Ignoring assertion warning event fired for inactive assertion: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __86__RBAssertionManagerEventQueue__queue_enqueueInvalidationEventForAssertion_startTime___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isActive];
  v3 = rbs_assertion_log();
  WeakRetained = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_262485000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Assertion did invalidate due to timeout: %{public}@", &v8, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained eventQueue:*(a1 + 40) handleInvalidationEventForAssertion:*(a1 + 32)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_262485000, WeakRetained, OS_LOG_TYPE_INFO, "Ignoring assertion timeout event fired for inactive assertion: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __82__RBAssertionManagerEventQueue__queue_enqueueProcessExpirationEventsForProcesses___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(*(a1 + 32) + 32) removeIdentity:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained eventQueue:*(a1 + 32) handleAssertionsExpirationWarningEventForProcessIdentity:*(a1 + 40) expirationTime:*(a1 + 48)];
}

- (RBAssertionManagerQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_updateEventsForAssertion:(uint64_t)assertion
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (assertion)
  {
    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138543362;
      v9 = v3;
      OUTLINED_FUNCTION_1_1(&dword_262485000, v5, v6, "Updating events for assertion: %{public}@", &v8);
    }

    [(RBAssertionManagerEventQueue *)assertion _queue_removeEventsForContext:v3];
    [(RBAssertionManagerEventQueue *)assertion _queue_enqueueEventsForAssertion:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_enqueueProcessExpirationEventsForProcesses:(id *)processes
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = v3;
  if (processes)
  {
    v12 = OUTLINED_FUNCTION_2_1(v3, v4, v5, v6, v7, v8, v9, v10, v38, v40, v41, v43, v44, v45, v46, processesCopy, v48, v49, 0, 0, 0, 0, 0, 0, 0, 0, *buf, *&buf[8], *&buf[16], v59, v60);
    if (v12)
    {
      v14 = v12;
      v15 = *v52;
      *&v13 = 138543874;
      v39 = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(v51 + 8 * i);
          v18 = [processes[4] removeValueForIdentity:{v17, v39}];
          if (v18)
          {
            [processes[3] removeEvent:v18];
          }

          WeakRetained = objc_loadWeakRetained(processes + 6);
          [WeakRetained eventQueue:processes remainingRuntimeForProcessIdentity:v17];
          v21 = v20;

          if (v21 <= 0.5)
          {
            [processes[4] removeIdentity:v17];
          }

          else
          {
            [processes[5] currentTime];
            v23 = fmax(v21 + -5.0, 0.0) + v22;
            v24 = v21 + v22;
            v25 = rbs_assertion_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              shortDescription = [v17 shortDescription];
              *buf = v39;
              *&buf[4] = shortDescription;
              *&buf[12] = 2048;
              *&buf[14] = v23;
              *&buf[22] = 2048;
              v59 = *&v24;
              _os_log_debug_impl(&dword_262485000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ - New process assertions warning time: %f expiration time: %f.", buf, 0x20u);
            }

            v26 = objc_alloc_init(RBEventQueueEvent);
            [(RBEventQueueEvent *)v26 setContext:v17];
            [(RBEventQueueEvent *)v26 setEventTime:v23];
            v43 = MEMORY[0x277D85DD0];
            v44 = 3221225472;
            v45 = __82__RBAssertionManagerEventQueue__queue_enqueueProcessExpirationEventsForProcesses___block_invoke;
            v46 = &unk_279B32BF8;
            processesCopy = processes;
            v48 = v17;
            v49 = *&v24;
            [(RBEventQueueEvent *)v26 setAction:&v43];
            v27 = [processes[4] setValue:v26 forIdentity:v17];
            [processes[3] addEvent:v26];
          }
        }

        v14 = OUTLINED_FUNCTION_2_1(v28, v29, v30, v31, v32, v33, v34, v35, v39, *(&v39 + 1), v42, v43, v44, v45, v46, processesCopy, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *buf, *&buf[8], *&buf[16], v59, v60);
      }

      while (v14);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeEventsForContext:(uint64_t)context
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (context)
  {
    v4 = rbs_assertion_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138543362;
      v22 = v3;
      OUTLINED_FUNCTION_1_1(&dword_262485000, v5, v6, "Removing events for context: %{public}@", &v21);
    }

    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    events = [*(context + 24) events];
    v9 = [events countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(events);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          context = [v13 context];

          if (context == v3)
          {
            [array addObject:v13];
          }
        }

        v10 = [events countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    if ([array count])
    {
      [*(context + 24) removeEvents:array];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_queue_enqueueEventsForAssertion:(uint64_t)assertion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (assertion && [v3 isActive] && objc_msgSend(v4, "isValid"))
  {
    v5 = rbs_assertion_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138543362;
      v13 = v4;
      OUTLINED_FUNCTION_1_1(&dword_262485000, v6, v7, "Enqueueing events for assertion: %{public}@", &v12);
    }

    v8 = *(assertion + 24);
    OUTLINED_FUNCTION_0_2();
    v10[1] = 3221225472;
    v10[2] = __65__RBAssertionManagerEventQueue__queue_enqueueEventsForAssertion___block_invoke;
    v10[3] = &unk_279B32B80;
    v10[4] = assertion;
    v11 = v4;
    [v8 batchModify:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_enqueueWarningEventForAssertion:(double)assertion startTime:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 warningDuration];
    v8 = v7;
    if ([v6 isActive])
    {
      if ([v6 isValid] && v8 > 0.0)
      {
        [v6 invalidationDuration];
        v10 = fmax(v9 - v8, 0.0) + assertion;
        v11 = objc_alloc_init(RBEventQueueEvent);
        [(RBEventQueueEvent *)v11 setContext:v6];
        [(RBEventQueueEvent *)v11 setEventTime:v10];
        OUTLINED_FUNCTION_0_2();
        v12[1] = 3221225472;
        v12[2] = __81__RBAssertionManagerEventQueue__queue_enqueueWarningEventForAssertion_startTime___block_invoke;
        v12[3] = &unk_279B32BD0;
        v13 = v6;
        selfCopy = self;
        [(RBEventQueueEvent *)v11 setAction:v12];
        [*(self + 24) addEvent:v11];
      }
    }
  }
}

- (void)_queue_enqueueInvalidationEventForAssertion:(double)assertion startTime:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if ([v5 isActive])
    {
      if ([v6 isValid])
      {
        [v6 invalidationDuration];
        if (v7 > 0.0)
        {
          if ([v6 endPolicy])
          {
            [v6 invalidationDuration];
            v9 = fmax(v8 + assertion, 0.0);
            v10 = objc_alloc_init(RBEventQueueEvent);
            [(RBEventQueueEvent *)v10 setContext:v6];
            [(RBEventQueueEvent *)v10 setEventTime:v9];
            OUTLINED_FUNCTION_0_2();
            v11[1] = 3221225472;
            v11[2] = __86__RBAssertionManagerEventQueue__queue_enqueueInvalidationEventForAssertion_startTime___block_invoke;
            v11[3] = &unk_279B32BD0;
            v12 = v6;
            selfCopy = self;
            [(RBEventQueueEvent *)v10 setAction:v11];
            [*(self + 24) addEvent:v10];
          }
        }
      }
    }
  }
}

@end