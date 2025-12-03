@interface CellOutrankHandler
+ (id)configureClass:(id)class;
+ (id)internalStateDictionary;
+ (id)sharedInstance;
+ (void)initialize;
+ (void)noteOutrankEvent:(unint64_t)event;
- (BOOL)historyAllowsOutrankForSSID:(id)d;
- (CellOutrankHandler)init;
- (id)_WRMStatusString:(id)string status:(unint64_t)status timestamp:(double)timestamp;
- (int)cellOutrankReportableTransitionPrimaryReason;
- (int)configureFromPrefs:(id)prefs;
- (void)_administrativeDisable;
- (void)_administrativeEnable;
- (void)_completeInitialization;
- (void)_dumpState;
- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)_initializeUserFlowMonitor;
- (void)_refreshWifiShimItems;
- (void)_updateWiFi:(id)fi;
- (void)armedStateEntryAction;
- (void)checkEnablement;
- (void)checkUniqueStallCountOnInterfaceType:(int64_t)type stallType:(unint64_t)stallType;
- (void)dealloc;
- (void)entryActionForState:(unsigned int)state;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)handleWRMState:(unint64_t)state;
- (void)idleStateEntryAction;
- (void)ingestCurrentState;
- (void)initializeHistory;
- (void)noteOutrankEvent:(unint64_t)event;
- (void)noteStateChange:(id)change new:(id)new old:(id)old;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)outrankStateEntryAction;
- (void)outrankStateExitAction;
- (void)queryHomeLOIRefresh:(BOOL)refresh;
- (void)reportOutrankABCCase:(id)case singleShot:(BOOL)shot;
- (void)resetHistoryForSSID:(id)d;
- (void)restoreDefaults;
- (void)setCellOutrankReport:(unint64_t)report;
- (void)setConfiguration:(id)configuration;
- (void)setHistoryForSSID:(id)d;
- (void)setNonIdle:(BOOL)idle;
- (void)setPollingRequested:(BOOL)requested;
- (void)startObservingLOIChanges;
- (void)stopObservingLOIChanges;
- (void)updateForAssociation:(id)association;
- (void)wifiShim_CurrentAssociationChanged:(BOOL)changed associationInfo:(id)info;
- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid;
@end

@implementation CellOutrankHandler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CellOutrankHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_7 != -1)
  {
    dispatch_once(&sharedInstance_pred_7, block);
  }

  v2 = sharedInstance_sharedInstance_7;

  return v2;
}

- (void)ingestCurrentState
{
  v16 = *MEMORY[0x277D85DE8];
  atomic_store(0, &self->_pendingStateChanges);
  stateWatcher = self->_stateWatcher;
  v4 = objc_alloc_init(COSMStateSummary);
  v5 = [(StateWatcher *)stateWatcher currentStateSummary:v4];

  [(NSDictionary *)v5 setTargetHandler:self->_cellOutrankHandlerSTM];
  [(NSDictionary *)v5 mergeEvents:self->_eventSummary];
  [(COSMEventSummary *)self->_eventSummary clear];
  if (self->_stateOverridePars)
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      stateOverridePars = self->_stateOverridePars;
      *buf = 138543362;
      v15 = stateOverridePars;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "COSM: applying override for testing %{public}@", buf, 0xCu);
    }

    [(NSDictionary *)v5 applyDictionary:self->_stateOverridePars];
    v8 = [(NSDictionary *)self->_stateOverridePars objectForKeyedSubscript:@"cellWRMStatus"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 intValue] != 3)
      {
        v9 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "COSM: noteStateChange, force cellWRMStatusProlongedBad to NO", buf, 2u);
        }

        [(NSDictionary *)v5 applyDictionary:&unk_2847EF458];
      }
    }
  }

  v10 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSM: ingestCurrentState %@", buf, 0xCu);
  }

  self->_latestReasonFlags = [(NSDictionary *)v5 reasonFlags];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CellOutrankHandler_ingestCurrentState__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (ingestCurrentState_onceToken != -1)
  {
    dispatch_once(&ingestCurrentState_onceToken, block);
  }

  [(CellOutrankMetrics *)self->_outrankMetrics updateMetricsForState:v5];
  v11 = [(CellOutrankHandlerSTM *)self->_cellOutrankHandlerSTM evaluateState:v5];
  if (v11 != self->_currentCOSMState)
  {
    [(CellOutrankHandler *)self newSTMState:v11 fromDeviceState:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__CellOutrankHandler__completeInitialization__block_invoke_2_677(uint64_t a1, int token)
{
  v11 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(token, &state64);
  v4 = outrankLogHandle;
  if (state)
  {
    v5 = state;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v10) = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Failed to get the state for com.apple.WRM.iRAT_event.linkRecommendation (%u)", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = state64;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM WRM notification 0x%llx", buf, 0xCu);
    }

    *(*(a1 + 32) + 448) = *(*(a1 + 32) + 432);
    *(*(a1 + 32) + 456) = *(*(a1 + 32) + 440);
    *(*(a1 + 32) + 432) = state64;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 440) = v6;
    [*(a1 + 32) handleWRMState:state64];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (int)cellOutrankReportableTransitionPrimaryReason
{
  [(CellOutrankHandler *)self cellOutrankReportableTransitionFlags];

  return [COSMStateSummary primaryReasonFromFlags:"primaryReasonFromFlags:state:" state:?];
}

- (void)dealloc
{
  [(CellOutrankHandler *)self _administrativeDisable];
  if (self->_observingSystemSettingsRelay)
  {
    v3 = +[SystemSettingsRelay defaultRelay];
    [v3 removeObserver:self forKeyPath:@"cellOutrankEnabled"];
  }

  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"active"];
  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"dnsOut"];
  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"knowableSporadic"];
  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"knownSporadic"];
  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"firstAttachment"];
  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"loi"];
  [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"interfaceName"];
  [(MiscStateRelay *)self->_miscStateRelay removeObserver:self forKeyPath:@"wifiPolledFlowsCurrentlyBad"];
  v4 = +[CellOutrankForceSPIHandler sharedInstance];
  [v4 removeObserver:self forKeyPath:@"cellOutrankForcedViaSPI"];

  [(CellOutrankTrialExperimentHandler *)self->_trialExperimentHandler unsubscribeFromTrialUpdates];
  [(LocationStateRelay *)self->_locationRelay removeObserver:self forKeyPath:@"LOIUseAuthorized"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = defaultCenter;
  if (self->_relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
    relayReadyObserver = self->_relayReadyObserver;
    self->_relayReadyObserver = 0;
  }

  if (self->_wifiEpochObserver)
  {
    [v6 removeObserver:?];
    wifiEpochObserver = self->_wifiEpochObserver;
    self->_wifiEpochObserver = 0;
  }

  if (self->_captivityIndeterminateObserver)
  {
    [v6 removeObserver:?];
    captivityIndeterminateObserver = self->_captivityIndeterminateObserver;
    self->_captivityIndeterminateObserver = 0;
  }

  if (self->_polledFlowObserver)
  {
    [v6 removeObserver:?];
    polledFlowObserver = self->_polledFlowObserver;
    self->_polledFlowObserver = 0;
  }

  v11.receiver = self;
  v11.super_class = CellOutrankHandler;
  [(ExpertSystemHandlerCore *)&v11 dealloc];
}

- (void)_administrativeEnable
{
  v2 = outrankLogHandle;
  if (self->_administrativeState == 2)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM administrativeEnable", buf, 2u);
    }

    [(DataStallHandler *)self->_dataStallHandler addDelegate:self];
    [(WiFiShim *)self->_wifiShim addDelegate:self];
    [(CellOutrankHandler *)self _refreshWifiShimItems];
    [(CoreTelephonyShim *)self->_ctShim addDelegate:self];
    stateWatcher = self->_stateWatcher;
    if (stateWatcher)
    {
      [(StateWatcher *)stateWatcher enable];
    }

    if (![(MiscStateRelay *)self->_miscStateRelay homeLocationIsKnown])
    {
      [(CellOutrankHandler *)self queryHomeLOIRefresh:0];
    }

    self->_administrativeState = 1;
    [(CellOutrankHandlerSTM *)self->_cellOutrankHandlerSTM administrativeEnable];
  }

  else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM ignoring double turn-on issue", v5, 2u);
  }
}

- (void)_administrativeDisable
{
  v2 = outrankLogHandle;
  if (self->_administrativeState == 1)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM administrativeDisable", buf, 2u);
    }

    [(DataStallHandler *)self->_dataStallHandler removeDelegate:self];
    [(WiFiShim *)self->_wifiShim removeDelegate:self];
    [(CoreTelephonyShim *)self->_ctShim removeDelegate:self];
    stateWatcher = self->_stateWatcher;
    if (stateWatcher)
    {
      [(StateWatcher *)stateWatcher disable];
    }

    [(CellOutrankHandler *)self stopObservingLOIChanges];
    self->_administrativeState = 2;
    [(CellOutrankHandlerSTM *)self->_cellOutrankHandlerSTM administrativeDisable];
  }

  else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM ignoring double turn-off issue", v5, 2u);
  }
}

- (id)_WRMStatusString:(id)string status:(unint64_t)status timestamp:(double)timestamp
{
  v7 = BYTE3(status);
  v8 = MEMORY[0x277CCACA8];
  stringCopy = string;
  v10 = [v8 alloc];
  v11 = dateStringMillisecondsFromReferenceInterval(timestamp);
  v12 = [v10 initWithFormat:@"COSM WRM status: %@  %@  0x%llx 5g-avail %d xpref %d wifi score %d confidence %d cell score %d confidence %d private network %d", stringCopy, v11, status, BYTE5(status), status, BYTE1(status), BYTE2(status), v7, BYTE4(status), HIWORD(status) & 1];

  return v12;
}

