@interface PSTransitionManager
- (BOOL)deliverResourceRequest:(id)a3 removing:(id)a4;
- (BOOL)prepareTransition:(id)a3 error:(id *)a4;
- (PSExecutionSession)executionSession;
- (PSTransitionManager)initWithExecutionSession:(id)a3 withContext:(id)a4 withProvider:(id)a5 withComputeDevices:(id)a6 systemGraphClient:(id)a7 withPLSDevice:(id)a8 withPRMManager:(PSResourceManager *)a9;
- (unint64_t)transitionExecutorForBlock:(id)a3 error:(id *)a4;
- (unint64_t)transitionExecutorForRemote:(id)a3 error:(id *)a4;
- (void)addExecutorGraphsForTransitionBlock:(id)a3;
- (void)callTransitionCallback:(unint64_t)a3 retainedContext:(id)a4;
- (void)callTransitionCallback:(unint64_t)a3 unretainedContext:(void *)a4 freeAfterUse:(BOOL)a5;
- (void)dealloc;
- (void)deliverDeadlineMissThresholdExceededCallback:(void *)a3;
- (void)deliverDynamicResourcesAvailableNotification:(id)a3;
- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)a3;
- (void)deliverPauseResourcesRequest:(id)a3;
- (void)deliverReplayResourceRequest;
- (void)deliverSetupResourcesRequest:(id)a3;
- (void)dispatchReplayDelegate:(id)a3;
- (void)initializeGroupedTriggersForTransitionBlock:(id)a3;
- (void)removeExecutorGraphsForTransitionBlock:(id)a3;
- (void)removeExecutorGraphsOverXPCForTransitionBlock:(id)a3;
- (void)sendGraphInfoToSystemGraph:(id)a3;
- (void)setExecutionSessionDelegate:(id)a3 withQueue:(id)a4;
- (void)setTransitionCallback:(id)a3 withContext:(void *)a4;
- (void)setTransitionCallbackF:(void *)a3 withContext:(void *)a4;
- (void)setupCoreAnalyticsForAddedGraphs:(id)a3;
- (void)updateTransitionCompleted:(id)a3 transitionSucceeded:(BOOL)a4;
@end

@implementation PSTransitionManager

- (PSTransitionManager)initWithExecutionSession:(id)a3 withContext:(id)a4 withProvider:(id)a5 withComputeDevices:(id)a6 systemGraphClient:(id)a7 withPLSDevice:(id)a8 withPRMManager:(PSResourceManager *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v62.receiver = self;
  v62.super_class = PSTransitionManager;
  v21 = [(PSTransitionManager *)&v62 init];
  v22 = v21;
  if (v21)
  {
    v58 = v20;
    objc_storeStrong(&v21->_context, a4);
    objc_storeStrong(&v22->_device, a8);
    v22->_prm_mgr = a9;
    v22->_isCoreAnalyticsEnabled = [v15 isCoreAnalyticsEnabled];
    v22->_sysGraphEnabled = v19 != 0;
    objc_storeWeak(&v22->_executionSession, v15);
    objc_storeStrong(&v22->_systemGraphClient, a7);
    v23 = [[PSTransitionMonitor alloc] initWithTransitionManager:v22];
    transitionMonitor = v22->_transitionMonitor;
    v22->_transitionMonitor = v23;

    v25 = 1;
    v22->_shouldSendResourcesNoLongerWantedProcessed = 1;
    v26 = [MEMORY[0x277CCAC38] processInfo];
    v27 = [v26 processName];

    if (([v17 isEqualToString:PSExecutionSessionProviderWakeboard[0]] & 1) == 0 && (objc_msgSend(v27, "isEqualToString:", @"wakeboardd") & 1) == 0)
    {
      v25 = [v27 isEqualToString:@"seaboardd"];
    }

    v22->_isSystemCompositor = v25;
    v22->_isBiometricKit = [v17 isEqualToString:@"biometrickitd"];
    v28 = [[PSGraphCompiler alloc] initWithTransitionManager:v22 withContext:v22->_context withSystemGraphClient:v22->_systemGraphClient withComputeDevices:v18 withPLSDevice:v22->_device withPRMManager:v22->_prm_mgr];
    compiler = v22->_compiler;
    v22->_compiler = v28;

    v30 = ps_util_create_serial_dispatch_queue("com.apple.polaris.transition_queue");
    transitionQueue = v22->_transitionQueue;
    v22->_transitionQueue = v30;

    v32 = ps_util_create_serial_dispatch_queue("com.apple.polaris.transition_callback_queue");
    transitionCallbackQueue = v22->_transitionCallbackQueue;
    v22->_transitionCallbackQueue = v32;

    v34 = objc_alloc_init(MEMORY[0x277CCAB00]);
    execGraphMap = v22->_execGraphMap;
    v22->_execGraphMap = v34;

    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = MEMORY[0x277CBEA60];
    v38 = [v36 pathForResource:@"PSPrioritizedResources" ofType:@"plist"];
    v39 = [v37 arrayWithContentsOfFile:v38];

    v40 = [MEMORY[0x277CBEB98] setWithArray:v39];
    prioritizedResources = v22->_prioritizedResources;
    v22->_prioritizedResources = v40;

    ps_exec_init();
    v22->_executor = v42;
    inited = ps_exec_init_graph();
    ps_exec_graph_set_frame_history_client_handle(inited, v15[1]);
    ps_exec_start_graph(&v22->_executor->var0, inited);
    if (v22->_isCoreAnalyticsEnabled)
    {
      v56 = v19;
      v44 = v18;
      v45 = v16;
      v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
      graphHashTracker = v22->_graphHashTracker;
      v22->_graphHashTracker = v46;

      WeakRetained = objc_loadWeakRetained(&v22->_executionSession);
      v49 = [WeakRetained isUniqueSession];

      if (v49)
      {
        v22->_transition_analytics.session_hash = ps_ca_map_string([v27 UTF8String]);
        [v15 setCaName:v27];
      }

      else
      {
        v50 = objc_loadWeakRetained(&v22->_executionSession);
        v51 = [v50 name];
        v22->_transition_analytics.session_hash = ps_ca_map_string([v51 UTF8String]);

        v52 = objc_loadWeakRetained(&v22->_executionSession);
        v53 = [v52 name];
        [v15 setCaName:v53];
      }

      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v22->_transition_analytics.session_hash, v56}];
      [v15 setCaNameHash:v54];

      ps_ca_map_string([v27 UTF8String]);
      objc_initWeak(&location, v22);
      LODWORD(v54) = v22->_transition_analytics.session_hash;
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __139__PSTransitionManager_initWithExecutionSession_withContext_withProvider_withComputeDevices_systemGraphClient_withPLSDevice_withPRMManager___block_invoke;
      v59[3] = &unk_279A487D0;
      objc_copyWeak(&v60, &location);
      v22->ca_res_req_handle = ps_ca_resource_request_init(v54, v59);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&location);
      v16 = v45;
      v18 = v44;
      v19 = v57;
    }

    v20 = v58;
  }

  return v22;
}

void __139__PSTransitionManager_initWithExecutionSession_withContext_withProvider_withComputeDevices_systemGraphClient_withPLSDevice_withPRMManager___block_invoke(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = *(&ps_ca_log_handle_for_event + a2);
    pbs_ringbufferlogger_shared_write();
    WeakRetained = v5;
  }
}

- (void)dealloc
{
  self->_deallocating = 1;
  ps_exec_dealloc_graph(self->_executor);
  ps_exec_dealloc(self->_executor);
  ps_util_release_dispatch_queue(self->_transitionQueue);
  ps_util_release_dispatch_queue(self->_transitionCallbackQueue);
  ps_ca_resource_request_delete(&self->ca_res_req_handle->var0.var0);
  v3.receiver = self;
  v3.super_class = PSTransitionManager;
  [(PSTransitionManager *)&v3 dealloc];
}

- (void)setTransitionCallback:(id)a3 withContext:(void *)a4
{
  v6 = _Block_copy(a3);
  transitionCallback = self->_transitionCallback;
  self->_transitionCallback = v6;

  self->_transitionCallbackF = 0;
  self->_transitionCallbackUserContext = a4;
  systemGraphClient = self->_systemGraphClient;

  [(PSSystemGraphClientInterface *)systemGraphClient setTransitionManager:self];
}

- (void)setTransitionCallbackF:(void *)a3 withContext:(void *)a4
{
  transitionCallback = self->_transitionCallback;
  self->_transitionCallback = 0;
  self->_transitionCallbackF = a3;

  self->_transitionCallbackUserContext = a4;
  systemGraphClient = self->_systemGraphClient;

  [(PSSystemGraphClientInterface *)systemGraphClient setTransitionManager:self];
}

- (void)callTransitionCallback:(unint64_t)a3 unretainedContext:(void *)a4 freeAfterUse:(BOOL)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = [(PSTransitionManager *)self transitionCallback];

  if (v9)
  {
    v10 = [(PSTransitionManager *)self transitionCallbackQueue];
    v11 = v10;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke;
    v17[3] = &unk_279A487F8;
    v17[4] = self;
    v17[5] = a3;
    v17[6] = a4;
    v18 = a5;
    v12 = v17;
LABEL_5:
    dispatch_async(v10, v12);

    goto LABEL_6;
  }

  if ([(PSTransitionManager *)self transitionCallbackF])
  {
    v10 = [(PSTransitionManager *)self transitionCallbackQueue];
    v11 = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke_2;
    v15[3] = &unk_279A487F8;
    v15[4] = self;
    v15[5] = a3;
    v15[6] = a4;
    v16 = a5;
    v12 = v15;
    goto LABEL_5;
  }

  v14 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v20 = a3;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "Tried to send callback of type %d, no transition callback handler installed.", buf, 8u);
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
}

