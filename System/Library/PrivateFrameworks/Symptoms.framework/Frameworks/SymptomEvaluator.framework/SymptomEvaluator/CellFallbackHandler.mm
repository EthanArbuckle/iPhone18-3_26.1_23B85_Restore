@interface CellFallbackHandler
+ (BOOL)turboRNF;
+ (CellFallbackHandler)sharedInstance;
+ (float)appPolicyDenialsScore;
+ (id)configureClass:(id)a3;
+ (id)internalStateDictionary;
+ (id)mdmProfilePath;
+ (void)canUseApps:(id)a3 replyQueue:(id)a4 reply:(id)a5;
+ (void)requestBoost:(unsigned int)a3;
+ (void)startRunningRNFTest;
+ (void)stopRunningRNFTestWithReply:(id)a3;
- (BOOL)_idempotentInitializationFromIdle;
- (BOOL)_idempotentInitializationFromIdleWithCellRelay:(id)a3 wifiRelay:(id)a4 motionRelay:(id)a5;
- (BOOL)_isAppName:(id)a3 withState:(int64_t)a4 inListType:(int64_t)a5;
- (BOOL)evalTurboRNF;
- (BOOL)noteSymptom:(id)a3;
- (CellFallbackHandler)init;
- (float)_appPolicyDenialsScore;
- (id)initTestInstanceWithCellRelay:(id)a3 wifiRelay:(id)a4 motionRelay:(id)a5;
- (id)internalStateDictionary;
- (int)read:(id)a3 returnedValues:(id)a4;
- (unint64_t)lookUpDataUsagePolicyForICCID:(id)a3 fromPolicies:(id)a4;
- (void)RNFTestAbortWaitForIdleUntil:(double)a3 reply:(id)a4;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)_bringStateToIdle;
- (void)_canUseApps:(id)a3 replyQueue:(id)a4 reply:(id)a5;
- (void)_completeInitialization;
- (void)_dumpState;
- (void)_peekIntoCellPlan;
- (void)_setDataUsagePolicy:(unint64_t)a3;
- (void)_setDefaultDataUsageParameters;
- (void)_setPolicyVerdictLedgerGivenAsk:(id)a3 exceptions:(id)a4 verdict:(id)a5 explain:(id)a6;
- (void)_setUnlimitedDataUsageParameters;
- (void)_setUnlimitedDataUsagePolicy:(BOOL)a3;
- (void)_toggleElevatedState;
- (void)_trackCellUsageAfterTriggerDisconnectWithNewSeries:(BOOL)a3;
- (void)_updateCellFallbackState;
- (void)_updateMptcpState;
- (void)applyDataUsagePolicyForICCID:(id)a3 givenPolicies:(id)a4;
- (void)commonInit;
- (void)dealloc;
- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)populateCellFallbackPropertiesForInterfaceRelay:(id)a3 onCAMetric:(id)a4;
- (void)postHasAdviceNotification:(BOOL)a3;
- (void)postMotionDetector:(unsigned int)a3;
- (void)postSpeculativeTelemetryForKey:(id)a3 oldValue:(id)a4 newValue:(id)a5;
- (void)postUpwards:(int64_t)a3;
- (void)postUpwards:(int64_t)a3 appsWithStates:(id)a4 always:(BOOL)a5;
- (void)processRefreshedRNFDataUsageWithGrace:(BOOL)a3;
- (void)requestBoost:(unsigned int)a3;
- (void)rnfTestAbortCFSMWentIdleReply:(BOOL)a3;
- (void)sendAppCanUseAlternateNetworkMetric:(id)a3 deliberation:(int)a4 rationale:(int)a5;
- (void)setBoosted:(BOOL)a3;
- (void)setFallbackAdvice:(int64_t)a3;
- (void)setRnfActivated:(BOOL)a3;
- (void)setRnfAskedOutrank:(BOOL)a3;
- (void)setWifiCallUnderway:(BOOL)a3;
- (void)startElevatedStateWatchdogWithPeriod:(unint64_t)a3;
- (void)stopElevatedStateWatchdog;
- (void)stopRNFTestIdleTimer;
- (void)stopWrongUsageGracePeriodTimer;
@end

@implementation CellFallbackHandler

void __27__CellFallbackHandler_init__block_invoke_216(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"Roaming"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (*(*(a1 + 32) + 381) & 1) == 0 && [v4 BOOLValue])
    {
      v5 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM WiFi roaming event", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__CellFallbackHandler_init__block_invoke_217;
      block[3] = &unk_27898A0C8;
      v7 = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

+ (CellFallbackHandler)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CellFallbackHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_22 != -1)
  {
    dispatch_once(&sharedInstance_pred_22, block);
  }

  v2 = sharedInstance_sharedInstance_22;

  return v2;
}

- (void)_bringStateToIdle
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->states objectAtIndexedSubscript:0];
  currentState = self->currentState;
  if (currentState)
  {
    v5 = [currentState label];
    v6 = [v3 label];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->currentState;
        v10 = v8;
        v11 = [(State *)v9 label];
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM Idling from %@ state", buf, 0xCu);
      }

      states = self->states;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __40__CellFallbackHandler__bringStateToIdle__block_invoke;
      v17[3] = &unk_27898D248;
      v17[4] = self;
      [(NSArray *)states enumerateObjectsWithOptions:2 usingBlock:v17];
    }
  }

  else
  {
    v13 = [(NSArray *)self->states objectAtIndexedSubscript:0];
    v14 = self->currentState;
    self->currentState = v13;

    v15 = [self->currentState entryAction];
    v15[2]();
  }

  [self->currentState setPreviousState:0];

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)turboRNF
{
  v2 = +[CellFallbackHandler sharedInstance];
  v3 = [v2 turboRNF];

  return v3;
}

- (CellFallbackHandler)init
{
  v69.receiver = self;
  v69.super_class = CellFallbackHandler;
  v2 = [(CellFallbackHandler *)&v69 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_19;
  }

  [(CellFallbackHandler *)v2 commonInit];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __27__CellFallbackHandler_init__block_invoke;
  v67[3] = &unk_27898A690;
  v5 = v3;
  v68 = v5;
  v6 = [v4 addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v67];
  relayReadyObserver = v5->relayReadyObserver;
  v5->relayReadyObserver = v6;

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __27__CellFallbackHandler_init__block_invoke_3;
  v65[3] = &unk_27898A690;
  v8 = v5;
  v66 = v8;
  v9 = [v4 addObserverForName:@"kNotificationCurrentICCIDChange" object:0 queue:0 usingBlock:v65];
  iccidObserver = v8->iccidObserver;
  v8->iccidObserver = v9;

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __27__CellFallbackHandler_init__block_invoke_216;
  v63[3] = &unk_27898A690;
  v11 = v8;
  v64 = v11;
  v12 = [v4 addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v63];
  wifiEpochObserver = v11->wifiEpochObserver;
  v11->wifiEpochObserver = v12;

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __27__CellFallbackHandler_init__block_invoke_2_218;
  v61[3] = &unk_27898A690;
  v14 = v11;
  v62 = v14;
  v15 = [v4 addObserverForName:@"kAppStateStatsNotificationAppsWithStatesChanged" object:0 queue:0 usingBlock:v61];
  appsActivityObserver = v14->appsActivityObserver;
  v14->appsActivityObserver = v15;

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __27__CellFallbackHandler_init__block_invoke_4;
  v59[3] = &unk_27898A690;
  v17 = v14;
  v60 = v17;
  v18 = [v4 addObserverForName:@"kNotificationPolledFlowAssessment" object:0 queue:0 usingBlock:v59];
  polledFlowObserver = v17->polledFlowObserver;
  v17->polledFlowObserver = v18;

  v54 = MEMORY[0x277D85DD0];
  v55 = 3221225472;
  v56 = __27__CellFallbackHandler_init__block_invoke_224;
  v57 = &unk_27898A0C8;
  v20 = v17;
  v58 = v20;
  v21 = tcp_connection_fallback_watcher_create();
  v20->cellFallbackObserver = v21;
  if (!v21)
  {
    v22 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "CFSM: Unable to create cell fallback observer", buf, 2u);
    }
  }

  v48 = MEMORY[0x277D85DD0];
  v49 = 3221225472;
  v50 = __27__CellFallbackHandler_init__block_invoke_225;
  v51 = &unk_27898B048;
  v23 = v20;
  v52 = v23;
  v24 = MEMORY[0x277D85CD0];
  v25 = network_config_mptcp_watcher_create();
  mptcpObserver = v23->mptcpObserver;
  v23->mptcpObserver = v25;

  if (!v23->mptcpObserver)
  {
    v27 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "CFSM: Unable to create mptcp observer", buf, 2u);
    }
  }

  v23->hasMDMProfile = 0;
  [(CellFallbackHandler *)v23 _setDataUsagePolicy:2];
  v28 = objc_alloc(MEMORY[0x277CF6F18]);
  v29 = MEMORY[0x277D85CD0];
  v30 = [v28 initWithQueue:MEMORY[0x277D85CD0]];
  cellPlanObserver = v23->cellPlanObserver;
  v23->cellPlanObserver = v30;

  v32 = v23->cellPlanObserver;
  if (v32)
  {
    [v32 setDelegate:v23];
    [(CellFallbackHandler *)v23 _peekIntoCellPlan];
  }

  else
  {
    v33 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "CFSM data plan, failed to allocate cell plan observer", buf, 2u);
    }
  }

  v34 = objc_alloc_init(CanUseAppsCache);
  appsCache = v23->appsCache;
  v23->appsCache = v34;

  v36 = v23->appsCache;
  if (v36)
  {
    signal(29, 1);
    v37 = MEMORY[0x277D85CD0];
    v38 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, MEMORY[0x277D85CD0]);
    v39 = init_siginfo_3;
    init_siginfo_3 = v38;

    v40 = init_siginfo_3;
    if (init_siginfo_3)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __27__CellFallbackHandler_init__block_invoke_229;
      handler[3] = &unk_27898A0C8;
      v47 = v23;
      dispatch_source_set_event_handler(v40, handler);
      dispatch_resume(init_siginfo_3);
    }

    v45 = v23;
    v41 = MEMORY[0x277D85CD0];
    os_state_add_handler();
  }

  else
  {
    v42 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "CFSM canUse cache: failed to initialize", buf, 2u);
    }
  }

  if (!v36)
  {
    v43 = 0;
  }

  else
  {
LABEL_19:
    v43 = v3;
  }

  return v43;
}

void __27__CellFallbackHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 40)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CellFallbackHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v6 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __27__CellFallbackHandler_init__block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = v4;
    v6 = [v3 userInfo];
    v17 = 138477827;
    v18 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received ICCID change notification with userInfo: %{private}@", &v17, 0xCu);
  }

  v7 = [v3 userInfo];

  if (v7)
  {
    v8 = [v3 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"ICCID"];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if (isKindOfClass)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v11 + 328);
    *(v11 + 328) = v12;

    v14 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 328);
      v17 = 138477827;
      v18 = v15;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Current ICCID changed to: %{private}@", &v17, 0xCu);
    }

    [*(a1 + 32) applyDataUsagePolicyForICCID:*(*(a1 + 32) + 328) givenPolicies:*(*(a1 + 32) + 352)];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __27__CellFallbackHandler_init__block_invoke_2_218(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__CellFallbackHandler_init__block_invoke_3_219;
  v5[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __27__CellFallbackHandler_init__block_invoke_3_219(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
  v2 = [*(*(a1 + 32) + 8) label];
  v3 = [v9 label];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 40) userInfo];
    v6 = *(a1 + 32);
    v7 = v6[49];
    v8 = [v5 objectForKeyedSubscript:@"kAppStateKeyAppsActivityDetail"];
    [v6 postUpwards:v7 appsWithStates:v8 always:0];
  }
}

void __27__CellFallbackHandler_init__block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPExtraState];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v7 = [v3 objectForKeyedSubscript:v6];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "CFSM polled info incomplete report: %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = [v5 BOOLValue];
    v11 = [v7 intValue];
    v12 = v11;
    if (v11 == 25 || v11 == 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    if (*(*(a1 + 32) + 194) == 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v10;
    }

    v16 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "Negative";
      *buf = 136315650;
      if (v10)
      {
        v17 = "Positive";
      }

      v25 = v17;
      v26 = 1024;
      v27 = v12;
      v28 = 1024;
      v29 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CFSM polled info succinct report: %s, score: %d, net: %d", buf, 0x18u);
    }

    v18 = +[NetworkAnalyticsEngine queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __27__CellFallbackHandler_init__block_invoke_223;
    v21[3] = &unk_27898A3A0;
    v22 = *(a1 + 32);
    v23 = v15;
    dispatch_async(v18, v21);

    v19 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v3;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "CFSM polled info complete report: %@", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __27__CellFallbackHandler_init__block_invoke_225(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a2;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "CFSM: Unable to use mptcp observer, error: %d", v10, 8u);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 184));
    v5 = *(a1 + 32);
    v6 = *(v5 + 184);
    *(v5 + 184) = 0;

    v7 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x277D85DE8];

    [v8 _updateMptcpState];
  }
}

- (id)initTestInstanceWithCellRelay:(id)a3 wifiRelay:(id)a4 motionRelay:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CellFallbackHandler;
  v11 = [(CellFallbackHandler *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(CellFallbackHandler *)v11 commonInit];
    [(CellFallbackHandler *)v12 _setDataUsagePolicy:2];
    [(CellFallbackHandler *)v12 _idempotentInitializationFromIdleWithCellRelay:v8 wifiRelay:v9 motionRelay:v10];
  }

  return v12;
}

- (void)commonInit
{
  *&self->appBlacklistsFreePassCellMax = xmmword_232816CB0;
  *&self->needExtendedSignatures = 257;
  self->motionDetectorState = 2;
  self->administrativeState = 2;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  overdraftLedger = self->overdraftLedger;
  self->overdraftLedger = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  blockedRenewalLedger = self->blockedRenewalLedger;
  self->blockedRenewalLedger = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dynamicBlacklist = self->dynamicBlacklist;
  self->dynamicBlacklist = v7;

  MEMORY[0x2821F96F8](v7, dynamicBlacklist);
}

- (void)_setDefaultDataUsageParameters
{
  self->appBlacklistsSettleTime = 7200;
  self->appBlacklistsRNFToCellRatio = 0.300000012;
  self->highCapacityCellPlan = 0;
}

- (void)_setUnlimitedDataUsageParameters
{
  self->appBlacklistsSettleTime = 1;
  self->appBlacklistsRNFToCellRatio = 1.0;
  self->highCapacityCellPlan = 1;
}

- (void)_setUnlimitedDataUsagePolicy:(BOOL)a3
{
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(CellFallbackHandler *)self _setDataUsagePolicy:v3];
}

- (void)_setDataUsagePolicy:(unint64_t)a3
{
  self->currentPolicy = a3;
  if (a3 == 3)
  {
    [(CellFallbackHandler *)self _setUnlimitedDataUsageParameters];
  }

  else
  {
    [(CellFallbackHandler *)self _setDefaultDataUsageParameters];
  }
}

- (void)applyDataUsagePolicyForICCID:(id)a3 givenPolicies:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->hasMDMProfile)
  {
    v8 = [(CellFallbackHandler *)self lookUpDataUsagePolicyForICCID:self->_currentDataSimICCID fromPolicies:self->mdmProfile];
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138478083;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Policy for ICCID %{private}@ = %lu", &v12, 0x16u);
    }

    [(CellFallbackHandler *)self _setDataUsagePolicy:v8];
  }

  else
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "No MDM profile installed, no action needed", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)lookUpDataUsagePolicyForICCID:(id)a3 fromPolicies:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v9 = 2;
  v21 = 2;
  if (v7)
  {
    v10 = [v7 objectForKeyedSubscript:@"Profiles"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __66__CellFallbackHandler_lookUpDataUsagePolicyForICCID_fromPolicies___block_invoke;
      v14[3] = &unk_27898BF28;
      v16 = self;
      v17 = &v18;
      v15 = v6;
      [v10 enumerateObjectsUsingBlock:v14];
    }

    else
    {
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Policies dictionary contains invalid value for Profiles key: %@", buf, 0xCu);
      }
    }

    v9 = v19[3];
  }

  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

void __66__CellFallbackHandler_lookUpDataUsagePolicyForICCID_fromPolicies___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"Wi-Fi Assist Policy"];
    v8 = [v6 objectForKeyedSubscript:@"ICCIDs"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v8 containsObject:*(a1 + 32)])
      {
        *(*(*(a1 + 48) + 8) + 24) = [v7 unsignedIntegerValue];
        *a4 = 1;
      }

      if ([*(a1 + 40) internalBuild] && objc_msgSend(v8, "containsObject:", @"*"))
      {
        v9 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Internal build with wildcard ICCID, using unlimited data policy", &v12, 2u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 3;
        *a4 = 1;
      }
    }

    else
    {
      v10 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315906;
        v13 = "Wi-Fi Assist Policy";
        v14 = 2112;
        v15 = v7;
        v16 = 2080;
        v17 = "ICCIDs";
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unexpected class, %s = %@, %s = %@", &v12, 0x2Au);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)mdmProfilePath
{
  if (mdmProfilePath_onceToken != -1)
  {
    +[CellFallbackHandler mdmProfilePath];
  }

  v3 = mdmProfilePath_mdmPath;

  return v3;
}

void __37__CellFallbackHandler_mdmProfilePath__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  mdmProfilePath_basePath = container_system_group_path_for_identifier();
  v0 = rnfLogHandle;
  if (mdmProfilePath_basePath)
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = mdmProfilePath_basePath;
      _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_INFO, "Base path from systemgroup.com.apple.WiFiAssist = %s", buf, 0xCu);
    }

    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/Library/Preferences/com.apple.WiFiAssist.configuration.plist", mdmProfilePath_basePath, 1];
    v2 = mdmProfilePath_mdmPath;
    mdmProfilePath_mdmPath = v1;

    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = mdmProfilePath_mdmPath;
      v4 = "mdmPath = %@";
      v5 = v3;
      v6 = OS_LOG_TYPE_INFO;
      v7 = 12;
