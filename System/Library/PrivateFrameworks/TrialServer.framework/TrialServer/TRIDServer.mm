@interface TRIDServer
+ (id)_triPath;
+ (id)sharedServer;
- (BOOL)_handleUserSettingsNotificationWithContext:(id)context;
- (TRIDServer)initWithPath:(id)path;
- (unint64_t)_getDiskUsageInBytes;
- (void)_asyncStartWithMetrics:(id)metrics;
- (void)_dispatchWhenUnlocked:(id)unlocked;
- (void)_excludeUserLevelTrialFromTimeMachineBackups;
- (void)_logMetrics:(id)metrics;
- (void)_registerExternalParamChangeHandler;
- (void)_registerSetupAssistantFetchActivityOnce;
- (void)_registerXpcStreamEventHandler;
- (void)start;
@end

@implementation TRIDServer

+ (id)_triPath
{
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  trialRootDir = [mEMORY[0x277D737E0] trialRootDir];

  return trialRootDir;
}

+ (id)sharedServer
{
  block = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __26__TRIDServer_sharedServer__block_invoke;
  v10 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  if (qword_2815978B0 != -1)
  {
    dispatch_once(&qword_2815978B0, &block);
  }

  v4 = _MergedGlobals_43;
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDServer.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"result", block, v8, v9, v10, selfCopy}];
  }

  return v4;
}

void __26__TRIDServer_sharedServer__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(*(a1 + 32));
  v4 = [*(a1 + 32) _triPath];
  v5 = [v3 initWithPath:v4];
  v6 = _MergedGlobals_43;
  _MergedGlobals_43 = v5;

  objc_autoreleasePoolPop(v2);
}

- (TRIDServer)initWithPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDServer.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v18.receiver = self;
  v18.super_class = TRIDServer;
  v6 = [(TRIDServer *)&v18 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.taskQueue" qosClass:17];
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v9 = [[TRIXPCActivityManager alloc] initWithDispatchQueue:v6->_dispatchQueue];
    xpcActivityManager = v6->_xpcActivityManager;
    v6->_xpcActivityManager = v9;

    v11 = objc_alloc_init(TRIXPCServerContextPromise);
    promise = v6->_promise;
    v6->_promise = v11;

    context = v6->_context;
    v6->_context = 0;

    taskQueue = v6->_taskQueue;
    v6->_taskQueue = 0;

    eagerExitManager = v6->_eagerExitManager;
    v6->_eagerExitManager = 0;

    v6->_isRunning = 0;
  }

  return v6;
}

- (void)_asyncStartWithMetrics:(id)metrics
{
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Queuing up async start block", buf, 2u);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__TRIDServer__asyncStartWithMetrics___block_invoke;
  v5[3] = &unk_279DDEEE0;
  v5[4] = self;
  [(TRIDServer *)self _dispatchWhenUnlocked:v5];
}

void __37__TRIDServer__asyncStartWithMetrics___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    [v2 _excludeUserLevelTrialFromTimeMachineBackups];
    *(*(a1 + 32) + 56) = 1;
    v3 = TRILogCategory_Server();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = +[TRISystemConfiguration sharedInstance];
      v5 = [v4 populationType];
      if (v5 >= 6)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v5];
      }

      else
      {
        v6 = off_279DE5908[v5];
      }

      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Device is in the %{public}@ population", buf, 0xCu);
    }

    [*(*(a1 + 32) + 24) resumeWithXPCActivityDescriptor:0 executeWhenSuspended:0];
    v8 = *(*(a1 + 32) + 24);
    v7 = +[TRIRotateSubjectIdTask task];
    v9 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    [v8 addTask:v7 options:v9];
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Server context not initialized. Skipping _asyncStartWithMetrics", buf, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  client = [MEMORY[0x277D73660] client];
  if ([MEMORY[0x277D73660] requiresLogging])
  {
    v6 = [[TRILogger alloc] initWithClient:client projectId:1];
    [client setLogger:v6];
  }

  if (+[TRIIntegrationTestLogHandler shouldUseOverrideLogHandler])
  {
    [TRIIntegrationTestLogHandler addTestLoggerInPlaceOnClient:client];
  }

  if (!client)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIDServer.m" lineNumber:232 description:@"Failed to initialize TRIClient"];
  }

  [TRIXPCServices registerTrialServicesWithPromise:self->_promise];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isClassCLocked = [MEMORY[0x277D42598] isClassCLocked];
    v9 = @"class C unlocked";
    if (isClassCLocked)
    {
      v9 = @"class C locked";
    }

    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "registered xpc service endpoints - device is %@", buf, 0xCu);
  }

  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __19__TRIDServer_start__block_invoke;
  v28 = &unk_279DDF7A0;
  selfCopy = self;
  v30 = client;
  v10 = client;
  [(TRIDServer *)self _dispatchWhenUnlocked:&v25];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __19__TRIDServer_start__block_invoke_376;
  v22 = &unk_279DDEE68;
  selfCopy2 = self;
  v24 = a2;
  if (start__pasOnceToken21 != -1)
  {
    dispatch_once(&start__pasOnceToken21, &v19);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277CBE640];
  do
  {
    v12 = objc_autoreleasePoolPush();
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v15 = [currentRunLoop runMode:v11 beforeDate:distantFuture];

    objc_autoreleasePoolPop(v12);
  }

  while ((v15 & 1) != 0);
  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "finished server run loop", buf, 2u);
  }

  self->_isRunning = 0;
  v17 = *MEMORY[0x277D85DE8];
}

