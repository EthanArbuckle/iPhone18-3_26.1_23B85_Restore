@interface STYSignpostsMonitor
+ (id)sharedMonitor;
- (BOOL)monitorAppLaunchSignposts;
- (BOOL)monitorSignposts:(BOOL)signposts;
- (BOOL)monitorWorkflowsWithDailyLogLimit:(int)limit perPeriodLogLimit:(int)logLimit periodLengthSec:(int)sec;
- (BOOL)needsEnablementChange;
- (STYSignpostsMonitor)init;
- (void)checkMonitoring:(BOOL)monitoring;
- (void)forEachEnabledHelper:(id)helper;
- (void)forEachHelper:(id)helper;
- (void)reportLatencyToReceiveSignposts:(id)signposts;
- (void)setupRetryAfterFailure;
- (void)stopMonitoringAppLaunchSignposts;
- (void)stopMonitoringSignposts;
- (void)stopMonitoringWorkflows;
@end

@implementation STYSignpostsMonitor

- (STYSignpostsMonitor)init
{
  v19.receiver = self;
  v19.super_class = STYSignpostsMonitor;
  v2 = [(STYSignpostsMonitor *)&v19 init];
  if (v2)
  {
    v3 = +[STYFrameworkHelper sharedHelper];
    subsystemForSignposts = [v3 subsystemForSignposts];
    uTF8String = [subsystemForSignposts UTF8String];

    v6 = os_log_create(uTF8String, "timeToReceiveASignpostNotification");
    v7 = handleForNotificationLatency;
    handleForNotificationLatency = v6;

    v8 = os_log_create(uTF8String, "signpostNotificationStreamClosed");
    v9 = handleForNotificationDisconnects;
    handleForNotificationDisconnects = v8;

    v10 = dispatch_queue_create("com.apple.sentry.signpostsMonitor.monitorQueue", 0);
    monitorQueue = v2->_monitorQueue;
    v2->_monitorQueue = v10;

    v12 = objc_alloc_init(STYGeneralSignpostMonitorHelper);
    generalSignpostHelper = v2->_generalSignpostHelper;
    v2->_generalSignpostHelper = v12;

    v14 = objc_alloc_init(STYSpecialAppLaunchSignpostMonitorHelper);
    specialAppLaunchSignpostHelper = v2->_specialAppLaunchSignpostHelper;
    v2->_specialAppLaunchSignpostHelper = v14;

    v16 = objc_alloc_init(STYWorkflowResponsivenessMonitorHelper);
    workflowResponsivenessHelper = v2->_workflowResponsivenessHelper;
    v2->_workflowResponsivenessHelper = v16;
  }

  return v2;
}

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[STYSignpostsMonitor sharedMonitor];
  }

  v3 = sharedMonitor_sharedMonitor;

  return v3;
}

void __36__STYSignpostsMonitor_sharedMonitor__block_invoke()
{
  v0 = objc_alloc_init(STYSignpostsMonitor);
  v1 = sharedMonitor_sharedMonitor;
  sharedMonitor_sharedMonitor = v0;

  if (sharedMonitor_sharedMonitor)
  {
    attr = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, -15);
    v2 = dispatch_queue_create("com.apple.Sentry.Framework.htInteraction", attr);
    v3 = htInteractionQueue;
    htInteractionQueue = v2;

    v4 = dispatch_queue_create("com.apple.Sentry.Framework.signpostSupport", attr);
    v5 = signpostSupportQueue;
    signpostSupportQueue = v4;

    v6 = dispatch_queue_create("com.apple.Sentry.Framework.stateVariableUpdate", attr);
    v7 = stateVariableUpdateQueue;
    stateVariableUpdateQueue = v6;

    v8 = dispatch_queue_create("com.apple.Sentry.Framework.mkHTInteraction", attr);
    v9 = mkHangtracerInteractionQueue;
    mkHangtracerInteractionQueue = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = outstandingTailspinSaveRequests;
    outstandingTailspinSaveRequests = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    v13 = perfIssueDetectionTimeLogs;
    perfIssueDetectionTimeLogs = v12;

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, 0, responseRecieved, kSTYTailspinSaveOperationCompletedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, 0, responseRecieved, kSTYTailspinSaveOperationCompletedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    notify_register_dispatch("com.apple.sentry.Signpostmonitor.conifg_changed", &sentryConfigChangeNotificationToken, htInteractionQueue, &__block_literal_global_157);
    notify_register_dispatch("com.apple.da.tasking_changed", &HTConfigChangeNotificationToken, htInteractionQueue, &__block_literal_global_160);
    v16 = objc_alloc_init(STYAbcHelper);
    v17 = [sharedMonitor_sharedMonitor generalSignpostHelper];
    [v17 setAbcHelper:v16];

    v18 = STYFrameworkDefaults();
    v19 = [v18 BOOLForKey:kSTYDefaultsForceAcceptAppLaunchKey];
    v20 = [sharedMonitor_sharedMonitor specialAppLaunchSignpostHelper];
    [v20 setForceAppLaunchDiagnostics:v19];

    v21 = [sharedMonitor_sharedMonitor workflowResponsivenessHelper];
    v22 = [sharedMonitor_sharedMonitor monitorQueue];
    [v21 notifyWhenSettingsChanged:v22 block:&__block_literal_global_163];
  }
}

