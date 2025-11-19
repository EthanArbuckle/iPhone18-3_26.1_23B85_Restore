@interface PLXPCService
+ (id)entryAggregateDefinitionXPCEvent;
+ (id)entryAggregateDefinitions;
+ (id)entryEventIntervalDefinitionResponderEvent;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventPointDefinitionClientLogging;
+ (id)entryEventPointDefinitionClientLoggingDrops;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLXPCService)init;
- (id)registeredOperatorFromDictionary:(id)a3 forMessage:(id)a4;
- (signed)permissionForClientID:(signed __int16)a3 withKey:(id)a4 withType:(id)a5 withProcessName:(id)a6;
- (void)dailyTasks;
- (void)handlePeer:(id)a3 forEvent:(id)a4;
- (void)handlePeerResponderEvent:(id)a3 withMessage:(id)a4 withClientID:(signed __int16)a5 withProcessName:(id)a6 withKey:(id)a7 withPayload:(id)a8;
- (void)handleSingleMessage:(id)a3 fromPeer:(id)a4 forEvent:(id)a5;
- (void)initOperatorDependancies;
- (void)initSatelliteProcessSemaphore;
- (void)logMessage:(id)a3 withPayload:(id)a4;
- (void)resetPermissionsForClients;
- (void)respondToEvent:(id)a3 withResponse:(id)a4;
- (void)setSatelliteProcessExit;
- (void)setSatelliteProcessExitWithTime:(double)a3;
- (void)stopPowerlogHelperd:(id)a3;
@end

@implementation PLXPCService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLXPCService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ClientLogging";
  v3 = [a1 entryEventPointDefinitionClientLogging];
  v8[1] = @"ClientLoggingDrops";
  v9[0] = v3;
  v4 = [a1 entryEventPointDefinitionClientLoggingDrops];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)entryEventPointDefinitionClientLoggingDrops
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F580];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CEE8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"clientID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"PLXPCBatchedMessageDropCounts";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionClientLogging
{
  v28[3] = *MEMORY[0x277D85DE8];
  v27[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4F8];
  v25[0] = *MEMORY[0x277D3F568];
  v25[1] = v2;
  v26[0] = &unk_282C1CEE8;
  v26[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4C0];
  v25[2] = *MEMORY[0x277D3F4C8];
  v25[3] = v3;
  v26[2] = &unk_282C13C98;
  v26[3] = &unk_282C13CB0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v28[0] = v18;
  v27[1] = *MEMORY[0x277D3F540];
  v23[0] = @"clientID";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v24[0] = v16;
  v23[1] = @"process-name";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v24[1] = v5;
  v23[2] = @"event";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v24[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v28[1] = v8;
  v27[2] = *MEMORY[0x277D3F500];
  v21[0] = @"value";
  v19 = *MEMORY[0x277D3F5A8];
  v20 = &unk_282C13CC8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v21[1] = @"unit";
  v22[0] = v9;
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_StringFormat];
  v22[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v28[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventIntervalDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a1 isDebugEnabled])
  {
    v7 = @"ResponderEvent";
    v3 = [a1 entryEventIntervalDefinitionResponderEvent];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventIntervalDefinitionResponderEvent
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1CEE8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"timestampEnd";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_DateFormat];
  v16[0] = v3;
  v15[1] = @"clientID";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"process-name";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[2] = v7;
  v15[3] = @"event";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a1 isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v7 = @"XPCEvent";
    v3 = [a1 entryAggregateDefinitionXPCEvent];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryAggregateDefinitionXPCEvent
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v30[0] = *MEMORY[0x277D3F568];
  v30[1] = v2;
  v31[0] = &unk_282C1CEE8;
  v31[1] = MEMORY[0x277CBEC28];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v21;
  v32[1] = *MEMORY[0x277D3F540];
  v28[0] = @"clientID";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_IntegerFormat];
  v29[0] = v19;
  v28[1] = @"process-name";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat];
  v29[1] = v17;
  v28[2] = @"event";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v16 commonTypeDict_StringFormat];
  v29[2] = v3;
  v28[3] = @"type";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v29[3] = v5;
  v28[4] = @"count";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat_aggregateFunction_sum];
  v29[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
  v33[1] = v8;
  v32[2] = *MEMORY[0x277D3F478];
  v26[0] = &unk_282C1CEF8;
  v24 = *MEMORY[0x277D3F470];
  v9 = v24;
  v25 = &unk_282C1CF08;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26[1] = &unk_282C1CF18;
  v27[0] = v10;
  v22 = v9;
  v23 = &unk_282C1CEF8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v32[3] = *MEMORY[0x277D3F488];
  v33[2] = v12;
  v33[3] = &unk_282C16C38;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PLXPCService)init
{
  v85 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F258] isPerfPowerMetricd] & 1) == 0)
  {
    v82.receiver = self;
    v82.super_class = PLXPCService;
    v4 = [(PLOperator *)&v82 init];
    if (!v4)
    {
LABEL_39:
      self = v4;
      v3 = self;
      goto LABEL_40;
    }

    v5 = objc_opt_new();
    registeredListeners = v4->_registeredListeners;
    v4->_registeredListeners = v5;

    v7 = objc_opt_new();
    registeredResponders = v4->_registeredResponders;
    v4->_registeredResponders = v7;

    clientIDs = v4->_clientIDs;
    v4->_clientIDs = &unk_282C16C50;

    v10 = objc_opt_new();
    v11 = v4->_clientIDs;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __20__PLXPCService_init__block_invoke;
    v80[3] = &unk_278259C68;
    v12 = v10;
    v81 = v12;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v80];
    objc_storeStrong(&v4->_clientNames, v10);
    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      v13 = 200000;
    }

    else
    {
      v13 = 1000000;
    }

    v4->_responderWaitTime = v13;
    v14 = getClientPermissions();
    permissionCache = v4->_permissionCache;
    v4->_permissionCache = v14;

    v16 = v4->_permissionCache;
    if ((!v16 || !-[NSDictionary count](v16, "count")) && [MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"**** unable to load ClientPermissions ****"];
      v18 = MEMORY[0x277D3F178];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v20 = [v19 lastPathComponent];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v18 logMessage:v17 fromFile:v20 fromFunction:v21 fromLineNumber:239];

      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v84 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v23 = objc_alloc(MEMORY[0x277D3F1F0]);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __20__PLXPCService_init__block_invoke_540;
    v78[3] = &unk_2782597E8;
    self = v4;
    v79 = self;
    v24 = [v23 initWithOperator:self forNotification:@"register.PLXPCService" withBlock:v78];
    registrationNotification = self->_registrationNotification;
    self->_registrationNotification = v24;

    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      [v26 addObserver:self selector:sel_stopPowerlogHelperd_ name:@"PLBatteryGaugeService.stopPowerlogHelperd" object:0];
    }

    if ([MEMORY[0x277D3F258] isLiteModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlog.plxpclogger.xpc";
        goto LABEL_35;
      }

      v27 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__PLXPCService_init__block_invoke_560;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v27;
      if (qword_2811F6E60 != -1)
      {
        dispatch_once(&qword_2811F6E60, block);
      }

      v28 = "com.apple.powerlog.plxpclogger.xpc";
      if (byte_2811F6E19 != 1)
      {
        goto LABEL_35;
      }

      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277D3F258] liteModeDaemonName];
      v31 = [v29 stringWithFormat:@"running in %@ with service %s", v30, "com.apple.powerlog.plxpclogger.xpc"];

      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v34 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:265];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v84 = v31;
    }

    else if ([MEMORY[0x277D3F258] isFullModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlogd.XPCService.xpc";
LABEL_35:
        v48 = [(PLOperator *)self workQueue];
        mach_service = xpc_connection_create_mach_service(v28, v48, 1uLL);
        xpcConnection = self->_xpcConnection;
        self->_xpcConnection = mach_service;

        xpc_connection_set_context(self->_xpcConnection, self);
        v51 = self->_xpcConnection;
        v52 = dispatch_get_global_queue(2, 0);
        xpc_connection_set_target_queue(v51, v52);

        v53 = self->_xpcConnection;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __20__PLXPCService_init__block_invoke_579;
        handler[3] = &unk_278263360;
        v54 = self;
        v74 = v54;
        xpc_connection_set_event_handler(v53, handler);
        xpc_connection_activate(self->_xpcConnection);
        if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlog.state_changed", 0, 0, 0);
        }

        v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
        v57 = objc_alloc(MEMORY[0x277D3F250]);
        v58 = [(PLOperator *)v54 workQueue];
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __20__PLXPCService_init__block_invoke_601;
        v71[3] = &unk_278259C40;
        v59 = v54;
        v72 = v59;
        v60 = [v57 initWithFireDate:v56 withInterval:1 withTolerance:0 repeats:v58 withUserInfo:v71 withQueue:3600.0 withBlock:0.0];
        resetPermissionsForClientsTimer = v59->_resetPermissionsForClientsTimer;
        v59->_resetPermissionsForClientsTimer = v60;

        goto LABEL_39;
      }

      v37 = objc_opt_class();
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __20__PLXPCService_init__block_invoke_567;
      v76[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v76[4] = v37;
      if (qword_2811F6E68 != -1)
      {
        dispatch_once(&qword_2811F6E68, v76);
      }

      v28 = "com.apple.powerlogd.XPCService.xpc";
      if (byte_2811F6E1A != 1)
      {
        goto LABEL_35;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = [MEMORY[0x277D3F258] fullModeDaemonName];
      v31 = [v38 stringWithFormat:@"running in %@ with service %s", v39, "com.apple.powerlogd.XPCService.xpc"];

      v40 = MEMORY[0x277D3F178];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v42 = [v41 lastPathComponent];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v40 logMessage:v31 fromFile:v42 fromFunction:v43 fromLineNumber:269];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
LABEL_33:

        goto LABEL_35;
      }

      *buf = 138412290;
      v84 = v31;
    }

    else
    {
      if (![MEMORY[0x277D3F258] isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v64 = objc_opt_class();
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __20__PLXPCService_init__block_invoke_575;
          v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v75[4] = v64;
          if (qword_2811F6E70 != -1)
          {
            dispatch_once(&qword_2811F6E70, v75);
          }

          if (byte_2811F6E1B == 1)
          {
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad processname, no xpc for you"];
            v66 = MEMORY[0x277D3F178];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v68 = [v67 lastPathComponent];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
            [v66 logMessage:v65 fromFile:v68 fromFunction:v69 fromLineNumber:277];

            v70 = PLLogCommon();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v84 = v65;
              _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }
          }
        }

        goto LABEL_2;
      }

      [(PLXPCService *)self initSatelliteProcessSemaphore];
      v28 = "com.apple.powerlogHelperd.XPCService.xpc";
      if (![(PLOperator *)self isDebugEnabled])
      {
        goto LABEL_35;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"running in BLDService with service %s", "com.apple.powerlogHelperd.XPCService.xpc"];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v46 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v44 logMessage:v31 fromFile:v46 fromFunction:v47 fromLineNumber:274];

      v36 = PLLogCommon();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v84 = v31;
    }

    _os_log_debug_impl(&dword_21A4C6000, v36, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_33;
  }

