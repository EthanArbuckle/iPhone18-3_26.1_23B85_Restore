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
  v15[0] = &unk_28714B948;
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
  v26[0] = &unk_28714B948;
  v26[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4C0];
  v25[2] = *MEMORY[0x277D3F4C8];
  v25[3] = v3;
  v26[2] = &unk_287146F60;
  v26[3] = &unk_287146F78;
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
  v20 = &unk_287146F90;
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
  v18 = &unk_28714B948;
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
  v31[0] = &unk_28714B948;
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
  v26[0] = &unk_28714B958;
  v24 = *MEMORY[0x277D3F470];
  v9 = v24;
  v25 = &unk_28714B968;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26[1] = &unk_28714B978;
  v27[0] = v10;
  v22 = v9;
  v23 = &unk_28714B958;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v27[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v32[3] = *MEMORY[0x277D3F488];
  v33[2] = v12;
  v33[3] = &unk_28714DC40;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (PLXPCService)init
{
  if (!+[PLUtilities isPerfPowerMetricd])
  {
    v81.receiver = self;
    v81.super_class = PLXPCService;
    v4 = [(PLOperator *)&v81 init];
    if (!v4)
    {
LABEL_40:
      self = v4;
      v3 = self;
      goto LABEL_41;
    }

    v5 = objc_opt_new();
    registeredListeners = v4->_registeredListeners;
    v4->_registeredListeners = v5;

    v7 = objc_opt_new();
    registeredResponders = v4->_registeredResponders;
    v4->_registeredResponders = v7;

    clientIDs = v4->_clientIDs;
    v4->_clientIDs = &unk_28714DC58;

    v10 = objc_opt_new();
    v11 = v4->_clientIDs;
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __20__PLXPCService_init__block_invoke;
    v79[3] = &unk_279A5C3A8;
    v12 = v10;
    v80 = v12;
    [(NSArray *)v11 enumerateObjectsUsingBlock:v79];
    objc_storeStrong(&v4->_clientNames, v10);
    if (+[PLUtilities isPowerlogHelperd])
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    v23 = objc_alloc(MEMORY[0x277D3F1F0]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __20__PLXPCService_init__block_invoke_540;
    v77[3] = &unk_279A5BE78;
    self = v4;
    v78 = self;
    v24 = [v23 initWithOperator:self forNotification:@"register.PLXPCService" withBlock:v77];
    registrationNotification = self->_registrationNotification;
    self->_registrationNotification = v24;

    if (+[PLUtilities isPowerlogHelperd])
    {
      v26 = [MEMORY[0x277CCAB98] defaultCenter];
      [v26 addObserver:self selector:sel_stopPowerlogHelperd_ name:@"PLBatteryGaugeService.stopPowerlogHelperd" object:0];
    }

    if (+[PLUtilities isLiteModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlog.plxpclogger.xpc";
        goto LABEL_36;
      }

      v27 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__PLXPCService_init__block_invoke_560;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v27;
      if (init_defaultOnce_1 != -1)
      {
        dispatch_once(&init_defaultOnce_1, block);
      }

      v28 = "com.apple.powerlog.plxpclogger.xpc";
      if (init_classDebugEnabled_1 != 1)
      {
        goto LABEL_36;
      }

      v29 = MEMORY[0x277CCACA8];
      v30 = +[PLUtilities liteModeDaemonName];
      v31 = [v29 stringWithFormat:@"running in %@ with service %s", v30, "com.apple.powerlog.plxpclogger.xpc"];

      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v34 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:265];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else if (+[PLUtilities isFullModeDaemon])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = "com.apple.powerlogd.XPCService.xpc";
LABEL_36:
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
        handler[3] = &unk_279A5EA58;
        v54 = self;
        v73 = v54;
        xpc_connection_set_event_handler(v53, handler);
        xpc_connection_activate(self->_xpcConnection);
        if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.powerlog.state_changed", 0, 0, 0);
        }

        v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
        v57 = objc_alloc(MEMORY[0x277D3F250]);
        v58 = [(PLOperator *)v54 workQueue];
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __20__PLXPCService_init__block_invoke_601;
        v70[3] = &unk_279A5D088;
        v59 = v54;
        v71 = v59;
        v60 = [v57 initWithFireDate:v56 withInterval:1 withTolerance:0 repeats:v58 withUserInfo:v70 withQueue:3600.0 withBlock:0.0];
        resetPermissionsForClientsTimer = v59->_resetPermissionsForClientsTimer;
        v59->_resetPermissionsForClientsTimer = v60;

        goto LABEL_40;
      }

      v37 = objc_opt_class();
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __20__PLXPCService_init__block_invoke_567;
      v75[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v75[4] = v37;
      if (init_defaultOnce_565 != -1)
      {
        dispatch_once(&init_defaultOnce_565, v75);
      }

      v28 = "com.apple.powerlogd.XPCService.xpc";
      if (init_classDebugEnabled_566 != 1)
      {
        goto LABEL_36;
      }

      v38 = MEMORY[0x277CCACA8];
      v39 = +[PLUtilities fullModeDaemonName];
      v31 = [v38 stringWithFormat:@"running in %@ with service %s", v39, "com.apple.powerlogd.XPCService.xpc"];

      v40 = MEMORY[0x277D3F178];
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v42 = [v41 lastPathComponent];
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v40 logMessage:v31 fromFile:v42 fromFunction:v43 fromLineNumber:269];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      if (!+[PLUtilities isPowerlogHelperd])
      {
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v63 = objc_opt_class();
          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __20__PLXPCService_init__block_invoke_575;
          v74[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v74[4] = v63;
          if (init_defaultOnce_573 != -1)
          {
            dispatch_once(&init_defaultOnce_573, v74);
          }

          if (init_classDebugEnabled_574 == 1)
          {
            v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad processname, no xpc for you"];
            v65 = MEMORY[0x277D3F178];
            v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v67 = [v66 lastPathComponent];
            v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
            [v65 logMessage:v64 fromFile:v67 fromFunction:v68 fromLineNumber:277];

            v69 = PLLogCommon();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        goto LABEL_2;
      }

      [(PLXPCService *)self initSatelliteProcessSemaphore];
      v28 = "com.apple.powerlogHelperd.XPCService.xpc";
      if (![(PLOperator *)self isDebugEnabled])
      {
        goto LABEL_36;
      }

      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"running in BLDService with service %s", "com.apple.powerlogHelperd.XPCService.xpc"];
      v44 = MEMORY[0x277D3F178];
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v46 = [v45 lastPathComponent];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]"];
      [v44 logMessage:v31 fromFile:v46 fromFunction:v47 fromLineNumber:274];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    goto LABEL_36;
  }

LABEL_2:
  v3 = 0;
LABEL_41:

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
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __20__PLXPCService_init__block_invoke_2;
    v31 = &__block_descriptor_40_e5_v8__0lu32l8;
    v32 = v11;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_defaultOnce, &block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_classDebugEnabled == 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v7 objectForKeyedSubscript:@"type"];
      v14 = [v7 objectForKeyedSubscript:@"registration"];
      v15 = [v12 stringWithFormat:@"registration of type %@ of key %@ for %@", v13, v14, v9, block, v29, v30, v31, v32];

      v16 = MEMORY[0x277D3F178];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v16 logMessage:v15 fromFile:v18 fromFunction:v19 fromLineNumber:243];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v21 = [v7 objectForKeyedSubscript:@"type"];
  v22 = [v21 caseInsensitiveCompare:@"Post"];

  if (!v22)
  {
    v25 = [*(a1 + 32) registeredListeners];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredListeners];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
    goto LABEL_12;
  }

  v23 = [v7 objectForKeyedSubscript:@"type"];
  v24 = [v23 caseInsensitiveCompare:@"Query"];

  if (!v24)
  {
    v25 = [*(a1 + 32) registeredResponders];
    objc_sync_enter(v25);
    v26 = [*(a1 + 32) registeredResponders];
    v27 = [v7 objectForKeyedSubscript:@"registration"];
    [v26 setObject:v9 forKeyedSubscript:v27];
LABEL_12:

    objc_sync_exit(v25);
  }
}

