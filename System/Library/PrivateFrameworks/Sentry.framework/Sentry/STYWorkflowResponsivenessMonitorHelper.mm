@interface STYWorkflowResponsivenessMonitorHelper
- (BOOL)workflowIsUnderLimits:(id)a3;
- (STYWorkflowResponsivenessMonitorHelper)init;
- (void)handleSignpost:(id)a3;
- (void)notifyWhenSettingsChanged:(id)a3 block:(id)a4;
- (void)resetCounts;
- (void)resetPerDayCounts;
- (void)resetPerPeriodCounts;
- (void)resetState;
- (void)setPeriodLengthSec:(int)a3;
- (void)updateAllowList;
- (void)workflowEventCompleted:(id)a3 completedWRTracker:(id)a4;
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
    v7 = [(STYSignpostsMonitorHelper *)v2 processingQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __46__STYWorkflowResponsivenessMonitorHelper_init__block_invoke_2;
    v26[3] = &unk_279B9B860;
    objc_copyWeak(&v27, &location);
    v8 = [v6 providerForAllWorkflowsWithQueue:v7 callback:v26];
    workflowProvider = v2->_workflowProvider;
    v2->_workflowProvider = v8;

    v10 = [(STYSignpostsMonitorHelper *)v2 processingQueue];
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);

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
    v14 = [v13 processingQueue];
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14);

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

- (void)notifyWhenSettingsChanged:(id)a3 block:(id)a4
{
  v6 = a4;
  [(STYWorkflowResponsivenessMonitorHelper *)self setSettingsChangedCallbackQueue:a3];
  [(STYWorkflowResponsivenessMonitorHelper *)self setSettingsChangedCallback:v6];
}