void __19__TRIDServer_start__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if (([v2 prepareTrialStorage] & 1) == 0)
  {
    v26 = TRILogCategory_Server();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    v27 = [MEMORY[0x277D737A8] hostingProcessName];
    v31 = 138412290;
    v32 = v27;
    v28 = "%@ failed to prepare storage";
LABEL_17:
    _os_log_fault_impl(&dword_26F567000, v26, OS_LOG_TYPE_FAULT, v28, &v31, 0xCu);

    goto LABEL_12;
  }

  v3 = [TRIServerContext alloc];
  v4 = [MEMORY[0x277D737E0] sharedPaths];
  v5 = [(TRIServerContext *)v3 initWithPaths:v4 client:*(a1 + 40) storageManagement:v2 xpcActivityManagement:*(*(a1 + 32) + 40)];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  if (*(*(a1 + 32) + 16))
  {
    notify_post("com.apple.trial.TrialdInitServerContextDone");
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Initialized server context", &v31, 2u);
    }

    [*(*(a1 + 32) + 16) setUseCKNative:1];
    v9 = [TRITaskQueue alloc];
    v10 = *(*(a1 + 32) + 16);
    v11 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.triald.opQueue" qosClass:17];
    v12 = dispatch_group_create();
    v13 = [(TRITaskQueue *)v9 initWithServerContext:v10 operationQueue:v11 operationGroup:v12 asyncQueue:*(*(a1 + 32) + 8)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 24);
    *(v14 + 24) = v13;

    [*(*(a1 + 32) + 40) setContext:*(*(a1 + 32) + 16)];
    [*(*(a1 + 32) + 40) setTaskQueue:*(*(a1 + 32) + 24)];
    [*(*(a1 + 32) + 16) setTaskQueue:*(*(a1 + 32) + 24)];
    v16 = [[TRIPushServiceConnectionMultiplexer alloc] initWithServerContext:*(*(a1 + 32) + 16) taskQueue:*(*(a1 + 32) + 24)];
    [*(*(a1 + 32) + 16) setPushServiceMuxer:v16];

    [TRISystemConfiguration updateSystemInfoUsingContext:*(*(a1 + 32) + 16)];
    +[TRIMobileAssetUtil configureMobileAssetForTrialEnvironment:](TRIMobileAssetUtil, "configureMobileAssetForTrialEnvironment:", +[TRICKServerEnvironmentReader currentEnvironment]);
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "fullfilling server context ready promise", &v31, 2u);
    }

    [*(*(a1 + 32) + 32) fullfillWithContext:*(*(a1 + 32) + 16) taskQueue:*(*(a1 + 32) + 24)];
    v18 = [*(*(a1 + 32) + 16) paths];
    v19 = [*(*(a1 + 32) + 16) experimentDatabase];
    v20 = [*(*(a1 + 32) + 16) rolloutDatabase];
    v21 = [*(*(a1 + 32) + 16) taskQueue];
    v22 = [*(*(a1 + 32) + 16) client];
    [TRICacheDeleteCallbacks registerCallbacksWithPaths:v18 experimentDatabase:v19 rolloutDatabase:v20 taskQueue:v21 loggingClient:v22];

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v23 = [[TRIEagerExitManager alloc] initWithExitCooldown:*(*(a1 + 32) + 24) monitoringTaskQueue:60.0];
      v24 = *(a1 + 32);
      v25 = *(v24 + 48);
      *(v24 + 48) = v23;
    }

    goto LABEL_15;
  }

  v26 = TRILogCategory_Server();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    v27 = [MEMORY[0x277D737A8] hostingProcessName];
    v31 = 138412290;
    v32 = v27;
    v28 = "%@ failed to initialize server context";
    goto LABEL_17;
  }