uint64_t __20__PLXPCService_init__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_classDebugEnabled = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_560(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_1 = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_567(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_566 = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_575(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  init_classDebugEnabled_574 = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_579(uint64_t a1, void *a2)
{
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (MEMORY[0x25F8D2C50](v3) != MEMORY[0x277D86480])
  {
    v14 = v3;
    context = xpc_connection_get_context(*(*(a1 + 32) + 56));
    xpc_connection_set_context(v14, context);
    v16 = dispatch_get_global_queue(2, 0);
    xpc_connection_set_target_queue(v14, v16);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __20__PLXPCService_init__block_invoke_590;
    handler[3] = &unk_279A5EA30;
    v26 = *(a1 + 32);
    v27 = v14;
    v17 = v14;
    xpc_connection_set_event_handler(v17, handler);
    xpc_connection_activate(v17);

    v18 = v26;
LABEL_10:

    goto LABEL_17;
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v19 = *(a1 + 32);
    v20 = objc_opt_class();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __20__PLXPCService_init__block_invoke_586;
    v28[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v28[4] = v20;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce_584 != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_defaultOnce_584, v28);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled_585 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }

      goto LABEL_10;
    }
  }

LABEL_17:
}

uint64_t __20__PLXPCService_init__block_invoke_2_580(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled = result;
  return result;
}

uint64_t __20__PLXPCService_init__block_invoke_586(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_2_classDebugEnabled_585 = result;
  return result;
}

void __20__PLXPCService_init__block_invoke_590(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3F180];
  v4 = a2;
  if ([v3 debugEnabled])
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __20__PLXPCService_init__block_invoke_2_591;
    v19 = &__block_descriptor_40_e5_v8__0lu32l8;
    v20 = v6;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_defaultOnce, &block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_classDebugEnabled == 1)
    {
      v7 = MEMORY[0x277CCACA8];
      pid = xpc_connection_get_pid(*(a1 + 40));
      v9 = [v7 stringWithFormat:@"peer(%d) connected", pid, block, v17, v18, v19, v20];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService init]_block_invoke"];
      [v10 logMessage:v9 fromFile:v12 fromFunction:v13 fromLineNumber:298];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v15 = xpc_connection_get_context(*(a1 + 40));
  [v15 handlePeer:*(a1 + 40) forEvent:v4];
}