- (void)handleSignpost:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a3;
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
          v12 = [v11 workflow];
          v13 = [v12 allowListForDiagnostics];
          v14 = [v21 subsystem];
          v15 = [v21 category];
          v16 = [v13 passesSubsystem:v14 category:v15];

          self = v10;
          v6 = v9;
          v5 = v19;
          if (v16)
          {
            v17 = [v8 wrTracker];
            [v17 handleSignpost:v21];
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
  v2 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowEventTrackers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) wrTracker];
        [v7 reset];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)workflowIsUnderLimits:(id)a3
{
  v4 = a3;
  v5 = [v4 perPeriodEventCount];
  if (v5 >= [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit])
  {
    v7 = 0;
  }

  else
  {
    v6 = [v4 perDayEventCount];
    v7 = v6 < [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
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
      v8 = [v7 perDayEventCount];
      v9 = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerDayEventCount:0];
      [v7 setPerPeriodEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      v13 = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v14 = [v7 wrTracker];
          v15 = [v14 workflow];
          v16 = [v15 name];
          v17 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          v18 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = v16;
          v48 = 1024;
          v49 = v8;
          v50 = 1024;
          v51 = v17;
          v52 = 1024;
          v53 = v9;
          v54 = 1024;
          v55 = v18;
          v19 = v13;
          v20 = "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v29 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v30 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v29;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v30;
        _os_log_fault_impl(&dword_2656CE000, v13, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v25 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v26 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v25;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v26;
        _os_log_impl(&dword_2656CE000, v13, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting all counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      v14 = [v7 wrTracker];
      v15 = [v14 workflow];
      v16 = [v15 name];
      v27 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v28 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = v16;
      v48 = 1024;
      v49 = v8;
      v50 = 1024;
      v51 = v27;
      v52 = 1024;
      v53 = v9;
      v54 = 1024;
      v55 = v28;
      v19 = v13;
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
    v32 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (v32)
    {
      v33 = v32;
      v34 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (v34)
      {
        v35 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        v36 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = v35;
        dispatch_async(v35, v36);

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
      v8 = [v7 perDayEventCount];
      v9 = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerDayEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      v13 = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v14 = [v7 wrTracker];
          v15 = [v14 workflow];
          v16 = [v15 name];
          v17 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          v18 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = v16;
          v48 = 1024;
          v49 = v8;
          v50 = 1024;
          v51 = v17;
          v52 = 1024;
          v53 = v9;
          v54 = 1024;
          v55 = v18;
          v19 = v13;
          v20 = "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v29 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v30 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v29;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v30;
        _os_log_fault_impl(&dword_2656CE000, v13, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v25 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v26 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v25;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v26;
        _os_log_impl(&dword_2656CE000, v13, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting per day counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      v14 = [v7 wrTracker];
      v15 = [v14 workflow];
      v16 = [v15 name];
      v27 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v28 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = v16;
      v48 = 1024;
      v49 = v8;
      v50 = 1024;
      v51 = v27;
      v52 = 1024;
      v53 = v9;
      v54 = 1024;
      v55 = v28;
      v19 = v13;
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
    v32 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (v32)
    {
      v33 = v32;
      v34 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (v34)
      {
        v35 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        v36 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = v35;
        dispatch_async(v35, v36);

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
      v8 = [v7 perDayEventCount];
      v9 = [v7 perPeriodEventCount];
      v10 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      [v7 setPerPeriodEventCount:0];
      v11 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v7];
      v12 = +[STYFrameworkHelper sharedHelper];
      v13 = [v12 logHandle];

      if (v10)
      {
        if (v11)
        {
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          v14 = [v7 wrTracker];
          v15 = [v14 workflow];
          v16 = [v15 name];
          v17 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          v18 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = v38;
          v47 = v16;
          v48 = 1024;
          v49 = v8;
          v50 = 1024;
          v51 = v17;
          v52 = 1024;
          v53 = v9;
          v54 = 1024;
          v55 = v18;
          v19 = v13;
          v20 = "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), was already under limits";
          goto LABEL_18;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
LABEL_15:
          v39 = 1;
          goto LABEL_19;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v29 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v30 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v29;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v30;
        _os_log_fault_impl(&dword_2656CE000, v13, OS_LOG_TYPE_FAULT, "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), was already under limits, and is now above limit!", buf, 0x24u);
LABEL_13:

        goto LABEL_15;
      }

      v21 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (!v21)
        {
          goto LABEL_15;
        }

        v22 = [v7 wrTracker];
        v23 = [v22 workflow];
        v24 = [v23 name];
        v25 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
        v26 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
        *buf = v38;
        v47 = v24;
        v48 = 1024;
        v49 = v8;
        v50 = 1024;
        v51 = v25;
        v52 = 1024;
        v53 = v9;
        v54 = 1024;
        v55 = v26;
        _os_log_impl(&dword_2656CE000, v13, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ resetting per period counts (was %d/%d per day, %d/%d per period), turning on signpost streaming", buf, 0x24u);
        goto LABEL_13;
      }

      if (!v21)
      {
        goto LABEL_19;
      }

      v14 = [v7 wrTracker];
      v15 = [v14 workflow];
      v16 = [v15 name];
      v27 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v28 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      *buf = v38;
      v47 = v16;
      v48 = 1024;
      v49 = v8;
      v50 = 1024;
      v51 = v27;
      v52 = 1024;
      v53 = v9;
      v54 = 1024;
      v55 = v28;
      v19 = v13;
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
    v32 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (v32)
    {
      v33 = v32;
      v34 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (v34)
      {
        v35 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        v36 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        obj = v35;
        dispatch_async(v35, v36);

        goto LABEL_27;
      }
    }
  }

LABEL_28:
  v37 = *MEMORY[0x277D85DE8];
}

- (void)workflowEventCompleted:(id)a3 completedWRTracker:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v6];
  v9 = +[STYFrameworkHelper sharedHelper];
  v10 = [v9 logHandle];

  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v7 workflow];
      v33 = [v32 name];
      v38 = 138544386;
      v39 = v33;
      v40 = 1024;
      v41 = [v6 perDayEventCount];
      v42 = 1024;
      v43 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v44 = 1024;
      v45 = [v6 perPeriodEventCount];
      v46 = 1024;
      v47 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      _os_log_impl(&dword_2656CE000, v10, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ already exceeded limits (%d/%d per day, %d/%d per period), not reporting completed event", &v38, 0x24u);
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v36 = [v7 workflow];
    v37 = [v36 name];
    v38 = 138544386;
    v39 = v37;
    v40 = 1024;
    v41 = [v6 perDayEventCount];
    v42 = 1024;
    v43 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
    v44 = 1024;
    v45 = [v6 perPeriodEventCount];
    v46 = 1024;
    v47 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
    _os_log_debug_impl(&dword_2656CE000, v10, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ below limits (%d/%d per day, %d/%d per period)", &v38, 0x24u);
  }

  v11 = +[STYFrameworkHelper sharedHelper];
  v12 = [v11 logHandle];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v7 workflow];
    v14 = [v13 name];
    v38 = 138543362;
    v39 = v14;
    _os_log_impl(&dword_2656CE000, v12, OS_LOG_TYPE_INFO, "Workflow %{public}@ event completed, gathering diagnostics if needed", &v38, 0xCu);
  }

  v15 = [v7 gatherDiagnosticsIfNeeded];
  v16 = +[STYFrameworkHelper sharedHelper];
  v10 = [v16 logHandle];

  v17 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((v15 & 1) == 0)
  {
    if (!v17)
    {
LABEL_20:

      goto LABEL_21;
    }

    v31 = [v7 workflow];
    v34 = [v31 name];
    v38 = 138543362;
    v39 = v34;
    _os_log_impl(&dword_2656CE000, v10, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ event completed, no diagnostics were needed", &v38, 0xCu);

LABEL_19:
    goto LABEL_20;
  }

  if (v17)
  {
    v18 = [v7 workflow];
    v19 = [v18 name];
    v38 = 138543362;
    v39 = v19;
    _os_log_impl(&dword_2656CE000, v10, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ event completed, diagnostics were kicked off", &v38, 0xCu);
  }

  [v6 setPerPeriodEventCount:{objc_msgSend(v6, "perPeriodEventCount") + 1}];
  [v6 setPerDayEventCount:{objc_msgSend(v6, "perDayEventCount") + 1}];
  if (![(STYWorkflowResponsivenessMonitorHelper *)self workflowIsUnderLimits:v6])
  {
    v20 = +[STYFrameworkHelper sharedHelper];
    v21 = [v20 logHandle];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 workflow];
      v23 = [v22 name];
      v24 = [v6 perDayEventCount];
      v25 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
      v26 = [v6 perPeriodEventCount];
      v27 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
      v38 = 138544386;
      v39 = v23;
      v40 = 1024;
      v41 = v24;
      v42 = 1024;
      v43 = v25;
      v44 = 1024;
      v45 = v26;
      v46 = 1024;
      v47 = v27;
      _os_log_impl(&dword_2656CE000, v21, OS_LOG_TYPE_DEFAULT, "Workflow %{public}@ hit report limit (%d/%d per day, %d/%d per period), turning off signpost streaming", &v38, 0x24u);
    }

    [(STYWorkflowResponsivenessMonitorHelper *)self updateAllowList];
    v28 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
    if (v28)
    {
      v29 = v28;
      v30 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];

      if (v30)
      {
        v10 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallbackQueue];
        v31 = [(STYWorkflowResponsivenessMonitorHelper *)self settingsChangedCallback];
        dispatch_async(v10, v31);
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
        v11 = [v10 logHandle];

        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        if (v9)
        {
          if (v12)
          {
            v29 = [v8 wrTracker];
            v27 = [v29 workflow];
            v15 = [v27 name];
            v26 = [v8 perDayEventCount];
            v16 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
            v17 = [v8 perPeriodEventCount];
            v18 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
            *buf = 138544386;
            v37 = v15;
            v38 = 1024;
            v39 = v26;
            v40 = 1024;
            v41 = v16;
            v42 = 1024;
            v43 = v17;
            v44 = 1024;
            v45 = v18;
            _os_log_debug_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ is below limit (%d/%d per day, %d/%d per period), including in allowlist", buf, 0x24u);
          }

          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277D55040]);
          }

          v11 = [v8 wrTracker];
          v13 = [v11 workflow];
          v14 = [v13 allowListForDiagnostics];
          [v5 addAllowlist:v14];
        }

        else if (v12)
        {
          v30 = [v8 wrTracker];
          v28 = [v30 workflow];
          v19 = [v28 name];
          v20 = [v8 perDayEventCount];
          v21 = [(STYWorkflowResponsivenessMonitorHelper *)self perDayLogLimit];
          v22 = [v8 perPeriodEventCount];
          v23 = [(STYWorkflowResponsivenessMonitorHelper *)self perPeriodLogLimit];
          *buf = 138544386;
          v37 = v19;
          v38 = 1024;
          v39 = v20;
          v40 = 1024;
          v41 = v21;
          v42 = 1024;
          v43 = v22;
          v44 = 1024;
          v45 = v23;
          _os_log_debug_impl(&dword_2656CE000, v11, OS_LOG_TYPE_DEBUG, "Workflow %{public}@ is above limit (%d/%d per day, %d/%d per period), not including in allowlist", buf, 0x24u);
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

- (void)setPeriodLengthSec:(int)a3
{
  periodLengthSec = self->_periodLengthSec;
  self->_periodLengthSec = a3;
  if (periodLengthSec != a3)
  {
    v6 = [(STYSignpostsMonitorHelper *)self processingQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__STYWorkflowResponsivenessMonitorHelper_setPeriodLengthSec___block_invoke;
    v7[3] = &unk_279B9B5A0;
    v7[4] = self;
    v8 = periodLengthSec;
    v9 = a3;
    dispatch_async(v6, v7);
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