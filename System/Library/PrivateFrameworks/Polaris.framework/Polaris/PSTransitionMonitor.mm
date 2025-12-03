@interface PSTransitionMonitor
+ (id)stateToString:(unsigned int)string;
- (PSTransitionManager)transitionManager;
- (PSTransitionMonitor)initWithTransitionManager:(id)manager;
- (id)generateErrorForStateAddExecutorGraphs;
- (id)generateErrorForStateBufferDeinit;
- (id)generateErrorForStateBufferInit;
- (id)generateErrorForStateDomainResolution;
- (id)generateErrorForStateGroupedTriggersDeinit;
- (id)generateErrorForStateGroupedTriggersInit;
- (id)generateErrorForStateLocalSourceDeinit;
- (id)generateErrorForStateLocalSourceInit;
- (id)generateErrorForStateRemoveExecutorGraphs;
- (id)generateErrorForStateStarting;
- (id)generateErrorForStateSysGraphNotify;
- (id)generateErrorForStateSystemGraphInit;
- (id)getError;
- (id)getPendingSystemGraphKeys:(id)keys;
- (id)getThreadPoolInfo:(ps_exec_shared_thread_pool_s *)info forSubgraph:;
- (uint64_t)getError;
- (void)NO_RESPONSE_FROM_ARBITRARY_PRODUCER_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t;
- (void)NO_RESPONSE_FROM_ARKIT_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t;
- (void)NO_RESPONSE_FROM_CVCAL_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t;
- (void)NO_RESPONSE_FROM_MULTIPLE_PRODUCERS_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t;
- (void)NO_RESPONSE_FROM_REALITYCAMERA_TO_START_CAMERAS:(id)s SHOULD_ABORT:(BOOL)t;
- (void)TIMED_OUT_IN_STATE_ADD_EXEC_GRAPHS:(id)s SHOULD_ABORT:(BOOL)t;
- (void)TIMED_OUT_IN_STATE_BUFFER_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_BUFFER_INIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_DOMAIN_RESOLUTION:(id)n SHOULD_ABORT:(BOOL)t;
- (void)TIMED_OUT_IN_STATE_GST_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_GST_INIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_LOCAL_SOURCE_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_LOCAL_SOURCE_INIT:(id)t SHOULD_ABORT:(BOOL)rT;
- (void)TIMED_OUT_IN_STATE_REMOVE_EXEC_GRAPHS:(id)s SHOULD_ABORT:(BOOL)t;
- (void)TIMED_OUT_IN_STATE_STARTING:(id)g SHOULD_ABORT:(BOOL)t;
- (void)TIMED_OUT_IN_STATE_SYSTEM_GRAPH_NOTIFY:(id)y SHOULD_ABORT:(BOOL)t;
- (void)armDiagnosticsTimer:(unint64_t)timer;
- (void)armTimeoutTimer:(unint64_t)timer;
- (void)cancelTimers;
- (void)dealloc;
- (void)start:(double)start;
- (void)updateTransitionCompleted;
@end

@implementation PSTransitionMonitor

+ (id)stateToString:(unsigned int)string
{
  if (string < 0xD)
  {
    return off_279A48978[string];
  }

  v9[1] = v3;
  v9[2] = v4;
  v6 = [(PSTransitionMonitor *)v9 stateToString:string];
  return [(PSTransitionMonitor *)v6 initWithTransitionManager:v7, v8];
}

- (PSTransitionMonitor)initWithTransitionManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PSTransitionMonitor;
  v5 = [(PSTransitionMonitor *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_transitionManager, managerCopy);
    v6->_transitionState = 12;
    v7 = objc_alloc_init(MEMORY[0x277CCA928]);
    transitionCond = v6->_transitionCond;
    v6->_transitionCond = v7;

    v9 = ps_util_create_serial_dispatch_queue("com.apple.polaris.transition_monitor_timer_queue");
    timerQueue = v6->_timerQueue;
    v6->_timerQueue = v9;

    v6->_didTimeoutOnce = 0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    subGraphsToBeRemoved = v6->_subGraphsToBeRemoved;
    v6->_subGraphsToBeRemoved = v11;

    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)dealloc
{
  ps_util_release_dispatch_queue(self->_timerQueue);
  v3.receiver = self;
  v3.super_class = PSTransitionMonitor;
  [(PSTransitionMonitor *)&v3 dealloc];
}