- (void)forEachHelper:(id)helper
{
  helperCopy = helper;
  helperCopy2 = helper;
  generalSignpostHelper = [(STYSignpostsMonitor *)self generalSignpostHelper];
  v7 = helperCopy[2];
  helperCopy += 2;
  v7(helperCopy2, generalSignpostHelper);

  specialAppLaunchSignpostHelper = [(STYSignpostsMonitor *)self specialAppLaunchSignpostHelper];
  (*helperCopy)(helperCopy2, specialAppLaunchSignpostHelper);

  workflowResponsivenessHelper = [(STYSignpostsMonitor *)self workflowResponsivenessHelper];
  (*helperCopy)(helperCopy2, workflowResponsivenessHelper);
}

- (void)forEachEnabledHelper:(id)helper
{
  helperCopy = helper;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__STYSignpostsMonitor_forEachEnabledHelper___block_invoke;
  v6[3] = &unk_279B9B610;
  v7 = helperCopy;
  v5 = helperCopy;
  [(STYSignpostsMonitor *)self forEachHelper:v6];
}

void __44__STYSignpostsMonitor_forEachEnabledHelper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __30__STYSignpostsMonitor_disable__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 processingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__STYSignpostsMonitor_disable__block_invoke_2;
  block[3] = &unk_279B9B5C8;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

- (BOOL)needsEnablementChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__STYSignpostsMonitor_needsEnablementChange__block_invoke;
  v4[3] = &unk_279B9B658;
  v4[4] = &v5;
  [(STYSignpostsMonitor *)self forEachHelper:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__STYSignpostsMonitor_needsEnablementChange__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 needsEnablementChange];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)setupRetryAfterFailure
{
  v7 = *MEMORY[0x277D85DE8];
  [self successiveExtractorFailureCount];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __45__STYSignpostsMonitor_setupRetryAfterFailure__block_invoke(uint64_t a1)
{
  v2 = +[STYFrameworkHelper sharedHelper];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2656CE000, v3, OS_LOG_TYPE_DEFAULT, "Retrying", v5, 2u);
  }

  return [*(a1 + 32) checkMonitoring:0];
}