LABEL_8:
      _os_log_impl(&dword_23255B000, v5, v6, v4, buf, v7);
    }
  }

  else if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v4 = "Failed to retrieve base path from systemgroup.com.apple.WiFiAssist";
    v5 = v0;
    v6 = OS_LOG_TYPE_ERROR;
    v7 = 2;
    goto LABEL_8;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_completeInitialization
{
  v3 = +[CellFallbackHandler mdmProfilePath];
  v4 = [v3 UTF8String];
  if (v4)
  {
    v5 = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__CellFallbackHandler__completeInitialization__block_invoke;
    aBlock[3] = &unk_27898A7D0;
    aBlock[4] = self;
    v24 = v3;
    start_monitor_mdm_profile(v5, aBlock);
  }

  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v7 = shared_prefs_store;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_254;
    v22[3] = &unk_27898A0A0;
    v22[4] = self;
    prefs_add_client(shared_prefs_store, "rnf_app_settle_secs", v22);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_257;
    v21[3] = &unk_27898A0A0;
    v21[4] = self;
    prefs_add_client(v7, "rnf_app_freepass_total_mbs", v21);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_259;
    v20[3] = &unk_27898A0A0;
    v20[4] = self;
    prefs_add_client(v7, "rnf_app_freepass_one_mbs", v20);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_261;
    v19[3] = &unk_27898A0A0;
    v19[4] = self;
    prefs_add_client(v7, "rnf_app_ratio", v19);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_264;
    v18[3] = &unk_27898A0A0;
    v18[4] = self;
    prefs_add_client(v7, "rnf_high_capacity_plan", v18);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_267;
    v17[3] = &unk_27898A0A0;
    v17[4] = self;
    prefs_add_client(v7, "rnf_rxsignal_exempt", v17);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_2_271;
    v16[3] = &unk_27898A0A0;
    v16[4] = self;
    prefs_add_client(v7, "rnf_all_tcpstats", v16);
  }

  [(CellFallbackHandler *)self _idempotentInitializationFromIdle];
  v8 = +[SystemSettingsRelay defaultRelay];
  settingsRelay = self->settingsRelay;
  self->settingsRelay = v8;

  [(SystemSettingsRelay *)self->settingsRelay addObserver:self forKeyPath:@"rnfEnabled" options:7 context:0];
  [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"lqmAsystole" options:7 context:0];
  v10 = +[SystemProperties sharedInstance];
  -[CellFallbackHandler setInternalBuild:](self, "setInternalBuild:", [v10 internalBuild]);

  v11 = [CellFallbackTrialExperimentHandler alloc];
  v12 = [(CellFallbackTrialExperimentHandler *)v11 initWithQueue:MEMORY[0x277D85CD0]];
  trialExperimentHandler = self->_trialExperimentHandler;
  self->_trialExperimentHandler = v12;

  [(CellFallbackTrialExperimentHandler *)self->_trialExperimentHandler subscribeToTrialUpdates];
  [(CellFallbackTrialExperimentHandler *)self->_trialExperimentHandler addObserver:self forKeyPath:@"trialTurboRNF" options:7 context:0];
  self->_turboRNF = [(CellFallbackHandler *)self evalTurboRNF];
  v14 = +[IOKitHandler sharedInstance];
  [v14 addObserver:self forKeyPath:@"mostRecentAPWakeMachTime" options:1 context:0];

  v15 = +[CellOutrankHandler sharedInstance];
  [v15 addObserver:self forKeyPath:@"cellOutranksWiFi" options:3 context:0];
}

uint64_t __46__CellFallbackHandler__completeInitialization__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 352);
  *(v3 + 352) = v2;

  v5 = [*(*(a1 + 32) + 352) objectForKeyedSubscript:@"Profiles"];
  *(*(a1 + 32) + 336) = [v5 count] != 0;

  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*(a1 + 32) + 352);
    v10 = 138477827;
    v11 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "MDM Profile changed to: %{private}@", &v10, 0xCu);
  }

  result = [*(a1 + 32) applyDataUsagePolicyForICCID:*(*(a1 + 32) + 328) givenPolicies:*(*(a1 + 32) + 352)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_254(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    v13 = *(a1 + 32);
    if (value < 1)
    {
      *(v13 + 128) = 7200;
      v15 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 7200;
      v7 = "CFSM got a 0 or negative settle period (%lld). Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 128) = value;
      v14 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "CFSM set to new settle period (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 128) = 7200;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = 7200;
    v7 = "CFSM got a nil settle period. Setting to default value (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_257(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    v13 = *(a1 + 32);
    if (value < 1)
    {
      *(v13 + 136) = 52428800;
      v15 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 52428800;
      v7 = "CFSM got a 0 or negative max cell value for freepass status (%lld). Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 136) = value;
      v14 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "CFSM set to a new max cell value for freepass status (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 136) = 52428800;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = 52428800;
    v7 = "CFSM got a nil max cell value for freepass status. Setting to default value (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_259(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    v13 = *(a1 + 32);
    if (value < 1)
    {
      *(v13 + 144) = 0x100000;
      v15 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 0x100000;
      v7 = "CFSM got a 0 or negative max one-flow cell value for freepass status (%lld). Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 144) = value;
      v14 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "CFSM set to a new max one-flow cell value for freepass status (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 144) = 0x100000;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = 0x100000;
    v7 = "CFSM got a nil max one-flow cell value for freepass status. Setting to default value (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_261(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
    {
      value = xpc_int64_get_value(v5);
      v10 = value;
      if ((value - 1) > 0x63)
      {
        *(*(a1 + 32) + 152) = 0x3FD3333340000000;
        *(*(a1 + 32) + 160) = 0;
        v15 = rnfLogHandle;
        if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_12;
        }

        *buf = 134218240;
        v18 = v10;
        v19 = 2048;
        v20 = 0x3FD3333340000000;
        v7 = "CFSM got an out of range max ratio (%lld). Resetting to default value (%.2f)";
        v8 = v15;
        v13 = 22;
        goto LABEL_11;
      }

      *(*(a1 + 32) + 152) = (value / 100.0);
      *(*(a1 + 32) + 160) = 1;
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 152);
        *buf = 134217984;
        v18 = v12;
        v7 = "CFSM set to a new max ratio (%.2f)";
        v8 = v11;
        goto LABEL_10;
      }
    }

    else
    {
      *(*(a1 + 32) + 152) = 0x3FD3333340000000;
      *(*(a1 + 32) + 160) = 0;
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = 0x3FD3333340000000;
        v7 = "CFSM got a wrong type for max ratio. Setting to default value (%.2f)";
        v8 = v6;
LABEL_10:
        v13 = 12;
LABEL_11:
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v13);
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 152) = 0x3FD3333340000000;
    *(*(a1 + 32) + 160) = 0;
    if (*(*(a1 + 32) + 240))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_262;
      block[3] = &unk_27898A0C8;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CellFallbackHandler__completeInitialization__block_invoke_262(uint64_t a1)
{
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM got a nil type for max ratio. Refreshing value from cell plan", v4, 2u);
  }

  return [*(a1 + 32) _peekIntoCellPlan];
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_264(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
    {
      value = xpc_BOOL_get_value(v5);
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 161);
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v17 = 1024;
        v18 = value;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "CFSM set to a new value for rnf_high_capacity_plan behavior (was/is): %d/%d", &buf, 0xEu);
      }

      *(*(a1 + 32) + 161) = value;
      *(*(a1 + 32) + 162) = 1;
    }

    else
    {
      *(*(a1 + 32) + 161) = 0;
      *(*(a1 + 32) + 162) = 0;
      v6 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        buf = 67109120;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM got a wrong type for rnf_high_capacity_plan. Setting to default value (%d)", &buf, 8u);
      }
    }

    v9 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_265;
    block[3] = &unk_27898A0C8;
    v7 = a1 + 32;
  }

  else
  {
    v8 = *(a1 + 32);
    v7 = a1 + 32;
    *(v8 + 161) = 0;
    *(*v7 + 162) = 0;
    v9 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_2;
    v14[3] = &unk_27898A0C8;
  }

  v9[4] = *v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CellFallbackHandler__completeInitialization__block_invoke_2(uint64_t result)
{
  if (*(*(result + 32) + 240))
  {
    v1 = result;
    v2 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM got a nil type for rnf_high_capacity_plan. Refreshing value from cell plan", v3, 2u);
    }

    return [*(v1 + 32) _peekIntoCellPlan];
  }

  return result;
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_267(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D86448])
  {
    *(*(a1 + 32) + 193) = 1;
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = 1;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM got a nil value or wrong type for rnf_rxsignal_exempt behavior. Setting to default value (%d)", buf, 8u);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_269;
    v17[3] = &unk_27898A0C8;
    v17[4] = *(a1 + 32);
    v7 = MEMORY[0x277D85CD0];
    v8 = v17;
LABEL_6:
    dispatch_async(v7, v8);
    goto LABEL_7;
  }

  value = xpc_BOOL_get_value(v5);
  v11 = *(*(a1 + 32) + 193);
  v12 = rnfLogHandle;
  v13 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v11 != value)
  {
    if (v13)
    {
      v16 = *(*(a1 + 32) + 193);
      *buf = 67109376;
      v20 = v16;
      v21 = 1024;
      v22 = value;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CFSM set to a new value for rnf_rxsignal_exempt behavior (was/is): %d/%d", buf, 0xEu);
    }

    *(*(a1 + 32) + 193) = value;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __46__CellFallbackHandler__completeInitialization__block_invoke_268;
    v18[3] = &unk_27898A0C8;
    v18[4] = *(a1 + 32);
    v7 = MEMORY[0x277D85CD0];
    v8 = v18;
    goto LABEL_6;
  }

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 193);
    LODWORD(v14) = *(v14 + 120);
    *buf = 67109632;
    v20 = v15;
    v21 = 1024;
    v22 = value;
    v23 = 1024;
    v24 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CFSM set to no-op for rnf_rxsignal_exempt behavior (was/is): %d/%d, RNF state %d", buf, 0x14u);
  }

LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
}

_DWORD *__46__CellFallbackHandler__completeInitialization__block_invoke_268(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[30] == 1)
  {
    [result _bringStateToIdle];
    v3 = *(a1 + 32);

    return [v3 _idempotentInitializationFromIdle];
  }

  return result;
}

_DWORD *__46__CellFallbackHandler__completeInitialization__block_invoke_269(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[30] == 1)
  {
    [result _bringStateToIdle];
    v3 = *(a1 + 32);

    return [v3 _idempotentInitializationFromIdle];
  }

  return result;
}

void __46__CellFallbackHandler__completeInitialization__block_invoke_2_271(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
  {
    value = xpc_BOOL_get_value(v5);
    v11 = *(*(a1 + 32) + 194);
    v12 = rnfLogHandle;
    v13 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v11 == value)
    {
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = *(*(a1 + 32) + 194);
      v17 = 67109376;
      v18 = v14;
      v19 = 1024;
      v20 = value;
      v7 = "CFSM set to no-op for rnf_all_tcpstats (was/is): %d/%d";
      v8 = v12;
      v9 = 14;
      goto LABEL_5;
    }

    if (v13)
    {
      v15 = *(*(a1 + 32) + 194);
      v17 = 67109376;
      v18 = v15;
      v19 = 1024;
      v20 = value;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CFSM set to a new value for rnf_all_tcpstats (was/is): %d/%d", &v17, 0xEu);
    }

    *(*(a1 + 32) + 194) = value;
  }

  else
  {
    *(*(a1 + 32) + 194) = 1;
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      v18 = 1;
      v7 = "CFSM got a nil value or wrong type for rnf_all_tcpstats. Setting to default value (%d)";
      v8 = v6;
      v9 = 8;
LABEL_5:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v17, v9);
    }
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_idempotentInitializationFromIdle
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = [NetworkStateRelay getStateRelayFor:3];
  v5 = +[MotionStateRelay sharedInstance];
  LOBYTE(self) = [(CellFallbackHandler *)self _idempotentInitializationFromIdleWithCellRelay:v3 wifiRelay:v4 motionRelay:v5];

  return self;
}

- (BOOL)_idempotentInitializationFromIdleWithCellRelay:(id)a3 wifiRelay:(id)a4 motionRelay:(id)a5
{
  v101[1] = *MEMORY[0x277D85DE8];
  v54 = a3;
  v55 = a4;
  v56 = a5;
  self->_activationIdentifier = 0;
  self->_wifiCallUnderway = 0;
  objc_storeStrong(&self->cellRelay, a3);
  objc_storeStrong(&self->wifiRelay, a4);
  objc_storeStrong(&self->motionRelay, a5);
  if (self->cellRelay && self->wifiRelay && self->motionRelay)
  {
    if (self->needExtendedSignatures)
    {
      v9 = @"(active == YES) AND (primary == YES) AND ((rxSignalThresholded == YES) OR ((rxSignalExemptions & 4) == 4) OR ((rxSignalExemptions & 8) == 8))";
    }

    else
    {
      v9 = @"(active == YES) AND (primary == YES) AND (rxSignalThresholded == YES)";
    }

    v49 = v9;
    if (self->needExtendedSignatures)
    {
      v10 = @"(active == YES) AND (primary == YES) AND ((rxSignalThresholded == YES) OR ((rxSignalExemptions & 4) == 4) OR ((rxSignalExemptions & 8) == 8)) AND ((txThresholded == YES) OR (dnsOut == YES) OR (tcpExtraStatsPositive == YES) OR (noCostAdvantage == YES))";
    }

    else
    {
      v10 = @"(active == YES) AND (primary == YES) AND (rxSignalThresholded == YES) AND ((txThresholded == YES) OR (dnsOut == YES) OR (tcpExtraStatsPositive == YES))";
    }

    v47 = v10;
    if (self->needExtendedSignatures)
    {
      v11 = @"(active == YES) AND (primary == YES) AND ((rxSignalThresholded == YES) OR ((rxSignalExemptions & 4) == 4) OR ((rxSignalExemptions & 8) == 8)) AND ((txThresholded == YES) OR (dnsOut == YES) OR (tcpExtraStatsPositive == YES) OR (noCostAdvantage == YES))";
    }

    else
    {
      v11 = @"(active == YES) AND (primary == YES) AND (rxSignalThresholded == YES) AND ((txThresholded == YES) OR (dnsOut == YES) OR (tcpExtraStatsPositive == YES))";
    }

    v46 = v11;
    if (self->needExtendedSignatures)
    {
      v12 = @"(active == NO) OR (primary == NO) OR ((rxSignalThresholded == NO) AND ((rxSignalExemptions & 4) == 0) AND ((rxSignalExemptions & 8) == 0)) OR ((txThresholded == NO) AND (dnsOut == NO) AND (tcpExtraStatsPositive == NO) AND (noCostAdvantage == NO))";
    }

    else
    {
      v12 = @"(active == NO) OR (primary == NO) OR (rxSignalThresholded == NO) OR ((txThresholded == NO) AND (dnsOut == NO) AND (tcpExtraStatsPositive == NO))";
    }

    v48 = v12;
    if (self->needExtendedSignatures)
    {
      v13 = @"(active == NO) OR (primary == NO) OR ((rxSignalThresholded == NO) AND ((rxSignalExemptions & 4) == 0) AND ((rxSignalExemptions & 8) == 0)) OR ((txThresholded == NO) AND (dnsOut == NO) AND (tcpExtraStatsPositive == NO) AND (noCostAdvantage == NO))";
    }

    else
    {
      v13 = @"(active == NO) OR (primary == NO) OR (rxSignalThresholded == NO) OR ((txThresholded == NO) AND (dnsOut == NO) AND (tcpExtraStatsPositive == NO))";
    }

    v50 = v13;
    if (self->needExtendedSignatures)
    {
      v14 = @"(active == NO) OR (primary == NO) OR ((rxSignalThresholded == NO) AND ((rxSignalExemptions & 4) == 0) AND ((rxSignalExemptions & 8) == 0))";
    }

    else
    {
      v14 = @"(active == NO) OR (primary == NO) OR (rxSignalThresholded == NO)";
    }

    v51 = v14;
    v100 = @"alerted";
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"active == NO"];
    v101[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    v98 = @"alerted";
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:v51];
    v99 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
    val = [State createStateWithLabel:@"idle" rank:0 entryCellPreds:v16 entryWiFiPreds:v18];

    objc_initWeak(location, val);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke;
    v78[3] = &unk_27898BA88;
    objc_copyWeak(&v79, location);
    v78[4] = self;
    [val setEntryAction:v78];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_297;
    v76[3] = &unk_27898BA88;
    objc_copyWeak(&v77, location);
    v76[4] = self;
    [val setExitAction:v76];
    v96[0] = @"idle";
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES)"];
    v96[1] = @"committed";
    v97[0] = v19;
    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"active == NO"];
    v97[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
    v94[0] = @"idle";
    v22 = [MEMORY[0x277CCAC30] predicateWithFormat:v49];
    v94[1] = @"committed";
    v95[0] = v22;
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:v50];
    v95[1] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
    v53 = [State createStateWithLabel:@"alerted" rank:10 entryCellPreds:v21 entryWiFiPreds:v24];

    objc_initWeak(&from, v53);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_298;
    v73[3] = &unk_27898BA88;
    objc_copyWeak(&v74, &from);
    v73[4] = self;
    [v53 setEntryAction:v73];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_300;
    v71[3] = &unk_27898D200;
    objc_copyWeak(&v72, &from);
    v71[4] = self;
    [v53 setLoopEvaluation:v71];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_302;
    v69[3] = &unk_27898C3B0;
    objc_copyWeak(&v70, &from);
    [v53 setExitAction:v69];
    v92[0] = @"alerted";
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES)"];
    v92[1] = @"preferred";
    v93[0] = v25;
    v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == NO) OR (cellRrcConnected == NO) OR (linkQuality < 50) OR (expensive == YES)"];
    v93[1] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
    v90[0] = @"alerted";
    v28 = [MEMORY[0x277CCAC30] predicateWithFormat:v47];
    v91[0] = v28;
    v90[1] = @"preferred";
    v29 = [MEMORY[0x277CCAC30] predicateWithFormat:v48];
    v91[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
    v31 = [State createStateWithLabel:@"committed" rank:50 entryCellPreds:v27 entryWiFiPreds:v30];

    objc_initWeak(&v68, v31);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_303;
    v66[3] = &unk_27898BA88;
    objc_copyWeak(&v67, &v68);
    v66[4] = self;
    [v31 setEntryAction:v66];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_304;
    v64[3] = &unk_27898D200;
    objc_copyWeak(&v65, &v68);
    v64[4] = self;
    [v31 setLoopEvaluation:v64];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_305;
    v62[3] = &unk_27898C3B0;
    objc_copyWeak(&v63, &v68);
    [v31 setExitAction:v62];
    v88 = @"committed";
    v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(active == YES) AND (cellRrcConnected == YES) AND (linkQuality >= 50) AND (expensive == NO)"];
    v89 = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v86 = @"committed";
    v34 = [MEMORY[0x277CCAC30] predicateWithFormat:v46];
    v87 = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v36 = [State createStateWithLabel:@"preferred" rank:70 entryCellPreds:v33 entryWiFiPreds:v35];

    objc_initWeak(&v61, v36);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_306;
    v59[3] = &unk_27898BA88;
    objc_copyWeak(&v60, &v61);
    v59[4] = self;
    [v36 setEntryAction:v59];
    [v36 setLoopEvaluation:&__block_literal_global_309];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_2;
    v57[3] = &unk_27898BA88;
    objc_copyWeak(&v58, &v61);
    v57[4] = self;
    [v36 setExitAction:v57];
    v85[0] = val;
    v85[1] = v53;
    v85[2] = v31;
    v85[3] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
    states = self->states;
    self->states = v37;

    [(CellFallbackHandler *)self _bringStateToIdle];
    [(CellFallbackHandler *)self _updateCellFallbackState];
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&v61);

    objc_destroyWeak(&v63);
    objc_destroyWeak(&v65);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&v68);

    objc_destroyWeak(&v70);
    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v77);
    objc_destroyWeak(&v79);
    objc_destroyWeak(location);

    v39 = 1;
  }

  else
  {
    v40 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      cellRelay = self->cellRelay;
      wifiRelay = self->wifiRelay;
      motionRelay = self->motionRelay;
      *location = 134218496;
      *&location[4] = cellRelay;
      v81 = 2048;
      v82 = wifiRelay;
      v83 = 2048;
      v84 = motionRelay;
      _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_ERROR, "CFSM init failed, at least one of the relays missing (cell/wifi/motion): %p,%p,%p", location, 0x20u);
    }

    v39 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v39;
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v6 = [WeakRetained previousState];
    v7 = [v6 label];
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\tCFSM entry action for: %@, coming from: %@", &v13, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 32) interfaceName];
  v9 = [TCPProgressProbe probeForInterface:v8];

  [v9 manage:0 outValue:0];
  [*(a1 + 32) postMotionDetector:2];
  [*(a1 + 32) postHasAdviceNotification:0];
  v10 = *(a1 + 32);
  if ((v10[376] & 1) == 0)
  {
    [v10 setRnfActivated:0];
    v10 = *(a1 + 32);
  }

  [v10 setRnfAskedOutrank:0];
  +[TrackedFlow stopPollingWifiFlows];
  [*(a1 + 32) setFallbackAdvice:0];
  [*(a1 + 32) stopElevatedStateWatchdog];
  [*(*(a1 + 32) + 288) removeAllObjects];
  [*(*(a1 + 32) + 296) removeAllObjects];
  [*(*(a1 + 32) + 304) removeAllObjects];
  if ([*(a1 + 32) internalBuild])
  {
    [*(a1 + 32) stopWrongUsageGracePeriodTimer];
    v11 = *(a1 + 32);
    if (v11[46])
    {
      [v11 rnfTestAbortCFSMWentIdleReply:1];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_297(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  ++*(*(a1 + 32) + 384);
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v6 = *(*(a1 + 32) + 384);
    v10 = 138412546;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\tCFSM exit action for: %@, activation ID: %d", &v10, 0x12u);
  }

  v7 = [*(*(a1 + 32) + 32) interfaceName];
  v8 = [TCPProgressProbe probeForInterface:v7];

  [v8 manage:1 outValue:0];
  [*(a1 + 32) postMotionDetector:1];
  [*(a1 + 32) postHasAdviceNotification:1];
  [*(a1 + 32) setRnfActivated:1];
  [TrackedFlow startPollingWifiFlows:0xFFFFFFFFLL];
  [*(a1 + 32) startElevatedStateWatchdogWithPeriod:60000000000];
  [*(*(a1 + 32) + 280) enable];

  v9 = *MEMORY[0x277D85DE8];
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_298(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v6 = [WeakRetained previousState];
    v7 = [v6 label];
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\t\tCFSM entry action for: %@, coming from: %@", &v13, 0x16u);
  }

  [WeakRetained setLoopTokens:6];
  [*(a1 + 32) setFallbackAdvice:1];
  v8 = [CellFallbackMetric alloc];
  v9 = *(*(a1 + 32) + 344);
  v10 = [WeakRetained label];
  v11 = [(CellFallbackMetric *)v8 initCellFallbackMetricWithLevel:1 policy:v9 state:v10];
  [WeakRetained setCaMetric:v11];

  v12 = *MEMORY[0x277D85DE8];
}

BOOL __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_300(uint64_t a1, int a2)
{
  v59 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5[193] == 1)
  {
    if ((a2 & 1) == 0 && ([v5 wifiCallUnderway] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 104), "isStationary") & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 24), "active") && objc_msgSend(*(*(a1 + 32) + 32), "active") && objc_msgSend(*(*(a1 + 32) + 32), "primary") && objc_msgSend(*(*(a1 + 32) + 32), "rxSignalThresholded") && ((objc_msgSend(*(*(a1 + 32) + 32), "rxSignalThresholded") & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 32), "rxSignalExemptions") & 4) != 0 || (objc_msgSend(*(*(a1 + 32) + 32), "rxSignalExemptions") & 8) != 0))
    {
      v31 = [WeakRetained loopTokens];
      v6 = v31 > 1;
      [WeakRetained setLoopTokens:(v31 - 1)];
    }

    else
    {
      v6 = 0;
    }

    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "no";
      if (v6)
      {
        v8 = "yes";
      }

      v33 = v8;
      log = v7;
      v9 = [WeakRetained label];
      v32 = [*(a1 + 32) wifiCallUnderway];
      v10 = [*(*(a1 + 32) + 104) isStationary];
      v11 = [*(*(a1 + 32) + 24) active];
      v12 = [*(*(a1 + 32) + 32) active];
      v13 = [*(*(a1 + 32) + 32) primary];
      v14 = [*(*(a1 + 32) + 32) rxSignalThresholded];
      v15 = [*(*(a1 + 32) + 32) rxSignalExemptions];
      *buf = 136317698;
      v38 = v33;
      v39 = 2112;
      v40 = v9;
      v41 = 1024;
      v42 = a2;
      v43 = 1024;
      v44 = v32;
      v45 = 1024;
      v46 = v10;
      v47 = 1024;
      v48 = v11;
      v49 = 1024;
      v50 = v12;
      v51 = 1024;
      v52 = v13;
      v53 = 1024;
      v54 = v14;
      v55 = 1024;
      v56 = v15;
      v57 = 1024;
      v58 = [WeakRetained loopTokens];
      v16 = "\t\tCFSM loop eval: %s for: %@, escal: %d, wificalling: %d, stationary: %d, cell-active: %d, wifi-active: %d, wifi-primary: %d, wifi-rssi: %d, wifi-signal-exmp: %u, tokens: %d";
      v17 = log;
      v18 = log;
      v19 = 76;