uint64_t __20__PLXPCService_init__block_invoke_2_591(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_3_classDebugEnabled = result;
  return result;
}

- (void)initOperatorDependancies
{
  if ([(PLOperator *)self isDebugEnabledForKey:@"LogAggregateXPC"])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1F0]);
    v4 = [PLUtilities workQueueForClass:objc_opt_class()];
    v5 = *MEMORY[0x277CBE580];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__PLXPCService_initOperatorDependancies__block_invoke;
    v7[3] = &unk_279A5BE78;
    v7[4] = self;
    v6 = [v3 initWithWorkQueue:v4 forNotification:v5 withBlock:v7];

    [(PLXPCService *)self setDailyTaskNotification:v6];
  }
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __40__PLXPCService_initOperatorDependancies__block_invoke_2;
    v15 = &unk_279A5E8C8;
    v16 = @"DailyTasks";
    v17 = v3;
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_defaultOnce, &v12);
    }

    v4 = kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_classDebugEnabled;

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DailyTasks notification!", v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService initOperatorDependancies]_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:323];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  return [*(a1 + 32) dailyTasks];
}

uint64_t __40__PLXPCService_initOperatorDependancies__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_4_classDebugEnabled = result;
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
  v45[3] = &unk_279A5BDC0;
  v45[4] = self;
  if (dailyTasks_defaultOnce != -1)
  {
    dispatch_once(&dailyTasks_defaultOnce, v45);
  }

  v13 = dailyTasks_objectForKey;
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
            if (dailyTasks_defaultOnce_615 != -1)
            {
              dispatch_once(&dailyTasks_defaultOnce_615, block);
            }

            if (dailyTasks_classDebugEnabled == 1)
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
                _os_log_debug_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }
          }

          MEMORY[0x25F8D18D0](v26, 1);
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
  dailyTasks_objectForKey = result;
  return result;
}

uint64_t __26__PLXPCService_dailyTasks__block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  dailyTasks_classDebugEnabled = result;
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
  v8 = [&unk_28714DC70 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v8)
  {
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(&unk_28714DC70);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        [v7 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [&unk_28714DC70 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v8);
  }

  v13 = v5;
  objc_sync_enter(v13);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = [&unk_28714DC70 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v14)
  {
    v15 = *v31;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v31 != v15)
      {
        objc_enumerationMutation(&unk_28714DC70);
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
        v14 = [&unk_28714DC70 countByEnumeratingWithState:&v30 objects:v41 count:16];
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
    v19 = [&unk_28714DC70 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v19)
    {
      v20 = *v27;
LABEL_18:
      v21 = 0;
      while (1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(&unk_28714DC70);
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
          v19 = [&unk_28714DC70 countByEnumeratingWithState:&v26 objects:v40 count:16];
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
      if (respondToEvent_withResponse__defaultOnce != -1)
      {
        dispatch_once(&respondToEvent_withResponse__defaultOnce, block);
      }

      if (respondToEvent_withResponse__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
      __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
      [PLXPCService respondToEvent:v27 withResponse:?];
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
    _os_log_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEFAULT, "responded to event! event=%@ response=%@ replyMessage=%@", buf, 0x20u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __44__PLXPCService_respondToEvent_withResponse___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  respondToEvent_withResponse__classDebugEnabled = result;
  return result;
}

- (void)logMessage:(id)a3 withPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3F180] fullMode])
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v8 = objc_opt_class();
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __39__PLXPCService_logMessage_withPayload___block_invoke;
      v30[3] = &unk_279A5E8C8;
      v31 = @"Listener";
      v32 = v8;
      if (logMessage_withPayload__defaultOnce != -1)
      {
        dispatch_once(&logMessage_withPayload__defaultOnce, v30);
      }

      v9 = logMessage_withPayload__classDebugEnabled;

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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLogging"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    [v17 setObjectsFromRawData:v6];
    [v17 setDynamicObjectsFromRawData:v7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_logMessage_withPayload___block_invoke_645;
    block[3] = &unk_279A5EA80;
    v28 = @"dynamicClientLogging";
    v29 = 1;
    if (logMessage_withPayload__defaultOnce_644 != -1)
    {
      dispatch_once(&logMessage_withPayload__defaultOnce_644, block);
    }

    v18 = logMessage_withPayload__objectForKey;

    if (v18 == 1)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v19 = objc_opt_class();
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __39__PLXPCService_logMessage_withPayload___block_invoke_2;
        v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v26[4] = v19;
        if (logMessage_withPayload__defaultOnce_646 != -1)
        {
          dispatch_once(&logMessage_withPayload__defaultOnce_646, v26);
        }

        if (logMessage_withPayload__classDebugEnabled_647 == 1)
        {
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"entry=%@", v17];
          v21 = MEMORY[0x277D3F178];
          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v23 = [v22 lastPathComponent];
          v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService logMessage:withPayload:]"];
          [v21 logMessage:v20 fromFile:v23 fromFunction:v24 fromLineNumber:429];

          v25 = PLLogCommon();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      [(PLOperator *)self logEntry:v17];
    }
  }
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 40) forKey:*(a1 + 32)];
  logMessage_withPayload__classDebugEnabled = result;
  return result;
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke_645(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] BOOLForKey:*(a1 + 32) ifNotSet:*(a1 + 40)];
  logMessage_withPayload__objectForKey = result;
  return result;
}

