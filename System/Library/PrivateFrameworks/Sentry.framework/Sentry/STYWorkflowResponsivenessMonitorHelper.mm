@interface STYWorkflowResponsivenessMonitorHelper
- (BOOL)workflowIsUnderLimits:(id)limits;
- (STYWorkflowResponsivenessMonitorHelper)init;
- (void)handleSignpost:(id)signpost;
- (void)notifyWhenSettingsChanged:(id)changed block:(id)block;
- (void)resetCounts;
- (void)resetPerDayCounts;
- (void)resetPerPeriodCounts;
- (void)resetState;
- (void)setPeriodLengthSec:(int)sec;
- (void)updateAllowList;
- (void)workflowEventCompleted:(id)completed completedWRTracker:(id)tracker;
@end

@implementation STYWorkflowResponsivenessMonitorHelper

- (STYWorkflowResponsivenessMonitorHelper)init
{
  v29.receiver = self;
  v29.super_class = STYWorkflowResponsivenessMonitorHelper;
  v2 = [(STYSignpostsMonitorHelper *)&v29 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D55040]);
    allowList = v2->_allowList;
    v2->_allowList = v3;

    v5 = dispatch_get_global_queue(5, 0);
    dispatch_async(v5, &__block_literal_global_482);

    objc_initWeak(&location, v2);
    v6 = MEMORY[0x277D7D2A0];
    processingQueue = [(STYSignpostsMonitorHelper *)v2 processingQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_2;
    v26[3] = &unk_279B9B860;
    objc_copyWeak(&v27, &location);
    v8 = [v6 providerForAllWorkflowsWithQueue:processingQueue callback:v26];
    workflowProvider = v2->_workflowProvider;
    v2->_workflowProvider = v8;

    processingQueue2 = [(STYSignpostsMonitorHelper *)v2 processingQueue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, processingQueue2);

    v12 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 86400000000000);
    dispatch_source_set_timer(v11, v12, 0x4E94914F0000uLL, 0x34630B8A000uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_490;
    handler[3] = &unk_279B9B5C8;
    v13 = v2;
    v25 = v13;
    dispatch_source_set_event_handler(v11, handler);
    dispatch_activate(v11);
    objc_storeStrong(v13 + 11, v11);
    processingQueue3 = [v13 processingQueue];
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, processingQueue3);

    if ([v13 periodLengthSec] >= 1)
    {
      if ([v13 periodLengthSec] < 1)
      {
        v16 = -1;
      }

      else
      {
        v16 = 1000000000 * [v13 periodLengthSec];
      }

      v17 = dispatch_time(0xFFFFFFFFFFFFFFFELL, v16);
      dispatch_source_set_timer(v15, v17, 1000000000 * [v13 periodLengthSec], 1000000000 * objc_msgSend(v13, "periodLengthSec") / 0xAuLL);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_491;
    v22[3] = &unk_279B9B5C8;
    v18 = v13;
    v23 = v18;
    dispatch_source_set_event_handler(v15, v22);
    dispatch_resume(v15);
    v19 = v18[12];
    v18[12] = v15;
    v20 = v15;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v28 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v26;
    v3 = 0;
    v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v4)
    {
      v5 = *v35;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v35 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v34 + 1) + 8 * i);
          v8 = [v7 allowListForDiagnostics];
          v9 = +[STYFrameworkHelper sharedHelper];
          v10 = [v9 logHandle];

          v11 = os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT);
          if (v8)
          {
            if (v11)
            {
              v12 = [v7 name];
              *buf = 138543362;
              v39 = v12;
              _os_log_impl(&dword_2656CE000, &v10->super, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ starting monitoring", buf, 0xCu);
            }

            if (!v3)
            {
              v3 = objc_alloc_init(MEMORY[0x277D55040]);
            }

            [v3 addAllowlist:v8];
            v10 = objc_alloc_init(STYWorkflowEventTracker);
            objc_initWeak(buf, v10);
            v13 = objc_alloc(MEMORY[0x277D7D298]);
            v14 = [WeakRetained processingQueue];
            v31[0] = MEMORY[0x277D85DD0];
            v31[1] = 3221225472;
            v31[2] = __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_487;
            v31[3] = &unk_279B9B838;
            objc_copyWeak(&v32, buf);
            objc_copyWeak(&v33, (v28 + 32));
            v15 = [v13 initForLiveStreamingWithWorkflow:v7 timeoutQueue:v14 eventCompletionCallback:v31];

            [(STYWorkflowEventTracker *)v10 setWrTracker:v15];
            [v29 addObject:v10];

            objc_destroyWeak(&v33);
            objc_destroyWeak(&v32);
            objc_destroyWeak(buf);
          }

          else if (v11)
          {
            v16 = [v7 name];
            *buf = 138543362;
            v39 = v16;
            _os_log_impl(&dword_2656CE000, &v10->super, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ has no diagnostics enabled, not monitoring", buf, 0xCu);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v4);
    }

    [WeakRetained setWorkflowEventTrackers:0];
    if ([v29 count])
    {
      v17 = [v29 copy];
      [WeakRetained setWorkflowEventTrackers:v17];

      [WeakRetained takeTransaction];
    }

    else
    {
      v18 = +[STYFrameworkHelper sharedHelper];
      v19 = [v18 logHandle];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2656CE000, v19, OS_LOG_TYPE_DEFAULT, "No workflows have diagnostics enabled", buf, 2u);
      }

      [WeakRetained setOsTransaction:0];
    }

    objc_storeStrong(WeakRetained + 4, v3);
    v20 = [WeakRetained settingsChangedCallbackQueue];
    if (v20)
    {
      v21 = [WeakRetained settingsChangedCallback];
      v22 = v21 == 0;

      if (!v22)
      {
        v23 = [WeakRetained settingsChangedCallbackQueue];
        v24 = [WeakRetained settingsChangedCallback];
        dispatch_async(v23, v24);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_487(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (v4 && WeakRetained)
  {
    [v4 workflowEventCompleted:WeakRetained completedWRTracker:v6];
  }
}

uint64_t __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_490(uint64_t a1)
{
  v2 = +[STYFrameworkHelper sharedHelper];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2656CE000, v3, OS_LOG_TYPE_DEFAULT, "Daily timer fired, resetting per-day counts", v5, 2u);
  }

  return [*(a1 + 32) resetPerDayCounts];
}