void __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCallback];
  v2[2](v2, *(a1 + 40), *(a1 + 48), [*(a1 + 32) transitionCallbackUserContext]);

  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {

      free(v3);
    }
  }
}

void __77__PSTransitionManager_callTransitionCallback_unretainedContext_freeAfterUse___block_invoke_2(uint64_t a1)
{
  ([*(a1 + 32) transitionCallbackF])(*(a1 + 40), *(a1 + 48), objc_msgSend(*(a1 + 32), "transitionCallbackUserContext"));
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {

      free(v2);
    }
  }
}

- (void)callTransitionCallback:(unint64_t)a3 retainedContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(PSTransitionManager *)self transitionCallback];

  if (v7)
  {
    v8 = [(PSTransitionManager *)self transitionCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke;
    block[3] = &unk_279A48820;
    block[4] = self;
    v18 = a3;
    v17 = v6;
    dispatch_async(v8, block);

    v9 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if ([(PSTransitionManager *)self transitionCallbackF])
  {
    v10 = [(PSTransitionManager *)self transitionCallbackQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke_2;
    v13[3] = &unk_279A48820;
    v13[4] = self;
    v15 = a3;
    v14 = v6;
    dispatch_async(v10, v13);

    v9 = v14;
    goto LABEL_5;
  }

  v12 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v20 = a3;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Tried to send callback of type %d, no transition callback handler installed.", buf, 8u);
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
}

void __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transitionCallback];
  (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40), [*(a1 + 32) transitionCallbackUserContext]);
}

uint64_t __62__PSTransitionManager_callTransitionCallback_retainedContext___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) transitionCallbackF];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) transitionCallbackUserContext];

  return v6(v2, v3, v4);
}

- (void)setExecutionSessionDelegate:(id)a3 withQueue:(id)a4
{
  v11 = a3;
  v7 = a4;
  transitionCallbackQueue = v7;
  if (!v7)
  {
    transitionCallbackQueue = self->_transitionCallbackQueue;
  }

  v9 = transitionCallbackQueue;
  executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
  self->_executionSessionDelegateQueue = v9;

  objc_storeStrong(&self->_executionSessionDelegate, a3);
  if ([v11 conformsToProtocol:&unk_2870DB680])
  {
    [(PSTransitionManager *)self setConformsToResourcePauseSetupDelegate:1];
    [(PSTransitionManager *)self setShouldSendResourcesNoLongerWantedProcessed:0];
  }

  [(PSSystemGraphClientInterface *)self->_systemGraphClient setTransitionManager:self];
}

- (void)deliverDeadlineMissThresholdExceededCallback:(void *)a3
{
  if (self->_executionSessionDelegateQueue)
  {
    objc_initWeak(&location, self);
    if (a3)
    {
      v5 = *(a3 + 5);
      if (v5)
      {
        v6 = v5;
        v7 = [v6 name];
        executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __68__PSTransitionManager_deliverDeadlineMissThresholdExceededCallback___block_invoke;
        v11[3] = &unk_279A48848;
        objc_copyWeak(&v14, &location);
        v12 = v6;
        v13 = v7;
        v9 = v7;
        v10 = v6;
        dispatch_async(executionSessionDelegateQueue, v11);

        objc_destroyWeak(&v14);
      }
    }

    objc_destroyWeak(&location);
  }
}

void __68__PSTransitionManager_deliverDeadlineMissThresholdExceededCallback___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained executionSessionDelegate];

    if (v5)
    {
      v6 = [v4 executionSessionDelegate];
      v7 = objc_opt_respondsToSelector();

      v8 = [v4 executionSessionDelegate];
      v9 = v8;
      if (v7)
      {
        [v8 deadlineMissThresholdExceededForGraph:*(a1 + 32) name:*(a1 + 40)];
      }

      else
      {
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
          goto LABEL_8;
        }

        v9 = [v4 executionSessionDelegate];
        [v9 deadlineMissThresholdExceededForGraph:*(a1 + 40)];
      }
    }
  }

LABEL_8:

  objc_autoreleasePoolPop(v2);
}

- (void)dispatchReplayDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager *)self executionSessionDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (v7)
    {
      v8 = [(PSTransitionManager *)self executionSessionDelegate];
      v9 = [v8 conformsToProtocol:&unk_2870DB6E0];

      if (v9)
      {
        objc_initWeak(&location, self);
        v10 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__PSTransitionManager_dispatchReplayDelegate___block_invoke;
        block[3] = &unk_279A48870;
        objc_copyWeak(&v13, &location);
        v12 = v4;
        dispatch_async(v10, block);

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __46__PSTransitionManager_dispatchReplayDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained executionSessionDelegate];
    (*(v3 + 16))(v3, v4);

    WeakRetained = v5;
  }
}

- (BOOL)deliverResourceRequest:(id)a3 removing:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v42 = a4;
  val = self;
  v6 = [(PSTransitionManager *)self executionSessionDelegate];
  if (v6)
  {
    v7 = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (v7)
    {
      v8 = [(PSTransitionManager *)val executionSessionDelegate];
      v9 = [v8 conformsToProtocol:&unk_2870D80D0];

      if (v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v12 = v41;
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v12;
        v15 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v15)
        {
          v16 = *v56;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v56 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v55 + 1) + 8 * i);
              v19 = [v18 resourceKey];
              v20 = [(NSSet *)val->_prioritizedResources containsObject:v19];
              v21 = !v20;
              if (v20)
              {
                v22 = v10;
              }

              else
              {
                v22 = v11;
              }

              if (v21)
              {
                v23 = v14;
              }

              else
              {
                v23 = v13;
              }

              [v22 addObject:v18];
              [v23 addObject:v19];
            }

            v15 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
          }

          while (v15);
        }

        v24 = [v10 count];
        v25 = [v11 count];
        v26 = [v42 count];
        v27 = v26;
        if (v24 + v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        v29 = !v28;
        v30 = __PLSLogSharedInstance();
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          if (v31)
          {
            LOWORD(buf[0]) = 0;
            v32 = "enqueueing resourcesRequested and resourcesRemoved";
LABEL_35:
            _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
          }
        }

        else if (v24 == -v25)
        {
          if (v27)
          {
            if (v31)
            {
              LOWORD(buf[0]) = 0;
              v32 = "enqueueing resourcesRemoved";
              goto LABEL_35;
            }
          }

          else if (v31)
          {
            LOWORD(buf[0]) = 0;
            v32 = "not enqueuing resourcesRequested or resourcesRemoved, we should never reach here!";
            goto LABEL_35;
          }
        }

        else if (v31)
        {
          LOWORD(buf[0]) = 0;
          v32 = "enqueueing resourcesRequested";
          goto LABEL_35;
        }

        v33 = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, val);
        v6 = [(PSTransitionManager *)val executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke;
        block[3] = &unk_279A48898;
        objc_copyWeak(v53, buf);
        v46 = v33;
        v53[1] = v27;
        v47 = v42;
        v48 = v10;
        v49 = v13;
        v50 = val;
        v53[2] = v24;
        v53[3] = v25;
        v51 = v11;
        v52 = v14;
        v34 = v14;
        v35 = v11;
        v36 = v13;
        v37 = v10;
        v38 = v33;
        dispatch_async(v6, block);

        objc_destroyWeak(v53);
        objc_destroyWeak(buf);

        LOBYTE(v6) = 1;
        goto LABEL_37;
      }
    }

    LOBYTE(v6) = 0;
  }