- (void)_dumpState
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_administrativeState == 1)
    {
      v4 = "Enabled";
    }

    else
    {
      v4 = "Disabled";
    }

    *buf = 136315138;
    v19 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM top level administrative state: %s", buf, 0xCu);
  }

  v5 = [(CellOutrankHandler *)self _getState:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(*(&v13 + 1) + 8 * i);
          *buf = 138412290;
          v19 = v11;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  blockCopy = block;
  v11 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    idCopy = id;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "COSM _generateInfoForId %lld", &v17, 0xCu);
  }

  if (id - 13 > 1)
  {
    date = [MEMORY[0x277CBEAA8] date];
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    (*(blockCopy + 2))(blockCopy, 0, "COSM unrecognised managed event request", date, "collected on demand", 0, dictionary);
  }

  else
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    date = dictionary2;
    if (self->_cellOutrankHandlerSTM)
    {
      v14 = [(CellOutrankHandler *)self _getState:id == 14];
      [date setObject:v14 forKeyedSubscript:@"CellOutrankHandlerDetails"];
    }

    else
    {
      [dictionary2 setObject:@"CellOutrankHandler not enabled" forKeyedSubscript:@"CellOutrankHandlerDetails"];
    }

    dictionary = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "CellOutrankHandlerDetails  details", dictionary, "collected on demand", 0, date);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CellOutrankHandler_generateInfoForId_context_uuid_completionBlock___block_invoke;
  block[3] = &unk_27898AFB8;
  idCopy = id;
  contextCopy = context;
  block[4] = self;
  v16 = uuidCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = uuidCopy;
  dispatch_async(queue, block);
}

- (void)setCellOutrankReport:(unint64_t)report
{
  v19 = *MEMORY[0x277D85DE8];
  cellOutrankReported = [(CellOutrankHandler *)self cellOutrankReported];
  if (report)
  {
    v6 = "entry";
  }

  else
  {
    v6 = "exit";
  }

  if (cellOutrankReported == (report & 1))
  {
    v10 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      cellOutrankLastReport = self->_cellOutrankLastReport;
      v13 = 136315650;
      v14 = v6;
      v15 = 2048;
      reportCopy2 = report;
      v17 = 2048;
      v18 = cellOutrankLastReport;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "setCellOutrankReport attempt to duplicate outrank %s report, new 0x%llx old 0x%llx", &v13, 0x20u);
    }
  }

  else
  {
    notify_set_state(self->_outrankNotifyToken, report);
    notify_post("com.apple.symptoms.celloutrankrecommendation");
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [COSMStateSummary summaryFromFlags:report];
      v13 = 136315650;
      v14 = v6;
      v15 = 2048;
      reportCopy2 = report;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM Sent outrank %s notification with contents 0x%llx %@", &v13, 0x20u);
    }

    self->_cellOutrankLastReport = report;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setNonIdle:(BOOL)idle
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_nonIdle != idle)
  {
    idleCopy = idle;
    v5 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = idleCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM setNonIdle to %d", v7, 8u);
    }

    [(CellOutrankHandler *)self willChangeValueForKey:@"nonIdle"];
    self->_nonIdle = idleCopy;
    [(CellOutrankHandler *)self didChangeValueForKey:@"nonIdle"];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPollingRequested:(BOOL)requested
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_pollingRequested != requested)
  {
    requestedCopy = requested;
    v5 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v15 = requestedCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "COSM setPollingRequested to %d", buf, 8u);
    }

    userFlowMonitor = self->_userFlowMonitor;
    if (requestedCopy)
    {
      [(TrafficMonitor *)userFlowMonitor setActivePolling:1];
      [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser setEnabled:1];
      [(CellOutrankHandler *)self _setScrutinizerRequired:1];
      v7 = +[FlowRefreshScheduler sharedInstance];
      queue = [v7 queue];
      v9 = queue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __42__CellOutrankHandler_setPollingRequested___block_invoke;
      v13[3] = &unk_27898A0C8;
      v13[4] = self;
      v10 = v13;
    }

    else
    {
      [(TrafficMonitor *)userFlowMonitor setActivePolling:0];
      [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser setEnabled:0];
      [(CellOutrankHandler *)self _setScrutinizerRequired:0];
      v7 = +[FlowRefreshScheduler sharedInstance];
      queue = [v7 queue];
      v9 = queue;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __42__CellOutrankHandler_setPollingRequested___block_invoke_2;
      v12[3] = &unk_27898A0C8;
      v12[4] = self;
      v10 = v12;
    }

    dispatch_async(queue, v10);

    self->_pollingRequested = requestedCopy;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__CellOutrankHandler_setPollingRequested___block_invoke(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  *(*(a1 + 32) + 184) = [v2 periodicRefreshDataUsageWithInterval:@"COSM" maxStale:*(*(a1 + 32) + 344) maxDelay:0.1 logAs:0.1];
}

void __42__CellOutrankHandler_setPollingRequested___block_invoke_2(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  [v2 cancelRefresh:*(*(a1 + 32) + 184)];
}

- (void)outrankStateEntryAction
{
  if (![(CellOutrankHandler *)self cellOutrankReported])
  {
    [(CellOutrankHandler *)self setCellOutrankReport:self->_cellOutrankLastEntryReport | 1];
  }

  [(CellOutrankHandler *)self setNonIdle:1];
  [(CellOutrankHandler *)self setCellOutranksWiFi:1];

  [(CellOutrankHandler *)self setPollingRequested:1];
}

- (void)outrankStateExitAction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    *buf = 67109120;
    LODWORD(v14) = [(CellOutrankHandler *)self cellOutrankReported];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "COSM outrankStateExitAction, self.cellOutrankReported is %d", buf, 8u);
  }

  [(CellOutrankHandler *)self setCellOutrankReport:self->_cellOutrankLastExitReport & 0xFFFFFFFFFFFFFFFELL];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "COSM outrankStateExitAction, metrics for standard case", buf, 2u);
  }

  v6 = self->_maxDampeningInterval - self->_minDampeningInterval;
  v7 = self->_minDampeningInterval + v6 * erand48(self->_randxsubi);
  v8 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v14 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "COSM outrankStateExitAction, set dampening timer to %f", buf, 0xCu);
  }

  v9 = dispatch_time(0, (v7 * 1000000000.0));
  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CellOutrankHandler_outrankStateExitAction__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_after(v9, queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __44__CellOutrankHandler_outrankStateExitAction__block_invoke(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM outrankStateExitAction, dampening timer expired", v4, 2u);
  }

  return [*(*(a1 + 32) + 240) setDampeningTimerExpiryEvent:1];
}

- (void)armedStateEntryAction
{
  [(CellOutrankHandler *)self setNonIdle:1];
  [(CellOutrankHandler *)self setCellOutranksWiFi:0];
  [(CellOutrankHandler *)self setPollingRequested:1];

  [TrackedFlow startPollingWifiFlows:0xFFFFFFFFLL];
}

- (void)idleStateEntryAction
{
  [(CellOutrankHandler *)self setNonIdle:0];
  [(CellOutrankHandler *)self setCellOutranksWiFi:0];

  [(CellOutrankHandler *)self setPollingRequested:0];
}

- (void)entryActionForState:(unsigned int)state
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = state;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "COSM: entryActionForState: %d", v7, 8u);
  }

  switch(state)
  {
    case 3u:
      [(CellOutrankHandler *)self outrankStateEntryAction];
      break;
    case 2u:
      [(CellOutrankHandler *)self armedStateEntryAction];
      break;
    case 0u:
      [(CellOutrankHandler *)self idleStateEntryAction];
      break;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleWRMState:(unint64_t)state
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = BYTE1(state);
  v6 = BYTE5(state);
  v7 = HIWORD(state) & 1;
  v8 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    stateCopy = state;
    v22 = 1024;
    stateCopy2 = state;
    v24 = 1024;
    v25 = v5;
    v26 = 1024;
    v27 = BYTE2(state);
    v28 = 1024;
    v29 = BYTE3(state);
    v30 = 1024;
    v31 = BYTE4(state);
    v32 = 1024;
    v33 = v6;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM: handleWRMState link incoming 0x%llx  xpref %d wifi score %d confidence %d cell score %d confidence %d is5GAvailable %d isPrivateNetwork %d", buf, 0x36u);
  }

  v9 = BYTE3(state);
  if (v9 != 1)
  {
    if (v9 == 3)
    {
      if ([(MiscStateRelay *)self->_miscStateRelay cellWRMStatus]== 3)
      {
        v9 = 3;
      }

      else
      {
        v15 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "COSM: handleWRMState moving to cell status bad, set timer", buf, 2u);
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        self->_cellWRMDeclareProlongedBadAt = v16 + self->_cellWRMProlongedBadInterval;
        v17 = dispatch_time(0, (self->_cellWRMProlongedBadInterval * 1000000000.0));
        queue = [(ExpertSystemHandlerCore *)self queue];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __37__CellOutrankHandler_handleWRMState___block_invoke;
        v19[3] = &unk_27898AFE0;
        v9 = 3;
        v19[4] = self;
        v19[5] = 3;
        dispatch_after(v17, queue, v19);
      }

      goto LABEL_12;
    }

    v9 = 2;
  }

  if (self->_cellWRMDeclareProlongedBadAt != 0.0)
  {
    v10 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      cellWRMDeclareProlongedBadAt = self->_cellWRMDeclareProlongedBadAt;
      *buf = 134217984;
      stateCopy = *&cellWRMDeclareProlongedBadAt;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "COSM: handleWRMState clearing _cellWRMDeclareProlongedBadAt, currently %.3f", buf, 0xCu);
    }
  }

  [(MiscStateRelay *)self->_miscStateRelay setCellWRMStatusProlongedBad:0];
  self->_cellWRMDeclareProlongedBadAt = 0.0;
LABEL_12:
  [(MiscStateRelay *)self->_miscStateRelay setCellWRMStatus:v9];
  [(MiscStateRelay *)self->_miscStateRelay setCellWRMExpensive:v6 == 0];
  [(MiscStateRelay *)self->_miscStateRelay setCellPrivateNetworkActive:v7];
  v12 = 2;
  if (v5 == 3)
  {
    v12 = 3;
  }

  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  [(MiscStateRelay *)self->_miscStateRelay setWifiWRMStatus:v13];
  v14 = *MEMORY[0x277D85DE8];
}

