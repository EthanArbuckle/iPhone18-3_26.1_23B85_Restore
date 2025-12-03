@interface NoBackhaulHandler
+ (id)configureClass:(id)class;
+ (id)internalStateDictionary;
+ (id)sharedInstance;
+ (int64_t)_nwInterfaceTypeFromAPSDQualifier:(unint64_t)qualifier;
- (BOOL)_nudgeState;
- (BOOL)activeEntryAction:(id)action;
- (BOOL)activeExitAction:(id)action;
- (BOOL)brokenEntryAction:(id)action;
- (BOOL)brokenExitAction:(id)action;
- (BOOL)dampeningCheck;
- (BOOL)idleEntryAction:(id)action;
- (BOOL)idleExitAction:(id)action;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)positiveEntryAction:(id)action;
- (BOOL)positiveExitAction:(id)action;
- (BOOL)processSymptom:(id)symptom;
- (BOOL)subscribeCarKitNotifications;
- (NoBackhaulHandler)init;
- (id)initTestInstanceWithCellRelay:(id)relay wifiRelay:(id)wifiRelay rnfRelay:(id)rnfRelay powerRelay:(id)powerRelay outrankRelay:(id)outrankRelay;
- (id)internalStateDictionary;
- (int)read:(id)read returnedValues:(id)values;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)_assessProgressFromBaseline:(nstat_progress_indicators *)baseline toMetrics:(nstat_progress_indicators *)metrics;
- (void)_bringStateToIdle;
- (void)_captureProgressFor:(id)for since:(id)since interval:(unint64_t)interval capWindowTo:(unint64_t)to iteration:(unint64_t)iteration renewTest:(id)test;
- (void)_completeInitialization;
- (void)_dumpState;
- (void)_fetchDampeningHistory;
- (void)_idempotentInitializationFromIdle;
- (void)_idempotentInitializationFromIdleWithCellRelay:(id)relay wifiRelay:(id)wifiRelay rnfRelay:(id)rnfRelay powerRelay:(id)powerRelay outrankRelay:(id)outrankRelay;
- (void)_performConnectivityTestToDefaultGateways:(id)gateways;
- (void)_postUpwards:(unint64_t)upwards;
- (void)_startMaintenanceTimerFor:(id)for delay:(unint64_t)delay interval:(unint64_t)interval capWindowTo:(unint64_t)to;
- (void)_stopMaintenanceTimer;
- (void)_updateSSID:(id)d;
- (void)addPendingEventDescription:(id)description;
- (void)apsdFailing:(BOOL)failing onInterface:(int64_t)interface;
- (void)changedSSIDto:(id)dto;
- (void)clientFeedback:(BOOL)feedback;
- (void)configureBrokenBackhaulPolicy;
- (void)dampeningReset;
- (void)dampeningSetPrecedent;
- (void)dealloc;
- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic;
- (void)drainPendingEventDescriptions;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)handleFlowStuckNotification:(id)notification;
- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error;
- (void)noteSiriConnectionTimeout;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)reportAutoBugCaptureCaseWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context events:(id)events;
- (void)resumedDefRouteProgress;
- (void)startPollingKernelForFlowStatistics;
- (void)willPollFlows;
@end

@implementation NoBackhaulHandler

void __25__NoBackhaulHandler_init__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
  v5 = [v4 isEqualToString:@"com.apple.InCallService"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
    v7 = [v6 BOOLValue];

    v8 = [*(a1 + 32) queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__NoBackhaulHandler_init__block_invoke_7;
    v9[3] = &unk_27898A3A0;
    v10 = *(a1 + 32);
    v11 = v7;
    dispatch_async(v8, v9);
  }
}

- (void)configureBrokenBackhaulPolicy
{
  self->_verifyDefaultGateway = 1;
  self->_ignoreBaseband = 0;
  self->_observeApsdFailure = 0;
  self->_observeSiriTimeout = 0;
  self->_pollFlowsPeriodically = 0;
  self->_observeWiFiRxSignalFullBars = 1;
  self->_observeWiFiRxSignalThresholded = 0;
  self->_observeForegroundActivity = 1;
  self->_observeDefaultRouteSignal = 1;
}

- (NoBackhaulHandler)init
{
  v48.receiver = self;
  v48.super_class = NoBackhaulHandler;
  v2 = [(ExpertSystemHandlerCore *)&v48 initWithQueue:MEMORY[0x277D85CD0]];
  v3 = v2;
  if (v2)
  {
    [(NoBackhaulHandler *)v2 configureBrokenBackhaulPolicy];
    if (v3->_ignoreBaseband || (+[SystemProperties sharedInstance](SystemProperties, "sharedInstance"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 basebandCapability], v4, v5))
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __25__NoBackhaulHandler_init__block_invoke;
      v46[3] = &unk_27898A690;
      v7 = v3;
      v47 = v7;
      v8 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v46];
      relayReadyObserver = v7->_relayReadyObserver;
      v7->_relayReadyObserver = v8;

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __25__NoBackhaulHandler_init__block_invoke_3;
      v44[3] = &unk_27898A690;
      v10 = v7;
      v45 = v10;
      v11 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v44];
      wifiEpochObserver = v10->_wifiEpochObserver;
      v10->_wifiEpochObserver = v11;

      v10->_administrativeState = 2;
      v10->networkBlacklistTime = 10;
      v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
      multiplier = v10->_multiplier;
      v10->_multiplier = v13;

      if (v10->_observeForegroundActivity)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __25__NoBackhaulHandler_init__block_invoke_4;
        v42[3] = &unk_27898A690;
        v15 = v10;
        v43 = v15;
        v16 = [defaultCenter addObserverForName:@"kAppStateNotificationForegroundActivity" object:0 queue:0 usingBlock:v42];
        foregroundObserver = v15->_foregroundObserver;
        v15->_foregroundObserver = v16;

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __25__NoBackhaulHandler_init__block_invoke_6;
        v40[3] = &unk_27898A690;
        v18 = v15;
        v41 = v18;
        v19 = [defaultCenter addObserverForName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:0 queue:0 usingBlock:v40];
        foregroundAppObserver = v18->_foregroundAppObserver;
        v18->_foregroundAppObserver = v19;
      }

      if (v10->_observeSiriTimeout)
      {
        out_token = 0;
        queue = [(ExpertSystemHandlerCore *)v10 queue];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __25__NoBackhaulHandler_init__block_invoke_8;
        handler[3] = &unk_27898B048;
        v38 = v10;
        notify_register_dispatch("com.apple.siri.connection.timeout", &out_token, queue, handler);

        v22 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "started listening to Siri timeout notification", buf, 2u);
        }
      }

      if (v10->_verifyDefaultGateway)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        activeICMPProbes = v10->_activeICMPProbes;
        v10->_activeICMPProbes = dictionary;

        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        icmpProbeStates = v10->_icmpProbeStates;
        v10->_icmpProbeStates = dictionary2;

        v10->_pingCount = 5;
        v10->_pingSuccessCount = 3;
        v10->_interPingInterval = 1.0;
        v10->_pingBurstCount = 1;
        v10->_interBurstInterval = 0.0;
        v10->_pingTimeout = 10.0;
        v10->_pingPayloadSize = 300;
      }

      v10->_idleProgressTimeout = 10.0;
      v10->_activeProgressTimeout = 2.0;
      v10->_problemRatioDenominatorExponent = 1.0;
    }

    signal(29, 1);
    queue2 = [(ExpertSystemHandlerCore *)v3 queue];
    v28 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, queue2);
    v29 = init_siginfo_2;
    init_siginfo_2 = v28;

    v30 = init_siginfo_2;
    if (init_siginfo_2)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __25__NoBackhaulHandler_init__block_invoke_97;
      v34[3] = &unk_27898A0C8;
      v35 = v3;
      dispatch_source_set_event_handler(v30, v34);
      dispatch_resume(init_siginfo_2);
    }

    queue3 = [(ExpertSystemHandlerCore *)v3 queue];
    v33 = v3;
    os_state_add_handler();
  }

  return v3;
}

void __25__NoBackhaulHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 216)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = 0;

  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__NoBackhaulHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

void __25__NoBackhaulHandler_init__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = [a2 userInfo];
  v3 = [v5 objectForKeyedSubscript:@"State"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [*(a1 + 32) _updateSSID:v5];
  }
}

void __25__NoBackhaulHandler_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__NoBackhaulHandler_init__block_invoke_5;
  v7[3] = &unk_27898A3A0;
  v8 = *(a1 + 32);
  v9 = v5;
  dispatch_async(v6, v7);
}

- (id)initTestInstanceWithCellRelay:(id)relay wifiRelay:(id)wifiRelay rnfRelay:(id)rnfRelay powerRelay:(id)powerRelay outrankRelay:(id)outrankRelay
{
  relayCopy = relay;
  wifiRelayCopy = wifiRelay;
  rnfRelayCopy = rnfRelay;
  powerRelayCopy = powerRelay;
  outrankRelayCopy = outrankRelay;
  v28.receiver = self;
  v28.super_class = NoBackhaulHandler;
  v17 = [(ExpertSystemHandlerCore *)&v28 initWithQueue:MEMORY[0x277D85CD0]];
  v18 = v17;
  if (v17)
  {
    [(NoBackhaulHandler *)v17 configureBrokenBackhaulPolicy];
    v18->_administrativeState = 2;
    v18->networkBlacklistTime = 10;
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
    multiplier = v18->_multiplier;
    v18->_multiplier = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    history = v18->_history;
    v18->_history = v21;

    if (!v18->_refreshScheduler)
    {
      v23 = [FlowRefreshScheduler alloc];
      v24 = SFGetStandardQueue(1);
      v25 = [(FlowRefreshScheduler *)v23 initWithQueue:v24];
      refreshScheduler = v18->_refreshScheduler;
      v18->_refreshScheduler = v25;
    }

    [(NoBackhaulHandler *)v18 _idempotentInitializationFromIdleWithCellRelay:relayCopy wifiRelay:wifiRelayCopy rnfRelay:rnfRelayCopy powerRelay:powerRelayCopy outrankRelay:outrankRelayCopy];
  }

  return v18;
}

- (void)_completeInitialization
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = [NetworkStateRelay getStateRelayFor:3];
  v5 = +[CellFallbackHandler sharedInstance];
  v6 = +[PowerStateRelay defaultRelay];
  v7 = +[CellOutrankHandler sharedInstance];
  [(NoBackhaulHandler *)self _idempotentInitializationFromIdleWithCellRelay:v3 wifiRelay:v4 rnfRelay:v5 powerRelay:v6 outrankRelay:v7];
  [(NoBackhaulHandler *)self _fetchDampeningHistory];
  v8 = +[SystemSettingsRelay defaultRelay];
  [v8 addObserver:self forKeyPath:@"noBackhaulEnabled" options:7 context:0];

  self->_observingSystemSettingsRelay = 1;
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v10 = shared_prefs_store;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke;
    v22[3] = &unk_27898A0A0;
    v22[4] = self;
    prefs_add_client(shared_prefs_store, "dampen_no_backhaul_secs", v22);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_112;
    v21[3] = &unk_27898A0A0;
    v21[4] = self;
    prefs_add_client(v10, "no_backhaul_verify_default_gateway", v21);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_114;
    v20[3] = &unk_27898A0A0;
    v20[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_count", v20);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_116;
    v19[3] = &unk_27898A0A0;
    v19[4] = self;
    prefs_add_client(v10, "no_backhaul_gateway_ping_success_count", v19);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_118;
    v18[3] = &unk_27898A0A0;
    v18[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_interval", v18);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_120;
    v17[3] = &unk_27898A0A0;
    v17[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_burst_count", v17);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_122;
    v16[3] = &unk_27898A0A0;
    v16[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_burst_interval", v16);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_124;
    v15[3] = &unk_27898A0A0;
    v15[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_timeout", v15);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_126;
    v14[3] = &unk_27898A0A0;
    v14[4] = self;
    prefs_add_client(v10, "no_backhaul_ping_payload_size", v14);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_128;
    v13[3] = &unk_27898A0A0;
    v13[4] = self;
    prefs_add_client(v10, "no_backhaul_tcp_probe_evaluation_window_idle", v13);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_130;
    v12[3] = &unk_27898A0A0;
    v12[4] = self;
    prefs_add_client(v10, "no_backhaul_tcp_probe_evaluation_window_active", v12);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__NoBackhaulHandler__completeInitialization__block_invoke_132;
    v11[3] = &unk_27898A0A0;
    v11[4] = self;
    prefs_add_client(v10, "no_backhaul_problem_ratio_denominator_exponent", v11);
  }
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    v13 = *(a1 + 32);
    if (value < 0)
    {
      *(v13 + 224) = 10;
      v15 = bbhLogHandle;
      if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 10;
      v7 = "got a negative backhaul blacklist period (%lld). Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 224) = value;
      v14 = bbhLogHandle;
      if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "set to new backhaul blacklist period (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 224) = 10;
  v6 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = 10;
    v7 = "got a nil backhaul blacklist period. Setting to default value (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_112(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 372);
      v12 = 67109376;
      v13 = v10;
      v14 = 1024;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_verify_default_gateway behavior (was/is): %d/%d", &v12, 0xEu);
    }

    *(*(a1 + 32) + 372) = value;
  }

  else
  {
    *(*(a1 + 32) + 372) = 1;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 372);
      v12 = 67109120;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_verify_default_gateway to a default behavior: %d", &v12, 8u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_114(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 280);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_count (was/is): %ld/%lld", &v12, 0x16u);
    }

    *(*(a1 + 32) + 280) = value;
  }

  else
  {
    *(*(a1 + 32) + 280) = 5;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 280);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_count to a default value: %ld", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_116(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 288);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_gateway_ping_success_count (was/is): %ld/%lld", &v12, 0x16u);
    }

    *(*(a1 + 32) + 288) = value;
  }

  else
  {
    *(*(a1 + 32) + 288) = 3;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 288);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_gateway_ping_success_count to a default value: %ld", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_118(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 296);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_interval (was/is): %.4f/%.4f", &v12, 0x16u);
    }

    *(*(a1 + 32) + 296) = value;
  }

  else
  {
    *(*(a1 + 32) + 296) = 0x3FF0000000000000;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 296);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_interval to a default value: %.4f", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_120(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 304);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_burst_count (was/is): %ld/%lld", &v12, 0x16u);
    }

    *(*(a1 + 32) + 304) = value;
  }

  else
  {
    *(*(a1 + 32) + 304) = 1;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 304);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_burst_count to a default value: %ld", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_122(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 312);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_burst_interval (was/is): %.4f/%.4f", &v12, 0x16u);
    }

    *(*(a1 + 32) + 312) = value;
  }

  else
  {
    *(*(a1 + 32) + 312) = 0;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 312);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_burst_interval to a default value: %.4f", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_124(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 320);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_timeout (was/is): %.4f/%.4f", &v12, 0x16u);
    }

    *(*(a1 + 32) + 320) = value;
  }

  else
  {
    *(*(a1 + 32) + 320) = 0x4024000000000000;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 320);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_timeout to a default value: %.4f", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_126(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_uint64_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 328);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_ping_payload_size (was/is): %lu/%llu", &v12, 0x16u);
    }

    *(*(a1 + 32) + 328) = value;
  }

  else
  {
    *(*(a1 + 32) + 328) = 300;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 328);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_ping_payload_size to a default value: %lu", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_128(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 336);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_tcp_probe_evaluation_window_idle (was/is): %.4f/%.4f", &v12, 0x16u);
    }

    *(*(a1 + 32) + 336) = value;
  }

  else
  {
    *(*(a1 + 32) + 336) = 0x4024000000000000;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 336);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_tcp_probe_evaluation_window_idle to a default value: %.4f", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_130(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v9 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 344);
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = value;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_tcp_probe_evaluation_window_active (was/is): %.4f/%.4f", &v12, 0x16u);
    }

    *(*(a1 + 32) + 344) = value;
  }

  else
  {
    *(*(a1 + 32) + 344) = 0x4000000000000000;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 344);
      v12 = 134217984;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "re-setting no_backhaul_tcp_probe_evaluation_window_active to a default value: %.4f", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler__completeInitialization__block_invoke_132(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86470])
  {
    value = xpc_double_get_value(v5);
    v12 = bbhLogHandle;
    v13 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
    if (value <= 0.0 || value > 1.0)
    {
      if (!v13)
      {
        goto LABEL_16;
      }

      v15 = *(*(a1 + 32) + 352);
      v18 = 134218752;
      v19 = value;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = 0;
      v24 = 2048;
      v25 = 0x3FF0000000000000;
      v8 = "invalid value '%.2f', keeping current %.2f, allowed values for no_backhaul_problem_ratio_denominator_exponent are between (%.1f, %.1f]";
      v9 = v12;
      v10 = 42;
      goto LABEL_5;
    }

    if (v13)
    {
      v16 = *(*(a1 + 32) + 352);
      v18 = 134218240;
      v19 = v16;
      v20 = 2048;
      v21 = value;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "set to a new value for no_backhaul_problem_ratio_denominator_exponent (was/is): %.2f/%.2f", &v18, 0x16u);
    }

    *(*(a1 + 32) + 352) = value;
  }

  else
  {
    *(*(a1 + 32) + 352) = 1065353216;
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 352);
      v18 = 134217984;
      v19 = v7;
      v8 = "re-setting no_backhaul_problem_ratio_denominator_exponent to a default value: %.4f";
      v9 = v6;
      v10 = 12;