- (void)checkMonitoring:(BOOL)monitoring
{
  v49 = *MEMORY[0x277D85DE8];
  if (monitoring || [(STYSignpostsMonitor *)self needsEnablementChange])
  {
    signpostExtractor = [(STYSignpostsMonitor *)self signpostExtractor];
    [signpostExtractor stopProcessing];

    [(STYSignpostsMonitor *)self setSignpostExtractor:0];
    streamingStatistics = [(STYSignpostsMonitor *)self streamingStatistics];
    [streamingStatistics emitTelemetry];

    [(STYSignpostsMonitor *)self setStreamingStatistics:0];
    v6 = objc_alloc_init(MEMORY[0x277D55040]);
    v7 = os_transaction_create();
    *v44 = 0;
    v45 = v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke;
    v36[3] = &unk_279B9B6A8;
    logHandle4 = v6;
    v37 = logHandle4;
    v38 = v44;
    v39 = &v40;
    [(STYSignpostsMonitor *)self forEachHelper:v36];

    if (v45[24])
    {
      v9 = objc_alloc_init(MEMORY[0x277D55030]);
      [(STYSignpostsMonitor *)self setSignpostExtractor:v9];

      signpostExtractor2 = [(STYSignpostsMonitor *)self signpostExtractor];
      LODWORD(v9) = signpostExtractor2 == 0;

      if (v9)
      {
        v26 = +[STYFrameworkHelper sharedHelper];
        logHandle = [v26 logHandle];

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
          [STYSignpostsMonitor checkMonitoring:];
        }

        [(STYSignpostsMonitor *)self setupRetryAfterFailure];
      }

      else
      {
        v11 = objc_alloc_init(STYSignpostStreamingStatistics);
        [(STYSignpostsMonitor *)self setStreamingStatistics:v11];

        signpostExtractor3 = [(STYSignpostsMonitor *)self signpostExtractor];
        [signpostExtractor3 setSubsystemCategoryFilter:logHandle4];

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_172;
        v35[3] = &unk_279B9B6F8;
        v35[4] = self;
        signpostExtractor4 = [(STYSignpostsMonitor *)self signpostExtractor];
        [signpostExtractor4 setIntervalCompletionProcessingBlock:v35];

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_4;
        v34[3] = &unk_279B9B720;
        v34[4] = self;
        signpostExtractor5 = [(STYSignpostsMonitor *)self signpostExtractor];
        [signpostExtractor5 setEmitEventProcessingBlock:v34];

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_7;
        v33[3] = &unk_279B9B720;
        v33[4] = self;
        signpostExtractor6 = [(STYSignpostsMonitor *)self signpostExtractor];
        [signpostExtractor6 setBeginEventProcessingBlock:v33];

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_10;
        v32[3] = &unk_279B9B748;
        v32[4] = self;
        signpostExtractor7 = [(STYSignpostsMonitor *)self signpostExtractor];
        [signpostExtractor7 setProcessingCompletionBlock:v32];

        signpostExtractor8 = [(STYSignpostsMonitor *)self signpostExtractor];
        v18 = *(v41 + 24);
        monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
        v31 = 0;
        LOBYTE(v18) = [signpostExtractor8 processNotificationsWithIntervalTimeoutInSeconds:30 shouldCalculateAnimationFramerate:v18 targetQueue:monitorQueue errorOut:&v31];
        v20 = v31;

        if (v18)
        {
          v21 = +[STYFrameworkHelper sharedHelper];
          logHandle2 = [v21 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2656CE000, logHandle2, OS_LOG_TYPE_DEFAULT, "Signpost extractor created succesfully", buf, 2u);
          }
        }

        else
        {
          v28 = +[STYFrameworkHelper sharedHelper];
          logHandle2 = [v28 logHandle];

          if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v20 localizedDescription];
            [v20 code];
            [STYSignpostsMonitor checkMonitoring:];
          }
        }
      }
    }

    else
    {
      v23 = +[STYFrameworkHelper sharedHelper];
      logHandle3 = [v23 logHandle];

      if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2656CE000, logHandle3, OS_LOG_TYPE_DEFAULT, "No monitoring enabled", buf, 2u);
      }
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    v25 = +[STYFrameworkHelper sharedHelper];
    logHandle4 = [v25 logHandle];

    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_2656CE000, logHandle4, OS_LOG_TYPE_INFO, "No change in monitoring", v44, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 processingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2;
  v6[3] = &unk_279B9B680;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v4, v6);
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) shouldBeEnabled];
  v4 = [*v2 isEnabled];
  v5 = +[STYFrameworkHelper sharedHelper];
  v6 = [v5 logHandle];

  if (v3)
  {
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_cold_2(v2);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*v2 name];
        v15 = 138543362;
        v16 = v8;
        _os_log_impl(&dword_2656CE000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ starting monitoring", &v15, 0xCu);
      }

      [*v2 willStartMonitoring];
    }

    v6 = [*v2 allowList];
    if (v6)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) allowList];
      [v9 addAllowlist:v10];

      *(*(*(a1 + 48) + 8) + 24) = 1;
      if ([*(a1 + 32) wantsAnimationFrameRate])
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      v11 = +[STYFrameworkHelper sharedHelper];
      v12 = [v11 logHandle];

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*v2 name];
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&dword_2656CE000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ has nothing to monitor", &v15, 0xCu);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_cold_1(v2);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*v2 name];
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&dword_2656CE000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ ending monitoring", &v15, 0xCu);
  }

  [*v2 didEndMonitoring];
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __39__STYSignpostsMonitor_checkMonitoring___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_173;
  v8[3] = &unk_279B9B6D0;
  v9 = v3;
  v5 = v3;
  [v4 forEachEnabledHelper:v8];
  [*(a1 + 32) reportLatencyToReceiveSignposts:v5];
  v6 = [*(a1 + 32) streamingStatistics];
  [v6 addSignpost:v5];

  return 1;
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_173(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allowList];
  v5 = [*(a1 + 32) subsystem];
  v6 = [*(a1 + 32) category];
  v7 = [v4 passesSubsystem:v5 category:v6];

  if (v7)
  {
    v8 = [v3 processingQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_3;
    v9[3] = &unk_279B9B4C0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

uint64_t __39__STYSignpostsMonitor_checkMonitoring___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_5;
  v8[3] = &unk_279B9B6D0;
  v5 = v3;
  v9 = v5;
  [v4 forEachEnabledHelper:v8];
  [*(a1 + 32) reportLatencyToReceiveSignposts:v5];
  if (([v5 isSyntheticIntervalEvent] & 1) == 0)
  {
    v6 = [*(a1 + 32) streamingStatistics];
    [v6 addSignpost:v5];
  }

  return 1;
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allowList];
  v5 = [*(a1 + 32) subsystem];
  v6 = [*(a1 + 32) category];
  v7 = [v4 passesSubsystem:v5 category:v6];

  if (v7)
  {
    v8 = [v3 processingQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_6;
    v9[3] = &unk_279B9B4C0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

uint64_t __39__STYSignpostsMonitor_checkMonitoring___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_8;
  v8[3] = &unk_279B9B6D0;
  v5 = v3;
  v9 = v5;
  [v4 forEachEnabledHelper:v8];
  [*(a1 + 32) reportLatencyToReceiveSignposts:v5];
  if (([v5 isSyntheticIntervalEvent] & 1) == 0)
  {
    v6 = [*(a1 + 32) streamingStatistics];
    [v6 addSignpost:v5];
  }

  return 1;
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allowList];
  v5 = [*(a1 + 32) subsystem];
  v6 = [*(a1 + 32) category];
  v7 = [v4 passesSubsystem:v5 category:v6];

  if (v7)
  {
    v8 = [v3 processingQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__STYSignpostsMonitor_checkMonitoring___block_invoke_9;
    v9[3] = &unk_279B9B4C0;
    v10 = v3;
    v11 = *(a1 + 32);
    dispatch_async(v8, v9);
  }
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STYFrameworkHelper sharedHelper];
  v5 = [v4 logHandle];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __39__STYSignpostsMonitor_checkMonitoring___block_invoke_10_cold_1(v3);
    }

    v6 = handleForNotificationLatency;
    if (os_signpost_enabled(handleForNotificationLatency))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2656CE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "signpostNotificationStreamClosed", &unk_2656E2CEF, buf, 2u);
    }

    [*(a1 + 32) setupRetryAfterFailure];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2656CE000, v5, OS_LOG_TYPE_INFO, "Stopped monitoring signposts", v8, 2u);
    }
  }

  v7 = [*(a1 + 32) streamingStatistics];
  [v7 emitTelemetry];
}