void __37__CellOutrankHandler_handleWRMState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(*(a1 + 32) + 200);
  v5 = v4 > 0.0 && v4 < v3;
  if (v5 && *(a1 + 40) == 3)
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "COSM: handleWRMState after delay, bad cell status was prolonged", &v10, 2u);
    }

    [*(*(a1 + 32) + 80) setCellWRMStatusProlongedBad:1];
  }

  else
  {
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(*(a1 + 32) + 200);
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "COSM: handleWRMState no action after delay, _cellWRMDeclareProlongedBadAt is %.3f, time-now %.3f", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)noteOutrankEvent:(unint64_t)event
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_administrativeState == 1)
  {
    v5 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = v5;
      v7 = outrankHandlerEventToString(event);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "COSM: noteOutrankEvent %@", &v10, 0xCu);
    }

    eventSummary = self->_eventSummary;
    if (eventSummary)
    {
      if (event > 5)
      {
        if (event > 7)
        {
          if (event == 8)
          {
            [(COSMEventSummary *)eventSummary setMediaPlaybackStallEvent:1];
          }

          else if (event == 9)
          {
            [(COSMEventSummary *)eventSummary setWifiChangedSSIDEvent:1];
          }
        }

        else if (event == 6)
        {
          [(COSMEventSummary *)eventSummary setImminentStallEvent:1];
        }

        else
        {
          [(COSMEventSummary *)eventSummary setNd6FailureEvent:1];
        }
      }

      else if (event > 2)
      {
        if (event == 3)
        {
          [(COSMEventSummary *)eventSummary setDataStallThresholdEvent:1];
        }

        else if (event == 5)
        {
          [(CellOutrankController *)self->_cellOutrankController didSampleFlows];
          [(CellOutrankMetrics *)self->_outrankMetrics didSampleFlows];
        }
      }

      else if (event == 1)
      {
        [(COSMEventSummary *)eventSummary setArpFailureEvent:1];
      }

      else if (event == 2)
      {
        [(COSMEventSummary *)eventSummary setExcessCertificateErrorsEvent:1];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)noteOutrankEvent:(unint64_t)event
{
  sharedInstance = [self sharedInstance];
  queue = [sharedInstance queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__CellOutrankHandler_noteOutrankEvent___block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = self;
  v7[5] = event;
  dispatch_async(queue, v7);
}

void __39__CellOutrankHandler_noteOutrankEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedInstance];
  [v2 noteOutrankEvent:*(a1 + 40)];
}

- (void)noteStateChange:(id)change new:(id)new old:(id)old
{
  v25 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  newCopy = new;
  oldCopy = old;
  add = atomic_fetch_add(&self->_pendingStateChanges, 1u);
  v12 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109890;
    v18 = add;
    v19 = 2112;
    v20 = changeCopy;
    v21 = 2112;
    v22 = oldCopy;
    v23 = 2112;
    v24 = newCopy;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "COSM: noteStateChange, pending %d   %@ from %@ -> %@", buf, 0x26u);
  }

  if (!add)
  {
    v13 = dispatch_time(0, 2000000);
    queue = [(ExpertSystemHandlerCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__CellOutrankHandler_noteStateChange_new_old___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_after(v13, queue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __46__CellOutrankHandler_noteStateChange_new_old___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = atomic_load((*(a1 + 32) + 260));
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM: after delay, handle %d pending changes", v6, 8u);
  }

  result = [*(a1 + 32) ingestCurrentState];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid
{
  bssidCopy = bssid;
  if ([disable length] && objc_msgSend(bssidCopy, "length") && -[CellOutrankHandler cellOutranksWiFi](self, "cellOutranksWiFi"))
  {
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "COSM WiFi has been admin disabled while in Outrank. Perhaps this user interaction indicates that the SIS actions were inappropriate", v8, 2u);
    }

    [(CellOutrankHandler *)self reportOutrankABCCase:@"InfraAdminDisable" singleShot:1];
  }
}

- (void)wifiShim_CurrentAssociationChanged:(BOOL)changed associationInfo:(id)info
{
  changedCopy = changed;
  v12 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"no ";
    if (changedCopy)
    {
      v8 = &stru_2847966D8;
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM: wifiShim_CurrentAssociationChanged has %@association", &v10, 0xCu);
  }

  [(CellOutrankHandler *)self updateForAssociation:infoCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWifiShimItems
{
  refreshAssociationInfo = [(WiFiShim *)self->_wifiShim refreshAssociationInfo];
  [(CellOutrankHandler *)self updateForAssociation:refreshAssociationInfo];
}

- (void)updateForAssociation:(id)association
{
  v70 = *MEMORY[0x277D85DE8];
  associationCopy = association;
  v5 = associationCopy;
  if (associationCopy)
  {
    v6 = [associationCopy objectForKeyedSubscript:@"isSecured"];
    -[MiscStateRelay setWifiGoodSecurity:](self->_miscStateRelay, "setWifiGoodSecurity:", [v6 BOOLValue]);

    v7 = [v5 objectForKeyedSubscript:@"isHotspot20"];
    -[MiscStateRelay setWifiHotspot20:](self->_miscStateRelay, "setWifiHotspot20:", [v7 BOOLValue]);

    v8 = [v5 objectForKeyedSubscript:@"isManuallyJoined"];
    bOOLValue = [v8 BOOLValue];

    v10 = [v5 objectForKeyedSubscript:@"isProfileBased"];
    -[MiscStateRelay setWifiProfileBased:](self->_miscStateRelay, "setWifiProfileBased:", [v10 BOOLValue]);

    v11 = [v5 objectForKeyedSubscript:@"isCarrierBundle"];
    bOOLValue2 = [v11 BOOLValue];

    if (bOOLValue2)
    {
      getCurrentSISWiFiHotSpotOutrankPolicy = [(CoreTelephonyShim *)self->_ctShim getCurrentSISWiFiHotSpotOutrankPolicy];
      [(MiscStateRelay *)self->_miscStateRelay setWifiAlwaysOutrank:getCurrentSISWiFiHotSpotOutrankPolicy == 1];
      v14 = getCurrentSISWiFiHotSpotOutrankPolicy == 2;
    }

    else
    {
      [(MiscStateRelay *)self->_miscStateRelay setWifiAlwaysOutrank:0];
      v14 = 0;
    }

    [(MiscStateRelay *)self->_miscStateRelay setWifiNeverOutrank:v14];
    v15 = [v5 objectForKeyedSubscript:@"isPublicHotspot"];
    -[MiscStateRelay setWifiPublic:](self->_miscStateRelay, "setWifiPublic:", [v15 BOOLValue]);

    [(MiscStateRelay *)self->_miscStateRelay setWifiActive:[(NetworkStateRelay *)self->_wifiRelay active]];
    firstAttachment = [(NetworkStateRelay *)self->_wifiRelay knownSporadic]|| [(NetworkStateRelay *)self->_wifiRelay firstAttachment];
    [(MiscStateRelay *)self->_miscStateRelay setWifiSporadic:firstAttachment];
    v17 = [v5 objectForKeyedSubscript:@"ssid"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = v17;
      v19 = [(CellOutrankHandler *)self historyAllowsOutrankForSSID:v18]^ 1;
      miscStateRelay = self->_miscStateRelay;
      if (bOOLValue)
      {
        [(MiscStateRelay *)miscStateRelay setWifiManuallyJoined:1];
        [(CellOutrankHandler *)self setHistoryForSSID:v18];
      }

      else
      {
        [(MiscStateRelay *)miscStateRelay setWifiManuallyJoined:v19];
      }
    }

    else
    {
      v21 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "COSM: wifiShim_CurrentAssociationChanged hasAssociation but no SSID?", buf, 2u);
      }

      LODWORD(v19) = 0;
    }

    v22 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_miscStateRelay;
      log = v22;
      wifiActive = [(MiscStateRelay *)v23 wifiActive];
      wifiSporadic = [(MiscStateRelay *)self->_miscStateRelay wifiSporadic];
      knowableSporadic = [(NetworkStateRelay *)self->_wifiRelay knowableSporadic];
      knownSporadic = [(NetworkStateRelay *)self->_wifiRelay knownSporadic];
      firstAttachment2 = [(NetworkStateRelay *)self->_wifiRelay firstAttachment];
      wifiGoodSecurity = [(MiscStateRelay *)self->_miscStateRelay wifiGoodSecurity];
      wifiManuallyJoined = [(MiscStateRelay *)self->_miscStateRelay wifiManuallyJoined];
      wifiPublic = [(MiscStateRelay *)self->_miscStateRelay wifiPublic];
      v30 = bOOLValue2;
      wifiProfileBased = [(MiscStateRelay *)self->_miscStateRelay wifiProfileBased];
      LODWORD(v23) = [(MiscStateRelay *)self->_miscStateRelay wifiHotspot20];
      wifiAlwaysOutrank = [(MiscStateRelay *)self->_miscStateRelay wifiAlwaysOutrank];
      wifiNeverOutrank = [(MiscStateRelay *)self->_miscStateRelay wifiNeverOutrank];
      *buf = 67112960;
      v39 = 1;
      v40 = 1024;
      v41 = wifiActive;
      v42 = 1024;
      v43 = wifiSporadic;
      v44 = 1024;
      v45 = knowableSporadic;
      v46 = 1024;
      v47 = knownSporadic;
      v48 = 1024;
      v49 = firstAttachment2;
      v50 = 1024;
      v51 = wifiGoodSecurity;
      v52 = 1024;
      v53 = wifiManuallyJoined;
      v54 = 1024;
      v55 = bOOLValue;
      v56 = 1024;
      v57 = v19;
      v58 = 1024;
      v59 = wifiPublic;
      v60 = 1024;
      v61 = wifiProfileBased;
      v62 = 1024;
      v63 = v23;
      v64 = 1024;
      v65 = v30;
      v66 = 1024;
      v67 = wifiAlwaysOutrank;
      v68 = 1024;
      v69 = wifiNeverOutrank;
      _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "COSM: updateForAssociation %d active %d sporadic %d (known:%d spor:%d 1st:%d) goodsecurity %d man join %d (m:%d d:%d) public %d prof-base %d hspot20 %d carrier %d (always %d never %d) ", buf, 0x62u);
    }
  }

  else
  {
    [(MiscStateRelay *)self->_miscStateRelay setWifiGoodSecurity:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiHotspot20:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiProfileBased:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiAlwaysOutrank:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiNeverOutrank:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiPublic:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiActive:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiSporadic:0];
    [(MiscStateRelay *)self->_miscStateRelay setWifiManuallyJoined:0];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_updateWiFi:(id)fi
{
  v29 = *MEMORY[0x277D85DE8];
  fiCopy = fi;
  v5 = [fiCopy objectForKeyedSubscript:@"State"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v23 = 0;
    v7 = [fiCopy objectForKeyedSubscript:@"Detail"];
    v27 = 0u;
    v28 = 0u;
    memset(v26, 0, sizeof(v26));
    uTF8String = [v7 UTF8String];
    if (!uTF8String)
    {
      [CellOutrankHandler _updateWiFi:buf];
    }

    v9 = 0;
    while (1)
    {
      v10 = *(uTF8String + v9);
      v26[v9] = v10;
      if (!v10)
      {
        break;
      }

      if (++v9 == 63)
      {
        HIBYTE(v28) = 0;
        break;
      }
    }

    if ([NetworkEpoch parsePrimaryKeyStr:v26 majorIDLengthInBytes:&v23 + 4 minorIDLengthInBytes:&v23]&& SHIDWORD(v23) <= 63)
    {
      v26[SHIDWORD(v23)] = 0;
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
    }

    else
    {
      v12 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v25 = v7;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "COSM WiFi epoch, failed to parse: %{private}@", buf, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  wifiRelay = self->_wifiRelay;
  if (!wifiRelay || ([(NetworkStateRelay *)wifiRelay interfaceName], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = self->_wifiRelay;
      *v26 = 138412290;
      *&v26[4] = v16;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSM _updateWiFi: _wifiRelay has no interfaceName %@", v26, 0xCu);
    }
  }

  v17 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 67109379;
    *&v26[4] = bOOLValue;
    *&v26[8] = 2113;
    *&v26[10] = v11;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSM WiFi epoch, state: %d, clear SSID: %{private}@)", v26, 0x12u);
  }

  queue = [(ExpertSystemHandlerCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CellOutrankHandler__updateWiFi___block_invoke;
  block[3] = &unk_27898A7D0;
  block[4] = self;
  v22 = v11;
  v19 = v11;
  dispatch_async(queue, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __34__CellOutrankHandler__updateWiFi___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 192);
  if (v2 && *(a1 + 40) && ([v2 isEqualToString:?] & 1) == 0)
  {
    v3 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138477827;
      v7 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM: received SSID change to %{private}@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 240) setWifiChangedSSIDEvent:1];
  }

  objc_storeStrong((*(a1 + 32) + 192), *(a1 + 40));
  v5 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v13 = *MEMORY[0x277CCA300];
    v14 = v12;
    v15 = [changeCopy objectForKeyedSubscript:v13];
    v16 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    *buf = 138412802;
    v48 = pathCopy;
    v49 = 2112;
    v50 = v15;
    v51 = 2112;
    v52 = v16;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "COSM: observe keyPath %@   %@ -> %@", buf, 0x20u);
  }

  if ([pathCopy isEqualToString:@"active"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v17 BOOLValue])
        {
          hasAssociation = [(WiFiShim *)self->_wifiShim hasAssociation];
        }

        else
        {
          hasAssociation = 0;
        }

        [(MiscStateRelay *)self->_miscStateRelay setWifiActive:hasAssociation];
      }
    }

    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"dnsOut"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v17)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    bOOLValue = [v17 BOOLValue];
    queue = [(ExpertSystemHandlerCore *)self queue];
    v21 = queue;
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v45[3] = &unk_27898A3A0;
    v46 = bOOLValue;
    v45[4] = self;
    v22 = v45;
    goto LABEL_16;
  }

  if ([pathCopy isEqualToString:@"wifiPolledFlowsCurrentlyBad"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v17)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    bOOLValue2 = [v17 BOOLValue];
    queue = [(ExpertSystemHandlerCore *)self queue];
    v21 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_634;
    block[3] = &unk_27898A3A0;
    v44 = bOOLValue2;
    block[4] = self;
    v22 = block;
LABEL_16:
    dispatch_async(queue, v22);

    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"knownSporadic"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v17)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (([v17 BOOLValue] & 1) == 0)
    {
      firstAttachment = [(NetworkStateRelay *)self->_wifiRelay firstAttachment];
LABEL_46:
      v26 = firstAttachment;
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if ([pathCopy isEqualToString:@"firstAttachment"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (!v17)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (([v17 BOOLValue] & 1) == 0)
    {
      firstAttachment = [(NetworkStateRelay *)self->_wifiRelay knownSporadic];
      goto LABEL_46;
    }

LABEL_30:
    v26 = 1;
LABEL_47:
    [(MiscStateRelay *)self->_miscStateRelay setWifiSporadic:v26];
    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"loi"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v17;
        -[MiscStateRelay setWifiHome:](self->_miscStateRelay, "setWifiHome:", [v27 integerValue] == 0);
        v28 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
        {
          miscStateRelay = self->_miscStateRelay;
          v30 = v28;
          wifiHome = [(MiscStateRelay *)miscStateRelay wifiHome];
          *buf = 138412547;
          v48 = v27;
          v49 = 1029;
          LODWORD(v50) = wifiHome;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "LOI change from WiFi State Relay %@ results in wifiHome: %{sensitive}d", buf, 0x12u);
        }
      }
    }

    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"interfaceName"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v17];
    }

    else
    {
      v32 = 0;
    }

    queue2 = [(ExpertSystemHandlerCore *)self queue];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_636;
    v41[3] = &unk_27898A7D0;
    v41[4] = self;
    v42 = v32;
    v36 = v32;
    dispatch_async(queue2, v41);

    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"cellOutrankForcedViaSPI"])
  {
    queue3 = [(ExpertSystemHandlerCore *)self queue];
    v17 = queue3;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2_637;
    v40[3] = &unk_27898A0C8;
    v40[4] = self;
    v34 = v40;
LABEL_50:
    dispatch_async(queue3, v34);
    goto LABEL_24;
  }

  if ([pathCopy isEqualToString:@"cellOutrankEnabled"])
  {
    queue3 = [(ExpertSystemHandlerCore *)self queue];
    v17 = queue3;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
    v39[3] = &unk_27898A0C8;
    v39[4] = self;
    v34 = v39;
    goto LABEL_50;
  }

  if (![pathCopy isEqualToString:@"LOIUseAuthorized"])
  {
    goto LABEL_25;
  }

  v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue3 = [v17 BOOLValue];
      v38 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v48) = bOOLValue3;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "COSM: LOIUseAuthorized changed %d", buf, 8u);
      }

      if (bOOLValue3 != [(MiscStateRelay *)self->_miscStateRelay LOIUseAuthorized])
      {
        [(CellOutrankHandler *)self queryHomeLOIRefresh:1];
      }
    }
  }