LABEL_5:
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, v8, &v18, v10);
    }
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_idempotentInitializationFromIdleWithCellRelay:(id)relay wifiRelay:(id)wifiRelay rnfRelay:(id)rnfRelay powerRelay:(id)powerRelay outrankRelay:(id)outrankRelay
{
  relayCopy = relay;
  wifiRelayCopy = wifiRelay;
  rnfRelayCopy = rnfRelay;
  powerRelayCopy = powerRelay;
  outrankRelayCopy = outrankRelay;
  cellRelay = self->_cellRelay;
  self->_cellRelay = relayCopy;
  v18 = relayCopy;

  wifiRelay = self->_wifiRelay;
  self->_wifiRelay = wifiRelayCopy;
  v20 = wifiRelayCopy;

  rnfRelay = self->_rnfRelay;
  self->_rnfRelay = rnfRelayCopy;
  v22 = rnfRelayCopy;

  powerRelay = self->_powerRelay;
  self->_powerRelay = powerRelayCopy;
  v24 = powerRelayCopy;

  outrankRelay = self->_outrankRelay;
  self->_outrankRelay = outrankRelayCopy;

  [(NoBackhaulHandler *)self _idempotentInitializationFromIdle];
}

- (void)_idempotentInitializationFromIdle
{
  v83[1] = *MEMORY[0x277D85DE8];
  self->_activationIdentifier = 0;
  if (self->_cellRelay && self->_wifiRelay && self->_rnfRelay && self->_powerRelay && self->_outrankRelay)
  {
    [(NoBackhaulHandler *)self setSystemForeground:+[AppStateMonitor hasAnyForegroundApp]];
    subscribeCarKitNotifications = [(NoBackhaulHandler *)self subscribeCarKitNotifications];
    v4 = bbhLogHandle;
    if (subscribeCarKitNotifications)
    {
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "successfully subscribed to CarKit DND notifications";
        v6 = v4;
        v7 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
        _os_log_impl(&dword_23255B000, v6, v7, v5, buf, 2u);
      }
    }

    else if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v5 = "failed to subscribe to CarKit DND notifications";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }

    v82 = @"active";
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO)"];
    v83[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:&v82 count:1];
    v80 = @"active";
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO) OR (primary == NO) OR (rxSignalFullBars == NO) OR ((dnsOut == NO) AND (tcpProgressHintsScore <= 10))"];
    v81 = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    val = [NoBackhaulHandlerState createStateWithLabel:@"idle" rank:0 entryCellPreds:v15 entryWiFiPreds:v17];

    [val setNoPreconditions:0];
    objc_initWeak(buf, val);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke;
    v57[3] = &unk_27898BDA0;
    objc_copyWeak(&v58, buf);
    v57[4] = self;
    [val setEntryAction:v57];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_2;
    v55[3] = &unk_27898BDA0;
    objc_copyWeak(&v56, buf);
    v55[4] = self;
    [val setExitAction:v55];
    v78[0] = @"idle";
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES)"];
    v78[1] = @"positive";
    v79[0] = v18;
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO)"];
    v79[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
    v76[0] = @"idle";
    v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES) AND (primary == YES) AND (rxSignalFullBars == YES) AND ((dnsOut == YES) OR (tcpProgressHintsScore > 10))"];
    v76[1] = @"positive";
    v77[0] = v21;
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO) OR (primary == NO)"];
    v77[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
    v38 = [NoBackhaulHandlerState createStateWithLabel:@"active" rank:10 entryCellPreds:v20 entryWiFiPreds:v23];

    [v38 setNoPreconditions:0];
    objc_initWeak(&location, v38);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_3;
    v52[3] = &unk_27898BDA0;
    objc_copyWeak(&v53, &location);
    v52[4] = self;
    [v38 setEntryAction:v52];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_4;
    v50[3] = &unk_27898BDA0;
    objc_copyWeak(&v51, &location);
    v50[4] = self;
    [v38 setExitAction:v50];
    v74[0] = @"active";
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES)"];
    v74[1] = @"broken";
    v75[0] = v24;
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO)"];
    v75[1] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v72[0] = @"active";
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES) AND (primary == YES) AND (rxSignalFullBars == YES) AND ((internetDnsOut == YES) OR (tcpProgressHintsScore > 50))"];
    v73[0] = v27;
    v72[1] = @"broken";
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO)"];
    v73[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];
    v30 = [NoBackhaulHandlerState createStateWithLabel:@"positive" rank:50 entryCellPreds:v26 entryWiFiPreds:v29];

    [v30 setNoPreconditions:0];
    objc_initWeak(&from, v30);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_5;
    v47[3] = &unk_27898BDA0;
    objc_copyWeak(&v48, &from);
    v47[4] = self;
    [v30 setEntryAction:v47];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_6;
    v45[3] = &unk_27898BDA0;
    objc_copyWeak(&v46, &from);
    v45[4] = self;
    [v30 setExitAction:v45];
    v70 = @"positive";
    v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"FALSEPREDICATE"];
    v71 = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v68 = @"positive";
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"FALSEPREDICATE"];
    v69 = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v35 = [NoBackhaulHandlerState createStateWithLabel:@"broken" rank:100 entryCellPreds:v32 entryWiFiPreds:v34];

    [v35 setNoPreconditions:1];
    objc_initWeak(&v44, v35);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_7;
    v42[3] = &unk_27898BDA0;
    objc_copyWeak(&v43, &v44);
    v42[4] = self;
    [v35 setEntryAction:v42];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_8;
    v40[3] = &unk_27898BDA0;
    objc_copyWeak(&v41, &v44);
    v40[4] = self;
    [v35 setExitAction:v40];
    v67[0] = val;
    v67[1] = v38;
    v67[2] = v30;
    v67[3] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    states = self->_states;
    self->_states = v36;

    [(NoBackhaulHandler *)self _bringStateToIdle];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v44);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v51);
    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(buf);

    goto LABEL_11;
  }

  v8 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
  {
    cellRelay = self->_cellRelay;
    wifiRelay = self->_wifiRelay;
    rnfRelay = self->_rnfRelay;
    powerRelay = self->_powerRelay;
    *buf = 134218752;
    v60 = cellRelay;
    v61 = 2048;
    v62 = wifiRelay;
    v63 = 2048;
    v64 = rnfRelay;
    v65 = 2048;
    v66 = powerRelay;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "init failed, at least one of the relays missing (cell/wifi/rnf/power): %p,%p,%p,%p", buf, 0x2Au);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) idleEntryAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) idleExitAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) activeEntryAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) activeExitAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) positiveEntryAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) positiveExitAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) brokenEntryAction:WeakRetained];

  return v3;
}

uint64_t __54__NoBackhaulHandler__idempotentInitializationFromIdle__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) brokenExitAction:WeakRetained];

  return v3;
}

- (BOOL)idleEntryAction:(id)action
{
  v31 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    previousState = [actionCopy previousState];
    label2 = [previousState label];
    *buf = 138412546;
    v28 = label;
    v29 = 2112;
    v30 = label2;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\tentry action for: %@, coming from: %@", buf, 0x16u);
  }

  [(NoBackhaulHandler *)self setNoBackhaulActivated:0];
  tcpProgressProbes = self->_tcpProgressProbes;
  if (tcpProgressProbes)
  {
    [(NSMutableArray *)tcpProgressProbes removeAllObjects];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = self->_tcpProgressProbes;
    self->_tcpProgressProbes = v11;
  }

  interfaceName = [(NetworkStateRelay *)self->_wifiRelay interfaceName];
  v14 = [TCPProgressProbe probeForInterface:interfaceName];

  v15 = bbhLogHandle;
  if (v14)
  {
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Adding a TCPProgressProbe %@ to list of TCPProgressProbes", buf, 0xCu);
    }

    [(NSMutableArray *)self->_tcpProgressProbes addObject:v14];
    if ([(NSMutableArray *)self->_tcpProgressProbes count]!= 1)
    {
      v16 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Does not have exactly one TCPProressProbe!", buf, 2u);
      }
    }

    v17 = self->_wifiRelay;
    objc_sync_enter(v17);
    [(NetworkStateRelay *)self->_wifiRelay setTcpProgressHintsScore:0];
    objc_sync_exit(v17);

    [v14 manage:0 outValue:0];
    [(NoBackhaulHandler *)self _startMaintenanceTimerFor:self->_tcpProgressProbes delay:10 interval:self->_idleProgressTimeout capWindowTo:30];
  }

  else
  {
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      wifiRelay = self->_wifiRelay;
      v19 = v15;
      interfaceName2 = [(NetworkStateRelay *)wifiRelay interfaceName];
      *buf = 138412290;
      v28 = interfaceName2;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "\tno progress probe for: %@, retrying", buf, 0xCu);
    }

    v21 = dispatch_time(0, 10000000000);
    queue = [(ExpertSystemHandlerCore *)self queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __37__NoBackhaulHandler_idleEntryAction___block_invoke;
    v25[3] = &unk_27898A7D0;
    v25[4] = self;
    v26 = actionCopy;
    dispatch_after(v21, queue, v25);
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

void __37__NoBackhaulHandler_idleEntryAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = [*(v2 + 48) objectAtIndexedSubscript:0];

  if (v3 == v4)
  {
    v5 = [*(a1 + 40) entryAction];
    v5[2]();
  }
}

