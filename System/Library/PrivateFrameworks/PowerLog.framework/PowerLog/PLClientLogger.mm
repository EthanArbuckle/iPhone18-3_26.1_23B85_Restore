@interface PLClientLogger
+ (BOOL)isMessageOnDeviceDisabled;
+ (id)sharedInstance;
- (PLClientLogger)init;
- (id)cacheForKey:(id)key;
- (id)xpcConnectionWithClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload;
- (int)batchSizeForClientID:(signed __int16)d;
- (int)shouldLogNowForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload withFilterInterval:(double)interval;
- (void)batchTasksCacheFlush;
- (void)clearBatchedTaskCache;
- (void)clearBatchedTaskCachePPS;
- (void)clearCache;
- (void)init;
- (void)logStateCaches;
- (void)powerlogStateChanged;
- (void)sendBatchToPPS;
@end

@implementation PLClientLogger

+ (BOOL)isMessageOnDeviceDisabled
{
  if (isMessageOnDeviceDisabled_onceToken != -1)
  {
    +[PLClientLogger isMessageOnDeviceDisabled];
  }

  return disableMessageOnDevice;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PLClientLogger sharedInstance];
  }

  v3 = sharedInstance__clientLogger;

  return v3;
}

- (void)batchTasksCacheFlush
{
  v9[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(@"___BatchCacheSync___");
  v8[0] = @"PLXPCBatchedMessage";
  batchedTaskCache = [(PLClientLogger *)self batchedTaskCache];
  v8[1] = @"PLXPCBatchedMessageDropCounts";
  v9[0] = batchedTaskCache;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[PLClientLogger batchedDropMessageCount](self, "batchedDropMessageCount")}];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = [(PLClientLogger *)self buildMessageForClientID:51 withKey:@"MyEvent" withPayload:v5];
  [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [(PLClientLogger *)self xpcSendMessage:v6 withClientID:51 withKey:@"MyEvent" withPayload:v5];

  objc_sync_exit(@"___BatchCacheSync___");
  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendBatchToPPS
{
  v8[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(@"___BatchCacheSync___");
  v7 = @"PLXPCBatchedMessage";
  dynamicCache = [(PLClientLogger *)self dynamicCache];
  v8[0] = dynamicCache;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [(PLClientLogger *)self buildMessageForClientID:110 withKey:@"PPSBatchedMessages" withPayload:v4];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [(PLClientLogger *)self xpcSendMessage:v5 withClientID:110 withKey:@"PPSBatchedMessages" withPayload:v4];

  objc_sync_exit(@"___BatchCacheSync___");
  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearCache
{
  objc_sync_enter(@"___BatchCacheSync___");
  [(PLClientLogger *)self clearBatchedTaskCachePPS];
  [(PLClientLogger *)self clearBatchedTaskCache];
  [(PLClientLogger *)self setBatchedTimerInFlight:0];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)clearBatchedTaskCachePPS
{
  objc_sync_enter(@"___BatchCacheSync___");
  v3 = objc_opt_new();
  [(PLClientLogger *)self setDynamicCache:v3];

  v4 = objc_opt_new();
  dynamicCache = [(PLClientLogger *)self dynamicCache];
  [dynamicCache setObject:v4 forKeyedSubscript:@"kPLDefault"];

  v6 = objc_opt_new();
  dynamicCache2 = [(PLClientLogger *)self dynamicCache];
  [dynamicCache2 setObject:v6 forKeyedSubscript:@"kPLCuratedBatchingListCache"];

  objc_sync_exit(@"___BatchCacheSync___");
}

- (void)clearBatchedTaskCache
{
  objc_sync_enter(@"___BatchCacheSync___");
  v3 = objc_opt_new();
  [(PLClientLogger *)self setBatchedTaskCache:v3];

  [(PLClientLogger *)self setBatchedDropMessageCount:0];

  objc_sync_exit(@"___BatchCacheSync___");
}

void __43__PLClientLogger_isMessageOnDeviceDisabled__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  disableMessageOnDevice = v1 == -1;
}

void __32__PLClientLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(PLClientLogger);
  v2 = sharedInstance__clientLogger;
  sharedInstance__clientLogger = v1;

  objc_autoreleasePoolPop(v0);
}

- (PLClientLogger)init
{
  v54.receiver = self;
  v54.super_class = PLClientLogger;
  v2 = [(PLClientLogger *)&v54 init];
  v3 = v2;
  if (v2)
  {
    disableMessageOnDevice = 0;
    v2->_talkToPowerlogHelper = 0;
    v4 = PLLogClientLogging();
    v3->_clientDebug = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_BACKGROUND, 0);

    v7 = dispatch_queue_create("PLClientLoggingWorkQueue", v6);
    workQueue = v3->_workQueue;
    v3->_workQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PLClientLoggingAdaptivePermissionWorkQueue", v9);
    adaptivePermissionWorkQueue = v3->_adaptivePermissionWorkQueue;
    v3->_adaptivePermissionWorkQueue = v10;

    v12 = dispatch_queue_create("PLClientLoggingFlushQueue", v6);
    batchFlushQueue = v3->_batchFlushQueue;
    v3->_batchFlushQueue = v12;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processName = v3->_processName;
    v3->_processName = processName;

    v17 = objc_opt_new();
    permissionCache = v3->_permissionCache;
    v3->_permissionCache = v17;

    v19 = objc_opt_new();
    pendingTaskCache = v3->_pendingTaskCache;
    v3->_pendingTaskCache = v19;

    v21 = objc_opt_new();
    batchedTaskCache = v3->_batchedTaskCache;
    v3->_batchedTaskCache = v21;

    v23 = objc_opt_new();
    dynamicCache = v3->_dynamicCache;
    v3->_dynamicCache = v23;

    v25 = objc_opt_new();
    [(NSMutableDictionary *)v3->_dynamicCache setObject:v25 forKeyedSubscript:@"kPLDefault"];

    v26 = objc_opt_new();
    [(NSMutableDictionary *)v3->_dynamicCache setObject:v26 forKeyedSubscript:@"kPLCuratedBatchingListCache"];

    v27 = objc_opt_new();
    eventFilterSaved = v3->_eventFilterSaved;
    v3->_eventFilterSaved = v27;

    *&v3->_batchedTimerInFlight = 0;
    v3->_batchedDropMessageCount = 0;
    v3->_batchDropMessages = 1;
    v29 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F38E3278, &unk_1F38E3290, &unk_1F38E32A8, &unk_1F38E32C0, &unk_1F38E32D8, &unk_1F38E32F0, &unk_1F38E3308, &unk_1F38E3320, &unk_1F38E3338, &unk_1F38E3350, &unk_1F38E3368, 0}];
    batchingClientAllowlist = v3->_batchingClientAllowlist;
    v3->_batchingClientAllowlist = v29;

    v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"BackgroundProcessing::FeatureCheckpoint", @"BackgroundProcessing::SystemConditionsBattery", @"BackgroundProcessing::SystemConditionsInUseOrMotion", @"BackgroundProcessing::SystemConditionsNetwork", @"BackgroundProcessing::SystemConditionsOther", @"BackgroundProcessing::SystemConditionsPowerManagement", @"BackgroundProcessing::TaskCheckpoint", @"BackgroundProcessing::TaskWorkload", @"BackgroundProcessing::TaskInstanceData", @"BackgroundProcessing::TaskInstanceStore", @"BackgroundProcessing::TaskMetadata", @"BackgroundProcessing::TaskRuntimeAllocation", @"GenerativeFunctionMetrics::SmartReplySession", @"GenerativeFunctionMetrics::Summarization", @"GenerativeFunctionMetrics::appleDiffusion", @"GenerativeFunctionMetrics::assetLoad", @"GenerativeFunctionMetrics::mmExecuteRequest", @"GenerativeFunctionMetrics::tgiExecuteRequest", @"BatteryIntelligence::BatteryHealthDelta", @"XPCMetrics::OngoingRestore", 0}];
    curatedBatchingList = v3->_curatedBatchingList;
    v3->_curatedBatchingList = v31;

    v3->_batchMessagesSentCount = 0;
    v33 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ConfigMetrics::BuddyData", @"ApplicationMetrics::RemoteControlSession", @"Button::CaptureButtonAction", @"Button::CaptureButtonConfig", 0}];
    batchingKeysAllowlist = v3->_batchingKeysAllowlist;
    v3->_batchingKeysAllowlist = v33;

    v35 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v36 = dispatch_queue_create("PLCLientLoggingConnectionQueue", v35);
    xpcConnectionQueue = v3->_xpcConnectionQueue;
    v3->_xpcConnectionQueue = v36;

    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create("PLCLientLoggingConnectionHelperQueue", v38);
    xpcConnectionHelperQueue = v3->_xpcConnectionHelperQueue;
    v3->_xpcConnectionHelperQueue = v39;

    out_token = -1;
    workQueue = [(PLClientLogger *)v3 workQueue];
    LODWORD(v38) = notify_register_dispatch("com.apple.powerlog.state_changed", &out_token, workQueue, &__block_literal_global_131);

    if (v38 && [(PLClientLogger *)v3 clientDebug])
    {
      v42 = PLLogClientLogging();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger init];
      }
    }

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.ProcessName.%@", @"com.apple.powerlog.state_changed", v3->_processName];
    v52 = -1;
    uTF8String = [v43 UTF8String];
    workQueue2 = [(PLClientLogger *)v3 workQueue];
    LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &v52, workQueue2, &__block_literal_global_141);

    if (uTF8String && [(PLClientLogger *)v3 clientDebug])
    {
      v46 = PLLogClientLogging();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger init];
      }
    }

    v51 = -1;
    workQueue3 = [(PLClientLogger *)v3 workQueue];
    v48 = notify_register_dispatch("com.apple.powerlog.clientPermissionState", &v51, workQueue3, &__block_literal_global_145);

    if (v48 && [(PLClientLogger *)v3 clientDebug])
    {
      v49 = PLLogClientLogging();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger init];
      }
    }
  }

  return v3;
}