LABEL_30:
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, v16, buf, v19);
    }
  }

  else
  {
    if ((a2 & 1) == 0 && ([v5 wifiCallUnderway] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 104), "isStationary") & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 24), "active") && objc_msgSend(*(*(a1 + 32) + 32), "active") && objc_msgSend(*(*(a1 + 32) + 32), "primary") && objc_msgSend(*(*(a1 + 32) + 32), "rxSignalThresholded"))
    {
      v20 = [WeakRetained loopTokens];
      v6 = v20 > 1;
      [WeakRetained setLoopTokens:(v20 - 1)];
    }

    else
    {
      v6 = 0;
    }

    v21 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v22 = "no";
      if (v6)
      {
        v22 = "yes";
      }

      v34 = v22;
      loga = v21;
      v9 = [WeakRetained label];
      v23 = [*(a1 + 32) wifiCallUnderway];
      v24 = [*(*(a1 + 32) + 104) isStationary];
      v25 = [*(*(a1 + 32) + 24) active];
      v26 = [*(*(a1 + 32) + 32) active];
      v27 = [*(*(a1 + 32) + 32) primary];
      v28 = [*(*(a1 + 32) + 32) rxSignalThresholded];
      *buf = 136317442;
      v38 = v34;
      v39 = 2112;
      v40 = v9;
      v41 = 1024;
      v42 = a2;
      v43 = 1024;
      v44 = v23;
      v45 = 1024;
      v46 = v24;
      v47 = 1024;
      v48 = v25;
      v49 = 1024;
      v50 = v26;
      v51 = 1024;
      v52 = v27;
      v53 = 1024;
      v54 = v28;
      v55 = 1024;
      v56 = [WeakRetained loopTokens];
      v16 = "\t\tCFSM loop eval: %s for: %@, escal: %d, wificalling: %d, stationary: %d, cell-active: %d, wifi-active: %d, wifi-primary: %d, wifi-rssi: %d, tokens: %d";
      v17 = loga;
      v18 = loga;
      v19 = 70;
      goto LABEL_30;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_302(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained label];
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "\t\tCFSM exit action for: %@", &v18, 0xCu);
  }

  v5 = [WeakRetained caMetric];

  if (v5)
  {
    v6 = [WeakRetained sojournTime];
    [v6 currentRun];
    v8 = v7;
    v9 = [WeakRetained caMetric];
    [v9 setAdviceHeldForSecs:v8];

    v10 = [WeakRetained caMetric];
    LOBYTE(v9) = [v10 postMetric];

    if ((v9 & 1) == 0)
    {
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [WeakRetained label];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "\t\tCFSM error while posting metrics to CA after exiting %@", &v18, 0xCu);
      }
    }

    [WeakRetained setCaMetric:0];
  }

  else
  {
    v14 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [WeakRetained label];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "\t\tCFSM error while exiting %@, metric instance can not be nil", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_303(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v6 = [WeakRetained previousState];
    v7 = [v6 label];
    v17 = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\t\t\tCFSM entry action for: %@, coming from: %@", &v17, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 8) rank];
  v9 = [*(*(a1 + 32) + 8) previousState];
  v10 = [v9 rank];

  if (v8 > v10)
  {
    [*(a1 + 32) setFallbackAdvice:2];
    v11 = *(a1 + 32);
    if (*(v11 + 382) == 1)
    {
      if ([*(v11 + 32) noCostAdvantage])
      {
        [*(a1 + 32) requestBoost:4];
      }
    }
  }

  v12 = [CellFallbackMetric alloc];
  v13 = *(*(a1 + 32) + 344);
  v14 = [WeakRetained label];
  v15 = [(CellFallbackMetric *)v12 initCellFallbackMetricWithLevel:2 policy:v13 state:v14];
  [WeakRetained setCaMetric:v15];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_304(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  if (v5[193] == 1)
  {
    if ((a2 & 1) != 0 || ([v5 wifiCallUnderway] & 1) != 0 || !objc_msgSend(*(*(a1 + 32) + 24), "active") || !objc_msgSend(*(*(a1 + 32) + 32), "active") || !objc_msgSend(*(*(a1 + 32) + 32), "primary"))
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 32);
    if (*(v6 + 382) == 1)
    {
      if ([*(v6 + 32) noCostAdvantage])
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 32);
    }

    if (([*(v6 + 32) rxSignalThresholded] & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 32), "rxSignalExemptions") & 4) == 0 && (objc_msgSend(*(*(a1 + 32) + 32), "rxSignalExemptions") & 8) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

LABEL_32:
    v7 = [*(a1 + 32) boosted];
LABEL_14:
    v8 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "no";
      if (v7)
      {
        v9 = "yes";
      }

      v35 = v9;
      log = v8;
      v33 = [WeakRetained label];
      v32 = [*(a1 + 32) wifiCallUnderway];
      v31 = [*(*(a1 + 32) + 104) isStationary];
      v10 = [*(*(a1 + 32) + 24) active];
      v11 = [*(*(a1 + 32) + 32) active];
      v12 = WeakRetained;
      v13 = [*(*(a1 + 32) + 32) primary];
      v14 = [*(*(a1 + 32) + 32) noCostAdvantage];
      v15 = [*(*(a1 + 32) + 32) rxSignalThresholded];
      v16 = [*(*(a1 + 32) + 32) rxSignalExemptions];
      v17 = [*(a1 + 32) boosted];
      *buf = 136317954;
      v40 = v35;
      v41 = 2112;
      v42 = v33;
      v43 = 1024;
      v44 = a2;
      v45 = 1024;
      v46 = v32;
      v47 = 1024;
      v48 = v31;
      v49 = 1024;
      v50 = v10;
      v51 = 1024;
      v52 = v11;
      v53 = 1024;
      v54 = v13;
      WeakRetained = v12;
      v55 = 1024;
      v56 = v14;
      v57 = 1024;
      v58 = v15;
      v59 = 1024;
      v60 = v16;
      v61 = 1024;
      v62 = v17;
      v18 = log;
      _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "\t\tCFSM loop eval: %s for: %@, escal: %d, wificalling: %d, stationary: %d, cell-active: %d, wifi-active: %d, wifi-primary: %d, no-cost-adv: %d, wifi-rssi: %d, wifi-signal-exmp: %u, boosted %d", buf, 0x52u);

LABEL_30:
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  if ((a2 & 1) == 0 && ([v5 wifiCallUnderway] & 1) == 0 && objc_msgSend(*(*(a1 + 32) + 24), "active") && objc_msgSend(*(*(a1 + 32) + 32), "active") && objc_msgSend(*(*(a1 + 32) + 32), "primary") && objc_msgSend(*(*(a1 + 32) + 32), "rxSignalThresholded"))
  {
    v7 = [*(a1 + 32) boosted];
  }

  else
  {
    v7 = 0;
  }

  v19 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "no";
    if (v7)
    {
      v20 = "yes";
    }

    v34 = v20;
    v36 = v19;
    v21 = [WeakRetained label];
    loga = WeakRetained;
    v22 = [*(a1 + 32) wifiCallUnderway];
    v23 = [*(*(a1 + 32) + 104) isStationary];
    v24 = [*(*(a1 + 32) + 24) active];
    v25 = [*(*(a1 + 32) + 32) active];
    v26 = [*(*(a1 + 32) + 32) primary];
    v27 = [*(*(a1 + 32) + 32) rxSignalThresholded];
    v28 = [*(a1 + 32) boosted];
    *buf = 136317442;
    v40 = v34;
    v41 = 2112;
    v42 = v21;
    v43 = 1024;
    v44 = a2;
    v45 = 1024;
    v46 = v22;
    v18 = v36;
    WeakRetained = loga;
    v47 = 1024;
    v48 = v23;
    v49 = 1024;
    v50 = v24;
    v51 = 1024;
    v52 = v25;
    v53 = 1024;
    v54 = v26;
    v55 = 1024;
    v56 = v27;
    v57 = 1024;
    v58 = v28;
    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "\t\tCFSM loop eval: %s for: %@, escal: %d, wificalling: %d, stationary: %d, cell-active: %d, wifi-active: %d, wifi-primary: %d, wifi-rssi: %d, boosted %d", buf, 0x46u);

    goto LABEL_30;
  }

LABEL_31:

  v29 = *MEMORY[0x277D85DE8];
  return v7;
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_305(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained label];
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "\t\t\tCFSM exit action for: %@", &v18, 0xCu);
  }

  v5 = [WeakRetained caMetric];

  if (v5)
  {
    v6 = [WeakRetained sojournTime];
    [v6 currentRun];
    v8 = v7;
    v9 = [WeakRetained caMetric];
    [v9 setAdviceHeldForSecs:v8];

    v10 = [WeakRetained caMetric];
    LOBYTE(v9) = [v10 postMetric];

    if ((v9 & 1) == 0)
    {
      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = [WeakRetained label];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "\t\t\tCFSM error while posting metrics to CA after exiting %@", &v18, 0xCu);
      }
    }

    [WeakRetained setCaMetric:0];
  }

  else
  {
    v14 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [WeakRetained label];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "\t\t\tCFSM error while exiting %@, metric instance can not be nil", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_306(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v6 = [WeakRetained previousState];
    v7 = [v6 label];
    v8 = v7;
    v9 = *(*(a1 + 32) + 382);
    v16 = 138412802;
    if (v9)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    v17 = v5;
    v18 = 2112;
    v19 = v7;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\t\t\t\tCFSM entry action for: %@, coming from: %@, %s turboRNF", &v16, 0x20u);
  }

  v11 = [CellFallbackMetric alloc];
  v12 = *(*(a1 + 32) + 344);
  v13 = [WeakRetained label];
  v14 = [(CellFallbackMetric *)v11 initCellFallbackMetricWithLevel:3 policy:v12 state:v13];
  [WeakRetained setCaMetric:v14];

  if ([*(*(a1 + 32) + 400) trialTurboRNF] == 2)
  {
    [*(a1 + 32) setRnfAskedOutrank:1];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __92__CellFallbackHandler__idempotentInitializationFromIdleWithCellRelay_wifiRelay_motionRelay___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [WeakRetained label];
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "\t\t\t\tCFSM exit action for: %@", &v19, 0xCu);
  }

  v6 = [WeakRetained caMetric];

  if (v6)
  {
    v7 = [WeakRetained sojournTime];
    [v7 currentRun];
    v9 = v8;
    v10 = [WeakRetained caMetric];
    [v10 setAdviceHeldForSecs:v9];

    v11 = [WeakRetained caMetric];
    LOBYTE(v10) = [v11 postMetric];

    if ((v10 & 1) == 0)
    {
      v12 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [WeakRetained label];
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "\t\t\t\tCFSM error while posting metrics to CA after exiting %@", &v19, 0xCu);
      }
    }

    [WeakRetained setCaMetric:0];
  }

  else
  {
    v15 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = [WeakRetained label];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "\t\t\t\tCFSM error while exiting %@, metric instance can not be nil", &v19, 0xCu);
    }
  }

  [*(a1 + 32) setRnfAskedOutrank:0];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setFallbackAdvice:(int64_t)a3
{
  if (self->_fallbackAdvice != a3)
  {
    [(CellFallbackHandler *)self willChangeValueForKey:@"fallbackAdvice"];
    self->_fallbackAdvice = a3;
    [(CellFallbackHandler *)self didChangeValueForKey:@"fallbackAdvice"];
    [(CellFallbackHandler *)self postUpwards:self->_fallbackAdvice];
    fallbackAdvice = self->_fallbackAdvice;
    v7 = +[AppStateMonitor getAppsWithStates];
    [(CellFallbackHandler *)self postUpwards:fallbackAdvice appsWithStates:v7 always:1];
  }
}

void __40__CellFallbackHandler__bringStateToIdle__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [v13 isEqual:*(*(a1 + 32) + 8)];
  if (a3 && v5)
  {
    v6 = [v13 exitAction];
    v6[2]();

    v7 = [v13 sojournTime];
    [v7 stop];

    [v13 setPreviousState:0];
    v8 = [*(*(a1 + 32) + 16) objectAtIndex:a3 - 1];
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    [*(*(a1 + 32) + 8) setPreviousState:v13];
    v11 = [*(*(a1 + 32) + 8) entryAction];
    v11[2]();

    v12 = [*(*(a1 + 32) + 8) sojournTime];
    [v12 start];
  }
}