- (BOOL)idleExitAction:(id)action
{
  v34 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (!self->_history)
  {
    v16 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "\texit action denied, no history available", &v28, 2u);
    }

    goto LABEL_13;
  }

  if (!self->_clearSSID || !self->_obscuredSSID)
  {
    v10 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      label = [actionCopy label];
      clearSSID = self->_clearSSID;
      obscuredSSID = self->_obscuredSSID;
      v28 = 138412803;
      v29 = label;
      v30 = 2113;
      v31 = clearSSID;
      v32 = 2112;
      v33 = obscuredSSID;
      v15 = "\texit action denied for: %@, clear ssid: %{private}@, obscured ssid: %@";
LABEL_10:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, v15, &v28, 0x20u);
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (![(NoBackhaulHandler *)self dampeningCheck])
  {
    apsdFailure = [(NetworkStateRelay *)self->_wifiRelay apsdFailure];
    v20 = bbhLogHandle;
    v21 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
    if (apsdFailure)
    {
      if (v21)
      {
        v22 = v20;
        label2 = [actionCopy label];
        v24 = self->_clearSSID;
        v25 = self->_obscuredSSID;
        v28 = 138412803;
        v29 = label2;
        v30 = 2113;
        v31 = v24;
        v32 = 2112;
        v33 = v25;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "\texit action overrides dampening for: %@, clear ssid: %{private}@, obscured ssid: %@", &v28, 0x20u);
      }

      goto LABEL_5;
    }

    if (v21)
    {
      v11 = v20;
      label = [actionCopy label];
      v26 = self->_clearSSID;
      v27 = self->_obscuredSSID;
      v28 = 138412803;
      v29 = label;
      v30 = 2113;
      v31 = v26;
      v32 = 2112;
      v33 = v27;
      v15 = "\texit action dampened out for: %@, clear ssid: %{private}@, obscured ssid: %@";
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_5:
  ++self->_activationIdentifier;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label3 = [actionCopy label];
    activationIdentifier = self->_activationIdentifier;
    v28 = 138412546;
    v29 = label3;
    v30 = 1024;
    LODWORD(v31) = activationIdentifier;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\texit action for: %@, activation ID: %d", &v28, 0x12u);
  }

  [(NSMutableArray *)self->_tcpProgressProbes enumerateObjectsUsingBlock:&__block_literal_global_20];
  [(NoBackhaulHandler *)self _stopMaintenanceTimer];
  v9 = 1;
  [(NoBackhaulHandler *)self setNoBackhaulActivated:1];
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)activeEntryAction:(id)action
{
  v20 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    previousState = [actionCopy previousState];
    label2 = [previousState label];
    v16 = 138412546;
    v17 = label;
    v18 = 2112;
    v19 = label2;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t\tentry action for: %@, coming from: %@", &v16, 0x16u);
  }

  previousState2 = [(ExpertSystemStateCore *)self->_currentState previousState];
  rank = [previousState2 rank];
  rank2 = [(ExpertSystemStateCore *)self->_currentState rank];

  if (rank >= rank2)
  {
    [(NoBackhaulHandler *)self _postUpwards:0];
  }

  else
  {
    v13 = [[BrokenBackhaulMetric alloc] initWithState:1];
    [actionCopy setMetric:v13];

    [(NoBackhaulHandler *)self _startMaintenanceTimerFor:self->_tcpProgressProbes delay:0 interval:self->_activeProgressTimeout capWindowTo:-1];
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)activeExitAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    v16 = 138412290;
    v17 = label;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t\texit action for: %@", &v16, 0xCu);
  }

  metric = [actionCopy metric];

  if (metric)
  {
    sojournTime = [actionCopy sojournTime];
    [sojournTime currentRun];
    v11 = v10;
    metric2 = [actionCopy metric];
    [metric2 setStateHeldForSecs:v11];

    metric3 = [actionCopy metric];
    [metric3 postCAEvent];

    [actionCopy setMetric:0];
  }

  [(NoBackhaulHandler *)self _stopMaintenanceTimer];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)positiveEntryAction:(id)action
{
  v27 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    previousState = [actionCopy previousState];
    label2 = [previousState label];
    v23 = 138412546;
    v24 = label;
    v25 = 2112;
    v26 = label2;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t\tentry action for: %@, coming from: %@", &v23, 0x16u);
  }

  previousState2 = [(ExpertSystemStateCore *)self->_currentState previousState];
  rank = [previousState2 rank];
  rank2 = [(ExpertSystemStateCore *)self->_currentState rank];

  if (rank < rank2)
  {
    v13 = [[BrokenBackhaulMetric alloc] initWithState:2];
    [actionCopy setMetric:v13];

    if (self->_verifyDefaultGateway)
    {
      v14 = [NetworkStateRelay getStateRelayFor:3];
      defaultGateways = [v14 defaultGateways];
      v16 = [defaultGateways count];

      if (v16)
      {
        defaultGateways2 = [v14 defaultGateways];
        [(NoBackhaulHandler *)self _performConnectivityTestToDefaultGateways:defaultGateways2];
      }

      else
      {
        v18 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          defaultGateways3 = [v14 defaultGateways];
          v23 = 138477827;
          v24 = defaultGateways3;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Wi-Fi gateways = %{private}@, posting upward immediately", &v23, 0xCu);
        }

        [(NoBackhaulHandler *)self _postUpwards:1];
      }
    }

    else
    {
      [(NoBackhaulHandler *)self _postUpwards:1];
    }

    [(NSMutableArray *)self->_tcpProgressProbes enumerateObjectsUsingBlock:&__block_literal_global_143];
  }

  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)positiveExitAction:(id)action
{
  v34 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    *buf = 138412290;
    v31 = label;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t\texit action for: %@", buf, 0xCu);
  }

  sojournTime = [actionCopy sojournTime];
  [sojournTime currentRun];
  v10 = v9;

  metric = [actionCopy metric];

  if (metric)
  {
    metric2 = [actionCopy metric];
    [metric2 setStateHeldForSecs:v10];

    metric3 = [actionCopy metric];
    [metric3 postCAEvent];

    [actionCopy setMetric:0];
  }

  v14 = +[SystemProperties sharedInstance];
  internalBuild = [v14 internalBuild];

  if (internalBuild && v10 >= 0x3D)
  {
    v16 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v31 = v10;
      v32 = 1024;
      v33 = 60;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "stayed in Positive for %llu seconds (> %d seconds).", buf, 0x12u);
    }

    v17 = MEMORY[0x277CBEB38];
    v18 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v20 = [v18 numberWithDouble:?];
    v21 = *MEMORY[0x277D6B148];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    v23 = [v17 dictionaryWithObjectsAndKeys:{v20, v21, &unk_2847EF878, @"positive_stayed_threshold_seconds", v22, @"stayed_in_positive_seconds", 0}];

    v24 = *MEMORY[0x277D6B020];
    v25 = *MEMORY[0x277D6B228];
    v29 = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [(NoBackhaulHandler *)self reportAutoBugCaptureCaseWithDomain:v24 type:v25 subtype:@"SYMPTOM_NOBACKHAUL_EXCEEDED_POSITIVE_STAY" subtypeContext:0 events:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)brokenEntryAction:(id)action
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  self->_cellUsageAtBrokenEntry = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    label = [actionCopy label];
    previousState = [actionCopy previousState];
    label2 = [previousState label];
    cellUsageAtBrokenEntry = self->_cellUsageAtBrokenEntry;
    v24 = 138412802;
    v25 = label;
    v26 = 2112;
    v27 = label2;
    v28 = 2048;
    v29 = cellUsageAtBrokenEntry;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "\t\t\tentry action for: %@, coming from: %@, grand tally cellular usage is %llu", &v24, 0x20u);
  }

  previousState2 = [(ExpertSystemStateCore *)self->_currentState previousState];
  rank = [previousState2 rank];
  rank2 = [(ExpertSystemStateCore *)self->_currentState rank];

  if (rank < rank2)
  {
    v14 = [[BrokenBackhaulMetric alloc] initWithState:3];
    [actionCopy setMetric:v14];

    metric = [actionCopy metric];
    [metric setIngressTrigger:8];

    metric2 = [actionCopy metric];
    [metric2 setIngressTriggerInterfaceType:3];

    [(NoBackhaulHandler *)self _postUpwards:2];
    if (self->_observeDefaultRouteSignal)
    {
      [(NoBackhaulHandler *)self _startMaintenanceTimerFor:0 delay:10 interval:60 capWindowTo:-1];
    }

    v17 = +[NDFCoreShim sharedInstance];
    [v17 noteBackhaulIsBroken:1];
  }

  v18 = +[SystemProperties sharedInstance];
  internalBuild = [v18 internalBuild];

  if (internalBuild && ([(NSString *)self->_clearSSID isEqualToString:@"AppleWiFi"]|| [(NSString *)self->_clearSSID isEqualToString:@"AppleWiFiSecure"]))
  {
    v20 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      clearSSID = self->_clearSSID;
      v24 = 138477827;
      v25 = clearSSID;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "unexpectedly detected broken backhaul on : %{private}@", &v24, 0xCu);
    }

    [(NoBackhaulHandler *)self reportAutoBugCaptureCaseWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228] subtype:@"SYMPTOM_UNEXPECTEDLY_DETECTED_NOBACKHAUL" subtypeContext:0 events:0];
  }

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)brokenExitAction:(id)action
{
  v34 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
  v6 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    label = [actionCopy label];
    v28 = 138412546;
    v29 = label;
    v30 = 2048;
    v31 = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "\t\t\texit action for: %@, grand tally cellular usage is %llu", &v28, 0x16u);
  }

  cellUsageAtBrokenEntry = self->_cellUsageAtBrokenEntry;
  v10 = v5 - cellUsageAtBrokenEntry;
  if (v5 >= cellUsageAtBrokenEntry)
  {
    v15 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      label2 = [actionCopy label];
      v28 = 138412546;
      v29 = label2;
      v30 = 2048;
      v31 = v10;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Cellular usage in %@ is %llu", &v28, 0x16u);
    }
  }

  else
  {
    v11 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = self->_cellUsageAtBrokenEntry;
      v13 = v11;
      label3 = [actionCopy label];
      v28 = 134218498;
      v29 = v5;
      v30 = 2048;
      v31 = v12;
      v32 = 2112;
      v33 = label3;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Cellular usage at exit (%llu) is less than at entry (%llu) to %@", &v28, 0x20u);
    }

    v10 = 0;
  }

  metric = [actionCopy metric];

  if (metric)
  {
    sojournTime = [actionCopy sojournTime];
    [sojournTime currentRun];
    v21 = v20;
    metric2 = [actionCopy metric];
    [metric2 setStateHeldForSecs:v21];

    metric3 = [actionCopy metric];
    [metric3 setStateCellUsageBytes:v10];

    metric4 = [actionCopy metric];
    [metric4 postCAEvent];

    [actionCopy setMetric:0];
  }

  if (self->_observeDefaultRouteSignal)
  {
    [(NoBackhaulHandler *)self _stopMaintenanceTimer];
  }

  v25 = +[NDFCoreShim sharedInstance];
  [v25 noteBackhaulIsBroken:0];

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)dealloc
{
  [(NoBackhaulHandler *)self _administrativeDisable];
  if (self->_observingSystemSettingsRelay)
  {
    v3 = +[SystemSettingsRelay defaultRelay];
    [v3 removeObserver:self forKeyPath:@"noBackhaulEnabled"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = defaultCenter;
  if (self->_relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  if (self->_wifiEpochObserver)
  {
    [v5 removeObserver:?];
  }

  if (self->_observeForegroundActivity)
  {
    if (self->_foregroundObserver)
    {
      [v5 removeObserver:?];
    }

    if (self->_foregroundAppObserver)
    {
      [v5 removeObserver:?];
    }
  }

  if (self->_preConnectionStuckFlowsObserver)
  {
    [v5 removeObserver:?];
  }

  if (self->_faeFullInitializationNotificationObserver)
  {
    [v5 removeObserver:?];
  }

  v6.receiver = self;
  v6.super_class = NoBackhaulHandler;
  [(ExpertSystemHandlerCore *)&v6 dealloc];
}

- (void)_administrativeEnable
{
  if (self->_administrativeState == 2)
  {
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"active" options:7 context:2];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"active" options:7 context:2];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"primary" options:7 context:3];
    if (self->_observeWiFiRxSignalThresholded)
    {
      [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"rxSignalThresholded" options:7 context:5];
    }

    if (self->_observeWiFiRxSignalFullBars)
    {
      [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"rxSignalFullBars" options:7 context:26];
    }

    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"dnsOut" options:7 context:7];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"internetDnsOut" options:7 context:14];
    if (self->_observeDefaultRouteSignal)
    {
      [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"stuckDefRoute" options:7 context:16];
    }

    if (self->_observeApsdFailure)
    {
      [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"apsdFailure" options:7 context:15];
    }

    if (self->_observeSiriTimeout || self->_pollFlowsPeriodically)
    {
      [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"appleServicesConnectionFriction" options:7 context:31];
      if (self->_pollFlowsPeriodically)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __42__NoBackhaulHandler__administrativeEnable__block_invoke;
        v15[3] = &unk_27898A690;
        v15[4] = self;
        v4 = [defaultCenter addObserverForName:@"kNotificationFlowScrutinizerPreConnectionStuckFlow" object:0 queue:0 usingBlock:v15];
        preConnectionStuckFlowsObserver = self->_preConnectionStuckFlowsObserver;
        self->_preConnectionStuckFlowsObserver = v4;

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __42__NoBackhaulHandler__administrativeEnable__block_invoke_193;
        v14[3] = &unk_27898A690;
        v14[4] = self;
        v6 = [defaultCenter addObserverForName:@"kNotificationOfCompletedInitialization" object:0 queue:0 usingBlock:v14];
        faeFullInitializationNotificationObserver = self->_faeFullInitializationNotificationObserver;
        self->_faeFullInitializationNotificationObserver = v6;

        v8 = +[FlowRefreshScheduler sharedInstance];
        refreshScheduler = self->_refreshScheduler;
        self->_refreshScheduler = v8;

        if (self->_refreshScheduler)
        {
          if (self->_faeFullInitializationNotificationObserver)
          {
            [defaultCenter removeObserver:?];
            v10 = self->_faeFullInitializationNotificationObserver;
            self->_faeFullInitializationNotificationObserver = 0;
          }

          [(NoBackhaulHandler *)self startPollingKernelForFlowStatistics];
        }

        else
        {
          v12 = bbhLogHandle;
          if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *v13 = 0;
            _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "FAE not fully initialized yet, not polling kernel for flow stats yet", v13, 2u);
          }
        }
      }
    }

    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"tcpProgressHintsScore" options:7 context:17];
    [(CellFallbackHandler *)self->_rnfRelay addObserver:self forKeyPath:@"rnfActivated" options:7 context:18];
    [(CellFallbackHandler *)self->_rnfRelay addObserver:self forKeyPath:@"wifiCallUnderway" options:7 context:12];
    [(CellOutrankHandler *)self->_outrankRelay addObserver:self forKeyPath:@"cellOutranksWiFi" options:7 context:27];
    if (self->_observeForegroundActivity)
    {
      [(PowerStateRelay *)self->_powerRelay addObserver:self forKeyPath:@"screenNotDark" options:7 context:11];
      [(NoBackhaulHandler *)self addObserver:self forKeyPath:@"systemForeground" options:7 context:1];
      [(NoBackhaulHandler *)self addObserver:self forKeyPath:@"callInForeground" options:7 context:29];
    }

    [(NoBackhaulHandler *)self addObserver:self forKeyPath:@"dndWhileDriving" options:7 context:30];
    [(NoBackhaulHandler *)self addObserver:self forKeyPath:@"stepper" options:3 context:0];
    self->_administrativeState = 1;
    [(NoBackhaulHandler *)self drainPendingEventDescriptions];
  }

  else
  {
    v11 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "ignoring double turn-on issue", v13, 2u);
    }
  }
}

void __42__NoBackhaulHandler__administrativeEnable__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = bbhLogHandle;
  if (v3)
  {
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Received flow stuck notification from FlowScrutinizer (userInfo: %@)", &v6, 0xCu);
    }

    [*(a1 + 32) handleFlowStuckNotification:v3];
  }

  else if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Ignoring nil payload for stuck flow notification", &v6, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __42__NoBackhaulHandler__administrativeEnable__block_invoke_193(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"ObjectKey"];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [*(a1 + 32) queue];

      if (v6)
      {
        v7 = [*(a1 + 32) queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __42__NoBackhaulHandler__administrativeEnable__block_invoke_2;
        block[3] = &unk_27898A0C8;
        block[4] = *(a1 + 32);
        dispatch_async(v7, block);

        goto LABEL_13;
      }

      v13 = otherLogHandle;
      if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v10 = "dispatch_async failed: target queue is nil";
      v11 = v13;
      v12 = 2;
    }

    else
    {
      v9 = bbhLogHandle;
      if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v17 = v4;
      v10 = "kNotificationOfCompletedInitialization has no engine in userInfo payload %@";
      v11 = v9;
      v12 = 12;
    }

    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_13;
  }

  v8 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "kNotificationOfCompletedInitialization has no userInfo payload", buf, 2u);
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __42__NoBackhaulHandler__administrativeEnable__block_invoke_2(uint64_t a1)
{
  v2 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "FAE fully initialized, starting to poll kernel for flow stats", v4, 2u);
  }

  return [*(a1 + 32) startPollingKernelForFlowStatistics];
}