void __22__PLClientLogger_init__block_invoke()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

void __22__PLClientLogger_init__block_invoke_139()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

void __22__PLClientLogger_init__block_invoke_143()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 logStateCaches];
}

- (void)logStateCaches
{
  v14 = *MEMORY[0x1E69E9840];
  processName = [self processName];
  permissionCache = [self permissionCache];
  pendingTaskCache = [self pendingTaskCache];
  dynamicCache = [self dynamicCache];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(&dword_1BACB7000, v6, v7, "State:%@ ***\npermissionCache=%@\n\npendingTaskCache=%@\n\nbatchedTaskCachePPS=%@\n", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)powerlogStateChanged
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__PLClientLogger_powerlogStateChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) clientDebug])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.ClientID.%@", @"com.apple.powerlog.state_changed", v3];
    v6 = PLLogClientLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __38__PLClientLogger_powerlogStateChanged__block_invoke_cold_1();
    }
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v8 = [v7 objectForKeyedSubscript:@"PLClientPermissionToken"];

  if (v8)
  {
    v9 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v10 = [v9 objectForKeyedSubscript:@"PLClientPermissionToken"];
    notify_cancel([v10 intValue]);
  }

  objc_autoreleasePoolPop(v4);
}

void __63__PLClientLogger_cachedPermissionForClientID_withKey_withType___block_invoke()
{
  v0 = +[PLClientLogger sharedInstance];
  [v0 powerlogStateChanged];
}