- (void)_toggleElevatedState
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_runningRNFTest)
  {
    v2 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM2 ignoring _toggleElevatedState as part of RNF Test", &v28, 2u);
    }
  }

  else
  {
    v4 = [(NSArray *)self->states objectAtIndexedSubscript:0];
    v5 = [self->currentState label];
    v6 = [v4 label];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "CFSM forced state toggle, but found it idle: no-op", &v28, 2u);
      }
    }

    else
    {
      v9 = self->currentState;
      if (self->motionDetectorState == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(MotionStateRelay *)self->motionRelay currentMotion];
      }

      v11 = [self->currentState caMetric];
      [v11 setEgressMotionState:v10];

      v12 = [self->currentState exitAction];
      v12[2]();

      [self->currentState setPreviousState:0];
      v13 = [self->currentState sojournTime];
      [v13 stop];

      v14 = [(NSArray *)self->states indexOfObject:self->currentState];
      if (v14 + 1 < [(NSArray *)self->states count])
      {
        v15 = v14 + 1;
      }

      else
      {
        v15 = 1;
      }

      v16 = [(NSArray *)self->states objectAtIndex:v15];
      currentState = self->currentState;
      self->currentState = v16;

      [self->currentState setPreviousState:v9];
      v18 = [self->currentState sojournTime];
      [v18 start];

      v19 = [self->currentState entryAction];
      v19[2]();

      v20 = [(NSArray *)self->states indexOfObject:v9];
      v21 = [self->currentState caMetric];
      [v21 setComingFromState:v20];

      v22 = [self->currentState caMetric];
      [v22 setIngressMotionState:v10];

      v23 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [(State *)v9 label];
        v26 = [self->currentState label];
        v28 = 138412546;
        v29 = v25;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "CFSM forced state toggle, from: %@ to: %@", &v28, 0x16u);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_administrativeEnable
{
  v17 = *MEMORY[0x277D85DE8];
  administrativeState = self->administrativeState;
  v4 = rnfLogHandle;
  v5 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
  if (administrativeState == 2)
  {
    if (v5)
    {
      settingsRelay = self->settingsRelay;
      v7 = v4;
      v8 = [(SystemSettingsRelay *)settingsRelay rnfEnabled];
      v9 = "Disabled";
      if (v8)
      {
        v9 = "Enabled";
      }

      v15 = 136315138;
      v16 = v9;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CFSM admin enable. Orig state: %s", &v15, 0xCu);
    }

    [(CellularStateRelay *)self->cellRelay addObserver:self forKeyPath:@"active" options:7 context:2];
    [(CellularStateRelay *)self->cellRelay addObserver:self forKeyPath:@"cellRrcConnected" options:7 context:32];
    [(CellularStateRelay *)self->cellRelay addObserver:self forKeyPath:@"linkQuality" options:7 context:33];
    [(CellularStateRelay *)self->cellRelay addObserver:self forKeyPath:@"expensive" options:7 context:0];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"active" options:7 context:2];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"primary" options:7 context:3];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"rxSignalThresholded" options:7 context:5];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"txThresholded" options:7 context:10];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"dnsOut" options:7 context:7];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"rxSignalExemptions" options:7 context:13];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"tcpExtraStatsPositive" options:7 context:9];
    [(NetworkStateRelay *)self->wifiRelay addObserver:self forKeyPath:@"noCostAdvantage" options:7 context:28];
    [(CellFallbackHandler *)self addObserver:self forKeyPath:@"wifiCallUnderway" options:7 context:12];
    [(CellFallbackHandler *)self _bringStateToIdle];
    self->administrativeState = 1;
    [(CellFallbackHandler *)self postAdminChangeUpwards:1];
  }

  else if (v5)
  {
    v10 = self->settingsRelay;
    v11 = v4;
    v12 = [(SystemSettingsRelay *)v10 rnfEnabled];
    v13 = "Disabled";
    if (v12)
    {
      v13 = "Enabled";
    }

    v15 = 136315138;
    v16 = v13;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "CFSM ignoring double issue. Orig state: %s", &v15, 0xCu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_administrativeDisable
{
  v19 = *MEMORY[0x277D85DE8];
  administrativeState = self->administrativeState;
  v4 = rnfLogHandle;
  v5 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
  if (administrativeState == 1)
  {
    if (v5)
    {
      settingsRelay = self->settingsRelay;
      v7 = v4;
      v8 = [(SystemSettingsRelay *)settingsRelay rnfEnabled];
      v9 = "Disabled";
      if (v8)
      {
        v9 = "Enabled";
      }

      v17 = 136315138;
      v18 = v9;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CFSM admin disable. Orig state: %s", &v17, 0xCu);
    }

    [(CellFallbackHandler *)self _bringStateToIdle];
    cellRelay = self->cellRelay;
    if (cellRelay)
    {
      [(CellularStateRelay *)cellRelay removeObserver:self forKeyPath:@"active"];
      [(CellularStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"cellRrcConnected"];
      [(CellularStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"linkQuality"];
      [(CellularStateRelay *)self->cellRelay removeObserver:self forKeyPath:@"expensive"];
    }

    wifiRelay = self->wifiRelay;
    if (wifiRelay)
    {
      [(NetworkStateRelay *)wifiRelay removeObserver:self forKeyPath:@"active"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"primary"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"rxSignalThresholded"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"txThresholded"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"dnsOut"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"rxSignalExemptions"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"tcpExtraStatsPositive"];
      [(NetworkStateRelay *)self->wifiRelay removeObserver:self forKeyPath:@"noCostAdvantage"];
    }

    [(CellFallbackHandler *)self removeObserver:self forKeyPath:@"wifiCallUnderway"];
    self->administrativeState = 2;
    [(CellFallbackHandler *)self postAdminChangeUpwards:0];
  }

  else if (v5)
  {
    v12 = self->settingsRelay;
    v13 = v4;
    v14 = [(SystemSettingsRelay *)v12 rnfEnabled];
    v15 = "Disabled";
    if (v14)
    {
      v15 = "Enabled";
    }

    v17 = 136315138;
    v18 = v15;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "CFSM ignoring double issue. Orig state: %s", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CellFallbackHandler *)self _administrativeDisable];
  [(CellFallbackHandler *)self stopElevatedStateWatchdog];
  if ([(CellFallbackHandler *)self internalBuild])
  {
    [(CellFallbackHandler *)self stopWrongUsageGracePeriodTimer];
    if (self->rnfTestAbortReply)
    {
      [(CellFallbackHandler *)self rnfTestAbortCFSMWentIdleReply:0];
    }
  }

  settingsRelay = self->settingsRelay;
  if (settingsRelay)
  {
    [(SystemSettingsRelay *)settingsRelay removeObserver:self forKeyPath:@"rnfEnabled"];
  }

  wifiRelay = self->wifiRelay;
  if (wifiRelay)
  {
    [(NetworkStateRelay *)wifiRelay removeObserver:self forKeyPath:@"lqmAsystole"];
  }

  if (self->cellFallbackObserver)
  {
    tcp_connection_fallback_watcher_destroy();
    self->cellFallbackObserver = 0;
  }

  mptcpObserver = self->mptcpObserver;
  if (mptcpObserver)
  {
    dispatch_source_cancel(mptcpObserver);
    v6 = self->mptcpObserver;
    self->mptcpObserver = 0;
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = v7;
  if (self->relayReadyObserver)
  {
    [v7 removeObserver:?];
  }

  [v8 removeObserver:self->polledFlowObserver];
  if (self->iccidObserver)
  {
    [v8 removeObserver:?];
  }

  if (self->wifiEpochObserver)
  {
    [v8 removeObserver:?];
  }

  cellPlanObserver = self->cellPlanObserver;
  if (cellPlanObserver)
  {
    [(CTCarrierSpaceClient *)cellPlanObserver setDelegate:0];
  }

  trialExperimentHandler = self->_trialExperimentHandler;
  if (trialExperimentHandler)
  {
    [(CellFallbackTrialExperimentHandler *)trialExperimentHandler removeObserver:self forKeyPath:@"trialTurboRNF"];
    [(CellFallbackTrialExperimentHandler *)self->_trialExperimentHandler unsubscribeFromTrialUpdates];
  }

  v11 = +[IOKitHandler sharedInstance];
  [v11 removeObserver:self forKeyPath:@"mostRecentAPWakeMachTime"];

  v12 = +[CellOutrankHandler sharedInstance];
  [v12 removeObserver:self forKeyPath:@"cellOutranksWiFi"];

  v13.receiver = self;
  v13.super_class = CellFallbackHandler;
  [(CellFallbackHandler *)&v13 dealloc];
}

- (void)_dumpState
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = +[SystemProperties sharedInstance];
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM System properties: %@", buf, 0xCu);
  }

  v89 = v3;
  v5 = +[SystemSettingsRelay defaultRelay];
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->administrativeState == 1)
    {
      v7 = "Enabled";
    }

    else
    {
      v7 = "Disabled";
    }

    v8 = v6;
    if ([v5 rnfEnabled])
    {
      v9 = "Enabled";
    }

    else
    {
      v9 = "Disabled";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "CFSM Administrative state: %s (orig: %s)", buf, 0x16u);
  }

  v10 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentPolicy = self->currentPolicy;
    *buf = 134217984;
    *&buf[4] = currentPolicy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM Current Policy: %lu", buf, 0xCu);
  }

  v87 = v5;
  v12 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    wifiRelay = self->wifiRelay;
    v14 = v12;
    v15 = [(NetworkStateRelay *)wifiRelay noCostAdvantage];
    v16 = "NO";
    if (v15)
    {
      v16 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "CFSM Policy affected by NoCostAdvantage mode? %s", buf, 0xCu);
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [(CellFallbackHandler *)self evalTurboRNF];
    v20 = "dis";
    if (v19)
    {
      v20 = "en";
    }

    *buf = 136315394;
    *&buf[4] = v20;
    *&buf[12] = 1024;
    *&buf[14] = 5;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "Turbo WiFi Assist is %sabled, grace period: %d", buf, 0x12u);
  }

  v21 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->currentState;
    v23 = v21;
    v24 = [currentState label];
    *buf = 138412290;
    *&buf[4] = v24;
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@", buf, 0xCu);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v25 = self->states;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v92;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v92 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v91 + 1) + 8 * i);
        v31 = [(NSArray *)self->states objectAtIndexedSubscript:0, v87];

        if (v30 != v31)
        {
          v32 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            [v30 label];
            v35 = v34 = self;
            v36 = [v30 sojournTime];
            [v36 total];
            *buf = 138412546;
            *&buf[4] = v35;
            *&buf[12] = 2048;
            *&buf[14] = v37;
            _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "CFSM Cumulative time on state %@: %f", buf, 0x16u);

            self = v34;
          }
        }
      }

      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v27);
  }

  v38 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v38;
    v40 = [(CellFallbackHandler *)self wifiCallUnderway];
    v41 = "NO";
    *buf = 136315650;
    *&buf[4] = "disabled";
    *&buf[14] = "disabled";
    *&buf[12] = 2080;
    if (v40)
    {
      v41 = "YES";
    }

    *&buf[22] = 2080;
    *&buf[24] = v41;
    _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "CFSM System foreground: %s (orig: %s), WiFiCalling underway: %s", buf, 0x20u);
  }

  v42 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v43 = self->wifiRelay;
    *buf = 138412290;
    *&buf[4] = v43;
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "CFSM WiFi state: %@", buf, 0xCu);
  }

  v44 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellRelay = self->cellRelay;
    *buf = 138412290;
    *&buf[4] = cellRelay;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "CFSM Cell state: %@", buf, 0xCu);
  }

  v90 = 0;
  v46 = [(NetworkStateRelay *)self->wifiRelay interfaceName];
  v47 = [TCPProgressProbe probeForInterface:v46];

  [v47 manage:2 outValue:&v90];
  v48 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v90;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "CFSM Kernel probing state: %d", buf, 8u);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  memset(buf, 0, sizeof(buf));
  [v47 fetchMetricsForFlowsAged:buf metrics:0 includeQUICFlows:&__block_literal_global_360 resultBlock:2.0];
  v49 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    motionDetectorState = self->motionDetectorState;
    *v95 = 67109120;
    *v96 = motionDetectorState;
    _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEFAULT, "CFSM Motion detector state: %d", v95, 8u);
  }

  v51 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v52 = v51;
    v53 = +[MotionStateRelay sharedInstance];
    v54 = [v53 isStationary];
    v55 = "not ";
    if (v54)
    {
      v55 = "";
    }

    *v95 = 136315138;
    *v96 = v55;
    _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEFAULT, "CFSM Mobility: %sstationary", v95, 0xCu);
  }

  v56 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    boosted = self->_boosted;
    boostedTimer = self->boostedTimer;
    *v95 = 67109376;
    *v96 = boosted;
    *&v96[4] = 2048;
    *&v96[6] = boostedTimer;
    _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEFAULT, "CFSM boosted (current/timer) out = (%d/%p)", v95, 0x12u);
  }

  v59 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    appBlacklistsSettleTime = self->appBlacklistsSettleTime;
    appBlacklistsFreePassCellMax = self->appBlacklistsFreePassCellMax;
    appBlacklistsFreePassFlowMax = self->appBlacklistsFreePassFlowMax;
    appBlacklistsRNFToCellRatio = self->appBlacklistsRNFToCellRatio;
    *v95 = 134218752;
    *v96 = appBlacklistsSettleTime;
    *&v96[8] = 2048;
    *&v96[10] = appBlacklistsFreePassCellMax;
    v97 = 2048;
    v98 = appBlacklistsFreePassFlowMax;
    v99 = 2048;
    v100 = appBlacklistsRNFToCellRatio;
    _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist (settle/freePassMax/freePassOne/rnfRatio): %llu/%llu/%llu/%.2f", v95, 0x2Au);
  }

  v64 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
  v65 = [TrackedFlow rnfUsageGrandTallyAfterAdding:0];
  v66 = [TrackedFlow cellExpensiveUsageGrandTallyAfterAdding:0];
  v67 = [TrackedFlow rnfExpensiveUsageGrandTallyAfterAdding:0];
  v68 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v95 = 134218752;
    *v96 = v64;
    *&v96[8] = 2048;
    *&v96[10] = v65;
    v97 = 2048;
    v98 = v66;
    v99 = 2048;
    v100 = *&v67;
    _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist (overall-cell/overall-rnf/expensive-cell/expensive-rnf): %llu/%llu/%llu/%llu", v95, 0x2Au);
  }

  v69 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    overdraftLedger = self->overdraftLedger;
    *v95 = 138412290;
    *v96 = overdraftLedger;
    _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist, overdraft ledger: %@", v95, 0xCu);
  }

  v71 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    blockedRenewalLedger = self->blockedRenewalLedger;
    *v95 = 138412290;
    *v96 = blockedRenewalLedger;
    _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist, blocked renewals ledger: %@", v95, 0xCu);
  }

  v73 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->highCapacityCellPlan)
    {
      v74 = "";
    }

    else
    {
      v74 = "NOT ";
    }

    v75 = "carrier";
    if (self->nonDefaultHighCapacityCellPlan)
    {
      v75 = "default plist";
    }

    *v95 = 136315394;
    *v96 = v74;
    *&v96[8] = 2080;
    *&v96[10] = v75;
    _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_DEFAULT, "CFSM is %shigh capacity cell plan (%s supplied)", v95, 0x16u);
  }

  cellPlanObserver = self->cellPlanObserver;
  if (cellPlanObserver)
  {
    [(CTCarrierSpaceClient *)cellPlanObserver fetchDataPlanMetrics:&__block_literal_global_372];
  }

  else
  {
    v77 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v95 = 0;
      _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEFAULT, "CFSM data plan, no observer", v95, 2u);
    }
  }

  v78 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->needExtendedSignatures)
    {
      v79 = "";
    }

    else
    {
      v79 = "NO ";
    }

    *v95 = 136315138;
    *v96 = v79;
    _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_DEFAULT, "CFSM needs %sextended signatures", v95, 0xCu);
  }

  v80 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->useAllTCPStats)
    {
      v81 = "YES";
    }

    else
    {
      v81 = "NO";
    }

    *v95 = 136315138;
    *v96 = v81;
    _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, "CFSM use all TCP stats: %s", v95, 0xCu);
  }

  v82 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    appsCache = self->appsCache;
    *v95 = 138412290;
    *v96 = appsCache;
    _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_DEFAULT, "CFSM canUse cache: %@", v95, 0xCu);
  }

  v84 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    mdmProfile = self->mdmProfile;
    *v95 = 138412290;
    *v96 = mdmProfile;
    _os_log_impl(&dword_23255B000, v84, OS_LOG_TYPE_DEFAULT, "CFSM MDM profiles: %@", v95, 0xCu);
  }

  v86 = *MEMORY[0x277D85DE8];
}

void __33__CellFallbackHandler__dumpState__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = rnfLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (a2)
    {
      v6 = [TCPProgressProbe progressPrettyPrintUtility:a3];
    }

    else
    {
      v6 = @"(invalid parameter)";
    }

    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "CFSM: TCP progress metrics ret=%d, %@", v8, 0x12u);
    if (a2)
    {
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __33__CellFallbackHandler__dumpState__block_invoke_369(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM data plan, metrics: %@, error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)evalTurboRNF
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(SystemSettingsRelay *)self->settingsRelay turboRNFFeatureFlagEnabled]|| [(CellFallbackTrialExperimentHandler *)self->_trialExperimentHandler trialTurboRNF]!= 0;
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v5 = "En";
    }

    else
    {
      v5 = "Dis";
    }

    settingsRelay = self->settingsRelay;
    v7 = v4;
    if ([(SystemSettingsRelay *)settingsRelay turboRNFFeatureFlagEnabled])
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    v9 = [(CellFallbackTrialExperimentHandler *)self->_trialExperimentHandler trialTurboRNF];
    v12 = 136315650;
    v13 = v5;
    v14 = 2080;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CFSM: turbo_rnf %sabled; fflag: %s, trial type: %d", &v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setRnfActivated:(BOOL)a3
{
  if (self->_rnfActivated != a3)
  {
    [(CellFallbackHandler *)self willChangeValueForKey:@"rnfActivated"];
    self->_rnfActivated = a3;

    [(CellFallbackHandler *)self didChangeValueForKey:@"rnfActivated"];
  }
}

- (void)setRnfAskedOutrank:(BOOL)a3
{
  if (self->_rnfAskedOutrank != a3)
  {
    [(CellFallbackHandler *)self willChangeValueForKey:@"rnfAskedOutrank"];
    self->_rnfAskedOutrank = a3;

    [(CellFallbackHandler *)self didChangeValueForKey:@"rnfAskedOutrank"];
  }
}

- (void)setWifiCallUnderway:(BOOL)a3
{
  if (self->_wifiCallUnderway != a3)
  {
    [(CellFallbackHandler *)self willChangeValueForKey:@"wifiCallUnderway"];
    self->_wifiCallUnderway = a3;

    [(CellFallbackHandler *)self didChangeValueForKey:@"wifiCallUnderway"];
  }
}

- (void)setBoosted:(BOOL)a3
{
  v3 = a3;
  *&v23[7] = *MEMORY[0x277D85DE8];
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    boosted = self->_boosted;
    boostedTimer = self->boostedTimer;
    *buf = 67109632;
    v21 = boosted;
    v22 = 1024;
    *v23 = v3;
    v23[2] = 2048;
    *&v23[3] = boostedTimer;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM2 boosted (current/proposed/timer) in = (%d/%d/%p)", buf, 0x18u);
  }

  if (v3)
  {
    if (!self->_boosted)
    {
      self->_boosted = v3;
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v9 = self->boostedTimer;
      self->boostedTimer = v8;

      v10 = self->boostedTimer;
      v11 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
      v12 = self->boostedTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __34__CellFallbackHandler_setBoosted___block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(self->boostedTimer);
      v13 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v16 = self->_boosted;
        v17 = self->boostedTimer;
        *buf = 67109376;
        v21 = v16;
        v22 = 2048;
        *v23 = v17;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "CFSM2 boosted (current/timer) out = (%d/%p)", buf, 0x12u);
      }
    }
  }

  else if (self->_boosted)
  {
    self->_boosted = 0;
    v14 = self->boostedTimer;
    if (v14)
    {
      dispatch_source_cancel(v14);
      v15 = self->boostedTimer;
      self->boostedTimer = 0;
    }

    v13 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startElevatedStateWatchdogWithPeriod:(unint64_t)a3
{
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  elevatedStateTimer = self->elevatedStateTimer;
  self->elevatedStateTimer = v5;

  v7 = self->elevatedStateTimer;
  v8 = dispatch_time(0, a3);
  dispatch_source_set_timer(v7, v8, a3, 0x3B9ACA00uLL);
  v9 = self->elevatedStateTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __60__CellFallbackHandler_startElevatedStateWatchdogWithPeriod___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_source_set_cancel_handler(self->elevatedStateTimer, &__block_literal_global_383);
  dispatch_resume(self->elevatedStateTimer);
}

uint64_t __60__CellFallbackHandler_startElevatedStateWatchdogWithPeriod___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _toggleElevatedState];
  v2 = *(a1 + 32);

  return [v2 _toggleElevatedState];
}

- (void)stopElevatedStateWatchdog
{
  elevatedStateTimer = self->elevatedStateTimer;
  if (elevatedStateTimer)
  {
    dispatch_source_cancel(elevatedStateTimer);
    v4 = self->elevatedStateTimer;
    self->elevatedStateTimer = 0;
  }
}