- (void)reportLatencyToReceiveSignposts:(id)signposts
{
  v14 = *MEMORY[0x277D85DE8];
  signpostsCopy = signposts;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endEvent = [signpostsCopy endEvent];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_13;
    }

    endEvent = signpostsCopy;
  }

  v6 = endEvent;
  if (endEvent)
  {
    v7 = self->_eventCount + 1;
    self->_eventCount = v7;
    if (v7 == 100)
    {
      v8 = handleForNotificationLatency;
      if (os_signpost_enabled(handleForNotificationLatency))
      {
        v9 = v8;
        v12 = 134217984;
        timeRecordedMachContinuousTime = [v6 timeRecordedMachContinuousTime];
        _os_signpost_emit_with_name_impl(&dword_2656CE000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "timeToReceiveASignpostNotification", "%{signpost.description:begin_time}llu", &v12, 0xCu);
      }

      v10 = handleForNotificationLatency;
      if (os_signpost_enabled(handleForNotificationLatency))
      {
        LOWORD(v12) = 0;
        _os_signpost_emit_with_name_impl(&dword_2656CE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "timeToReceiveASignpostNotification", " enableTelemetry=YES ", &v12, 2u);
      }

      self->_eventCount = 0;
    }
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)monitorSignposts:(BOOL)signposts
{
  signpostsCopy = signposts;
  v5 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v5 logHandle];

  v7 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
  if (signpostsCopy)
  {
    if (v7)
    {
      *buf = 0;
      v8 = "Monitoring general signposts (seed mode)";
LABEL_6:
      _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Monitoring general signposts";
    goto LABEL_6;
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__STYSignpostsMonitor_monitorSignposts___block_invoke;
  v11[3] = &unk_279B9B770;
  v11[4] = self;
  v12 = signpostsCopy;
  dispatch_async(monitorQueue, v11);

  return 1;
}

uint64_t __40__STYSignpostsMonitor_monitorSignposts___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generalSignpostHelper];
  [v2 setShouldBeEnabled:1];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) generalSignpostHelper];
  [v4 setSeedUserMode:v3];

  v5 = *(a1 + 32);

  return [v5 checkMonitoring:0];
}