- (int)batchSizeForClientID:(signed __int16)d
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PLClientLogger_batchSizeForClientID___block_invoke;
  block[3] = &__block_descriptor_34_e5_v8__0l;
  dCopy = d;
  if (batchSizeForClientID__onceToken != -1)
  {
    dispatch_once(&batchSizeForClientID__onceToken, block);
  }

  if (batchSizeForClientID__batchSize)
  {
    return 60;
  }

  else
  {
    return 20;
  }
}

- (id)cacheForKey:(id)key
{
  keyCopy = key;
  objc_sync_enter(@"___BatchCacheSync___");
  curatedBatchingList = [(PLClientLogger *)self curatedBatchingList];
  v6 = [curatedBatchingList containsObject:keyCopy];

  dynamicCache = [(PLClientLogger *)self dynamicCache];
  if (v6)
  {
    [dynamicCache objectForKeyedSubscript:@"kPLCuratedBatchingListCache"];
  }

  else
  {
    [dynamicCache objectForKeyedSubscript:@"kPLDefault"];
  }
  v8 = ;

  objc_sync_exit(@"___BatchCacheSync___");

  return v8;
}

- (id)xpcConnectionWithClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload
{
  dCopy = d;
  keyCopy = key;
  payloadCopy = payload;
  if ((dCopy & 0xFFFFFFFD) == 0x30 || [(PLClientLogger *)self talkToPowerlogHelper])
  {
    p_xpcConnectionHelper = &self->_xpcConnectionHelper;
    xpcConnectionHelper = self->_xpcConnectionHelper;
    clientDebug = [(PLClientLogger *)self clientDebug];
    if (xpcConnectionHelper)
    {
      if (clientDebug)
      {
        v13 = PLLogClientLogging();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }

LABEL_33:
      }
    }

    else
    {
      if (clientDebug)
      {
        v14 = PLLogClientLogging();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:? withKey:? withPayload:?];
        }
      }

      mach_service = xpc_connection_create_mach_service("com.apple.powerlogHelperd.XPCService.xpc", self->_xpcConnectionQueue, 0);
      v16 = self->_xpcConnectionHelper;
      self->_xpcConnectionHelper = mach_service;

      v17 = self->_xpcConnectionHelper;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke;
      handler[3] = &unk_1E7F18C68;
      handler[4] = self;
      v41 = dCopy;
      v39 = keyCopy;
      v40 = payloadCopy;
      xpc_connection_set_event_handler(v17, handler);
      xpc_connection_activate(self->_xpcConnectionHelper);
      if ([(PLClientLogger *)self clientDebug])
      {
        v18 = PLLogClientLogging();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }
  }

  else
  {
    p_xpcConnectionHelper = &self->_xpcConnection;
    xpcConnection = self->_xpcConnection;
    clientDebug2 = [(PLClientLogger *)self clientDebug];
    if (xpcConnection)
    {
      if (clientDebug2)
      {
        v21 = PLLogClientLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }

    else
    {
      if (clientDebug2)
      {
        v22 = PLLogClientLogging();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }

      v23 = xpc_connection_create_mach_service("com.apple.powerlog.plxpclogger.xpc", self->_xpcConnectionQueue, 0);
      v24 = self->_xpcConnection;
      self->_xpcConnection = v23;

      v25 = self->_xpcConnection;
      v30 = MEMORY[0x1E69E9820];
      v31 = 3221225472;
      v32 = __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190;
      v33 = &unk_1E7F18C68;
      selfCopy = self;
      v37 = dCopy;
      v35 = keyCopy;
      v36 = payloadCopy;
      xpc_connection_set_event_handler(v25, &v30);
      xpc_connection_activate(self->_xpcConnection);
      if ([(PLClientLogger *)self clientDebug:v30])
      {
        v26 = PLLogClientLogging();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [PLClientLogger xpcConnectionWithClientID:withKey:withPayload:];
        }
      }
    }

    if ([(PLClientLogger *)self clientDebug])
    {
      v13 = PLLogClientLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PLClientLogger xpcConnectionWithClientID:? withKey:? withPayload:?];
      }

      goto LABEL_33;
    }
  }

  v27 = *p_xpcConnectionHelper;
  v28 = v27;

  return v27;
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) clientDebug])
  {
    v4 = PLLogClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) xpcConnectionWithClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
      v13[0] = 67109378;
      v13[1] = xpc_connection_get_pid(v12);
      v14 = 2112;
      v15 = v3;
      _os_log_debug_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEBUG, "xpcConnectionWithClientID: Event handler fired peerPID=%d %@", v13, 0x12u);
    }
  }

  v5 = MEMORY[0x1BFB01330](v3);
  v6 = MEMORY[0x1E69E9E98];
  v7 = [*(a1 + 32) clientDebug];
  if (v5 == v6)
  {
    if (v7)
    {
      v9 = PLLogClientLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_2();
      }
    }

    if (v3 == MEMORY[0x1E69E9E20])
    {
      if ([*(a1 + 32) clientDebug])
      {
        v10 = PLLogClientLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3();
        }
      }

      disableMessageOnDevice = 1;
    }
  }

  else if (v7)
  {
    v8 = PLLogClientLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) clientDebug])
  {
    v4 = PLLogClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) xpcConnectionWithClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
      v9[0] = 67109378;
      v9[1] = xpc_connection_get_pid(v8);
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEBUG, "xpcConnectionWithClientID: event handler fired peerPID=%d %@", v9, 0x12u);
    }
  }

  if (MEMORY[0x1BFB01330](v3) == MEMORY[0x1E69E9E98])
  {
    if (v3 == MEMORY[0x1E69E9E20])
    {
      if ([*(a1 + 32) clientDebug])
      {
        v6 = PLLogClientLogging();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3();
        }
      }

      disableMessageOnDevice = 1;
    }
  }

  else if ([*(a1 + 32) clientDebug])
  {
    v5 = PLLogClientLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190_cold_1();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:0];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"shouldLog"];
  v3 = [*(a1 + 32) xpcSendMessageWithReply:v2 withClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:0];
  if ([*(a1 + 32) clientDebug])
  {
    v4 = PLLogClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_1();
    }
  }

  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"shouldLog"];
    v6 = [v5 shortValue];

    [*(a1 + 32) setCachePermission:v6 ForClientID:*(a1 + 64) withKey:*(a1 + 40) withType:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
    v7 = v6 == 1;
  }

  else
  {
    [*(a1 + 32) setCachePermission:2 ForClientID:*(a1 + 64) withKey:*(a1 + 40) withType:*(a1 + 48)];
    (*(*(a1 + 56) + 16))();
    v7 = 0;
  }

  v8 = [*(a1 + 32) pendingTasksForType:*(a1 + 48) forClientID:*(a1 + 64) forKey:*(a1 + 40)];
  if ([*(a1 + 32) clientDebug])
  {
    v9 = PLLogClientLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 64);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 67110402;
      *v28 = v18;
      *&v28[4] = 2112;
      *&v28[6] = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v2;
      v33 = 2112;
      v34 = v3;
      v35 = 2112;
      v36 = v8;
      _os_log_debug_impl(&dword_1BACB7000, v9, OS_LOG_TYPE_DEBUG, "permissionForClientID:%d withKey:%@ withType:%@\nquery=%@\n\nresult=%@\n\npending=%@", buf, 0x3Au);
    }
  }

  if (v7)
  {
    if ([*(a1 + 48) isEqualToString:@"Post"])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v21 = v2;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            if ([*(a1 + 32) clientDebug])
            {
              v16 = PLLogClientLogging();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v28 = v15;
                _os_log_debug_impl(&dword_1BACB7000, v16, OS_LOG_TYPE_DEBUG, "permissionForClientID: logging %@", buf, 0xCu);
              }
            }

            [*(a1 + 32) logForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
        v2 = v21;
      }