- (void)stopWrongUsageGracePeriodTimer
{
  wrongUsageGracePeriodTimer = self->wrongUsageGracePeriodTimer;
  if (wrongUsageGracePeriodTimer)
  {
    dispatch_source_cancel(wrongUsageGracePeriodTimer);
    v4 = self->wrongUsageGracePeriodTimer;
    self->wrongUsageGracePeriodTimer = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_27898D090;
    v31 = a6;
    v27 = v11;
    v28 = v10;
    v29 = v12;
    v30 = self;
    dispatch_async(MEMORY[0x277D85CD0], block);

    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"expensive"])
  {
    if ([(NetworkStateRelay *)self->cellRelay expensive])
    {
      [(CellFallbackHandler *)self _setDataUsagePolicy:self->currentPolicy];
    }

    else
    {
      [(CellFallbackHandler *)self _setUnlimitedDataUsageParameters];
    }

    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"trialTurboRNF"])
  {
    self->_turboRNF = [(CellFallbackHandler *)self evalTurboRNF];
    goto LABEL_3;
  }

  if (([v10 isEqualToString:@"rnfEnabled"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"lqmAsystole"))
  {
    if ([(SystemSettingsRelay *)self->settingsRelay rnfEnabled]&& ![(NetworkStateRelay *)self->wifiRelay lqmAsystole])
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_386;
      v25[3] = &unk_27898A0C8;
      v25[4] = self;
      v14 = MEMORY[0x277D85CD0];
      v15 = v25;
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v24[3] = &unk_27898A0C8;
      v24[4] = self;
      v14 = MEMORY[0x277D85CD0];
      v15 = v24;
    }

LABEL_20:
    dispatch_async(v14, v15);
    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"mostRecentAPWakeMachTime"])
  {
    v16 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "CFSM: AP just woke up. Idle if not already idle", buf, 2u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_387;
    v23[3] = &unk_27898A0C8;
    v23[4] = self;
    v14 = MEMORY[0x277D85CD0];
    v15 = v23;
    goto LABEL_20;
  }

  if ([v10 isEqualToString:@"cellOutranksWiFi"])
  {
    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v18 = [v17 BOOLValue];

    v19 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v20 = [v19 BOOLValue];

    v21 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v33 = v18;
      v34 = 1024;
      v35 = v20;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "CFSM: SIS state %{BOOL}d->%{BOOL}d", buf, 0xEu);
    }

    self->hasSISRunning = v20;
    if (v18 && (v20 & 1) == 0 && ![self->currentState rank])
    {
      v22 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "CFSM: SIS state quiesced, now quiescing CFSM too (deferred)", buf, 2u);
      }

      [(CellFallbackHandler *)self setRnfActivated:0];
    }
  }

LABEL_3:

  v13 = *MEMORY[0x277D85DE8];
}

void __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = a1;
  v172 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v1[4];
    if ([v4 functionalInterfaceType] != 5 && objc_msgSend(v4, "functionalInterfaceType") != 3)
    {
      v110 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v111 = v110;
        *buf = 67109120;
        LODWORD(v162) = [v4 functionalInterfaceType];
        _os_log_impl(&dword_23255B000, v111, OS_LOG_TYPE_ERROR, "Unexpected interface type %u", buf, 8u);
      }

      goto LABEL_96;
    }

    v5 = [v4 functionalInterfaceType];
  }

  else
  {
    v5 = 0;
  }

  if ([v1[5] isEqualToString:@"rxSignalExemptions"])
  {
    v6 = v2 == 13;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v1[6];
    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v9 = [v1[6] objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      [v1[7] postSpeculativeTelemetryForKey:v1[5] oldValue:v8 newValue:v9];
    }
  }

  v10 = rnfLogHandle;
  v146 = v5;
  v142 = v2;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v1[7] + 1);
    v12 = v10;
    v13 = [v11 label];
    v14 = v1[5];
    v145 = *MEMORY[0x277CCA2F0];
    v15 = [v1[6] objectForKeyedSubscript:?];
    *buf = 138413058;
    v162 = v13;
    v163 = 2112;
    v164 = v14;
    v165 = 2112;
    v166 = v15;
    v167 = 1024;
    *v168 = v5;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@, changed: %@ to %@ for net type %d", buf, 0x26u);
  }

  else
  {
    v145 = *MEMORY[0x277CCA2F0];
  }

  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = *(v1[7] + 2);
  v16 = [obj countByEnumeratingWithState:&v157 objects:v171 count:16];
  if (!v16)
  {
    v4 = 0;
    goto LABEL_80;
  }

  v17 = v16;
  v18 = 0;
  v4 = 0;
  v152 = v1;
  while (2)
  {
    v143 = v18;
    v144 = v4;
    v149 = *v158;
    v19 = v17;
LABEL_19:
    v20 = 0;
    v147 = v19;
    while (1)
    {
      if (*v158 != v149)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v157 + 1) + 8 * v20);
      if (v21 == *(v1[7] + 1))
      {
        goto LABEL_43;
      }

      v22 = [*(*(&v157 + 1) + 8 * v20) entryWiFiPreds];
      v23 = [*(v1[7] + 1) label];
      v24 = [v22 objectForKeyedSubscript:v23];

      v25 = v24;
      v26 = [v21 entryCellPreds];
      v27 = [*(v1[7] + 1) label];
      v28 = [v26 objectForKeyedSubscript:v27];

      v29 = rnfLogHandle;
      v30 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v25)
      {
        v31 = v28 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        if (v30)
        {
          v32 = v1[7];
          v33 = v28;
          v34 = v32[1];
          v35 = v29;
          v36 = [v34 label];
          v37 = v152[5];
          v38 = [v152[6] objectForKeyedSubscript:v145];
          v39 = [v21 label];
          *buf = 138413826;
          v162 = v36;
          v163 = 2112;
          v164 = v37;
          v165 = 2112;
          v166 = v38;
          v167 = 1024;
          *v168 = v146;
          *&v168[4] = 2112;
          *&v168[6] = v39;
          *&v168[14] = 2048;
          *&v168[16] = v25;
          *&v168[24] = 2048;
          v169 = v33;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@, changed: %@ to %@ for net type %d, ineligible for %@ as nil pred, wifi (%p) cell (%p)", buf, 0x44u);

          v28 = v33;
          v1 = v152;
        }

        goto LABEL_42;
      }

      if (v30)
      {
        v40 = v29;
        v41 = [v21 label];
        *buf = 138412290;
        v162 = v41;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "CFSM Eligible to go to %@", buf, 0xCu);
      }

      v42 = [v21 rank];
      v43 = [*(v1[7] + 1) rank];
      v44 = [v1[7] wifiCallUnderway];
      if (v42 > v43)
      {
        if (v44 & 1) == 0 && [v28 evaluateWithObject:*(v1[7] + 3)] && (objc_msgSend(v25, "evaluateWithObject:", *(v1[7] + 4)))
        {
          break;
        }

        goto LABEL_40;
      }

      if ((v44 & 1) != 0 || ([v28 evaluateWithObject:*(v1[7] + 3)] & 1) != 0 || objc_msgSend(v25, "evaluateWithObject:", *(v1[7] + 4)))
      {
        break;
      }

LABEL_40:
      v45 = rnfLogHandle;
      v19 = v147;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v1[7];
        v47 = v28;
        v48 = v46[1];
        v49 = v45;
        v50 = [v48 label];
        v51 = v152[5];
        v52 = [v152[6] objectForKeyedSubscript:v145];
        v53 = [v21 label];
        LODWORD(v48) = [v152[7] wifiCallUnderway];
        v54 = [v47 evaluateWithObject:*(v152[7] + 3)];
        v55 = [v25 evaluateWithObject:*(v152[7] + 4)];
        *buf = 138414338;
        v162 = v50;
        v163 = 2112;
        v164 = v51;
        v165 = 2112;
        v166 = v52;
        v167 = 1024;
        *v168 = v146;
        *&v168[4] = 2112;
        *&v168[6] = v53;
        *&v168[14] = 1024;
        *&v168[16] = -1;
        *&v168[20] = 1024;
        *&v168[22] = v48;
        v28 = v47;
        v1 = v152;
        LOWORD(v169) = 1024;
        *(&v169 + 2) = v54;
        HIWORD(v169) = 1024;
        v170 = v55;
        _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@, changed: %@ to %@ for net type %d, eligible for %@ but constraints unsatisfied (%d,%d,%d,%d)", buf, 0x48u);

        v19 = v147;
      }

LABEL_42:

LABEL_43:
      if (v19 == ++v20)
      {
        v19 = [obj countByEnumeratingWithState:&v157 objects:v171 count:16];
        if (v19)
        {
          goto LABEL_19;
        }

        goto LABEL_93;
      }
    }

    v56 = [*(v1[7] + 1) loopEvaluation];
    if (v56)
    {
      v57 = v56;
      [*(v1[7] + 1) loopEvaluation];
      v59 = v58 = v28;
      v60 = (v59)[2](v59, v42 > v43);

      v28 = v58;
      if (v60)
      {
        v123 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v124 = *(v152[7] + 1);
          v125 = v123;
          v126 = [v124 label];
          v127 = v152[5];
          v128 = [v152[6] objectForKeyedSubscript:v145];
          v129 = [v21 label];
          *buf = 138413314;
          v162 = v126;
          v163 = 2112;
          v164 = v127;
          v165 = 2112;
          v166 = v128;
          v167 = 1024;
          *v168 = v146;
          *&v168[4] = 2112;
          *&v168[6] = v129;
          _os_log_impl(&dword_23255B000, v125, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@, changed: %@ to %@ for net type %d, eligible for %@ but stay put and delay moving", buf, 0x30u);
        }

        v130 = dispatch_time(0, 2000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__CellFallbackHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_384;
        block[3] = &unk_27898D090;
        v151 = v152[7];
        v131 = v152[5];
        v132 = v152[4];
        v133 = v152[6];
        *&v134 = v132;
        *(&v134 + 1) = v133;
        *&v135 = v151;
        *(&v135 + 1) = v131;
        v154 = v135;
        v155 = v134;
        v156 = v152[8];
        dispatch_after(v130, MEMORY[0x277D85CD0], block);

        v1 = v152;
LABEL_93:
        v4 = v144;
        break;
      }
    }

    v61 = rnfLogHandle;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v150 = v28;
      v62 = [*(v152[7] + 1) loopEvaluation];
      v63 = _Block_copy(v62);
      v64 = [*(v152[7] + 1) loopEvaluation];
      if (v64)
      {
        v65 = v42 > v43;
        v66 = v62;
        v67 = v65;
        v68 = [*(v152[7] + 1) loopEvaluation];
        v69 = v67;
        v62 = v66;
        v70 = v68[2](v68, v69);
        v71 = "NO";
        if (v70)
        {
          v71 = "YES";
        }
      }

      else
      {
        v71 = "NIL";
        v68 = v141;
      }

      *buf = 134218242;
      v162 = v63;
      v163 = 2080;
      v164 = v71;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_DEFAULT, "loopEvaluation: %p isEscalation %s", buf, 0x16u);
      if (v64)
      {
      }

      v141 = v68;

      v28 = v150;
      v72 = v152;
    }

    else
    {
      v72 = v152;
    }

    v73 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v74 = v28;
      v75 = *(v72[7] + 1);
      v76 = v73;
      v77 = [v75 label];
      v78 = v152[5];
      v79 = [v152[6] objectForKeyedSubscript:v145];
      v80 = [v21 label];
      *buf = 138413314;
      v162 = v77;
      v163 = 2112;
      v164 = v78;
      v165 = 2112;
      v166 = v79;
      v167 = 1024;
      *v168 = v146;
      *&v168[4] = 2112;
      *&v168[6] = v80;
      _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEFAULT, "CFSM Current state: %@, changed: %@ to %@ for net type %d, eligible for %@ and constraints satisfied", buf, 0x30u);

      v28 = v74;
      v72 = v152;
    }

    if (v142)
    {
      [*(v72[7] + 1) caMetric];
      v82 = v81 = v28;
      [v82 setEgressTrigger:v142];

      v28 = v81;
      v72 = v152;
    }

    if (v146)
    {
      [*(v72[7] + 1) caMetric];
      v84 = v83 = v28;
      [v84 setEgressTriggerInterfaceType:v146];

      v28 = v83;
      v72 = v152;
    }

    v85 = v72[7];
    v86 = v28;
    if (*(v85 + 24) == 2)
    {
      v87 = 0;
    }

    else
    {
      v87 = [v85[13] currentMotion];
      v85 = v72[7];
    }

    v88 = [v85[1] caMetric];
    [v88 setEgressMotionState:v87];

    v89 = [*(v72[7] + 1) exitAction];
    v89[2]();

    [*(v72[7] + 1) setPreviousState:0];
    v90 = v72[7];
    v91 = *(v90 + 1);
    v92 = [*(v90 + 2) objectAtIndexedSubscript:0];

    if (v91 != v92)
    {
      v93 = [*(v72[7] + 1) sojournTime];
      [v93 stop];
    }

    v4 = *(v72[7] + 1);

    objc_storeStrong(v72[7] + 1, v21);
    [*(v72[7] + 1) setPreviousState:v4];
    v94 = v72[7];
    v95 = *(v94 + 1);
    v96 = [*(v94 + 2) objectAtIndexedSubscript:0];

    if (v95 != v96)
    {
      v97 = [*(v72[7] + 1) sojournTime];
      [v97 start];
    }

    v98 = [*(v72[7] + 1) entryAction];
    v98[2]();

    v99 = [*(v72[7] + 2) indexOfObject:v4];
    v100 = [*(v72[7] + 1) caMetric];
    [v100 setComingFromState:v99];

    v101 = [*(v72[7] + 1) caMetric];
    [v101 setIngressTrigger:v142];

    v102 = v72[7];
    v103 = *(v102 + 4);
    v104 = [*(v102 + 1) caMetric];
    [v102 populateCellFallbackPropertiesForInterfaceRelay:v103 onCAMetric:v104];

    v105 = v72[7];
    v106 = *(v105 + 3);
    v107 = [*(v105 + 1) caMetric];
    [v105 populateCellFallbackPropertiesForInterfaceRelay:v106 onCAMetric:v107];

    if (v146)
    {
      v108 = [*(v72[7] + 1) caMetric];
      [v108 setIngressTriggerInterfaceType:v146];
    }

    v109 = [*(v72[7] + 1) caMetric];
    [v109 setIngressMotionState:v87];

    if (v143 == 10)
    {
      v112 = rnfLogHandle;
      v1 = v72;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v113 = v112;
        v114 = [v4 label];
        v115 = [*(v72[7] + 1) label];
        v116 = v72[5];
        v117 = [v72[6] objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v118 = [v72[6] objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        *buf = 138413570;
        v162 = v114;
        v163 = 2112;
        v164 = v115;
        v165 = 2112;
        v166 = v116;
        v167 = 2112;
        *v168 = v117;
        *&v168[8] = 2112;
        *&v168[10] = v118;
        *&v168[18] = 1024;
        *&v168[20] = v146;
        _os_log_impl(&dword_23255B000, v113, OS_LOG_TYPE_ERROR, "CFSM Pingponging from %@ to %@ upon change %@ from %@ to %@ for net type %d", buf, 0x3Au);
      }

      v119 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v120 = *(v72[7] + 4);
        *buf = 138412290;
        v162 = v120;
        _os_log_impl(&dword_23255B000, v119, OS_LOG_TYPE_ERROR, "CFSM WiFi state: %@", buf, 0xCu);
      }

      v121 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v122 = *(v72[7] + 3);
        *buf = 138412290;
        v162 = v122;
        _os_log_impl(&dword_23255B000, v121, OS_LOG_TYPE_ERROR, "CFSM Cell state: %@", buf, 0xCu);
      }

      [v72[7] _bringStateToIdle];
    }

    else
    {
      v18 = v143 + 1;
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      obj = *(v72[7] + 2);
      v1 = v72;
      v17 = [obj countByEnumeratingWithState:&v157 objects:v171 count:16];
      if (v17)
      {
        continue;
      }

LABEL_80:
    }

    break;
  }

  v136 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v137 = v1[7];
    v139 = v137[3];
    v138 = v137[4];
    *buf = 138412546;
    v162 = v139;
    v163 = 2112;
    v164 = v138;
    _os_log_impl(&dword_23255B000, v136, OS_LOG_TYPE_DEFAULT, "CFSM Relays: %@ %@", buf, 0x16u);
  }

LABEL_96:

  v140 = *MEMORY[0x277D85DE8];
}

id __56__CellFallbackHandler_sendWiFiAssistSpeculativeTrigger___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"speculativeTrigger";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)postSpeculativeTelemetryForKey:(id)a3 oldValue:(id)a4 newValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [v9 unsignedIntValue];
    v12 = [v10 unsignedIntValue];
    v13 = v12;
    if ((v11 & 2) == 0 && (v12 & 2) != 0)
    {
      [(CellFallbackHandler *)self sendWiFiAssistSpeculativeTrigger:2];
      v14 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "CFSM WiFiSignalExemptionNetworkReputationBad bit getting set", buf, 2u);
      }
    }

    if (v11 & 1) == 0 && (v13)
    {
      [(CellFallbackHandler *)self sendWiFiAssistSpeculativeTrigger:1];
      v15 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "CFSM WiFiSignalExemptionNetworkMoving bit getting set", v16, 2u);
      }
    }
  }
}

- (void)populateCellFallbackPropertiesForInterfaceRelay:(id)a3 onCAMetric:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 functionalInterfaceType];
  if (v7 == 5)
  {
    v8 = v5;
    if ([v8 active])
    {
      [v6 addCellIngressTriggers:2];
    }

    if ([v8 cellRrcConnected])
    {
      [v6 addCellIngressTriggers:32];
    }

    if ([v8 linkQuality])
    {
      [v6 addCellIngressTriggers:33];
    }
  }

  else if (v7 == 3)
  {
    if ([v5 active])
    {
      [v6 addWifiIngressTriggers:2];
    }

    if ([v5 primary])
    {
      [v6 addWifiIngressTriggers:3];
    }

    if ([v5 rxSignalThresholded])
    {
      [v6 addWifiIngressTriggers:5];
    }

    if ([v5 rxSignalFullBars])
    {
      [v6 addWifiIngressTriggers:26];
    }

    if ([v5 rxSignalExemptions])
    {
      if ([v5 rxSignalExemptions])
      {
        [v6 addWifiIngressTriggers:21];
      }

      if (([v5 rxSignalExemptions] & 2) != 0)
      {
        [v6 addWifiIngressTriggers:22];
      }

      if (([v5 rxSignalExemptions] & 4) != 0)
      {
        [v6 addWifiIngressTriggers:23];
      }

      if (([v5 rxSignalExemptions] & 8) != 0)
      {
        [v6 addWifiIngressTriggers:20];
      }
    }

    if ([v5 txThresholded])
    {
      [v6 addWifiIngressTriggers:10];
    }

    if ([v5 dnsOut])
    {
      [v6 addWifiIngressTriggers:7];
    }

    if ([v5 internetDnsOut])
    {
      [v6 addWifiIngressTriggers:14];
    }

    if ([v5 tcpExtraStatsPositive])
    {
      [v6 addWifiIngressTriggers:25];
    }

    if ([v5 tcpProgressHintsScore])
    {
      [v6 addWifiIngressTriggers:17];
    }

    if ([v5 noCostAdvantage])
    {
      [v6 addWifiIngressTriggers:28];
    }
  }

  else
  {
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "CFSM populateCellFallbackPropertiesForInterfaceRelay called for unsupported interface relay: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postUpwards:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NWAdviceLevelNoCase";
    if (a3 == 1)
    {
      v6 = "NWAdviceLevelWeak";
    }

    if (a3 == 2)
    {
      v6 = "NWAdviceLevelStrong";
    }

    *buf = 136315138;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM updating higher layers with command: %s", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, @"detail"}];
  v12 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"fallbackRecommendation" object:self userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)postUpwards:(int64_t)a3 appsWithStates:(id)a4 always:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5;
  }

  if (v8 && v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__CellFallbackHandler_postUpwards_appsWithStates_always___block_invoke;
    v11[3] = &unk_27898D2D0;
    v12 = v8;
    v13 = self;
    v15 = v5;
    v14 = a3;
    [(CellFallbackHandler *)self _canUseApps:v12 replyQueue:MEMORY[0x277D85CD0] reply:v11];
  }
}