uint64_t __39__PLXPCService_logMessage_withPayload___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  logMessage_withPayload__classDebugEnabled_647 = result;
  return result;
}

- (signed)permissionForClientID:(signed __int16)a3 withKey:(id)a4 withType:(id)a5 withProcessName:(id)a6
{
  v8 = a3;
  v55 = *MEMORY[0x277D85DE8];
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
      v48 = v8;
      v49 = 2112;
      v50 = v10;
      v51 = 2112;
      v52 = v11;
      v53 = 2112;
      v54 = v12;
      _os_log_fault_impl(&dword_25EE51000, v16, OS_LOG_TYPE_FAULT, "Invalid client ID %d request for key : %@, type : %@, processName %@", buf, 0x26u);
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
      if (permissionForClientID_withKey_withType_withProcessName__defaultOnce != -1)
      {
        dispatch_once(&permissionForClientID_withKey_withType_withProcessName__defaultOnce, &block);
      }

      if (permissionForClientID_withKey_withType_withProcessName__classDebugEnabled == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    if (+[PLUtilities isPowerlogHelperd])
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
  permissionForClientID_withKey_withType_withProcessName__classDebugEnabled = result;
  return result;
}

- (void)resetPermissionsForClients
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (resetPermissionsForClients_defaultOnce != -1)
    {
      dispatch_once(&resetPermissionsForClients_defaultOnce, block);
    }

    if (resetPermissionsForClients_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v10 = [(PLXPCService *)self permissionCache];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_660;
  v19[3] = &unk_279A5E430;
  v19[4] = self;
  [v10 enumerateKeysAndObjectsUsingBlock:v19];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_670;
    v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v18[4] = v11;
    if (resetPermissionsForClients_defaultOnce_668 != -1)
    {
      dispatch_once(&resetPermissionsForClients_defaultOnce_668, v18);
    }

    if (resetPermissionsForClients_classDebugEnabled_669 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  resetPermissionsForClients_classDebugEnabled = result;
  return result;
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PLXPCService_resetPermissionsForClients__block_invoke_2;
  v5[3] = &unk_279A5C3A8;
  v5[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __42__PLXPCService_resetPermissionsForClients__block_invoke_2(uint64_t a1, void *a2)
{
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke_3(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_5_classDebugEnabled = result;
  return result;
}

uint64_t __42__PLXPCService_resetPermissionsForClients__block_invoke_670(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  resetPermissionsForClients_classDebugEnabled_669 = result;
  return result;
}

- (void)handlePeer:(id)a3 forEvent:(id)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x25F8D2C50]();
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v9 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v9;
    if (handlePeer_forEvent__defaultOnce != -1)
    {
      dispatch_once(&handlePeer_forEvent__defaultOnce, block);
    }

    if (handlePeer_forEvent__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  if (v8 == MEMORY[0x277D86480])
  {
    if (v7 == MEMORY[0x277D863F8])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_67;
      }

      v50 = objc_opt_class();
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_679;
      v98[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v98[4] = v50;
      if (handlePeer_forEvent__defaultOnce_677 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_677, v98);
      }

      if (handlePeer_forEvent__classDebugEnabled_678 != 1)
      {
        goto LABEL_67;
      }

      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INVALID", xpc_connection_get_pid(v6)];
      v51 = MEMORY[0x277D3F178];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v53 = [v52 lastPathComponent];
      v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v51 logMessage:v44 fromFile:v53 fromFunction:v54 fromLineNumber:502];

      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else if (v7 == MEMORY[0x277D863F0])
    {
      if (![MEMORY[0x277D3F180] debugEnabled])
      {
        goto LABEL_67;
      }

      v61 = objc_opt_class();
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_685;
      v97[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v97[4] = v61;
      if (handlePeer_forEvent__defaultOnce_683 != -1)
      {
        dispatch_once(&handlePeer_forEvent__defaultOnce_683, v97);
      }

      if (handlePeer_forEvent__classDebugEnabled_684 != 1)
      {
        goto LABEL_67;
      }

      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED", xpc_connection_get_pid(v6)];
      v62 = MEMORY[0x277D3F178];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
      v64 = [v63 lastPathComponent];
      v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
      [v62 logMessage:v44 fromFile:v64 fromFunction:v65 fromLineNumber:506];

      v49 = PLLogCommon();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }

    else
    {
      v41 = MEMORY[0x277D86420];
      v42 = [MEMORY[0x277D3F180] debugEnabled];
      if (v7 == v41)
      {
        if (!v42)
        {
          goto LABEL_67;
        }

        v66 = objc_opt_class();
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_691;
        v96[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v96[4] = v66;
        if (handlePeer_forEvent__defaultOnce_689 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_689, v96);
        }

        if (handlePeer_forEvent__classDebugEnabled_690 != 1)
        {
          goto LABEL_67;
        }

        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received XPC_ERROR_TERMINATION_IMMINENT", xpc_connection_get_pid(v6)];
        v67 = MEMORY[0x277D3F178];
        v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v69 = [v68 lastPathComponent];
        v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v67 logMessage:v44 fromFile:v69 fromFunction:v70 fromLineNumber:510];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }

      else
      {
        if (!v42)
        {
          goto LABEL_67;
        }

        v43 = objc_opt_class();
        v95[0] = MEMORY[0x277D85DD0];
        v95[1] = 3221225472;
        v95[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_697;
        v95[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v95[4] = v43;
        if (handlePeer_forEvent__defaultOnce_695 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_695, v95);
        }

        if (handlePeer_forEvent__classDebugEnabled_696 != 1)
        {
          goto LABEL_67;
        }

        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"peer(%d) received Unidentified error:%@", xpc_connection_get_pid(v6), v7];
        v45 = MEMORY[0x277D3F178];
        v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v47 = [v46 lastPathComponent];
        v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v45 logMessage:v44 fromFile:v47 fromFunction:v48 fromLineNumber:515];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

LABEL_67:
    xpc_connection_cancel(v6);
    goto LABEL_83;
  }

  if (v8 == MEMORY[0x277D86468])
  {
    v16 = _CFXPCCreateCFObjectFromXPCMessage();
    v17 = [v16 objectForKeyedSubscript:@"content"];
    if (!v16)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"no message"];
        v56 = MEMORY[0x277D3F178];
        v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v58 = [v57 lastPathComponent];
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
        [v56 logMessage:v55 fromFile:v58 fromFunction:v59 fromLineNumber:559];

        v60 = PLLogCommon();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }

      if (+[PLUtilities isPowerlogHelperd])
      {
        [(PLXPCService *)self setSatelliteProcessExitWithTime:10.0];
      }

      goto LABEL_82;
    }

    v18 = [v16 objectForKeyedSubscript:@"clientID"];
    v19 = [v18 shortValue];

    if (v19 == 110)
    {
      v71 = [v17 objectForKey:@"PLXPCBatchedMessage"];

      if (v71)
      {
        v29 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_720;
        v86[3] = &unk_279A5EAA8;
        v86[4] = self;
        v87 = v6;
        v88 = v7;
        [v29 enumerateKeysAndObjectsUsingBlock:v86];

LABEL_81:
        goto LABEL_82;
      }
    }

    else if (v19 == 51)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v20 = objc_opt_class();
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_706;
        v94[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v94[4] = v20;
        if (handlePeer_forEvent__defaultOnce_704 != -1)
        {
          dispatch_once(&handlePeer_forEvent__defaultOnce_704, v94);
        }

        if (handlePeer_forEvent__classDebugEnabled_705 == 1)
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
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }
        }
      }

      v27 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessage"];
      v28 = [v17 objectForKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];
      v84 = [v28 intValue];

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v29 = v27;
      v30 = [v29 countByEnumeratingWithState:&v90 objects:v100 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v91;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v91 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [(PLXPCService *)self handleSingleMessage:*(*(&v90 + 1) + 8 * i) fromPeer:v6 forEvent:v7];
          }

          v31 = [v29 countByEnumeratingWithState:&v90 objects:v100 count:16];
        }

        while (v31);
      }

      v34 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientLoggingDrops"];
      v35 = MEMORY[0x277D3F1A0];
      v36 = [(PLOperator *)self className];
      LODWORD(v35) = [v35 isEntryKeySetup:v34 forOperatorName:v36];

      if (v35)
      {
        v37 = v84 < 1;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        if ([v29 count])
        {
          v38 = [v29 objectAtIndexedSubscript:0];
          v39 = [v38 objectForKeyedSubscript:@"clientID"];
          v40 = [v39 shortValue];
        }

        else
        {
          v40 = 0;
        }

        v83 = v34;
        v72 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v34];
        v73 = [MEMORY[0x277CCABB0] numberWithInt:v84];
        [v72 setObject:v73 forKeyedSubscript:@"PLXPCBatchedMessageDropCounts"];

        v74 = [MEMORY[0x277CCABB0] numberWithShort:v40];
        [v72 setObject:v74 forKeyedSubscript:@"clientID"];

        [(PLOperator *)self logEntry:v72];
        if ([MEMORY[0x277D3F180] debugEnabled])
        {
          v75 = objc_opt_class();
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __36__PLXPCService_handlePeer_forEvent___block_invoke_716;
          v89[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v89[4] = v75;
          if (handlePeer_forEvent__defaultOnce_714 != -1)
          {
            dispatch_once(&handlePeer_forEvent__defaultOnce_714, v89);
          }

          if (handlePeer_forEvent__classDebugEnabled_715 == 1)
          {
            v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dropped messages %@", v72];
            v85 = MEMORY[0x277D3F178];
            v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v78 = [v77 lastPathComponent];
            v79 = v76;
            v80 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handlePeer:forEvent:]"];
            [v85 logMessage:v79 fromFile:v78 fromFunction:v80 fromLineNumber:544];

            v81 = PLLogCommon();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }
          }
        }

        v34 = v83;
      }

      goto LABEL_81;
    }

    [(PLXPCService *)self handleSingleMessage:v16 fromPeer:v6 forEvent:v7];