- (void)armTimeoutTimer:(unint64_t)timer
{
  v3 = 1000000000 * timer;
  source = [(PSTransitionMonitor *)self timeoutTimer];
  v4 = dispatch_time(0, v3);
  dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)armDiagnosticsTimer:(unint64_t)timer
{
  v3 = 1000000000 * timer;
  source = [(PSTransitionMonitor *)self diagnosticsTimer];
  v4 = dispatch_time(0, v3);
  dispatch_source_set_timer(source, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)cancelTimers
{
  timeoutTimer = [(PSTransitionMonitor *)self timeoutTimer];
  dispatch_source_cancel(timeoutTimer);

  diagnosticsTimer = [(PSTransitionMonitor *)self diagnosticsTimer];
  dispatch_source_cancel(diagnosticsTimer);
}

- (void)updateTransitionCompleted
{
  objc_initWeak(&location, self);
  timerQueue = [(PSTransitionMonitor *)self timerQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PSTransitionMonitor_updateTransitionCompleted__block_invoke;
  v4[3] = &unk_279A48298;
  objc_copyWeak(&v5, &location);
  dispatch_sync(timerQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __48__PSTransitionMonitor_updateTransitionCompleted__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained transitionCond];
    [v3 lock];

    [v2 setTransitionState:12];
    v4 = [v2 transitionCond];
    [v4 broadcast];

    [v2 cancelTimers];
    v5 = [v2 transitionCond];
    [v5 unlock];
  }

  else
  {
    v5 = __PSUtilitiesLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Could not obtain strongSelf.", v6, 2u);
    }
  }
}

- (id)getError
{
  transitionState = [(PSTransitionMonitor *)self transitionState];
  v4 = [PSTransitionMonitor stateToString:transitionState];
  v5 = [(PSTransitionMonitor *)self generateErrorForState:transitionState];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CBEB38];
    userInfo = [v5 userInfo];
    v9 = [v7 dictionaryWithDictionary:userInfo];

    v10 = MEMORY[0x277CCACA8];
    localizedDescription = [v6 localizedDescription];
    v12 = [v10 stringWithFormat:@"Transition Failure (%@): %@", v4, localizedDescription];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA450]];

    v13 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:objc_msgSend(v6 userInfo:{"code"), v9}];

    return v13;
  }

  else
  {
    getError = [(PSTransitionMonitor *)&v18 getError];
    [(PSTransitionMonitor *)getError start:v16, v17];
  }

  return result;
}

- (void)start:(double)start
{
  v5 = MEMORY[0x277D85D38];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timerQueue);
  [(PSTransitionMonitor *)self setTimeoutTimer:v6];

  v7 = dispatch_source_create(v5, 0, 0, self->_timerQueue);
  [(PSTransitionMonitor *)self setDiagnosticsTimer:v7];

  objc_initWeak(&location, self);
  timeoutTimer = [(PSTransitionMonitor *)self timeoutTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __29__PSTransitionMonitor_start___block_invoke;
  handler[3] = &unk_279A48958;
  objc_copyWeak(v15, &location);
  handler[4] = self;
  v15[1] = *&start;
  dispatch_source_set_event_handler(timeoutTimer, handler);

  diagnosticsTimer = [(PSTransitionMonitor *)self diagnosticsTimer];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__PSTransitionMonitor_start___block_invoke_2;
  v12[3] = &unk_279A48298;
  objc_copyWeak(&v13, &location);
  dispatch_source_set_event_handler(diagnosticsTimer, v12);

  [(PSTransitionMonitor *)self armTimeoutTimer:start];
  [(PSTransitionMonitor *)self armDiagnosticsTimer:fmin(start, 10.0)];
  timeoutTimer2 = [(PSTransitionMonitor *)self timeoutTimer];
  dispatch_resume(timeoutTimer2);

  diagnosticsTimer2 = [(PSTransitionMonitor *)self diagnosticsTimer];
  dispatch_resume(diagnosticsTimer2);

  objc_destroyWeak(&v13);
  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

void __29__PSTransitionMonitor_start___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained transitionManager];
    if (v3)
    {
      v4 = [v8 transitionCond];
      [v4 lock];

      if ([v8 transitionState] != 12)
      {
        v5 = [v8 transitionState];
        v6 = [v8 getError];
        if ([v8 didTimeoutOnce])
        {
          [*(a1 + 32) GRAPH_TRANSITION_TIMED_OUT:v5 WITH_ERROR:v6 SHOULD_ABORT:1];
        }

        else
        {
          [v8 setDidTimeoutOnce:1];
          [*(a1 + 32) GRAPH_TRANSITION_TIMED_OUT:v5 WITH_ERROR:v6 SHOULD_ABORT:0];
          [v8 armTimeoutTimer:*(a1 + 48)];
        }
      }

      v7 = [v8 transitionCond];
      [v7 unlock];
    }

    WeakRetained = v8;
  }
}