LABEL_30:

      goto LABEL_31;
    }

    if ([*(a1 + 48) isEqualToString:@"Query"] && objc_msgSend(*(a1 + 32), "clientDebug"))
    {
      v10 = PLLogClientLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_2();
      }

      goto LABEL_30;
    }
  }

LABEL_31:

  v17 = *MEMORY[0x1E69E9840];
}

- (int)shouldLogNowForClientID:(signed __int16)d withKey:(id)key withPayload:(id)payload withFilterInterval:(double)interval
{
  dCopy = d;
  v54 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  payloadCopy = payload;
  date = [MEMORY[0x1E695DF00] date];
  keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d_%@", dCopy, keyCopy];
  objc_sync_enter(@"___sFilterByIntervalBufferSync___");
  eventFilterSaved = [(PLClientLogger *)self eventFilterSaved];
  v14 = [eventFilterSaved objectForKeyedSubscript:keyCopy];

  if (!v14)
  {
    v15 = objc_opt_new();
    eventFilterSaved2 = [(PLClientLogger *)self eventFilterSaved];
    [eventFilterSaved2 setObject:v15 forKeyedSubscript:keyCopy];
  }

  eventFilterSaved3 = [(PLClientLogger *)self eventFilterSaved];
  v18 = [eventFilterSaved3 objectForKeyedSubscript:keyCopy];
  v19 = [v18 objectForKeyedSubscript:@"lastEventDate"];

  if ([(PLClientLogger *)self clientDebug])
  {
    v20 = PLLogClientLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v47 = dCopy;
      v48 = 2112;
      v49 = keyCopy;
      v50 = 2112;
      v51 = date;
      v52 = 2112;
      v53 = payloadCopy;
      _os_log_debug_impl(&dword_1BACB7000, v20, OS_LOG_TYPE_DEBUG, "shouldLogNowForClientID: (PLLogRegisteredEventFilterByInterval) Check(%d, %@ at %@) - %@\n", buf, 0x26u);
    }

    if (!v19)
    {
      if (payloadCopy)
      {
        goto LABEL_20;
      }

LABEL_24:
      if ([(PLClientLogger *)self clientDebug])
      {
        v36 = PLLogClientLogging();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109890;
          v47 = dCopy;
          v48 = 2112;
          v49 = keyCopy;
          v50 = 2112;
          v51 = date;
          v52 = 2112;
          v53 = 0;
          _os_log_debug_impl(&dword_1BACB7000, v36, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) Drop invalid(%d, %@ at %@) - %@\n", buf, 0x26u);
        }

        v29 = 3;
        goto LABEL_34;
      }

      v29 = 3;
      goto LABEL_35;
    }

    v21 = PLLogClientLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger shouldLogNowForClientID:withKey:withPayload:withFilterInterval:];
    }

    v22 = PLLogClientLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLClientLogger shouldLogNowForClientID:withKey:withPayload:withFilterInterval:];
    }

    v23 = PLLogClientLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [date timeIntervalSinceDate:v19];
      [PLClientLogger shouldLogNowForClientID:v45 withKey:v23 withPayload:v24 withFilterInterval:interval];
    }
  }

  if (!payloadCopy)
  {
    goto LABEL_24;
  }

  if (v19)
  {
    [date timeIntervalSinceDate:v19];
    if (v25 < interval)
    {
      eventFilterSaved4 = [(PLClientLogger *)self eventFilterSaved];
      v27 = [eventFilterSaved4 objectForKeyedSubscript:keyCopy];
      v28 = [v27 objectForKeyedSubscript:@"bufferedEventDictionary"];

      if (v28)
      {
        v29 = 2;
      }

      else
      {
        eventFilterSaved5 = [(PLClientLogger *)self eventFilterSaved];
        v38 = [eventFilterSaved5 objectForKeyedSubscript:keyCopy];
        [v38 setObject:date forKeyedSubscript:@"bufferedEventDate"];

        v29 = 1;
      }

      v39 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:payloadCopy copyItems:1];
      eventFilterSaved6 = [(PLClientLogger *)self eventFilterSaved];
      v41 = [eventFilterSaved6 objectForKeyedSubscript:keyCopy];
      [v41 setObject:v39 forKeyedSubscript:@"bufferedEventDictionary"];

      if ([(PLClientLogger *)self clientDebug])
      {
        v36 = PLLogClientLogging();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109890;
          v47 = dCopy;
          v48 = 2112;
          v49 = keyCopy;
          v50 = 2112;
          v51 = date;
          v52 = 2112;
          v53 = payloadCopy;
          _os_log_debug_impl(&dword_1BACB7000, v36, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) Buffer(%d, %@ at %@) - %@\n", buf, 0x26u);
        }

LABEL_34:

        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

LABEL_20:
  eventFilterSaved7 = [(PLClientLogger *)self eventFilterSaved];
  v31 = [eventFilterSaved7 objectForKeyedSubscript:keyCopy];
  [v31 setObject:date forKeyedSubscript:@"lastEventDate"];

  eventFilterSaved8 = [(PLClientLogger *)self eventFilterSaved];
  v33 = [eventFilterSaved8 objectForKeyedSubscript:keyCopy];
  [v33 removeObjectForKey:@"bufferedEventDictionary"];

  eventFilterSaved9 = [(PLClientLogger *)self eventFilterSaved];
  v35 = [eventFilterSaved9 objectForKeyedSubscript:keyCopy];
  [v35 removeObjectForKey:@"bufferedEventDate"];

  if ([(PLClientLogger *)self clientDebug])
  {
    v36 = PLLogClientLogging();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109890;
      v47 = dCopy;
      v48 = 2112;
      v49 = keyCopy;
      v50 = 2112;
      v51 = date;
      v52 = 2112;
      v53 = payloadCopy;
      _os_log_debug_impl(&dword_1BACB7000, v36, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval)  Log(%d, %@ at %@) - %@\n", buf, 0x26u);
    }

    v29 = 0;
    goto LABEL_34;
  }

  v29 = 0;