LABEL_37:

  v39 = *MEMORY[0x277D85DE8];
  return v6;
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = [WeakRetained executionSessionDelegate];
    if (*(a1 + 96))
    {
      v7 = [*(a1 + 40) allObjects];
      v8 = [v7 componentsJoinedByString:{@", "}];

      v9 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 96);
        *buf = 134218498;
        v63 = v10;
        v64 = 2112;
        v65 = v8;
        v66 = 2048;
        v67 = v5;
        _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%lu Resources No Longer wanted : [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      [v6 resourcesNoLongerWanted:*(a1 + 40)];
      if ([WeakRetained shouldSendResourcesNoLongerWantedProcessed])
      {
        v11 = [WeakRetained executionSession];
        [v11 resourcesNoLongerWantedProcessed:*(a1 + 40)];
      }
    }

    v12 = [MEMORY[0x277CBEAA8] date];

    [v12 timeIntervalSinceDate:*(a1 + 32)];
    if (*(a1 + 104))
    {
      v14 = v13;
      v15 = [*(a1 + 48) componentsJoinedByString:{@", "}];
      v16 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 104);
        *buf = 134218498;
        v63 = v17;
        v64 = 2112;
        v65 = v15;
        v66 = 2048;
        v67 = v14;
        _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, "%lu Resources Requested First : [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      v48 = v15;

      v50 = *(a1 + 48);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v18 = *(a1 + 56);
      v19 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v57;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v57 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v56 + 1) + 8 * i);
            v24 = [WeakRetained compiler];
            [v24 withWriterForKey:v23 perform:&__block_literal_global_11];
          }

          v20 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v20);
      }

      v25 = [MEMORY[0x277CBEAA8] date];
      v26 = v50;
      [v6 resourcesRequested:v50];
      v27 = [MEMORY[0x277CBEAA8] date];
      [v27 timeIntervalSinceDate:v25];
      ps_ca_resource_request_completed(*(*(a1 + 64) + 120), *(a1 + 104), v28);

      v29 = v48;
    }

    else
    {
      v29 = 0;
      v26 = 0;
    }

    v30 = [MEMORY[0x277CBEAA8] date];

    [v30 timeIntervalSinceDate:*(a1 + 32)];
    if (*(a1 + 112))
    {
      v32 = v31;
      v33 = [*(a1 + 72) componentsJoinedByString:{@", "}];

      v34 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 112);
        *buf = 134218498;
        v63 = v35;
        v64 = 2112;
        v65 = v33;
        v66 = 2048;
        v67 = v32;
        _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEFAULT, "%lu Resources Requested Later [%@], dispatched in %lf seconds", buf, 0x20u);
      }

      v49 = v33;
      v51 = v30;

      v36 = *(a1 + 72);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v37 = *(a1 + 80);
      v38 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v53;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v53 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v52 + 1) + 8 * j);
            v43 = [WeakRetained compiler];
            [v43 withWriterForKey:v42 perform:&__block_literal_global_106];
          }

          v39 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v39);
      }

      v44 = [MEMORY[0x277CBEAA8] date];
      [v6 resourcesRequested:v36];
      v45 = [MEMORY[0x277CBEAA8] date];
      [v45 timeIntervalSinceDate:v44];
      ps_ca_resource_request_completed(*(*(a1 + 64) + 120), *(a1 + 112), v46);

      v29 = v49;
      v30 = v51;
    }

    else
    {
      v36 = v26;
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke_102(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

void __55__PSTransitionManager_deliverResourceRequest_removing___block_invoke_104(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

- (void)deliverSetupResourcesRequest:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager *)self executionSessionDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (v7)
    {
      if ([(PSTransitionManager *)self conformsToResourcePauseSetupDelegate])
      {
        v8 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "enqueueing setupResources", buf, 2u);
        }

        v9 = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, self);
        v10 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PSTransitionManager_deliverSetupResourcesRequest___block_invoke;
        block[3] = &unk_279A48848;
        objc_copyWeak(&v15, buf);
        v13 = v9;
        v14 = v4;
        v11 = v9;
        dispatch_async(v10, block);

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __52__PSTransitionManager_deliverSetupResourcesRequest___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [v6 count];
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%lu Setup Resources [%@], dispatched in %lf seconds", &v12, 0x20u);
    }

    v10 = [WeakRetained executionSessionDelegate];
    [v10 setupResources:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverPauseResourcesRequest:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = [(PSTransitionManager *)self compiler];
        [v9 withWriterForKey:v8 perform:&__block_literal_global_108];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v10 = [(PSTransitionManager *)self executionSessionDelegate];
  if (v10)
  {
    v11 = [(PSTransitionManager *)self executionSessionDelegateQueue];
    v12 = v11 == 0;

    if (!v12)
    {
      if ([(PSTransitionManager *)self conformsToResourcePauseSetupDelegate])
      {
        v13 = __PLSLogSharedInstance();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, "enqueueing pauseResources", buf, 2u);
        }

        v14 = [MEMORY[0x277CBEAA8] date];
        objc_initWeak(buf, self);
        v15 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke_109;
        block[3] = &unk_279A48848;
        objc_copyWeak(&v21, buf);
        v19 = v14;
        v20 = v4;
        v16 = v14;
        dispatch_async(v15, block);

        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F860](v2);
  }
}

void __52__PSTransitionManager_deliverPauseResourcesRequest___block_invoke_109(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:*(a1 + 32)];
    v5 = v4;
    v6 = [*(a1 + 40) allObjects];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = [*(a1 + 40) count];
    v9 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218498;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "%lu Pause Resources [%@], dispatched in %lf seconds", &v12, 0x20u);
    }

    v10 = [WeakRetained executionSessionDelegate];
    [v10 pauseResources:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deliverDynamicResourcesAvailableNotification:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager *)self executionSessionDelegate];
  if (!v5 || (v6 = v5, [(PSTransitionManager *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v12, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [(PSTransitionManager *)self executionSessionDelegate];
  v9 = [v8 conformsToProtocol:&unk_2870D80D0];

  if ((v9 & 1) == 0)
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The execution session delegate doesn't conforms to protocol PSExecutionSessionResourceDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v10 = [(PSTransitionManager *)self executionSessionDelegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__PSTransitionManager_deliverDynamicResourcesAvailableNotification___block_invoke;
  v13[3] = &unk_279A48120;
  objc_copyWeak(&v15, location);
  v14 = v4;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_11:
}

void __68__PSTransitionManager_deliverDynamicResourcesAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager *)self executionSessionDelegate];
  if (!v5 || (v6 = v5, [(PSTransitionManager *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v12, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [(PSTransitionManager *)self executionSessionDelegate];
  v9 = [v8 conformsToProtocol:&unk_2870D80D0];

  if ((v9 & 1) == 0)
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The execution session delegate doesn't conforms to protocol PSExecutionSessionResourceDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v10 = [(PSTransitionManager *)self executionSessionDelegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__PSTransitionManager_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke;
  v13[3] = &unk_279A48120;
  objc_copyWeak(&v15, location);
  v14 = v4;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_11:
}

void __76__PSTransitionManager_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreNoLongerAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverReplayResourceRequest
{
  v3 = [(PSTransitionManager *)self executionSessionDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(PSTransitionManager *)self executionSessionDelegateQueue];

    if (v5)
    {
      v6 = [(PSTransitionManager *)self executionSessionDelegate];
      v7 = [v6 conformsToProtocol:&unk_2870DB740];

      if (v7)
      {
        objc_initWeak(&location, self);
        v8 = [(PSTransitionManager *)self executionSessionDelegateQueue];
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = __51__PSTransitionManager_deliverReplayResourceRequest__block_invoke;
        v9[3] = &unk_279A48298;
        objc_copyWeak(&v10, &location);
        dispatch_async(v8, v9);

        objc_destroyWeak(&v10);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __51__PSTransitionManager_deliverReplayResourceRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained executionSessionDelegate];
    [v2 replayResourcesRequested];

    WeakRetained = v3;
  }
}

void __79__PSTransitionManager_commitAddedGraphs_removedGraphs_option_stopGraphs_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = +[PLSSettings currentSettings];
  v4 = [v3 graphTransitionTimeoutSec];

  v5 = [WeakRetained transitionMonitor];
  [v5 start:v4];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [WeakRetained transitionExecutorForBlock:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8 == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [WeakRetained updateTransitionCompleted:*(a1 + 32) transitionSucceeded:(*(*(*(a1 + 48) + 8) + 24) & 1) == 0];
  [WeakRetained callTransitionCallback:0 retainedContext:0];
}

- (unint64_t)transitionExecutorForRemote:(id)a3 error:(id *)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  session_hash = self->_transition_analytics.session_hash;
  *&self->_transition_analytics.session_hash = 0u;
  *&self->_transition_analytics.num_graphs_removed = 0u;
  *&self->_transition_analytics.num_outputs = 0u;
  *&self->_transition_analytics.num_tasks = 0u;
  *&self->_transition_analytics.num_writers = 0u;
  *&self->_transition_analytics.prmCreationTime = 0u;
  *&self->_transition_analytics.totalTransitionTime = 0u;
  self->_transition_analytics.session_hash = session_hash;
  v83 = mach_absolute_time();
  v7 = __thread_selfusage();
  v8 = [v5 addedGraphs];
  [(PSTransitionManager *)self setupCoreAnalyticsForAddedGraphs:v8];

  v9 = [v5 addedGraphs];
  self->_transition_analytics.num_graphs_added = [v9 count];

  v10 = [v5 removedGraphs];
  self->_transition_analytics.num_graphs_removed = [v10 count];

  v11 = +[PSExecutionSessionWorkarounds sharedInstance];
  v12 = [(PSTransitionManager *)self executionSession];
  v13 = [v12 name];
  v14 = [v11 shouldOverrideCameraStreamProviderType:v13];

  if (v14)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v15 = [(PSContext *)self->_context allStreams];
    v16 = [v15 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v87;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v87 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PLSDevice *)self->_device populateProviderTypeForStream:*(*(&v86 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v17);
    }
  }

  v20 = mach_absolute_time();
  v84 = v7;
  if (![(PSTransitionManager *)self sysGraphEnabled])
  {
    v34 = [(PSTransitionManager *)self executionSession];
    v35 = [v34 dashboard];
    if ([v35 isLocalReplaySession])
    {
      v36 = [(PSTransitionManager *)self executionSession];
      v37 = [v36 systemGraphSession];

      if (!v37)
      {
LABEL_39:
        v40 = 0;
        goto LABEL_40;
      }

      v38 = [(PSTransitionManager *)self executionSession];
      [v38 publishContextForLocalReplay];

      v34 = +[PLSSettings currentSettings];
      if ([v34 enableFastTransition])
      {
        v39 = [(PSTransitionManager *)self executionSession];
        v40 = [v39 systemGraphSession];

        if (!v40)
        {
          goto LABEL_40;
        }

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v5];
        goto LABEL_39;
      }
    }

    else
    {
    }

    goto LABEL_39;
  }

  UPDATE_STATE(self, 1);
  v21 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "Requesting system graph transition.", buf, 2u);
  }

  v22 = MEMORY[0x277CBEB98];
  v94[0] = PLSResourceKeyDisplayMattingLeft[0];
  v94[1] = PLSResourceKeyDisplayMattingRight[0];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
  v24 = [v22 setWithArray:v23];

  v25 = [(PSTransitionManager *)self compiler];
  v26 = [v25 transitionAddedResources:v5];

  if ([v26 intersectsSet:v24])
  {
    v27 = +[PSExecutionSessionWorkarounds sharedInstance];
    v28 = [v27 shouldAssumeMattingIsAlwaysOn];

    if (v28)
    {
      v29 = [MEMORY[0x277CBEB58] setWithSet:v26];
      [v29 minusSet:v24];

      v26 = v29;
    }
  }

  v30 = [(PSTransitionManager *)self executionSession];
  [v30 waitForContextFromExecutionSessionsProvidingResources:v26];

  v31 = +[PLSSettings currentSettings];
  if ([v31 enableFastTransition])
  {
    v32 = [(PSTransitionManager *)self executionSession];
    v33 = [v32 systemGraphSession];

    if (v33)
    {
      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v5];
    }
  }

  else
  {
  }

  v41 = [(PSTransitionManager *)self compiler];
  v40 = [v41 systemGraphResourceWithStridesRequest:v5];

  v42 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v43 = [v40 resourcesWantedWithStrides];
    v44 = [v40 resourcesNoLongerWantedWithStrides];
    *buf = 138412546;
    v91 = v43;
    v92 = 2112;
    v93 = v44;
    _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_DEBUG, "System graph request: resourcesWantedWithStrides=%@, resourcesNoLongerWantedWithStrides=%@", buf, 0x16u);
  }

  v45 = objc_alloc_init(MEMORY[0x277D3E820]);
  v46 = [v40 resourcesWanted];
  [v45 setResourcesWanted:v46];

  v47 = [v40 resourcesWantedWithStrides];
  [v45 setResourcesWantedWithStrides:v47];

  v48 = [v45 resourcesWantedWithStrides];
  v49 = [v48 count];

  if (v49)
  {
    v50 = [(PSTransitionManager *)self systemGraphClient];
    v51 = [v50 requestResources:v45];

    if (v51 == 1)
    {
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-200 description:@"commitAddedGraphs failed due to sleep"];
      }

      v52 = +[PLSSettings currentSettings];
      if ([(PSTransitionBlock *)v52 enableFastTransition])
      {
        v53 = [(PSTransitionManager *)self executionSession];
        v54 = [v53 systemGraphSession];

        if (!v54)
        {
LABEL_35:

          v61 = 1;
LABEL_50:

          v78 = *MEMORY[0x277D85DE8];
          return v61;
        }

        v52 = objc_alloc_init(PSTransitionBlock);
        v55 = objc_alloc(MEMORY[0x277CBEB98]);
        v56 = [v5 removedGraphs];
        v57 = [v55 initWithSet:v56];
        [(PSTransitionBlock *)v52 setAddedGraphs:v57];

        v58 = objc_alloc(MEMORY[0x277CBEB98]);
        v59 = [v5 addedGraphs];
        v60 = [v58 initWithSet:v59];
        [(PSTransitionBlock *)v52 setRemovedGraphs:v60];

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v52];
      }

      goto LABEL_35;
    }
  }