void __29__PSTransitionMonitor_start___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained transitionManager];
  if (v1 && [WeakRetained transitionState] != 12)
  {
    v2 = [v1 systemGraphClient];
    v3 = [WeakRetained getError];
    v4 = [v3 localizedDescription];
    [v2 requestDPTailspinWithReason:v4];
  }
}

- (id)generateErrorForStateStarting
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"state";
  v8[0] = @"Timed out while starting transition.";
  v2 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v8[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateErrorForStateSystemGraphInit
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  systemGraphClient = [WeakRetained systemGraphClient];
  requestState = [systemGraphClient requestState];

  requestedKeys = [requestState requestedKeys];
  pendingKeys = [requestState pendingKeys];
  v34 = requestedKeys;
  v31 = [MEMORY[0x277CBEB58] setWithSet:requestedKeys];
  v33 = pendingKeys;
  [v31 minusSet:pendingKeys];
  selfCopy = self;
  v35 = requestState;
  v9 = [(PSTransitionMonitor *)self getPendingSystemGraphKeys:requestState];
  v36 = v3;
  [v3 appendFormat:@"Timed out waiting for providers. Pending keys: {"];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = objc_alloc_init(MEMORY[0x277CCAB68]);
        [v17 appendFormat:@"%@: [", v16];
        v18 = [v11 objectForKeyedSubscript:v16];
        allObjects = [v18 allObjects];
        v20 = [allObjects componentsJoinedByString:{@", "}];
        [v17 appendString:v20];

        [v17 appendFormat:@"]"];
        [v10 addObject:v17];
        v21 = [v11 objectForKeyedSubscript:v16];
        [v37 setObject:v21 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v13);
  }

  v22 = [v10 componentsJoinedByString:{@", "}];
  [v36 appendString:v22];

  [v36 appendFormat:@"}. Completed keys: ["];
  allObjects2 = [v31 allObjects];
  v24 = [allObjects2 componentsJoinedByString:{@", "}];
  [v36 appendString:v24];

  [v36 appendFormat:@"]."];
  v25 = *MEMORY[0x277CCA450];
  v43[0] = v36;
  v42[0] = v25;
  v42[1] = @"state";
  v26 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)selfCopy transitionState]];
  v43[1] = v26;
  v43[2] = v37;
  v42[2] = @"pending";
  v42[3] = @"completed";
  v43[3] = v31;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];

  v28 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)generateErrorForStateDomainResolution
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"state";
  v8[0] = @"Timed out during stream domain resolution.";
  v2 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v8[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateErrorForStateLocalSourceInit
{
  v10[2] = *MEMORY[0x277D85DE8];
  [(PSTransitionMonitor *)self lock];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while initializing local source %@", self->_transitionStateLocalSourceInitCurResource];
  [(PSTransitionMonitor *)self unlock];
  v9[0] = *MEMORY[0x277CCA450];
  v9[1] = @"state";
  v10[0] = v3;
  v4 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)generateErrorForStateBufferInit
{
  v12[3] = *MEMORY[0x277D85DE8];
  [(PSTransitionMonitor *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->_transitionStateBufferInitCurResource];
  [(PSTransitionMonitor *)self unlock];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while initializing resource %@", v3];
  v5 = *MEMORY[0x277CCA450];
  v12[0] = v4;
  v11[0] = v5;
  v11[1] = @"state";
  v6 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v11[2] = @"resource";
  v12[1] = v6;
  v12[2] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)generateErrorForStateGroupedTriggersInit
{
  v12[3] = *MEMORY[0x277D85DE8];
  [(PSTransitionMonitor *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->_transitionStateGroupedTriggersInitCurGST];
  [(PSTransitionMonitor *)self unlock];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while initializing GST for graph %@", v3];
  v5 = *MEMORY[0x277CCA450];
  v12[0] = v4;
  v11[0] = v5;
  v11[1] = @"state";
  v6 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v11[2] = @"graph";
  v12[1] = v6;
  v12[2] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getThreadPoolInfo:(ps_exec_shared_thread_pool_s *)info forSubgraph:
{
  v4 = v3;
  v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
  var2 = info->var2;
  if (var2)
  {
    v6 = 0;
    p_var9 = &info[17].var9;
    do
    {
      if (*&p_var9[2 * v6] != -1)
      {
        v8 = *(v4 + 632);
        if (v8)
        {
          v9 = 0;
          v10 = (v4 + 648);
          do
          {
            if (v10[10] == v6)
            {
              v11 = MEMORY[0x277CCACA8];
              v12 = *&p_var9[2 * v6];
              v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4 + 113];
              v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v10];
              v15 = [v11 stringWithFormat:@"[Thread: %#llx] %@:%@, \n", v12, v13, v14];

              [v19 appendString:v15];
              v8 = *(v4 + 632);
            }

            ++v9;
            v10 += 12;
          }

          while (v9 < v8);
          var2 = info->var2;
        }
      }

      ++v6;
      if (var2 >= 0x40)
      {
        v16 = 64;
      }

      else
      {
        v16 = var2;
      }
    }

    while (v6 < v16);
  }

  return v19;
}

- (id)generateErrorForStateRemoveExecutorGraphs
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PSTransitionMonitor *)self lock];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  v5 = self->_subGraphsToBeRemoved;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        pointerValue = [*(*(&v36 + 1) + 8 * i) pointerValue];
        if (pointerValue)
        {
          v11 = pointerValue;
          if (*(pointerValue + 16) != 5)
          {
            v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:pointerValue + 113];
            [v31 addObject:v12];

            v13 = [(PSTransitionMonitor *)selfCopy getThreadPoolInfo:*(v11 + 6792) forSubgraph:v11];
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", *(v11 + 6792) + 72];
            [v4 setValue:v13 forKey:v14];
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v7);
  }

  v15 = [v31 componentsJoinedByString:{@", "}];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while removing graphs. Pending: [%@].", v15];
  [v3 setString:v16];

  if ([v4 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allKeys = [v4 allKeys];
    v18 = [allKeys countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v32 + 1) + 8 * j);
          v23 = [v4 valueForKey:v22];
          [v3 appendFormat:@"\nThread pool: %@\n{\n%@}", v22, v23];
        }

        v19 = [allKeys countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v19);
    }
  }

  [(PSTransitionMonitor *)selfCopy unlock];
  v24 = *MEMORY[0x277CCA450];
  v41[0] = v3;
  v40[0] = v24;
  v40[1] = @"state";
  v25 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)selfCopy transitionState]];
  v40[2] = @"graphs";
  v41[1] = v25;
  v41[2] = v31;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];

  v27 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)generateErrorForStateAddExecutorGraphs
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"state";
  v8[0] = @"Timed out trying to add graphs.";
  v2 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v8[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateErrorForStateGroupedTriggersDeinit
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"state";
  v8[0] = @"Timed out during GST deinitialization.";
  v2 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v8[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)generateErrorForStateBufferDeinit
{
  v12[3] = *MEMORY[0x277D85DE8];
  [(PSTransitionMonitor *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->_transitionStateBufferDeinitCurResource];
  [(PSTransitionMonitor *)self unlock];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while deinitializing resource %@", v3];
  v5 = *MEMORY[0x277CCA450];
  v12[0] = v4;
  v11[0] = v5;
  v11[1] = @"state";
  v6 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v11[2] = @"resource";
  v12[1] = v6;
  v12[2] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)generateErrorForStateLocalSourceDeinit
{
  v12[3] = *MEMORY[0x277D85DE8];
  [(PSTransitionMonitor *)self lock];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:self->_transitionStateLocalSourceDeinitCurResource];
  [(PSTransitionMonitor *)self unlock];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Timed out while deinitializing local source %@", v3];
  v5 = *MEMORY[0x277CCA450];
  v12[0] = v4;
  v11[0] = v5;
  v11[1] = @"state";
  v6 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v11[2] = @"source";
  v12[1] = v6;
  v12[2] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)generateErrorForStateSysGraphNotify
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277CCA450];
  v7[1] = @"state";
  v8[0] = @"Timed out during system graph completion notification.";
  v2 = [PSTransitionMonitor stateToString:[(PSTransitionMonitor *)self transitionState]];
  v8[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)TIMED_OUT_IN_STATE_STARTING:(id)g SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  gCopy = g;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, gCopy, tCopy);
}