LABEL_35:

  objc_sync_exit(@"___sFilterByIntervalBufferSync___");
  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

void __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) clientDebug])
  {
    v2 = PLLogClientLogging();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke_cold_1(v2);
    }
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d_%@", *(a1 + 56), *(a1 + 40)];
  v4 = [MEMORY[0x1E695DF00] date];
  objc_sync_enter(@"___sFilterByIntervalBufferSync___");
  v5 = [*(a1 + 32) eventFilterSaved];
  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [v6 objectForKeyedSubscript:@"bufferedEventDictionary"];

  v8 = [*(a1 + 32) eventFilterSaved];
  v9 = [v8 objectForKeyedSubscript:v3];
  v10 = [v9 objectForKeyedSubscript:@"bufferedEventDate"];

  if (v7 && v10)
  {
    [v4 timeIntervalSinceDate:v10];
    if (v11 >= *(a1 + 48))
    {
      v14 = [*(a1 + 32) eventFilterSaved];
      v15 = [v14 objectForKeyedSubscript:v3];
      [v15 removeObjectForKey:@"bufferedEventDictionary"];

      v16 = [*(a1 + 32) eventFilterSaved];
      v17 = [v16 objectForKeyedSubscript:v3];
      [v17 removeObjectForKey:@"bufferedEventDate"];

      v13 = [MEMORY[0x1E695DF00] date];
      v12 = [*(a1 + 32) eventFilterSaved];
      v18 = [v12 objectForKeyedSubscript:v3];
      [v18 setObject:v13 forKeyedSubscript:@"lastEventDate"];
    }

    else
    {
      v12 = v7;
      v13 = v10;
      v10 = 0;
      v7 = 0;
    }
  }

  objc_sync_exit(@"___sFilterByIntervalBufferSync___");
  if (v7)
  {
    v19 = v10 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  v21 = [*(a1 + 32) clientDebug];
  if (v20)
  {
    if (v21)
    {
      v22 = PLLogClientLogging();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 56);
        v26 = *(a1 + 40);
        *buf = 67109890;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        v33 = 2112;
        v34 = v4;
        v35 = 2112;
        v36 = v7;
        _os_log_debug_impl(&dword_1BACB7000, v22, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t\t Log Buffered(%d, %@ at %@) - %@\n", buf, 0x26u);
      }
    }

    [*(a1 + 32) logWithCurrentDateForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:v7];
  }

  else if (v21)
  {
    v23 = PLLogClientLogging();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 56);
      v28 = *(a1 + 40);
      *buf = 67109634;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v4;
      _os_log_debug_impl(&dword_1BACB7000, v23, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t\t No Buffered Log(%d, %@ at %@)\n", buf, 0x1Cu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  [*(a1 + 32) xpcSendMessage:v2 withClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  if ([*(a1 + 32) clientDebug])
  {
    v3 = PLLogClientLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8[0] = 67109634;
      v8[1] = v5;
      v9 = 2112;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_debug_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithRateLimitingforClient: client id:%d withKey:%@ withPayload:%@ sent!", v8, 0x1Cu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_226(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Post"];
  if ([*(a1 + 32) clientDebug])
  {
    v3 = PLLogClientLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 40);
      v11 = 67109634;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v2;
      _os_log_debug_impl(&dword_1BACB7000, v3, OS_LOG_TYPE_DEBUG, "XPC Send Message - not batched xpcSendMessageWithRateLimitingforClient: %d withKey:%@ message %@", &v11, 0x1Cu);
    }
  }

  [*(a1 + 32) xpcSendMessage:v2 withClientID:*(a1 + 56) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  if ([*(a1 + 32) clientDebug])
  {
    v4 = PLLogClientLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = 67109634;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_1BACB7000, v4, OS_LOG_TYPE_DEBUG, "xpcSendMessageWithRateLimitingforClient: %d withKey:%@ withPayload:%@ sent!", &v11, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __78__PLClientLogger_xpcSendMessageWithRateLimitingforClient_withKey_withPayload___block_invoke_227(uint64_t a1)
{
  [*(a1 + 32) batchTasksCacheFlush];
  [*(a1 + 32) sendBatchToPPS];
  [*(a1 + 32) clearCache];
  v2 = *(a1 + 32);

  return [v2 setBatchMessagesSentCount:0];
}

void __55__PLClientLogger_queryForClientID_withKey_withPayload___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) buildMessageForClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  [v2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"Query"];
  v3 = [*(a1 + 32) xpcSendMessageWithReply:v2 withClientID:*(a1 + 64) withKey:*(a1 + 40) withPayload:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) clientDebug])
  {
    v6 = PLLogClientLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v12[0] = 67110146;
      v12[1] = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v2;
      _os_log_debug_impl(&dword_1BACB7000, v6, OS_LOG_TYPE_DEBUG, "queryForClientID:%d withKey:%@ withPayload:%@ result=%@, message=%@", v12, 0x30u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__PLClientLogger_powerlogStateChanged__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)buildMessageForClientID:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cachedPermissionForClientID:(void *)a1 withKey:(uint64_t)a2 withType:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a3, a3, "permissionCache: %@", a2);
}