void __57__CellFallbackHandler_postUpwards_appsWithStates_always___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v85 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v60 = a6;
  if (!v60)
  {
    v57 = v14;
    v58 = v13;
    v16 = [v11 mutableCopy];
    v63 = [v12 mutableCopy];
    v62 = [*(a1 + 32) mutableCopy];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v59 = v11;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v72;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v72 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v71 + 1) + 8 * i);
          v23 = [v17 objectForKeyedSubscript:v22];
          v24 = [v23 BOOLValue];

          if ((v24 & 1) == 0)
          {
            [v16 removeObjectForKey:v22];
            [v62 removeObjectForKey:v22];
            [v63 removeObjectForKey:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v19);
    }

    if ([*(*(a1 + 40) + 304) isEqualToDictionary:v16])
    {
      if (*(a1 + 56) != 1)
      {
        v55 = rnfLogHandle;
        v13 = v58;
        v11 = v59;
        v14 = v57;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_INFO, "CFSM advice level or app state did not change from last posting, suppressing consider alternate update", buf, 2u);
        }

        goto LABEL_44;
      }

      v56 = (a1 + 56);
    }

    else
    {
      objc_storeStrong((*(a1 + 40) + 304), v16);
      v56 = (a1 + 56);
    }

    v25 = *(a1 + 48);
    if (v25 != [*(a1 + 40) fallbackAdvice])
    {
      v26 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 40);
        v28 = v26;
        v29 = [v27 fallbackAdvice];
        v30 = *(a1 + 48);
        v31 = *(a1 + 56);
        *buf = 134218496;
        v81 = v29;
        v82 = 2048;
        *v83 = v30;
        *&v83[8] = 1024;
        *&v83[10] = v31;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "CFSM Split advice for consider alternate update, will choose fresh %ld over stale %ld, always %d", buf, 0x1Cu);
      }
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v17;
    v65 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v65)
    {
      v64 = *v68;
      v32 = &unk_27DDA1000;
      v61 = a1;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v68 != v64)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v67 + 1) + 8 * j);
          v35 = [v12 objectForKeyedSubscript:v34];
          if (v35)
          {
            v36 = v16;
            v37 = [obj objectForKeyedSubscript:v34];
            v38 = [v37 BOOLValue];

            if (v38)
            {
              v39 = 1;
            }

            else
            {
              v39 = 2;
            }

            v40 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v81 = v34;
              v82 = 1024;
              *v83 = v38;
              *&v83[4] = 2112;
              *&v83[6] = v35;
              _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "CFSM Sending telemetry [app: %@, allowed: %{BOOL}d, reason: %@]", buf, 0x1Cu);
            }

            v41 = *(a1 + 40);
            v42 = v35;
            v43 = v32[323];
            if (!v43)
            {
              v32[323] = &unk_2847EF548;

              v43 = &unk_2847EF548;
            }

            v44 = v12;
            v45 = [v43 objectForKeyedSubscript:v42];
            v46 = v45;
            if (v45)
            {
              v47 = [v45 intValue];
            }

            else
            {
              v47 = 3;
            }

            [v41 sendAppCanUseAlternateNetworkMetric:v34 deliberation:v39 rationale:v47];
            v12 = v44;
            v16 = v36;
            a1 = v61;
            v32 = &unk_27DDA1000;
          }
        }

        v65 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v65);
    }

    v77[0] = @"detail";
    v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "fallbackAdvice")}];
    v78[0] = v48;
    v78[1] = v62;
    v77[1] = @"states";
    v77[2] = @"reasons";
    v78[2] = v63;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:3];

    v75 = @"updateDetail";
    v76 = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v51 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v52 = @"app state";
      if (*v56)
      {
        v52 = @"advice level";
      }

      *buf = 138412546;
      v81 = v52;
      v82 = 2112;
      *v83 = v50;
      _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEFAULT, "CFSM updating higher layers with consider alternate update, triggered by %@ change: %@", buf, 0x16u);
    }

    v53 = [MEMORY[0x277CCAB98] defaultCenter];
    [v53 postNotificationName:@"considerAlternateUpdate" object:*(a1 + 40) userInfo:v50];

    v13 = v58;
    v11 = v59;
    v14 = v57;
LABEL_44:

    goto LABEL_45;
  }

  v15 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v81 = v60;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "CFSM dynamic blacklist returning error %@ in consider alternate update", buf, 0xCu);
  }

LABEL_45:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)postHasAdviceNotification:(BOOL)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CellFallbackHandler_postHasAdviceNotification___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (postHasAdviceNotification__onceToken_0 != -1)
  {
    dispatch_once(&postHasAdviceNotification__onceToken_0, block);
  }

  notify_set_state(self->notifyToken, v3);
  notify_post(*MEMORY[0x277D6B4B8]);
}

- (void)postMotionDetector:(unsigned int)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    motionDetectorState = self->motionDetectorState;
    *buf = 67109376;
    v23 = a3;
    v24 = 1024;
    v25 = motionDetectorState;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CFSM2 motion, in (command/state) = (%d/%d)", buf, 0xEu);
  }

  v7 = self->motionDetectorState;
  if (v7 == 1)
  {
    if (a3 == 2)
    {
      motionTimer = self->motionTimer;
      if (motionTimer)
      {
        dispatch_source_cancel(motionTimer);
      }

      v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v13 = self->motionTimer;
      self->motionTimer = v12;

      v14 = self->motionTimer;
      if (!v14)
      {
        v20 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Failed to create motion grace period timeout", buf, 2u);
        }

        [(MotionStateRelay *)self->motionRelay unsubscribe];
        v10 = 2;
        goto LABEL_12;
      }

      self->motionDetectorState = 3;
      v15 = dispatch_time(0, 120000000000);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      v16 = self->motionTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __42__CellFallbackHandler_postMotionDetector___block_invoke;
      handler[3] = &unk_27898A0C8;
      handler[4] = self;
      dispatch_source_set_event_handler(v16, handler);
      dispatch_resume(self->motionTimer);
    }
  }

  else
  {
    if (v7 == 3)
    {
      if (a3 != 1)
      {
        goto LABEL_18;
      }

      v8 = self->motionTimer;
      if (v8)
      {
        dispatch_source_cancel(v8);
        v9 = self->motionTimer;
        self->motionTimer = 0;
      }

      goto LABEL_11;
    }

    if (v7 == 2 && a3 == 1)
    {
      [(MotionStateRelay *)self->motionRelay subscribe];
LABEL_11:
      v10 = 1;
LABEL_12:
      self->motionDetectorState = v10;
    }
  }

LABEL_18:
  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->motionDetectorState;
    *buf = 67109376;
    v23 = a3;
    v24 = 1024;
    v25 = v18;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "CFSM2 motion, out (command/state) = (%d/%d)", buf, 0xEu);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __42__CellFallbackHandler_postMotionDetector___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 104) unsubscribe];
  *(*(a1 + 32) + 96) = 2;
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 96);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM2 motion, timeout (state) = (%d)", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_peekIntoCellPlan
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->nonDefaultHighCapacityCellPlan)
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      highCapacityCellPlan = self->highCapacityCellPlan;
      *buf = 67109120;
      v9 = highCapacityCellPlan;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CFSM data plan, ignoring carrier info due to non-default highCapacityCellPlan (%d)", buf, 8u);
    }
  }

  else
  {
    cellPlanObserver = self->cellPlanObserver;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__CellFallbackHandler__peekIntoCellPlan__block_invoke;
    v7[3] = &unk_27898D2F8;
    v7[4] = self;
    [(CTCarrierSpaceClient *)cellPlanObserver fetchDataPlanMetrics:v7];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __40__CellFallbackHandler__peekIntoCellPlan__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "CFSM data plan, metrics: %@, error: %@", buf, 0x16u);
  }

  if (!v5 || v6)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __40__CellFallbackHandler__peekIntoCellPlan__block_invoke_405;
    v16[3] = &unk_27898A0C8;
    v16[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v16);
  }

  else
  {
    v8 = [v5 domestic];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 capacityBytes];
      v11 = [v10 longLongValue] >> 32 > 4;

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__CellFallbackHandler__peekIntoCellPlan__block_invoke_406;
      block[3] = &unk_27898A3A0;
      block[4] = *(a1 + 32);
      v15 = v11;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v12 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "CFSM data plan, no domestic plan", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __40__CellFallbackHandler__peekIntoCellPlan__block_invoke_405(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 161) = 0;
  [*(*(a1 + 32) + 280) disable];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 161);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM data plan, restoring default highCapacityCellPlan (%d)", v5, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __40__CellFallbackHandler__peekIntoCellPlan__block_invoke_406(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 161);
    v4 = *(a1 + 40);
    v7[0] = 67109376;
    v7[1] = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "CFSM data plan, high capacity cell plan marker (was/is): %d/%d", v7, 0xEu);
  }

  *(*(a1 + 32) + 161) = *(a1 + 40);
  result = [*(*(a1 + 32) + 280) disable];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_isAppName:(id)a3 withState:(int64_t)a4 inListType:(int64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a5 > 1)
  {
    switch(a5)
    {
      case 2:
        if (a4 == 1)
        {
          v9 = _isAppName_withState_inListType__kBackgroundAlwaysEvaluateBundleIDList;
LABEL_19:
          v12 = [v7 UTF8String];
          v13 = strlen(v12);
          while (1)
          {
            v14 = *v9;
            v15 = strlen(*v9);
            if (v13 >= v15)
            {
              v16 = v15;
              if (!strcmp(v14, "ANY") || !strncasecmp(v12, v14, v16))
              {
                goto LABEL_31;
              }
            }

            ++v9;
            if (!--a4)
            {
              goto LABEL_40;
            }
          }
        }

        if (a4 != 2)
        {
          v10 = rnfLogHandle;
          if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          v23 = 138412802;
          v24 = v8;
          v25 = 2048;
          v26 = 2;
          v27 = 2048;
          v28 = a4;
          v11 = "CFSM dynamic blacklist: bundleName %@ type %ld unexpected state: %ld";
          goto LABEL_37;
        }

        break;
      case 3:
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v9 = _isAppName_withState_inListType__kCanMakeOverdraftList;
            goto LABEL_18;
          }

          v10 = rnfLogHandle;
          if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }

          v23 = 138412802;
          v24 = v8;
          v25 = 2048;
          v26 = 3;
          v27 = 2048;
          v28 = a4;
          v11 = "CFSM dynamic blacklist: bundleName %@ type %ld unexpected state: %ld";
LABEL_37:
          v18 = v10;
          v19 = 32;
          goto LABEL_38;
        }

        break;
      case 4:
        v9 = &_isAppName_withState_inListType__kWaiveJumboFlowPenaltyList;
LABEL_18:
        a4 = 1;
        goto LABEL_19;
      default:
LABEL_27:
        v17 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          v23 = 138412546;
          v24 = v8;
          v25 = 2048;
          v26 = a5;
          v11 = "CFSM dynamic blacklist: bundleName %@ unexpected type %ld";
          v18 = v17;
          v19 = 22;
LABEL_38:
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, v11, &v23, v19);
        }

LABEL_39:
        LOBYTE(a4) = 0;
        goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_27;
    }

    if (a4 != 1)
    {
      if (a4 == 2)
      {
        v9 = _isAppName_withState_inListType__kWaiveEvalAndApproveBundleIDList;
        a4 = 3;
        goto LABEL_19;
      }

      v10 = rnfLogHandle;
      if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v23 = 138412802;
      v24 = v8;
      v25 = 2048;
      v26 = 1;
      v27 = 2048;
      v28 = a4;
      v11 = "CFSM dynamic blacklist: bundleName %@ type %ld unexpected state: %ld";
      goto LABEL_37;
    }

LABEL_26:
    [v7 UTF8String];
    goto LABEL_39;
  }

  if ((a4 - 1) < 2)
  {
    goto LABEL_26;
  }

  v20 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    v23 = 138412802;
    v24 = v8;
    v25 = 2048;
    v26 = 0;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "CFSM dynamic blacklist: bundleName %@ type %ld unexpected state: %ld", &v23, 0x20u);
  }

LABEL_31:
  LOBYTE(a4) = 1;
LABEL_40:

  v21 = *MEMORY[0x277D85DE8];
  return a4;
}

+ (void)startRunningRNFTest
{
  v2 = +[CellFallbackHandler sharedInstance];
  if ([v2 internalBuild])
  {
    [v2 setRunningRNFTest:1];
  }
}

+ (void)stopRunningRNFTestWithReply:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[CellFallbackHandler sharedInstance];
  if ([v4 internalBuild])
  {
    if ([v4 runningRNFTest])
    {
      [v4 setRunningRNFTest:0];
      if (v3)
      {
        v5 = [MEMORY[0x277CBEAA8] date];
        [v5 timeIntervalSinceReferenceDate];
        [v4 RNFTestAbortWaitForIdleUntil:v3 reply:v6 + 10.0];
LABEL_9:
      }
    }

    else
    {
      if (v4[46])
      {
        v9 = 36;
      }

      else
      {
        v9 = 1;
      }

      if (v4[46])
      {
        v10 = @"RNFTest: RNF Test Abort called when already aborting";
      }

      else
      {
        v10 = @"RNFTest: RNF Test Abort called when not running an RNFTest";
      }

      v11 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      if (v3)
      {
        v17[0] = @"rnfTestResult";
        v17[1] = @"SymptomAnalyticsServiceReason";
        v18[0] = MEMORY[0x277CBEC28];
        v18[1] = v10;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v9 userInfo:0];
        v3[2](v3, v12, v13);
      }
    }
  }

  else
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = @"RNFTest: RNF Test Abort Not Suported";
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (v3)
    {
      v15[0] = @"rnfTestResult";
      v15[1] = @"SymptomAnalyticsServiceReason";
      v16[0] = MEMORY[0x277CBEC28];
      v16[1] = @"RNFTest: RNF Test Abort Not Suported";
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      v3[2](v3, v5, v8);

      goto LABEL_9;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)RNFTestAbortWaitForIdleUntil:(double)a3 reply:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = _Block_copy(v6);
    rnfTestAbortReply = self->rnfTestAbortReply;
    self->rnfTestAbortReply = v8;

    if (self->rnfTestAbortReply)
    {
      v10 = [(NSArray *)self->states objectAtIndexedSubscript:0];
      v11 = [self->currentState label];
      v12 = [v10 label];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        [(CellFallbackHandler *)self rnfTestAbortCFSMWentIdleReply:1];
      }

      else
      {
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        rnfTestIdleTimer = self->rnfTestIdleTimer;
        self->rnfTestIdleTimer = v14;

        v16 = self->rnfTestIdleTimer;
        if (v16)
        {
          v17 = dispatch_time(0, (a3 * 1000000000.0));
          dispatch_source_set_timer(v16, v17, 0x3B9ACA00uLL, 0x5F5E100uLL);
          v18 = self->rnfTestIdleTimer;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __58__CellFallbackHandler_RNFTestAbortWaitForIdleUntil_reply___block_invoke;
          handler[3] = &unk_27898A0C8;
          handler[4] = self;
          dispatch_source_set_event_handler(v18, handler);
          dispatch_resume(self->rnfTestIdleTimer);
        }
      }
    }
  }
}

- (void)rnfTestAbortCFSMWentIdleReply:(BOOL)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (self->rnfTestAbortReply)
  {
    v3 = a3;
    [(CellFallbackHandler *)self stopRNFTestIdleTimer];
    v5 = rnfLogHandle;
    if (v3)
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "RNFTest: CFSM in idle state after RNF Test Abort", buf, 2u);
      }

      v14 = @"rnfTestResult";
      v15[0] = MEMORY[0x277CBEC38];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v7 = 0;
    }

    else
    {
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = @"RNFTest: CFSM failed to get to idle state after RNF Test Abort";
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v10[0] = @"rnfTestResult";
      v10[1] = @"SymptomAnalyticsServiceReason";
      v11[0] = MEMORY[0x277CBEC28];
      v11[1] = @"RNFTest: CFSM failed to get to idle state after RNF Test Abort";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    }

    (*(self->rnfTestAbortReply + 2))();
    _Block_release(self->rnfTestAbortReply);
    rnfTestAbortReply = self->rnfTestAbortReply;
    self->rnfTestAbortReply = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopRNFTestIdleTimer
{
  rnfTestIdleTimer = self->rnfTestIdleTimer;
  if (rnfTestIdleTimer)
  {
    dispatch_source_cancel(rnfTestIdleTimer);
    v4 = self->rnfTestIdleTimer;
    self->rnfTestIdleTimer = 0;
  }
}

+ (void)requestBoost:(unsigned int)a3
{
  v4 = +[CellFallbackHandler sharedInstance];
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__CellFallbackHandler_requestBoost___block_invoke;
    v6[3] = &unk_27898CAB8;
    v7 = v4;
    v8 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (void)requestBoost:(unsigned int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CellFallbackHandler *)self rnfActivated];
    v8 = [(NetworkStateRelay *)self->wifiRelay tcpExtraStatsPositive];
    v10[0] = 67109888;
    v10[1] = v7;
    v11 = 1024;
    v12 = v8;
    v13 = 1024;
    v14 = [(CellFallbackHandler *)self boosted];
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM boost request (activated/tcpExtras/boosted/reason): %d/%d/%d/%d", v10, 0x1Au);
  }

  if ([(CellFallbackHandler *)self rnfActivated])
  {
    [(NetworkStateRelay *)self->wifiRelay setTcpExtraStatsPositive:1];
    [(CellFallbackHandler *)self setBoosted:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)canUseApps:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[CellFallbackHandler sharedInstance];
  v11 = v10;
  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__CellFallbackHandler_canUseApps_replyQueue_reply___block_invoke;
    block[3] = &unk_27898BFC8;
    v12 = &v18;
    v18 = v10;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__CellFallbackHandler_canUseApps_replyQueue_reply___block_invoke_2;
    v15[3] = &unk_27898C670;
    v12 = &v16;
    v16 = v9;
    v14 = v9;
    dispatch_async(v8, v15);
  }
}