LABEL_2:
  v3 = 0;
LABEL_40:

  v62 = *MEMORY[0x277D85DE8];
  return v3;
}

void __20__PLXPCService_init__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __20__PLXPCService_init__block_invoke_540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __20__PLXPCService_init__block_invoke_2;
    v32 = &__block_descriptor_40_e5_v8__0lu32l8;
    v33 = v11;
    if (qword_2811F6E58 != -1)
    {
      dispatch_once(&qword_2811F6E58, &block);
    }

    if (_MergedGlobals_1_69 == 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v7 objectForKeyedSubscript:@"type"];
      v14 = [v7 objectForKeyedSubscript:@"registration"];
      v15 = [v12 stringWithFormat:@"registration of type %@ of key %@ for %@", v13, v14, v9, block, v30, v31, v32, v33];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:243];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v21 = [v7 objectForKeyedSubscript:@"type"];
  v22 = [v21 caseInsensitiveCompare:@"Post"] == 0;

  if (v22)
  {
    v25 = [*(a1 + 32) registeredListeners];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredListeners];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
    goto LABEL_12;
  }

  v23 = [v7 objectForKeyedSubscript:@"type"];
  v24 = [v23 caseInsensitiveCompare:@"Query"] == 0;

  if (v24)
  {
    v25 = [*(a1 + 32) registeredResponders];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredResponders];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
LABEL_12:

    objc_sync_exit(v25);
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __20__PLXPCService_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_69 = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E19 = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_567(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1A = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1B = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_579(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__PLXPCService_init__block_invoke_2_580;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v5;
    if (qword_2811F6E78 != -1)
    {
      dispatch_once(&qword_2811F6E78, block);
    }

    if (byte_2811F6E1C == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [*(a1 + 32) xpcConnection];
      v8 = [v6 stringWithFormat:@"event handler fired peerPID=%d %@", xpc_connection_get_pid(v7), v3];

      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:287];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (MEMORY[0x21CEDE6E0](v3) != MEMORY[0x277D86480])
  {
    v14 = v3;
    context = xpc_connection_get_context(*(*(a1 + 32) + 56));
    xpc_connection_set_context(v14, context);
    v16 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v14, v16);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__PLXPCService_init__block_invoke_590;
    handler[3] = &unk_278263338;
    v27 = *(a1 + 32);
    v28 = v14;
    v17 = v14;
    xpc_connection_set_event_handler(v17, handler);
    xpc_connection_activate(v17);

    v18 = v27;
LABEL_10:

    goto LABEL_17;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __20__PLXPCService_init__block_invoke_586;
    v29[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v29[4] = v20;
    if (qword_2811F6E80 != -1)
    {
      dispatch_once(&qword_2811F6E80, v29);
    }

    if (byte_2811F6E1D == 1)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC error! %@", v3];
      v21 = MEMORY[0x277D3F178];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v23 = [v22 lastPathComponent];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke_2"];
      [v21 logMessage:v17 fromFile:v23 fromFunction:v24 fromLineNumber:290];

      v18 = PLLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v32 = v17;
        _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_10;
    }
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __20__PLXPCService_init__block_invoke_2_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1C = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1D = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_590(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3F180];
  v4 = a2;
  if ([v3 debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __20__PLXPCService_init__block_invoke_2_591;
    v20 = &__block_descriptor_40_e5_v8__0lu32l8;
    v21 = v6;
    if (qword_2811F6E88 != -1)
    {
      dispatch_once(&qword_2811F6E88, &block);
    }

    if (byte_2811F6E1E == 1)
    {
      v7 = MEMORY[0x277CCACA8];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v9 = [v7 stringWithFormat:@"peer(%d) connected", pid, block, v18, v19, v20, v21];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:298];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v9;
        _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = xpc_connection_get_context(*(a1 + 40));
  [v15 handlePeer:*(a1 + 40) forEvent:v4];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __20__PLXPCService_init__block_invoke_2_591(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E1E = result;
  return result;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1F0]);
    v4 = [MEMORY[0x277D3F258] workQueueForClass:objc_opt_class()];
    v5 = *MEMORY[0x277CBE580];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PLXPCService_initOperatorDependancies__block_invoke;
    v7[3] = &unk_2782597E8;
    v7[4] = self;
    v6 = [v3 initWithWorkQueue:v4 forNotification:v5 withBlock:v7];

    [(PLXPCService *)self setDailyTaskNotification:v6];
  }
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __40__PLXPCService_initOperatorDependancies__block_invoke_2;
    v16 = &unk_27825A310;
    v17 = @"DailyTasks";
    v18 = v3;
    if (qword_2811F6E90 != -1)
    {
      dispatch_once(&qword_2811F6E90, &v13);
    }

    v4 = byte_2811F6E1F;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!", v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService initOperatorDependancies]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:323];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  result = [*(a1 + 32) dailyTasks];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F6E1F = result;
  return result;
}

- (void)initSatelliteProcessSemaphore
{
  v3 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F608]];
  satelliteProcessSemaphore = self->_satelliteProcessSemaphore;
  self->_satelliteProcessSemaphore = v3;

  v5 = [(PLXPCService *)self satelliteProcessSemaphore];
  [v5 setTimeout:100.0];

  v6 = [(PLXPCService *)self satelliteProcessSemaphore];
  [v6 signalStartListening];
}