LABEL_40:
  v62 = mach_absolute_time();
  self->_transition_analytics.sysGraphRequestTime = ps_util_mach_time_to_ns(v62 - v20) / 0xF4240;
  if ([(PSTransitionManager *)self sysGraphEnabled])
  {
    UPDATE_STATE(self, 11);
    v63 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_DEFAULT, "Notifying system graph of transition completion.", buf, 2u);
    }

    v64 = objc_alloc_init(MEMORY[0x277D3E820]);
    v65 = [v40 resourcesNoLongerWanted];
    [v64 setResourcesNoLongerWanted:v65];

    v66 = [v40 resourcesNoLongerWantedWithStrides];
    [v64 setResourcesNoLongerWantedWithStrides:v66];

    v67 = [v64 resourcesNoLongerWantedWithStrides];
    v68 = [v67 count];

    if (v68)
    {
      v69 = [(PSTransitionManager *)self systemGraphClient];
      [v69 requestResources:v64];
    }

    v70 = [(PSTransitionManager *)self compiler];
    [v70 notifySystemGraphTransitionCompleted:v5];

    v71 = [(PSTransitionManager *)self systemGraphClient];
    v72 = [v5 addedGraphs];
    v73 = [v5 removedGraphs];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __57__PSTransitionManager_transitionExecutorForRemote_error___block_invoke;
    v85[3] = &unk_279A48908;
    v85[4] = self;
    [v71 updateGraphStateWithAdded:v72 removed:v73 getLivenessNode:v85];
  }

  context = self->_context;
  v75 = [v5 addedGraphs];
  LOBYTE(context) = PSGraphExtractResourceKeyInfo();
  v24 = 0;

  if (context)
  {
    v76 = mach_absolute_time();
    self->_transition_analytics.totalTransitionTime = ps_util_mach_time_to_ns(v76 - v83) / 0xF4240;
    v77 = __thread_selfusage();
    self->_transition_analytics.totalTransitionCPUTime = ps_util_mach_time_to_ns(v77 - v84) / 0xF4240;
    if (self->_isCoreAnalyticsEnabled)
    {
      pbs_ringbufferlogger_shared_write();
    }

    v61 = 0;
    goto LABEL_50;
  }

  v80 = [PSTransitionManager transitionExecutorForRemote:buf error:v24];
  UPDATE_STATE(v80, v81);
  return result;
}

uint64_t __57__PSTransitionManager_transitionExecutorForRemote_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 224) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 pointerValue] + 64);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)prepareTransition:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 addedGraphs];
  if ([v7 count])
  {
  }

  else
  {
    v8 = [v6 removedGraphs];
    v9 = [v8 count];

    if (!v9)
    {
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-5 description:@"No graphs were requested for addition or removal"];
      }

      v30 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v37 = 138412290;
        v38 = @"No graphs were requested for addition or removal";
        _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_ERROR, "%@", &v37, 0xCu);
      }

      goto LABEL_18;
    }
  }

  [(PSGraphCompiler *)self->_compiler resolveTimerStreamsForTransitionBlock:v6];
  [(PSGraphCompiler *)self->_compiler setBufferDepthsForTransitionBlock:v6];
  v10 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "*********************** Transition Requested ***********************", &v37, 2u);
  }

  [v6 printLogsWithContext:self->_context];
  v11 = [v6 addedGraphs];
  v12 = PSCheckGraphsAreDAG();

  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = [(PSTransitionManager *)self context];
  v14 = [v6 postTransitionGraphs];
  v15 = PSGraphResolveFrequencies();

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = [(PSTransitionManager *)self context];
  v17 = [v6 addedGraphs];
  v18 = PSGraphResolveCriticalities();

  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = [(PSTransitionManager *)self context];
  v20 = [v6 addedGraphs];
  v21 = PSGraphApplyThreadPoolSizeLimits();

  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = [(PSTransitionManager *)self context];
  v23 = [v6 addedGraphs];
  v24 = PSGraphResolveThreadPoolSizes();

  if (!v24)
  {
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  v26 = [WeakRetained remoteSession];

  if ((v26 & 1) == 0)
  {
    v27 = objc_loadWeakRetained(&self->_executionSession);
    v28 = [PSGraphValidation validateTransitionBlock:v6 forSession:v27 error:a4];

    if (!v28)
    {
      v33 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [*a4 localizedDescription];
        v37 = 138412290;
        v38 = v34;
        _os_log_impl(&dword_25EA3A000, v33, OS_LOG_TYPE_ERROR, "An error has occurred during graph transition: %@", &v37, 0xCu);
      }

      v35 = [*a4 localizedRecoverySuggestion];

      if (!v35)
      {
        goto LABEL_19;
      }

      v30 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v36 = [*a4 localizedRecoverySuggestion];
        v37 = 138412290;
        v38 = v36;
        _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_ERROR, "Recovery suggestion: %@", &v37, 0xCu);
      }

LABEL_18:

LABEL_19:
      v29 = 0;
      goto LABEL_20;
    }
  }

  v29 = 1;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)updateTransitionCompleted:(id)a3 transitionSucceeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_executionSession);
    v8 = [WeakRetained dashboard];
    v9 = [v6 postTransitionGraphs];
    [v8 setRunningGraphs:v9];

    if (ps_telemetry_is_enabled())
    {
      v10 = [(PSTransitionManager *)self systemGraphClient];
      [v10 serverRequestedCurrentGraphs];
    }
  }

  v11 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "*********************** Transition Completed ***********************", v13, 2u);
  }

  v12 = [(PSTransitionManager *)self transitionMonitor];
  [v12 updateTransitionCompleted];
}