- (void)_administrativeDisable
{
  if (self->_administrativeState == 1)
  {
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"active"];
    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"active"];
    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"primary"];
    if (self->_observeWiFiRxSignalThresholded)
    {
      [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"rxSignalThresholded"];
    }

    if (self->_observeWiFiRxSignalFullBars)
    {
      [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"rxSignalFullBars"];
    }

    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"dnsOut"];
    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"internetDnsOut"];
    if (self->_observeDefaultRouteSignal)
    {
      [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"stuckDefRoute"];
    }

    if (self->_observeApsdFailure)
    {
      [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"apsdFailure"];
    }

    if (self->_observeSiriTimeout || self->_pollFlowsPeriodically)
    {
      [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"appleServicesConnectionFriction"];
      if (self->_pollFlowsPeriodically)
      {
        refreshScheduler = self->_refreshScheduler;
        if (refreshScheduler)
        {
          queue = [(FlowRefreshScheduler *)refreshScheduler queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__NoBackhaulHandler__administrativeDisable__block_invoke;
          block[3] = &unk_27898A0C8;
          block[4] = self;
          dispatch_async(queue, block);
        }
      }
    }

    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"tcpProgressHintsScore"];
    [(CellFallbackHandler *)self->_rnfRelay removeObserver:self forKeyPath:@"rnfActivated"];
    [(CellFallbackHandler *)self->_rnfRelay removeObserver:self forKeyPath:@"wifiCallUnderway"];
    [(CellOutrankHandler *)self->_outrankRelay removeObserver:self forKeyPath:@"cellOutranksWiFi"];
    if (self->_observeForegroundActivity)
    {
      [(PowerStateRelay *)self->_powerRelay removeObserver:self forKeyPath:@"screenNotDark"];
      [(NoBackhaulHandler *)self removeObserver:self forKeyPath:@"systemForeground"];
      [(NoBackhaulHandler *)self removeObserver:self forKeyPath:@"callInForeground"];
    }

    [(NoBackhaulHandler *)self removeObserver:self forKeyPath:@"dndWhileDriving"];
    [(NoBackhaulHandler *)self removeObserver:self forKeyPath:@"stepper"];
    self->_administrativeState = 2;
  }

  else
  {
    v5 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ignoring double turn-off issue", v6, 2u);
    }
  }
}

uint64_t __43__NoBackhaulHandler__administrativeDisable__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) removeDelegate:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);

  return [v3 cancelRefresh:v4];
}

- (void)_bringStateToIdle
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_states objectAtIndexedSubscript:0];
  if (self->_currentState)
  {
    v4 = self->_wifiRelay;
    objc_sync_enter(v4);
    [(NetworkStateRelay *)self->_wifiRelay setAppleServicesConnectionFriction:0];
    objc_sync_exit(v4);

    label = [(ExpertSystemStateCore *)self->_currentState label];
    label2 = [v3 label];
    v7 = [label isEqualToString:label2];

    if ((v7 & 1) == 0)
    {
      v8 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        currentState = self->_currentState;
        v10 = v8;
        label3 = [(ExpertSystemStateCore *)currentState label];
        *buf = 138412290;
        v19 = label3;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Idling from %@ state", buf, 0xCu);
      }

      states = self->_states;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __38__NoBackhaulHandler__bringStateToIdle__block_invoke;
      v17[3] = &unk_27898CF78;
      v17[4] = self;
      [(NSArray *)states enumerateObjectsWithOptions:2 usingBlock:v17];
    }
  }

  else
  {
    v13 = [(NSArray *)self->_states objectAtIndexedSubscript:0];
    v14 = self->_currentState;
    self->_currentState = v13;

    entryAction = [(ExpertSystemStateCore *)self->_currentState entryAction];
    entryAction[2]();
  }

  [(ExpertSystemStateCore *)self->_currentState setPreviousState:0];

  v16 = *MEMORY[0x277D85DE8];
}

void __38__NoBackhaulHandler__bringStateToIdle__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 isEqual:*(*(a1 + 32) + 40)];
  if (a3 && v5)
  {
    v6 = [v13 exitAction];
    v6[2]();

    v7 = [v13 sojournTime];
    [v7 stop];

    [v13 setPreviousState:0];
    v8 = [*(*(a1 + 32) + 48) objectAtIndex:a3 - 1];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(a1 + 32) + 40) setPreviousState:v13];
    v11 = [*(*(a1 + 32) + 40) entryAction];
    v11[2]();

    v12 = [*(*(a1 + 32) + 40) sojournTime];
    [v12 start];
  }
}

- (BOOL)_nudgeState
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = self->_currentState;
  exitAction = [(ExpertSystemStateCore *)self->_currentState exitAction];
  v5 = exitAction[2]();

  if (v5)
  {
    [(ExpertSystemStateCore *)self->_currentState setPreviousState:0];
    sojournTime = [(ExpertSystemStateCore *)self->_currentState sojournTime];
    [sojournTime stop];

    v7 = [(NSArray *)self->_states indexOfObject:self->_currentState];
    if (v7 + 1 < [(NSArray *)self->_states count])
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(NSArray *)self->_states objectAtIndex:v8];
    currentState = self->_currentState;
    self->_currentState = v9;

    [(ExpertSystemStateCore *)self->_currentState setPreviousState:v3];
    sojournTime2 = [(ExpertSystemStateCore *)self->_currentState sojournTime];
    [sojournTime2 start];

    entryAction = [(ExpertSystemStateCore *)self->_currentState entryAction];
    entryAction[2]();

    v13 = [(NSArray *)self->_states indexOfObject:v3];
    metric = [(NoBackhaulHandlerState *)self->_currentState metric];
    [metric setPreviousState:v13];

    v15 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      label = [(ExpertSystemStateCore *)v3 label];
      label2 = [(ExpertSystemStateCore *)self->_currentState label];
      v25 = 138412546;
      v26 = label;
      v27 = 2112;
      v28 = label2;
      v19 = "forced state nudge, from: %@ to: %@";
      v20 = v16;
      v21 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
      _os_log_impl(&dword_23255B000, v20, v21, v19, &v25, 0x16u);
    }
  }

  else
  {
    v22 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = v22;
      label = [(ExpertSystemStateCore *)v3 label];
      label2 = [(ExpertSystemStateCore *)self->_currentState label];
      v25 = 138412546;
      v26 = label;
      v27 = 2112;
      v28 = label2;
      v19 = "withheld state nudge, from: %@ to: %@";
      v20 = v16;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_dumpState
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = &bbhLogHandle;
  v4 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_administrativeState == 1)
    {
      v5 = "Enabled";
    }

    else
    {
      v5 = "Disabled";
    }

    *buf = 136315138;
    *v56 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Administrative state: %s", buf, 0xCu);
  }

  v6 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->_currentState;
    v8 = v6;
    label = [(ExpertSystemStateCore *)currentState label];
    *buf = 138412290;
    *v56 = label;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Current state: %@", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_states;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v69 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v52;
    *&v12 = 138412546;
    v50 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        v17 = [(NSArray *)self->_states objectAtIndexedSubscript:0, v50, v51];

        if (v16 != v17)
        {
          v18 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            v19 = v18;
            [v16 label];
            v21 = v20 = v3;
            sojournTime = [v16 sojournTime];
            [sojournTime total];
            *buf = v50;
            *v56 = v21;
            *&v56[8] = 2048;
            v57 = v23;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Cumulative time on state %@: %f", buf, 0x16u);

            v3 = v20;
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v69 count:16];
    }

    while (v13);
  }

  v24 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    clearSSID = self->_clearSSID;
    *buf = 138477827;
    *v56 = clearSSID;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "current SSID: %{private}@", buf, 0xCu);
  }

  v26 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    cellRelay = self->_cellRelay;
    *buf = 138412290;
    *v56 = cellRelay;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Cell state: %@", buf, 0xCu);
  }

  v28 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    wifiRelay = self->_wifiRelay;
    *buf = 138412290;
    *v56 = wifiRelay;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "WiFi state: %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_tcpProgressProbes enumerateObjectsUsingBlock:&__block_literal_global_226];
  v30 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v31 = v30;
    if ([(NoBackhaulHandler *)self systemForeground])
    {
      v32 = "YES";
    }

    else
    {
      v32 = "NO";
    }

    if (+[AppStateMonitor hasAnyForegroundApp])
    {
      v33 = "YES";
    }

    else
    {
      v33 = "NO";
    }

    *buf = 136315394;
    *v56 = v32;
    *&v56[8] = 2080;
    v57 = v33;
    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "System foreground: %s (orig: %s)", buf, 0x16u);
  }

  v34 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    observeApsdFailure = self->_observeApsdFailure;
    observeSiriTimeout = self->_observeSiriTimeout;
    pollFlowsPeriodically = self->_pollFlowsPeriodically;
    observeWiFiRxSignalFullBars = self->_observeWiFiRxSignalFullBars;
    observeWiFiRxSignalThresholded = self->_observeWiFiRxSignalThresholded;
    observeForegroundActivity = self->_observeForegroundActivity;
    observeDefaultRouteSignal = self->_observeDefaultRouteSignal;
    ignoreBaseband = self->_ignoreBaseband;
    verifyDefaultGateway = self->_verifyDefaultGateway;
    *buf = 67111168;
    *v56 = observeApsdFailure;
    *&v56[4] = 1024;
    *&v56[6] = observeSiriTimeout;
    LOWORD(v57) = 1024;
    *(&v57 + 2) = pollFlowsPeriodically;
    HIWORD(v57) = 1024;
    v58 = observeWiFiRxSignalFullBars;
    v59 = 1024;
    v60 = observeWiFiRxSignalThresholded;
    v61 = 1024;
    v62 = observeForegroundActivity;
    v63 = 1024;
    v64 = observeDefaultRouteSignal;
    v65 = 1024;
    v66 = ignoreBaseband;
    v67 = 1024;
    v68 = verifyDefaultGateway;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "Policy - ApsdFailure:%{BOOL}d SiriTimeout:%{BOOL}d PeriodicFlowsPolling:%{BOOL}d WiFiRxSignalFullBars:%{BOOL}d WiFiRxSignalThresholded:%{BOOL}d ForegroundActivity:%{BOOL}d DefaultRouteSignal:%{BOOL}d IgnoreBaseband:%{BOOL}d VerifyDefaultGateway:%{BOOL}d", buf, 0x38u);
  }

  v44 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    history = self->_history;
    *buf = 138412290;
    *v56 = history;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "History: %@", buf, 0xCu);
  }

  v46 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v46;
    stepper = [(NoBackhaulHandler *)self stepper];
    *buf = 134217984;
    *v56 = stepper;
    _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEFAULT, "External stepper count: %lu", buf, 0xCu);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __31__NoBackhaulHandler__dumpState__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v5 = 0;
  [v2 manage:2 outValue:&v5];
  v3 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Kernel probing state: %d (%@)", buf, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startMaintenanceTimerFor:(id)for delay:(unint64_t)delay interval:(unint64_t)interval capWindowTo:(unint64_t)to
{
  forCopy = for;
  date = [MEMORY[0x277CBEAA8] date];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  if (self->maintenanceTimer)
  {
    v12 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Cancelling existing timer before scheduling a new one", buf, 2u);
    }

    [(NoBackhaulHandler *)self _stopMaintenanceTimer];
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  maintenanceTimer = self->maintenanceTimer;
  self->maintenanceTimer = v14;

  v16 = self->maintenanceTimer;
  v17 = dispatch_time(0, 1000000000 * delay);
  dispatch_source_set_timer(v16, v17, 1000000000 * interval, 0);
  v18 = self->maintenanceTimer;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__NoBackhaulHandler__startMaintenanceTimerFor_delay_interval_capWindowTo___block_invoke;
  v21[3] = &unk_27898CFA0;
  v21[4] = self;
  v22 = forCopy;
  intervalCopy = interval;
  toCopy = to;
  v23 = date;
  v24 = v28;
  v19 = date;
  v20 = forCopy;
  dispatch_source_set_event_handler(v18, v21);
  dispatch_source_set_cancel_handler(self->maintenanceTimer, &__block_literal_global_230);
  dispatch_resume(self->maintenanceTimer);

  _Block_object_dispose(v28, 8);
}

uint64_t __74__NoBackhaulHandler__startMaintenanceTimerFor_delay_interval_capWindowTo___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[6];
  ++*(*(a1[7] + 8) + 24);
  return [v2 _captureProgressFor:v1 since:v5 interval:v3 capWindowTo:v4 iteration:? renewTest:?];
}

- (void)_stopMaintenanceTimer
{
  maintenanceTimer = self->maintenanceTimer;
  if (maintenanceTimer)
  {
    dispatch_source_cancel(maintenanceTimer);
    v4 = self->maintenanceTimer;
    self->maintenanceTimer = 0;
  }
}

- (void)_captureProgressFor:(id)for since:(id)since interval:(unint64_t)interval capWindowTo:(unint64_t)to iteration:(unint64_t)iteration renewTest:(id)test
{
  v51 = *MEMORY[0x277D85DE8];
  forCopy = for;
  sinceCopy = since;
  testCopy = test;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  [sinceCopy timeIntervalSinceNow];
  v18 = -v17;
  if (v18 >= to)
  {
    toCopy = to;
  }

  else
  {
    toCopy = v18;
  }

  if (!forCopy)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __88__NoBackhaulHandler__captureProgressFor_since_interval_capWindowTo_iteration_renewTest___block_invoke_233;
    v38[3] = &unk_27898CFF0;
    *&v38[6] = toCopy;
    v38[4] = self;
    v38[5] = iteration;
    [NetworkAnalyticsEngine performNetAttachmentQueryOn:3 reply:v38];
    if (!testCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  intervalCopy = interval;
  v30 = testCopy;
  if ([forCopy count] >= 2)
  {
    [NoBackhaulHandler _captureProgressFor:forCopy since:? interval:? capWindowTo:? iteration:? renewTest:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = forCopy;
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __88__NoBackhaulHandler__captureProgressFor_since_interval_capWindowTo_iteration_renewTest___block_invoke;
        v39[3] = &unk_27898CFC8;
        *&v39[6] = toCopy;
        v39[4] = self;
        v39[5] = iteration;
        [v25 fetchMetricsForFlowsAged:&v44 metrics:0 includeQUICFlows:v39 resultBlock:toCopy];
      }

      v22 = [v20 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v22);
  }

  testCopy = v30;
  interval = intervalCopy;
  if (v30)
  {
LABEL_17:
    if (testCopy[2](testCopy))
    {
      v26 = dispatch_time(0, 1000000000 * interval);
      queue = [(ExpertSystemHandlerCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__NoBackhaulHandler__captureProgressFor_since_interval_capWindowTo_iteration_renewTest___block_invoke_238;
      block[3] = &unk_27898D018;
      iterationCopy = iteration;
      block[4] = self;
      v32 = forCopy;
      v33 = sinceCopy;
      intervalCopy2 = interval;
      toCopy2 = to;
      v34 = testCopy;
      dispatch_after(v26, queue, block);
    }
  }

LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
}

void __88__NoBackhaulHandler__captureProgressFor_since_interval_capWindowTo_iteration_renewTest___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = bbhLogHandle;
  if (a2)
  {
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = v3;
      v9 = [TCPProgressProbe progressPrettyPrintUtility:a3];
      v12 = 134218498;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "TCP metrics iteration:%lu since %.2f secs: %@", &v12, 0x20u);
    }

    if (*(a1 + 40))
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    [*(a1 + 32) _assessProgressFromBaseline:v10 toMetrics:a3];
  }

  else if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch TCP metrics for flows", &v12, 2u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __88__NoBackhaulHandler__captureProgressFor_since_interval_capWindowTo_iteration_renewTest___block_invoke_233(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[5];
    v6 = a1[6];
    v18 = 134218240;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Default route metrics iteration:%lu since %.2f secs", &v18, 0x16u);
  }

  v7 = [v3 firstObject];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"packetsIn"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = [v9 unsignedLongLongValue];
      v11 = v10;
      if (a1[5])
      {
        v12 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1[4] + 232);
          v18 = 134218240;
          v19 = v13;
          v20 = 2048;
          v21 = v11;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Default route inbound packets counters, was: %llu, is: %llu", &v18, 0x16u);
        }

        v14 = a1[4];
        if ((v11 - v14[29]) >= 0xA)
        {
          [v14 resumedDefRouteProgress];
        }
      }

      else
      {
        *(a1[4] + 232) = v10;
      }
    }

    else
    {
      v15 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Default route w/o inbound packets count", &v18, 2u);
      }
    }
  }

  else
  {
    v16 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Default route w/o metrics dict", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDampeningHistory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NoBackhaulHandler__fetchDampeningHistory__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (_fetchDampeningHistory_onceToken != -1)
  {
    dispatch_once(&_fetchDampeningHistory_onceToken, block);
  }
}