LABEL_82:
  }

LABEL_83:

  v82 = *MEMORY[0x277D85DE8];
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_679(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_678 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_685(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_684 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_691(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_690 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_697(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_696 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_706(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_705 = result;
  return result;
}

uint64_t __36__PLXPCService_handlePeer_forEvent___block_invoke_716(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeer_forEvent__classDebugEnabled_715 = result;
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
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"clientID"];
  v12 = [v11 shortValue];

  v13 = [v8 objectForKeyedSubscript:@"process-name"];
  v14 = [v8 objectForKeyedSubscript:@"event"];
  v113 = v14;
  if (+[PLUtilities isPowerlogHelperd])
  {
    if (v12 != 48)
    {
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = objc_opt_class();
        v120[0] = MEMORY[0x277D85DD0];
        v120[1] = 3221225472;
        v120[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke;
        v120[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v120[4] = v28;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce, v120);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled == 1)
        {
          v101 = v12;
          v109 = v10;
          v29 = v9;
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 581, v8];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:581];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v9 = v29;
          v10 = v109;
          v14 = v113;
          v12 = v101;
        }
      }

      v27 = 30.0;
      goto LABEL_20;
    }

    v15 = [v8 objectForKeyedSubscript:@"content"];
    v16 = [v15 objectForKeyedSubscript:@"battery_gauge_event"];
    v17 = [v16 intValue];

    v18 = [MEMORY[0x277D3F180] debugEnabled];
    if (v17 == 1)
    {
      v14 = v113;
      if (v18)
      {
        v19 = objc_opt_class();
        v119[0] = MEMORY[0x277D85DD0];
        v119[1] = 3221225472;
        v119[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733;
        v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v119[4] = v19;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_731 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_731, v119);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_732 == 1)
        {
          v108 = v10;
          v20 = v9;
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 587, v8];
          v22 = MEMORY[0x277D3F178];
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v24 = [v23 lastPathComponent];
          v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v22 logMessage:v21 fromFile:v24 fromFunction:v25 fromLineNumber:587];

          v26 = PLLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v9 = v20;
          v10 = v108;
          v14 = v113;
          v12 = 48;
        }
      }

      v27 = 100.0;