- (void)sendGraphInfoToSystemGraph:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = [(PSTransitionManager *)self executionSession];
  v7 = [v6 name];
  v8 = [v7 UTF8String];
  v9 = getpid();
  populateGraphSetInfo(v5, 8uLL, v8, v9);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v4 addedGraphs];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        v16 = [(PSTransitionManager *)self context];
        v17 = [(PSTransitionManager *)self device];
        v18 = populateAddedGraphsInfo(v15, v5, v16, v17);

        if (v18)
        {
          v24 = [(PSTransitionManager *)&v32 sendGraphInfoToSystemGraph:v18];
LABEL_20:
          [(PSTransitionManager *)&v32 sendGraphInfoToSystemGraph:v24];
          goto LABEL_21;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = [v4 removedGraphs];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = populateRemovedGraphsInfo(*(*(&v28 + 1) + 8 * v23), v5);
        if (v24)
        {
          goto LABEL_20;
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v21);
  }

  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  v26 = [WeakRetained systemGraphSession];
  self = xpc_session_send_message(v26, v5);

  if (self)
  {
LABEL_21:
    [(PSTransitionManager *)&v32 sendGraphInfoToSystemGraph:?];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (unint64_t)transitionExecutorForBlock:(id)a3 error:(id *)a4
{
  v111 = a4;
  v127 = *MEMORY[0x277D85DE8];
  v5 = a3;
  session_hash = self->_transition_analytics.session_hash;
  *&self->_transition_analytics.session_hash = 0u;
  *&self->_transition_analytics.num_graphs_removed = 0u;
  *&self->_transition_analytics.num_outputs = 0u;
  *&self->_transition_analytics.num_tasks = 0u;
  *&self->_transition_analytics.num_writers = 0u;
  *&self->_transition_analytics.prmCreationTime = 0u;
  *&self->_transition_analytics.totalTransitionTime = 0u;
  self->_transition_analytics.session_hash = session_hash;
  v112 = mach_absolute_time();
  v7 = __thread_selfusage();
  v8 = [v5 addedGraphs];
  [(PSTransitionManager *)self setupCoreAnalyticsForAddedGraphs:v8];

  v9 = [v5 addedGraphs];
  self->_transition_analytics.num_graphs_added = [v9 count];

  v10 = [v5 removedGraphs];
  self->_transition_analytics.num_graphs_removed = [v10 count];

  v11 = +[PSExecutionSessionWorkarounds sharedInstance];
  v12 = [(PSTransitionManager *)self executionSession];
  v13 = [v12 name];
  v14 = [v11 shouldOverrideCameraStreamProviderType:v13];

  if (v14)
  {
    v120 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    v15 = [(PSContext *)self->_context allStreams];
    v16 = [v15 countByEnumeratingWithState:&v117 objects:v126 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v118;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v118 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PLSDevice *)self->_device populateProviderTypeForStream:*(*(&v117 + 1) + 8 * i), v111];
        }

        v17 = [v15 countByEnumeratingWithState:&v117 objects:v126 count:16];
      }

      while (v17);
    }
  }

  v20 = mach_absolute_time();
  v21 = 0x279A47000uLL;
  v113 = v7;
  if (![(PSTransitionManager *)self sysGraphEnabled])
  {
    v35 = [(PSTransitionManager *)self executionSession];
    v36 = [v35 dashboard];
    if (([v36 isLocalReplaySession] & 1) == 0)
    {

LABEL_45:
      goto LABEL_46;
    }

    v37 = [(PSTransitionManager *)self executionSession];
    v38 = [v37 systemGraphSession];

    if (!v38)
    {
LABEL_46:
      v44 = 0;
      goto LABEL_47;
    }

    v39 = [(PSTransitionManager *)self executionSession];
    v40 = [v39 dashboard];
    if ([v40 isLocalReplaySession])
    {
      v41 = [(PSTransitionManager *)self executionSession];
      v42 = [v41 systemGraphSession];

      if (!v42)
      {
        goto LABEL_42;
      }

      v39 = [(PSTransitionManager *)self executionSession];
      [v39 publishContextForLocalReplay];
    }

    else
    {
    }

LABEL_42:
    v35 = +[PLSSettings currentSettings];
    if ([v35 enableFastTransition])
    {
      v69 = [(PSTransitionManager *)self executionSession];
      v44 = [v69 systemGraphSession];

      if (!v44)
      {
        goto LABEL_47;
      }

      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v5];
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  UPDATE_STATE(self, 1);
  v22 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Requesting system graph transition.", buf, 2u);
  }

  v23 = MEMORY[0x277CBEB98];
  v125[0] = PLSResourceKeyDisplayMattingLeft[0];
  v125[1] = PLSResourceKeyDisplayMattingRight[0];
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:2];
  v25 = [v23 setWithArray:v24];

  v26 = [(PSTransitionManager *)self compiler];
  v27 = [v26 transitionAddedResources:v5];

  if ([v27 intersectsSet:v25])
  {
    v28 = +[PSExecutionSessionWorkarounds sharedInstance];
    v29 = [v28 shouldAssumeMattingIsAlwaysOn];

    if (v29)
    {
      v30 = [MEMORY[0x277CBEB58] setWithSet:v27];
      [v30 minusSet:v25];

      v27 = v30;
    }
  }

  v31 = [(PSTransitionManager *)self executionSession];
  [v31 waitForContextFromExecutionSessionsProvidingResources:v27];

  v32 = +[PLSSettings currentSettings];
  if ([v32 enableFastTransition])
  {
    v33 = [(PSTransitionManager *)self executionSession];
    v34 = [v33 systemGraphSession];

    if (v34)
    {
      [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v5];
    }
  }

  else
  {
  }

  v43 = [(PSTransitionManager *)self compiler];
  v44 = [v43 systemGraphResourceWithStridesRequest:v5];

  v45 = +[PSExecutionSessionWorkarounds sharedInstance];
  v46 = [v45 shouldAssumeMattingIsAlwaysOn];

  if (v46)
  {
    v47 = [v44 resourcesWantedWithStrides];
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke;
    v115[3] = &unk_279A48930;
    v116 = v25;
    v48 = [v47 filteredArrayWithBlock:v115];
    [v44 setResourcesWantedWithStrides:v48];
  }

  v49 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = [v44 resourcesWantedWithStrides];
    v51 = [v44 resourcesNoLongerWantedWithStrides];
    *buf = 138412546;
    v122 = v50;
    v123 = 2112;
    v124 = v51;
    _os_log_impl(&dword_25EA3A000, v49, OS_LOG_TYPE_DEBUG, "System graph request: resourcesWantedWithStrides=%@, resourcesNoLongerWantedWithStrides=%@", buf, 0x16u);
  }

  v52 = objc_alloc_init(MEMORY[0x277D3E820]);
  v53 = [v44 resourcesWanted];
  [v52 setResourcesWanted:v53];

  v54 = [v44 resourcesWantedWithStrides];
  [v52 setResourcesWantedWithStrides:v54];

  v55 = [v52 resourcesWantedWithStrides];
  v56 = [v55 count];

  if (v56)
  {
    v57 = [(PSTransitionManager *)self systemGraphClient];
    v58 = [v57 requestResources:v52];

    if (v58 == 1)
    {
      if (v111)
      {
        *v111 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-200 description:@"commitAddedGraphs failed due to sleep"];
      }

      v59 = +[PLSSettings currentSettings];
      if ([(PSTransitionBlock *)v59 enableFastTransition])
      {
        v60 = [(PSTransitionManager *)self executionSession];
        v61 = [v60 systemGraphSession];

        if (!v61)
        {
LABEL_37:

          v68 = 1;
LABEL_64:

          v107 = *MEMORY[0x277D85DE8];
          return v68;
        }

        v59 = objc_alloc_init(PSTransitionBlock);
        v62 = objc_alloc(MEMORY[0x277CBEB98]);
        v63 = [v5 removedGraphs];
        v64 = [v62 initWithSet:v63];
        [(PSTransitionBlock *)v59 setAddedGraphs:v64];

        v65 = objc_alloc(MEMORY[0x277CBEB98]);
        v66 = [v5 addedGraphs];
        v67 = [v65 initWithSet:v66];
        [(PSTransitionBlock *)v59 setRemovedGraphs:v67];

        [(PSTransitionManager *)self sendGraphInfoToSystemGraph:v59];
      }

      goto LABEL_37;
    }
  }

  v21 = 0x279A47000;