void __43__NoBackhaulHandler__fetchDampeningHistory__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6B500];
  v3 = +[SystemSettingsRelay defaultRelay];
  v4 = [v3 symptomEvaluatorDatabaseContainerPath];
  v5 = [v2 workspaceWithName:@"netusage" atPath:v4 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 144);
  *(v7 + 144) = v6;

  v9 = *(a1 + 32);
  v10 = v9[18];
  if (v10)
  {
    v11 = [v9 queue];
    v12 = [ImpoExpoService impoExpoServiceInWorkspace:v10 andQueue:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 152);
    *(v13 + 152) = v12;

    v15 = *(*(a1 + 32) + 152);
    v29 = 0;
    v16 = [v15 exportAndUnarchiveItemUnderName:@"NO_BACKHAUL_HISTORY" lastUpdated:&v29 verificationBlock:&__block_literal_global_243];
    v17 = v29;
    v18 = *(a1 + 32);
    v19 = *(v18 + 120);
    *(v18 + 120) = v16;

    v20 = *(*(a1 + 32) + 120);
    v21 = bbhLogHandle;
    v22 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        v23 = *(*(a1 + 32) + 120);
        *buf = 138412290;
        v31 = v23;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "Retrieved persisted history: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "Starting history anew", buf, 2u);
      }

      v25 = objc_opt_new();
      v26 = *(a1 + 32);
      v27 = *(v26 + 120);
      *(v26 + 120) = v25;
    }
  }

  else
  {
    v24 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "Unable to provide persistence, fatal initialization failure", buf, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __43__NoBackhaulHandler__fetchDampeningHistory__block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    if ([v3 count])
    {
      v4 = [v3 allValues];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        *&v25 = 0;
        *(&v25 + 1) = &v25;
        v26 = 0x2020000000;
        v27 = 0;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __43__NoBackhaulHandler__fetchDampeningHistory__block_invoke_244;
        v18[3] = &unk_27898B070;
        v18[4] = &v25;
        v6 = [v5 indexOfObjectPassingTest:v18];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL || *(*(&v25 + 1) + 24) == 1)
        {
          v7 = bbhLogHandle;
          if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
          {
            v8 = *(*(&v25 + 1) + 24);
            *buf = 67109634;
            v20 = v6 == 0x7FFFFFFFFFFFFFFFLL;
            v21 = 1024;
            v22 = v8;
            v23 = 2112;
            v24 = v3;
            _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Got persisted history but it's old/corrupted: %d/%d, zapping it %@", buf, 0x18u);
          }

          v9 = 0;
        }

        else
        {
          v9 = 1;
        }

        _Block_object_dispose(&v25, 8);
      }

      else
      {
        v15 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Cannot get keys from dict?!, removed", &v25, 2u);
        }

        v9 = 0;
      }
    }

    else
    {
      v14 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Empty persistent state?!, removed", &v25, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      LODWORD(v25) = 138412290;
      *(&v25 + 4) = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Corrupted persistent state??, removed (%@)", &v25, 0xCu);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL __43__NoBackhaulHandler__fetchDampeningHistory__block_invoke_244(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  [v6 timeIntervalSinceNow];
  v8 = v7 > 0.0;

  return v8;
}

- (void)_updateSSID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy objectForKeyedSubscript:@"State"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v25 = 0;
    v7 = [dCopy objectForKeyedSubscript:@"Detail"];
    v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    uTF8String = [v7 UTF8String];
    if (!uTF8String)
    {
      [CellOutrankHandler _updateWiFi:buf];
    }

    v9 = 0;
    while (1)
    {
      v10 = *(uTF8String + v9);
      v28[v9] = v10;
      if (!v10)
      {
        break;
      }

      if (++v9 == 63)
      {
        HIBYTE(v30) = 0;
        break;
      }
    }

    if ([NetworkEpoch parsePrimaryKeyStr:v28 majorIDLengthInBytes:&v25 + 4 minorIDLengthInBytes:&v25]&& SHIDWORD(v25) <= 63)
    {
      v28[SHIDWORD(v25)] = 0;
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
    }

    else
    {
      v13 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v27 = v7;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "WiFi epoch, failed to parse: %{private}@", buf, 0xCu);
      }

      v11 = 0;
    }

    v14 = [dCopy objectForKeyedSubscript:@"HashedPrimaryKey"];
    v15 = [v14 rangeOfString:@"-"];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v14 substringToIndex:v15];
    }

    v12 = v16;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v17 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v28 = 67109635;
    *&v28[4] = bOOLValue;
    *&v28[8] = 2113;
    *&v28[10] = v11;
    *&v28[18] = 2112;
    *&v28[20] = v12;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "WiFi epoch, state: %d, clear SSID: %{private}@, obscured SSID: %@)", v28, 0x1Cu);
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __33__NoBackhaulHandler__updateSSID___block_invoke;
  v22[3] = &unk_27898A328;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v19 = v12;
  v20 = v11;
  dispatch_async(queue, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __33__NoBackhaulHandler__updateSSID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[13])
  {
    if (*(a1 + 40))
    {
      v3 = [v2[13] isEqualToString:?];
      v2 = *(a1 + 32);
      if ((v3 & 1) == 0)
      {
        [v2 changedSSIDto:*(a1 + 40)];
        v2 = *(a1 + 32);
      }
    }
  }

  objc_storeStrong(v2 + 13, *(a1 + 40));
  v4 = *(a1 + 48);
  v5 = (*(a1 + 32) + 112);

  objc_storeStrong(v5, v4);
}

- (BOOL)dampeningCheck
{
  v2 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:self->_obscuredSSID];
  v3 = v2;
  v5 = 1;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    if (v4 > 0.0)
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)dampeningSetPrecedent
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_multiplier objectForKeyedSubscript:self->_obscuredSSID];
  integerValue = [v3 integerValue];

  if (((integerValue + 1) & 0x3E) != 0)
  {
    v5 = (integerValue + 1) & 0x3F;
  }

  else
  {
    v5 = 1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v7 = [date dateByAddingTimeInterval:(self->networkBlacklistTime * v5)];

  [(NSMutableDictionary *)self->_history setObject:v7 forKeyedSubscript:self->_obscuredSSID];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  [(NSMutableDictionary *)self->_multiplier setObject:v8 forKeyedSubscript:self->_obscuredSSID];

  v9 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    clearSSID = self->_clearSSID;
    obscuredSSID = self->_obscuredSSID;
    v15 = 138478595;
    v16 = clearSSID;
    v17 = 2112;
    v18 = obscuredSSID;
    v19 = 2048;
    v20 = v5;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Updating persist history for %{private}@, obscured SSID: %@, multiplier: %lu, good again at: %@", &v15, 0x2Au);
  }

  if (![(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:@"NO_BACKHAUL_HISTORY" item:self->_history])
  {
    v12 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      history = self->_history;
      v15 = 138412290;
      v16 = history;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Failed to persist history: %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dampeningReset
{
  v13 = *MEMORY[0x277D85DE8];
  [(NSMutableDictionary *)self->_history removeObjectForKey:self->_obscuredSSID];
  [(NSMutableDictionary *)self->_multiplier removeObjectForKey:self->_obscuredSSID];
  v3 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    clearSSID = self->_clearSSID;
    obscuredSSID = self->_obscuredSSID;
    v9 = 138478083;
    v10 = clearSSID;
    v11 = 2112;
    v12 = obscuredSSID;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Nuking persist history for %{private}@, obscured SSID: %@", &v9, 0x16u);
  }

  if (![(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:@"NO_BACKHAUL_HISTORY" item:self->_history])
  {
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      history = self->_history;
      v9 = 138412290;
      v10 = history;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to nuke history: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performConnectivityTestToDefaultGateways:(id)gateways
{
  gatewaysCopy = gateways;
  if ([(NSMutableDictionary *)self->_activeICMPProbes count]|| [(NSMutableDictionary *)self->_icmpProbeStates count])
  {
    v5 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Currently have active/pending probes, removing them to start a new test", buf, 2u);
    }

    [(NSMutableDictionary *)self->_activeICMPProbes removeAllObjects];
    [(NSMutableDictionary *)self->_icmpProbeStates removeAllObjects];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__NoBackhaulHandler__performConnectivityTestToDefaultGateways___block_invoke;
  v6[3] = &unk_27898A140;
  v6[4] = self;
  [gatewaysCopy enumerateObjectsUsingBlock:v6];
}

void __63__NoBackhaulHandler__performConnectivityTestToDefaultGateways___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [ICMPPingProbe alloc];
  v5 = [*(a1 + 32) queue];
  v6 = [(ICMPPingProbe *)v4 initWithQueue:v5];

  [(ICMPPingProbe *)v6 setDelegate:*(a1 + 32)];
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@.%@", v9, v3];

  [*(*(a1 + 32) + 264) setObject:v6 forKeyedSubscript:v10];
  [*(*(a1 + 32) + 272) setObject:&unk_2847EF890 forKeyedSubscript:v10];
  [(ICMPPingProbe *)v6 setPayloadSize:*(*(a1 + 32) + 328)];
  v11 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "About to start the ICMP Ping to %{private}@", buf, 0xCu);
  }

  v12 = [NetworkStateRelay getStateRelayFor:3];
  -[ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:](v6, "startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:", v3, 0, [v12 interfaceIndex], *(*(a1 + 32) + 280), *(*(a1 + 32) + 304), 0, *(*(a1 + 32) + 296), *(*(a1 + 32) + 312), *(*(a1 + 32) + 320));

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_postUpwards:(unint64_t)upwards
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    upwardsCopy = upwards;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "posting recommendation code: %llu", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__NoBackhaulHandler__postUpwards___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = upwards;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

void __34__NoBackhaulHandler__postUpwards___block_invoke(uint64_t a1)
{
  v4 = [ManagedEventHandler getHandlerByName:@"broken-backhaul"];
  v2 = [[DecisionDetails alloc] initWithReason:"broken-backhaul" code:*(a1 + 32) evaluations:0];
  if (v4)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    [v4 didReceiveSyndrome:v2];
  }
}

+ (int64_t)_nwInterfaceTypeFromAPSDQualifier:(unint64_t)qualifier
{
  if (qualifier)
  {
    return qualifier == 1;
  }

  else
  {
    return 2;
  }
}

- (void)apsdFailing:(BOOL)failing onInterface:(int64_t)interface
{
  failingCopy = failing;
  v22 = *MEMORY[0x277D85DE8];
  v7 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (failingCopy)
    {
      v8 = "";
    }

    else
    {
      v8 = " NOT";
    }

    v9 = v7;
    v10 = [InterfaceUtils stringForInterfaceType:interface];
    label = [(ExpertSystemStateCore *)self->_currentState label];
    *buf = 136315650;
    v17 = v8;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = label;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "received symptom that apsd is%s failing on %@ in state: %@", buf, 0x20u);
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NoBackhaulHandler_apsdFailing_onInterface___block_invoke;
  block[3] = &unk_27898A6B8;
  block[4] = self;
  block[5] = interface;
  v15 = failingCopy;
  dispatch_async(queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __45__NoBackhaulHandler_apsdFailing_onInterface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    obj = *(*(a1 + 32) + 56);
    objc_sync_enter(obj);
    [*(*(a1 + 32) + 56) setApsdFailure:*(a1 + 48)];
    objc_sync_exit(obj);
  }

  else
  {
    if (v2 != 1)
    {
      return;
    }

    obja = *(*(a1 + 32) + 64);
    objc_sync_enter(obja);
    v3 = [*(*(a1 + 32) + 64) apsdFailure];
    [*(*(a1 + 32) + 64) setApsdFailure:*(a1 + 48)];
    objc_sync_exit(obja);

    if (*(a1 + 48))
    {
      return;
    }

    if ((v3 ^ 1))
    {
      return;
    }

    v4 = [*(*(a1 + 32) + 40) label];
    v5 = [v4 isEqualToString:@"broken"];

    if (!v5)
    {
      return;
    }

    obj = [*(*(a1 + 32) + 40) metric];
    if (obj)
    {
      [obj setEgressTrigger:15];
      [obj setEgressTriggerInterfaceType:3];
      [obj populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 32) + 64) cellRelay:*(*(a1 + 32) + 56) isIngress:0];
    }

    [*(a1 + 32) _bringStateToIdle];
  }
}

- (void)noteSiriConnectionTimeout
{
  v3 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "received notification that connection to Siri servers has timed out", v5, 2u);
  }

  v4 = self->_wifiRelay;
  objc_sync_enter(v4);
  [(NetworkStateRelay *)self->_wifiRelay setAppleServicesConnectionFriction:1];
  objc_sync_exit(v4);
}