LABEL_24:

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
}

void __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 216))
  {
    *(v2 + 216) = v1;
    if (*(a1 + 40) == 1)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 208) = v4 + *(*(a1 + 32) + 328);
      v5 = dispatch_time(0, (*(*(a1 + 32) + 328) * 1000000000.0));
      v6 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      block[3] = &unk_27898A0C8;
      block[4] = *(a1 + 32);
      dispatch_after(v5, v6, block);
    }

    else
    {
      v7 = *(a1 + 32);
      if (*(v7 + 208) != 0.0)
      {
        v8 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 208);
          *buf = 134217984;
          v13 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM: handle dnsOut (false) from wifiRelay, clearing _wifiDNSDeclareProlongedOutAt, currently %.3f", buf, 0xCu);
        }

        v7 = *(a1 + 32);
      }

      [*(v7 + 80) setWifiDnsProlongedOut:0];
      *(*(a1 + 32) + 208) = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  v6 = v5 > 0.0 && v5 < v3;
  if (v6 && *(v4 + 216) == 1)
  {
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3 - *(*(a1 + 32) + 208) + *(*(a1 + 32) + 328);
      v15 = 134217984;
      *v16 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM: delayed handle dnsOut (true) from wifiRelay,  after delay, bad DNS status was prolonged for %.3f seconds", &v15, 0xCu);
    }

    [*(*(a1 + 32) + 80) setWifiDnsProlongedOut:1];
    *(*(a1 + 32) + 208) = 0;
  }

  else
  {
    v9 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 216);
      v12 = *(v10 + 208);
      v13 = v12 - v3;
      if (v12 <= 0.0)
      {
        v13 = 0.0;
      }

      v15 = 67109888;
      *v16 = v11;
      *&v16[4] = 2048;
      *&v16[6] = v12;
      v17 = 2048;
      v18 = v3;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM: delayed handle dnsOut (true) from wifiRelay, no action after delay, dnsOut now %d   _wifiDNSDeclareProlongedOutAt is %.3f, time-now %.3f, requires %.3f secs", &v15, 0x26u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_634(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 232))
  {
    *(v2 + 232) = v1;
    if (*(a1 + 40) == 1)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      *(*(a1 + 32) + 224) = v4 + *(*(a1 + 32) + 336);
      v5 = dispatch_time(0, (*(*(a1 + 32) + 336) * 1000000000.0));
      v6 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2_635;
      block[3] = &unk_27898A0C8;
      block[4] = *(a1 + 32);
      dispatch_after(v5, v6, block);
    }

    else
    {
      v7 = *(a1 + 32);
      if (*(v7 + 224) != 0.0)
      {
        v8 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 32) + 224);
          *buf = 134217984;
          v13 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM: handle wifiPolledFlowsCurrentlyBad (false) from wifiRelay, clearing _wifiPolledFlowProlongedBadAt, currently %.3f", buf, 0xCu);
        }

        v7 = *(a1 + 32);
      }

      [*(v7 + 80) setWifiPolledFlowsProlongedBad:0];
      *(*(a1 + 32) + 224) = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __69__CellOutrankHandler_observeValueForKeyPath_ofObject_change_context___block_invoke_2_635(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 224);
  v6 = v5 > 0.0 && v5 < v3;
  if (v6 && *(v4 + 232) == 1)
  {
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v3 - *(*(a1 + 32) + 224) + *(*(a1 + 32) + 336);
      v15 = 134217984;
      *v16 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM: delayed handle wifiPolledFlowsCurrentlyBad (true) from miscStateRelay,  after delay, bad  status was prolonged for %.3f seconds", &v15, 0xCu);
    }

    [*(*(a1 + 32) + 80) setWifiPolledFlowsProlongedBad:1];
    *(*(a1 + 32) + 208) = 0;
  }

  else
  {
    v9 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 216);
      v12 = *(v10 + 224);
      v13 = v12 - v3;
      if (v12 <= 0.0)
      {
        v13 = 0.0;
      }

      v15 = 67109888;
      *v16 = v11;
      *&v16[4] = 2048;
      *&v16[6] = v12;
      v17 = 2048;
      v18 = v3;
      v19 = 2048;
      v20 = v13;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM: delayed handle wifiPolledFlowsCurrentlyBad (true) from miscStateRelay, no action after delay, current bad now %d _wifiPolledFlowProlongedBadAt is %.3f, time-now %.3f, requires %.3f secs", &v15, 0x26u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)checkUniqueStallCountOnInterfaceType:(int64_t)type stallType:(unint64_t)stallType
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    typeCopy = type;
    v19 = 1024;
    stallTypeCopy = stallType;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "COSM: checkUniqueStallCountOnInterfaceType %d stallType %d", buf, 0xEu);
  }

  if (type == 1 && stallType == 1)
  {
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-self->_dataStallConsiderationTime];
    v9 = [(DataStallHandler *)self->_dataStallHandler uniqStallCountForInterfaceType:1 stallType:1 foregroundOnly:self->_dataStallForegroundOnly since:v8];
    v10 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      dataStallForegroundOnly = self->_dataStallForegroundOnly;
      dataStallConsiderationTime = self->_dataStallConsiderationTime;
      dataStallThreshold = self->_dataStallThreshold;
      *buf = 67109888;
      typeCopy = v9;
      v19 = 1024;
      stallTypeCopy = dataStallForegroundOnly;
      v21 = 2048;
      v22 = dataStallConsiderationTime;
      v23 = 1024;
      v24 = dataStallThreshold;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "COSM: checkUniqueStallCountOnInterfaceType has %d uniques for fg %d since %.3f, threshold %d", buf, 0x1Eu);
    }

    if (v9 >= self->_dataStallThreshold)
    {
      queue = [(ExpertSystemHandlerCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__CellOutrankHandler_checkUniqueStallCountOnInterfaceType_stallType___block_invoke;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)checkEnablement
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[SystemSettingsRelay defaultRelay];
  cellOutrankEnabled = [v3 cellOutrankEnabled];

  v5 = +[CellOutrankForceSPIHandler sharedInstance];
  cellOutrankForcedViaSPI = [v5 cellOutrankForcedViaSPI];

  administrativeState = self->_administrativeState;
  if ((cellOutrankEnabled & 1) != 0 || cellOutrankForcedViaSPI)
  {
    if (administrativeState == 2)
    {
      v9 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v13 = cellOutrankEnabled;
        v14 = 1024;
        v15 = cellOutrankForcedViaSPI;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM: cellOutrankEnabled configuration causes _administrativeEnable, enabled %d via force SPI %d", buf, 0xEu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__CellOutrankHandler_checkEnablement__block_invoke;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      if (checkEnablement_completeOnceToken != -1)
      {
        dispatch_once(&checkEnablement_completeOnceToken, block);
      }

      [(CellOutrankHandler *)self _administrativeEnable];
    }
  }

  else if (administrativeState == 1)
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM: cellOutrankEnabled configuration causes _administrativeDisable", buf, 2u);
    }

    [(CellOutrankHandler *)self _administrativeDisable];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_initializeUserFlowMonitor
{
  v3 = [TrafficMonitor alloc];
  queue = [(ExpertSystemHandlerCore *)self queue];
  v5 = [(TrafficMonitor *)v3 initWithQueue:queue];
  userFlowMonitor = self->_userFlowMonitor;
  self->_userFlowMonitor = v5;

  [(TrafficMonitor *)self->_userFlowMonitor setName:@"UserFlowMonitor"];
  v7 = self->_userFlowMonitor;

  [(TrafficMonitor *)v7 setFetchBlock:&__block_literal_global_6];
}

unint64_t __48__CellOutrankHandler__initializeUserFlowMonitor__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [TrackedFlow foregroundNonLocalUsageGrandTallyAfterAdding:0];
  v1 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = v0;
    _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_INFO, "COSM user flow monitor fetch block returns %lld", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

- (void)_completeInitialization
{
  v99[12] = *MEMORY[0x277D85DE8];
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "COSM: _completeInitialization called", buf, 2u);
  }

  v4 = [NetworkStateRelay getStateRelayFor:5];
  cellRelay = self->_cellRelay;
  self->_cellRelay = v4;

  v77 = +[CellFallbackHandler sharedInstance];
  v78 = +[PowerStateRelay defaultRelay];
  v6 = [NetworkStateRelay getStateRelayFor:3];
  wifiRelay = self->_wifiRelay;
  self->_wifiRelay = v6;

  v8 = objc_alloc_init(COSMEventSummary);
  eventSummary = self->_eventSummary;
  self->_eventSummary = v8;

  v10 = +[LocationStateRelay sharedInstance];
  locationRelay = self->_locationRelay;
  self->_locationRelay = v10;

  v12 = [CoreMediaDownloadMonitor alloc];
  queue = [(ExpertSystemHandlerCore *)self queue];
  v14 = [(CoreMediaDownloadMonitor *)v12 initWithQueue:queue];
  mediaDownloadMonitor = self->_mediaDownloadMonitor;
  self->_mediaDownloadMonitor = v14;

  v16 = +[DataStallHandler sharedInstance];
  dataStallHandler = self->_dataStallHandler;
  self->_dataStallHandler = v16;

  v18 = [CellOutrankMetrics alloc];
  queue2 = [(ExpertSystemHandlerCore *)self queue];
  v20 = [(CellOutrankMetrics *)v18 initWithQueue:queue2];
  outrankMetrics = self->_outrankMetrics;
  self->_outrankMetrics = v20;

  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  reportedABCCases = self->_reportedABCCases;
  self->_reportedABCCases = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
  acceptedABCCases = self->_acceptedABCCases;
  self->_acceptedABCCases = v24;

  [(CellOutrankHandler *)self _initializeUserFlowMonitor];
  [(CellOutrankHandler *)self initializeHistory];
  v26 = [CellOutrankTrialExperimentHandler alloc];
  queue3 = [(ExpertSystemHandlerCore *)self queue];
  v28 = [(CellOutrankTrialExperimentHandler *)v26 initWithQueue:queue3];
  trialExperimentHandler = self->_trialExperimentHandler;
  self->_trialExperimentHandler = v28;

  [(CellOutrankTrialExperimentHandler *)self->_trialExperimentHandler subscribeToTrialUpdates:self];
  v30 = +[WiFiShim sharedInstance];
  wifiShim = self->_wifiShim;
  self->_wifiShim = v30;

  v32 = +[CoreTelephonyShim sharedInstance];
  ctShim = self->_ctShim;
  self->_ctShim = v32;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __45__CellOutrankHandler__completeInitialization__block_invoke;
  v85[3] = &unk_27898A690;
  v85[4] = self;
  v35 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v85];
  wifiEpochObserver = self->_wifiEpochObserver;
  self->_wifiEpochObserver = v35;

  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_2;
  v84[3] = &unk_27898A690;
  v84[4] = self;
  v37 = [defaultCenter addObserverForName:@"kNotificationCaptivityIndeterminate" object:0 queue:0 usingBlock:v84];
  captivityIndeterminateObserver = self->_captivityIndeterminateObserver;
  self->_captivityIndeterminateObserver = v37;

  v39 = +[WiFiThroughputAdviser sharedInstance];
  wifiThroughputAdviser = self->_wifiThroughputAdviser;
  self->_wifiThroughputAdviser = v39;

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_654;
  v83[3] = &unk_27898A690;
  v41 = v77;
  v83[4] = self;
  v42 = [defaultCenter addObserverForName:@"kNotificationPolledFlowAssessment" object:0 queue:0 usingBlock:v83];
  polledFlowObserver = self->_polledFlowObserver;
  self->_polledFlowObserver = v42;

  if (self->_cellRelay && self->_wifiRelay && v77 && v78 && self->_mediaDownloadMonitor && self->_userFlowMonitor && self->_trialExperimentHandler)
  {
    v44 = [CellOutrankHandlerSTM alloc];
    queue4 = [(ExpertSystemHandlerCore *)self queue];
    v46 = [(CellOutrankHandlerSTM *)v44 initWithQueue:queue4];
    cellOutrankHandlerSTM = self->_cellOutrankHandlerSTM;
    self->_cellOutrankHandlerSTM = v46;

    self->_currentCOSMState = 0;
    [(CellOutrankHandlerSTM *)self->_cellOutrankHandlerSTM completeInitialization];
    v48 = objc_alloc_init(StateWatcher);
    stateWatcher = self->_stateWatcher;
    self->_stateWatcher = v48;

    v50 = self->_stateWatcher;
    if (v50)
    {
      v51 = self->_cellRelay;
      v98[0] = @"CellRelay";
      v98[1] = @"CMdlRelay";
      v52 = self->_mediaDownloadMonitor;
      v99[0] = v51;
      v99[1] = v52;
      v53 = self->_locationRelay;
      v98[2] = @"LocationRelay";
      v98[3] = @"EventRelay";
      v54 = self->_eventSummary;
      v99[2] = v53;
      v99[3] = v54;
      miscStateRelay = self->_miscStateRelay;
      v98[4] = @"MiscRelay";
      v98[5] = @"PowerRelay";
      v99[4] = miscStateRelay;
      v99[5] = v78;
      v99[6] = v77;
      v98[6] = @"RnfRelay";
      v98[7] = @"SPIRelay";
      v56 = +[CellOutrankForceSPIHandler sharedInstance];
      v57 = self->_trialExperimentHandler;
      userFlowMonitor = self->_userFlowMonitor;
      v99[7] = v56;
      v99[8] = v57;
      v59 = self->_wifiRelay;
      v98[8] = @"TrialRelay";
      v98[9] = @"UserFlowMonitor";
      v99[9] = userFlowMonitor;
      v99[10] = v59;
      v98[10] = @"WiFiRelay";
      v98[11] = @"WiFiTputAdviser";
      v99[11] = self->_wifiThroughputAdviser;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:12];
      [(StateWatcher *)v50 configureWatchList:&unk_2847EF3B8 changeList:&unk_2847EF430 sourceList:v60];

      [(StateWatcher *)self->_stateWatcher setDelegate:self];
    }

    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"active" options:7 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"dnsOut" options:7 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"knownSporadic" options:7 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"knowableSporadic" options:7 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"firstAttachment" options:7 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"loi" options:7 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"interfaceName" options:7 context:0];
    [(MiscStateRelay *)self->_miscStateRelay addObserver:self forKeyPath:@"wifiPolledFlowsCurrentlyBad" options:7 context:0];
    [(LocationStateRelay *)self->_locationRelay addObserver:self forKeyPath:@"LOIUseAuthorized" options:7 context:0];
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v62 = shared_prefs_store;
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_662;
      v82[3] = &unk_27898A0A0;
      v82[4] = self;
      prefs_add_client(shared_prefs_store, "cosm_override_params", v82);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_674;
      v81[3] = &unk_27898A0A0;
      v81[4] = self;
      prefs_add_client(v62, kCellOutrankParamsName, v81);
    }

    queue5 = [(ExpertSystemHandlerCore *)self queue];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_2_677;
    handler[3] = &unk_27898B048;
    handler[4] = self;
    v64 = notify_register_dispatch("com.apple.WRM.iRAT_event.linkRecommendation", &self->_wrmNotifyToken, queue5, handler);

    if (v64)
    {
      v65 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v87) = v64;
        _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_ERROR, "Failed to register for com.apple.WRM.iRAT_event.linkRecommendation (%u)", buf, 8u);
      }
    }

    state64 = 0;
    state = notify_get_state(self->_wrmNotifyToken, &state64);
    v67 = outrankLogHandle;
    if (state)
    {
      v68 = state;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v87) = v68;
        _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_ERROR, "Failed to get initial state for com.apple.WRM.iRAT_event.linkRecommendation (%u)", buf, 8u);
      }
    }

    else
    {
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v87 = state64;
        _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "COSM initial WRM notification 0x%llx", buf, 0xCu);
      }

      self->_initialWRMStatus = state64;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_initialWRMStatusTimestamp = v76;
      self->_latestWRMStatus = state64;
      [(CellOutrankHandler *)self handleWRMState:?];
    }

    v41 = v77;
  }

  else
  {
    v69 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v70 = self->_cellRelay;
      v71 = self->_wifiRelay;
      v72 = self->_mediaDownloadMonitor;
      v73 = self->_userFlowMonitor;
      *buf = 134219264;
      v87 = v70;
      v88 = 2048;
      v89 = v71;
      v90 = 2048;
      v91 = v77;
      v92 = 2048;
      v93 = v78;
      v94 = 2048;
      v95 = v72;
      v96 = 2048;
      v97 = v73;
      _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_ERROR, "COSM init failed, at least one of the relays missing (cell/wifi/rnf/power/nobackhaul/dload/userflows): %p,%p,%p,%p,%p,%p", buf, 0x3Eu);
    }
  }

  v74 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_DEFAULT, "COSM: _completeInitialization exit", buf, 2u);
  }

  v75 = *MEMORY[0x277D85DE8];
}