LABEL_47:
  v70 = mach_absolute_time();
  self->_transition_analytics.sysGraphRequestTime = ps_util_mach_time_to_ns(v70 - v20) / 0xF4240;
  UPDATE_STATE(self, 2);
  v71 = [(PSTransitionManager *)self compiler];
  [v71 resolveStreamDomainsForTransitionBlock:v5];

  v72 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v72, OS_LOG_TYPE_DEFAULT, "*********************** Resolved Added Graphs ***********************", buf, 2u);
  }

  [v5 printLogsWithContext:self->_context printResolvedFieldsOnly:1];
  UPDATE_STATE(self, 3);
  v73 = [(PSTransitionManager *)self compiler];
  [v73 initializeLocalSystemSourcesForTransitionBlock:v5];

  v74 = mach_absolute_time();
  v75 = __thread_selfusage();
  UPDATE_STATE(self, 4);
  v76 = [(PSTransitionManager *)self compiler];
  [v76 createSourceTasksForTransitionBlock:v5];

  v77 = [(PSTransitionManager *)self compiler];
  [v77 createWritersForTransitionBlock:v5];

  v78 = [(PSTransitionManager *)self compiler];
  [v78 createPRMInstancesForTransitionBlock:v5];

  v79 = [(PSTransitionManager *)self compiler];
  [v79 createReadersForTransitionBlock:v5];

  v80 = mach_absolute_time();
  self->_transition_analytics.prmCreationTime = ps_util_mach_time_to_ns(v80 - v74) / 0xF4240;
  v81 = __thread_selfusage();
  self->_transition_analytics.prmCreationCPUTime = ps_util_mach_time_to_ns(v81 - v75) / 0xF4240;
  UPDATE_STATE(self, 7);
  v82 = [*(v21 + 1680) currentSettings];
  if ([v82 enableFastTransition])
  {
    v83 = [(PSTransitionManager *)self executionSession];
    v84 = [v83 systemGraphSession];

    if (v84)
    {
      [(PSTransitionManager *)self removeExecutorGraphsOverXPCForTransitionBlock:v5];
      goto LABEL_54;
    }
  }

  else
  {
  }

  [(PSTransitionManager *)self removeExecutorGraphsForTransitionBlock:v5, v111];
LABEL_54:
  UPDATE_STATE(self, 6);
  [(PSTransitionManager *)self addExecutorGraphsForTransitionBlock:v5];
  v85 = [(PSTransitionManager *)self compiler];
  [v85 removeMTLCommandQueuesForTransitionBlock:v5];

  UPDATE_STATE(self, 5);
  [(PSTransitionManager *)self initializeGroupedTriggersForTransitionBlock:v5];
  UPDATE_STATE(self, 8);
  v86 = [(PSTransitionManager *)self compiler];
  [v86 destroyGroupedTriggersForTransitionBlock:v5];

  UPDATE_STATE(self, 9);
  v87 = [(PSTransitionManager *)self compiler];
  [v87 destroyReadersForTransitionBlock:v5];

  v88 = [(PSTransitionManager *)self compiler];
  [v88 destroyPRMInstancesForTransitionBlock:v5];

  v89 = [(PSTransitionManager *)self compiler];
  [v89 destroyWritersForTransitionBlock:v5];

  v90 = [(PSTransitionManager *)self compiler];
  [v90 removeSourceTasksForTransitionBlock:v5];

  UPDATE_STATE(self, 10);
  v91 = [(PSTransitionManager *)self compiler];
  [v91 deinitializeLocalSystemSourcesForTransitionBlock:v5];

  if ([(PSTransitionManager *)self sysGraphEnabled])
  {
    UPDATE_STATE(self, 11);
    v92 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v92, OS_LOG_TYPE_DEFAULT, "Notifying system graph of transition completion.", buf, 2u);
    }

    v93 = objc_alloc_init(MEMORY[0x277D3E820]);
    v94 = [v44 resourcesNoLongerWanted];
    [v93 setResourcesNoLongerWanted:v94];

    v95 = [v44 resourcesNoLongerWantedWithStrides];
    [v93 setResourcesNoLongerWantedWithStrides:v95];

    v96 = [v93 resourcesNoLongerWantedWithStrides];
    v97 = [v96 count];

    if (v97)
    {
      v98 = [(PSTransitionManager *)self systemGraphClient];
      [v98 requestResources:v93];
    }

    v99 = [(PSTransitionManager *)self compiler];
    [v99 notifySystemGraphTransitionCompleted:v5];

    v100 = [(PSTransitionManager *)self systemGraphClient];
    v101 = [v5 addedGraphs];
    v102 = [v5 removedGraphs];
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke_138;
    v114[3] = &unk_279A48908;
    v114[4] = self;
    [v100 updateGraphStateWithAdded:v101 removed:v102 getLivenessNode:v114];
  }

  context = self->_context;
  v104 = [v5 addedGraphs];
  LOBYTE(context) = PSGraphExtractResourceKeyInfo();
  v25 = 0;

  if (context)
  {
    v105 = mach_absolute_time();
    self->_transition_analytics.totalTransitionTime = ps_util_mach_time_to_ns(v105 - v112) / 0xF4240;
    v106 = __thread_selfusage();
    self->_transition_analytics.totalTransitionCPUTime = ps_util_mach_time_to_ns(v106 - v113) / 0xF4240;
    if (self->_isCoreAnalyticsEnabled)
    {
      pbs_ringbufferlogger_shared_write();
    }

    v68 = 0;
    goto LABEL_64;
  }

  v109 = [PSTransitionManager transitionExecutorForBlock:buf error:v25];
  return __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke(v109, v110);
}

uint64_t __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 resourceKey];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __56__PSTransitionManager_transitionExecutorForBlock_error___block_invoke_138(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 224) objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = *([v2 pointerValue] + 64);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

- (void)initializeGroupedTriggersForTransitionBlock:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 addedGraphs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Initializing GSTs for transition block.", buf, 2u);
    }
  }

  v8 = +[PLSSettings currentSettings];
  if ([v8 enableFastTransition])
  {
    v9 = [(PSTransitionManager *)self executionSession];
    v10 = [v9 systemGraphSession];

    if (v10)
    {
      [(PSGraphCompiler *)self->_compiler createGroupedTriggersOverXPCForTransitionBlock:v4];
      goto LABEL_10;
    }
  }

  else
  {
  }

  [(PSGraphCompiler *)self->_compiler createGroupedTriggersForTransitionBlock:v4];
LABEL_10:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v4 addedGraphs];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [v16 tasks];
        v18 = [v17 count];

        if (v18)
        {
          *buf = 0;
          v19 = [(NSMapTable *)self->_execGraphMap objectForKey:v16];
          [v19 getValue:buf];

          if (*buf)
          {
            [(PSGraphCompiler *)self->_compiler initializeGroupedTriggersForSubgraph:*buf withClientGraph:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v13);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = [v4 addedGraphs];
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(PSGraphCompiler *)self->_compiler initThreadPoolForGraph:*(*(&v26 + 1) + 8 * j) withExecutorGraph:self->_executor->var0];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeExecutorGraphsOverXPCForTransitionBlock:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 removedGraphs];
  v6 = [v5 count];

  if (!v6)
  {
LABEL_38:

    v51 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Removing PolarisExecutor graphs for transition block via XPC.", buf, 2u);
  }

  v55 = v4;
  v8 = [v4 removedGraphs];
  v9 = xpc_dictionary_create(0, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);
  v11 = [WeakRetained name];
  v12 = [v11 UTF8String];
  v13 = getpid();
  xdict = v9;
  populateGraphSetInfo(v9, 2uLL, v12, v13);

  [(PSTransitionMonitor *)self->_transitionMonitor lock];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v67;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v66 + 1) + 8 * i);
        v20 = [v19 tasks];
        v21 = [v20 count];

        if (v21)
        {
          v22 = [(NSMapTable *)self->_execGraphMap objectForKey:v19];
          v23 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
          [v23 addObject:v22];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v16);
  }

  [(PSTransitionMonitor *)self->_transitionMonitor unlock];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v63;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v63 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v62 + 1) + 8 * j);
        v30 = [v29 tasks];
        v31 = [v30 count];

        if (v31)
        {
          v32 = [(NSMapTable *)self->_execGraphMap objectForKey:v29];
          if (!v32)
          {
            [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v29];
LABEL_40:
            [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v29];
          }

          v33 = v32;
          v34 = [v32 pointerValue];
          if ([v29 teardownType])
          {
            goto LABEL_40;
          }

          v35 = [(PSGraphCompiler *)self->_compiler graphGSTMap];
          v36 = [v35 objectForKey:v29];

          if (v36)
          {
            v37 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_string(v37, "graph_name", (v34 + 113));
            xpc_dictionary_set_uint64(v37, "gst_idx", *[v36 pointerValue]);
            appendGraphInfotoGraphSetInfo(v37, xdict);
          }

          ps_exec_request_subgraph_terminate(self->_executor, v34);

          [(NSMapTable *)self->_execGraphMap removeObjectForKey:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v26);
  }

  v38 = xpc_dictionary_get_value(xdict, "graphs_array");
  if (!xpc_array_get_count(v38) || (v39 = objc_loadWeakRetained(&self->_executionSession), [v39 systemGraphSession], v40 = objc_claimAutoreleasedReturnValue(), v41 = xpc_session_send_message(v40, xdict), v40, v39, !v41))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v42 = v24;
    v43 = [v42 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v58;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v58 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v57 + 1) + 8 * k);
          v48 = [v47 tasks];
          v49 = [v48 count];

          if (v49)
          {
            [(PSGraphCompiler *)self->_compiler removeGraphFromThreadPool:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v44);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    v50 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
    [v50 removeAllObjects];

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
    v4 = v55;
    goto LABEL_38;
  }

  v52 = [(PSTransitionManager *)buf removeExecutorGraphsOverXPCForTransitionBlock:v41];
  [(PSTransitionManager *)v52 removeExecutorGraphsForTransitionBlock:v53, v54];
}