- (void)NO_RESPONSE_FROM_REALITYCAMERA_TO_START_CAMERAS:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)NO_RESPONSE_FROM_ARKIT_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)NO_RESPONSE_FROM_CVCAL_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)NO_RESPONSE_FROM_ARBITRARY_PRODUCER_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)NO_RESPONSE_FROM_MULTIPLE_PRODUCERS_TO_START_RESOURCES:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)TIMED_OUT_IN_STATE_DOMAIN_RESOLUTION:(id)n SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  nCopy = n;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, nCopy, tCopy);
}

- (void)TIMED_OUT_IN_STATE_LOCAL_SOURCE_INIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_BUFFER_INIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_GST_INIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_ADD_EXEC_GRAPHS:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)TIMED_OUT_IN_STATE_REMOVE_EXEC_GRAPHS:(id)s SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  sCopy = s;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, sCopy, tCopy);
}

- (void)TIMED_OUT_IN_STATE_GST_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_BUFFER_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_LOCAL_SOURCE_DEINIT:(id)t SHOULD_ABORT:(BOOL)rT
{
  rTCopy = rT;
  tCopy = t;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, tCopy, rTCopy);
}

- (void)TIMED_OUT_IN_STATE_SYSTEM_GRAPH_NOTIFY:(id)y SHOULD_ABORT:(BOOL)t
{
  tCopy = t;
  yCopy = y;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  _handleTimeoutBranching(WeakRetained, yCopy, tCopy);
}