void __45__CellOutrankHandler__completeInitialization__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 24) == 1)
  {
    v6 = [a2 userInfo];
    v4 = [v6 objectForKeyedSubscript:@"State"];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      [*(a1 + 32) _updateWiFi:v6];
    }
  }
}

void __45__CellOutrankHandler__completeInitialization__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_3;
  block[3] = &unk_27898A0C8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

uint64_t __45__CellOutrankHandler__completeInitialization__block_invoke_3(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "COSM captivityIndeterminateObserver notified", v4, 2u);
  }

  return [*(*(a1 + 32) + 240) setCaptivityIndeterminateEvent:1];
}

void __45__CellOutrankHandler__completeInitialization__block_invoke_654(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 intValue] == 0;
    v7 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      *buf = 67109120;
      v14 = [v5 intValue];
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "COSM kNotificationPolledFlowAssessment delivers value %d", buf, 8u);
    }

    v9 = [*(a1 + 32) queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_655;
    v11[3] = &unk_27898A3A0;
    v11[4] = *(a1 + 32);
    v12 = v6;
    dispatch_async(v9, v11);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CellOutrankHandler__completeInitialization__block_invoke_655(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 80) wifiPolledFlowsCurrentlyBad];
  if (*(a1 + 40) != result)
  {
    v3 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "COSM kNotificationPolledFlowAssessment changes currently bad to %d", v6, 8u);
    }

    result = [*(*(a1 + 32) + 80) setWifiPolledFlowsCurrentlyBad:*(a1 + 40)];
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __45__CellOutrankHandler__completeInitialization__block_invoke_662(uint64_t a1, uint64_t a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D86468])
  {
    if (*(*(a1 + 32) + 408))
    {
      v6 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Processing removal of cosm_override_params", buf, 2u);
      }

      goto LABEL_35;
    }

    goto LABEL_37;
  }

  v7 = v5;
  v48 = a1;
  v8 = _CFXPCCreateCFObjectFromXPCObject();
  outCount = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_opt_class();
  v11 = class_copyPropertyList(v10, &outCount);
  v12 = v11;
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getName(v12[i])];
      [v9 addObject:v14];
    }

    goto LABEL_11;
  }

  if (v11)
  {
LABEL_11:
    free(v12);
  }

  v15 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v63 = v8;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Processing cosm_override_params %@", buf, 0xCu);
  }

  a1 = v48;
  v16 = *(v48 + 32);
  v17 = *(v16 + 496);
  *(v16 + 496) = 0;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = v8;
  v53 = [v18 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (!v53)
  {

    v5 = v7;
    goto LABEL_35;
  }

  v47 = v4;
  v52 = *v58;
  v5 = v7;
  v49 = v9;
  v50 = v18;
  v51 = v7;
  while (2)
  {
    for (j = 0; j != v53; ++j)
    {
      if (*v58 != v52)
      {
        objc_enumerationMutation(v18);
      }

      v20 = *(*(&v57 + 1) + 8 * j);
      v21 = [v9 containsObject:v20];
      v22 = outrankLogHandle;
      if ((v21 & 1) == 0)
      {
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v63 = v20;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Attempting to set invalid key %@ for cosm_override_params", buf, 0xCu);
        }

        v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Attempted to set invalid key %@ for cosm_override_params", v20];
        v39 = *(v48 + 32);
        v40 = *(v39 + 496);
        *(v39 + 496) = v38;

        v4 = v47;
        goto LABEL_36;
      }

      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        v24 = [v18 objectForKeyedSubscript:v20];
        *buf = 138412546;
        v63 = v20;
        v64 = 2112;
        v65 = v24;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Validated key %@ for cosm_override_params, object %@", buf, 0x16u);
      }

      v25 = [v18 objectForKeyedSubscript:v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
        v27 = [v26 UTF8String];
        if (v27)
        {
          v28 = v27;
          *__error() = 0;
          v29 = strtoll(v28, 0, 0);
          if (v29 || !*__error())
          {
            v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v29];

            v30 = outrankLogHandle;
            if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v63 = v20;
              v64 = 2080;
              v65 = v28;
              v66 = 2048;
              v67 = v29;
              v68 = 2112;
              v69 = v25;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "Converting string value for key %@ string %s to int %lld nsnumber %@", buf, 0x2Au);
            }

            v5 = v51;
            v9 = v49;
            v18 = v50;
            goto LABEL_29;
          }

          v43 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v63 = v20;
            v64 = 2112;
            v65 = v26;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Failed to convert string value for key %@ object %@ to nsnumber", buf, 0x16u);
          }

          v42 = @"Failed to convert string value for key %@ object %@ to nsnumber";
        }

        else
        {
          v41 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v63 = v20;
            v64 = 2112;
            v65 = v26;
            _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "Failed to convert string value for key %@ object %@ to nsnumber, no string start", buf, 0x16u);
          }

          v42 = @"Failed to convert string value for key %@ object %@ to nsnumber, no string start";
        }

        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v42, v20, v26];
        v45 = *(v48 + 32);
        v46 = *(v45 + 496);
        *(v45 + 496) = v44;

        v4 = v47;
        v5 = v51;
        goto LABEL_36;
      }