- (void)removeExecutorGraphsForTransitionBlock:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 removedGraphs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Removing PolarisExecutor graphs for transition block.", buf, 2u);
    }

    v8 = [v4 removedGraphs];
    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v54;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v54 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v53 + 1) + 8 * i);
          v15 = [v14 tasks];
          v16 = [v15 count];

          if (v16)
          {
            v17 = [(NSMapTable *)self->_execGraphMap objectForKey:v14];
            v18 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
            [v18 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v11);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v50;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v50 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v49 + 1) + 8 * j);
          v25 = [v24 tasks];
          v26 = [v25 count];

          if (v26)
          {
            v27 = [(NSMapTable *)self->_execGraphMap objectForKey:v24];
            if (!v27)
            {
              [(PSTransitionManager *)buf removeExecutorGraphsForTransitionBlock:v24];
LABEL_42:
              [(PSTransitionManager *)buf removeExecutorGraphsForTransitionBlock:v24];
            }

            v28 = v27;
            v29 = [v27 pointerValue];
            v30 = [v24 teardownType];
            if (v30 == 2)
            {
              executor = self->_executor;
              v32 = v29;
              v33 = 0;
            }

            else
            {
              if (v30 != 1)
              {
                if (v30)
                {
                  goto LABEL_42;
                }

                ps_exec_request_remove_subgraph(self->_executor, v29);
                goto LABEL_27;
              }

              executor = self->_executor;
              v32 = v29;
              v33 = 1;
            }

            ps_exec_request_remove_subgraph_with_sequenced_teardown(executor, v32, v33);
LABEL_27:
            [(NSMapTable *)self->_execGraphMap removeObjectForKey:v24];

            continue;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v21);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = v19;
    v35 = [v34 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v45;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v44 + 1) + 8 * k);
          v40 = [v39 tasks];
          v41 = [v40 count];

          if (v41)
          {
            [(PSGraphCompiler *)self->_compiler removeGraphFromThreadPool:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v36);
    }

    [(PSTransitionMonitor *)self->_transitionMonitor lock];
    v42 = [(PSTransitionMonitor *)self->_transitionMonitor subGraphsToBeRemoved];
    [v42 removeAllObjects];

    [(PSTransitionMonitor *)self->_transitionMonitor unlock];
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)addExecutorGraphsForTransitionBlock:(id)a3
{
  v159 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 addedGraphs];
  v6 = [v5 count];

  if (v6)
  {
    v7 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Adding PolarisExecutor graphs for transition block.", buf, 2u);
    }

    v90 = v4;
    v8 = [v4 addedGraphs];
    v98 = self;
    if (self->_isCoreAnalyticsEnabled)
    {
      v89 = v8;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      obj = [v4 addedGraphs];
      v93 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
      if (v93)
      {
        v92 = *v116;
        do
        {
          v9 = 0;
          do
          {
            if (*v116 != v92)
            {
              objc_enumerationMutation(obj);
            }

            v94 = v9;
            v10 = *(*(&v115 + 1) + 8 * v9);
            v11 = +[PSExecutionSessionWorkarounds sharedInstance];
            v96 = v10;
            v12 = [v10 name];
            v13 = [MEMORY[0x277CCAC38] processInfo];
            v14 = [v13 processName];
            v15 = [v11 shortenedNameForGraph:v12 procName:v14];

            v95 = v15;
            v16 = [v15 UTF8String];
            if (v16)
            {
              v17 = *v16;
              v18 = 2166136261;
              if (*v16)
              {
                v19 = v16 + 1;
                do
                {
                  v18 = 16777619 * (v18 ^ v17);
                  v20 = *v19++;
                  v17 = v20;
                }

                while (v20);
              }
            }

            else
            {
              v18 = 0;
            }

            graphHashTracker = self->_graphHashTracker;
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
            LOBYTE(graphHashTracker) = [(NSMutableSet *)graphHashTracker containsObject:v22];

            if ((graphHashTracker & 1) == 0)
            {
              v23 = self->_graphHashTracker;
              v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
              [(NSMutableSet *)v23 addObject:v24];

              v25 = [v15 UTF8String];
              if (v25)
              {
                v26 = v25;
                v158 = 0;
                v156 = 0u;
                v157 = 0u;
                v27 = v18;
                v154 = 0u;
                v155 = 0u;
                v152 = 0u;
                v153 = 0u;
                v150 = 0u;
                v151 = 0u;
                v148 = 0u;
                v149 = 0u;
                v146 = 0u;
                v147 = 0u;
                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v127 = 0u;
                *buf = v18;
                __strlcpy_chk();
                v28 = 0;
                while (1)
                {
                  v29 = ps_ca_buffers[ps_ca_decode_buffers[v28]];
                  v30 = pbs_ringbufferlogger_shared_write_decode_data();
                  if (!v30)
                  {
                    break;
                  }

                  v31 = v30;
                  if (++v28 == 3)
                  {
                    v125 = 0;
                    v123 = v27;
                    strncpy(v124, v26, 0x100uLL);
                    LODWORD(v125) = v31;
                    pbs_ringbuffer_get_shared_error_log();
                    pbs_ringbufferlogger_shared_write();
                    break;
                  }
                }
              }
            }

            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v99 = [v96 tasks];
            v101 = [v99 countByEnumeratingWithState:&v111 objects:v121 count:16];
            if (v101)
            {
              v32 = *v112;
              do
              {
                for (i = 0; i != v101; ++i)
                {
                  if (*v112 != v32)
                  {
                    objc_enumerationMutation(v99);
                  }

                  v34 = *(*(&v111 + 1) + 8 * i);
                  v35 = [v34 name];
                  v36 = [v35 UTF8String];
                  if (v36)
                  {
                    v37 = *v36;
                    v38 = 2166136261;
                    if (*v36)
                    {
                      v39 = v36 + 1;
                      do
                      {
                        v38 = 16777619 * (v38 ^ v37);
                        v40 = *v39++;
                        v37 = v40;
                      }

                      while (v40);
                    }
                  }

                  else
                  {
                    v38 = 0;
                  }

                  v41 = self->_graphHashTracker;
                  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
                  LOBYTE(v41) = [(NSMutableSet *)v41 containsObject:v42];

                  if ((v41 & 1) == 0)
                  {
                    v43 = self->_graphHashTracker;
                    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
                    [(NSMutableSet *)v43 addObject:v44];

                    v45 = [v34 name];
                    v46 = [v45 UTF8String];
                    if (v46)
                    {
                      v47 = v46;
                      v48 = v32;
                      v158 = 0;
                      v156 = 0u;
                      v157 = 0u;
                      v49 = v38;
                      v154 = 0u;
                      v155 = 0u;
                      v152 = 0u;
                      v153 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v144 = 0u;
                      v145 = 0u;
                      v142 = 0u;
                      v143 = 0u;
                      v140 = 0u;
                      v141 = 0u;
                      v138 = 0u;
                      v139 = 0u;
                      v136 = 0u;
                      v137 = 0u;
                      v134 = 0u;
                      v135 = 0u;
                      v132 = 0u;
                      v133 = 0u;
                      v130 = 0u;
                      v131 = 0u;
                      v128 = 0u;
                      v129 = 0u;
                      v127 = 0u;
                      *buf = v38;
                      __strlcpy_chk();
                      v50 = 0;
                      while (1)
                      {
                        v51 = ps_ca_buffers[ps_ca_decode_buffers[v50]];
                        v52 = pbs_ringbufferlogger_shared_write_decode_data();
                        if (!v52)
                        {
                          break;
                        }

                        v53 = v52;
                        if (++v50 == 3)
                        {
                          v125 = 0;
                          v123 = v49;
                          strncpy(v124, v47, 0x100uLL);
                          LODWORD(v125) = v53;
                          pbs_ringbuffer_get_shared_error_log();
                          pbs_ringbufferlogger_shared_write();
                          break;
                        }
                      }

                      v32 = v48;
                      self = v98;
                    }
                  }
                }

                v101 = [v99 countByEnumeratingWithState:&v111 objects:v121 count:16];
              }

              while (v101);
            }

            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            v97 = [v96 writers];
            v102 = [v97 countByEnumeratingWithState:&v107 objects:v120 count:16];
            if (v102)
            {
              v100 = *v108;
              do
              {
                for (j = 0; j != v102; ++j)
                {
                  if (*v108 != v100)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v55 = *(*(&v107 + 1) + 8 * j);
                  v56 = [v55 output];
                  v57 = [v56 resourceKey];
                  v58 = [v57 UTF8String];
                  if (v58)
                  {
                    v59 = *v58;
                    v60 = 2166136261;
                    if (*v58)
                    {
                      v61 = v58 + 1;
                      do
                      {
                        v60 = 16777619 * (v60 ^ v59);
                        v62 = *v61++;
                        v59 = v62;
                      }

                      while (v62);
                    }
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v63 = self->_graphHashTracker;
                  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
                  LOBYTE(v63) = [(NSMutableSet *)v63 containsObject:v64];

                  if ((v63 & 1) == 0)
                  {
                    v65 = self->_graphHashTracker;
                    v66 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
                    [(NSMutableSet *)v65 addObject:v66];

                    v67 = [v55 output];
                    v68 = [v67 resourceKey];
                    v69 = [v68 UTF8String];
                    if (v69)
                    {
                      v70 = v69;
                      v158 = 0;
                      v156 = 0u;
                      v157 = 0u;
                      v71 = v60;
                      v154 = 0u;
                      v155 = 0u;
                      v152 = 0u;
                      v153 = 0u;
                      v150 = 0u;
                      v151 = 0u;
                      v148 = 0u;
                      v149 = 0u;
                      v146 = 0u;
                      v147 = 0u;
                      v144 = 0u;
                      v145 = 0u;
                      v142 = 0u;
                      v143 = 0u;
                      v140 = 0u;
                      v141 = 0u;
                      v138 = 0u;
                      v139 = 0u;
                      v136 = 0u;
                      v137 = 0u;
                      v134 = 0u;
                      v135 = 0u;
                      v132 = 0u;
                      v133 = 0u;
                      v130 = 0u;
                      v131 = 0u;
                      v128 = 0u;
                      v129 = 0u;
                      v127 = 0u;
                      *buf = v60;
                      __strlcpy_chk();
                      v72 = 0;
                      while (1)
                      {
                        v73 = ps_ca_buffers[ps_ca_decode_buffers[v72]];
                        v74 = pbs_ringbufferlogger_shared_write_decode_data();
                        if (!v74)
                        {
                          break;
                        }

                        v75 = v74;
                        if (++v72 == 3)
                        {
                          v125 = 0;
                          v123 = v71;
                          strncpy(v124, v70, 0x100uLL);
                          LODWORD(v125) = v75;
                          pbs_ringbuffer_get_shared_error_log();
                          pbs_ringbufferlogger_shared_write();
                          break;
                        }
                      }

                      self = v98;
                    }
                  }
                }

                v102 = [v97 countByEnumeratingWithState:&v107 objects:v120 count:16];
              }

              while (v102);
            }

            v9 = v94 + 1;
          }

          while (v94 + 1 != v93);
          v93 = [obj countByEnumeratingWithState:&v115 objects:v122 count:16];
        }

        while (v93);
      }

      v8 = v89;
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v76 = v8;
    v77 = [v76 countByEnumeratingWithState:&v103 objects:v119 count:16];
    if (v77)
    {
      v78 = v77;
      v79 = *v104;
      do
      {
        for (k = 0; k != v78; ++k)
        {
          if (*v104 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v103 + 1) + 8 * k);
          v82 = [v81 tasks];
          v83 = [v82 count];

          if (v83)
          {
            v84 = ps_exec_request_add_subgraph(v98->_executor);
            [(PSGraphCompiler *)v98->_compiler createExecSubGraphWithFreeSlot:v84 withClientGraph:v81];
            WeakRetained = objc_loadWeakRetained(&v98->_executionSession);
            ps_frame_history_graph_buffer_init(WeakRetained[1], v84, v81);

            [v81 setSubgraph_idx:*(v84 + 8)];
            execGraphMap = v98->_execGraphMap;
            v87 = [MEMORY[0x277CCAE60] valueWithPointer:v84];
            [(NSMapTable *)execGraphMap setObject:v87 forKey:v81];
          }
        }

        v78 = [v76 countByEnumeratingWithState:&v103 objects:v119 count:16];
      }

      while (v78);
    }

    ps_exec_finish_adding_subgraphs(v98->_executor);
    v4 = v90;
  }

  v88 = *MEMORY[0x277D85DE8];
}