LABEL_20:
      [(PLXPCService *)self setSatelliteProcessExitWithTime:v27];
      goto LABEL_21;
    }

    v14 = v113;
    if (v18)
    {
      v69 = objc_opt_class();
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736;
      v118[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v118[4] = v69;
      if (handleSingleMessage_fromPeer_forEvent__defaultOnce_734 != -1)
      {
        dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_734, v118);
      }

      if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_735 == 1)
      {
        v110 = v10;
        v70 = v9;
        v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"!!! %s/%d: message=%@", "-[PLXPCService handleSingleMessage:fromPeer:forEvent:]", 592, v8];
        v72 = MEMORY[0x277D3F178];
        v73 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
        v74 = [v73 lastPathComponent];
        v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
        [v72 logMessage:v71 fromFile:v74 fromFunction:v75 fromLineNumber:592];

        v76 = PLLogCommon();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v9 = v70;
        v10 = v110;
        v14 = v113;
        v12 = 48;
      }
    }
  }

LABEL_21:
  v36 = [v8 objectForKey:@"shouldLog"];

  if (v36)
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v37 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v37;
      if (handleSingleMessage_fromPeer_forEvent__defaultOnce_740 != -1)
      {
        dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_740, block);
      }

      if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_741 == 1)
      {
        v102 = v12;
        v105 = v13;
        v38 = v10;
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }

        v9 = v39;
        v10 = v38;
        v13 = v105;
        v14 = v113;
        v12 = v102;
      }
    }

    [(PLXPCService *)self handlePeerShouldLogEvent:v10 withMessage:v8 withClientID:v12 withProcessName:v13 withKey:v14];
    v46 = @"shouldLog";
  }

  else
  {
    v47 = [v8 objectForKeyedSubscript:@"content"];
    v48 = [v8 objectForKey:@"Query"];

    if (v48)
    {
      if (![PLUtilities allowQueryFromPeer:v9])
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
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_746 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_746, v116);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_747 == 1)
        {
          v98 = v47;
          v103 = v12;
          v106 = v13;
          v50 = v10;
          v51 = v9;
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response request(%d): %@", xpc_connection_get_pid(v9), v8];
          v53 = MEMORY[0x277D3F178];
          v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v55 = [v54 lastPathComponent];
          v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v53 logMessage:v52 fromFile:v55 fromFunction:v56 fromLineNumber:609];

          v57 = PLLogCommon();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v9 = v51;
          v10 = v50;
          v13 = v106;
          v14 = v113;
          v12 = v103;
          v47 = v98;
        }
      }

      [(PLXPCService *)self handlePeerResponderEvent:v10 withMessage:v8 withClientID:v12 withProcessName:v13 withKey:v14 withPayload:v47];
      v46 = @"Query";
    }

    else
    {
      v58 = [v8 objectForKey:@"Post"];

      v59 = [MEMORY[0x277D3F180] debugEnabled];
      if (v58)
      {
        if (v59)
        {
          v60 = objc_opt_class();
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754;
          v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v115[4] = v60;
          if (handleSingleMessage_fromPeer_forEvent__defaultOnce_752 != -1)
          {
            dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_752, v115);
          }

          if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_753 == 1)
          {
            v99 = v47;
            v104 = v12;
            v107 = v13;
            v61 = v10;
            v62 = v9;
            v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Data posted(%d): %@", xpc_connection_get_pid(v9), v8];
            v64 = MEMORY[0x277D3F178];
            v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
            v66 = [v65 lastPathComponent];
            v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
            [v64 logMessage:v63 fromFile:v66 fromFunction:v67 fromLineNumber:614];

            v68 = PLLogCommon();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
            }

            v9 = v62;
            v10 = v61;
            v13 = v107;
            v14 = v113;
            v12 = v104;
            v47 = v99;
          }
        }

        [(PLXPCService *)self handlePeerListenerEvent:v10 withMessage:v8 withClientID:v12 withProcessName:v13 withKey:v14 withPayload:v47];
        v46 = @"Post";
      }

      else
      {
        if (!v59)
        {
          goto LABEL_63;
        }

        v77 = objc_opt_class();
        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760;
        v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v114[4] = v77;
        if (handleSingleMessage_fromPeer_forEvent__defaultOnce_758 != -1)
        {
          dispatch_once(&handleSingleMessage_fromPeer_forEvent__defaultOnce_758, v114);
        }

        if (handleSingleMessage_fromPeer_forEvent__classDebugEnabled_759 == 1)
        {
          v100 = v47;
          v78 = v13;
          v111 = v10;
          v79 = v9;
          v80 = [MEMORY[0x277CCACA8] stringWithFormat:@"Message with no direction: %@", v8];
          v81 = MEMORY[0x277D3F178];
          v82 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLXPCService.m"];
          v83 = [v82 lastPathComponent];
          v84 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLXPCService handleSingleMessage:fromPeer:forEvent:]"];
          [v81 logMessage:v80 fromFile:v83 fromFunction:v84 fromLineNumber:618];

          v85 = PLLogCommon();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
          {
            __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
          }

          v46 = 0;
          v9 = v79;
          v10 = v111;
          v14 = v113;
          v13 = v78;
          v47 = v100;
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
    v112 = v10;
    v86 = v13;
    v87 = v9;
    v47 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"XPCEvent"];
    v88 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v47];
    v89 = [v8 objectForKeyedSubscript:@"event"];
    [v88 setObject:v89 forKeyedSubscript:@"event"];

    v90 = [v8 objectForKeyedSubscript:@"clientID"];
    [v88 setObject:v90 forKeyedSubscript:@"clientID"];

    v91 = [v8 objectForKeyedSubscript:@"process-name"];
    [v88 setObject:v91 forKeyedSubscript:@"process-name"];

    if (v46)
    {
      [v88 setObject:v46 forKeyedSubscript:@"type"];
    }

    [v88 setObject:&unk_287146FC0 forKeyedSubscript:@"count"];
    [(PLOperator *)self logEntry:v88];
    v92 = MEMORY[0x277CCACA8];
    v93 = [v88 objectForKeyedSubscript:@"type"];
    v94 = [v88 objectForKeyedSubscript:@"clientID"];
    v95 = [v88 objectForKeyedSubscript:@"process-name"];
    v96 = [v88 objectForKeyedSubscript:@"event"];
    v97 = [v92 stringWithFormat:@"com.apple.power.xpc.%@.%@.%@.%@", v93, v94, v95, v96];

    MEMORY[0x25F8D18D0](v97, 1);
    v9 = v87;
    v13 = v86;
    v10 = v112;
    v14 = v113;
    goto LABEL_69;
  }