LABEL_29:
      [v5 setObject:v25 forKeyedSubscript:v20];
      v31 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
      {
        v32 = v31;
        v33 = [v5 objectForKeyedSubscript:v20];
        *buf = 138412546;
        v63 = v20;
        v64 = 2112;
        v65 = v33;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "cosm_override_params key %@ now has value %@", buf, 0x16u);
      }
    }

    v53 = [v18 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v53)
    {
      continue;
    }

    break;
  }

  v4 = v47;
  a1 = v48;
LABEL_35:
  v34 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_672;
  block[3] = &unk_27898A7D0;
  v35 = v5;
  v36 = *(a1 + 32);
  v55 = v35;
  v56 = v36;
  dispatch_async(v34, block);

  v18 = v55;
LABEL_36:

LABEL_37:
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CellOutrankHandler__completeInitialization__block_invoke_672(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "cosm_override_params, set override to %@", &v6, 0xCu);
  }

  objc_storeStrong((*(a1 + 40) + 408), *(a1 + 32));
  result = [*(a1 + 40) ingestCurrentState];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __45__CellOutrankHandler__completeInitialization__block_invoke_674(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86468])
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v11 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = kCellOutrankParamsName;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Processing %s %@", buf, 0x16u);
    }
  }

  else
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = kCellOutrankParamsName;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Processing removal of %s", buf, 0xCu);
    }

    v14 = @"restoreDefaults";
    v15 = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  v8 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__CellOutrankHandler__completeInitialization__block_invoke_675;
  v12[3] = &unk_27898A7D0;
  v12[4] = *(a1 + 32);
  v13 = v7;
  v9 = v7;
  dispatch_async(v8, v12);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)restoreDefaults
{
  self->_minDampeningInterval = 1.0;
  self->_maxDampeningInterval = 10.0;
  self->_cellWRMProlongedBadInterval = 1.0;
  self->_wifiDNSProlongedOutInterval = 5.0;
  self->_wifiPolledFlowProlongedBadInterval = 5.0;
  self->_dataStallThreshold = 2;
  self->_dataStallConsiderationTime = 120.0;
  self->_dataStallForegroundOnly = 1;
  self->_userFlowMonitorMinSamplePeriod = 10.0;
  self->_userFlowMonitorSamplePeriodThroughputThreshold = 0.01;
  wifiPollingInterval = self->_wifiPollingInterval;
  self->_wifiPollingInterval = 1.2;
  if (wifiPollingInterval != 0.0 && wifiPollingInterval != 1.2 && self->_pollingRequested)
  {
    [(CellOutrankHandler *)self setPollingRequested:0];
    [(CellOutrankHandler *)self setPollingRequested:1];
  }

  userFlowMonitor = self->_userFlowMonitor;
  if (userFlowMonitor)
  {
    [(TrafficMonitor *)userFlowMonitor setMinSamplePeriod:self->_userFlowMonitorMinSamplePeriod];
    userFlowMonitorSamplePeriodThroughputThreshold = self->_userFlowMonitorSamplePeriodThroughputThreshold;
    v6 = self->_userFlowMonitor;

    [(TrafficMonitor *)v6 setMinSamplePeriodThroughputThreshold:userFlowMonitorSamplePeriodThroughputThreshold];
  }
}