void __51__CellFallbackHandler_canUseApps_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist returning error %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendAppCanUseAlternateNetworkMetric:(id)a3 deliberation:(int)a4 rationale:(int)a5
{
  v6 = a3;
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __82__CellFallbackHandler_sendAppCanUseAlternateNetworkMetric_deliberation_rationale___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 32);
  v7[0] = @"bundleID";
  v7[1] = @"deliberation";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v8[1] = v2;
  v7[2] = @"rationale";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_canUseApps:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v101 = *MEMORY[0x277D85DE8];
  v8 = a3;
  queue = a4;
  v64 = a5;
  context = objc_autoreleasePoolPush();
  v9 = [v8 count];
  v10 = [v8 mutableCopy];
  v69 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v9];
  v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v9];
  v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v68 = v10;
  v66 = v8;
  if (self->administrativeState == 1)
  {
    v89 = 0uLL;
    v90 = 0uLL;
    v87 = 0uLL;
    v88 = 0uLL;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v88;
      do
      {
        v16 = 0;
        do
        {
          if (*v88 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v87 + 1) + 8 * v16);
          if (self->_turboRNF)
          {
            [(CellFallbackHandler *)v69 _canUseApps:v11 replyQueue:v10 reply:?];
          }

          else
          {
            v18 = [v12 objectForKeyedSubscript:*(*(&v87 + 1) + 8 * v16)];
            v19 = [v18 integerValue];

            v86 = 0;
            if ([(CanUseAppsCache *)self->appsCache hasEntryFor:v17 state:v19 rationaleCode:&v86])
            {
              v20 = [CanUseAppsCache makeVerdictFromRationaleCode:v86];
              v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
              [v69 setObject:v21 forKeyedSubscript:v17];

              if (v86 - 1 >= 7)
              {
                v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", v86];
              }

              else
              {
                v22 = off_27898D430[v86 - 1];
              }

              [v11 setObject:v22 forKeyedSubscript:v17];

              goto LABEL_24;
            }

            v23 = [(NSMutableDictionary *)self->blockedRenewalLedger objectForKeyedSubscript:v17];
            v24 = [v23 BOOLValue];

            if (v24)
            {
              [v69 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v17];
              [v11 setObject:@"AppBlacklisted" forKeyedSubscript:v17];
              v25 = rnfLogHandle;
              v10 = v68;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v96 = v17;
                v97 = 2048;
                v98 = v19;
                _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist: blacklisting due to blocked renewal (app: %@, state: %ld)", buf, 0x16u);
              }

LABEL_22:
              appsCache = self->appsCache;
              v27 = v17;
              v28 = v19;
              v29 = 5;
LABEL_23:
              [(CanUseAppsCache *)appsCache insertEntryFor:v27 state:v28 rationaleCode:v29];
LABEL_24:
              [v10 removeObjectForKey:v17];
              goto LABEL_25;
            }

            v10 = v68;
            if ([(CellFallbackHandler *)self _isAppName:v17 withState:v19 inListType:0]&& ![(CellFallbackHandler *)self _isAppName:v17 withState:v19 inListType:2])
            {
              [v69 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v17];
              [v11 setObject:@"AppBlacklisted" forKeyedSubscript:v17];
              goto LABEL_22;
            }

            if ([(CellFallbackHandler *)self _isAppName:v17 withState:v19 inListType:1]&& ![(CellFallbackHandler *)self _isAppName:v17 withState:v19 inListType:2])
            {
              [v69 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v17];
              [v11 setObject:@"AppWhitelisted" forKeyedSubscript:v17];
              appsCache = self->appsCache;
              v27 = v17;
              v28 = v19;
              v29 = 6;
              goto LABEL_23;
            }
          }

LABEL_25:
          ++v16;
        }

        while (v14 != v16);
        v30 = [v12 countByEnumeratingWithState:&v87 objects:v99 count:16];
        v14 = v30;
      }

      while (v30);
    }
  }

  else
  {
    v93 = 0uLL;
    v94 = 0uLL;
    v91 = 0uLL;
    v92 = 0uLL;
    v31 = v8;
    v32 = [v31 countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v92;
      v35 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v92 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v91 + 1) + 8 * i);
          [v69 setObject:v35 forKeyedSubscript:v37];
          [v11 setObject:@"wifi assist disabled" forKeyedSubscript:v37];
          [v10 removeObjectForKey:v37];
        }

        v33 = [v31 countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v33);
    }
  }

  if ([v10 count])
  {
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke;
    v76[3] = &unk_27898D350;
    v67 = &v77;
    v38 = queue;
    v77 = queue;
    v59 = &v85;
    v85 = v64;
    v58 = &v78;
    v39 = v68;
    v40 = &v79;
    v78 = v39;
    v79 = v69;
    v41 = v80;
    v80[0] = v11;
    v80[1] = self;
    v42 = v69;
    v43 = v61;
    v81 = v61;
    v44 = v62;
    v82 = v66;
    v83 = v62;
    v45 = v60;
    v84 = v60;
    v46 = v60;
    v47 = v62;
    v48 = v11;
    v49 = v69;
    v50 = v39;
    v51 = v64;
    v10 = v68;
    [FlowAnalyticsEngine recentUsageForApps:v50 replyQueue:MEMORY[0x277D85CD0] reply:v76];
  }

  else
  {
    v52 = self;
    v43 = v61;
    v42 = v69;
    [(CellFallbackHandler *)v52 _setPolicyVerdictLedgerGivenAsk:v66 exceptions:v61 verdict:v69 explain:v11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_491;
    block[3] = &unk_27898C6C0;
    v67 = &v75;
    v51 = v64;
    v58 = &v72;
    v59 = &v71;
    v71 = v69;
    v72 = v11;
    v40 = &v73;
    v41 = &v74;
    v44 = v62;
    v73 = v62;
    v45 = v60;
    v74 = v60;
    v75 = v64;
    v53 = v60;
    v54 = v62;
    v55 = v11;
    v56 = v69;
    v38 = queue;
    dispatch_async(queue, block);
  }

  objc_autoreleasePoolPop(context);
  v57 = *MEMORY[0x277D85DE8];
}

void __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v159 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v117 = a3;
  v8 = a4;
  v116 = v7;
  if (!v8)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v120 = [v7 countByEnumeratingWithState:&v126 objects:v158 count:16];
    if (!v120)
    {
      goto LABEL_81;
    }

    v12 = 0x277CBE000uLL;
    v119 = *v127;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v127 != v119)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v126 + 1) + 8 * v13);
        v15 = [v7 objectForKeyedSubscript:v14];
        v16 = [*(a1 + 40) objectForKeyedSubscript:v14];
        v17 = [v16 integerValue];
        v18 = [*(v12 + 2920) null];
        v19 = [v15 isEqual:v18];

        v121 = v16;
        if (v16)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          if (v17 != 1)
          {
            goto LABEL_21;
          }

          v22 = [v117 objectForKeyedSubscript:v14];
          v23 = [v22 BOOLValue];
          v24 = *(a1 + 64);
          if (v23 && (v24[161] & 1) != 0)
          {

LABEL_19:
            [*(a1 + 72) addObject:v14];
            v26 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v26;
              v28 = [v117 objectForKeyedSubscript:v14];
              v29 = [v28 BOOLValue];
              v30 = *(*(a1 + 64) + 161);
              *buf = 138413058;
              v134 = v14;
              v135 = 1024;
              *v136 = 1;
              *&v136[4] = 1024;
              *&v136[6] = v29;
              LOWORD(v137) = 1024;
              *(&v137 + 2) = v30;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist: app %@ exception, will eval usage (background/audio/plan): %d/%d/%d", buf, 0x1Eu);
            }

LABEL_21:
            if (([v14 hasPrefix:@"com.apple."] & 1) == 0)
            {
              v31 = [MEMORY[0x277CBEAA8] date];
              v32 = [v15 objectForKeyedSubscript:@"timeStamp"];
              if (v32)
              {
                v33 = [*(v12 + 2920) null];
                if ([v32 isEqual:v33])
                {
                  v34 = 0;
                }

                else
                {
                  [v32 timeIntervalSinceDate:v31];
                  v34 = v40;
                }
              }

              else
              {
                v34 = 0;
              }

              if (v34 >= 0)
              {
                v41 = v34;
              }

              else
              {
                v41 = -v34;
              }

              if (*(*(a1 + 64) + 128) >= v41)
              {
                [*(a1 + 48) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
                [*(a1 + 56) setObject:@"AppSettleInPeriod" forKeyedSubscript:v14];

                v12 = 0x277CBE000;
                goto LABEL_62;
              }

              v12 = 0x277CBE000;
            }

            v42 = [v15 objectForKeyedSubscript:@"wwanIN"];
            [v42 doubleValue];
            v44 = v43;
            v45 = [v15 objectForKeyedSubscript:@"wwanOUT"];
            [v45 doubleValue];
            v47 = v44 + v46;

            v48 = [v15 objectForKeyedSubscript:@"wwanIN_exp"];
            [v48 doubleValue];
            v50 = v49;
            v51 = [v15 objectForKeyedSubscript:@"wwanOUT_exp"];
            [v51 doubleValue];
            v53 = v50 + v52;

            v54 = [v15 objectForKeyedSubscript:@"wifiIN"];
            [v54 doubleValue];
            v56 = v55;
            v57 = [v15 objectForKeyedSubscript:@"wifiOUT"];
            [v57 doubleValue];
            v59 = v56 + v58;

            v60 = [v15 objectForKeyedSubscript:@"xIN"];
            [v60 doubleValue];
            v62 = v61;
            v63 = [v15 objectForKeyedSubscript:@"xOUT"];
            [v63 doubleValue];
            v65 = v62 + v64;

            v66 = [v15 objectForKeyedSubscript:@"xIN_exp"];
            [v66 doubleValue];
            v68 = v67;
            v69 = [v15 objectForKeyedSubscript:@"xOUT_exp"];
            [v69 doubleValue];
            v71 = v68 + v70;

            v72 = [v15 objectForKeyedSubscript:@"allFlows"];
            [v72 doubleValue];
            v74 = v73;

            v75 = [v15 objectForKeyedSubscript:@"jumboFlows"];
            [v75 doubleValue];
            v77 = v76;

            if (v53 >= 1048576.0)
            {
              v78 = v71;
            }

            else
            {
              v78 = v65;
            }

            if (v53 < 1048576.0)
            {
              v53 = v47;
            }

            v79 = *(a1 + 64);
            if (v53 != 0.0 && v53 < *(v79 + 136) && v77 == 0.0 && v74 != 0.0 && (v47 + v59) / v74 < *(v79 + 144) || *(v79 + 152) >= 1.0)
            {
              [*(a1 + 48) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v14];
              [*(a1 + 56) setObject:@"AppFreePassed" forKeyedSubscript:v14];
              [*(*(a1 + 64) + 280) insertEntryFor:v14 state:v17 rationaleCode:7];
              v81 = 0;
              v118 = 0;
              goto LABEL_58;
            }

            if (v77 <= 0.0 || (v80 = [v79 _isAppName:v14 withState:v17 inListType:4], v79 = *(a1 + 64), (v80 & 1) != 0))
            {
              if (v53 == 0.0)
              {
                v81 = 0;
                v82 = -(v78 - v53 * *(v79 + 152)) / 8;
                goto LABEL_55;
              }

LABEL_53:
              v83 = *(v79 + 152);
              v82 = -(v78 - v53 * v83) / 8;
              if (v78 / v53 < v83)
              {
                v81 = 0;
                goto LABEL_55;
              }
            }

            else
            {
              if (v53 != 0.0)
              {
                goto LABEL_53;
              }

              v82 = -(v78 - v53 * *(v79 + 152)) / 8;
            }

            v92 = [*(v79 + 288) objectForKeyedSubscript:v14];
            v118 = v82;
            if (v92)
            {

              goto LABEL_71;
            }

            if ([*(a1 + 64) _isAppName:v14 withState:v17 inListType:3])
            {
              v93 = [TrackedFlow cellExpensiveUsageGrandTallyAfterAdding:0];
              v94 = v93;
              v95 = [TrackedFlow rnfExpensiveUsageGrandTallyAfterAdding:0];
              v96 = *(a1 + 64);
              v114 = v95;
              v115 = v93;
              if (v93)
              {
                v97 = *(v96 + 152);
                v81 = -(v95 - v94 * v97) / 8;
                if (v95 / v94 >= v97)
                {
                  v98 = 0;
                  goto LABEL_75;
                }
              }

              else
              {
                v81 = -(v95 - v94 * *(v96 + 152)) / 8;
              }

              v99 = [MEMORY[0x277CCABB0] numberWithLongLong:v81];
              [*(*(a1 + 64) + 288) setObject:v99 forKeyedSubscript:v14];

              v98 = 1;
LABEL_75:
              v100 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v113 = *(a1 + 80);
                v101 = v100;
                v102 = [v113 objectForKeyedSubscript:v14];
                v103 = [v102 integerValue];
                *buf = 138413314;
                v134 = v14;
                v135 = 2048;
                *v136 = v103;
                *&v136[8] = 2048;
                v137 = v115;
                v138 = 2048;
                v139 = v114;
                v140 = 2048;
                v141 = *&v81;
                _os_log_impl(&dword_23255B000, v101, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist overdrafting: %@, state: %ld, exp-cell/exp-rnf/overdraft = %f/%f/%lld", buf, 0x34u);
              }

              if (v98)
              {
                v12 = 0x277CBE000;
                v82 = v118;
LABEL_55:
                [*(a1 + 48) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v14];
                [*(a1 + 56) setObject:@"WithinAllowance" forKeyedSubscript:v14];
                v118 = v82;
                v84 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
                [*(a1 + 88) setObject:v84 forKeyedSubscript:v14];

                if (v81)
                {
                  v85 = [MEMORY[0x277CCABB0] numberWithLongLong:v81];
                  [*(a1 + 96) setObject:v85 forKeyedSubscript:v14];
                }

                [*(*(a1 + 64) + 280) insertEntryFor:v14 state:v17 rationaleCode:1];
LABEL_58:
                v86 = "";
LABEL_59:
                v87 = rnfLogHandle;
                if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_62;
                }

                v88 = *(a1 + 80);
                v89 = v87;
                v37 = [v88 objectForKeyedSubscript:v14];
                v90 = [v37 integerValue];
                v91 = [*(a1 + 56) objectForKeyedSubscript:v14];
                *buf = 138415362;
                v134 = v14;
                v135 = 2048;
                *v136 = v90;
                v7 = v116;
                *&v136[8] = 2048;
                v137 = v59;
                v138 = 2048;
                v139 = v47;
                v140 = 2048;
                v141 = v53;
                v142 = 2048;
                v143 = v65;
                v144 = 2048;
                v145 = v78;
                v146 = 2048;
                v147 = v77;
                v148 = 2048;
                v149 = v74;
                v150 = 2048;
                v151 = v118;
                v152 = 2048;
                v153 = v81;
                v154 = 2080;
                v155 = v86;
                v156 = 2112;
                v157 = v91;
                _os_log_impl(&dword_23255B000, v89, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist for app: %@, state: %ld, (wifi/cell/exp-cell/rnf/exp-rnf/jumbo/allflows/headroom/overdraft) %.0f/%.0f/%.0f/%.0f/%.0f/%.0f/%.0f/%lld/%lld, %sallow, code: %@", buf, 0x84u);

                v12 = 0x277CBE000;
LABEL_61:

                goto LABEL_62;
              }

              v12 = 0x277CBE000;
            }

            else
            {
LABEL_71:
              v81 = 0;
            }

            [*(a1 + 48) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
            [*(a1 + 56) setObject:@"OutsideAllowance" forKeyedSubscript:v14];
            v86 = "do NOT ";
            goto LABEL_59;
          }

          v25 = [v24 _isAppName:v14 withState:1 inListType:2];

          if (v25)
          {
            goto LABEL_19;
          }

          [*(a1 + 48) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
          [*(a1 + 56) setObject:@"AppBlacklisted" forKeyedSubscript:v14];
          [*(*(a1 + 64) + 280) insertEntryFor:v14 state:1 rationaleCode:5];
          v35 = rnfLogHandle;
          if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }

          v36 = v35;
          v37 = [v117 objectForKeyedSubscript:v14];
          v38 = [v37 BOOLValue];
          v39 = *(*(a1 + 64) + 161);
          *buf = 138413058;
          v134 = v14;
          v135 = 1024;
          *v136 = 1;
          *&v136[4] = 1024;
          *&v136[6] = v38;
          LOWORD(v137) = 1024;
          *(&v137 + 2) = v39;
          _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist: app %@ denied (background/audio/plan): %d/%d/%d", buf, 0x1Eu);

          goto LABEL_61;
        }

        [*(a1 + 48) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
        [*(a1 + 56) setObject:@"AppUnknown" forKeyedSubscript:v14];
        [*(*(a1 + 64) + 280) insertEntryFor:v14 state:v17 rationaleCode:3];
        v21 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v134 = v14;
          v135 = 2112;
          *v136 = v15;
          *&v136[8] = 2048;
          v137 = *&v17;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist unrecognized %@ (app: %@, state: %ld)", buf, 0x20u);
        }

LABEL_62:

        ++v13;
      }

      while (v120 != v13);
      v104 = [v7 countByEnumeratingWithState:&v126 objects:v158 count:16];
      v120 = v104;
      if (!v104)
      {
LABEL_81:
        [*(a1 + 64) _setPolicyVerdictLedgerGivenAsk:*(a1 + 80) exceptions:*(a1 + 72) verdict:*(a1 + 48) explain:*(a1 + 56)];
        v105 = *(a1 + 32);
        v122[0] = MEMORY[0x277D85DD0];
        v122[1] = 3221225472;
        v122[2] = __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_489;
        v122[3] = &unk_27898C6C0;
        v10 = &v125;
        v125 = *(a1 + 104);
        v11 = &v123;
        v106 = *(a1 + 48);
        v107 = *(a1 + 56);
        v108 = *(a1 + 88);
        v109 = *(a1 + 96);
        *&v110 = v108;
        *(&v110 + 1) = v109;
        *&v111 = v106;
        *(&v111 + 1) = v107;
        v123 = v111;
        v124 = v110;
        dispatch_async(v105, v122);

        v8 = 0;
        goto LABEL_82;
      }
    }
  }

  v9 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_2;
  block[3] = &unk_27898B678;
  v10 = &v132;
  v132 = *(a1 + 104);
  v11 = &v131;
  v131 = v8;
  dispatch_async(v9, block);
LABEL_82:

  v112 = *MEMORY[0x277D85DE8];
}