- (void)handleFlowStuckNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy objectForKeyedSubscript:@"kNotificationFlowScrutinizerAttributedEntity"];
  v6 = [notificationCopy objectForKeyedSubscript:@"kNotificationFlowScrutinizerFlowDuration"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [notificationCopy objectForKeyedSubscript:@"kNotificationFlowScrutinizerIsWiFiFlow"];
  bOOLValue = [v9 BOOLValue];

  v11 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
  {
    v12 = "non ";
    *v17 = 136315650;
    if (bOOLValue)
    {
      v12 = "";
    }

    *&v17[4] = v12;
    v18 = 2112;
    v19 = v5;
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "received notification that a %sWi-Fi flow for %@ is stuck in pre-establishment state for %.2fs", v17, 0x20u);
  }

  if (([(NSSet *)self->_highAvailabilityServicesOfInterest containsObject:v5, *v17]& bOOLValue) == 1)
  {
    v13 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      highAvailabilityServicesOfInterest = self->_highAvailabilityServicesOfInterest;
      *v17 = 138412802;
      *&v17[4] = v5;
      v18 = 2048;
      v19 = v8;
      v20 = 2112;
      v21 = highAvailabilityServicesOfInterest;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "found flow for %@ stuck in pre-establishment state for %.2fs [servicesOfInterest=%@]", v17, 0x20u);
    }

    v15 = self->_wifiRelay;
    objc_sync_enter(v15);
    [(NetworkStateRelay *)self->_wifiRelay setAppleServicesConnectionFriction:1];
    objc_sync_exit(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startPollingKernelForFlowStatistics
{
  v2 = bbhLogHandle;
  if (startPollingKernelForFlowStatistics_pollingStarted == 1)
  {
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v3 = "Already started polling the kernel for flow statistics, ignoring duplicate call";
    v4 = v2;
    goto LABEL_12;
  }

  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "About to start polling the kernel for flow statistics", buf, 2u);
  }

  startPollingKernelForFlowStatistics_pollingStarted = 1;
  refreshScheduler = self->_refreshScheduler;
  if (!refreshScheduler)
  {
    v7 = +[FlowRefreshScheduler sharedInstance];
    v8 = self->_refreshScheduler;
    self->_refreshScheduler = v7;

    refreshScheduler = self->_refreshScheduler;
  }

  queue = [(FlowRefreshScheduler *)refreshScheduler queue];

  if (queue)
  {
    queue2 = [(FlowRefreshScheduler *)self->_refreshScheduler queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__NoBackhaulHandler_startPollingKernelForFlowStatistics__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(queue2, block);

    return;
  }

  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v3 = "dispatch_async failed: target queue is nil";
    v4 = v11;
LABEL_12:
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, v3, buf, 2u);
  }
}

uint64_t __56__NoBackhaulHandler_startPollingKernelForFlowStatistics__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) addDelegate:?];
  result = [*(*(a1 + 32) + 168) periodicRefreshDataUsageWithInterval:@"BBH" maxStale:2.0 maxDelay:1.5 logAs:0.0];
  *(*(a1 + 32) + 176) = result;
  return result;
}

- (void)clientFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  v18 = *MEMORY[0x277D85DE8];
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (feedbackCopy)
    {
      v6 = "";
    }

    else
    {
      v6 = " NOT";
    }

    currentState = self->_currentState;
    v8 = v5;
    label = [(ExpertSystemStateCore *)currentState label];
    *buf = 136315394;
    v15 = v6;
    v16 = 2112;
    v17 = label;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "received client feedback that it is%s broken in state: %@", buf, 0x16u);
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__NoBackhaulHandler_clientFeedback___block_invoke;
  v12[3] = &unk_27898A3A0;
  v13 = feedbackCopy;
  v12[4] = self;
  dispatch_async(queue, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __36__NoBackhaulHandler_clientFeedback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 40) label];
  v4 = [v3 isEqualToString:@"positive"];

  if (v2 == 1)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = [*(*(a1 + 32) + 40) metric];
    v6 = v5;
    if (v5)
    {
      [v5 setEgressTrigger:8];
      [v6 setEgressTriggerInterfaceType:3];
      [v6 populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 32) + 64) cellRelay:*(*(a1 + 32) + 56) isIngress:0];
    }

    [*(a1 + 32) _nudgeState];
    [*(a1 + 32) dampeningReset];
  }

  else
  {
    v7 = [*(*(a1 + 32) + 40) label];
    v8 = [v7 isEqualToString:@"broken"];

    if ((v4 | v8))
    {
      v9 = [*(*(a1 + 32) + 40) metric];
      v10 = v9;
      if (v9)
      {
        [v9 setEgressTrigger:4];
        [v10 setEgressTriggerInterfaceType:3];
        [v10 populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 32) + 64) cellRelay:*(*(a1 + 32) + 56) isIngress:0];
      }

      [*(a1 + 32) _bringStateToIdle];
      if (v4)
      {
        [*(a1 + 32) dampeningSetPrecedent];
      }
    }

    v6 = *(*(a1 + 32) + 64);
    objc_sync_enter(v6);
    [*(*(a1 + 32) + 64) setApsdFailure:0];
    [*(*(a1 + 32) + 64) setAppleServicesConnectionFriction:0];
    objc_sync_exit(v6);
  }

LABEL_14:
  v11 = +[SystemProperties sharedInstance];
  v12 = [v11 internalBuild];

  if (v12)
  {
    if (clientFeedback__onceToken != -1)
    {
      __36__NoBackhaulHandler_clientFeedback___block_invoke_cold_1();
    }

    notify_set_state(clientFeedback__notifyToken, *(a1 + 40));

    notify_post("com.apple.symptoms.testautomation.BrokenBackhaul");
  }
}

- (void)resumedDefRouteProgress
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_observeDefaultRouteSignal)
  {
    v3 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      currentState = self->_currentState;
      v5 = v3;
      label = [(ExpertSystemStateCore *)currentState label];
      *buf = 138412290;
      v11 = label;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "received input that default route progress has resumed in state: %@", buf, 0xCu);
    }

    queue = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__NoBackhaulHandler_resumedDefRouteProgress__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __44__NoBackhaulHandler_resumedDefRouteProgress__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) label];
  v3 = [v2 isEqualToString:@"broken"];

  if (v3)
  {
    v5 = [*(*(a1 + 32) + 40) metric];
    if (v5)
    {
      [v5 setEgressTrigger:16];
      [v5 setEgressTriggerInterfaceType:3];
      [v5 populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 32) + 64) cellRelay:*(*(a1 + 32) + 56) isIngress:0];
    }

    [*(a1 + 32) _bringStateToIdle];
    v4 = *(*(a1 + 32) + 64);
    objc_sync_enter(v4);
    [*(*(a1 + 32) + 64) setApsdFailure:0];
    objc_sync_exit(v4);
  }
}

- (void)changedSSIDto:(id)dto
{
  v20 = *MEMORY[0x277D85DE8];
  dtoCopy = dto;
  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->_currentState;
    v7 = v5;
    label = [(ExpertSystemStateCore *)currentState label];
    v16 = 138478083;
    v17 = dtoCopy;
    v18 = 2112;
    v19 = label;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "received SSID change to %{private}@ in state: %@", &v16, 0x16u);
  }

  label2 = [(ExpertSystemStateCore *)self->_currentState label];
  if ([label2 isEqualToString:@"positive"])
  {
  }

  else
  {
    label3 = [(ExpertSystemStateCore *)self->_currentState label];
    v11 = [label3 isEqualToString:@"broken"];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  metric = [(NoBackhaulHandlerState *)self->_currentState metric];
  v13 = metric;
  if (metric)
  {
    [metric setEgressTrigger:3];
    [v13 setEgressTriggerInterfaceType:3];
    [v13 populateNetworkPropertiesOnWiFiRelay:self->_wifiRelay cellRelay:self->_cellRelay isIngress:0];
  }

  [(NoBackhaulHandler *)self _bringStateToIdle];
  v14 = self->_wifiRelay;
  objc_sync_enter(v14);
  [(NetworkStateRelay *)self->_wifiRelay setApsdFailure:0];
  objc_sync_exit(v14);

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)subscribeCarKitNotifications
{
  v3 = +[SystemProperties sharedInstance];
  deviceClass = [v3 deviceClass];

  if (deviceClass != 1)
  {
    v9 = bbhLogHandle;
    v8 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
    if (!v8)
    {
      return v8;
    }

    LOWORD(location[0]) = 0;
    v10 = "Automatic DND is not available";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&dword_23255B000, v11, v12, v10, location, 2u);
    LOBYTE(v8) = 0;
    return v8;
  }

  if (loadCarKit_symbolLoadOnce != -1)
  {
    loadCarKit_cold_1();
  }

  if (loadCarKit_symbolsLoaded != 1)
  {
    v13 = bbhLogHandle;
    v8 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }

    LOWORD(location[0]) = 0;
    v10 = "Failed to load CarKit framework";
    goto LABEL_13;
  }

  v5 = objc_alloc_init(ckCARAutomaticDNDStatusClass);
  automaticDNDStatus = self->_automaticDNDStatus;
  self->_automaticDNDStatus = v5;

  if (!self->_automaticDNDStatus)
  {
    v13 = bbhLogHandle;
    v8 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }

    LOWORD(location[0]) = 0;
    v10 = "Failed to initialize CARAutomaticDNDStatus object";
LABEL_13:
    v11 = v13;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_14;
  }

  objc_initWeak(location, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke;
  v16[3] = &unk_27898D040;
  objc_copyWeak(&v17, location);
  [(CARAutomaticDNDStatus *)self->_automaticDNDStatus setStatusChangeObserver:v16];
  v7 = self->_automaticDNDStatus;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_285;
  v15[3] = &unk_27898D068;
  v15[4] = self;
  [(CARAutomaticDNDStatus *)v7 fetchAutomaticDNDAssertionWithReply:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(location);
  LOBYTE(v8) = 1;
  return v8;
}

void __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_2;
    v6[3] = &unk_27898A3A0;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(v5, v6);
  }
}

uint64_t __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) dndWhileDriving];
  if (*(a1 + 40) != result)
  {
    v3 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 dndWhileDriving];
      v7 = "OFF";
      if (v6)
      {
        v8 = "ON";
      }

      else
      {
        v8 = "OFF";
      }

      if (*(a1 + 40))
      {
        v7 = "ON";
      }

      v10 = 136315394;
      v11 = v8;
      v12 = 2080;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "DND while driving status changed from %s to %s", &v10, 0x16u);
    }

    result = [*(a1 + 32) setDndWhileDriving:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_285(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_2_286;
  block[3] = &unk_27898BE18;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = a2;
  v8 = v5;
  dispatch_async(v6, block);
}

void __49__NoBackhaulHandler_subscribeCarKitNotifications__block_invoke_2_286(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v7 = 138412290;
      v8 = v3;
      v4 = "Error retrieving DND Assertion: %@";
LABEL_10:
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, v4, &v7, 0xCu);
    }
  }

  else if (*(a1 + 48) != [*(a1 + 40) dndWhileDriving])
  {
    [*(a1 + 40) setDndWhileDriving:?];
    v2 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v5 = "ON";
      }

      else
      {
        v5 = "OFF";
      }

      v7 = 136315138;
      v8 = v5;
      v4 = "DND while driving is %s";
      goto LABEL_10;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_assessProgressFromBaseline:(nstat_progress_indicators *)baseline toMetrics:(nstat_progress_indicators *)metrics
{
  v35 = *MEMORY[0x277D85DE8];
  if (baseline)
  {
    v6 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [TCPProgressProbe progressPrettyPrintUtility:baseline];
      tcpProgressHintsScore = [(NetworkStateRelay *)self->_wifiRelay tcpProgressHintsScore];
      v31 = 138412546;
      *v32 = v8;
      *&v32[8] = 1024;
      *&v32[10] = tcpProgressHintsScore;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "TCP establish new baseline: %@, score: %d", &v31, 0x12u);
    }

    v10 = *&baseline->var4;
    _assessProgressFromBaseline_toMetrics__base = *&baseline->var0;
    unk_2814D45F8 = v10;
    v11 = *&baseline->var7;
    v12 = *&baseline->var9;
    v13 = *&baseline->var13;
    xmmword_2814D4628 = *&baseline->var11;
    unk_2814D4638 = v13;
    xmmword_2814D4608 = v11;
    unk_2814D4618 = v12;
  }

  else if (metrics)
  {
    if (metrics->var0)
    {
      v15 = powf(metrics->var0, self->_problemRatioDenominatorExponent);
      p_var1 = &metrics->var1;
      p_var2 = &metrics->var2;
      var2 = metrics->var2;
      p_var3 = &metrics->var3;
      if (var2 <= metrics->var3)
      {
        var2 = metrics->var3;
      }

      v20 = (var2 + metrics->var1) / v15;
    }

    else
    {
      p_var1 = &metrics->var1;
      p_var2 = &metrics->var2;
      p_var3 = &metrics->var3;
      v20 = 0.0;
    }

    if (_assessProgressFromBaseline_toMetrics__base)
    {
      v22 = powf(_assessProgressFromBaseline_toMetrics__base, self->_problemRatioDenominatorExponent);
      v23 = HIDWORD(_assessProgressFromBaseline_toMetrics__base);
      if (DWORD2(_assessProgressFromBaseline_toMetrics__base) > HIDWORD(_assessProgressFromBaseline_toMetrics__base))
      {
        v23 = DWORD2(_assessProgressFromBaseline_toMetrics__base);
      }

      v24 = (v23 + DWORD1(_assessProgressFromBaseline_toMetrics__base)) / v22;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = v20 < 0.5 || v20 <= v24;
    if (v25 && (v20 == v24 ? (v26 = v24 < 0.75) : (v26 = 1), v26) || metrics->var6)
    {
      if (*p_var1 || *p_var2 || *p_var3)
      {
        v27 = 20;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = (v20 * 100.0);
    }

    v28 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 67109632;
      *v32 = v27;
      *&v32[4] = 2048;
      *&v32[6] = v20;
      v33 = 2048;
      v34 = v24;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "TCP progress metrics score: %u, problem ratio: %.2f (baseline: %.2f)", &v31, 0x1Cu);
    }

    v29 = self->_wifiRelay;
    objc_sync_enter(v29);
    [(NetworkStateRelay *)self->_wifiRelay setTcpProgressHintsScore:v27];
    objc_sync_exit(v29);
  }

  else
  {
    v21 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v31) = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Assessing progress requires a non-NULL metric!", &v31, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"noBackhaulEnabled"])
  {
    [NoBackhaulHandler observeValueForKeyPath:changeCopy ofObject:self change:v34 context:v33];
  }

  else if ([pathCopy isEqualToString:@"stepper"])
  {
    [NoBackhaulHandler observeValueForKeyPath:v32 ofObject:? change:? context:?];
  }

  else if ([pathCopy isEqualToString:@"stuckDefRoute"])
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && ([v14 BOOLValue] & 1) == 0)
    {
      [(NoBackhaulHandler *)self resumedDefRouteProgress];
    }
  }

  else
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __68__NoBackhaulHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_4;
    v26 = &unk_27898D090;
    contextCopy = context;
    v27 = objectCopy;
    selfCopy = self;
    v29 = pathCopy;
    v17 = changeCopy;
    v30 = v17;
    v18 = _Block_copy(&v23);
    v19 = [v17 objectForKeyedSubscript:{*MEMORY[0x277CCA2F0], v23, v24, v25, v26}];
    v20 = [v17 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v21 = v20;
    if (!v19 || v20)
    {
      queue = [(ExpertSystemHandlerCore *)self queue];
      dispatch_async(queue, v18);
    }

    else
    {
      v18[2](v18);
    }
  }
}