- (void)initializeHistory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CellOutrankHandler_initializeHistory__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (initializeHistory_onceToken != -1)
  {
    dispatch_once(&initializeHistory_onceToken, block);
  }
}

void __39__CellOutrankHandler_initializeHistory__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D6B500];
  v3 = +[SystemSettingsRelay defaultRelay];
  v4 = [v3 symptomEvaluatorDatabaseContainerPath];
  v5 = [v2 workspaceWithName:@"netusage" atPath:v4 objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 512);
  *(v7 + 512) = v6;

  v9 = *(a1 + 32);
  v10 = v9[64];
  if (v10)
  {
    v11 = [v9 queue];
    v12 = [ImpoExpoService impoExpoServiceInWorkspace:v10 andQueue:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 520);
    *(v13 + 520) = v12;

    v15 = *(*(a1 + 32) + 520);
    v30 = 0;
    v16 = [v15 exportAndUnarchiveItemUnderName:@"CELL_OUTRANK_HISTORY" lastUpdated:&v30 verificationBlock:&__block_literal_global_683];
    v17 = v30;
    v18 = *(a1 + 32);
    v19 = *(v18 + 504);
    *(v18 + 504) = v16;

    v20 = *(*(a1 + 32) + 504);
    v21 = outrankLogHandle;
    v22 = os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v22)
      {
        v23 = *(*(a1 + 32) + 504);
        *buf = 138477827;
        v32 = v23;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "COSM: Retrieved persisted history: %{private}@", buf, 0xCu);
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __39__CellOutrankHandler_initializeHistory__block_invoke_691;
      v29[3] = &unk_27898A0C8;
      v29[4] = *(a1 + 32);
      [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"COSM.Cleanup" queue:MEMORY[0x277D85CD0] activity:v29];
    }

    else
    {
      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "COSM: Starting history anew", buf, 2u);
      }

      v25 = objc_opt_new();
      v26 = *(a1 + 32);
      v27 = *(v26 + 504);
      *(v26 + 504) = v25;
    }
  }

  else
  {
    v24 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "COSM: Unable to provide persistence, fatal initialization failure", buf, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __39__CellOutrankHandler_initializeHistory__block_invoke_2(uint64_t a1, void *a2)
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
        v18[2] = __39__CellOutrankHandler_initializeHistory__block_invoke_685;
        v18[3] = &unk_27898B070;
        v18[4] = &v25;
        v6 = [v5 indexOfObjectPassingTest:v18];
        if (v6 == 0x7FFFFFFFFFFFFFFFLL || *(*(&v25 + 1) + 24) == 1)
        {
          v7 = outrankLogHandle;
          if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
          {
            v8 = *(*(&v25 + 1) + 24);
            *buf = 67109635;
            v20 = v6 == 0x7FFFFFFFFFFFFFFFLL;
            v21 = 1024;
            v22 = v8;
            v23 = 2113;
            v24 = v3;
            _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "COSM: Got persisted history but it's old/corrupted: %d/%d, zapping it %{private}@", buf, 0x18u);
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
        v15 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSM: Cannot get keys from dict?!, removed", &v25, 2u);
        }

        v9 = 0;
      }
    }

    else
    {
      v14 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "COSM: Empty persistent state?!, removed", &v25, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v10 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      LODWORD(v25) = 138412290;
      *(&v25 + 4) = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "COSM: Corrupted persistent state??, removed (%@)", &v25, 0xCu);
    }

    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL __39__CellOutrankHandler_initializeHistory__block_invoke_685(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = 0;
  }

  else
  {
    [v6 doubleValue];
    v9 = v8;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = v9 > v10;
  }

  return v7;
}

void __39__CellOutrankHandler_initializeHistory__block_invoke_691(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(*(a1 + 32) + 504);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v18 + 1) + 8 * v7);
        v5 = [*(*(a1 + 32) + 504) objectForKeyedSubscript:v9];

        [v5 doubleValue];
        v11 = v10;
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        if (v11 <= v12)
        {
          [v17 addObject:v9];
        }

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  if ([v17 count])
  {
    v13 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v23 = v17;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "COSM: clearing out partial history for SSIDs: %{private}@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 504) removeObjectsForKeys:v17];
    if (([*(*(a1 + 32) + 520) archiveAndImportItemUnderName:@"CELL_OUTRANK_HISTORY" item:*(*(a1 + 32) + 504)] & 1) == 0)
    {
      v14 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1 + 32) + 504);
        *buf = 138477827;
        v23 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "COSM: Failed to clear out partial history: %{private}@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)historyAllowsOutrankForSSID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:dCopy];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
      v8 = formattedDateStringForTimeInterval(v7 + 978307200.0);
      [v6 doubleValue];
      v10 = v9;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v12 = v10 <= v11;
      v13 = outrankLogHandle;
      if (v10 > v11)
      {
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138478083;
          v19 = dCopy;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "COSM: historyAllowsOutrankForSSID: %{private}@ too soon after manual join, ok at %@", &v18, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
        {
          v18 = 138478083;
          v19 = dCopy;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "COSM: historyAllowsOutrankForSSID: %{private}@ ok now, previous was %@", &v18, 0x16u);
        }

        [(CellOutrankHandler *)self resetHistoryForSSID:dCopy];
      }
    }

    else
    {
      v15 = outrankLogHandle;
      v12 = 1;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
      {
        v18 = 138477827;
        v19 = dCopy;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "COSM: historyAllowsOutrankForSSID: %{private}@ no manual join history", &v18, 0xCu);
      }
    }
  }

  else
  {
    v14 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "COSM: historyAllowsOutrankForSSID: SSID is nil!", &v18, 2u);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)setHistoryForSSID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  date = [MEMORY[0x277CBEAA8] date];
  autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v7 = [date dateByAddingTimeInterval:172800.0];
  v8 = [autoupdatingCurrentCalendar dateBySettingHour:5 minute:0 second:0 ofDate:v7 options:0];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:dCopy];
  v12 = v11;
  if (!v11 || ([v11 doubleValue], v13 != v10))
  {
    v14 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138478339;
      v20 = dCopy;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "COSM: Updating persist history for %{private}@, from %@ to good again at: %@", &v19, 0x20u);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
    [(NSMutableDictionary *)self->_history setObject:v15 forKeyedSubscript:dCopy];

    if (![(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:@"CELL_OUTRANK_HISTORY" item:self->_history])
    {
      v16 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
      {
        history = self->_history;
        v19 = 138477827;
        v20 = history;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "COSM: Failed to persist history: %{private}@", &v19, 0xCu);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)resetHistoryForSSID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(NSMutableDictionary *)self->_history removeObjectForKey:dCopy];
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = dCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "COSM: Nuking persist history for %{private}@", &v9, 0xCu);
  }

  if (![(ImpoExpoService *)self->_ieService archiveAndImportItemUnderName:@"CELL_OUTRANK_HISTORY" item:self->_history])
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      history = self->_history;
      v9 = 138477827;
      v10 = history;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "COSM: Failed to nuke history: %{private}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)queryHomeLOIRefresh:(BOOL)refresh
{
  locationRelay = self->_locationRelay;
  queue = [(ExpertSystemHandlerCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CellOutrankHandler_queryHomeLOIRefresh___block_invoke;
  v7[3] = &unk_27898B098;
  v7[4] = self;
  refreshCopy = refresh;
  [(LocationStateRelay *)locationRelay determineIfLocationOfInterestIsKnownOfType:0 queue:queue reply:v7];
}

uint64_t __42__CellOutrankHandler_queryHomeLOIRefresh___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "queryHomeLOIRefresh isAuth:%d isLOIKnown:%d", v11, 0xEu);
  }

  [*(*(a1 + 32) + 80) setLOIUseAuthorized:a2];
  if (a2)
  {
    result = [*(*(a1 + 32) + 80) setHomeLocationIsKnown:a3];
    if (a3)
    {
      if (*(a1 + 40) == 1)
      {
        [*(a1 + 32) stopObservingLOIChanges];
        result = [NetworkAnalyticsEngine refreshLOIForInterfaceType:3];
      }
    }

    else
    {
      v9 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM: Home LOI is not known. Registering for updates from CR", v11, 2u);
      }

      result = [*(a1 + 32) startObservingLOIChanges];
    }
  }

  else
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM: LOI use not authorized", v11, 2u);
    }

    result = [*(*(a1 + 32) + 80) setHomeLocationIsKnown:0];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startObservingLOIChanges
{
  if (!self->_observingCoreRoutine)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _loisChangedNotification, @"RTLocationsOfInterestDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    self->_observingCoreRoutine = 1;
  }
}

- (void)stopObservingLOIChanges
{
  if (self->_observingCoreRoutine)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"RTLocationsOfInterestDidChangeNotification", 0);
    self->_observingCoreRoutine = 0;
  }
}