void __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist passing error %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_489(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  (*(a1[8] + 16))();
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v12 = 138413058;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist returning (value/reason/headroom/overdraft): %@/%@/%@/%@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __52__CellFallbackHandler__canUseApps_replyQueue_reply___block_invoke_491(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  (*(a1[8] + 16))();
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist short returning (value/reason): %@/%@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setPolicyVerdictLedgerGivenAsk:(id)a3 exceptions:(id)a4 verdict:(id)a5 explain:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31 = a6;
  v30 = self;
  self->appPolicyCheckedCount = 0;
  self->appPolicyDeniedCount = 0;
  p_appPolicyCheckedCount = &self->appPolicyCheckedCount;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        v19 = [v10 objectForKeyedSubscript:*&v18];
        v20 = [v19 integerValue];

        v21 = [v12 objectForKeyedSubscript:*&v18];
        if (v21)
        {
          if (v20 == 2 || ([v11 member:*&v18], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
          {
            ++*p_appPolicyCheckedCount;
            if (([v21 BOOLValue] & 1) == 0)
            {
              v23 = [v31 objectForKeyedSubscript:*&v18];
              v24 = [v23 isEqualToString:@"AppUnknown"];

              if ((v24 & 1) == 0)
              {
                ++v30->appPolicyDeniedCount;
              }
            }
          }
        }

        else
        {
          v25 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v37 = v18;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist no verdict for requested app: %@", buf, 0xCu);
          }
        }
      }

      v15 = [v10 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v15);
  }

  v26 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
  {
    v27 = v26;
    [(CellFallbackHandler *)v30 _appPolicyDenialsScore];
    *buf = 134217984;
    v37 = v28;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "CFSM dynamic blacklist policy score: %f", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (float)appPolicyDenialsScore
{
  v2 = +[CellFallbackHandler sharedInstance];
  v3 = v2;
  if (v2)
  {
    [v2 _appPolicyDenialsScore];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (float)_appPolicyDenialsScore
{
  result = 1.0;
  if (self->administrativeState == 1)
  {
    appPolicyCheckedCount = self->appPolicyCheckedCount;
    if (appPolicyCheckedCount)
    {
      return self->appPolicyDeniedCount / appPolicyCheckedCount;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (void)_updateCellFallbackState
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->cellFallbackObserver)
  {
    v3 = tcp_fallback_watcher_fallback_inuse();
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      cellFallbackInUse = self->cellFallbackInUse;
      *buf = 67109376;
      v28 = cellFallbackInUse;
      v29 = 1024;
      v30 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM current fallback state update, was: %d, is: %d", buf, 0xEu);
    }

    if (self->cellFallbackInUse != v3)
    {
      cellFallbackTimer = self->cellFallbackTimer;
      if (cellFallbackTimer)
      {
        dispatch_source_cancel(cellFallbackTimer);
        v7 = self->cellFallbackTimer;
        self->cellFallbackTimer = 0;
      }

      if ([(CellFallbackHandler *)self internalBuild])
      {
        [(CellFallbackHandler *)self stopWrongUsageGracePeriodTimer];
      }

      if (v3)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __47__CellFallbackHandler__updateCellFallbackState__block_invoke;
        v25[3] = &unk_27898C4B8;
        v9 = v8;
        v26 = v9;
        [FlowAnalyticsEngine appsWithFlowsPassingTest:v25 replyQueue:MEMORY[0x277D85CD0] reply:&__block_literal_global_498];
        if (self->administrativeState != 1)
        {
          v10 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "CFSM current fallback posting SYMPTOM_RNF_FLOW_WHEN_DISABLED symptom", buf, 2u);
          }

          compose_internal_symptom(405507);
          internal_symptom_send();
        }

        v11 = [MEMORY[0x277CBEAA8] date];
        lastCellFallbackTime = self->lastCellFallbackTime;
        self->lastCellFallbackTime = v11;

        v13 = MEMORY[0x277D85CD0];
        v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        v15 = self->cellFallbackTimer;
        self->cellFallbackTimer = v14;

        v16 = self->cellFallbackTimer;
        if (v16)
        {
          v17 = dispatch_time(0, 300000000000);
          dispatch_source_set_timer(v16, v17, 0x45D964B800uLL, 0);
          v18 = self->cellFallbackTimer;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __47__CellFallbackHandler__updateCellFallbackState__block_invoke_502;
          handler[3] = &unk_27898A0C8;
          handler[4] = self;
          dispatch_source_set_event_handler(v18, handler);
          dispatch_resume(self->cellFallbackTimer);
        }

        else
        {
          v20 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "CFSM Failed to create fallback strobe", buf, 2u);
          }
        }

        self->cellFallbackInUse = v3;
        v21 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "CFSM canUse cache: disabling given there's actual RNF activity", buf, 2u);
        }

        [(CanUseAppsCache *)self->appsCache disable];
      }

      else
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        setApparentTime(v19);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __47__CellFallbackHandler__updateCellFallbackState__block_invoke_507;
        v23[3] = &unk_27898BB90;
        v23[4] = self;
        [FlowRefreshScheduler refreshDataUsageMaxStale:@"RNF edge down" maxDelay:v23 logAs:0.0 callback:1.0];
        self->cellFallbackInUse = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL __47__CellFallbackHandler__updateCellFallbackState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRNF])
  {
    v4 = *(a1 + 32);
    v5 = [v3 startingTimestamp];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6 > 1200.0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __47__CellFallbackHandler__updateCellFallbackState__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v11 = 134217984;
    v12 = [v2 count];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM current fallback non-conforming flows %lu", &v11, 0xCu);
  }

  if ([v2 count])
  {
    v5 = [v2 valueForKeyPath:@"@distinctUnionOfObjects.self"];
    v6 = [v5 count];
    compose_internal_symptom(405509);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = [v5 objectAtIndex:i];
        v9 = [v8 UTF8String];

        strlen(v9);
        internal_symptom_set_additional_qualifier();
      }
    }

    internal_symptom_send();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __47__CellFallbackHandler__updateCellFallbackState__block_invoke_502(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  result = tcp_fallback_watcher_fallback_inuse();
  if (result)
  {
    [*(*(a1 + 32) + 224) timeIntervalSinceNow];
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM current fallback posting SYMPTOM_RNF_EXCEEDED_NONSTOP_STAY symptom", v5, 2u);
    }

    compose_internal_symptom(405508);
    return internal_symptom_send();
  }

  return result;
}

- (void)processRefreshedRNFDataUsageWithGrace:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [TrackedFlow rnfUsageGrandTallyAfterAdding:0];
  if (v5 == self->lastCellFallbackUsageMarker && [(CellFallbackHandler *)self internalBuild])
  {
    v6 = rnfLogHandle;
    v7 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM current fallback posting SYMPTOM_RNF_WRONG_USAGE_COUNT symptom", buf, 2u);
      }

      compose_internal_symptom(405511);
      internal_symptom_send();
    }

    else
    {
      if (v7)
      {
        *buf = 134217984;
        v18 = 5;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "CFSM rnfUsage hasn't moved. Let's give it a grace period of %llu seconds.", buf, 0xCu);
      }

      wrongUsageGracePeriodTimer = self->wrongUsageGracePeriodTimer;
      if (wrongUsageGracePeriodTimer)
      {
        v10 = dispatch_time(0, 5000000000);
        dispatch_source_set_timer(wrongUsageGracePeriodTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      }

      else
      {
        v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
        v12 = self->wrongUsageGracePeriodTimer;
        self->wrongUsageGracePeriodTimer = v11;

        v13 = self->wrongUsageGracePeriodTimer;
        if (v13)
        {
          v14 = dispatch_time(0, 5000000000);
          dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          v15 = self->wrongUsageGracePeriodTimer;
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 3221225472;
          handler[2] = __61__CellFallbackHandler_processRefreshedRNFDataUsageWithGrace___block_invoke;
          handler[3] = &unk_27898A0C8;
          handler[4] = self;
          dispatch_source_set_event_handler(v15, handler);
          dispatch_resume(self->wrongUsageGracePeriodTimer);
        }
      }
    }
  }

  else
  {
    self->lastCellFallbackUsageMarker = v5;
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __61__CellFallbackHandler_processRefreshedRNFDataUsageWithGrace___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__CellFallbackHandler_processRefreshedRNFDataUsageWithGrace___block_invoke_2;
  v3[3] = &unk_27898BB90;
  v3[4] = *(a1 + 32);
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"RNF refresh with grace" maxDelay:v3 logAs:0.0 callback:2.5];
  return [*(a1 + 32) stopWrongUsageGracePeriodTimer];
}

- (void)_updateMptcpState
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->mptcpObserver)
  {
    v3 = network_config_mptcp_cell_in_use();
    v4 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      mptcpInUse = self->mptcpInUse;
      v9[0] = 67109376;
      v9[1] = mptcpInUse;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "CFSM current mptcp state update, was: %d, is: %d", v9, 0xEu);
    }

    if (self->mptcpInUse != v3)
    {
      self->mptcpInUse = v3;
      if (v3)
      {
        v6 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "CFSM canUse cache: disabling given there's actual MPTCP activity", v9, 2u);
        }

        [(CanUseAppsCache *)self->appsCache disable];
      }
    }
  }

  else
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "CFSM no mptcp observer?!", v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_trackCellUsageAfterTriggerDisconnectWithNewSeries:(BOOL)a3
{
  v5 = [TrackedFlow activeFlowsCountForType:1];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v6);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke;
  v7[3] = &unk_27898D398;
  v8 = a3;
  v7[4] = self;
  v7[5] = v5;
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"TD new series" maxDelay:v7 logAs:0.0 callback:0.0];
}

void __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke_2;
  block[3] = &unk_27898A6B8;
  v3 = *(a1 + 48);
  v1 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [TrackedFlow activeFlowsCountForType:1];
  v3 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
  v4 = v3 - [TrackedFlow rnfUsageGrandTallyAfterAdding:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 272);
  if (*(a1 + 48) == 1)
  {
    if (v6)
    {
      v7 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(a1 + 32) + 272);
        *buf = 134217984;
        v28 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "CFSM TriggerDisconnect logs, preexisting record: %p, will be archived", buf, 0xCu);
      }

      v5 = *(a1 + 32);
    }

    v9 = *(v5 + 264);
    if (v9)
    {
      dispatch_source_cancel(v9);
    }

    v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v11 = *(a1 + 32);
    v12 = *(v11 + 264);
    *(v11 + 264) = v10;

    v13 = *(*(a1 + 32) + 264);
    v14 = dispatch_time(0, 900000000000);
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    v15 = *(a1 + 32);
    v16 = *(v15 + 264);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke_515;
    handler[3] = &unk_27898A0C8;
    handler[4] = v15;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(*(*(a1 + 32) + 264));
    v17 = [[CAUsageDeltaTracker alloc] initForNetworkType:5 rootCause:1 startValue:v4];
    v18 = *(a1 + 32);
    v19 = *(v18 + 272);
    *(v18 + 272) = v17;

    if (*(*(a1 + 32) + 272))
    {
      v20 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 40);
        *buf = 134218240;
        v28 = v21;
        v29 = 2048;
        v30 = v2;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "CFSM TriggerDisconnect logs, flow counts read are: %llu, %llu", buf, 0x16u);
      }

      if (*(a1 + 40) <= v2)
      {
        v22 = v2;
      }

      else
      {
        v22 = *(a1 + 40);
      }

      [*(*(a1 + 32) + 272) recordFlowCount:v22];
    }

LABEL_21:
    v25 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!v6)
  {
    v24 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "CFSM TriggerDisconnect logs, no record, will drop usage", buf, 2u);
    }

    goto LABEL_21;
  }

  v23 = *MEMORY[0x277D85DE8];

  [v6 recordUsageValue:v4];
}

void __74__CellFallbackHandler__trackCellUsageAfterTriggerDisconnectWithNewSeries___block_invoke_515(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 272);
  *(v1 + 272) = 0;
}

- (id)internalStateDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->administrativeState];
  [v3 setObject:v4 forKeyedSubscript:@"adminEnabled"];

  v5 = [self->currentState label];
  [v3 setObject:v5 forKeyedSubscript:@"stateMachineState"];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->currentPolicy];
  [v6 setObject:v7 forKeyedSubscript:@"currentPolicy"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->hasMDMProfile];
  [v6 setObject:v8 forKeyedSubscript:@"mdmProfileInstalled"];

  [v6 setObject:@"DISABLED" forKeyedSubscript:@"systemForeground"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->appBlacklistsSettleTime];
  [v6 setObject:v9 forKeyedSubscript:@"appBlacklistsSettleTime"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->appBlacklistsFreePassCellMax];
  [v6 setObject:v10 forKeyedSubscript:@"appBlacklistsFreePassCellMax"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->appBlacklistsFreePassFlowMax];
  [v6 setObject:v11 forKeyedSubscript:@"appBlacklistsFreePassFlowMax"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->appBlacklistsRNFToCellRatio];
  [v6 setObject:v12 forKeyedSubscript:@"appBlacklistsRNFToCellRatio"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->nonDefaultAppBlacklistsRNFToCellRatio];
  [v6 setObject:v13 forKeyedSubscript:@"nonDefaultAppBlacklistsRNFToCellRatio"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->highCapacityCellPlan];
  [v6 setObject:v14 forKeyedSubscript:@"highCapacityCellPlan"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->nonDefaultHighCapacityCellPlan];
  [v6 setObject:v15 forKeyedSubscript:@"nonDefaultHighCapacityCellPlan"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->needExtendedSignatures];
  [v6 setObject:v16 forKeyedSubscript:@"needExtendedSignatures"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->useAllTCPStats];
  [v6 setObject:v17 forKeyedSubscript:@"useAllTCPStats"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_turboRNF];
  [v6 setObject:v18 forKeyedSubscript:@"turboRNF"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:5];
  [v6 setObject:v19 forKeyedSubscript:@"turboRNF grace period"];

  [v3 setObject:v6 forKeyedSubscript:@"internalStateVariables"];

  return v3;
}

+ (id)internalStateDictionary
{
  v2 = +[CellFallbackHandler sharedInstance];
  v3 = [v2 internalStateDictionary];

  return v3;
}

BOOL __37__CellFallbackHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_22;
  sharedInstance_sharedInstance_22 = v1;

  v3 = sharedInstance_sharedInstance_22;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  v6 = sharedInstance_sharedInstance_22;

  return [ManagedEventTransport setInfoProvider:v6 forId:6];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[CellFallbackHandler sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

- (int)read:(id)a3 returnedValues:(id)a4
{
  v4 = a4;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6
{
  v8 = a5;
  v9 = a6;
  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke;
    v13[3] = &unk_27898D410;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    [FlowAnalyticsEngine checkForegroundStateForProcessWithUUID:v14 replyQueue:MEMORY[0x277D85CD0] reply:v13];
  }

  else
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "CFSM dynamic blacklist express: invalid uuid", v12, 2u);
    }

    v11 = [MEMORY[0x277CBEAA8] date];
    (*(v9 + 2))(v9, 22, 0, v11, 0, 0, 0);
  }
}

void __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = 1;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(*(a1 + 32) + 382);
    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v7)
  {
    v8 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_2;
    v17[3] = &unk_27898D3E8;
    v9 = v8;
    v10 = *(a1 + 32);
    v18 = v9;
    v19 = v10;
    v20 = *(a1 + 48);
    [FlowAnalyticsEngine identifierForUUID:v8 replyQueue:MEMORY[0x277D85CD0] reply:v17];

    v11 = v18;
    goto LABEL_12;
  }

LABEL_7:
  v12 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    *buf = 138412802;
    v22 = v13;
    v23 = 1024;
    v24 = v7 & 1;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "CFSM dynamic blacklist express, denying entry (uuid/foreground/error): %@/%d/%@", buf, 0x1Cu);
  }

  v14 = *(a1 + 48);
  if (v6)
  {
    v15 = [v6 code];
    v11 = [MEMORY[0x277CBEAA8] date];
    (*(v14 + 16))(v14, v15, 0, v11, 0, 0, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    (*(v14 + 16))(v14, 0, 0, v11, 0, 0, 0);
  }

LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

void __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 length] && (v10 = objc_msgSend(v8, "isEqualToString:", @"bundleIdentifier"), !v9) && v10)
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      *buf = 138413058;
      v29 = v12;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist express (uuid/name/kind/error): %@/%@/%@/%@", buf, 0x2Au);
    }

    v26 = v7;
    v27 = &unk_2847EF8D8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v14 = a1[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_566;
    v22[3] = &unk_27898D3C0;
    v15 = v7;
    v16 = a1[5];
    v17 = a1[6];
    v23 = v15;
    v24 = v16;
    v25 = v17;
    [v14 _canUseApps:v13 replyQueue:MEMORY[0x277D85CD0] reply:v22];
  }

  else
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v19 = a1[4];
      *buf = 138413058;
      v29 = v19;
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "CFSM dynamic blacklist express, failed to resolve (uuid/name/kind/error): %@/%@/%@/%@", buf, 0x2Au);
    }

    v20 = a1[6];
    v13 = [MEMORY[0x277CBEAA8] date];
    (*(v20 + 16))(v20, 2, 0, v13, 0, 0, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __70__CellFallbackHandler_generateInfoForId_context_uuid_completionBlock___block_invoke_566(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = rnfLogHandle;
  if (v15)
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "CFSM dynamic blacklist express: returned error: %@", buf, 0xCu);
    }

    v17 = a1[6];
    v18 = [v15 code];
    v19 = [MEMORY[0x277CBEAA8] date];
    (*(v17 + 16))(v17, v18, 0, v19, 0, 0, 0);
  }

  else
  {
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[4];
      log = v16;
      v34 = [v11 objectForKeyedSubscript:v20];
      v21 = [v12 objectForKeyedSubscript:a1[4]];
      v22 = [v13 objectForKeyedSubscript:a1[4]];
      v23 = [v14 objectForKeyedSubscript:a1[4]];
      *buf = 138413314;
      v37 = v34;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = 0;
      _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "CFSM dynamic blacklist express response (verdict/reason/headroomBytes/overdraftBytes/error): %@/%@/%@/%@/%@", buf, 0x34u);
    }

    v24 = [v13 objectForKeyedSubscript:a1[4]];
    v25 = [v24 longLongValue];

    v26 = v25 & ~(v25 >> 63);
    v27 = [v14 objectForKeyedSubscript:a1[4]];
    v28 = [v27 longLongValue];

    v29 = v28 & ~(v28 >> 63);
    v30 = 10485760;
    if (v29 < 10485760)
    {
      v30 = v28 & ~(v28 >> 63);
    }

    if (v28 >= 1)
    {
      v29 = v30;
    }

    if (v26 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v26;
    }

    if (!v31)
    {
      [*(a1[5] + 296) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:a1[4]];
    }

    v32 = a1[6];
    v19 = [MEMORY[0x277CBEAA8] date];
    (*(v32 + 16))(v32, 0, 0, v19, 0, v31, 0);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)noteSymptom:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__CellFallbackHandler_noteSymptom___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = v4;
  v9 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  return 1;
}

void __35__CellFallbackHandler_noteSymptom___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventKey];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "CFSM: receiving symptom with key: %@", &v26, 0xCu);
  }

  v4 = [SymptomStore keyFromSymptomName:@"com.apple.wrm.CallOn"];
  v5 = [v2 isEqualToString:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = 1;
LABEL_7:
    [v6 setWifiCallUnderway:v7];
    goto LABEL_8;
  }

  v8 = [SymptomStore keyFromSymptomName:@"com.apple.wrm.CallOff"];
  v9 = [v2 isEqualToString:v8];

  if (v9)
  {
    v6 = *(a1 + 40);
    v7 = 0;
    goto LABEL_7;
  }

  v11 = [SymptomStore keyFromSymptomName:@"com.apple.wifimanager.trigger-disconnect"];
  v12 = [v2 isEqualToString:v11];

  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = 1;
LABEL_13:
    [v13 _trackCellUsageAfterTriggerDisconnectWithNewSeries:v14];
    goto LABEL_8;
  }

  v15 = [SymptomStore keyFromSymptomName:@"com.apple.wifimanager.auto-join-scan"];
  v16 = [v2 isEqualToString:v15];

  if (v16)
  {
    v13 = *(a1 + 40);
    v14 = 0;
    goto LABEL_13;
  }

  v17 = [SymptomStore keyFromSymptomName:@"com.apple.wifimanager.link-quality"];
  v18 = [v2 isEqualToString:v17];

  if (v18)
  {
    v19 = *(a1 + 40);
    v20 = *(v19 + 272);
    *(v19 + 272) = 0;

    v21 = *(*(a1 + 40) + 264);
    if (v21)
    {
      dispatch_source_cancel(v21);
    }
  }

  else
  {
    v22 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v23 = v2;
      v24 = v22;
      v25 = [v2 UTF8String];
      v26 = 136315138;
      v27 = v25;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "CFSM: Unable to process symptom: %s", &v26, 0xCu);
    }
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_canUseApps:(void *)a3 replyQueue:(void *)a4 reply:.cold.1(void *a1, uint64_t a2, void *a3, void *a4)
{
  [a1 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:a2];
  [a3 setObject:@"AppFreePassed" forKeyedSubscript:a2];
  return [a4 removeObjectForKey:a2];
}

@end