- (id)getPendingSystemGraphKeys:(id)keys
{
  v26 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  context = [executionSession context];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = keysCopy;
  pendingKeys = [keysCopy pendingKeys];
  v10 = [pendingKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(pendingKeys);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [context producingExecutionSessionForResourceKey:v14];
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = @"UnknownProvider";
        }

        v17 = [v5 objectForKey:v16];
        if (!v17)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
          [v5 setObject:v17 forKey:v16];
        }

        [v17 addObject:v14];
      }

      v11 = [pendingKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

+ (uint64_t)stateToString:(char *)a1 .cold.1(char **a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown state received: %u", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown state received: %u", v6, v7, v8, v9, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [(PSTransitionMonitor *)v17 getError];
}

- (uint64_t)getError
{
  v25 = *MEMORY[0x277D85DE8];
  *self = 0;
  v5 = a2;
  asprintf(self, "Could not generate error for state %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not generate error for state %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionMonitor generateErrorForState:v20];
}

- (uint64_t)generateErrorForState:(char *)a1 .cold.1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Received state Completed in transition timeout.");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Received state Completed in transition timeout.", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [(PSTransitionMonitor *)v16 generateErrorForState:v17];
}

- (uint64_t)generateErrorForState:(char *)a1 .cold.2(char **a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown state received: %u", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown state received: %u", v6, v7, v8, v9, v19, v20, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSTransitionMonitor GRAPH_TRANSITION_TIMED_OUT:v17 WITH_ERROR:? SHOULD_ABORT:?];
}

- (uint64_t)GRAPH_TRANSITION_TIMED_OUT:(char *)a1 WITH_ERROR:SHOULD_ABORT:.cold.1(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Received state Completed in transition timeout.");
  v2 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v3, v4, "%s:%d Received state Completed in transition timeout.", v5, v6, v7, v8, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v9 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return [PSTransitionMonitor GRAPH_TRANSITION_TIMED_OUT:v16 WITH_ERROR:v17 SHOULD_ABORT:?];
}

- (uint64_t)GRAPH_TRANSITION_TIMED_OUT:(char *)a1 WITH_ERROR:(int)a2 SHOULD_ABORT:.cold.2(char **a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unknown state received: %u", a2);
  v3 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_10_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown state received: %u", v6, v7, v8, v9, v20, v21, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v10 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v20, v21, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return _handleTimeoutBranching_cold_1(v17, v18);
}

@end