- (void)dailyTasks
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];
  v5 = v3;
  [v4 timeIntervalSince1970];
  v7 = v6;
  [v5 timeIntervalSince1970];
  v9 = v8;
  v38 = v5;

  v10 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
  v11 = [(PLOperator *)self storage];
  v37 = v10;
  v12 = [v11 aggregateEntriesForKey:v10 withBucketLength:3600.0 inTimeIntervalRange:{v7, v9 - v7}];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __26__PLXPCService_dailyTasks__block_invoke;
  v45[3] = &unk_2782591D0;
  v45[4] = self;
  if (qword_2811F6E98 != -1)
  {
    dispatch_once(&qword_2811F6E98, v45);
  }

  v13 = qword_2811F6EA0;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      v17 = 0;
      do
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * v17);
        v19 = [v18 objectForKeyedSubscript:@"count"];
        v20 = [v19 longValue];

        if (v20 > v13)
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = [v18 objectForKeyedSubscript:@"type"];
          v23 = [v18 objectForKeyedSubscript:@"clientID"];
          v24 = [v18 objectForKeyedSubscript:@"process-name"];
          v25 = [v18 objectForKeyedSubscript:@"event"];
          v26 = [v21 stringWithFormat:@"com.apple.power.xpc.highRatePerHour.%@.%@.%@.%@", v22, v23, v24, v25];

          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v27 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __26__PLXPCService_dailyTasks__block_invoke_2;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v27;
            if (qword_2811F6EA8 != -1)
            {
              dispatch_once(&qword_2811F6EA8, block);
            }

            if (byte_2811F6E20 == 1)
            {
              v28 = MEMORY[0x277CCACA8];
              v29 = [v18 objectForKeyedSubscript:@"count"];
              v30 = [v28 stringWithFormat:@"Reporting %@ crossing ratePerHourThreshold with %@", v26, v29];

              v31 = MEMORY[0x277D3F178];
              v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              v33 = [v32 lastPathComponent];
              v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService dailyTasks]"];
              [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:348];

              v35 = PLLogCommon();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v47 = v30;
                _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          MEMORY[0x21CEDCD40](v26, 1);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v15);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __26__PLXPCService_dailyTasks__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"ratePerHourThreshold"];
  qword_2811F6EA0 = result;
  return result;
}

uint64_t __26__PLXPCService_dailyTasks__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E20 = result;
  return result;
}

- (id)registeredOperatorFromDictionary:(id)a3 forMessage:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [&unk_282C16C68 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v8)
  {
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(&unk_282C16C68);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [&unk_282C16C68 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v8);
  }

  v13 = v5;
  objc_sync_enter(v13);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [&unk_282C16C68 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v14)
  {
    v15 = *v31;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(&unk_282C16C68);
      }

      v17 = *(*(&v30 + 1) + 8 * v16);
      v18 = [v13 objectForKeyedSubscript:v7];
      if (v18)
      {
        break;
      }

      [v7 removeObjectForKey:v17];
      if (v14 == ++v16)
      {
        v14 = [&unk_282C16C68 countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = [&unk_282C16C68 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v19)
    {
      v20 = *v27;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(&unk_282C16C68);
        }

        v38 = *(*(&v26 + 1) + 8 * v21);
        v22 = [v6 objectForKeyedSubscript:?];
        v39 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v18 = [v13 objectForKeyedSubscript:v23];

        if (v18)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [&unk_282C16C68 countByEnumeratingWithState:&v26 objects:v40 count:16];
          v18 = 0;
          if (v19)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    else
    {
      v18 = 0;
    }
  }

  objc_sync_exit(v13);

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)respondToEvent:(id)a3 withResponse:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__PLXPCService_respondToEvent_withResponse___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v8;
      if (qword_2811F6EB0 != -1)
      {
        dispatch_once(&qword_2811F6EB0, block);
      }

      if (byte_2811F6E21 == 1)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"empty response"];
        v10 = MEMORY[0x277D3F178];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v12 = [v11 lastPathComponent];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
        [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:388];

        v14 = PLLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32 = v9;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v7 = MEMORY[0x277CBEC10];
  }

  if ([(PLOperator *)self isDebugEnabled])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"adding debug to response"];
    v16 = MEMORY[0x277D3F178];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
    v18 = [v17 lastPathComponent];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService respondToEvent:withResponse:]"];
    [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:393];

    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v32 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v21 = [v7 mutableCopy];
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLOperator isDebugEnabled](self, "isDebugEnabled")}];
    [v21 setObject:v22 forKeyedSubscript:@"PLXPCClientDebug"];

    v7 = v21;
  }

  reply = xpc_dictionary_create_reply(v6);
  v24 = _CFXPCCreateXPCMessageWithCFObject();
  xpc_dictionary_set_value(reply, [@"PLXPCConnectionReturnDict" UTF8String], v24);
  v25 = xpc_dictionary_get_remote_connection(v6);
  v26 = v25;
  if (v25)
  {
    xpc_connection_send_message(v25, reply);
  }

  else
  {
    v27 = PLLogXPCService();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_ERROR, "remote connection missing", buf, 2u);
    }
  }

  v28 = PLLogXPCService();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = v6;
    v33 = 2112;
    v34 = v7;
    v35 = 2112;
    v36 = reply;
    _os_log_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEFAULT, "responded to event! event=%@ response=%@ replyMessage=%@", buf, 0x20u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLXPCService_respondToEvent_withResponse___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E21 = result;
  return result;
}