- (void)stopMonitoringSignposts
{
  v3 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v3 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping monitoring general signposts", buf, 2u);
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STYSignpostsMonitor_stopMonitoringSignposts__block_invoke;
  block[3] = &unk_279B9B5C8;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

uint64_t __46__STYSignpostsMonitor_stopMonitoringSignposts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generalSignpostHelper];
  [v2 setShouldBeEnabled:0];

  v3 = *(a1 + 32);

  return [v3 checkMonitoring:0];
}

- (BOOL)monitorAppLaunchSignposts
{
  v3 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v3 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Monitoring app launch signposts", buf, 2u);
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__STYSignpostsMonitor_monitorAppLaunchSignposts__block_invoke;
  block[3] = &unk_279B9B5C8;
  block[4] = self;
  dispatch_async(monitorQueue, block);

  return 1;
}

uint64_t __48__STYSignpostsMonitor_monitorAppLaunchSignposts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specialAppLaunchSignpostHelper];
  [v2 setShouldBeEnabled:1];

  v3 = [*(a1 + 32) generalSignpostHelper];
  [v3 setAvoidGeneratingTailspinsForAppLaunches:1];

  v4 = *(a1 + 32);

  return [v4 checkMonitoring:0];
}

- (void)stopMonitoringAppLaunchSignposts
{
  v3 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v3 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping monitoring app launch signposts", buf, 2u);
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__STYSignpostsMonitor_stopMonitoringAppLaunchSignposts__block_invoke;
  block[3] = &unk_279B9B5C8;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

uint64_t __55__STYSignpostsMonitor_stopMonitoringAppLaunchSignposts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specialAppLaunchSignpostHelper];
  [v2 setShouldBeEnabled:0];

  v3 = [*(a1 + 32) generalSignpostHelper];
  [v3 setAvoidGeneratingTailspinsForAppLaunches:0];

  v4 = *(a1 + 32);

  return [v4 checkMonitoring:0];
}

- (BOOL)monitorWorkflowsWithDailyLogLimit:(int)limit perPeriodLogLimit:(int)logLimit periodLengthSec:(int)sec
{
  v9 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v9 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Monitoring workflow responsiveness", buf, 2u);
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__STYSignpostsMonitor_monitorWorkflowsWithDailyLogLimit_perPeriodLogLimit_periodLengthSec___block_invoke;
  block[3] = &unk_279B9B798;
  block[4] = self;
  limitCopy = limit;
  logLimitCopy = logLimit;
  secCopy = sec;
  dispatch_async(monitorQueue, block);

  return 1;
}

uint64_t __91__STYSignpostsMonitor_monitorWorkflowsWithDailyLogLimit_perPeriodLogLimit_periodLengthSec___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workflowResponsivenessHelper];
  [v2 setShouldBeEnabled:1];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) workflowResponsivenessHelper];
  [v4 setPerDayLogLimit:v3];

  v5 = *(a1 + 44);
  v6 = [*(a1 + 32) workflowResponsivenessHelper];
  [v6 setPerPeriodLogLimit:v5];

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) workflowResponsivenessHelper];
  [v8 setPeriodLengthSec:v7];

  v9 = *(a1 + 32);

  return [v9 checkMonitoring:0];
}

- (void)stopMonitoringWorkflows
{
  v3 = +[STYFrameworkHelper sharedHelper];
  logHandle = [v3 logHandle];

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2656CE000, logHandle, OS_LOG_TYPE_DEFAULT, "Stopping monitoring workflow responsiveness", buf, 2u);
  }

  monitorQueue = [(STYSignpostsMonitor *)self monitorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__STYSignpostsMonitor_stopMonitoringWorkflows__block_invoke;
  block[3] = &unk_279B9B5C8;
  block[4] = self;
  dispatch_async(monitorQueue, block);
}

uint64_t __46__STYSignpostsMonitor_stopMonitoringWorkflows__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workflowResponsivenessHelper];
  [v2 setShouldBeEnabled:0];

  v3 = *(a1 + 32);

  return [v3 checkMonitoring:0];
}

- (void)checkMonitoring:.cold.1()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_5(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  _os_log_error_impl(&dword_2656CE000, v6, OS_LOG_TYPE_ERROR, "Failed to register for signpost notifications. \n Error Description: %@ \n Error Code: %ld", v5, 0x16u);
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_2_cold_2(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __39__STYSignpostsMonitor_checkMonitoring___block_invoke_10_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end