- (void)cachedPermissionForClientID:withKey:withType:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cachedPermissionForClientID:withKey:withType:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addToPendingTaskCacheForType:(NSObject *)a3 forClientID:forKey:withPayload:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a3, a3, "addToPendingTaskCacheForType: Current cached payloads = %@", a2);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcConnectionWithClientID:(uint64_t *)a1 withKey:withPayload:.cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcConnectionWithClientID:(uint64_t)a1 withKey:withPayload:.cold.6(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 96);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)xpcConnectionWithClientID:withKey:withPayload:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __64__PLClientLogger_xpcConnectionWithClientID_withKey_withPayload___block_invoke_190_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessage:withClientID:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessage:withClientID:withKey:withPayload:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)xpcSendMessageWithReply:withClientID:withKey:withPayload:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)permissionForClientID:withKey:withType:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x1E69E9840];
}

void __68__PLClientLogger_permissionForClientID_withKey_withType_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)logForClientID:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldLogNowForClientID:withKey:withPayload:withFilterInterval:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldLogNowForClientID:withKey:withPayload:withFilterInterval:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldLogNowForClientID:(uint8_t *)buf withKey:(NSObject *)a2 withPayload:(double)a3 withFilterInterval:(double)a4 .cold.3(uint8_t *buf, NSObject *a2, double a3, double a4)
{
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = a4;
  _os_log_debug_impl(&dword_1BACB7000, a2, OS_LOG_TYPE_DEBUG, "(PLLogRegisteredEventFilterByInterval) \t interval = %f, minInterval = %f\n", buf, 0x16u);
}

- (void)logLaterForClientID:(NSObject *)a1 withKey:withFilterInterval:.cold.1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a1, v3, "(PLLogRegisteredEventFilterByInterval) \t Set Timer at %@\n", v5);

  v4 = *MEMORY[0x1E69E9840];
}

void __65__PLClientLogger_logLaterForClientID_withKey_withFilterInterval___block_invoke_cold_1(NSObject *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_0(&dword_1BACB7000, a1, v3, "(PLLogRegisteredEventFilterByInterval) \t Timer Fired at %@\n", v5);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)xpcSendMessageWithRateLimitingforClient:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)queryForClientID:withKey:withPayload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)queryForClientID:withKey:withPayload:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)queryForClientID:withKey:withPayload:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end