- (void)logMessage:(id)a3 withPayload:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __39__PLXPCService_logMessage_withPayload___block_invoke;
      v38[3] = &unk_27825A310;
      v39 = @"Listener";
      v40 = v8;
      if (qword_2811F6EB8 != -1)
      {
        dispatch_once(&qword_2811F6EB8, v38);
      }

      v9 = byte_2811F6E22;

      if (v9 == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Listener"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:423];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v42 = v10;
          _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLogging"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    [v17 setObjectsFromRawData:v6];
    [v17 setDynamicObjectsFromRawData:v7];
    block = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __39__PLXPCService_logMessage_withPayload___block_invoke_645;
    v35 = &unk_27825B7C8;
    v36 = @"dynamicClientLogging";
    v37 = 1;
    if (qword_2811F6EC0 != -1)
    {
      dispatch_once(&qword_2811F6EC0, &block);
    }

    v18 = byte_2811F6E23;

    if (v18 == 1)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v27 = MEMORY[0x277D85DD0];
        v28 = 3221225472;
        v29 = __39__PLXPCService_logMessage_withPayload___block_invoke_2;
        v30 = &__block_descriptor_40_e5_v8__0lu32l8;
        v31 = v19;
        if (qword_2811F6EC8 != -1)
        {
          dispatch_once(&qword_2811F6EC8, &v27);
        }

        if (byte_2811F6E24 == 1)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v17, v27, v28, v29, v30, v31, block, v33, v34, v35];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v23 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
          [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:429];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v42 = v20;
            _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      [(PLOperator *)self logEntry:v17];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  byte_2811F6E22 = result;
  return result;
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke_645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  byte_2811F6E23 = result;
  return result;
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E24 = result;
  return result;
}

- (signed)permissionForClientID:(signed __int16)a3 withKey:(id)a4 withType:(id)a5 withProcessName:(id)a6
{
  v8 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PLXPCService *)self clientIDs];
  v14 = [v13 count];

  if (v14 <= v8)
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109890;
      *v48 = v8;
      *&v48[4] = 2112;
      *&v48[6] = v10;
      v49 = 2112;
      v50 = v11;
      v51 = 2112;
      v52 = v12;
      _os_log_fault_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_FAULT, "Invalid client ID %d request for key : %@, type : %@, processName %@", buf, 0x26u);
    }

    v24 = 0;
  }

  else
  {
    v15 = [(PLXPCService *)self clientIDs];
    v16 = [v15 objectAtIndexedSubscript:v8];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke;
      v45 = &__block_descriptor_40_e5_v8__0lu32l8;
      v46 = v17;
      if (qword_2811F6ED0 != -1)
      {
        dispatch_once(&qword_2811F6ED0, &block);
      }

      if (byte_2811F6E25 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLXPCService: permissionForClientID:%hd", v8, block, v43, v44, v45, v46];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService permissionForClientID:withKey:withType:withProcessName:]"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:449];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *v48 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([MEMORY[0x277D3F258] isPowerlogHelperd])
    {
      v24 = 1;
    }

    else
    {
      v25 = [(PLXPCService *)self permissionCache];
      v26 = [v25 objectForKeyedSubscript:v11];
      v27 = [v26 objectForKeyedSubscript:v16];
      v28 = [v27 objectForKeyedSubscript:@"__PL__Global"];

      v29 = [(PLXPCService *)self permissionCache];
      v30 = [v29 objectForKeyedSubscript:v11];
      v31 = [v30 objectForKeyedSubscript:v16];
      v32 = v31;
      if (v28)
      {
        v33 = [v31 objectForKeyedSubscript:@"__PL__Global"];
        v24 = [v33 BOOLValue];
      }

      else
      {
        v34 = [v31 objectForKeyedSubscript:v10];
        v35 = [v34 objectForKeyedSubscript:@"__PL__Global"];

        v29 = [(PLXPCService *)self permissionCache];
        v30 = [v29 objectForKeyedSubscript:v11];
        v32 = [v30 objectForKeyedSubscript:v16];
        v36 = [v32 objectForKeyedSubscript:v10];
        v33 = v36;
        if (v35)
        {
          v37 = @"__PL__Global";
        }

        else
        {
          v38 = [v36 objectForKeyedSubscript:v12];

          if (!v38)
          {
            v24 = [MEMORY[0x277D3F180] fullMode];
            goto LABEL_22;
          }

          v29 = [(PLXPCService *)self permissionCache];
          v30 = [v29 objectForKeyedSubscript:v11];
          v32 = [v30 objectForKeyedSubscript:v16];
          v36 = [v32 objectForKeyedSubscript:v10];
          v33 = v36;
          v37 = v12;
        }

        v39 = [v36 objectForKeyedSubscript:v37];
        v24 = [v39 BOOLValue];
      }
    }
  }

LABEL_22:

  v40 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __71__PLXPCService_permissionForClientID_withKey_withType_withProcessName___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E25 = result;
  return result;
}

- (void)resetPermissionsForClients
{
  v24 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (qword_2811F6ED8 != -1)
    {
      dispatch_once(&qword_2811F6ED8, block);
    }

    if (byte_2811F6E26 == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients start!"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:477];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v4;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(PLXPCService *)self permissionCache];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_660;
  v20[3] = &unk_2782631C8;
  v20[4] = self;
  [v10 enumerateKeysAndObjectsUsingBlock:v20];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_670;
    v19[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v19[4] = v11;
    if (qword_2811F6EE8 != -1)
    {
      dispatch_once(&qword_2811F6EE8, v19);
    }

    if (byte_2811F6E28 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients done!"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:488];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E26 = result;
  return result;
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_2;
  v5[3] = &unk_278259C68;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CCACA8];
  v6 = [*(a1 + 32) clientNames];
  v7 = [v6 objectForKeyedSubscript:v3];
  v8 = [v5 stringWithFormat:@"%@.ClientID.%@", @"com.apple.powerlog.state_changed", v7];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v8, 0, 0, 0);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_3;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (qword_2811F6EE0 != -1)
    {
      dispatch_once(&qword_2811F6EE0, block);
    }

    if (byte_2811F6E27 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"resetPermissionsForClients posted %@", v8];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService resetPermissionsForClients]_block_invoke_2"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:484];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = v12;
        _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E27 = result;
  return result;
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E28 = result;
  return result;
}