LABEL_70:
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_733(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_732 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_736(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_735 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_742(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_741 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_748(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_747 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_754(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_753 = result;
  return result;
}

uint64_t __54__PLXPCService_handleSingleMessage_fromPeer_forEvent___block_invoke_760(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handleSingleMessage_fromPeer_forEvent__classDebugEnabled_759 = result;
  return result;
}

uint64_t __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled = result;
  return result;
}

uint64_t __90__PLXPCService_handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey___block_invoke_774(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerShouldLogEvent_withMessage_withClientID_withProcessName_withKey__classDebugEnabled_773 = result;
  return result;
}

- (void)handlePeerResponderEvent:(id)a3 withMessage:(id)a4 withClientID:(signed __int16)a5 withProcessName:(id)a6 withKey:(id)a7 withPayload:(id)a8
{
  v76 = a5;
  v135 = *MEMORY[0x277D85DE8];
  v74 = a3;
  v80 = a4;
  v13 = a6;
  v78 = a7;
  v14 = a8;
  if (+[PLUtilities isPowerlogHelperd])
  {
    v15 = [(PLXPCService *)self satelliteProcessSemaphore];
    [v15 signalInterestByObject:v80];
  }

  v127 = 0;
  v128 = &v127;
  v129 = 0x3032000000;
  v130 = __Block_byref_object_copy__15;
  v131 = __Block_byref_object_dispose__15;
  v132 = 0;
  if ([(PLOperator *)self isDebugEnabled])
  {
    v16 = [(PLOperator *)PLXPCService entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"ResponderEvent"];
    v17 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v16];
    v18 = v128[5];
    v128[5] = v17;

    v19 = [v80 objectForKeyedSubscript:@"event"];
    [v128[5] setObject:v19 forKeyedSubscript:@"event"];

    v20 = [v80 objectForKeyedSubscript:@"clientID"];
    [v128[5] setObject:v20 forKeyedSubscript:@"clientID"];

    v21 = [v80 objectForKeyedSubscript:@"process-name"];
    [v128[5] setObject:v21 forKeyedSubscript:@"process-name"];

    if (!+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") && !+[PLUtilities isPerfPowerMetricd])
    {
      [(PLOperator *)self logEntry:v128[5]];
    }
  }

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v22 = objc_opt_class();
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke;
    v126[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v126[4] = v22;
    if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce != -1)
    {
      dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce, v126);
    }

    if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  v124[0] = 0;
  v124[1] = v124;
  v124[2] = 0x3032000000;
  v124[3] = __Block_byref_object_copy__15;
  v124[4] = __Block_byref_object_dispose__15;
  v75 = v74;
  v125 = v75;
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = v76;
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__15;
  v118 = __Block_byref_object_dispose__15;
  v73 = v13;
  v119 = v73;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__15;
  v112 = __Block_byref_object_dispose__15;
  v77 = v78;
  v113 = v77;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__15;
  v106 = __Block_byref_object_dispose__15;
  v79 = v14;
  v107 = v79;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__15;
  v100 = __Block_byref_object_dispose__15;
  v29 = [(PLXPCService *)self registeredResponders];
  v101 = [(PLXPCService *)self registeredOperatorFromDictionary:v29 forMessage:v80];

  v30 = 0;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = __Block_byref_object_copy__15;
  v94[4] = __Block_byref_object_dispose__15;
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
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_781 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_781, block);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_782 == 1)
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
          v134 = v37;
          _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_840 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_840, v82);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_841 == 1)
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
          v134 = v44;
          _os_log_debug_impl(&dword_25EE51000, v49, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
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
      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_793 != -1)
      {
        dispatch_once(&handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__defaultOnce_793, v92);
      }

      if (handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_794 == 1)
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
          __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
        }
      }
    }

    v63 = dispatch_get_global_queue(0, 0);
    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_799;
    v91[3] = &unk_279A5C3D0;
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
  v83[3] = &unk_279A5EAD0;
  v86 = &v120;
  v87 = &v114;
  v88 = &v108;
  v89 = &v102;
  v85 = &v96;
  v83[4] = self;
  v90 = v124;
  v84 = v80;
  dispatch_async(v68, v83);