LABEL_12:

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "rejecting server context ready promise", &v31, 2u);
  }

  [*(*(a1 + 32) + 32) reject];
  dispatch_async(*(*(a1 + 32) + 8), &__block_literal_global_49);
LABEL_15:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __19__TRIDServer_start__block_invoke_375()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = TRILogCategory_Server();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v3 = [MEMORY[0x277D737A8] hostingProcessName];
    v4 = 138412290;
    v5 = v3;
    _os_log_fault_impl(&dword_26F567000, v0, OS_LOG_TYPE_FAULT, "%@ failed to initialize - exiting", &v4, 0xCu);
  }

  result = xpc_transaction_exit_clean();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void __19__TRIDServer_start__block_invoke_376(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277D737A8] hostingProcessName];
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "%@ launched", buf, 0xCu);
  }

  signal(15, 1);
  v5 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, MEMORY[0x277D85CD0]);
  v6 = sTermSource;
  sTermSource = v5;

  v7 = sTermSource;
  if (!sTermSource)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = [MEMORY[0x277D737A8] hostingProcessName];
    [v15 handleFailureInMethod:v16 object:v17 file:@"TRIDServer.m" lineNumber:330 description:{@"%@ failed listening for SIGTERM", v18}];

    v7 = sTermSource;
  }

  dispatch_source_set_event_handler(v7, &__block_literal_global_382);
  dispatch_resume(sTermSource);
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  [*(a1 + 32) _asyncStartWithMetrics:v8];
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__TRIDServer_start__block_invoke_384;
  block[3] = &unk_279DDEEE0;
  block[4] = v9;
  dispatch_async(v10, block);
  [*(a1 + 32) _registerXpcStreamEventHandler];
  [*(a1 + 32) _registerExternalParamChangeHandler];
  v11 = *(*(a1 + 32) + 40);
  if (!v11)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"TRIDServer.m" lineNumber:371 description:@"XPC Activity Manager not initialized"];

    v11 = *(*(a1 + 32) + 40);
  }

  [v11 registerActivities];
  v12 = *(a1 + 32);
  v13 = *(v12 + 8);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __19__TRIDServer_start__block_invoke_392;
  v20[3] = &unk_279DDEEE0;
  v20[4] = v12;
  dispatch_async(v13, v20);
  [*(a1 + 32) _logMetrics:v8];

  objc_autoreleasePoolPop(v2);
  v14 = *MEMORY[0x277D85DE8];
}

void __19__TRIDServer_start__block_invoke_380()
{
  v0 = TRILogCategory_Server();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26F567000, v0, OS_LOG_TYPE_DEFAULT, "received SIGTERM, exiting", v1, 2u);
  }

  exit(0);
}

void __19__TRIDServer_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[TRILimitedCarryProfileManager alloc] initWithTaskQueue:v5 context:v4];
    [v4 setLimitedCarryManager:v7];

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Created Limited Carry manager", v9, 2u);
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed to handle limited carry experiment setup - triald failed initialization", buf, 2u);
    }
  }
}

void __19__TRIDServer_start__block_invoke_2_393(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (v4 && a3)
  {
    v5 = [[TRIActiveSysctlFactorsPublisher alloc] initWithServerContext:v4];
    [(TRIActiveSysctlFactorsPublisher *)v5 publishSysctlFactors];
    if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
    {
      v6 = "com.apple.trial.PublishSysctlOnTrialdLaunchComplete";
    }

    else
    {
      v6 = "com.apple.trial.system.PublishSysctlOnTrialdLaunchComplete";
    }

    notify_post(v6);
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26F567000, &v5->super, OS_LOG_TYPE_ERROR, "failed to handle sysctl publish on launch - triald failed initialization", v7, 2u);
    }
  }
}

- (void)_logMetrics:(id)metrics
{
  metricsCopy = metrics;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__TRIDServer__logMetrics___block_invoke;
  v6[3] = &unk_279DDF7A0;
  v6[4] = self;
  v7 = metricsCopy;
  v5 = metricsCopy;
  [(TRIDServer *)self _dispatchWhenUnlocked:v6];
}