- (void)handlePeer:(id)a3 forEvent:(id)a4
{
  v105 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x21CEDE6E0]();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (qword_2811F6EF0 != -1)
    {
      dispatch_once(&qword_2811F6EF0, block);
    }

    if (byte_2811F6E29 == 1)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: type=%@, event=%@", "-[PLXPCService handlePeer:forEvent:]", 497, v8, v7];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:497];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v104 = v10;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  if (v8 == MEMORY[0x277D86480])
  {
    if (v7 == MEMORY[0x277D863F8])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_68;
      }

      v52 = objc_opt_class();
      v100[0] = MEMORY[0x277D85DD0];
      v100[1] = 3221225472;
      v100[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_679;
      v100[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v100[4] = v52;
      if (qword_2811F6EF8 != -1)
      {
        dispatch_once(&qword_2811F6EF8, v100);
      }

      if (byte_2811F6E2A != 1)
      {
        goto LABEL_68;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(v6)];
      v53 = MEMORY[0x277D3F178];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v55 = [v54 lastPathComponent];
      v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v53 logMessage:v46 fromFile:v55 fromFunction:v56 fromLineNumber:502];

      v51 = PLLogCommon();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      v104 = v46;
    }

    else if (v7 == MEMORY[0x277D863F0])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_68;
      }

      v63 = objc_opt_class();
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_685;
      v99[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v99[4] = v63;
      if (qword_2811F6F00 != -1)
      {
        dispatch_once(&qword_2811F6F00, v99);
      }

      if (byte_2811F6E2B != 1)
      {
        goto LABEL_68;
      }

      v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(v6)];
      v64 = MEMORY[0x277D3F178];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v66 = [v65 lastPathComponent];
      v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v64 logMessage:v46 fromFile:v66 fromFunction:v67 fromLineNumber:506];

      v51 = PLLogCommon();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_67;
      }

      *buf = 138412290;
      v104 = v46;
    }

    else
    {
      v43 = MEMORY[0x277D86420];
      v44 = [MEMORY[0x277D3F180] debugEnabled];
      if (v7 == v43)
      {
        if (!v44)
        {
          goto LABEL_68;
        }

        v68 = objc_opt_class();
        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_691;
        v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v98[4] = v68;
        if (qword_2811F6F08 != -1)
        {
          dispatch_once(&qword_2811F6F08, v98);
        }

        if (byte_2811F6E2C != 1)
        {
          goto LABEL_68;
        }

        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(v6)];
        v69 = MEMORY[0x277D3F178];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v71 = [v70 lastPathComponent];
        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v69 logMessage:v46 fromFile:v71 fromFunction:v72 fromLineNumber:510];

        v51 = PLLogCommon();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_67;
        }

        *buf = 138412290;
        v104 = v46;
      }

      else
      {
        if (!v44)
        {
          goto LABEL_68;
        }

        v45 = objc_opt_class();
        v97[0] = MEMORY[0x277D85DD0];
        v97[1] = 3221225472;
        v97[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_697;
        v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v97[4] = v45;
        if (qword_2811F6F10 != -1)
        {
          dispatch_once(&qword_2811F6F10, v97);
        }

        if (byte_2811F6E2D != 1)
        {
          goto LABEL_68;
        }

        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received Unidentified error:%@", xpc_connection_get_pid(v6), v7];
        v47 = MEMORY[0x277D3F178];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v49 = [v48 lastPathComponent];
        v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v47 logMessage:v46 fromFile:v49 fromFunction:v50 fromLineNumber:515];

        v51 = PLLogCommon();
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
LABEL_67:

LABEL_68:
          xpc_connection_cancel(v6);
          goto LABEL_84;
        }

        *buf = 138412290;
        v104 = v46;
      }
    }

    _os_log_debug_impl(&dword_21A4C6000, v51, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    goto LABEL_67;
  }

  if (v8 == MEMORY[0x277D86468])
  {
    v16 = _CFXPCCreateCFObjectFromXPCMessage();
    v17 = [v16 objectForKeyedSubscript:@"content"];
    if (!v16)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"no message"];
        v58 = MEMORY[0x277D3F178];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v60 = [v59 lastPathComponent];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:559];

        v62 = PLLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v104 = v57;
          _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }

      if ([MEMORY[0x277D3F258] isPowerlogHelperd])
      {
        [(PLXPCService *)self setSatelliteProcessExitWithTime:10.0];
      }

      goto LABEL_83;
    }

    v18 = [v16 objectForKeyedSubscript:@"clientID"];
    v19 = [v18 shortValue];

    if (v19 == 110)
    {
      v73 = [v17 objectForKey:@"PLXPCBatchedMessage"];

      if (v73)
      {
        v30 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_720;
        v88[3] = &unk_278261CB0;
        v88[4] = self;
        v89 = v6;
        v90 = v7;
        [v30 enumerateKeysAndObjectsUsingBlock:v88];

LABEL_82:
        goto LABEL_83;
      }
    }

    else if (v19 == 51)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_706;
        v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v96[4] = v20;
        if (qword_2811F6F18 != -1)
        {
          dispatch_once(&qword_2811F6F18, v96);
        }

        if (byte_2811F6E2E == 1)
        {
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Got a batched message %@", v16];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:527];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v104 = v21;
            _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v27 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
      v28 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];
      v29 = [v28 intValue];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v30 = v27;
      v31 = [v30 countByEnumeratingWithState:&v92 objects:v102 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v93;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v93 != v33)
            {
              objc_enumerationMutation(v30);
            }

            [(PLXPCService *)self handleSingleMessage:*(*(&v92 + 1) + 8 * i) fromPeer:v6 forEvent:v7];
          }

          v32 = [v30 countByEnumeratingWithState:&v92 objects:v102 count:16];
        }

        while (v32);
      }

      v35 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLoggingDrops"];
      v36 = MEMORY[0x277D3F1A0];
      v37 = [(PLOperator *)self className];
      LODWORD(v36) = [v36 isEntryKeySetup:v35 forOperatorName:v37];

      if (v36)
      {
        v38 = v29 < 1;
      }

      else
      {
        v38 = 1;
      }

      if (!v38)
      {
        v85 = v29;
        if ([v30 count])
        {
          v39 = [v30 objectAtIndexedSubscript:0];
          [v39 objectForKeyedSubscript:@"clientID"];
          v41 = v40 = v35;
          v42 = [v41 shortValue];

          v35 = v40;
        }

        else
        {
          v42 = 0;
        }

        v87 = v35;
        v74 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v35];
        v75 = [MEMORY[0x277CCABB0] numberWithInt:v85];
        [v74 setObject:v75 forKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];

        v76 = [MEMORY[0x277CCABB0] numberWithShort:v42];
        [v74 setObject:v76 forKeyedSubscript:@"clientID"];

        [(PLOperator *)self logEntry:v74];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v77 = objc_opt_class();
          v91[0] = MEMORY[0x277D85DD0];
          v91[1] = 3221225472;
          v91[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_716;
          v91[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v91[4] = v77;
          if (qword_2811F6F20 != -1)
          {
            dispatch_once(&qword_2811F6F20, v91);
          }

          if (byte_2811F6E2F == 1)
          {
            v86 = v74;
            v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped messages %@", v74];
            v79 = MEMORY[0x277D3F178];
            v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v81 = [v80 lastPathComponent];
            v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
            [v79 logMessage:v78 fromFile:v81 fromFunction:v82 fromLineNumber:544];

            v83 = PLLogCommon();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v104 = v78;
              _os_log_debug_impl(&dword_21A4C6000, v83, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v74 = v86;
          }
        }

        v35 = v87;
      }

      goto LABEL_82;
    }

    [(PLXPCService *)self handleSingleMessage:v16 fromPeer:v6 forEvent:v7];
LABEL_83:
  }