LABEL_51:
  if (+[PLUtilities isPowerlogHelperd]&& !v97[5])
  {
    v69 = PLLogCommon();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      [PLXPCService handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:];
    }

    v70 = [(PLXPCService *)self satelliteProcessSemaphore];
    [v70 signalDoneByObject:v80];
  }

  v71 = v128[5];
  if (v71)
  {
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_846;
    v81[3] = &unk_279A5C0C8;
    v81[4] = &v127;
    [(PLOperator *)self updateEntry:v71 withBlock:v81];
  }

  _Block_object_dispose(v94, 8);

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v114, 8);

  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(v124, 8);

  _Block_object_dispose(&v127, 8);
  v72 = *MEMORY[0x277D85DE8];
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_783(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_782 = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_795(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_794 = result;
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce, v48);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v51 count:16];
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
            if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_819 != -1)
            {
              dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_819, block);
            }

            if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_820 == 1)
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
                v50 = v26;
                _os_log_debug_impl(&dword_25EE51000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v5 = 0x277D3F000;
              v15 = v25;
              a1 = v40;
            }
          }

          ++v18;
        }

        while (v17 != v18);
        v17 = [v15 countByEnumeratingWithState:&v44 objects:v51 count:16];
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_826 != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_defaultOnce_826, v42);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_827 == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
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
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_821(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_820 = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_828(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_6_classDebugEnabled_827 = result;
  return result;
}

void __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_835(uint64_t a1)
{
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
    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_defaultOnce != -1)
    {
      dispatch_once(&kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_defaultOnce, block);
    }

    if (kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_classDebugEnabled == 1)
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
        __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
      }
    }
  }

  [*(a1 + 32) respondToEvent:*(*(*(a1 + 88) + 8) + 40) withResponse:v2];
  if (+[PLUtilities isPowerlogHelperd])
  {
    v11 = [*(a1 + 32) satelliteProcessSemaphore];
    [v11 signalDoneByObject:*(a1 + 40)];
  }
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_2_836(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLXPCServiceEventPointNameClientLoggingDrops_block_invoke_7_classDebugEnabled = result;
  return result;
}

uint64_t __102__PLXPCService_handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_842(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerResponderEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_841 = result;
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
  handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled = result;
  return result;
}

uint64_t __101__PLXPCService_handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload___block_invoke_852(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  handlePeerListenerEvent_withMessage_withClientID_withProcessName_withKey_withPayload__classDebugEnabled_851 = result;
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
  if (+[PLUtilities isPowerlogHelperd])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__PLXPCService_setSatelliteProcessExit__block_invoke;
    block[3] = &unk_279A5BDC0;
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
  block[3] = &unk_279A5BDC0;
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
    v3[3] = &unk_279A5BDC0;
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
      _os_log_impl(&dword_25EE51000, v4, OS_LOG_TYPE_DEFAULT, "Stopping powerlogHelperd", v5, 2u);
    }

    [PLUtilities exitWithReason:6];
  }
}

- (void)handlePeerResponderEvent:withMessage:withClientID:withProcessName:withKey:withPayload:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "powerlogHelperd received unhandled query: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end