void __26__TRIDServer__logMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) client];
  v3 = [v2 shouldLogAtLevel:10];

  if (v3)
  {
    v7 = [*(*(a1 + 32) + 16) client];
    v4 = [v7 logger];
    v5 = [*(*(a1 + 32) + 16) client];
    v6 = [v5 trackingId];
    [v4 logWithTrackingId:v6 metrics:*(a1 + 40) dimensions:0 trialSystemTelemetry:0];
  }
}

- (void)_dispatchWhenUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  if (qword_2815978C0 != -1)
  {
    dispatch_once(&qword_2815978C0, &__block_literal_global_565);
  }

  v5 = qword_2815978B8;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__TRIDServer__dispatchWhenUnlocked___block_invoke;
  v7[3] = &unk_279DE57D0;
  v7[4] = self;
  v8 = unlockedCopy;
  v6 = unlockedCopy;
  dispatch_async(v5, v7);
}

void __36__TRIDServer__dispatchWhenUnlocked___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__TRIDServer__dispatchWhenUnlocked___block_invoke_2;
  block[3] = &unk_279DE0398;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)_registerXpcStreamEventHandler
{
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "set up xpc event stream handler for com.apple.notifyd.matching", buf, 2u);
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke;
  handler[3] = &unk_279DE00F8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], handler);
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Set up ACXPCEventSubscriber for AppleAccount changes", buf, 2u);
  }

  Helper_x8__OBJC_CLASS___ACXPCEventSubscriber = gotLoadHelper_x8__OBJC_CLASS___ACXPCEventSubscriber(v5);
  sharedSubscriber = [*(v7 + 4032) sharedSubscriber];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_486;
  v9[3] = &unk_279DE58E8;
  v9[4] = self;
  [sharedSubscriber registerAccountChangeEventHandler:v9];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__63;
  v35[4] = __Block_byref_object_dispose__63;
  v36 = os_transaction_create();
  string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86430]);
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = v5;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "received xpc event %{public}@", buf, 0xCu);
    }

    if (v5)
    {
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 postNotificationName:v5 object:0 userInfo:0];

      if ([&unk_287FC50E0 containsObject:v5])
      {
        objc_initWeak(buf, *(a1 + 32));
        v8 = *(a1 + 32);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_409;
        v32[3] = &unk_279DE5820;
        v32[4] = v8;
        v33 = v5;
        objc_copyWeak(&v34, buf);
        [v8 _dispatchWhenUnlocked:v32];
        objc_destroyWeak(&v34);

        objc_destroyWeak(buf);
      }

      if ([v5 containsString:@"com.apple.ManagedConfiguration.profileListChanged"])
      {
        v9 = *(a1 + 32);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_419;
        v31[3] = &unk_279DDEEE0;
        v31[4] = v9;
        [v9 _dispatchWhenUnlocked:v31];
      }

      if ([v5 isEqual:@"com.apple.gms.availability.notification"])
      {
        objc_initWeak(buf, *(a1 + 32));
        v10 = *(a1 + 32);
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_426;
        v28[3] = &unk_279DE5820;
        v28[4] = v10;
        v29 = v5;
        objc_copyWeak(&v30, buf);
        [v10 _dispatchWhenUnlocked:v28];
        objc_destroyWeak(&v30);

        objc_destroyWeak(buf);
      }

      if ([v5 isEqualToString:@"com.apple.GeoServices.countryCodeChanged"])
      {
        v11 = *(a1 + 32);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_432;
        v26[3] = &unk_279DDF7A0;
        v26[4] = v11;
        v27 = v5;
        [v11 _dispatchWhenUnlocked:v26];
      }

      if ([v5 isEqual:@"com.apple.GeoServices.experimentsChanged"])
      {
        objc_initWeak(buf, *(a1 + 32));
        v12 = *(a1 + 32);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_437;
        v23[3] = &unk_279DE5820;
        v23[4] = v12;
        v24 = v5;
        objc_copyWeak(&v25, buf);
        [v12 _dispatchWhenUnlocked:v23];
        objc_destroyWeak(&v25);

        objc_destroyWeak(buf);
      }

      if ([&unk_287FC50F8 containsObject:v5])
      {
        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v5;
          _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Received LaunchEvent: %@, adjusting opt-out status", buf, 0xCu);
        }

        v14 = *(a1 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_450;
        v22[3] = &unk_279DDEEE0;
        v22[4] = v14;
        [v14 _dispatchWhenUnlocked:v22];
      }

      if ([&unk_287FC5110 containsObject:v5])
      {
        v15 = *(*(a1 + 32) + 8);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_3;
        v18[3] = &unk_279DE0148;
        v5 = v5;
        v16 = *(a1 + 32);
        v19 = v5;
        v20 = v16;
        v21 = v35;
        dispatch_async(v15, v18);
      }
    }
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Handled event with no name, returning", buf, 2u);
    }
  }

  _Block_object_dispose(v35, 8);
  v17 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_409(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2;
  v3[3] = &unk_279DE57F8;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  [v2 addBlockToExecuteAfterPromiseFullfillment:v3];
  objc_destroyWeak(&v5);
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
      [v25 handleFailureInFunction:v26 file:@"TRIDServer.m" lineNumber:458 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = [MEMORY[0x277D262A0] sharedConnection];
      v11 = [v10 effectiveBoolValueForSetting:*MEMORY[0x277D25E58]];

      v12 = [v5 keyValueStore];
      v13 = [TRIPersistentUserSettings settingsWithKeyValueStore:v12];

      v14 = [v13 persistedDiagnosticsUsageEnabled];
      v15 = v14;
      if (!v14)
      {
        v16 = [TRISystemConfiguration alloc];
        v17 = [MEMORY[0x277D737E0] sharedPaths];
        v18 = [(TRISystemConfiguration *)v16 initWithPaths:v17];

        if ([(TRISystemConfiguration *)v18 isDiagnosticsAndUsageEnabled])
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      if ((v11 == 1) == (v15 != 1))
      {
        [TRISystemConfiguration updateSystemInfoUsingContext:v5];
        if (v11 == 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        [v13 persistDiagnosticsUsageEnabled:v19];
        v20 = TRILogCategory_Server();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v11 == 1)
        {
          if (v21)
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Diagnostics and Usage enabled, will wait for regular retargeting", buf, 2u);
          }
        }

        else
        {
          if (v21)
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Diagnostics and Usage disabled, queueing retargeting", buf, 2u);
          }

          v20 = +[TRIRetargetAllTask task];
          v23 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
          [v7 addTask:v20 options:v23];
        }
      }
    }
  }

  else
  {
    WeakRetained = TRILogCategory_Server();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      *buf = 138412290;
      v28 = v22;
      _os_log_error_impl(&dword_26F567000, WeakRetained, OS_LOG_TYPE_ERROR, "failed to process %@ - triald failed initialization", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_420(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Received LaunchEvent: com.apple.ManagedConfiguration.profileListChanged, creating transaction for Limited Carry manager", v5, 2u);
  }

  v4 = [v2 limitedCarryManager];

  [v4 processLaunchEvent];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_426(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_427;
  v3[3] = &unk_279DE57F8;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  [v2 addBlockToExecuteAfterPromiseFullfillment:v3];
  objc_destroyWeak(&v5);
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_427(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v24 = [MEMORY[0x277CCA890] currentHandler];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
      [v24 handleFailureInFunction:v25 file:@"TRIDServer.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "TRIDServer: AI State Change Notification received", buf, 2u);
      }

      v11 = objc_alloc_init(TRIXPCCovariateFetcher);
      v12 = [(TRIXPCCovariateFetcher *)v11 appleIntelligenceState];
      v13 = [v5 keyValueStore];
      v14 = [TRIPersistentUserSettings settingsWithKeyValueStore:v13];

      v15 = [v14 persistedAIState];
      if (v15 == -1)
      {
        v16 = [TRISystemConfiguration alloc];
        v17 = [MEMORY[0x277D737E0] sharedPaths];
        v18 = [(TRISystemConfiguration *)v16 initWithPaths:v17];

        v15 = [(TRISystemConfiguration *)v18 appleIntelligenceState];
        [v14 persistAIState:v15];
      }

      if (v15 != v12)
      {
        [TRISystemConfiguration updateSystemInfoUsingContext:v5];
        [v14 persistAIState:v12];
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "TRIDServer: AI State changed, queueing retargeting", buf, 2u);
        }

        v20 = +[TRIRetargetAllTask task];
        v21 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
        [v7 addTask:v20 options:v21];
      }
    }
  }

  else
  {
    WeakRetained = TRILogCategory_Server();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 138412290;
      v27 = v23;
      _os_log_error_impl(&dword_26F567000, WeakRetained, OS_LOG_TYPE_ERROR, "failed to process %@ - triald failed initialization", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_432(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_433;
  v2[3] = &unk_279DE5848;
  v3 = *(a1 + 40);
  [v1 addBlockToExecuteAfterPromiseFullfillment:v2];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_433(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
      [v21 handleFailureInFunction:v22 file:@"TRIDServer.m" lineNumber:576 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v9 = [v5 keyValueStore];
    v10 = [TRIPersistentUserSettings settingsWithKeyValueStore:v9];

    v11 = [v10 persistedMapsDeviceCountryCode];
    v12 = [TRISystemConfiguration alloc];
    v13 = [MEMORY[0x277D737E0] sharedPaths];
    v14 = [(TRISystemConfiguration *)v12 initWithPaths:v13];

    v15 = [(TRISystemConfiguration *)v14 mapsDeviceCountryCode];
    if (([v11 isEqualToString:v15] & 1) == 0)
    {
      [v10 persistMapsDeviceCountryCode:v15];
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v11;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "TRIDServer: Maps Country Code changed, queueing retargeting (%@ -> %@)", buf, 0x16u);
      }

      v17 = +[TRIRetargetAllTask task];
      v18 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
      [v7 addTask:v17 options:v18];
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138412290;
      v24 = v20;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "failed to process %@ - triald failed initialization", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_437(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_438;
  v3[3] = &unk_279DE57F8;
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  [v2 addBlockToExecuteAfterPromiseFullfillment:v3];
  objc_destroyWeak(&v5);
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_438(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
      [v19 handleFailureInFunction:v20 file:@"TRIDServer.m" lineNumber:603 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "TRIDServer: Maps Experiments Change Notification received", buf, 2u);
      }

      v11 = objc_autoreleasePoolPush();
      v12 = objc_alloc_init(TRIXPCCovariateFetcher);
      v13 = [(TRIXPCCovariateFetcher *)v12 geoservicesBucketID];
      v14 = v13;
      if (v13 && ![v13 isEqualToNumber:&unk_287FC4E28])
      {
        v17 = [v5 keyValueStore];

        if (!v17)
        {
          v21 = [MEMORY[0x277CCA890] currentHandler];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
          [v21 handleFailureInFunction:v22 file:@"TRIDServer.m" lineNumber:623 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
        }

        [TRIMapsBucketIdChangeProcessor processMapsBucketIdChangeIfNecessaryForBucketId:v14 withServerContext:v5 withTaskQueue:v7];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to fetch Maps Bucket Id.", buf, 2u);
        }
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  else
  {
    WeakRetained = TRILogCategory_Server();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v24 = v16;
      _os_log_error_impl(&dword_26F567000, WeakRetained, OS_LOG_TYPE_ERROR, "failed to process %@ - triald failed initialization", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_3(uint64_t a1)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_4;
  v11[3] = &unk_279DE5870;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = v2;
  v13 = v3;
  v4 = MEMORY[0x2743948D0](v11);
  v5 = [MEMORY[0x277D42598] isClassCLocked];
  v6 = *(a1 + 40);
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_483;
    v9[3] = &unk_279DE57D0;
    v9[4] = v6;
    v10 = v4;
    [v6 _dispatchWhenUnlocked:v9];
  }

  else
  {
    [v6[4] addBlockToExecuteAfterPromiseFullfillment:v4];
  }

  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = objc_opt_self();
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIDServer _registerXpcStreamEventHandler]_block_invoke"];
      [v31 handleFailureInFunction:v32 file:@"TRIDServer.m" lineNumber:665 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    if ([&unk_287FC5128 containsObject:*(a1 + 32)] && !objc_msgSend(*(a1 + 40), "_handleUserSettingsNotificationWithContext:", v5))
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *buf = 138543362;
        v35 = v28;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring xpc event: %{public}@, no relevant change found for notification", buf, 0xCu);
      }
    }

    else
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v35 = v10;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Adding xpc event: %{public}@", buf, 0xCu);
      }

      v11 = +[TRIRetargetAllTask task];
      v12 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
      [v7 addTask:v11 options:v12];
    }

    v13 = [TRISystemConfiguration alloc];
    v14 = [MEMORY[0x277D737E0] sharedPaths];
    v15 = [(TRISystemConfiguration *)v13 initWithPaths:v14];

    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      if ([v15 userSettingsIsSiriEnabled])
      {
        v18 = @"enabled";
      }

      else
      {
        v18 = @"disabled";
      }

      v19 = [v15 userSettingsSiriLocale];
      *buf = 138543874;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Xpc event: %{public}@, Siri is %{public}@, Siri Locale is: %{public}@", buf, 0x20u);
    }

    if ([*(a1 + 32) containsString:@"kAFPreferencesDidChangeDarwinNotification"])
    {
      if ([v15 userSettingsIsSiriEnabled])
      {
        v20 = [v15 userSettingsSiriLocale];
        v21 = [v20 length];

        if (v21)
        {
          v22 = TRILogCategory_Server();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Inside the OOBE flow with a possibility of triggering setup-assistant-fetch flow.", buf, 2u);
          }

          v33 = 0;
          v23 = [TRISetupAssistantFetchUtils stopSetupAssistantFetchWithServerContext:v5 namespaceNames:0 error:&v33];
          v24 = v33;
          v25 = v24;
          if (v23)
          {
            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Not registering setup-assistant-fetch activity to run", buf, 2u);
            }
          }

          else
          {
            if (!v24)
            {
              [*(a1 + 40) _registerSetupAssistantFetchActivityOnce];
              goto LABEL_25;
            }

            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v25;
              _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Error checking if the setup-assistant-fetch activity is needed to run in OOBE flow: %{public}@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 32);
      v30 = [MEMORY[0x277D737A8] hostingProcessName];
      *buf = 138412546;
      v35 = v29;
      v36 = 2112;
      v37 = v30;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "failed to process %@ - %@ failed initialization", buf, 0x16u);
    }
  }

LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_486(uint64_t a1, void *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Received account change event for: %@, with change type: %d", buf, 0x12u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_487;
  v9[3] = &unk_279DE58C0;
  v9[4] = v7;
  objc_copyWeak(&v10, buf);
  [v7 _dispatchWhenUnlocked:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_487(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_488;
  v2[3] = &unk_279DE5898;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 addBlockToExecuteAfterPromiseFullfillment:v2];
  objc_destroyWeak(&v3);
}

void __44__TRIDServer__registerXpcStreamEventHandler__block_invoke_2_488(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [TRISystemConfiguration updateSystemInfoUsingContext:v5];
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Apple Account changed, retargeting", v11, 2u);
    }

    v9 = +[TRIRetargetAllTask task];
    v10 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
    [v6 addTask:v9 options:v10];
  }
}

- (void)_registerExternalParamChangeHandler
{
  out_token = 0;
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__TRIDServer__registerExternalParamChangeHandler__block_invoke;
  v3[3] = &unk_279DDFDB0;
  v3[4] = self;
  notify_register_dispatch("com.apple.trial.external-parameter-change", &out_token, dispatchQueue, v3);
}

void __49__TRIDServer__registerExternalParamChangeHandler__block_invoke(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "External parameter changed, updating system info and queueing retargeting", v6, 2u);
  }

  v3 = +[TRIRetargetAllTask task];
  v4 = *(*(a1 + 32) + 24);
  v5 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  [v4 addTask:v3 options:v5];
}