uint64_t __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_491(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[STYFrameworkHelper sharedHelper];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) periodLengthSec];
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_2656CE000, v3, OS_LOG_TYPE_DEFAULT, "per-period (%ds) timer fired, resetting per-day counts", v7, 8u);
  }

  result = [*(a1 + 32) resetPerPeriodCounts];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)notifyWhenSettingsChanged:(id)changed block:(id)block
{
  blockCopy = block;
  [(STYWorkflowResponsivenessMonitorHelper *)self setSettingsChangedCallbackQueue:changed];
  [(STYWorkflowResponsivenessMonitorHelper *)self setSettingsChangedCallback:blockCopy];
}

- (void)handleSignpost:(id)signpost
{
  v27 = *MEMORY[0x277D85DE8];
  signpostCopy = signpost;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      v19 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        if ([(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v8])
        {
          [v8 wrTracker];
          v9 = v6;
          v11 = v10 = self;
          workflow = [v11 workflow];
          allowListForDiagnostics = [workflow allowListForDiagnostics];
          subsystem = [signpostCopy subsystem];
          category = [signpostCopy category];
          v16 = [allowListForDiagnostics passesSubsystem:subsystem category:category];

          self = v10;
          v6 = v9;
          v5 = v19;
          if (v16)
          {
            wrTracker = [v8 wrTracker];
            [wrTracker handleSignpost:signpostCopy];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)resetState
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  workflowEventTrackers = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [workflowEventTrackers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(workflowEventTrackers);
        }

        wrTracker = [*(*(&v9 + 1) + 8 * v6) wrTracker];
        [wrTracker reset];

        ++v6;
      }

      while (v4 != v6);
      v4 = [workflowEventTrackers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)workflowIsUnderLimits:(id)limits
{
  limitsCopy = limits;
  perPeriodEventCount = [limitsCopy perPeriodEventCount];
  if (perPeriodEventCount >= [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit])
  {
    v7 = 0;
  }

  else
  {
    perDayEventCount = [limitsCopy perDayEventCount];
    v7 = perDayEventCount < [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
  }

  return v7;
}

- (void)resetCounts
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (!v3)
  {
LABEL_27:

    goto LABEL_28;
  }

  v5 = v3;
  v39 = 0;
  v41 = *v43;
  *&v4 = 138544386;
  v38 = v4;
  do
  {
    v6 = 0;
    do
    {
      if (*v43 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * v6);
      perDayEventCount = [v7 perDayEventCount];
      perPeriodEventCount = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerDayEventCount:0];
      [v7 setPerPeriodEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          wrTracker = [v7 wrTracker];
          workflow = [wrTracker workflow];
          name = [workflow name];
          perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = name;
          v48 = 1024;
          v49 = perDayEventCount;
          v50 = 1024;
          v51 = perDayLogLimit;
          v52 = 1024;
          v53 = perPeriodEventCount;
          v54 = 1024;
          v55 = perPeriodLogLimit;
          v19 = logHandle;
          v20 = "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit2;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit2;
        _os_log_fault_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit3;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit3;
        _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      wrTracker = [v7 wrTracker];
      workflow = [wrTracker workflow];
      name = [workflow name];
      perDayLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      perPeriodLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = name;
      v48 = 1024;
      v49 = perDayEventCount;
      v50 = 1024;
      v51 = perDayLogLimit4;
      v52 = 1024;
      v53 = perPeriodEventCount;
      v54 = 1024;
      v55 = perPeriodLogLimit4;
      v19 = logHandle;
      v20 = "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), still above limits";
LABEL_18:
      _os_log_impl(&dword_2656CE000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x24u);

LABEL_19:
      ++v6;
    }

    while (v5 != v6);
    v31 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    v5 = v31;
  }

  while (v31);

  if (v39)
  {
    [(STYWorkflowResponsivenessMonitorHelper *)self updateAllowList];
    settingsChangedCallbackQueue = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (settingsChangedCallbackQueue)
    {
      v33 = settingsChangedCallbackQueue;
      settingsChangedCallback = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (settingsChangedCallback)
      {
        settingsChangedCallbackQueue2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        settingsChangedCallback2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = settingsChangedCallbackQueue2;
        dispatch_async(settingsChangedCallbackQueue2, settingsChangedCallback2);

        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)resetPerDayCounts
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (!v3)
  {
LABEL_27:

    goto LABEL_28;
  }

  v5 = v3;
  v39 = 0;
  v41 = *v43;
  *&v4 = 138544386;
  v38 = v4;
  do
  {
    v6 = 0;
    do
    {
      if (*v43 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * v6);
      perDayEventCount = [v7 perDayEventCount];
      perPeriodEventCount = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerDayEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          wrTracker = [v7 wrTracker];
          workflow = [wrTracker workflow];
          name = [workflow name];
          perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = name;
          v48 = 1024;
          v49 = perDayEventCount;
          v50 = 1024;
          v51 = perDayLogLimit;
          v52 = 1024;
          v53 = perPeriodEventCount;
          v54 = 1024;
          v55 = perPeriodLogLimit;
          v19 = logHandle;
          v20 = "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit2;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit2;
        _os_log_fault_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit3;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit3;
        _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      wrTracker = [v7 wrTracker];
      workflow = [wrTracker workflow];
      name = [workflow name];
      perDayLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      perPeriodLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = name;
      v48 = 1024;
      v49 = perDayEventCount;
      v50 = 1024;
      v51 = perDayLogLimit4;
      v52 = 1024;
      v53 = perPeriodEventCount;
      v54 = 1024;
      v55 = perPeriodLogLimit4;
      v19 = logHandle;
      v20 = "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), still above limits";
LABEL_18:
      _os_log_impl(&dword_2656CE000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x24u);

LABEL_19:
      ++v6;
    }

    while (v5 != v6);
    v31 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    v5 = v31;
  }

  while (v31);

  if (v39)
  {
    [(STYWorkflowResponsivenessMonitorHelper *)self updateAllowList];
    settingsChangedCallbackQueue = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (settingsChangedCallbackQueue)
    {
      v33 = settingsChangedCallbackQueue;
      settingsChangedCallback = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (settingsChangedCallback)
      {
        settingsChangedCallbackQueue2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        settingsChangedCallback2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = settingsChangedCallbackQueue2;
        dispatch_async(settingsChangedCallbackQueue2, settingsChangedCallback2);

        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)resetPerPeriodCounts
{
  v57 = *MEMORY[0x277D85DE8];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (!v3)
  {
LABEL_27:

    goto LABEL_28;
  }

  v5 = v3;
  v39 = 0;
  v41 = *v43;
  *&v4 = 138544386;
  v38 = v4;
  do
  {
    v6 = 0;
    do
    {
      if (*v43 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v42 + 1) + 8 * v6);
      perDayEventCount = [v7 perDayEventCount];
      perPeriodEventCount = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerPeriodEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      logHandle = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          wrTracker = [v7 wrTracker];
          workflow = [wrTracker workflow];
          name = [workflow name];
          perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = name;
          v48 = 1024;
          v49 = perDayEventCount;
          v50 = 1024;
          v51 = perDayLogLimit;
          v52 = 1024;
          v53 = perPeriodEventCount;
          v54 = 1024;
          v55 = perPeriodLogLimit;
          v19 = logHandle;
          v20 = "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit2;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit2;
        _os_log_fault_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        wrTracker2 = [v7 wrTracker];
        workflow2 = [wrTracker2 workflow];
        name2 = [workflow2 name];
        perDayLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        perPeriodLogLimit3 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = name2;
        v48 = 1024;
        v49 = perDayEventCount;
        v50 = 1024;
        v51 = perDayLogLimit3;
        v52 = 1024;
        v53 = perPeriodEventCount;
        v54 = 1024;
        v55 = perPeriodLogLimit3;
        _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      wrTracker = [v7 wrTracker];
      workflow = [wrTracker workflow];
      name = [workflow name];
      perDayLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      perPeriodLogLimit4 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = name;
      v48 = 1024;
      v49 = perDayEventCount;
      v50 = 1024;
      v51 = perDayLogLimit4;
      v52 = 1024;
      v53 = perPeriodEventCount;
      v54 = 1024;
      v55 = perPeriodLogLimit4;
      v19 = logHandle;
      v20 = "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), still above limits";
LABEL_18:
      _os_log_impl(&dword_2656CE000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x24u);

LABEL_19:
      ++v6;
    }

    while (v5 != v6);
    v31 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    v5 = v31;
  }

  while (v31);

  if (v39)
  {
    [(STYWorkflowResponsivenessMonitorHelper *)self updateAllowList];
    settingsChangedCallbackQueue = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (settingsChangedCallbackQueue)
    {
      v33 = settingsChangedCallbackQueue;
      settingsChangedCallback = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (settingsChangedCallback)
      {
        settingsChangedCallbackQueue2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        settingsChangedCallback2 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = settingsChangedCallbackQueue2;
        dispatch_async(settingsChangedCallbackQueue2, settingsChangedCallback2);

        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)workflowEventCompleted:(id)completed completedWRTracker:(id)tracker
{
  v48 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  trackerCopy = tracker;
  v8 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:completedCopy];
  v9 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v9 logHandle];

  if (!v8)
  {
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      workflow = [trackerCopy workflow];
      name = [workflow name];
      v38 = 138544386;
      v39 = name;
      v40 = 1024;
      perDayEventCount = [completedCopy perDayEventCount];
      v42 = 1024;
      perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v44 = 1024;
      perPeriodEventCount = [completedCopy perPeriodEventCount];
      v46 = 1024;
      perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ already exceeded limits (%d/%d per day, %d/%d per period), not reporting completed event", &v38, 0x24u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    workflow2 = [trackerCopy workflow];
    name2 = [workflow2 name];
    v38 = 138544386;
    v39 = name2;
    v40 = 1024;
    perDayEventCount = [completedCopy perDayEventCount];
    v42 = 1024;
    perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
    v44 = 1024;
    perPeriodEventCount = [completedCopy perPeriodEventCount];
    v46 = 1024;
    perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
    _os_log_debug_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ below limits (%d/%d per day, %d/%d per period)", &v38, 0x24u);
  }

  v11 = +[STYFrameworkHelper sharedHelper];
  logHandle2 = [v11 logHandle];

  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
  {
    workflow3 = [trackerCopy workflow];
    name3 = [workflow3 name];
    v38 = 138543362;
    v39 = name3;
    _os_log_impl(&dword_2656CE000, logHandle2, OS_LOG_TYPE_INFO, "Workflow %{public}@ event completed, gathering diagnostics if needed", &v38, 0xCu);
  }

  gatherDiagnosticsIfNeeded = [trackerCopy gatherDiagnosticsIfNeeded];
  v16 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v16 logHandle];

  v17 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if ((gatherDiagnosticsIfNeeded & 1) == 0)
  {
    if (!v17)
    {
LABEL_20:

      goto LABEL_21;
    }

    workflow4 = [trackerCopy workflow];
    name4 = [workflow4 name];
    v38 = 138543362;
    v39 = name4;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ event completed, no diagnostics were needed", &v38, 0xCu);

LABEL_19:
    goto LABEL_20;
  }

  if (v17)
  {
    workflow5 = [trackerCopy workflow];
    name5 = [workflow5 name];
    v38 = 138543362;
    v39 = name5;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ event completed, diagnostics were kicked off", &v38, 0xCu);
  }

  [completedCopy setPerPeriodEventCount:{objc_msgSend(completedCopy, "perPeriodEventCount") + 1}];
  [completedCopy setPerDayEventCount:{objc_msgSend(completedCopy, "perDayEventCount") + 1}];
  if (![(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:completedCopy])
  {
    v20 = +[STYFrameworkHelper sharedHelper];
    logHandle3 = [v20 logHandle];

    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
    {
      workflow6 = [trackerCopy workflow];
      name6 = [workflow6 name];
      perDayEventCount2 = [completedCopy perDayEventCount];
      perDayLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      perPeriodEventCount2 = [completedCopy perPeriodEventCount];
      perPeriodLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      v38 = 138544386;
      v39 = name6;
      v40 = 1024;
      perDayEventCount = perDayEventCount2;
      v42 = 1024;
      perDayLogLimit = perDayLogLimit2;
      v44 = 1024;
      perPeriodEventCount = perPeriodEventCount2;
      v46 = 1024;
      perPeriodLogLimit = perPeriodLogLimit2;
      _os_log_impl(&dword_2656CE000, logHandle3, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ hit report limit (%d/%d per day, %d/%d per period), turning off signpost streaming", &v38, 0x24u);
    }

    [(STYWorkflowResponsivenessMonitorHelper *)self updateAllowList];
    settingsChangedCallbackQueue = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (settingsChangedCallbackQueue)
    {
      v29 = settingsChangedCallbackQueue;
      settingsChangedCallback = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (settingsChangedCallback)
      {
        logHandle = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        workflow4 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        dispatch_async(logHandle, workflow4);
        goto LABEL_19;
      }
    }
  }

LABEL_21:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)updateAllowList
{
  v47 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v8];
        v10 = +[STYFrameworkHelper sharedHelper];
        logHandle = [v10 logHandle];

        v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          if (v12)
          {
            wrTracker = [v8 wrTracker];
            workflow = [wrTracker workflow];
            name = [workflow name];
            perDayEventCount = [v8 perDayEventCount];
            perDayLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
            perPeriodEventCount = [v8 perPeriodEventCount];
            perPeriodLogLimit = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
            *buf = 138544386;
            v37 = name;
            v38 = 1024;
            v39 = perDayEventCount;
            v40 = 1024;
            v41 = perDayLogLimit;
            v42 = 1024;
            v43 = perPeriodEventCount;
            v44 = 1024;
            v45 = perPeriodLogLimit;
            _os_log_debug_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ is below limit (%d/%d per day, %d/%d per period), including in allowlist", buf, 0x24u);
          }

          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277D55040]);
          }

          logHandle = [v8 wrTracker];
          workflow2 = [logHandle workflow];
          allowListForDiagnostics = [workflow2 allowListForDiagnostics];
          [v5 addAllowlist:allowListForDiagnostics];
        }

        else if (v12)
        {
          wrTracker2 = [v8 wrTracker];
          workflow3 = [wrTracker2 workflow];
          name2 = [workflow3 name];
          perDayEventCount2 = [v8 perDayEventCount];
          perDayLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          perPeriodEventCount2 = [v8 perPeriodEventCount];
          perPeriodLogLimit2 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = 138544386;
          v37 = name2;
          v38 = 1024;
          v39 = perDayEventCount2;
          v40 = 1024;
          v41 = perDayLogLimit2;
          v42 = 1024;
          v43 = perPeriodEventCount2;
          v44 = 1024;
          v45 = perPeriodLogLimit2;
          _os_log_debug_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ is above limit (%d/%d per day, %d/%d per period), not including in allowlist", buf, 0x24u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  allowList = self->_allowList;
  self->_allowList = v5;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setPeriodLengthSec:(int)sec
{
  periodLengthSec = self->_periodLengthSec;
  self->_periodLengthSec = sec;
  if (periodLengthSec != sec)
  {
    processingQueue = [(STYSignpostsMonitorHelper *)self processingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__STYWorkflowResponsivenessMonitorHelper_setPeriodLengthSec___block_invoke;
    v7[3] = &unk_279B9B5A0;
    v7[4] = self;
    v8 = periodLengthSec;
    secCopy = sec;
    dispatch_async(processingQueue, v7);
  }
}

void __61__STYWorkflowResponsivenessMonitorHelper_setPeriodLengthSec___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) perPeriodTimer];

  if (v2)
  {
    v3 = +[STYFrameworkHelper sharedHelper];
    v4 = [v3 logHandle];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 44);
      v9[0] = 67109376;
      v9[1] = v5;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_2656CE000, v4, OS_LOG_TYPE_DEFAULT, "Workflow Responsiveness logging period changed from %ds to %ds while actively monitoring", v9, 0xEu);
    }

    [*(a1 + 32) resetPerPeriodCounts];
    v7 = [*(a1 + 32) perPeriodTimer];
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFELL, 1000000000 * [*(a1 + 32) periodLengthSec], 1000000000 * objc_msgSend(*(a1 + 32), "periodLengthSec") / 0xAuLL);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end