LABEL_84:

  v84 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E29 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_679(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2A = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2B = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_691(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2C = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2D = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2E = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E2F = result;
  return result;
}

void __36__PLXPCService_handlePeer_forEvent___block_invoke_720(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) handleSingleMessage:*(*(&v10 + 1) + 8 * v8++) fromPeer:*(a1 + 40) forEvent:*(a1 + 48)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleSingleMessage:(id)a3 fromPeer:(id)a4 forEvent:(id)a5
{
  v123 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v113 = a5;
  v10 = [v8 objectForKeyedSubscript:@"clientID"];
  v11 = [v10 shortValue];

  v12 = [v8 objectForKeyedSubscript:@"process-name"];
  v13 = [v8 objectForKeyedSubscript:@"event"];
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    if (v11 != 48)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v27 = objc_opt_class();
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke;
        v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v120[4] = v27;
        if (qword_2811F6F28 != -1)
        {
          dispatch_once(&qword_2811F6F28, v120);
        }

        if (byte_2811F6E30 == 1)
        {
          v105 = v11;
          v103 = v12;
          v28 = v9;
          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 581, v8];
          v30 = MEMORY[0x277D3F178];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v32 = [v31 lastPathComponent];
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v30 logMessage:v29 fromFile:v32 fromFunction:v33 fromLineNumber:581];

          v34 = PLLogCommon();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v122 = v29;
            _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v9 = v28;
          v12 = v103;
          v11 = v105;
        }
      }

      v26 = 30.0;
      goto LABEL_20;
    }

    v14 = [v8 objectForKeyedSubscript:@"content"];
    v15 = [v14 objectForKeyedSubscript:@"battery_gauge_event"];
    v16 = [v15 intValue];

    v17 = [MEMORY[0x277D3F180] debugEnabled];
    if (v16 == 1)
    {
      if (v17)
      {
        v18 = objc_opt_class();
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733;
        v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v119[4] = v18;
        if (qword_2811F6F30 != -1)
        {
          dispatch_once(&qword_2811F6F30, v119);
        }

        if (byte_2811F6E31 == 1)
        {
          v102 = v12;
          v19 = v9;
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 587, v8];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v23 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:587];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v122 = v20;
            _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v9 = v19;
          v12 = v102;
          v11 = 48;
        }
      }

      v26 = 100.0;
LABEL_20:
      [(PLXPCService *)self setSatelliteProcessExitWithTime:v26];
      goto LABEL_21;
    }

    if (v17)
    {
      v71 = objc_opt_class();
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736;
      v118[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v118[4] = v71;
      if (qword_2811F6F38 != -1)
      {
        dispatch_once(&qword_2811F6F38, v118);
      }

      if (byte_2811F6E32 == 1)
      {
        v104 = v12;
        v72 = v9;
        v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 592, v8];
        v74 = MEMORY[0x277D3F178];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v76 = [v75 lastPathComponent];
        v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v74 logMessage:v73 fromFile:v76 fromFunction:v77 fromLineNumber:592];

        v78 = PLLogCommon();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v122 = v73;
          _os_log_debug_impl(&dword_21A4C6000, v78, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = v72;
        v12 = v104;
        v11 = 48;
      }
    }
  }

LABEL_21:
  v35 = [v8 objectForKey:@"shouldLog"];

  if (v35)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v36 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v36;
      if (qword_2811F6F40 != -1)
      {
        dispatch_once(&qword_2811F6F40, block);
      }

      if (byte_2811F6E33 == 1)
      {
        v106 = v11;
        v37 = v13;
        v38 = v12;
        v39 = v9;
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Should log request(%d): %@", xpc_connection_get_pid(v9), v8];
        v41 = MEMORY[0x277D3F178];
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v43 = [v42 lastPathComponent];
        v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v41 logMessage:v40 fromFile:v43 fromFunction:v44 fromLineNumber:598];

        v45 = PLLogCommon();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v122 = v40;
          _os_log_debug_impl(&dword_21A4C6000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }

        v9 = v39;
        v12 = v38;
        v13 = v37;
        v11 = v106;
      }
    }

    [(PLXPCService *)self handlePeerShouldLogEvent:v113 withMessage:v8 withClientID:v11 withProcessName:v12 withKey:v13];
    v46 = @"shouldLog";
  }

  else
  {
    v47 = [v8 objectForKeyedSubscript:@"content"];
    v48 = [v8 objectForKey:@"Query"];

    if (v48)
    {
      if (![MEMORY[0x277D3F258] allowQueryFromPeer:v9])
      {
LABEL_69:

        goto LABEL_70;
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v49 = objc_opt_class();
        v116[0] = MEMORY[0x277D85DD0];
        v116[1] = 3221225472;
        v116[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748;
        v116[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v116[4] = v49;
        if (qword_2811F6F48 != -1)
        {
          dispatch_once(&qword_2811F6F48, v116);
        }

        if (byte_2811F6E34 == 1)
        {
          v109 = v47;
          v107 = v11;
          v50 = v13;
          v51 = v12;
          v52 = v9;
          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response request(%d): %@", xpc_connection_get_pid(v9), v8];
          v54 = MEMORY[0x277D3F178];
          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v56 = [v55 lastPathComponent];
          v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v54 logMessage:v53 fromFile:v56 fromFunction:v57 fromLineNumber:609];

          v58 = PLLogCommon();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v122 = v53;
            _os_log_debug_impl(&dword_21A4C6000, v58, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v9 = v52;
          v12 = v51;
          v13 = v50;
          v11 = v107;
          v47 = v109;
        }
      }

      [(PLXPCService *)self handlePeerResponderEvent:v113 withMessage:v8 withClientID:v11 withProcessName:v12 withKey:v13 withPayload:v47];
      v46 = @"Query";
    }

    else
    {
      v59 = [v8 objectForKey:@"Post"];

      v60 = [MEMORY[0x277D3F180] debugEnabled];
      if (v59)
      {
        if (v60)
        {
          v61 = objc_opt_class();
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754;
          v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v115[4] = v61;
          if (qword_2811F6F50 != -1)
          {
            dispatch_once(&qword_2811F6F50, v115);
          }

          if (byte_2811F6E35 == 1)
          {
            v110 = v47;
            v108 = v11;
            v62 = v13;
            v63 = v12;
            v64 = v9;
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data posted(%d): %@", xpc_connection_get_pid(v9), v8];
            v66 = MEMORY[0x277D3F178];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v68 = [v67 lastPathComponent];
            v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
            [v66 logMessage:v65 fromFile:v68 fromFunction:v69 fromLineNumber:614];

            v70 = PLLogCommon();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v122 = v65;
              _os_log_debug_impl(&dword_21A4C6000, v70, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v9 = v64;
            v12 = v63;
            v13 = v62;
            v11 = v108;
            v47 = v110;
          }
        }

        [(PLXPCService *)self handlePeerListenerEvent:v113 withMessage:v8 withClientID:v11 withProcessName:v12 withKey:v13 withPayload:v47];
        v46 = @"Post";
      }

      else
      {
        if (!v60)
        {
          goto LABEL_63;
        }

        v79 = objc_opt_class();
        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760;
        v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v114[4] = v79;
        if (qword_2811F6F58 != -1)
        {
          dispatch_once(&qword_2811F6F58, v114);
        }

        if (byte_2811F6E36 == 1)
        {
          v111 = v47;
          v80 = v13;
          v81 = v12;
          v82 = v9;
          v83 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message with no direction: %@", v8];
          v84 = MEMORY[0x277D3F178];
          v85 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v86 = [v85 lastPathComponent];
          v87 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v84 logMessage:v83 fromFile:v86 fromFunction:v87 fromLineNumber:618];

          v88 = PLLogCommon();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v122 = v83;
            _os_log_debug_impl(&dword_21A4C6000, v88, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          v46 = 0;
          v9 = v82;
          v12 = v81;
          v13 = v80;
          v47 = v111;
        }

        else
        {
LABEL_63:
          v46 = 0;
        }
      }
    }
  }

  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v112 = v13;
    v89 = v12;
    v90 = v9;
    v47 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
    v91 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47];
    v92 = [v8 objectForKeyedSubscript:@"event"];
    [v91 setObject:v92 forKeyedSubscript:@"event"];

    v93 = [v8 objectForKeyedSubscript:@"clientID"];
    [v91 setObject:v93 forKeyedSubscript:@"clientID"];

    v94 = [v8 objectForKeyedSubscript:@"process-name"];
    [v91 setObject:v94 forKeyedSubscript:@"process-name"];

    if (v46)
    {
      [v91 setObject:v46 forKeyedSubscript:@"type"];
    }

    [v91 setObject:&unk_282C13CF8 forKeyedSubscript:@"count"];
    [(PLOperator *)self logEntry:v91];
    v95 = MEMORY[0x277CCACA8];
    v96 = [v91 objectForKeyedSubscript:@"type"];
    v97 = [v91 objectForKeyedSubscript:@"clientID"];
    v98 = [v91 objectForKeyedSubscript:@"process-name"];
    v99 = [v91 objectForKeyedSubscript:@"event"];
    v100 = [v95 stringWithFormat:@"com.apple.power.xpc.%@.%@.%@.%@", v96, v97, v98, v99];

    MEMORY[0x21CEDCD40](v100, 1);
    v9 = v90;
    v12 = v89;
    v13 = v112;
    goto LABEL_69;
  }

LABEL_70:

  v101 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E30 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E31 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E32 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E33 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E34 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E35 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E36 = result;
  return result;
}