- (PSExecutionSession)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (void)setupCoreAnalyticsForAddedGraphs:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = v4;
  if (self->_isCoreAnalyticsEnabled)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v60 = OUTLINED_FUNCTION_9_1(v4, v5, v6, v7, v8, v9, v10, v11, v54, v4, v57, v59, v61, v63);
    if (v60)
    {
      v58 = *v70;
      do
      {
        v12 = 0;
        do
        {
          if (*v70 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v69 + 1) + 8 * v12);
          v14 = +[PSExecutionSessionWorkarounds sharedInstance];
          v15 = [v13 name];
          v16 = [MEMORY[0x277CCAC38] processInfo];
          v17 = [v16 processName];
          v18 = [v14 shortenedNameForGraph:v15 procName:v17];
          [v13 setCaName:v18];

          v19 = MEMORY[0x277CCABB0];
          v20 = [v13 caName];
          v21 = [v20 UTF8String];
          v62 = v12;
          if (v21)
          {
            v22 = *v21;
            v23 = 2166136261;
            if (*v21)
            {
              v24 = v21 + 1;
              do
              {
                v23 = 16777619 * (v23 ^ v22);
                v25 = *v24++;
                v22 = v25;
              }

              while (v25);
            }
          }

          else
          {
            v23 = 0;
          }

          v26 = [v19 numberWithUnsignedInt:v23];
          [v13 setCaNameHash:v26];

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = [v13 tasks];
          v27 = [v64 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v66;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v66 != v29)
                {
                  objc_enumerationMutation(v64);
                }

                v31 = *(*(&v65 + 1) + 8 * i);
                v32 = +[PSExecutionSessionWorkarounds sharedInstance];
                v33 = [v31 name];
                v34 = [MEMORY[0x277CCAC38] processInfo];
                v35 = [v34 processName];
                v36 = [v32 shortenedNameForTask:v33 procName:v35];
                [v31 setCaName:v36];

                v37 = MEMORY[0x277CCABB0];
                v38 = [v31 caName];
                v39 = [v38 UTF8String];
                if (v39)
                {
                  v40 = *v39;
                  v41 = 2166136261;
                  if (*v39)
                  {
                    v42 = v39 + 1;
                    do
                    {
                      v41 = 16777619 * (v41 ^ v40);
                      v43 = *v42++;
                      v40 = v43;
                    }

                    while (v43);
                  }
                }

                else
                {
                  v41 = 0;
                }

                v44 = [v37 numberWithUnsignedInt:v41];
                [v31 setCaNameHash:v44];
              }

              v28 = [v64 countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v28);
          }

          v12 = v62 + 1;
        }

        while (v62 + 1 != v60);
        v60 = OUTLINED_FUNCTION_9_1(v45, v46, v47, v48, v49, v50, v51, v52, v55, obj, v58, v60, v62, v64);
      }

      while (v60);
    }
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)commitAddedGraphs:(NSObject *)a1 removedGraphs:(int)a2 option:stopGraphs:error:.cold.1(NSObject *a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PSTransitionManager commitAddedGraphs:removedGraphs:option:stopGraphs:error:]";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (uint64_t)transitionExecutorForRemote:(char *)a1 error:(void *)a2 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not extract resource key info because %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 description];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not extract resource key info because %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager sendGraphInfoToSystemGraph:v20];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error has occurred during graph transition %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 localizedDescription];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d An error has occurred during graph transition %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager sendGraphInfoToSystemGraph:v20];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.2(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error has occurred during graph transition: %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 localizedDescription];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d An error has occurred during graph transition: %s", v9, v10, v11, v12, v23, v24, v25);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v20 sendGraphInfoToSystemGraph:v21];
}

- (uint64_t)sendGraphInfoToSystemGraph:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  asprintf(a1, "Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", v5);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Failed to send an XPC message for graphsAddedRemoved to polarisd, aborting! Error = %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager transitionExecutorForBlock:v20 error:?];
}

- (uint64_t)transitionExecutorForBlock:(char *)a1 error:(void *)a2 .cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not extract resource key info because %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 description];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not extract resource key info because %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager removeExecutorGraphsOverXPCForTransitionBlock:v20];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Bad teardown type specified for graph %s: %lu", [v4 UTF8String], objc_msgSend(a2, "teardownType"));

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    [a2 teardownType];
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v7, v8, "%s:%d Bad teardown type specified for graph %s: %lu", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager removeExecutorGraphsOverXPCForTransitionBlock:v20];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not find ps_exec_subgraph_t for removal for PSGraph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 description];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find ps_exec_subgraph_t for removal for PSGraph %s", v9, v10, v11, v12, v23, v24, v25);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager *)v20 removeExecutorGraphsOverXPCForTransitionBlock:v21];
}

- (uint64_t)removeExecutorGraphsOverXPCForTransitionBlock:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  asprintf(a1, "Failed to send an XPC message to removeExecutorGraphs to polarisd, aborting! Error = %s", v5);
  v6 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v6))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Failed to send an XPC message to removeExecutorGraphs to polarisd, aborting! Error = %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager removeExecutorGraphsForTransitionBlock:v20];
}

- (uint64_t)removeExecutorGraphsForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Bad teardown type specified for graph %s: %lu", [v4 UTF8String], objc_msgSend(a2, "teardownType"));

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    [a2 teardownType];
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v7, v8, "%s:%d Bad teardown type specified for graph %s: %lu", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, 2u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionManager removeExecutorGraphsForTransitionBlock:v20];
}

- (uint64_t)removeExecutorGraphsForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 description];
  asprintf(a1, "Could not find ps_exec_subgraph_t for removal for PSGraph %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 description];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find ps_exec_subgraph_t for removal for PSGraph %s", v9, v10, v11, v12, v23, v24, v25);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSTransitionMonitor *)v20 stateToString:v21];
}

@end