- (CellOutrankHandler)init
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM init called", &buf, 2u);
  }

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v6 = SFGetStandardQueue(1);
  v7 = dispatch_queue_create_with_target_V2("com.apple.symptoms.cosm.queue", v5, v6);

  v41.receiver = self;
  v41.super_class = CellOutrankHandler;
  v8 = [(ExpertSystemHandlerCore *)&v41 initWithQueue:v7];
  v9 = v8;
  if (v8)
  {
    [(CellOutrankHandler *)v8 restoreDefaults];
    buf.tv_sec = 0;
    *&buf.tv_usec = 0;
    gettimeofday(&buf, 0);
    v10 = WORD1(buf.tv_sec);
    v9->_randxsubi[0] = buf.tv_sec;
    v9->_randxsubi[1] = buf.tv_usec;
    v9->_randxsubi[2] = v10;
    v9->_administrativeState = 2;
    v9->_currentCOSMState = 0;
    v11 = +[SystemProperties sharedInstance];
    basebandCapability = [v11 basebandCapability];

    if (basebandCapability)
    {
      v13 = objc_alloc_init(MiscStateRelay);
      miscStateRelay = v9->_miscStateRelay;
      v9->_miscStateRelay = v13;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      notify_register_check("com.apple.symptoms.celloutrankrecommendation", &v9->_outrankNotifyToken);
      notify_set_state(v9->_outrankNotifyToken, 0);
      notify_post("com.apple.symptoms.celloutrankrecommendation");
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __26__CellOutrankHandler_init__block_invoke;
      v38[3] = &unk_27898A690;
      v16 = v9;
      v39 = v16;
      v17 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v38];
      relayReadyObserver = v16->_relayReadyObserver;
      v16->_relayReadyObserver = v17;

      v19 = +[CellOutrankController sharedInstance];
      cellOutrankController = v16->_cellOutrankController;
      v16->_cellOutrankController = v19;

      queue = [(ExpertSystemHandlerCore *)v16 queue];
      [(CellOutrankController *)v16->_cellOutrankController setQueue:queue];

      signal(29, 1);
      queue2 = [(ExpertSystemHandlerCore *)v16 queue];
      v23 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, queue2);
      v24 = init_siginfo_0;
      init_siginfo_0 = v23;

      v25 = init_siginfo_0;
      if (init_siginfo_0)
      {
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __26__CellOutrankHandler_init__block_invoke_3;
        handler[3] = &unk_27898A0C8;
        v37 = v16;
        dispatch_source_set_event_handler(v25, handler);
        dispatch_resume(init_siginfo_0);
      }

      queue3 = [(ExpertSystemHandlerCore *)v16 queue];
      v31 = MEMORY[0x277D85DD0];
      v32 = 3221225472;
      v33 = __26__CellOutrankHandler_init__block_invoke_4;
      v34 = &unk_27898A820;
      v35 = v16;
      os_state_add_handler();

      [ManagedEventTransport setInfoProvider:v35 forId:13];
      [ManagedEventTransport setInfoProvider:v35 forId:14];
    }

    else
    {
      v27 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 0;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "COSM init, no baseband capability", &v30, 2u);
      }
    }
  }

  v28 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.tv_sec) = 0;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "COSM init complete", &buf, 2u);
  }

  return v9;
}

void __26__CellOutrankHandler_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 40)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__CellOutrankHandler_init__block_invoke_2;
  block[3] = &unk_27898A0C8;
  v7 = *(a1 + 32);
  dispatch_async(v5, block);
}

void __26__CellOutrankHandler_init__block_invoke_2(uint64_t a1)
{
  v2 = +[SystemSettingsRelay defaultRelay];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"cellOutrankEnabled" options:7 context:0];

  *(*(a1 + 32) + 28) = 1;
  v3 = +[CellOutrankForceSPIHandler sharedInstance];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"cellOutrankForcedViaSPI" options:7 context:0];
}

+ (id)internalStateDictionary
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  v15 = 0;
  v2 = +[CellOutrankHandler sharedInstance];
  queue = [v2 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CellOutrankHandler_internalStateDictionary__block_invoke;
  v7[3] = &unk_27898A848;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(queue, v7);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __45__CellOutrankHandler_internalStateDictionary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalStateDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellOutrankHandler new configuration parameters %{public}@", &v18, 0xCu);
  }

  [configurationCopy extractKey:@"minDampening" toDouble:&self->_minDampeningInterval defaultTo:1.0];
  [configurationCopy extractKey:@"maxDampening" toDouble:&self->_maxDampeningInterval defaultTo:10.0];
  [configurationCopy extractKey:@"cellBadIntervalForProlonged" toDouble:&self->_cellWRMProlongedBadInterval defaultTo:1.0];
  [configurationCopy extractKey:@"wifiDNSOutIntervalForProlonged" toDouble:&self->_wifiDNSProlongedOutInterval defaultTo:5.0];
  [configurationCopy extractKey:@"wifiPolledFlowsBadIntervalForProlonged" toDouble:&self->_wifiPolledFlowProlongedBadInterval defaultTo:5.0];
  [configurationCopy extractKey:@"dataStallThreshold" toUint32:&self->_dataStallThreshold defaultTo:2];
  [configurationCopy extractKey:@"dataStallTimePeriod" toDouble:&self->_dataStallConsiderationTime defaultTo:120.0];
  [configurationCopy extractKey:@"dataStallForegroundOnly" toBOOL:&self->_dataStallForegroundOnly defaultTo:1];
  overrideWRMStatus = self->_overrideWRMStatus;
  [configurationCopy extractKey:@"WRMRecommendation" toUint64:&self->_overrideWRMStatus defaultTo:0];
  if (overrideWRMStatus != self->_overrideWRMStatus)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_overrideWRMStatusTimestamp = v7;
    latestWRMStatus = self->_overrideWRMStatus;
    if (!latestWRMStatus)
    {
      latestWRMStatus = self->_latestWRMStatus;
    }

    [(CellOutrankHandler *)self handleWRMState:latestWRMStatus];
  }

  [configurationCopy extractKey:@"fgFlowSamplePeriod" toDouble:&self->_userFlowMonitorMinSamplePeriod defaultTo:10.0];
  [configurationCopy extractKey:@"fgFlowSampleThreshold" toDouble:&self->_userFlowMonitorSamplePeriodThroughputThreshold defaultTo:0.01];
  wifiPollingInterval = self->_wifiPollingInterval;
  [configurationCopy extractKey:@"OutrankWiFiPollingInterval" toDouble:&self->_wifiPollingInterval defaultTo:1.2];
  if (self->_wifiPollingInterval != wifiPollingInterval && [(CellOutrankHandler *)self pollingRequested])
  {
    [(CellOutrankHandler *)self setPollingRequested:0];
    [(CellOutrankHandler *)self setPollingRequested:1];
  }

  userFlowMonitor = self->_userFlowMonitor;
  if (userFlowMonitor)
  {
    [(TrafficMonitor *)userFlowMonitor setMinSamplePeriod:self->_userFlowMonitorMinSamplePeriod];
    [(TrafficMonitor *)self->_userFlowMonitor setMinSamplePeriodThroughputThreshold:self->_userFlowMonitorSamplePeriodThroughputThreshold];
  }

  mediaDownloadMonitor = self->_mediaDownloadMonitor;
  if (mediaDownloadMonitor)
  {
    [(CoreMediaDownloadMonitor *)mediaDownloadMonitor setConfiguration:configurationCopy];
  }

  cellOutrankHandlerSTM = self->_cellOutrankHandlerSTM;
  if (cellOutrankHandlerSTM)
  {
    [(CellOutrankHandlerSTM *)cellOutrankHandlerSTM setConfiguration:configurationCopy];
  }

  cellOutrankController = self->_cellOutrankController;
  if (cellOutrankController)
  {
    [(CellOutrankController *)cellOutrankController setConfiguration:configurationCopy];
  }

  outrankMetrics = self->_outrankMetrics;
  if (outrankMetrics)
  {
    [(CellOutrankMetrics *)outrankMetrics setConfiguration:configurationCopy];
  }

  v15 = +[CertificateErrorHandler sharedInstance];
  [v15 setConfiguration:configurationCopy];

  [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser setConfiguration:configurationCopy];
  v16 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v16)
  {
    [(CellOutrankHandler *)self restoreDefaults];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)reportOutrankABCCase:(id)case singleShot:(BOOL)shot
{
  shotCopy = shot;
  v22 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  [(NSMutableSet *)self->_reportedABCCases addObject:caseCopy];
  v7 = +[SystemSettingsRelay defaultRelay];
  if ([v7 autoBugCaptureEnabled])
  {
    v8 = +[SystemProperties sharedInstance];
    internalBuild = [v8 internalBuild];

    if (internalBuild)
    {
      if (shotCopy && [(NSMutableSet *)self->_acceptedABCCases containsObject:caseCopy])
      {
        v10 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = caseCopy;
          v11 = "COSM ABC case additional instance skipped for %@";
LABEL_10:
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
          goto LABEL_16;
        }
      }

      else
      {
        v12 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v21 = caseCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "COSM ABC case for %@", buf, 0xCu);
        }

        v13 = objc_alloc_init(MEMORY[0x277D6AFC8]);
        v14 = v13;
        if (v13)
        {
          v15 = [v13 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"CellOutrank" subtypeContext:caseCopy detectedProcess:@"symptomsd" triggerThresholdValues:0];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __54__CellOutrankHandler_reportOutrankABCCase_singleShot___block_invoke;
          v17[3] = &unk_27898B0C0;
          v18 = caseCopy;
          selfCopy = self;
          [v14 snapshotWithSignature:v15 duration:0 events:0 payload:0 actions:v17 reply:0.0];
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = caseCopy;
    v11 = "COSM ABC unavailable, suppress report for %@";
    goto LABEL_10;
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];
}

void __54__CellOutrankHandler_reportOutrankABCCase_singleShot___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v5 = [v4 BOOLValue];

  v6 = outrankLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "COSM ABC case %{public}@ response: %@", &v10, 0x16u);
    }

    [*(*(a1 + 40) + 488) addObject:*(a1 + 32)];
  }

  else if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "COSM ABC case %{public}@ not accepted. response: %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __36__CellOutrankHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_7;
  sharedInstance_sharedInstance_7 = v1;

  v3 = sharedInstance_sharedInstance_7;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[CellOutrankHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

- (int)configureFromPrefs:(id)prefs
{
  prefsCopy = prefs;
  v5 = objc_alloc_init(ConfigurationParams);
  v6 = v5;
  if (v5)
  {
    [(ConfigurationParams *)v5 setUnderlyingDictionary:prefsCopy];
    [(ConfigurationParams *)v6 setLogHandle:outrankLogHandle];
    [(CellOutrankHandler *)self setConfiguration:v6];
  }

  return 0;
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = gProcessUUIDMapper;
  gProcessUUIDMapper = v2;

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = gProcessUUIDLookups;
  gProcessUUIDLookups = v4;

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_updateWiFi:(char *)a1 .cold.1(char **a1)
{
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_FAULT, "strict_strlcpy called with NULL src", v3, 2u);
  }

  *a1 = 0;
  asprintf(a1, "strict_strlcpy called with NULL src");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

@end