uint64_t __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E37 = result;
  return result;
}

uint64_t __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E38 = result;
  return result;
}

- (void)handlePeerResponderEvent:(id)a3 withMessage:(id)a4 withClientID:(signed __int16)a5 withProcessName:(id)a6 withKey:(id)a7 withPayload:(id)a8
{
  v76 = a5;
  v138 = *MEMORY[0x277D85DE8];
  v74 = a3;
  v80 = a4;
  v13 = a6;
  v78 = a7;
  v14 = a8;
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    v15 = [(PLXPCService *)self satelliteProcessSemaphore];
    [v15 signalInterestByObject:v80];
  }

  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__20;
  v129 = __Block_byref_object_dispose__20;
  v130 = 0;
  if ([(PLOperator *)self isDebugEnabled])
  {
    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ResponderEvent"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    v18 = v126[5];
    v126[5] = v17;

    v19 = [v80 objectForKeyedSubscript:@"event"];
    [v126[5] setObject:v19 forKeyedSubscript:@"event"];

    v20 = [v80 objectForKeyedSubscript:@"clientID"];
    [v126[5] setObject:v20 forKeyedSubscript:@"clientID"];

    v21 = [v80 objectForKeyedSubscript:@"process-name"];
    [v126[5] setObject:v21 forKeyedSubscript:@"process-name"];

    if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
    {
      [(PLOperator *)self logEntry:v126[5]];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v124[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v124[4] = v22;
    if (qword_2811F6F70 != -1)
    {
      dispatch_once(&qword_2811F6F70, v124);
    }

    if (byte_2811F6E39 == 1)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"clientID=%i, processName=%@, key=%@, payload=%@", v76, v13, v78, v14];
      v24 = MEMORY[0x277D3F178];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v26 = [v25 lastPathComponent];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
      [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:675];

      v28 = PLLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v133) = 138412290;
        *(&v133 + 4) = v23;
        _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", &v133, 0xCu);
      }
    }
  }

  *&v133 = 0;
  *(&v133 + 1) = &v133;
  v134 = 0x3032000000;
  v135 = __Block_byref_object_copy__20;
  v136 = __Block_byref_object_dispose__20;
  v75 = v74;
  v137 = v75;
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = v76;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__20;
  v118 = __Block_byref_object_dispose__20;
  v73 = v13;
  v119 = v73;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__20;
  v112 = __Block_byref_object_dispose__20;
  v77 = v78;
  v113 = v77;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__20;
  v106 = __Block_byref_object_dispose__20;
  v79 = v14;
  v107 = v79;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__20;
  v100 = __Block_byref_object_dispose__20;
  v29 = [(PLXPCService *)self registeredResponders];
  v101 = [(PLXPCService *)self registeredOperatorFromDictionary:v29 forMessage:v80];

  v30 = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = __Block_byref_object_copy__20;
  v94[4] = __Block_byref_object_dispose__20;
  v95 = 0;
  while (1)
  {
    v31 = [(PLXPCService *)self registeredResponders];
    v32 = [(PLXPCService *)self registeredOperatorFromDictionary:v31 forMessage:v80];
    v33 = v97[5];
    v97[5] = v32;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v34 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v34;
      if (qword_2811F6F78 != -1)
      {
        dispatch_once(&qword_2811F6F78, block);
      }

      if (byte_2811F6E3A == 1)
      {
        v35 = MEMORY[0x277CCACA8];
        v36 = [(PLXPCService *)self registeredResponders];
        v37 = [v35 stringWithFormat:@"!!! %s/%d: count=%d, [self registeredResponders]=%@, message=%@, responder=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 690, v30, v36, v80, v97[5]];

        v38 = MEMORY[0x277D3F178];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v40 = [v39 lastPathComponent];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v38 logMessage:v37 fromFile:v40 fromFunction:v41 fromLineNumber:690];

        v42 = PLLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v132 = v37;
          _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v97[5])
    {
      break;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v43 = objc_opt_class();
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842;
      v82[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v82[4] = v43;
      if (qword_2811F6FA8 != -1)
      {
        dispatch_once(&qword_2811F6FA8, v82);
      }

      if (byte_2811F6E40 == 1)
      {
        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered Responder"];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v47 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:740];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v132 = v44;
          _os_log_debug_impl(&dword_21A4C6000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v30 > 3)
    {
      v50 = 1000000;
    }

    else
    {
      v50 = [(PLXPCService *)self responderWaitTime];
    }

    usleep(v50);
    v30 = (v30 + 1);
    if (v30 == 20)
    {
      goto LABEL_51;
    }
  }

  v51 = [v80 objectForKeyedSubscript:@"clientID"];
  if ([v51 integerValue] != 32)
  {
    goto LABEL_46;
  }

  v52 = [v80 objectForKeyedSubscript:@"event"];
  v53 = [v52 description];
  v54 = [v53 isEqualToString:@"SafeLogFile"];

  if (v54)
  {
    v55 = [v79 mutableCopy];
    [v55 setObject:MEMORY[0x277CBEC38] forKey:@"BLDRetail"];
    v51 = v55;

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v56 = objc_opt_class();
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795;
      v92[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v92[4] = v56;
      if (qword_2811F6F80 != -1)
      {
        dispatch_once(&qword_2811F6F80, v92);
      }

      if (byte_2811F6E3B == 1)
      {
        v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: clientID=%d, event=%@, processName=%@, key=%@, payload=%@, message=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]", 696, *(v121 + 12), v75, v115[5], v109[5], v103[5], v80];
        v58 = MEMORY[0x277D3F178];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v60 = [v59 lastPathComponent];
        v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]"];
        [v58 logMessage:v57 fromFile:v60 fromFunction:v61 fromLineNumber:696];

        v62 = PLLogCommon();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v132 = v57;
          _os_log_debug_impl(&dword_21A4C6000, v62, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    v63 = dispatch_get_global_queue(0, 0);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799;
    v91[3] = &unk_27825F6D0;
    v91[4] = self;
    v91[5] = v94;
    dispatch_sync(v63, v91);

    v79 = v51;
LABEL_46:
  }

  v64 = [v80 objectForKeyedSubscript:@"event"];
  v65 = [v64 description];
  v66 = [v65 isEqualToString:@"Aggregate"];

  if (v66)
  {
    v67 = -32768;
  }

  else
  {
    v67 = 0;
  }

  v68 = dispatch_get_global_queue(v67, 0);
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835;
  v83[3] = &unk_278263388;
  v86 = &v120;
  v87 = &v114;
  v88 = &v108;
  v89 = &v102;
  v85 = &v96;
  v83[4] = self;
  v90 = &v133;
  v84 = v80;
  dispatch_async(v68, v83);

LABEL_51:
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] && !v97[5])
  {
    v69 = PLLogCommon();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v132 = v80;
      _os_log_error_impl(&dword_21A4C6000, v69, OS_LOG_TYPE_ERROR, "powerlogHelperd received unhandled query: %@", buf, 0xCu);
    }

    v70 = [(PLXPCService *)self satelliteProcessSemaphore];
    [v70 signalDoneByObject:v80];
  }

  v71 = v126[5];
  if (v71)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846;
    v81[3] = &unk_27825A990;
    v81[4] = &v125;
    [(PLOperator *)self updateEntry:v71 withBlock:v81];
  }

  _Block_object_dispose(v94, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v114, 8);

  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v133, 8);

  _Block_object_dispose(&v125, 8);
  v72 = *MEMORY[0x277D85DE8];
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E39 = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3A = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3B = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  PLTalkToPowerlogHelper();
  v2 = PLQueryRegistered();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = 0x277D3F000uLL;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2;
    v48[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v48[4] = v7;
    if (qword_2811F6F88 != -1)
    {
      dispatch_once(&qword_2811F6F88, v48);
    }

    if (byte_2811F6E3C == 1)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%d: buiResults=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 702, *(*(*(a1 + 40) + 8) + 40)];
      v9 = MEMORY[0x277D3F178];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v11 = [v10 lastPathComponent];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:702];

      v13 = PLLogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v8;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = 0x277D3F000uLL;
    }
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (v14)
  {
    v15 = [v14 objectForKeyedSubscript:@"result"];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v41 = *v45;
      v40 = a1;
      do
      {
        v18 = 0;
        do
        {
          if (*v45 != v41)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v44 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x277D3F190]);
          v21 = [v19 objectForKeyedSubscript:@"EntryKey"];
          v22 = [v20 initWithEntryKey:v21 withRawData:v19];

          [*(a1 + 32) logEntry:v22];
          if ([*(v5 + 384) debugEnabled])
          {
            v23 = *(a1 + 32);
            v24 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v24;
            if (qword_2811F6F90 != -1)
            {
              dispatch_once(&qword_2811F6F90, block);
            }

            if (byte_2811F6E3D == 1)
            {
              v25 = v15;
              v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: log to database entry=%@, serializedEntry=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 711, v22, v19];;
              v27 = MEMORY[0x277D3F178];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
              v29 = [v28 lastPathComponent];
              v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
              [v27 logMessage:v26 fromFile:v29 fromFunction:v30 fromLineNumber:711];

              v31 = PLLogCommon();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v26;
                _os_log_debug_impl(&dword_21A4C6000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v15 = v25;
              a1 = v40;
            }
          }

          ++v18;
        }

        while (v17 != v18);
        v17 = [v15 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v17);
    }