void __68__NoBackhaulHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_4(uint64_t a1)
{
  v138 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v116 = [*(a1 + 32) functionalInterfaceType];
  }

  else
  {
    v116 = 0;
  }

  v3 = bbhLogHandle;
  v4 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
  v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
  v6 = MEMORY[0x277CCA2F0];
  if (v4)
  {
    v7 = *(*(a1 + 40) + 40);
    v8 = v3;
    v9 = [v7 label];
    v10 = *(a1 + 48);
    v115 = *v6;
    v11 = [*(a1 + 56) objectForKeyedSubscript:?];
    *buf = 138413058;
    v129 = v9;
    v130 = 2112;
    v131 = v10;
    v132 = 2112;
    v133 = v11;
    v134 = 1024;
    *v135 = v116;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Current state: %@, changed: %@ to %@ for net type %d", buf, 0x26u);
  }

  else
  {
    v115 = *MEMORY[0x277CCA2F0];
  }

  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = *(*(a1 + 40) + 48);
  v12 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
  if (!v12)
  {
    v16 = 0;
    goto LABEL_95;
  }

  v14 = v12;
  v15 = 0;
  v16 = 0;
  *&v13 = 138413314;
  v111 = v13;
  v114 = v1;
  while (2)
  {
    v112 = v15;
    v113 = v16;
    v122 = *v125;
LABEL_10:
    v17 = 0;
    v117 = v14;
    while (1)
    {
      if (*v125 != v122)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v124 + 1) + 8 * v17);
      v19 = v5[922];
      if (v18 == *(*(a1 + 40) + v19))
      {
        goto LABEL_77;
      }

      v20 = [*(*(&v124 + 1) + 8 * v17) entryWiFiPreds];
      v21 = [*(*(a1 + 40) + v19) label];
      v22 = [v20 objectForKeyedSubscript:v21];

      v23 = [v18 entryCellPreds];
      v24 = [*(*(a1 + 40) + v19) label];
      v25 = [v23 objectForKeyedSubscript:v24];

      if (v22)
      {
        v26 = v25 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        v27 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(*(a1 + 40) + v19);
          v29 = v27;
          v30 = [v28 label];
          v31 = *(a1 + 48);
          [*(a1 + 56) objectForKeyedSubscript:v115];
          v33 = v32 = v25;
          v34 = [v18 label];
          *buf = 138413826;
          v129 = v30;
          v130 = 2112;
          v131 = v31;
          v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
          v132 = 2112;
          v133 = v33;
          v134 = 1024;
          *v135 = v116;
          *&v135[4] = 2112;
          *&v135[6] = v34;
          *&v135[14] = 2048;
          *&v135[16] = v22;
          *&v135[24] = 2048;
          v136 = v32;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "Current state: %@, changed: %@ to %@ for net type %d, ineligible for %@ as nil pred, wifi (%p) cell (%p)", buf, 0x44u);

          v25 = v32;
        }

        goto LABEL_76;
      }

      log = v18;
      v35 = [v18 rank];
      v119 = [*(*(a1 + 40) + v19) rank];
      v36 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
      v37 = v36;
      if (v22 == v36)
      {
      }

      else
      {
        v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"FALSEPREDICATE"];

        if (v22 != v38)
        {
          v39 = bbhLogHandle;
          if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(*(a1 + 40) + 64);
            *buf = 138412290;
            v129 = v40;
            _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v41 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE", v111];
      v42 = v41;
      if (v25 == v41)
      {

        v44 = log;
      }

      else
      {
        v43 = [MEMORY[0x277CCAC30] predicateWithFormat:@"FALSEPREDICATE"];

        v26 = v25 == v43;
        v44 = log;
        if (!v26)
        {
          v45 = bbhLogHandle;
          if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v46 = *(*(a1 + 40) + 56);
            *buf = 138412290;
            v129 = v46;
            _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }
        }
      }

      v47 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v129 = v22;
        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "current wpred = '%@'", buf, 0xCu);
      }

      v48 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v129 = v25;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "current cpred = '%@'", buf, 0xCu);
      }

      v49 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(*(a1 + 40) + 64);
        v51 = v49;
        if ([v22 evaluateWithObject:v50])
        {
          v52 = "true";
        }

        else
        {
          v52 = "false";
        }

        if (v35 <= v119)
        {
          v53 = "de-";
        }

        else
        {
          v53 = "";
        }

        if (v35 <= v119)
        {
          v54 = "||";
        }

        else
        {
          v54 = "&&";
        }

        v14 = v117;
        v55 = [v25 evaluateWithObject:*(*(a1 + 40) + 56)];
        *buf = 136315906;
        v56 = "true";
        if (!v55)
        {
          v56 = "false";
        }

        v129 = v53;
        v130 = 2080;
        v131 = v52;
        v44 = log;
        v132 = 2080;
        v133 = v54;
        v134 = 2080;
        *v135 = v56;
        _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEFAULT, "Evaluating possible %sescalation, truthValue(wpred) = '%s' %s truthValue(cpred) = '%s'", buf, 0x2Au);
      }

      v57 = [*(*(a1 + 40) + v19) noPreconditions];
      v58 = *(a1 + 40);
      if (!v57)
      {
        break;
      }

      v59 = [v25 evaluateWithObject:v58[7]];
      v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
      if (v35 <= v119)
      {
        if (v59)
        {
          goto LABEL_80;
        }

LABEL_63:
        if ([v22 evaluateWithObject:*(*(a1 + 40) + 64)])
        {
          goto LABEL_80;
        }

        goto LABEL_74;
      }

      if (v59)
      {
        goto LABEL_63;
      }

LABEL_74:
      v61 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(*(a1 + 40) + v19);
        loga = v61;
        v63 = [v62 label];
        v64 = v22;
        v65 = *(a1 + 48);
        v66 = [*(a1 + 56) objectForKeyedSubscript:v115];
        v67 = [v44 label];
        v68 = [*(a1 + 40) systemForeground];
        v69 = [v64 evaluateWithObject:*(*(a1 + 40) + 64)];
        v70 = [v25 evaluateWithObject:*(*(a1 + 40) + 56)];
        *buf = 138414082;
        v129 = v63;
        v130 = 2112;
        v131 = v65;
        v22 = v64;
        v132 = 2112;
        v133 = v66;
        v134 = 1024;
        *v135 = v116;
        *&v135[4] = 2112;
        *&v135[6] = v67;
        *&v135[14] = 1024;
        *&v135[16] = v68;
        *&v135[20] = 1024;
        *&v135[22] = v69;
        v14 = v117;
        LOWORD(v136) = 1024;
        *(&v136 + 2) = v70;
        _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_DEFAULT, "Current state: %@, changed: %@ to %@ for net type %d, eligible for %@ but constraints unsatisfied (%d,%d,%d)", buf, 0x42u);

        v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
      }

LABEL_76:

LABEL_77:
      if (v14 == ++v17)
      {
        v14 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_99;
      }
    }

    v60 = [v58 systemForeground];
    v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
    if (v35 > v119)
    {
      if (v60 && ([*(a1 + 40) callInForeground] & 1) == 0 && (objc_msgSend(*(a1 + 40), "dndWhileDriving") & 1) == 0 && objc_msgSend(*(*(a1 + 40) + 88), "screenNotDark") && (objc_msgSend(*(*(a1 + 40) + 72), "rnfActivated") & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 72), "wifiCallUnderway") & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 80), "cellOutranksWiFi") & 1) == 0 && objc_msgSend(v25, "evaluateWithObject:", *(*(a1 + 40) + 56)))
      {
        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v60 && ([*(a1 + 40) callInForeground] & 1) == 0 && (objc_msgSend(*(a1 + 40), "dndWhileDriving") & 1) == 0 && objc_msgSend(*(*(a1 + 40) + 88), "screenNotDark") && (objc_msgSend(*(*(a1 + 40) + 72), "rnfActivated") & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 72), "wifiCallUnderway") & 1) == 0 && (objc_msgSend(*(*(a1 + 40) + 80), "cellOutranksWiFi") & 1) == 0 && (objc_msgSend(v25, "evaluateWithObject:", *(*(a1 + 40) + 56)) & 1) == 0 && !objc_msgSend(v22, "evaluateWithObject:", *(*(a1 + 40) + 64)))
    {
      goto LABEL_74;
    }

LABEL_80:
    if (v114)
    {
      v71 = [*(*(a1 + 40) + v19) metric];
      [v71 setEgressTrigger:v114];

      v72 = [*(*(a1 + 40) + v19) metric];
      [v72 setEgressTriggerInterfaceType:v116];

      v73 = [*(*(a1 + 40) + v19) metric];
      [v73 populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 40) + 64) cellRelay:*(*(a1 + 40) + 56) isIngress:0];
    }

    v74 = [*(*(a1 + 40) + v19) exitAction];
    v75 = v74[2]();

    v76 = bbhLogHandle;
    v77 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
    if ((v75 & 1) == 0)
    {
      if (v77)
      {
        v98 = *(*(a1 + 40) + v19);
        v99 = v76;
        v100 = [v98 label];
        *buf = 138412290;
        v129 = v100;
        _os_log_impl(&dword_23255B000, v99, OS_LOG_TYPE_DEFAULT, "Current state: %@, exit denied", buf, 0xCu);
      }

LABEL_99:
      v16 = v113;
      break;
    }

    if (v77)
    {
      v78 = *(*(a1 + 40) + v19);
      v79 = v76;
      v80 = [v78 label];
      v81 = *(a1 + 48);
      v82 = [*(a1 + 56) objectForKeyedSubscript:v115];
      v83 = [v44 label];
      *buf = v111;
      v129 = v80;
      v130 = 2112;
      v131 = v81;
      v5 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
      v132 = 2112;
      v133 = v82;
      v134 = 1024;
      *v135 = v116;
      *&v135[4] = 2112;
      *&v135[6] = v83;
      _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEFAULT, "Current state: %@, changed: %@ to %@ for net type %d, eligible for %@ and constraints satisfied", buf, 0x30u);

      v44 = log;
    }

    [*(*(a1 + 40) + v19) setPreviousState:0];
    v84 = *(a1 + 40);
    v85 = *(v84 + v19);
    v86 = [*(v84 + 48) objectAtIndexedSubscript:0];

    if (v85 != v86)
    {
      v87 = [*(*(a1 + 40) + v19) sojournTime];
      [v87 stop];
    }

    v16 = *(*(a1 + 40) + v19);

    objc_storeStrong((*(a1 + 40) + v19), v44);
    [*(*(a1 + 40) + v19) setPreviousState:v16];
    v88 = *(a1 + 40);
    v89 = *(v88 + v19);
    v90 = [*(v88 + 48) objectAtIndexedSubscript:0];

    if (v89 != v90)
    {
      v91 = [*(*(a1 + 40) + v19) sojournTime];
      [v91 start];
    }

    v92 = [*(*(a1 + 40) + v19) entryAction];
    v92[2]();

    if (v114)
    {
      v93 = [*(*(a1 + 40) + 48) indexOfObject:v16];
      v94 = [*(*(a1 + 40) + v19) metric];
      [v94 setPreviousState:v93];

      v95 = [*(*(a1 + 40) + v19) metric];
      [v95 setIngressTrigger:v114];

      v96 = [*(*(a1 + 40) + v19) metric];
      [v96 setIngressTriggerInterfaceType:v116];

      v97 = [*(*(a1 + 40) + v19) metric];
      [v97 populateNetworkPropertiesOnWiFiRelay:*(*(a1 + 40) + 64) cellRelay:*(*(a1 + 40) + 56) isIngress:1];
    }

    if (v112 == 10)
    {
      v101 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        v102 = v101;
        v103 = [v16 label];
        v104 = [*(*(a1 + 40) + v19) label];
        v105 = *(a1 + 48);
        v106 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v107 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        *buf = 138413570;
        v129 = v103;
        v130 = 2112;
        v131 = v104;
        v132 = 2112;
        v133 = v105;
        v134 = 2112;
        *v135 = v106;
        *&v135[8] = 2112;
        *&v135[10] = v107;
        *&v135[18] = 1024;
        *&v135[20] = v116;
        _os_log_impl(&dword_23255B000, v102, OS_LOG_TYPE_ERROR, "Pingponging from %@ to %@ upon change %@ from %@ to %@ for net type %d", buf, 0x3Au);
      }

      v108 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        v109 = *(*(a1 + 40) + 64);
        *buf = 138412290;
        v129 = v109;
        _os_log_impl(&dword_23255B000, v108, OS_LOG_TYPE_ERROR, "WiFi state: %@", buf, 0xCu);
      }

      [*(a1 + 40) _bringStateToIdle];
    }

    else
    {
      v15 = v112 + 1;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = *(*(a1 + 40) + 48);
      v14 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
      if (v14)
      {
        continue;
      }

LABEL_95:
    }

    break;
  }

  v110 = *MEMORY[0x277D85DE8];
}

- (void)reportAutoBugCaptureCaseWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context events:(id)events
{
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  contextCopy = context;
  eventsCopy = events;
  v16 = objc_alloc_init(MEMORY[0x277D6AFC8]);
  v17 = v16;
  if (v16)
  {
    v18 = [v16 signatureWithDomain:domainCopy type:typeCopy subType:subtypeCopy subtypeContext:contextCopy detectedProcess:@"symptomsd" triggerThresholdValues:0];
    [v17 snapshotWithSignature:v18 duration:eventsCopy events:0 payload:0 actions:&__block_literal_global_302 reply:0.0];
  }

  else
  {
    v19 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "SDRDiagnosticReporter is nil", v20, 2u);
    }
  }
}

void __91__NoBackhaulHandler_reportAutoBugCaptureCaseWithDomain_type_subtype_subtypeContext_events___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "ABC response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)willPollFlows
{
  v2 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "BBH willPollFlows", v3, 2u);
  }
}

- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic
{
  periodicCopy = periodic;
  v12 = *MEMORY[0x277D85DE8];
  v6 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134218240;
    atCopy = at;
    v10 = 1024;
    v11 = periodicCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "BBH didPollFlowsAt: %.2f, Periodic? %d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error
{
  probeCopy = probe;
  errorCopy = error;
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NoBackhaulHandler_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke;
  block[3] = &unk_27898D0E0;
  v16 = probeCopy;
  selfCopy = self;
  v18 = errorCopy;
  countCopy = count;
  iterationsCopy = iterations;
  v13 = errorCopy;
  v14 = probeCopy;
  dispatch_async(queue, block);
}

void __81__NoBackhaulHandler_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) ipAddress];
  v4 = MEMORY[0x277CCACA8];
  v5 = *v2;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@.%@", v7, v3];

  v9 = [*(*(a1 + 40) + 264) objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = [*(*(a1 + 40) + 40) label];
    v11 = [v10 isEqualToString:@"positive"];

    if (v11)
    {
      if (*(a1 + 48))
      {
        v12 = 0;
      }

      else
      {
        v12 = *(a1 + 56) >= *(*(a1 + 40) + 288);
      }

      v15 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "failed";
        v17 = *(a1 + 48);
        v18 = *(*(a1 + 40) + 288);
        if (v12)
        {
          v16 = "success";
        }

        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        *buf = 138479107;
        *&buf[4] = v3;
        *&buf[12] = 2080;
        *&buf[14] = v16;
        *&buf[22] = 2048;
        v40 = v19;
        v41 = 2048;
        v42 = v20;
        v43 = 2048;
        v44 = v18;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Ping to %{private}@ completed %s (%lu out of %lu, required %lu), error = %@", buf, 0x3Eu);
      }

      if (v12)
      {
        v21 = &unk_2847EF8A8;
      }

      else
      {
        v21 = &unk_2847EF8C0;
      }

      [*(*(a1 + 40) + 272) setObject:v21 forKeyedSubscript:v8];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v40 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v22 = *(*(a1 + 40) + 272);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __81__NoBackhaulHandler_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke_309;
      v32[3] = &unk_27898D0B8;
      v32[4] = buf;
      v32[5] = &v33;
      [v22 enumerateKeysAndObjectsUsingBlock:v32];
      if (*(*&buf[8] + 24))
      {
        v23 = bbhLogHandle;
        if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(*&buf[8] + 24);
          *v37 = 134217984;
          v38 = v24;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Waiting for %lu ICMP probes to finish", v37, 0xCu);
        }
      }

      else
      {
        v25 = v34[3];
        v26 = bbhLogHandle;
        v27 = os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v27)
          {
            v28 = v34[3];
            *v37 = 134217984;
            v38 = v28;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Bringing state to Idle after connectivity tests to %lu default gateways failed ", v37, 0xCu);
          }

          v29 = [*(*(a1 + 40) + 40) metric];
          v30 = v29;
          if (v29)
          {
            [v29 setEgressTrigger:19];
            [v30 setEgressTriggerInterfaceType:3];
          }

          [*(a1 + 40) _bringStateToIdle];
          [*(a1 + 40) dampeningSetPrecedent];
        }

        else
        {
          if (v27)
          {
            *v37 = 0;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Posting upward after connectivities to all default gateways were successfully tested", v37, 2u);
          }

          [*(a1 + 40) _postUpwards:1];
        }

        [*(*(a1 + 40) + 272) removeAllObjects];
      }

      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v14 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        *&buf[4] = v3;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Ping to %{private}@ completed outside positive state, resetting probeStates", buf, 0xCu);
      }

      [*(*(a1 + 40) + 272) removeAllObjects];
    }

    [*(*(a1 + 40) + 264) setObject:0 forKeyedSubscript:v8];
  }

  else
  {
    v13 = bbhLogHandle;
    if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      *&buf[4] = v3;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Received a ping result to %{private}@, which is no longer in an active probes list", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __81__NoBackhaulHandler_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke_309(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 isEqualToNumber:&unk_2847EF8A8];
  v6 = [v4 isEqualToNumber:&unk_2847EF8C0];

  if ((v5 | v6) & 1) == 0 || (v6)
  {
    v7 = 32;
    if ((v5 | v6))
    {
      v7 = 40;
    }

    ++*(*(*(a1 + v7) + 8) + 24);
  }
}

- (void)addPendingEventDescription:(id)description
{
  v24 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if (!self->_pendingEventDescriptions)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEventDescriptions = self->_pendingEventDescriptions;
    self->_pendingEventDescriptions = v5;
  }

  eventKey = [descriptionCopy eventKey];
  if ([eventKey hasPrefix:@"com.apple.apsd.connection-"])
  {
    eventData = [descriptionCopy eventData];
    if (eventData && (*(eventData + 4) & 1) != 0)
    {
      v9 = [NoBackhaulHandler _nwInterfaceTypeFromAPSDQualifier:*(eventData + 24)];
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = self->_pendingEventDescriptions;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __48__NoBackhaulHandler_addPendingEventDescription___block_invoke;
    v19 = &unk_27898D108;
    v20 = v10;
    v21 = v9;
    v12 = v10;
    [(NSMutableArray *)v11 enumerateObjectsUsingBlock:&v16];
    [(NSMutableArray *)self->_pendingEventDescriptions removeObjectsInArray:v12, v16, v17, v18, v19];
  }

  if ([(NSMutableArray *)self->_pendingEventDescriptions count]>= 5)
  {
    do
    {
      v13 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Pending events queue full -- dropping oldest event", buf, 2u);
      }

      [(NSMutableArray *)self->_pendingEventDescriptions removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_pendingEventDescriptions count]> 4);
  }

  v14 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = eventKey;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Appending symptom with key %@ to pending event queue", buf, 0xCu);
  }

  [(NSMutableArray *)self->_pendingEventDescriptions addObject:descriptionCopy];

  v15 = *MEMORY[0x277D85DE8];
}

void __48__NoBackhaulHandler_addPendingEventDescription___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventKey];
  if ([v4 hasPrefix:@"com.apple.apsd.connection-"])
  {
    v5 = [v3 eventData];
    if (v5 && (*(v5 + 4) & 1) != 0)
    {
      v6 = [NoBackhaulHandler _nwInterfaceTypeFromAPSDQualifier:*(v5 + 24)];
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 40) == v6)
    {
      v7 = bbhLogHandle;
      if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_INFO))
      {
        v9 = 134217984;
        v10 = v6;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "De-duping APSD symptom on interface %ld", &v9, 0xCu);
      }

      [*(a1 + 32) addObject:v3];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)drainPendingEventDescriptions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_pendingEventDescriptions copy];
  pendingEventDescriptions = self->_pendingEventDescriptions;
  self->_pendingEventDescriptions = 0;

  v5 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v19 = [v3 count];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Draining %lu pending event descriptions", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NoBackhaulHandler *)self processSymptom:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)processSymptom:(id)symptom
{
  v26 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"com.apple.apsd.connection-failure"];
  v7 = [eventKey isEqualToString:v6];

  v8 = [SymptomStore keyFromSymptomName:@"com.apple.apsd.connection-ok"];
  v9 = [eventKey isEqualToString:v8];

  if ((v7 & 1) != 0 || v9)
  {
    eventData = [symptomCopy eventData];
    if (eventData && (*(eventData + 4) & 1) != 0)
    {
      v19 = *(eventData + 24);
      v20 = [NoBackhaulHandler _nwInterfaceTypeFromAPSDQualifier:v19];
      if ((v20 - 1) <= 1)
      {
        [(NoBackhaulHandler *)self apsdFailing:v7 onInterface:v20];
        goto LABEL_25;
      }

      v14 = bbhLogHandle;
      if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v24 = 134217984;
      v25 = v19;
      v15 = "Received an APSN connection symptom with unsupported interface: %llu";
    }

    else
    {
      v14 = bbhLogHandle;
      if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v24 = 138412290;
      v25 = eventKey;
      v15 = "Missing qualifier for symptom: %@";
    }

LABEL_23:
    v21 = v14;
    goto LABEL_24;
  }

  v10 = [SymptomStore keyFromSymptomName:@"SYMPTOM_BACKHAUL_FEEDBACK"];
  v11 = [eventKey isEqualToString:v10];

  if (v11)
  {
    eventData2 = [symptomCopy eventData];
    if (eventData2 && (~*(eventData2 + 4) & 3) == 0)
    {
      [(NoBackhaulHandler *)self clientFeedback:*(eventData2 + 32) != 0];
      goto LABEL_25;
    }

    v14 = bbhLogHandle;
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v24 = 138412290;
    v25 = eventKey;
    v15 = "Unable to process symptom: %@";
    goto LABEL_23;
  }

  v16 = [SymptomStore keyFromSymptomName:@"com.apple.nbsm.stepper"];
  v17 = [eventKey isEqualToString:v16];

  v18 = bbhLogHandle;
  if (!v17)
  {
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v24 = 138412290;
    v25 = eventKey;
    v15 = "Unable to process symptom: %@";
    v21 = v18;
LABEL_24:
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, v15, &v24, 0xCu);
    goto LABEL_25;
  }

  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "received com.apple.nbsm.stepper symptom", &v24, 2u);
  }

  [(NoBackhaulHandler *)self setStepper:[(NoBackhaulHandler *)self stepper]+ 1];
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)internalStateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_administrativeState];
  [dictionary setObject:v4 forKeyedSubscript:@"adminEnabled"];

  label = [(ExpertSystemStateCore *)self->_currentState label];
  [dictionary setObject:label forKeyedSubscript:@"stateMachineState"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NoBackhaulHandler *)self systemForeground])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [dictionary2 setObject:v7 forKeyedSubscript:@"systemForeground"];
  if (self->_verifyDefaultGateway)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [dictionary2 setObject:v8 forKeyedSubscript:@"verifyDefaultGateway"];
  [dictionary setObject:dictionary2 forKeyedSubscript:@"internalStateVariables"];

  return dictionary;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NoBackhaulHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_18 != -1)
  {
    dispatch_once(&sharedInstance_pred_18, block);
  }

  v2 = sharedInstance_sharedInstance_18;

  return v2;
}

BOOL __35__NoBackhaulHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_18;
  sharedInstance_sharedInstance_18 = v1;

  v3 = sharedInstance_sharedInstance_18;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  v6 = sharedInstance_sharedInstance_18;

  return [ManagedEventTransport setInfoProvider:v6 forId:7];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[NoBackhaulHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

+ (id)internalStateDictionary
{
  v2 = +[NoBackhaulHandler sharedInstance];
  internalStateDictionary = [v2 internalStateDictionary];

  return internalStateDictionary;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  blockCopy = block;
  queue = [(ExpertSystemHandlerCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NoBackhaulHandler_generateInfoForId_context_uuid_completionBlock___block_invoke;
  v12[3] = &unk_27898D130;
  idCopy = id;
  contextCopy = context;
  v12[4] = self;
  v13 = blockCopy;
  v11 = blockCopy;
  dispatch_async(queue, v12);
}

void __68__NoBackhaulHandler_generateInfoForId_context_uuid_completionBlock___block_invoke(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) label];
  v3 = [v2 isEqualToString:@"positive"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [*(a1[4] + 40) label];
    v6 = [v5 isEqualToString:@"broken"];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[6];
    v9 = a1[7];
    v10 = *(a1[4] + 40);
    v11 = v7;
    v12 = [v10 label];
    v16 = 134218754;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "received query (id/context): %lld/%s, current state: %@, code: %llu", &v16, 0x2Au);
  }

  v13 = a1[5];
  v14 = [MEMORY[0x277CBEAA8] date];
  (*(v13 + 16))(v13, 0, 0, v14, 0, v4, 0);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)noteSymptom:(id)symptom
{
  v17 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  administrativeState = self->_administrativeState;
  if (administrativeState == 3)
  {
    v10 = bbhLogHandle;
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v16[0]) = 0;
    v7 = "symptom received when state machine is in TimedWait!, dropping";
    v8 = v10;
    v9 = OS_LOG_TYPE_ERROR;
LABEL_11:
    v11 = 2;
    goto LABEL_14;
  }

  if (administrativeState == 2)
  {
    v6 = bbhLogHandle;
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    LOWORD(v16[0]) = 0;
    v7 = "symptom received before state machine is ready, dropping";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_11;
  }

  if (administrativeState != 1)
  {
    v12 = bbhLogHandle;
    if (!os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v13 = self->_administrativeState;
    v16[0] = 67109120;
    v16[1] = v13;
    v7 = "symptom received when state machine is in unknown state %d!, dropping";
    v8 = v12;
    v9 = OS_LOG_TYPE_ERROR;
    v11 = 8;
LABEL_14:
    _os_log_impl(&dword_23255B000, v8, v9, v7, v16, v11);
    goto LABEL_15;
  }

  if (self->_pendingEventDescriptions)
  {
    [(NoBackhaulHandler *)self drainPendingEventDescriptions];
  }

  [(NoBackhaulHandler *)self processSymptom:symptomCopy];
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_captureProgressFor:(void *)a1 since:interval:capWindowTo:iteration:renewTest:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = bbhLogHandle;
  if (os_log_type_enabled(bbhLogHandle, OS_LOG_TYPE_ERROR))
  {
    v3 = v2;
    v5 = 134217984;
    v6 = [a1 count];
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Expected one progress probe, found %ld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(void *)a2 change:context:.cold.1(void *a1, void *a2)
{
  v4 = [a1 queue];
  *a2 = MEMORY[0x277D85DD0];
  a2[1] = 3221225472;
  a2[2] = __68__NoBackhaulHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
  a2[3] = &unk_27898A0C8;
  a2[4] = a1;
  dispatch_async(v4, a2);
}

- (void)observeValueForKeyPath:(void *)a1 ofObject:(_DWORD *)a2 change:(void *)a3 context:(void *)a4 .cold.2(void *a1, _DWORD *a2, void *a3, void *a4)
{
  v7 = [a1 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v8 = v7;
  if (v7)
  {
    if ([v7 BOOLValue] && a2[6] == 2)
    {
      v9 = [a2 queue];
      v10 = v9;
      *a3 = MEMORY[0x277D85DD0];
      a3[1] = 3221225472;
      a3[2] = __68__NoBackhaulHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
      a3[3] = &unk_27898A0C8;
      a3[4] = a2;
      v11 = a3;
LABEL_8:
      dispatch_async(v9, v11);

      goto LABEL_9;
    }

    if (([v8 BOOLValue] & 1) == 0 && a2[6] == 1)
    {
      v9 = [a2 queue];
      v10 = v9;
      *a4 = MEMORY[0x277D85DD0];
      a4[1] = 3221225472;
      a4[2] = __68__NoBackhaulHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      a4[3] = &unk_27898A0C8;
      a4[4] = a2;
      v11 = a4;
      goto LABEL_8;
    }
  }

LABEL_9:
}

@end