- (void)_registerSetupAssistantFetchActivityOnce
{
  v23 = *MEMORY[0x277D85DE8];
  context = self->_context;
  if (context)
  {
    keyValueStore = [(TRIServerContext *)context keyValueStore];
    v18 = 0;
    v5 = [TRISetupAssistantFetchUtils getValueInKeyValueStore:keyValueStore key:@"setup-assistant-fetch-activity-deadline-date" error:&v18];
    v6 = v18;

    if (v5)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Deadline timestamp  for setup-assistant-fetch activity is: %@", buf, 0xCu);
      }
    }

    else if (v6)
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = @"setup-assistant-fetch-activity-deadline-date";
        v21 = 2114;
        v22 = v6;
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Error reading data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
      }
    }

    else
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = [v7 dateByAddingTimeInterval:21600.0];
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v20 = 21600;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Setting deadline for setup-assistant-fetch activity to be %lld seconds from now, new deadline is at %@", buf, 0x16u);
      }

      [v8 timeIntervalSince1970];
      v11 = v10;
      keyValueStore2 = [(TRIServerContext *)self->_context keyValueStore];
      v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
      v17 = 0;
      v14 = [TRISetupAssistantFetchUtils setValueInKeyValueStore:keyValueStore2 key:@"setup-assistant-fetch-activity-deadline-date" value:v13 error:&v17];
      v6 = v17;

      if (v14)
      {
        [(TRIXPCActivityManager *)self->_xpcActivityManager registerSetupAssistantFetchActivity];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = @"setup-assistant-fetch-activity-deadline-date";
          v21 = 2114;
          v22 = v6;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Error writing data for %@ key in TRIKVStore: %{public}@. Not proceeding further", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Can't register setup assistant activity (once), server context not available.", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleUserSettingsNotificationWithContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!contextCopy)
  {
    __assert_rtn("[TRIDServer _handleUserSettingsNotificationWithContext:]", "TRIDServer.m", 817, "context");
  }

  v32 = contextCopy;
  keyValueStore = [contextCopy keyValueStore];
  v5 = [TRIPersistentUserSettings settingsWithKeyValueStore:keyValueStore];

  v6 = [TRISystemConfiguration alloc];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v8 = [(TRISystemConfiguration *)v6 initWithPaths:mEMORY[0x277D737E0]];

  userSettingsSiriLocale = [(TRISystemConfiguration *)v8 userSettingsSiriLocale];
  if (userSettingsSiriLocale)
  {
    v10 = userSettingsSiriLocale;
  }

  else
  {
    v10 = &stru_287FA0430;
  }

  if ([(TRISystemConfiguration *)v8 userSettingsIsSiriEnabled])
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v31 = v8;
  activeDictationLocales = [(TRISystemConfiguration *)v8 activeDictationLocales];
  persistedSiriLocale = [v5 persistedSiriLocale];
  v14 = [persistedSiriLocale isEqual:v10];

  persistedIsSiriEnabled = [v5 persistedIsSiriEnabled];
  v16 = objc_autoreleasePoolPush();
  v17 = objc_alloc(MEMORY[0x277CBEB98]);
  persistedActiveDictationLocales = [v5 persistedActiveDictationLocales];
  v19 = [v17 initWithObjects:{persistedActiveDictationLocales, 0}];

  objc_autoreleasePoolPop(v16);
  v20 = objc_autoreleasePoolPush();
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{activeDictationLocales, 0}];
  objc_autoreleasePoolPop(v20);
  v22 = [v19 isEqualToSet:v21];

  if ((v14 & 1) == 0)
  {
    [v5 persistSiriLocale:v10];
  }

  if (persistedIsSiriEnabled != v11)
  {
    [v5 persistIsSiriEnabled:v11];
  }

  v23 = v14 ^ 1;
  if ((v22 & 1) == 0)
  {
    [v5 persistActiveDictationLocales:activeDictationLocales];
  }

  v24 = persistedIsSiriEnabled == v11;
  v25 = persistedIsSiriEnabled != v11;
  if (v24)
  {
    v26 = v14 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  v27 = v26 | v22 ^ 1;
  v28 = TRILogCategory_Server();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v34 = v27;
    v35 = 1024;
    v36 = v23;
    v37 = 1024;
    v38 = v25;
    v39 = 1024;
    v40 = v22 ^ 1;
    _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "User Settings notification relevancy: %d. Siri locale changed: %d, Siri enablement changed: %d Dictation: %d", buf, 0x1Au);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (unint64_t)_getDiskUsageInBytes
{
  context = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _triPath = [objc_opt_class() _triPath];
  v4 = [defaultManager enumeratorAtPath:_triPath];

  v5 = objc_autoreleasePoolPush();
  nextObject = [v4 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v8 = 0;
    v9 = *MEMORY[0x277CCA1C0];
    do
    {
      v10 = MEMORY[0x277CCACA8];
      _triPath2 = [objc_opt_class() _triPath];
      v12 = [v10 stringWithFormat:@"%@/%@", _triPath2, nextObject2];

      v13 = [defaultManager attributesOfItemAtPath:v12 error:0];
      v14 = [v13 objectForKeyedSubscript:v9];

      v8 += [v14 intValue];
      objc_autoreleasePoolPop(v5);
      v5 = objc_autoreleasePoolPush();
      nextObject2 = [v4 nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);

  objc_autoreleasePoolPop(context);
  return v8;
}

- (void)_excludeUserLevelTrialFromTimeMachineBackups
{
  v2 = MEMORY[0x277CBEBC0];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
  v5 = [v2 fileURLWithPath:trialRootDir isDirectory:1];

  [v5 setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:0];
}

@end