LABEL_23:

    goto LABEL_31;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v32 = *(a1 + 32);
    v33 = objc_opt_class();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828;
    v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v42[4] = v33;
    if (qword_2811F6F98 != -1)
    {
      dispatch_once(&qword_2811F6F98, v42);
    }

    if (byte_2811F6E3E == 1)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: buiResults is nil", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2", 714];
      v34 = MEMORY[0x277D3F178];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v36 = [v35 lastPathComponent];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke_2"];
      [v34 logMessage:v15 fromFile:v36 fromFunction:v37 fromLineNumber:714];

      v38 = PLLogCommon();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v15;
        _os_log_debug_impl(&dword_21A4C6000, v38, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

LABEL_31:
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3C = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3D = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3E = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(*(*(a1 + 48) + 8) + 40) respondToRequestForClientID:*(*(*(a1 + 56) + 8) + 24) withProcessName:*(*(*(a1 + 64) + 8) + 40) withKey:*(*(*(a1 + 72) + 8) + 40) withPayload:*(*(*(a1 + 80) + 8) + 40)];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (qword_2811F6FA0 != -1)
    {
      dispatch_once(&qword_2811F6FA0, block);
    }

    if (byte_2811F6E3F == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: responder=%@, response=%@", "-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke", 731, *(*(*(a1 + 48) + 8) + 40), v2];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:731];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  [*(a1 + 32) respondToEvent:*(*(*(a1 + 88) + 8) + 40) withResponse:v2];
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    v11 = [*(a1 + 32) satelliteProcessSemaphore];
    [v11 signalDoneByObject:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E3F = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E40 = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v2 forKeyedSubscript:@"timestampEnd"];
}

uint64_t __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E41 = result;
  return result;
}

uint64_t __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_852(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F6E42 = result;
  return result;
}

- (void)stopPowerlogHelperd:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"timeout"];
  -[PLXPCService setSatelliteProcessExitWithTime:](self, "setSatelliteProcessExitWithTime:", [v4 intValue]);
}

- (void)setSatelliteProcessExitWithTime:(double)a3
{
  v5 = [(PLXPCService *)self satelliteProcessSemaphore];
  [v5 setTimeout:a3];

  [(PLXPCService *)self setSatelliteProcessExit];
}

- (void)setSatelliteProcessExit
{
  if ([MEMORY[0x277D3F258] isPowerlogHelperd])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (setSatelliteProcessExit_onceToken != -1)
    {
      dispatch_once(&setSatelliteProcessExit_onceToken, block);
    }
  }
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke_2;
  block[3] = &unk_2782591D0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke_2(uint64_t a1)
{
  while (1)
  {
    v2 = [*(a1 + 32) satelliteProcessSemaphore];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke_3;
    v3[3] = &unk_2782591D0;
    v3[4] = *(a1 + 32);
    [v2 waitWithBlockSync:v3];
  }
}

void __39__PLXPCService_setSatelliteProcessExit__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  [v2 blockingFlushCachesWithReason:@"SatelliteExit"];

  sleep(0xAu);
  v3 = [*(a1 + 32) satelliteProcessSemaphore];
  LOBYTE(v2) = [v3 isActive];

  if ((v2 & 1) == 0)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Stopping powerlogHelperd", v5, 2u);
    }

    [MEMORY[0x277D3F258] exitWithReason:6];
  }
}

@end