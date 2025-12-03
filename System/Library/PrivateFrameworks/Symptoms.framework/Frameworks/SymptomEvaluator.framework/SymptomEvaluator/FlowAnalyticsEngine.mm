@interface FlowAnalyticsEngine
+ (BOOL)appBundleIdentifierIsWebBrowser:(id)browser;
+ (id)appBundleIdentifierFromAuditToken:(id *)token;
+ (id)appBundleIdentifierFromBundleIdentifier:(id)identifier;
+ (id)queue;
+ (void)appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply;
+ (void)checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply;
+ (void)endRNFPeriod;
+ (void)identifierForUUID:(id)d replyQueue:(id)queue reply:(id)reply;
+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)reply;
+ (void)performAppExperiencePeriodicActivityWithReply:(id)reply;
+ (void)performAppPeriodicActivityWithReply:(id)reply;
+ (void)performAppTrackingPeriodicActivityWithReply:(id)reply;
+ (void)recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply;
+ (void)workspaceSaveWithCallback:(id)callback;
- (BOOL)_appBundleIdentifierIsWebBrowser:(id)browser;
- (BOOL)_bundleBackgroundAudioCapable:(id)capable;
- (BOOL)_handlesFlowEntity:(id)entity;
- (BOOL)_handlesProcEntity:(id)entity;
- (BOOL)_isLiveFlowPerfinScope:(id)scope forTime:(id)time andTag:(id)tag;
- (BOOL)_isLiveUsageInRollingWindow:(id)window forTime:(id)time;
- (BOOL)_isLiveUsageinScope:(id)scope forTime:(id)time;
- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate;
- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate;
- (BOOL)_processNameIsValid:(id)valid;
- (BOOL)_requiresUserValidationPredicateForEntity:(id)entity;
- (BOOL)_setupLocalCache;
- (BOOL)_setupObjectAnalyticsWorkspaces:(id)workspaces;
- (BOOL)_setupSignalHandling;
- (BOOL)_shouldProcessDomainInfoForBundleID:(id)d implicit:(id *)implicit knownToLaunchServices:(BOOL *)services ignoredInLaunchServices:(BOOL *)launchServices isWebBrowser:(BOOL *)browser;
- (BOOL)_shouldSendStatisticsReport:(id)report;
- (BOOL)domainInfoProcessingForSnapshot:(id)snapshot process:(id)process attributedName:(id)name remoteAddress:(id)address isWebBrowser:(BOOL)browser;
- (BOOL)handlesEntity:(id)entity;
- (BOOL)isSnapshotFlowUUIDStored:(id)stored;
- (FlowAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue;
- (double)_usageFingerprintForBundleName:(id)name;
- (id)_appEndpointsInProcess:(id)process;
- (id)_appExperienceForApp:(id)app forTime:(id)time;
- (id)_attemptConvertingPluginNameToContainingAppName:(id)name;
- (id)_fetchFromProcCacheWithName:(id)name ofType:(unsigned int)type;
- (id)_flowFetchForName:(id)name;
- (id)_has1stPartyImpliedBundleNameBehavior:(id)behavior;
- (id)_liveUsageFetchForProcess:(id)process;
- (id)_parseEvent:(id)event withGeneration:(id *)generation;
- (id)_processFetchForName:(id)name bundle:(id)bundle extension:(id)extension shouldFillMiss:(BOOL)miss;
- (id)_repurposeAppEndpointRecords:(id)records;
- (id)_trafficEnvelopeToTier:(double)tier;
- (id)createFlushInactiveLedgerTimer:(id)timer;
- (id)getOption:(id)option;
- (id)setOption:(id)option;
- (int)_performQueryOnEntityFromInstantFlowCache:(id)cache target:(id)target pred:(id)pred found:(id *)found;
- (int)_performQueryOnEntityFromProcCache:(id)cache target:(id)target pred:(id)pred found:(id *)found;
- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found;
- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)field forPredicate:(id)predicate;
- (unint64_t)_clearStaleAppEndpointRecords;
- (unint64_t)_clearStaleNetDomainsRecords;
- (unint64_t)_clearUninstalledAppEntries;
- (unint64_t)_liveUsageCountForProcess:(id)process subscriberTag:(id)tag;
- (unint64_t)_pruneAppExperienceRecords;
- (unint64_t)_submitAppDomainUsageRecordInfoAnalytics;
- (unint64_t)_submitAppEndpointRecordInfoAnalytics;
- (void)_algosScoreFor:(id)for score:(double)score;
- (void)_applyCountsTo:(id)to fromLiveUsage:(id)usage mustReset:(BOOL)reset;
- (void)_appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply;
- (void)_archiveRecord:(id)record;
- (void)_calendarUsageForApp:(id)app givenLastRun:(id)run;
- (void)_checkCellExcessUsageActions:(unint64_t)actions previous:(unint64_t)previous snapshot:(id)snapshot;
- (void)_checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply;
- (void)_compactUsageForApp:(id)app intervalType:(int)type givenLastRun:(id)run;
- (void)_didReceiveSnapshot:(id)snapshot;
- (void)_dumpState;
- (void)_dumpSubFlowCounts;
- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)interface;
- (void)_endRNFPeriod;
- (void)_evalDomainTrackingDropOf:(id)of;
- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)_handleAppTrackingNotification:(id)notification;
- (void)_handleApplicationNotificationCompactForBundleName:(id)name edgeMode:(BOOL)mode;
- (void)_handleApplicationNotificationStateChangedForBundleName:(id)name edgeMode:(BOOL)mode intervalType:(int)type;
- (void)_handleEndpointTrackingNotification:(id)notification;
- (void)_handleSIGUSR1;
- (void)_handleSnapshot:(id)snapshot;
- (void)_handleSnapshotForDomains:(id)domains;
- (void)_initializeInternals;
- (void)_insertProcCache:(id)cache ofType:(unsigned int)type underName:(id)name;
- (void)_liveUsagePackForProcess:(id)process subscriberTag:(id)tag;
- (void)_logBitmapOutcome:(id)outcome;
- (void)_logExcessCellUsage:(int64_t)usage snapshot:(id)snapshot;
- (void)_newCoreMediaAssetDownloadEvent:(id)event;
- (void)_newExpectedTransfer:(id)transfer;
- (void)_newFlowData:(id)data;
- (void)_noteSizeableBackgroundTransferEvent:(id)event;
- (void)_performAppDomainUsageAnalytics;
- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)reply;
- (void)_performAppExperiencePeriodicTasksWithReply:(id)reply;
- (void)_performAppPeriodicTasksWithReply:(id)reply;
- (void)_performAppTrackingPeriodicTasksWithReply:(id)reply;
- (void)_pruneFlowHistory;
- (void)_recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply;
- (void)_refreshFullDataUsage;
- (void)_refreshFullDataUsageComplete;
- (void)_refreshFullDataUsageWithCallback:(id)callback;
- (void)_removeAllInfoForProcess:(id)process;
- (void)_removeFromProcCache:(id)cache ofType:(unsigned int)type;
- (void)_removeInfoFromWorkspaceForProcess:(id)process;
- (void)_removeOldFlowRecords;
- (void)_reportDomainTrackingDropFor:(id)for withCause:(unint64_t)cause detail:(id)detail;
- (void)_reportThresholdedFlowCount:(unint64_t)count threshold:(unint64_t)threshold;
- (void)_saveAndUnloadSelectState;
- (void)_sendStatisticsReport:(id)report;
- (void)_setupDailyMaintenanceActivity;
- (void)_setupNotificationCenterAndRelayObservers;
- (void)_setupPrefsStoreObserving;
- (void)_startFlowMonitoring;
- (void)_summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply;
- (void)_updateKnownCellularInterfaceIndexList:(int)list force:;
- (void)_updateLiveUsage:(id)usage wifiIn:(int64_t)in wifiOut:(int64_t)out cellIn:(int64_t)cellIn cellOut:(int64_t)cellOut wiredIn:(int64_t)wiredIn wiredOut:(int64_t)wiredOut btIn:(int64_t)self0 btOut:(int64_t)self1 xIn:(int64_t)self2 xOut:(int64_t)self3 isJumboFlow:(BOOL)self4 isExpensive:(BOOL)self5 closing:(BOOL)self6;
- (void)_updateTetheringUsage:(BOOL)usage;
- (void)clearAppDomainUsage:(id)usage;
- (void)clearAppEndpoints:(id)endpoints;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)dealloc;
- (void)endpointMaintenanceOnClose:(id)close;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply;
- (void)handleLaunchServicesApplicationUnregistration:(id)unregistration;
- (void)identifierForUUID:(id)d queue:(id)queue reply:(id)reply;
- (void)logOutcomeArray:(id)array;
- (void)networkDomainResolution:(id)resolution;
- (void)networkDomainUserAppTrackingChanged:(id)changed;
- (void)networkDomainUserEndpointTrackingChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppExperiencePeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply;
- (void)performAppTrackingPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0;
- (void)performThresholdingOn:(id)on forKey:(id)key andValue:(id)value connection:(id)connection createdBlock:(id *)block hitBlock:(id)hitBlock errorBlock:(id)errorBlock;
- (void)pollFlows;
- (void)postCAEvent:(id)event withName:(id)name;
- (void)processSnapshotForConnectionEstablishment:(id)establishment;
- (void)removeSnapshotFlowUUIDsForSourceKey:(id)key;
- (void)resetDataFor:(id)for nameKind:(id)kind;
- (void)sendPowerLogReport:(id)report isStart:(BOOL)start;
- (void)startObservingLaunchServices;
- (void)statsManager:(id)manager thresholdReachedOn:(unsigned int)on;
- (void)stopObservingLaunchServices;
- (void)storeSnapshotFlowUUID:(id)d forSourceKey:(id)key;
- (void)submitAppEndpointToDateSPICallMetric;
- (void)submitNetworkDomainUsageToDateSPICallMetric;
- (void)updateEffectiveUserId:(id)id;
- (void)workspaceSaveWithCallback:(id)callback;
@end

@implementation FlowAnalyticsEngine

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_118(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_119;
  block[3] = &unk_27898BE18;
  v8 = *(a1 + 32);
  v12 = v5;
  block[4] = v8;
  v11 = v6;
  v9 = v6;
  dispatch_async(v7, block);
}

- (void)pollFlows
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "pollFlows started", buf, 2u);
  }

  nstatManager = self->nstatManager;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__FlowAnalyticsEngine_pollFlows__block_invoke;
  v10[3] = &unk_27898C490;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__FlowAnalyticsEngine_pollFlows__block_invoke_2;
  v9[3] = &unk_27898A0C8;
  v9[4] = self;
  v5 = [(NWStatsManager *)nstatManager refreshUsingBlock:v10 completionBlock:v9];
  if (v5)
  {
    v6 = v5;
    v7 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v12 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "pollFlows refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __32__FlowAnalyticsEngine_pollFlows__block_invoke_2(uint64_t a1)
{
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Netstats refresh complete", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 432);
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v3 didPollFlowsAt:?];
  }

  return [CellOutrankHandler noteOutrankEvent:5];
}

+ (id)queue
{
  queue = sharedInstance_1;
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    v2 = vars8;
  }

  return queue;
}

- (void)_refreshFullDataUsage
{
  v24 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  lastFullRefreshTime = self->lastFullRefreshTime;
  if (lastFullRefreshTime && ([(NSDate *)lastFullRefreshTime timeIntervalSinceDate:date], fabs(v5) < 1.0))
  {
    v6 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = self->lastFullRefreshTime;
      *buf = 138412546;
      v21 = v7;
      v22 = 2048;
      v23 = 1;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Full data usage not refreshing because last refresh %@ was within %llu-second limit", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if ([(NWStatsManager *)self->nstatManager statsRefreshCurrentUsage]== 3)
  {
    v9 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Full data usage skipped due to max use", buf, 2u);
    }

    goto LABEL_18;
  }

  if (!v8)
  {
LABEL_18:
    v16 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Unable to queue full data request, force completions", buf, 2u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsageComplete];
    goto LABEL_21;
  }

  objc_storeStrong(&self->lastFullRefreshTime, date);
  v10 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = self->lastFullRefreshTime;
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Full data usage refreshing now at %@", buf, 0xCu);
  }

  nstatManager = self->nstatManager;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke;
  v19[3] = &unk_27898C490;
  v19[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke_2;
  v18[3] = &unk_27898A0C8;
  v18[4] = self;
  v13 = [(NWStatsManager *)nstatManager refreshUsingBlock:v19 completionBlock:v18];
  if (v13)
  {
    v14 = v13;
    v15 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "_refreshFullDataUsage refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsageComplete];
  }

  [(FlowAnalyticsEngine *)self _updateTetheringUsage:1];
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_refreshFullDataUsageComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    dataUsageRefreshCompletionNumWaiting = self->dataUsageRefreshCompletionNumWaiting;
    dataUsageRefreshCompletionBlock = self->dataUsageRefreshCompletionBlock;
    v6 = v3;
    v7 = _Block_copy(dataUsageRefreshCompletionBlock);
    v12[0] = 67109376;
    v12[1] = dataUsageRefreshCompletionNumWaiting;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Data usage complete, queued %d, block %p", v12, 0x12u);
  }

  v8 = self->dataUsageRefreshCompletionBlock;
  if (v8)
  {
    v9 = _Block_copy(v8);
    v10 = self->dataUsageRefreshCompletionBlock;
    self->dataUsageRefreshCompletionBlock = 0;

    self->dataUsageRefreshCompletionNumWaiting = 0;
    v9[2](v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke_2(uint64_t a1)
{
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NetworkStatistics reports full refresh complete", v4, 2u);
  }

  [CellOutrankHandler noteOutrankEvent:5];
  return [*(a1 + 32) _refreshFullDataUsageComplete];
}

- (void)_saveAndUnloadSelectState
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(AnalyticsWorkspace *)self->super.workspace persistent])
  {
    [(AnalyticsWorkspace *)self->super.workspace save];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    registeredObjects = [mainObjectContext registeredObjects];
    v5 = [registeredObjects count];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke;
    v16[3] = &unk_27898C508;
    v16[4] = &v17;
    [registeredObjects enumerateObjectsUsingBlock:v16];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v18[3];
      *buf = 134218240;
      v22 = v5;
      v23 = 2048;
      v24 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "flowanalyticsengine: memory ratio all/fault: %lu/%lu", buf, 0x16u);
    }

    if (v5 > 4 * v18[3])
    {
      v8 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "flowanalyticsengine: memory threshold hit, expedited faulting process", buf, 2u);
      }

      v11 = MEMORY[0x277D85DD0];
      v12 = 3221225472;
      v13 = __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke_352;
      v14 = &unk_27898C530;
      v9 = mainObjectContext;
      v15 = v9;
      [registeredObjects enumerateObjectsUsingBlock:&v11];
      [v9 processPendingChanges];
    }

    _Block_object_dispose(&v17, 8);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isFault];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke_352(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isFault] & 1) == 0)
  {
    [*(a1 + 32) refreshObject:v3 mergeChanges:0];
  }
}

- (FlowAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue
{
  workspaceCopy = workspace;
  paramsCopy = params;
  queueCopy = queue;
  v11 = queueCopy;
  selfCopy4 = 0;
  if (!workspaceCopy || !queueCopy)
  {
    goto LABEL_19;
  }

  v33.receiver = self;
  v33.super_class = FlowAnalyticsEngine;
  v13 = [(AnalyticsEngineCore *)&v33 initWithWorkspace:workspaceCopy params:paramsCopy queue:queueCopy];
  self = v13;
  if (!v13)
  {
LABEL_17:
    self = self;
    selfCopy4 = self;
    goto LABEL_19;
  }

  if (![(FlowAnalyticsEngine *)v13 _setupObjectAnalyticsWorkspaces:workspaceCopy])
  {
LABEL_18:
    selfCopy4 = 0;
    goto LABEL_19;
  }

  if (![(AnalyticsEngineCore *)self isHelper])
  {
    if ([(FlowAnalyticsEngine *)self _setupLocalCache])
    {
      v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      pluginToBundleCache = self->pluginToBundleCache;
      self->pluginToBundleCache = v15;

      if (self->pluginToBundleCache)
      {
        v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
        audioBundleCache = self->audioBundleCache;
        self->audioBundleCache = v17;

        if (self->audioBundleCache)
        {
          v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
          webBrowserBundleCache = self->webBrowserBundleCache;
          self->webBrowserBundleCache = v19;

          if (self->webBrowserBundleCache)
          {
            v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
            flowWatchers = self->_flowWatchers;
            self->_flowWatchers = v21;

            if (self->_flowWatchers)
            {
              gEffectiveUserId = 501;
              queue = [(AnalyticsEngineCore *)self queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_2;
              block[3] = &unk_27898A0C8;
              selfCopy2 = self;
              v30 = selfCopy2;
              v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
              dispatch_async(queue, v25);

              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_3;
              v27[3] = &unk_27898A0C8;
              v28 = selfCopy2;
              if (initWithWorkspace_params_queue__pred != -1)
              {
                dispatch_once(&initWithWorkspace_params_queue__pred, v27);
              }

              goto LABEL_17;
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke;
  v31[3] = &unk_27898A0C8;
  selfCopy3 = self;
  v32 = selfCopy3;
  if (initWithWorkspace_params_queue__pred != -1)
  {
    dispatch_once(&initWithWorkspace_params_queue__pred, v31);
  }

  self = selfCopy3;

  selfCopy4 = self;
LABEL_19:

  return selfCopy4;
}

- (void)_initializeInternals
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = qos_class_self();
    *buf = 136315138;
    selfCopy = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "FAE _initializeInternals: QoS %s", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v6);
  v7 = [FlowRefreshScheduler alloc];
  queue = [(AnalyticsEngineCore *)self queue];
  v9 = [(FlowRefreshScheduler *)v7 initWithQueue:queue];
  refreshScheduler = self->refreshScheduler;
  self->refreshScheduler = v9;

  [(FlowRefreshScheduler *)self->refreshScheduler setDelegate:self];
  v11 = +[FlowScrutinizer sharedInstance];
  flowScrutinizer = self->flowScrutinizer;
  self->flowScrutinizer = v11;

  v13 = +[BitmapRetriever sharedInstance];
  bitmapRetriever = self->bitmapRetriever;
  self->bitmapRetriever = v13;

  queue2 = [(AnalyticsEngineCore *)self queue];
  v16 = [(FlowAnalyticsEngine *)self createFlushInactiveLedgerTimer:queue2];
  flushInactiveLedgerTimer = self->flushInactiveLedgerTimer;
  self->flushInactiveLedgerTimer = v16;

  queue3 = [(AnalyticsEngineCore *)self queue];
  [TrackedFlow setPolledFlowQueue:queue3];

  self->_greenTeaLogger = ct_green_tea_logger_create();
  [(FlowAnalyticsEngine *)self _setupSignalHandling];
  queue4 = [(AnalyticsEngineCore *)self queue];
  handler[5] = MEMORY[0x277D85DD0];
  handler[6] = 3221225472;
  handler[7] = __43__FlowAnalyticsEngine__initializeInternals__block_invoke;
  handler[8] = &unk_27898A820;
  handler[9] = self;
  self->logStateHandle = os_state_add_handler();

  [(FlowAnalyticsEngine *)self startObservingLaunchServices];
  v20 = objc_alloc(MEMORY[0x277D2CA90]);
  queue5 = [(AnalyticsEngineCore *)self queue];
  v22 = [v20 initWithQueue:queue5];
  nstatManager = self->nstatManager;
  self->nstatManager = v22;

  v24 = self->nstatManager;
  if (v24)
  {
    [(NWStatsManager *)v24 setDelegate:self];
    self->_nrFrequencyBand = -1;
    queue6 = [(AnalyticsEngineCore *)self queue];
    v26 = +[WiFiThroughputAdviser sharedInstance];
    [v26 setQueue:queue6];

    queue7 = [(AnalyticsEngineCore *)self queue];
    [AppTracker setInternalQueue:queue7];

    v28 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "Configuring FAE<%p> as the network domain delegate", buf, 0xCu);
    }

    v29 = +[NetDomainsHandler sharedInstance];
    [v29 setNetworkDomainDelegate:self];

    [(FlowAnalyticsEngine *)self _setupNotificationCenterAndRelayObservers];
    queue8 = [(AnalyticsEngineCore *)self queue];
    v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue8);
    flushOldFlowRecordsTimer = self->flushOldFlowRecordsTimer;
    self->flushOldFlowRecordsTimer = v31;

    v33 = self->flushOldFlowRecordsTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__FlowAnalyticsEngine__initializeInternals__block_invoke_75;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v33, handler);
    v34 = self->flushOldFlowRecordsTimer;
    v35 = dispatch_time(0, 604800000000000);
    dispatch_source_set_timer(v34, v35, 0x2260FF9290000uLL, 0x3B9ACA00uLL);
    dispatch_resume(self->flushOldFlowRecordsTimer);
    [(FlowAnalyticsEngine *)self _setupDailyMaintenanceActivity];
    [(FlowAnalyticsEngine *)self setDelegateToProxyAnalytics:1];
    objc_initWeak(&location, self);
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __43__FlowAnalyticsEngine__initializeInternals__block_invoke_2;
    v53 = &unk_27898C3B0;
    objc_copyWeak(&v54, &location);
    [(AnalyticsWorkspace *)self->super.workspace setResetCompletionBlock:&v50];
    self->usageCoalescingSpanSecs = 1209600;
    self->usageWindowUnitsCount = 3;
    self->outcomeArrayLogEntryCount = 10;
    [(FlowAnalyticsEngine *)self _setupPrefsStoreObserving:v50];
    [ManagedEventTransport setInfoProvider:self forId:12];
    [ManagedEventTransport setInfoProvider:self forId:15];
    [ManagedEventTransport setInfoProvider:self forId:18];
    [ManagedEventTransport setInfoProvider:self forId:19];
    v36 = +[SystemProperties sharedInstance];
    if ([v36 basebandCapability])
    {
      v37 = +[CoreTelephonyShim sharedInstance];
      ctShim = self->ctShim;
      self->ctShim = v37;
    }

    v39 = +[AppStateMonitor sharedInstance];
    queue9 = [(AnalyticsEngineCore *)self queue];
    [v39 setQueue:queue9];

    [v39 enable];
    v41 = +[SystemSettingsRelay defaultRelay];
    if ([v41 taggedInfoFeatureFlagEnabled])
    {
      v42 = +[BasebandFlowChecker sharedInstance];
      queue10 = [(AnalyticsEngineCore *)self queue];
      [v42 setQueue:queue10];

      [v42 activate];
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v42;
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "FAE: system has taggedInfo feature flag enabled, bbFlowChecker is %@", buf, 0xCu);
      }
    }

    else
    {
      v45 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "FAE: system has taggedInfo feature flag disabled", buf, 2u);
      }
    }

    v46 = measureLaunchXPCHandle();
    if (os_signpost_enabled(v46))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FlowAnalyticsEngineInitialized", "FlowAnalyticsEngine completed initialization", buf, 2u);
    }

    markMeasurement(2, 9);
    submitAllMeasurementsToCA();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = @"ObjectKey";
    selfCopy2 = self;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy2 forKeys:&v57 count:1];
    [defaultCenter postNotificationName:@"kNotificationOfCompletedInitialization" object:self userInfo:v48];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __43__FlowAnalyticsEngine__initializeInternals__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: FlowAnalyticsEngine: invalidating local caches", v3, 2u);
  }

  [WeakRetained _setupLocalCache];
}

- (BOOL)_setupObjectAnalyticsWorkspaces:(id)workspaces
{
  v4 = [objc_alloc(MEMORY[0x277D6B508]) initWithWorkspace:self->super.workspace withCache:0];
  aspace = self->aspace;
  self->aspace = v4;

  if (!self->aspace)
  {
    return 0;
  }

  v6 = objc_alloc(MEMORY[0x277D6B540]);
  workspace = self->super.workspace;
  entityName = [MEMORY[0x277D6B568] entityName];
  v9 = [v6 initWithWorkspace:workspace entityName:entityName withCache:0];
  domspace = self->domspace;
  self->domspace = v9;

  v11 = objc_alloc(MEMORY[0x277D6B540]);
  v12 = self->super.workspace;
  entityName2 = [MEMORY[0x277D6B570] entityName];
  v14 = [v11 initWithWorkspace:v12 entityName:entityName2 withCache:0];
  epspace = self->epspace;
  self->epspace = v14;

  self->domainUsageBucketDuration = 60.0;
  v16 = objc_alloc(MEMORY[0x277D6B540]);
  v17 = self->super.workspace;
  entityName3 = [MEMORY[0x277D6B578] entityName];
  v19 = [v16 initWithWorkspace:v17 entityName:entityName3 withCache:0];
  expspace = self->expspace;
  self->expspace = v19;

  if ([(AnalyticsEngineCore *)self isHelper])
  {
    return 1;
  }

  v22 = [objc_alloc(MEMORY[0x277D6B5B8]) initWithWorkspace:self->super.workspace withCache:0];
  uspace = self->uspace;
  self->uspace = v22;

  if (!self->uspace)
  {
    return 0;
  }

  v24 = [objc_alloc(MEMORY[0x277D6B550]) initWithWorkspace:self->super.workspace withCache:0];
  pspace = self->pspace;
  self->pspace = v24;

  if (!self->pspace)
  {
    return 0;
  }

  v26 = objc_alloc(MEMORY[0x277D6B540]);
  v27 = self->super.workspace;
  entityName4 = [MEMORY[0x277D6B560] entityName];
  v29 = [v26 initWithWorkspace:v27 entityName:entityName4 withCache:0];
  calspace = self->calspace;
  self->calspace = v29;

  if (!self->calspace)
  {
    return 0;
  }

  v31 = objc_alloc(MEMORY[0x277D6B540]);
  v32 = self->super.workspace;
  entityName5 = [MEMORY[0x277D6B590] entityName];
  v34 = [v31 initWithWorkspace:v32 entityName:entityName5 withCache:0];
  fspace = self->fspace;
  self->fspace = v34;

  if (!self->fspace)
  {
    return 0;
  }

  v36 = objc_alloc(MEMORY[0x277D6B540]);
  v37 = self->super.workspace;
  entityName6 = [MEMORY[0x277D6B598] entityName];
  v39 = [v36 initWithWorkspace:v37 entityName:entityName6 withCache:0];
  lfpspace = self->lfpspace;
  self->lfpspace = v39;

  return self->lfpspace != 0;
}

- (id)createFlushInactiveLedgerTimer:(id)timer
{
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, timer);
  dispatch_source_set_timer(v4, 0, 0xD18C2E2800uLL, 0x5F5E100uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__FlowAnalyticsEngine_createFlushInactiveLedgerTimer___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

void __54__FlowAnalyticsEngine_createFlushInactiveLedgerTimer___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = machAbsoluteTime_secs();
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 408);
    v7 = 134218240;
    v8 = v2;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Begin periodic flushing of bitmaps and ledgers at mach time %lld, scrutinizer %p", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 408) flushInactiveLedgersAtMachAbsTime:v2];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "End periodic flushing of bitmaps and ledgers", &v7, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleSIGUSR1
{
  [(FlowAnalyticsEngine *)self _performAppDomainUsageAnalytics];
  if ([(FlowAnalyticsEngine *)self delegateToProxyAnalytics])
  {
    proxyAnalytics = [(FlowAnalyticsEngine *)self proxyAnalytics];

    if (!proxyAnalytics)
    {
      v4 = objc_opt_new();
      [(FlowAnalyticsEngine *)self setProxyAnalytics:v4];

      proxyAnalytics2 = [(FlowAnalyticsEngine *)self proxyAnalytics];
      [proxyAnalytics2 setDelegate:self];
    }

    proxyAnalytics3 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics3 performAppPeriodicTasks];

    proxyAnalytics4 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics4 performAppTrackingPeriodicTasks];

    proxyAnalytics5 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics5 performAppEndpointTrackingPeriodicTasks];

    proxyAnalytics6 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics6 performAppExperiencePeriodicTasks];
  }

  else
  {
    [(FlowAnalyticsEngine *)self _performAppPeriodicTasksWithReply:&__block_literal_global_14];
    [(FlowAnalyticsEngine *)self _performAppTrackingPeriodicTasksWithReply:&__block_literal_global_98];
    [(FlowAnalyticsEngine *)self _performAppEndpointTrackingPeriodicTasksWithReply:&__block_literal_global_101_0];

    [(FlowAnalyticsEngine *)self _performAppExperiencePeriodicTasksWithReply:&__block_literal_global_104_0];
  }
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = analyticsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app endpoint tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app endpoint tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = appExperienceLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app experience tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app experience tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupSignalHandling
{
  signal(30, 1);
  queue = [(AnalyticsEngineCore *)self queue];
  v4 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, queue);
  v5 = _setupSignalHandling_sigusr1;
  _setupSignalHandling_sigusr1 = v4;

  if (_setupSignalHandling_sigusr1)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__FlowAnalyticsEngine__setupSignalHandling__block_invoke;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(_setupSignalHandling_sigusr1, handler);
    dispatch_resume(_setupSignalHandling_sigusr1);
  }

  signal(29, 1);
  queue2 = [(AnalyticsEngineCore *)self queue];
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, queue2);
  siginfo = self->siginfo;
  self->siginfo = v7;

  v9 = self->siginfo;
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__FlowAnalyticsEngine__setupSignalHandling__block_invoke_2;
    v11[3] = &unk_27898A0C8;
    v11[4] = self;
    dispatch_source_set_event_handler(v9, v11);
    dispatch_resume(self->siginfo);
  }

  return 1;
}

- (void)_setupNotificationCenterAndRelayObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke;
  v38[3] = &unk_27898A690;
  v38[4] = self;
  v4 = [defaultCenter addObserverForName:@"kNotificationCellTrafficClassReportCapable" object:0 queue:0 usingBlock:v38];
  cellTCCapabilityObserver = self->cellTCCapabilityObserver;
  self->cellTCCapabilityObserver = v4;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_107;
  v37[3] = &unk_27898A690;
  v37[4] = self;
  v6 = [defaultCenter addObserverForName:@"kNotificationCellThroughputAdvisoryCapable" object:0 queue:0 usingBlock:v37];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = v6;

  v8 = +[SystemSettingsRelay defaultRelay];
  [v8 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_118;
  v36[3] = &unk_27898A690;
  v36[4] = self;
  v9 = [defaultCenter addObserverForName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:0 queue:0 usingBlock:v36];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = v9;

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3;
  v35[3] = &unk_27898A690;
  v35[4] = self;
  v11 = [defaultCenter addObserverForName:@"UMSwitch" object:0 queue:0 usingBlock:v35];
  userSwitchObserver = self->userSwitchObserver;
  self->userSwitchObserver = v11;

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_122;
  v34[3] = &unk_27898A690;
  v34[4] = self;
  v13 = [defaultCenter addObserverForName:@"AlgosScore" object:0 queue:0 usingBlock:v34];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = v13;

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4;
  v33[3] = &unk_27898A690;
  v33[4] = self;
  v15 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v33];
  relayReadyObserver = self->relayReadyObserver;
  self->relayReadyObserver = v15;

  self->trackedFlowCountSincePrimaryInterfaceChanged = -1;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_131;
  v32[3] = &unk_27898A690;
  v32[4] = self;
  v17 = [defaultCenter addObserverForName:@"kNotificationOfTetheringState" object:0 queue:0 usingBlock:v32];
  tetherObserver = self->tetherObserver;
  self->tetherObserver = v17;

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_133;
  v31[3] = &unk_27898A690;
  v31[4] = self;
  v19 = [defaultCenter addObserverForName:@"kNotificationFlowStats" object:0 queue:0 usingBlock:v31];
  flowObserver = self->flowObserver;
  self->flowObserver = v19;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_135;
  v30[3] = &unk_27898A690;
  v30[4] = self;
  v21 = [defaultCenter addObserverForName:@"kNotificationExpectedTransfer" object:0 queue:0 usingBlock:v30];
  transferSizeObserver = self->transferSizeObserver;
  self->transferSizeObserver = v21;

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5_137;
  v29[3] = &unk_27898A690;
  v29[4] = self;
  v23 = [defaultCenter addObserverForName:@"kNotificationCoreMediaAssetDownload" object:0 queue:0 usingBlock:v29];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = v23;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_139;
  v28[3] = &unk_27898A690;
  v28[4] = self;
  v25 = [defaultCenter addObserverForName:@"kNotificationDASOversizeLoad" object:0 queue:0 usingBlock:v28];
  sizeableBackgroundTransferObserver = self->sizeableBackgroundTransferObserver;
  self->sizeableBackgroundTransferObserver = v25;

  v27 = +[PowerStateRelay defaultRelay];
  [v27 addObserver:self forKeyPath:@"screenNotDark" options:7 context:0];
  [v27 addObserver:self forKeyPath:@"screenUnlocked" options:7 context:0];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"State"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = analyticsLogHandle;
  v3 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v1 == 1)
  {
    if (v3)
    {
      v8 = 0;
      v4 = "set AppTracker trackCellular";
      v5 = &v8;
LABEL_6:
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    LOWORD(v7) = 0;
    v4 = "remove AppTracker trackCellular";
    v5 = &v7;
    goto LABEL_6;
  }

  return [AppTracker setTrackCellular:v1, v7];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_107(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"State"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_108;
  v7[3] = &unk_27898A3A0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  dispatch_async(v6, v7);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_108(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 368))
  {
    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Creating cellThroughputAdviser", buf, 2u);
    }

    v3 = [CellThroughputAdviserEnvironment alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(CellThroughputAdviserEnvironment *)v3 initWithQueue:v4];

    v6 = [(CellThroughputAdviserEnvironment *)v5 cellThroughputAdviser];
    v7 = *(a1 + 32);
    v8 = *(v7 + 368);
    *(v7 + 368) = v6;

    [(CellThroughputAdviserEnvironment *)v5 monitorSDMActivations:*(a1 + 40)];
    v9 = *(a1 + 32);
    if (v9[47])
    {
      v10 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 376);
        *buf = 138543362;
        v24 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Override throughput advice parameters with %{public}@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 368) configureInstance:*(*(a1 + 32) + 376)];
      v12 = *(a1 + 32);
      v13 = *(v12 + 376);
      *(v12 + 376) = 0;

      v9 = *(a1 + 32);
    }

    v14 = [v9 queue];
    [*(*(a1 + 32) + 368) setQueue:v14];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 32) + 368) setIsScreenDark:*(*(a1 + 32) + 520)];
    [*(*(a1 + 32) + 368) setIsScreenLocked:*(*(a1 + 32) + 536)];
    [*(*(a1 + 32) + 368) setNrFrequencyBand:*(*(a1 + 32) + 537)];
    [*(*(a1 + 32) + 368) setDelegate:?];
    v15 = [*(a1 + 32) queue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_114;
    v22[3] = &unk_27898A0C8;
    v22[4] = *(a1 + 32);
    [(PeriodicMaintenanceActivity *)SemiDailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"SymptomsCellularSDM.MetricReporting" queue:v15 activity:v22];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
  v16 = *(a1 + 40);
  v17 = analyticsLogHandle;
  v18 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v16 == 1)
  {
    if (v18)
    {
      *buf = 0;
      v19 = "FAE cellThroughputAdviser enabled";
LABEL_14:
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    }
  }

  else if (v18)
  {
    *buf = 0;
    v19 = "FAE cellThroughputAdviser disabled";
    goto LABEL_14;
  }

  [*(*(a1 + 32) + 368) setEnabled:v16];
  result = [*(a1 + 32) _requestDetailedCellFlowMonitoring:v16];
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__5;
  v9[4] = __Block_byref_object_dispose__5;
  v10 = os_transaction_create();
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_121;
  block[3] = &unk_27898C418;
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v9;
  v5 = v3;
  dispatch_async(v4, block);

  _Block_object_dispose(v9, 8);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_121(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  [v2 clearAppDomainUsage:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) userInfo];
  [v4 clearAppEndpoints:v5];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) userInfo];
  [v8 updateEffectiveUserId:v9];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_122(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"AlgosScoreBundleName"];
  v5 = [v3 objectForKeyedSubscript:@"AlgosScoreValue"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_123;
  block[3] = &unk_27898BFA0;
  block[4] = *(a1 + 32);
  v11 = v4;
  v12 = v7;
  v9 = v4;
  dispatch_async(v8, block);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 464)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 464);
  *(v3 + 464) = 0;

  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5;
  block[3] = &unk_27898A0C8;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5(uint64_t a1)
{
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "kNotificationStateRelayReady received", buf, 2u);
  }

  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = *(a1 + 32);
  v5 = *(v4 + 672);
  *(v4 + 672) = v3;

  v6 = *(*(a1 + 32) + 672);
  if (v6)
  {
    [v6 addObserver:? forKeyPath:? options:? context:?];
    [*(*(a1 + 32) + 672) addObserver:*(a1 + 32) forKeyPath:@"nrFrequencyBand" options:7 context:0];
  }

  else
  {
    v7 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "failed to procure cell state relay at kNotificationStateRelayReady in FAE", v15, 2u);
    }
  }

  v8 = [NetworkStateRelay getStateRelayFor:3];
  v9 = *(a1 + 32);
  v10 = *(v9 + 680);
  *(v9 + 680) = v8;

  v11 = *(*(a1 + 32) + 680);
  if (v11)
  {
    [v11 addObserver:? forKeyPath:? options:? context:?];
  }

  else
  {
    v12 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "failed to procure Wi-Fi state relay at kNotificationStateRelayReady in FAE", v14, 2u);
    }
  }

  return [*(a1 + 32) _startFlowMonitoring];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_132;
  v7[3] = &unk_27898A7D0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_132(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"State"];
  v4 = [v3 BOOLValue];

  if (*(*(a1 + 40) + 304) != v4)
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 40) + 304);
      v8[0] = 67109376;
      v8[1] = v6;
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "tether state was %d, is now: %d", v8, 0xEu);
    }

    [*(a1 + 40) _updateTetheringUsage:0];
    *(*(a1 + 40) + 304) = v4;
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_134;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_135(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4_136;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "FAE received kNotificationCoreMediaAssetDownload", buf, 2u);
  }

  v5 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_138;
  v7[3] = &unk_27898A7D0;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_140;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_setupDailyMaintenanceActivity
{
  objc_initWeak(&location, self);
  queue = [(AnalyticsEngineCore *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke;
  v4[3] = &unk_27898C3B0;
  objc_copyWeak(&v5, &location);
  [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"FAEngine.Daily" queue:queue activity:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performAppDomainUsageAnalytics];
    if ([WeakRetained delegateToProxyAnalytics])
    {
      v1 = [WeakRetained proxyAnalytics];

      if (!v1)
      {
        v2 = objc_opt_new();
        [WeakRetained setProxyAnalytics:v2];

        v3 = [WeakRetained proxyAnalytics];
        [v3 setDelegate:WeakRetained];
      }

      v4 = [WeakRetained proxyAnalytics];
      [v4 performAppPeriodicTasks];

      v5 = [WeakRetained proxyAnalytics];
      [v5 performAppTrackingPeriodicTasks];

      v6 = [WeakRetained proxyAnalytics];
      [v6 performAppEndpointTrackingPeriodicTasks];

      v7 = [WeakRetained proxyAnalytics];
      [v7 performAppExperiencePeriodicTasks];
    }

    else
    {
      [WeakRetained _performAppPeriodicTasksWithReply:&__block_literal_global_153];
      [WeakRetained _performAppTrackingPeriodicTasksWithReply:&__block_literal_global_156];
      [WeakRetained _performAppEndpointTrackingPeriodicTasksWithReply:&__block_literal_global_159];
      [WeakRetained _performAppExperiencePeriodicTasksWithReply:&__block_literal_global_162];
    }
  }
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = analyticsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app endpoint tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app endpoint tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_160(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = appExperienceLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      v7 = "Periodic app experience tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    v7 = "Periodic app experience tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setupPrefsStoreObserving
{
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v4 = shared_prefs_store;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke;
    v13[3] = &unk_27898A0A0;
    v13[4] = self;
    prefs_add_client(shared_prefs_store, "verbose_bitmap_logging", v13);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_166;
    v12[3] = &unk_27898A0A0;
    v12[4] = self;
    prefs_add_client(v4, "usage_coalescing_span_secs", v12);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_168;
    v11[3] = &unk_27898A0A0;
    v11[4] = self;
    prefs_add_client(v4, "usage_window_units", v11);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_170;
    v10[3] = &unk_27898A0A0;
    v10[4] = self;
    prefs_add_client(v4, "usage_foreground_background_mode", v10);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_174;
    v9[3] = &unk_27898A0A0;
    v9[4] = self;
    prefs_add_client(v4, "usage_calendar_mode", v9);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_176;
    v8[3] = &unk_27898A0A0;
    v8[4] = self;
    prefs_add_client(v4, "query_outcome_log_count", v8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_178;
    v7[3] = &unk_27898A0A0;
    v7[4] = self;
    prefs_add_client(v4, "domain_bucket_duration_secs", v7);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_180;
    v6[3] = &unk_27898A0A0;
    v6[4] = self;
    prefs_add_client(v4, "netstats_trace_file", v6);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_184;
    v5[3] = &unk_27898A0A0;
    v5[4] = self;
    prefs_add_client(v4, "cell_sdm_advice_params", v5);
  }
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
    {
      *(*(a1 + 32) + 634) = xpc_BOOL_get_value(v5);
      v6 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 634);
        v9[0] = 67109120;
        v9[1] = v7;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Setting verbose bitmap logging to %d", v9, 8u);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_166(uint64_t a1, uint64_t a2, void *a3)
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
      *(v13 + 608) = 1209600;
      v15 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 1209600;
      v7 = "Setting new coalescing span (%lld) failed. Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 608) = value;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "Setting new coalescing span (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 608) = 1209600;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 1209600;
    v7 = "Setting new nil coalescing span. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_168(uint64_t a1, uint64_t a2, void *a3)
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
      *(v13 + 616) = 3;
      v15 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 3;
      v7 = "Setting new usage window units (%lld) failed. Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 616) = value;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "Setting new usage window units (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 616) = 3;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 3;
    v7 = "Setting new nil usage window units. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_170(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v5);
  [*(a1 + 32) setHaveTypicalUsage:v6];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = "FALSE";
    if (v6)
    {
      v8 = "TRUE";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Setting usage_foreground_background_mode to: %s", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_174(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v5);
  [*(a1 + 32) setHaveCalendar:v6];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = "FALSE";
    if (v6)
    {
      v8 = "TRUE";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Setting usage_calendar_mode to: %s", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_176(uint64_t a1, uint64_t a2, void *a3)
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
      *(v13 + 624) = 10;
      v15 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v12;
      v18 = 1024;
      v19 = 10;
      v7 = "Setting new outcome array log entry count (%lld) failed. Resetting to default value (%d)";
      v8 = v15;
      v9 = 18;
    }

    else
    {
      *(v13 + 624) = value;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v12;
      v7 = "Setting new outcome array log entry count (%lld)";
      v8 = v14;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 624) = 10;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 10;
    v7 = "Setting new nil outcome array log entry count. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v16, v9);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_178(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v13 = value;
    if (value < 1)
    {
      *(*(a1 + 32) + 600) = 0x404E000000000000;
      v15 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134218240;
      v17 = v13;
      v18 = 1024;
      v19 = 60;
      v7 = "Setting new domain_bucket_duration_secs (%lld) failed. Resetting to default value (%d)";
      v8 = v15;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 18;
    }

    else
    {
      *(*(a1 + 32) + 600) = value;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v16 = 134217984;
      v17 = v13;
      v7 = "Setting new domain_bucket_duration_secs (%lld)";
      v8 = v14;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 600) = 0x404E000000000000;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 60;
    v7 = "Setting new nil domain_bucket_duration_secs. Setting to default value instead (%d)";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, v9, v7, &v16, v10);
  }

LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_180(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D864C0])
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Processing netstats_trace_file base name %@", buf, 0xCu);
  }

  if (![v11 length])
  {

LABEL_3:
    v6 = *(a1 + 32);
    if (*(v6 + 216) >= 1)
    {
      v7 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 208);
        *buf = 138412290;
        v31 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Processing close of netstats_trace_file, old basename was %@", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      if (*(v9 + 192) == 1)
      {
        v26 = *MEMORY[0x277D2CBC0];
        v27 = &unk_2847EF6C8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [*(*(a1 + 32) + 184) configure:v10];
      }

      else
      {
        close(*(v9 + 216));
      }

      *(*(a1 + 32) + 216) = 0;
      v6 = *(a1 + 32);
    }

    v11 = *(v6 + 208);
    *(v6 + 208) = 0;
    goto LABEL_11;
  }

  if ([v11 isAbsolutePath])
  {
    v14 = *(*(a1 + 32) + 208);
    if (!v14 || ([v14 isEqualToString:v11] & 1) == 0)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
      [v15 timeIntervalSince1970];
      v17 = formattedDateStringForTimeInterval(v16);
      v18 = [v11 stringByAppendingString:v17];

      v19 = *(a1 + 32);
      v20 = *(v19 + 216);
      if (v20 >= 1 && (*(v19 + 192) & 1) == 0)
      {
        close(v20);
      }

      *(*(a1 + 32) + 216) = open([v18 UTF8String], 1538, 438);
      v21 = analyticsLogHandle;
      if ((*(*(a1 + 32) + 216) & 0x80000000) != 0)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to open netstats_trace_file, full name %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "Opened netstats_trace_file, full name %@", buf, 0xCu);
        }

        objc_storeStrong((*(a1 + 32) + 208), v11);
        v22 = *(a1 + 32);
        if (*(v22 + 192) == 1)
        {
          v28 = *MEMORY[0x277D2CBC0];
          v23 = [MEMORY[0x277CCABB0] numberWithInt:*(v22 + 216)];
          v29 = v23;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

          [*(*(a1 + 32) + 184) configure:v24];
        }
      }
    }
  }

  else
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "netstats_trace_file path not absolute, %@", buf, 0xCu);
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_184(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_2;
  v8[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && MEMORY[0x238389170]() == MEMORY[0x277D86468])
  {
    v6 = *(a1 + 32);
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Processing cell_sdm_advice_params %@", buf, 0xCu);
    }

    v5 = *(*(a1 + 40) + 368);
    if (!v5)
    {
      v9 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "No cellThroughputAdviser to configure", buf, 2u);
      }

      objc_storeStrong((*(a1 + 40) + 376), v4);
      goto LABEL_11;
    }

LABEL_10:
    [v5 configureInstance:v4];
LABEL_11:

    goto LABEL_12;
  }

  if (*(*(a1 + 40) + 368))
  {
    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Restoring cell_sdm_advice_params to default values", buf, 2u);
    }

    v3 = *(*(a1 + 40) + 368);
    v10 = @"restoreDefaults";
    v11 = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v5 = v3;
    goto LABEL_10;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startFlowMonitoring
{
  v30[23] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:3072];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:49152];
  v5 = MEMORY[0x277CBEC38];
  v6 = *MEMORY[0x277D2CC10];
  v29[0] = *MEMORY[0x277D2CBE8];
  v29[1] = v6;
  v30[0] = MEMORY[0x277CBEC38];
  v30[1] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D2CBF0];
  v29[2] = *MEMORY[0x277D2CC18];
  v29[3] = v7;
  v30[2] = MEMORY[0x277CBEC38];
  v30[3] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D2CC08];
  v29[4] = *MEMORY[0x277D2CBF8];
  v29[5] = v8;
  v30[4] = MEMORY[0x277CBEC38];
  v30[5] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D2CBE0];
  v29[6] = *MEMORY[0x277D2CC00];
  v29[7] = v9;
  v30[6] = MEMORY[0x277CBEC38];
  v30[7] = v3;
  v10 = *MEMORY[0x277D2CC38];
  v29[8] = *MEMORY[0x277D2CBD0];
  v29[9] = v10;
  v30[8] = MEMORY[0x277CBEC38];
  v30[9] = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277D2CC30];
  v29[10] = *MEMORY[0x277D2CC20];
  v29[11] = v11;
  v30[10] = MEMORY[0x277CBEC38];
  v30[11] = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277D2CBD8];
  v29[12] = *MEMORY[0x277D2CC28];
  v29[13] = v12;
  v30[12] = MEMORY[0x277CBEC38];
  v30[13] = v4;
  v13 = *MEMORY[0x277D2CBB0];
  v29[14] = *MEMORY[0x277D2CB80];
  v29[15] = v13;
  v30[14] = MEMORY[0x277CBEC38];
  v30[15] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277D2CB98];
  v29[16] = *MEMORY[0x277D2CBA0];
  v29[17] = v14;
  v30[16] = MEMORY[0x277CBEC38];
  v30[17] = MEMORY[0x277CBEC38];
  v29[18] = *MEMORY[0x277D2CBA8];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"terminusd", 0}];
  v16 = *MEMORY[0x277D2CB88];
  v30[18] = v15;
  v30[19] = v5;
  v17 = *MEMORY[0x277D2CB90];
  v29[19] = v16;
  v29[20] = v17;
  v18 = *MEMORY[0x277D2CBC8];
  v30[20] = v5;
  v30[21] = &unk_2847EFE00;
  v19 = *MEMORY[0x277D2CBC0];
  v29[21] = v18;
  v29[22] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->nstatTraceFileFD];
  v30[22] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:23];

  v22 = [(NWStatsManager *)self->nstatManager configure:v21];
  if (v22)
  {
    v23 = v22;
    v24 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v28 = v23;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "Can't configure netstats manager, error %d", buf, 8u);
    }
  }

  else
  {
    self->nstatManagerConfigured = 1;
  }

  v25 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "Start flow monitoring", buf, 2u);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = +[SystemSettingsRelay defaultRelay];
  [v3 removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];

  repeatedConnFailureDetector = self->repeatedConnFailureDetector;
  if (repeatedConnFailureDetector)
  {
    [(RepeatedConnFailureDetector *)repeatedConnFailureDetector invalidate];
    v5 = self->repeatedConnFailureDetector;
    self->repeatedConnFailureDetector = 0;
  }

  if (self->_greenTeaLogger)
  {
    ct_green_tea_logger_destroy();
  }

  if (self->logStateHandle)
  {
    os_state_remove_handler();
    self->logStateHandle = 0;
  }

  siginfo = self->siginfo;
  if (siginfo)
  {
    dispatch_source_cancel(siginfo);
    v7 = self->siginfo;
    self->siginfo = 0;
  }

  flushInactiveLedgerTimer = self->flushInactiveLedgerTimer;
  if (flushInactiveLedgerTimer)
  {
    dispatch_source_cancel(flushInactiveLedgerTimer);
    v9 = self->flushInactiveLedgerTimer;
    self->flushInactiveLedgerTimer = 0;
  }

  [(FlowAnalyticsEngine *)self stopObservingLaunchServices];
  nstatManager = self->nstatManager;
  if (nstatManager)
  {
    [(NWStatsManager *)nstatManager invalidate];
    v11 = self->nstatManager;
    self->nstatManager = 0;

    self->nstatManagerConfigured = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->tetherObserver];
  [defaultCenter removeObserver:self->algosScoreObserver];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = 0;

  [defaultCenter removeObserver:self->appStateChangeObserver];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = 0;

  [defaultCenter removeObserver:self->assetDownloadObserver];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = 0;

  [defaultCenter removeObserver:self->cellThroughputAdvisoryReqObserver];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = 0;

  if (self->relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"nrFrequencyBand"];
  [defaultCenter removeObserver:self->flowObserver];
  flushOldFlowRecordsTimer = self->flushOldFlowRecordsTimer;
  if (flushOldFlowRecordsTimer)
  {
    dispatch_source_cancel(flushOldFlowRecordsTimer);
    v18 = self->flushOldFlowRecordsTimer;
    self->flushOldFlowRecordsTimer = 0;
  }

  if (self->userSwitchObserver)
  {
    [defaultCenter removeObserver:?];
    userSwitchObserver = self->userSwitchObserver;
    self->userSwitchObserver = 0;
  }

  if (self->userAppTrackingObserver)
  {
    [defaultCenter removeObserver:?];
    userAppTrackingObserver = self->userAppTrackingObserver;
    self->userAppTrackingObserver = 0;
  }

  if (self->userEndpointTrackingObserver)
  {
    [defaultCenter removeObserver:?];
    userEndpointTrackingObserver = self->userEndpointTrackingObserver;
    self->userEndpointTrackingObserver = 0;
  }

  [defaultCenter removeObserver:self->domainResolvingObserver];
  domainResolvingObserver = self->domainResolvingObserver;
  self->domainResolvingObserver = 0;

  v23 = +[PowerStateRelay defaultRelay];
  [v23 removeObserver:self forKeyPath:@"screenNotDark"];
  [v23 removeObserver:self forKeyPath:@"screenUnlocked"];

  v24.receiver = self;
  v24.super_class = FlowAnalyticsEngine;
  [(AnalyticsEngineCore *)&v24 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v46 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"primary"])
  {
    v12 = objectCopy;
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    functionalInterfaceType = [v12 functionalInterfaceType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 BOOLValue])
    {
      if (functionalInterfaceType == 3)
      {
        objc_storeStrong(&self->_mostRecentPrimaryRelay, object);
        v15 = +[TrackedFlow allActiveFlowsCount];
      }

      else
      {
        mostRecentPrimaryRelay = self->_mostRecentPrimaryRelay;
        self->_mostRecentPrimaryRelay = 0;

        v15 = -1;
      }

      self->trackedFlowCountSincePrimaryInterfaceChanged = v15;
    }
  }

  if ([pathCopy isEqualToString:@"nrFrequencyBand"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shortValue = [v17 shortValue];
      if (shortValue >= 3)
      {
        v19 = -1;
      }

      else
      {
        v19 = shortValue;
      }

      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_27898A3A0;
      block[4] = self;
      v43 = v19;
      dispatch_async(queue, block);
    }
  }

  if ([pathCopy isEqualToString:@"autoBugCaptureEnabled"])
  {
    v21 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      bOOLValue = [v21 BOOLValue];
      *buf = 67109120;
      v45 = bOOLValue;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Observed value for autoBugCaptureEnabled is %d", buf, 8u);
    }

    queue2 = [(AnalyticsEngineCore *)self queue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_195;
    v39[3] = &unk_27898A7D0;
    v40 = v21;
    selfCopy = self;
    v26 = v21;
    dispatch_async(queue2, v39);

    v27 = v40;
    goto LABEL_27;
  }

  if ([pathCopy isEqualToString:@"screenNotDark"])
  {
    v26 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v26;
      queue3 = [(AnalyticsEngineCore *)self queue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v36[3] = &unk_27898A7D0;
      v37 = v28;
      selfCopy2 = self;
      v27 = v28;
      dispatch_async(queue3, v36);

      v30 = v37;
LABEL_26:

      v26 = v27;
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if ([pathCopy isEqualToString:@"screenUnlocked"])
  {
    v26 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v26;
      queue4 = [(AnalyticsEngineCore *)self queue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_199;
      v34[3] = &unk_27898A7D0;
      v34[4] = self;
      v35 = v31;
      v27 = v31;
      dispatch_async(queue4, v34);

      v30 = v35;
      goto LABEL_26;
    }

LABEL_28:
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 40);
  if (*(v2 + 537) != v3)
  {
    *(v2 + 537) = v3;
    v2 = *(result + 32);
  }

  if (*(v2 + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(v1 + 32) + 368) setPropertyChangeTimestamp:?];
    v4 = *(v1 + 40);
    v5 = *(*(v1 + 32) + 368);

    return [v5 setNrFrequencyBand:v4];
  }

  return result;
}

void *__70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_195(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  result = *(*(a1 + 40) + 400);
  if (v2)
  {
    if (result)
    {
      return result;
    }

    v4 = objc_alloc_init(RepeatedConnFailureDetector);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    [result invalidate];
    v4 = 0;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 400);
  *(v5 + 400) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

void __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) BOOLValue];
  v3 = v2 ^ 1;
  v4 = *(a1 + 40);
  if ((*(v4 + 520) & 1) == 0 && (v2 & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = *(a1 + 40);
    v7 = *(v6 + 528);
    *(v6 + 528) = v5;

    v4 = *(a1 + 40);
  }

  *(v4 + 520) = v3;
  if (*(*(a1 + 40) + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 40) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 40) + 368) setIsScreenDark:*(*(a1 + 40) + 520)];
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 40) + 520))
    {
      v9 = "";
    }

    else
    {
      v9 = " not";
    }

    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "FAE screen is%s dark", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_199(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 536) = [*(a1 + 40) BOOLValue] ^ 1;
  if (*(*(a1 + 32) + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 32) + 368) setIsScreenLocked:*(*(a1 + 32) + 536)];
  }

  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 536))
    {
      v3 = "";
    }

    else
    {
      v3 = " not";
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "FAE screen is%s locked", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_refreshFullDataUsageWithCallback:(id)callback
{
  v38 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  ++_refreshFullDataUsageWithCallback__debugCount;
  v5 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = _refreshFullDataUsageWithCallback__debugCount;
    dataUsageRefreshCompletionNumWaiting = self->dataUsageRefreshCompletionNumWaiting;
    dataUsageRefreshCompletionBlock = self->dataUsageRefreshCompletionBlock;
    v9 = v5;
    v10 = _Block_copy(dataUsageRefreshCompletionBlock);
    *buf = 134218496;
    v33 = v6;
    v34 = 1024;
    v35 = dataUsageRefreshCompletionNumWaiting;
    v36 = 2048;
    v37 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Entry for full refresh,  count %llu  queued %d  block %p", buf, 0x1Cu);
  }

  v11 = _refreshFullDataUsageWithCallback__debugCount;
  queue = [(AnalyticsEngineCore *)self queue];
  v13 = _Block_copy(self->dataUsageRefreshCompletionBlock);
  ++self->dataUsageRefreshCompletionNumWaiting;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke;
  v27 = &unk_27898C468;
  v14 = v13;
  v29 = v14;
  v15 = queue;
  v28 = v15;
  v31 = v11;
  v16 = callbackCopy;
  v30 = v16;
  v17 = _Block_copy(&v24);
  v18 = self->dataUsageRefreshCompletionBlock;
  self->dataUsageRefreshCompletionBlock = v17;

  v19 = self->dataUsageRefreshCompletionNumWaiting;
  if (v19 == 1 || !(v19 % 10) || (lastFullRefreshTime = self->lastFullRefreshTime) != 0 && ([(NSDate *)lastFullRefreshTime timeIntervalSinceNow:v24], fabs(v21) > 20.0))
  {
    v22 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Issue full refresh", buf, 2u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsage:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke_2;
  v5[3] = &unk_27898C440;
  v4 = a1[6];
  v7 = a1[7];
  v6 = v4;
  dispatch_async(v3, v5);
}

uint64_t __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = _Block_copy(v3);
    v9 = 134218240;
    v10 = v4;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Refresh complete, invoking block #%llu (%p)", &v9, 0x16u);
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_reportThresholdedFlowCount:(unint64_t)count threshold:(unint64_t)threshold
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:50];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__FlowAnalyticsEngine__reportThresholdedFlowCount_threshold___block_invoke;
  v25[3] = &unk_27898C4B8;
  v7 = v6;
  v26 = v7;
  [TrackedFlow countFlowsPassingTest:v25];
  v8 = [v7 keysSortedByValueUsingSelector:sel_compare_];
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = [v8 count];
    *buf = 134218242;
    v29 = v11;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Sending flow exceeded symptom for %lu procs, %@", buf, 0x16u);
  }

  internal_symptom_new(405515);
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [v8 count];
  internal_symptom_set_qualifier();
  if (self->thunderingHerdFlowCountExceededThreshold)
  {
    v12 = !self->flowCountExceededThreshold;
  }

  internal_symptom_set_qualifier();
  [v8 reverseObjectEnumerator];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v24 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v22;
LABEL_7:
    v18 = 0;
    while (1)
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v21 + 1) + 8 * v18);
      strlen([v19 UTF8String]);
      internal_symptom_set_additional_qualifier();
      if (v16 == 19)
      {
        break;
      }

      ++v18;
      ++v16;
      if (v15 == v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  internal_symptom_send();
  objc_autoreleasePoolPop(v5);
  v20 = *MEMORY[0x277D85DE8];
}

BOOL __61__FlowAnalyticsEngine__reportThresholdedFlowCount_threshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ownerKey];
  v4 = v3;
  v5 = @"unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntegerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

  return v8 == 0;
}

- (void)_logExcessCellUsage:(int64_t)usage snapshot:(id)snapshot
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v6;
    snapshotCopy = snapshot;
    snapshotReason = [snapshotCopy snapshotReason];
    v9 = "";
    if (snapshotReason == 2)
    {
      v9 = "closed";
    }

    v27 = v9;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = "udp";
    if (isKindOfClass)
    {
      v11 = "tcp";
    }

    v26 = v11;
    flowUsesChannels = [snapshotCopy flowUsesChannels];
    v13 = "socket";
    if (flowUsesChannels)
    {
      v13 = "channel";
    }

    sourceIdentifier = [snapshotCopy sourceIdentifier];
    [snapshotCopy flowDuration];
    v16 = v15;
    processID = [snapshotCopy processID];
    processName = [snapshotCopy processName];
    uuid = [snapshotCopy uuid];
    euuid = [snapshotCopy euuid];
    vuuid = [snapshotCopy vuuid];
    attributedEntity = [snapshotCopy attributedEntity];
    attributionReasonString = [snapshotCopy attributionReasonString];

    *buf = 134221058;
    usageCopy = usage;
    v31 = 2080;
    v32 = v27;
    v33 = 2080;
    v34 = v26;
    v35 = 2080;
    v36 = v25;
    v37 = 2048;
    v38 = sourceIdentifier;
    v39 = 2048;
    v40 = v16;
    v41 = 1024;
    v42 = processID;
    v43 = 2112;
    v44 = processName;
    v45 = 2112;
    v46 = uuid;
    v47 = 2112;
    v48 = euuid;
    v49 = 2112;
    v50 = vuuid;
    v51 = 2112;
    v52 = attributedEntity;
    v53 = 2112;
    v54 = attributionReasonString;
    _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Cell traffic threshold %lld on %s %s %s flow %lld duration %.2f with pid %d procname %@ UUID %@ EUUID %@ VUUID %@ (attributed %@ reason%@)", buf, 0x80u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_checkCellExcessUsageActions:(unint64_t)actions previous:(unint64_t)previous snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  snapshotReason = [snapshotCopy snapshotReason];
  if (actions > 0x100000 && (actions > 0xA00000 ? (v9 = previous >= 0xA00001) : (v9 = 1), v9 ? (v10 = 0) : (v10 = 1), previous <= 0x100000 || (v10 & 1) != 0 || snapshotReason == 2))
  {
    [(FlowAnalyticsEngine *)self _logExcessCellUsage:actions snapshot:snapshotCopy];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0x280000000;
  if (self->isScreenDark)
  {
    screenDarkTimestamp = self->screenDarkTimestamp;
    if (!screenDarkTimestamp || ([(NSDate *)screenDarkTimestamp timeIntervalSinceNow], v14 < -5.0))
    {
      v12 = 0x40000000;
    }
  }

  if (v12 < actions && v12 >= previous)
  {
    if ((v11 & 1) == 0)
    {
      [(FlowAnalyticsEngine *)self _logExcessCellUsage:actions snapshot:snapshotCopy];
    }

    [(FlowAnalyticsEngine *)self _generateFlowAnomalySymptom:405527 currentUsage:actions snapshot:snapshotCopy];
  }
}

- (BOOL)_shouldSendStatisticsReport:(id)report
{
  v17 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v4 = reportCopy;
  if (!reportCopy)
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      v11 = "no flow data when checking to see if we should send statistics report";
LABEL_14:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v11, v14, 2u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if ([reportCopy snapshotReason] != 2)
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      v11 = "flow is not closed, not sending statistics report";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v4 isSilent])
  {
    goto LABEL_15;
  }

  flow_report_numerator = nw_settings_get_flow_report_numerator();
  flow_report_denominator = nw_settings_get_flow_report_denominator();
  v7 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = 67109376;
    v14[1] = flow_report_numerator;
    v15 = 1024;
    v16 = flow_report_denominator;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Flow report sampled at %u / %u", v14, 0xEu);
  }

  if (arc4random_uniform(flow_report_denominator) >= flow_report_numerator)
  {
    goto LABEL_15;
  }

  v8 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Flow selected for reporting", v14, 2u);
  }

  v9 = 1;
LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_sendStatisticsReport:(id)report
{
  v71 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v4 = reportCopy;
  if (!reportCopy)
  {
    v50 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    LOWORD(v69) = 0;
    v51 = "no flow data when sending statistics report";
LABEL_38:
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, v51, &v69, 2u);
    goto LABEL_61;
  }

  if ([reportCopy snapshotReason] != 2)
  {
    v50 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    LOWORD(v69) = 0;
    v51 = "flow is not closed when sending statistics report";
    goto LABEL_38;
  }

  if (([v4 isSilent] & 1) == 0)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "packetsIn", [v4 rxPackets]);
    xpc_dictionary_set_uint64(v5, "packetsOut", [v4 txPackets]);
    xpc_dictionary_set_uint64(v5, "bytesIn", [v4 rxBytes]);
    xpc_dictionary_set_uint64(v5, "bytesOut", [v4 txBytes]);
    xpc_dictionary_set_uint64(v5, "wiredBytesIn", [v4 rxWiredBytes]);
    xpc_dictionary_set_uint64(v5, "wiredBytesOut", [v4 txWiredBytes]);
    xpc_dictionary_set_uint64(v5, "wifiBytesIn", [v4 rxWiFiBytes]);
    xpc_dictionary_set_uint64(v5, "wifiBytesOut", [v4 txWiFiBytes]);
    xpc_dictionary_set_uint64(v5, "cellularBytesIn", [v4 rxCellularBytes]);
    xpc_dictionary_set_uint64(v5, "cellularBytesOut", [v4 txCellularBytes]);
    [v4 flowDuration];
    xpc_dictionary_set_double(v5, "duration", v6);
    flowTypeLowerCase = [v4 flowTypeLowerCase];
    uTF8String = [flowTypeLowerCase UTF8String];

    if (uTF8String)
    {
      flowTypeLowerCase2 = [v4 flowTypeLowerCase];
      xpc_dictionary_set_string(v5, "type", [flowTypeLowerCase2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "isIPv4", [v4 isIPv4]);
    xpc_dictionary_set_BOOL(v5, "isIPv6", [v4 isIPv6]);
    xpc_dictionary_set_BOOL(v5, "hasTraffic", [v4 hasTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasWiFiTraffic", [v4 hasWiFiTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasCellularTraffic", [v4 hasCellTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasWiredTraffic", [v4 hasWiredTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasLocalDestination", [v4 hasLocalDestination]);
    xpc_dictionary_set_BOOL(v5, "hasNonLocalDestination", [v4 hasNonLocalDestination]);
    xpc_dictionary_set_BOOL(v5, "interfaceUnknown", [v4 interfaceUnknown]);
    xpc_dictionary_set_BOOL(v5, "interfaceLoopback", [v4 interfaceLoopback]);
    xpc_dictionary_set_BOOL(v5, "interfaceWiFi", [v4 interfaceWiFi]);
    xpc_dictionary_set_BOOL(v5, "interfaceWired", [v4 interfaceWired]);
    xpc_dictionary_set_BOOL(v5, "interfaceAWDL", [v4 interfaceAWDL]);
    xpc_dictionary_set_BOOL(v5, "interfaceLLW", [v4 interfaceLLW]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellular", [v4 interfaceCellular]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaFallback", [v4 interfaceCellularViaFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaSlowFallback", [v4 interfaceCellularViaSlowFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaFastFallback", [v4 interfaceCellularViaFastFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaPreferredFallback", [v4 interfaceCellularViaPreferredFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaIndependentFallback", [v4 interfaceCellularViaIndependentFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceExpensive", [v4 interfaceExpensive]);
    xpc_dictionary_set_BOOL(v5, "interfaceConstrained", [v4 interfaceConstrained]);
    xpc_dictionary_set_BOOL(v5, "interfaceCompanionLink", [v4 interfaceCompanionLink]);
    xpc_dictionary_set_BOOL(v5, "usesChannels", [v4 flowUsesChannels]);
    xpc_dictionary_set_uint64(v5, "trafficClass", [v4 trafficClass]);
    xpc_dictionary_set_uint64(v5, "receiveBufferSize", [v4 receiveBufferSize]);
    xpc_dictionary_set_uint64(v5, "receiveBufferUsed", [v4 receiveBufferUsed]);
    attributedEntity = [v4 attributedEntity];
    uTF8String2 = [attributedEntity UTF8String];

    if (uTF8String2)
    {
      attributedEntity2 = [v4 attributedEntity];
      xpc_dictionary_set_string(v5, "attributedEntity", [attributedEntity2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "attributedEntityIsProcessName", [v4 attributedEntityIsProcessName]);
    xpc_dictionary_set_BOOL(v5, "attributedEntityIsBundleName", [v4 attributedEntityIsBundleName]);
    attributionReasonString = [v4 attributionReasonString];
    uTF8String3 = [attributionReasonString UTF8String];

    if (uTF8String3)
    {
      attributionReasonString2 = [v4 attributionReasonString];
      xpc_dictionary_set_string(v5, "attributionReason", [attributionReasonString2 UTF8String]);
    }

    delegateName = [v4 delegateName];
    uTF8String4 = [delegateName UTF8String];

    if (uTF8String4)
    {
      delegateName2 = [v4 delegateName];
      xpc_dictionary_set_string(v5, "delegateName", [delegateName2 UTF8String]);
    }

    processName = [v4 processName];
    uTF8String5 = [processName UTF8String];

    if (uTF8String5)
    {
      processName2 = [v4 processName];
      xpc_dictionary_set_string(v5, "processName", [processName2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "isDaemon", [v4 isADaemon]);
    xpc_dictionary_set_BOOL(v5, "isTracker", [v4 isTracker]);
    xpc_dictionary_set_BOOL(v5, "isNonAppInitiated", [v4 isNonAppInitiated]);
    xpc_dictionary_set_BOOL(v5, "appStateIsForeground", [v4 snapshotAppStateIsForeground]);
    xpc_dictionary_set_BOOL(v5, "startAppStateIsForeground", [v4 startAppStateIsForeground]);
    xpc_dictionary_set_BOOL(v5, "screenStateOn", [v4 snapshotScreenStateOn]);
    xpc_dictionary_set_BOOL(v5, "startScreenStateOn", [v4 startScreenStateOn]);
    xpc_dictionary_set_BOOL(v5, "uiBackgroundAudioCapable", [v4 uiBackgroundAudioCapable]);
    if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl())
    {
      domainName = [v4 domainName];
      uTF8String6 = [domainName UTF8String];

      if (uTF8String6)
      {
        domainName2 = [v4 domainName];
        xpc_dictionary_set_string(v5, "domainName", [domainName2 UTF8String]);
      }

      domainOwner = [v4 domainOwner];
      uTF8String7 = [domainOwner UTF8String];

      if (uTF8String7)
      {
        domainOwner2 = [v4 domainOwner];
        xpc_dictionary_set_string(v5, "domainOwner", [domainOwner2 UTF8String]);
      }

      domainTrackerContext = [v4 domainTrackerContext];
      uTF8String8 = [domainTrackerContext UTF8String];

      if (uTF8String8)
      {
        domainTrackerContext2 = [v4 domainTrackerContext];
        xpc_dictionary_set_string(v5, "domainTrackerContext", [domainTrackerContext2 UTF8String]);
      }

      domainAttributedBundleId = [v4 domainAttributedBundleId];
      uTF8String9 = [domainAttributedBundleId UTF8String];

      if (uTF8String9)
      {
        domainAttributedBundleId2 = [v4 domainAttributedBundleId];
        xpc_dictionary_set_string(v5, "domainAttributedBundleId", [domainAttributedBundleId2 UTF8String]);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v4;
      [v34 rttMinimum];
      xpc_dictionary_set_double(v5, "rttMinimum", v35);
      [v34 rttAverage];
      xpc_dictionary_set_double(v5, "rttAverage", v36);
      [v34 rttVariation];
      xpc_dictionary_set_double(v5, "rttVariation", v37);
      xpc_dictionary_set_uint64(v5, "rxDuplicateBytes", [v34 rxDuplicateBytes]);
      xpc_dictionary_set_uint64(v5, "rxOutOfOrderBytes", [v34 rxOutOfOrderBytes]);
      xpc_dictionary_set_uint64(v5, "txRetransmittedBytes", [v34 txRetransmittedBytes]);
      xpc_dictionary_set_uint64(v5, "sendBufferSize", [v34 sendBufferSize]);
      xpc_dictionary_set_uint64(v5, "sendBufferUsed", [v34 sendBufferUsed]);
      xpc_dictionary_set_uint64(v5, "txUnacked", [v34 txUnacked]);
      xpc_dictionary_set_uint64(v5, "txWindow", [v34 txWindow]);
      xpc_dictionary_set_uint64(v5, "txCongestionWindow", [v34 txCongestionWindow]);
      xpc_dictionary_set_uint64(v5, "trafficManagementFlags", [v34 trafficManagementFlags]);
      congestionAlgorithm = [v34 congestionAlgorithm];
      uTF8String10 = [congestionAlgorithm UTF8String];

      if (uTF8String10)
      {
        congestionAlgorithm2 = [v34 congestionAlgorithm];
        xpc_dictionary_set_string(v5, "congestionAlgorithm", [congestionAlgorithm2 UTF8String]);
      }

      xpc_dictionary_set_BOOL(v5, "probeActivated", [v34 probeActivated]);
      xpc_dictionary_set_BOOL(v5, "handshakeProbeFailed", [v34 connProbeFailed]);
      xpc_dictionary_set_BOOL(v5, "readProbeFailed", [v34 readProbeFailed]);
      xpc_dictionary_set_BOOL(v5, "writeProbeFailed", [v34 writeProbeFailed]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v4;
      [v41 rttMinimum];
      xpc_dictionary_set_double(v5, "rttMinimum", v42);
      [v41 rttAverage];
      xpc_dictionary_set_double(v5, "rttAverage", v43);
      [v41 rttVariation];
      xpc_dictionary_set_double(v5, "rttVariation", v44);
      xpc_dictionary_set_uint64(v5, "rxDuplicateBytes", [v41 rxDuplicateBytes]);
      xpc_dictionary_set_uint64(v5, "rxOutOfOrderBytes", [v41 rxOutOfOrderBytes]);
      txRetransmittedBytes = [v41 txRetransmittedBytes];

      xpc_dictionary_set_uint64(v5, "txRetransmittedBytes", txRetransmittedBytes);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v4;
      [v46 connDuration];
      xpc_dictionary_set_double(v5, "connectionDuration", v47);
      xpc_dictionary_set_BOOL(v5, "hasNetAccess", [v46 hasNetAccess]);
      currentProperties = [v46 currentProperties];
      v49 = currentProperties;
      if (currentProperties)
      {
        if ([currentProperties isSilent])
        {

LABEL_60:
          goto LABEL_61;
        }

        xpc_dictionary_set_BOOL(v5, "nw_isTracker", [v49 isTracker]);
        xpc_dictionary_set_BOOL(v5, "nw_isNonAppInitiated", [v49 isNonAppInitiated]);
        if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl())
        {
          domainName3 = [v49 domainName];
          uTF8String11 = [domainName3 UTF8String];

          if (uTF8String11)
          {
            domainName4 = [v49 domainName];
            xpc_dictionary_set_string(v5, "nw_domainName", [domainName4 UTF8String]);
          }

          domainOwner3 = [v49 domainOwner];
          uTF8String12 = [domainOwner3 UTF8String];

          if (uTF8String12)
          {
            domainOwner4 = [v49 domainOwner];
            xpc_dictionary_set_string(v5, "nw_domainOwner", [domainOwner4 UTF8String]);
          }

          domainTrackerContext3 = [v49 domainTrackerContext];
          uTF8String13 = [domainTrackerContext3 UTF8String];

          if (uTF8String13)
          {
            domainTrackerContext4 = [v49 domainTrackerContext];
            xpc_dictionary_set_string(v5, "nw_domainTrackerContext", [domainTrackerContext4 UTF8String]);
          }

          domainAttributedBundleId3 = [v49 domainAttributedBundleId];
          uTF8String14 = [domainAttributedBundleId3 UTF8String];

          if (uTF8String14)
          {
            domainAttributedBundleId4 = [v49 domainAttributedBundleId];
            xpc_dictionary_set_string(v5, "nw_domainAttributedBundleId", [domainAttributedBundleId4 UTF8String]);
          }
        }
      }
    }

    v64 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v65 = v64;
      v69 = 136315138;
      v70 = MEMORY[0x238389020](v5);
      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "Generated flow report: %s", &v69, 0xCu);
    }

    if (nw_activity_should_report_to_destination())
    {
      v66 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v69) = 0;
        _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEBUG, "Sending flow report to destination two", &v69, 2u);
      }

      analytics_send_event();
    }

    if (nw_activity_should_report_to_destination())
    {
      v67 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v69) = 0;
        _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Sending flow report to destination three", &v69, 2u);
      }

      SecTrustReportNetworkingAnalytics();
    }

    goto LABEL_60;
  }

LABEL_61:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)_handleSnapshot:(id)snapshot
{
  v220 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = snapshotCopy;
      if ([v5 isSubFlow])
      {
        v6 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v7 = v6;
          *buf = 134217984;
          *v191 = [v5 sourceIdentifier];
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "skip typical flow processing for subflow %lld", buf, 0xCu);
        }

        goto LABEL_223;
      }
    }

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(snapshotCopy, "sourceIdentifier")}];
    snapshotReason = [snapshotCopy snapshotReason];
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v191 = snapshotCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Flow data on entry is %@", buf, 0xCu);
    }

    v12 = [TrackedFlow flowForKey:v9];
    v13 = attributionLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (snapshotReason == 2)
      {
        v14 = "";
      }

      else
      {
        v14 = "not ";
      }

      v15 = +[TrackedFlow allActiveFlowsCount];
      sourceIdentifier = [snapshotCopy sourceIdentifier];
      *buf = 136316162;
      *v191 = v14;
      *&v191[8] = 2048;
      *&v191[10] = v15;
      v192 = 2048;
      v193 = *&sourceIdentifier;
      v194 = 2112;
      v195 = snapshotCopy;
      v196 = 2112;
      v197 = v12;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "flow is %sclosed. cache count %lu\nsrc %lld snapshot: %@\nflow: %@", buf, 0x34u);
    }

    if (!v12)
    {
      v20 = [TrackedFlow startTrackingForKey:v9];
      if (!v20)
      {
        v33 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v34 = v33;
          attributedEntity = [snapshotCopy attributedEntity];
          *buf = 138478083;
          *v191 = attributedEntity;
          *&v191[8] = 2112;
          *&v191[10] = v9;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Unable to create TrackedFlow for %{private}@ with flowKey %@", buf, 0x16u);
        }

        goto LABEL_222;
      }

      v12 = v20;
      v21 = +[TrackedFlow allActiveFlowsCount];
      v22 = v21;
      trackedFlowCountSincePrimaryInterfaceChanged = self->trackedFlowCountSincePrimaryInterfaceChanged;
      if (v21 < trackedFlowCountSincePrimaryInterfaceChanged || trackedFlowCountSincePrimaryInterfaceChanged == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v25 = v21 - trackedFlowCountSincePrimaryInterfaceChanged;
      }

      if (v25 >= 0x14E && !self->thunderingHerdFlowCountExceededThreshold)
      {
        mostRecentPrimaryRelay = self->_mostRecentPrimaryRelay;
        if (mostRecentPrimaryRelay)
        {
          v27 = 0.0;
          if ([(NetworkStateRelay *)mostRecentPrimaryRelay primary]&& [(NetworkStateRelay *)self->_mostRecentPrimaryRelay functionalInterfaceType]== 3)
          {
            madePrimaryDate = [(NetworkStateRelay *)self->_mostRecentPrimaryRelay madePrimaryDate];
            [madePrimaryDate timeIntervalSinceNow];
            v27 = -v29;
          }

          v30 = analyticsLogHandle;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *v191 = v25;
            *&v191[8] = 2048;
            *&v191[10] = 333;
            v192 = 2048;
            v193 = v27;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "%lu Exceeded lower TH system-wide flow count of %lu, %f seconds after the primary interface changed", buf, 0x20u);
          }

          if (v27 > 0.0 && v27 < 180.0)
          {
            self->thunderingHerdFlowCountExceededThreshold = 1;
            queue = [(AnalyticsEngineCore *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke;
            block[3] = &unk_27898AFE0;
            block[4] = self;
            block[5] = v25;
            dispatch_async(queue, block);
          }
        }
      }

      if (!self->flowCountExceededThreshold && v22 >= 0x3E9)
      {
        self->flowCountExceededThreshold = 1;
        queue2 = [(AnalyticsEngineCore *)self queue];
        v188[0] = MEMORY[0x277D85DD0];
        v188[1] = 3221225472;
        v188[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_2;
        v188[3] = &unk_27898AFE0;
        v188[4] = self;
        v188[5] = v22;
        dispatch_async(queue2, v188);
      }
    }

    if (([v12 flags] & 0x200) == 0 && (objc_msgSend(v12, "inheritEarlyProperties:", snapshotCopy) & 1) == 0 && snapshotReason != 2)
    {
      -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [snapshotCopy sourceIdentifier]);

LABEL_222:
      goto LABEL_223;
    }

    v183 = snapshotReason;
    ownerKey = [v12 ownerKey];
    if (!ownerKey)
    {
      ownerKey = [snapshotCopy attributedEntity];
      delegateName = [snapshotCopy delegateName];

      if (delegateName)
      {
        delegateName2 = [snapshotCopy delegateName];
        [AppTracker noteFlow:v12 withDelegatee:delegateName2 snapshot:snapshotCopy];
      }

      else if (v183 != 2)
      {
        goto LABEL_50;
      }

      [v12 setOwnerKey:ownerKey];
    }

LABEL_50:
    [AppTracker noteFlow:v12 withOwner:ownerKey snapshot:snapshotCopy];
    if ([snapshotCopy networkActivityMapStartTime])
    {
      [(FlowScrutinizer *)self->flowScrutinizer addActivityBitmapFromSnapshot:snapshotCopy];
    }

    if (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") && (([snapshotCopy interfaceCellular] & 1) != 0 || objc_msgSend(snapshotCopy, "rxCellularBytes") || objc_msgSend(snapshotCopy, "txCellularBytes")) && (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") == 2 || objc_msgSend(snapshotCopy, "snapshotReason") == 2) || -[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") && ((objc_msgSend(snapshotCopy, "interfaceWiFi") & 1) != 0 || objc_msgSend(snapshotCopy, "rxWiFiBytes") || objc_msgSend(snapshotCopy, "txWiFiBytes")) && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0 && (-[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") == 2 || objc_msgSend(snapshotCopy, "snapshotReason") == 2))
    {
      if ([snapshotCopy attributedEntityIsBundleName] && (objc_msgSend(snapshotCopy, "attributedEntity"), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
      {
        attributedEntity2 = [snapshotCopy attributedEntity];
        [snapshotCopy setUiBackgroundAudioCapable:{-[FlowAnalyticsEngine _bundleBackgroundAudioCapable:](self, "_bundleBackgroundAudioCapable:", attributedEntity2)}];
      }

      else
      {
        [snapshotCopy setUiBackgroundAudioCapable:0];
      }

      flowScrutinizer = self->flowScrutinizer;
      classification = [v12 classification];
      [(FlowScrutinizer *)flowScrutinizer scrutinizeFlow:snapshotCopy withClassification:classification];
    }

    v182 = v9;
    if ([snapshotCopy failedConsistencyChecks])
    {
      if ([snapshotCopy failedNegativeDeltaCheck])
      {
        v40 = 405528;
        goto LABEL_77;
      }

      if ([snapshotCopy failedRxCountCheck])
      {
        v40 = 405529;
        goto LABEL_77;
      }

      if ([snapshotCopy failedSkywalkAction])
      {
        v40 = 405530;
LABEL_77:
        flags = [v12 flags];
        v42 = analyticsLogHandle;
        v43 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
        if ((flags & 0x2000) != 0)
        {
          if (v43)
          {
            v50 = v42;
            sourceIdentifier2 = [snapshotCopy sourceIdentifier];
            *buf = 134217984;
            *v191 = sourceIdentifier2;
            _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, suppress duplicate reports on flow %lld", buf, 0xCu);
          }
        }

        else
        {
          if (v43)
          {
            v44 = v42;
            sourceIdentifier3 = [snapshotCopy sourceIdentifier];
            *buf = 67109376;
            *v191 = v40;
            *&v191[4] = 2048;
            *&v191[6] = sourceIdentifier3;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, report symptom %x to ABC for flow %lld", buf, 0x12u);
          }

          -[FlowAnalyticsEngine _generateFlowAnomalySymptom:currentUsage:snapshot:](self, "_generateFlowAnomalySymptom:currentUsage:snapshot:", v40, [snapshotCopy txWiredBytes] + objc_msgSend(snapshotCopy, "rxWiredBytes") + objc_msgSend(snapshotCopy, "rxCellularBytes") + objc_msgSend(snapshotCopy, "txCellularBytes") + objc_msgSend(snapshotCopy, "rxWiFiBytes") + objc_msgSend(snapshotCopy, "txWiFiBytes"), snapshotCopy);
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          if (v183 != 2)
          {
            -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [snapshotCopy sourceIdentifier]);
          }
        }

        goto LABEL_221;
      }
    }

    rxBytes = [snapshotCopy rxBytes];
    txBytes = [snapshotCopy txBytes];
    if (([snapshotCopy interfaceCompanionLink] & 1) != 0 || -[FlowAnalyticsEngine _snapshotUsesCompanion:](self, "_snapshotUsesCompanion:", snapshotCopy))
    {
      [snapshotCopy hasCellTraffic];
    }

    v181 = ownerKey;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v46 = snapshotCopy;
      rxDuplicateBytes = [v46 rxDuplicateBytes];
      rxOutOfOrderBytes = [v46 rxOutOfOrderBytes];
      txRetransmittedBytes = [v46 txRetransmittedBytes];
      [v46 deltaRxDuplicateBytes];
      [v46 deltaRxOutOfOrderBytes];
      [v46 deltaTxRetransmittedBytes];
      txUnacked = [v46 txUnacked];
      probeActivated = [v46 probeActivated];
      connProbeFailed = [v46 connProbeFailed];
      readProbeFailed = [v46 readProbeFailed];
      log = [v46 writeProbeFailed];

      v148 = rxDuplicateBytes;
      v151 = rxOutOfOrderBytes;
      v154 = txRetransmittedBytes;
    }

    else
    {
      txUnacked = 0;
      log = 0;
      readProbeFailed = 0;
      connProbeFailed = 0;
      probeActivated = 0;
      v151 = 0;
      v154 = 0;
      v148 = 0;
    }

    deltaAccountingRxWiredBytes = [snapshotCopy deltaAccountingRxWiredBytes];
    deltaAccountingTxWiredBytes = [snapshotCopy deltaAccountingTxWiredBytes];
    deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
    deltaAccountingTxCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
    deltaAccountingRxWiFiBytes = [snapshotCopy deltaAccountingRxWiFiBytes];
    deltaAccountingTxWiFiBytes = [snapshotCopy deltaAccountingTxWiFiBytes];
    deltaAccountingRxCompanionLinkBluetoothBytes = [snapshotCopy deltaAccountingRxCompanionLinkBluetoothBytes];
    deltaAccountingTxCompanionLinkBluetoothBytes = [snapshotCopy deltaAccountingTxCompanionLinkBluetoothBytes];
    v179 = deltaAccountingRxWiFiBytes;
    v60 = deltaAccountingRxWiFiBytes | deltaAccountingTxWiFiBytes;
    v61 = deltaAccountingTxWiFiBytes;
    v62 = v60 != 0;
    *&v144 = deltaAccountingTxCompanionLinkBluetoothBytes;
    *(&v144 + 1) = deltaAccountingRxCompanionLinkBluetoothBytes;
    v146 = (v60 | deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes | deltaAccountingRxWiredBytes | deltaAccountingTxWiredBytes | deltaAccountingRxCompanionLinkBluetoothBytes | deltaAccountingTxCompanionLinkBluetoothBytes) != 0;
    interfaceExpensive = [snapshotCopy interfaceExpensive];
    if ((([snapshotCopy snapshotAppStateIsForeground] & 1) != 0 || objc_msgSend(snapshotCopy, "startAppStateIsForeground")) && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0 && (deltaAccountingRxCellularBytes || v179 | deltaAccountingTxCellularBytes || v61))
    {
      [TrackedFlow foregroundNonLocalUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes + v179 + v61];
      v64 = outrankLogHandle;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [snapshotCopy flowDuration];
        *buf = 138413570;
        *v191 = v181;
        *&v191[8] = 2048;
        *&v191[10] = v65;
        v192 = 2048;
        v193 = *&deltaAccountingRxCellularBytes;
        v194 = 2048;
        v195 = deltaAccountingTxCellularBytes;
        v196 = 2048;
        v197 = v179;
        v198 = 2048;
        v199 = v61;
        _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEBUG, "FAE foregroundNonLocalUsage note %@ flow duration %f for cell rx %lld tx %lld wifi rx %lld tx %lld", buf, 0x3Eu);
      }
    }

    if ([snapshotCopy interfaceCellularViaPreferredFallback])
    {
      [TrackedFlow reverseRnfUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
    }

    if (v62 && ([snapshotCopy hasLocalDestination] & 1) == 0)
    {
      [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:v61 + v179];
    }

    if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
    {
      [TrackedFlow cellUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      if (interfaceExpensive)
      {
        [TrackedFlow cellExpensiveUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      }
    }

    v142 = interfaceExpensive;
    if ([snapshotCopy interfaceCellularViaFallback] && (objc_msgSend(v12, "isForcedNonRNF") & 1) == 0)
    {
      v145 = 1;
      [v12 setIsRNF:1];
      [TrackedFlow rnfUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      v66 = deltaAccountingTxCellularBytes;
      v67 = deltaAccountingRxCellularBytes;
      if (interfaceExpensive)
      {
        [TrackedFlow rnfExpensiveUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
        v145 = 1;
        v66 = deltaAccountingTxCellularBytes;
        v67 = deltaAccountingRxCellularBytes;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v145 = 0;
    }

    v138 = v67;
    v140 = v66;
    v68 = txBytes + rxBytes;
    rxCellularBytes = [snapshotCopy rxCellularBytes];
    v178 = [snapshotCopy txCellularBytes] + rxCellularBytes;
    if (v178 > 0x100000)
    {
      -[FlowAnalyticsEngine _checkCellExcessUsageActions:previous:snapshot:](self, "_checkCellExcessUsageActions:previous:snapshot:", v178, v178 - ([snapshotCopy deltaAccountingRxCellularBytes] + objc_msgSend(snapshotCopy, "deltaAccountingTxCellularBytes")), snapshotCopy);
    }

    v70 = v62;
    [v12 setRxWiFiBytes:{objc_msgSend(snapshotCopy, "rxWiFiBytes")}];
    [v12 setTxWiFiBytes:{objc_msgSend(snapshotCopy, "txWiFiBytes")}];
    [v12 setRxDupeBytes:v148];
    [v12 setRxOOOBytes:v151];
    [v12 setTxReTxBytes:v154];
    [v12 setTxUnacked:txUnacked];
    [v12 setRxPkts:{objc_msgSend(snapshotCopy, "rxPackets")}];
    [v12 setTxPkts:{objc_msgSend(snapshotCopy, "txPackets")}];
    [v12 setProbedFlow:probeActivated];
    [v12 setProbed3WHSStuckFlow:connProbeFailed];
    [v12 setProbedReadStuckFlow:readProbeFailed];
    [v12 setProbedWriteStuckFlow:log];
    if (v183 == 2)
    {
      [NetworkAnalyticsEngine didReceiveProtocolSnapshot:snapshotCopy];
      v71 = v68;
      v175 = v68 > 0x3200000;
      ownerKey = v181;
      if ([(FlowAnalyticsEngine *)self _shouldSendStatisticsReport:snapshotCopy])
      {
        queue3 = [(AnalyticsEngineCore *)self queue];
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_306;
        v186[3] = &unk_27898A7D0;
        v186[4] = self;
        v187 = snapshotCopy;
        dispatch_async(queue3, v186);
      }

      if (self->repeatedConnFailureDetector)
      {
        if (![snapshotCopy rxBytes])
        {
          [snapshotCopy flowDuration];
          if (v73 > 1.0)
          {
            if ([snapshotCopy isADaemon])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(RepeatedConnFailureDetector *)self->repeatedConnFailureDetector noteSuspectFlow:snapshotCopy withOwner:v181];
              }
            }
          }
        }
      }

      if (!v71)
      {
        goto LABEL_221;
      }

      v68 = v71;
      if (self->appTrackingEnabled && v181 && self->endpointTrackingEnabled && [snapshotCopy attributedEntityIsBundleName] && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0)
      {
        [(FlowAnalyticsEngine *)self endpointMaintenanceOnClose:snapshotCopy];
      }
    }

    else
    {
      v175 = 0;
      ownerKey = v181;
    }

    if (v146)
    {
      v74 = v179;
      if (!v70)
      {
        v74 = 0;
      }

      v166 = v61;
      if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
      {
        v75 = deltaAccountingTxCellularBytes;
      }

      else
      {
        v75 = v61;
      }

      if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
      {
        v76 = deltaAccountingRxCellularBytes;
      }

      else
      {
        v76 = v74;
      }

      v137 = v68;
      if (v76 | v75)
      {
        greenTeaLogger = self->_greenTeaLogger;
        v78 = getCTGreenTeaOsLogHandle();
        v79 = v78;
        if (v78)
        {
          loga = v78;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v80 = "WiFi";
            if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
            {
              v80 = "Cell";
            }

            v162 = v80;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v82 = "UDP";
            if (isKindOfClass)
            {
              v82 = "TCP";
            }

            v152 = v82;
            processName = [snapshotCopy processName];
            attributedEntity3 = [snapshotCopy attributedEntity];
            localAddress = [snapshotCopy localAddress];
            v83 = sockAddrToString(localAddress);
            remoteAddress = [snapshotCopy remoteAddress];
            v84 = sockAddrToString(remoteAddress);
            *buf = 136316930;
            *v191 = v162;
            *&v191[8] = 2080;
            *&v191[10] = v152;
            v192 = 2048;
            v193 = *&v75;
            v194 = 2048;
            v195 = v76;
            v196 = 2114;
            v197 = processName;
            v198 = 2114;
            v199 = attributedEntity3;
            v200 = 2114;
            v201 = v83;
            v202 = 2114;
            v203 = v84;
            _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_INFO, "%s %s bytes transmitted: %llu, bytes received: %llu, process name: %{public}@, bundle id: %{public}@ local address: %{public}@ remote address: %{public}@", buf, 0x52u);

            ownerKey = v181;
          }
        }
      }

      if ([snapshotCopy attributedEntityIsProcessName])
      {
        attributedEntity4 = [snapshotCopy attributedEntity];
      }

      else
      {
        attributedEntity4 = 0;
      }

      if ([snapshotCopy attributedEntityIsBundleName])
      {
        attributedEntity5 = [snapshotCopy attributedEntity];
      }

      else
      {
        attributedEntity5 = 0;
      }

      attributedExtension = [snapshotCopy attributedExtension];
      v88 = [(FlowAnalyticsEngine *)self _processFetchForName:attributedEntity4 bundle:attributedEntity5 extension:attributedExtension shouldFillMiss:1];

      logb = v88;
      if (v88)
      {
        v170 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v88];
        if (v170)
        {
          v159 = attributedEntity5;
          v163 = attributedEntity4;
          interfaceAWDL = [snapshotCopy interfaceAWDL];
          if (interfaceAWDL)
          {
            v90 = 0;
          }

          else
          {
            v90 = v166;
          }

          if (interfaceAWDL)
          {
            v91 = 0;
          }

          else
          {
            v91 = v179;
          }

          if (interfaceAWDL)
          {
            v92 = v166;
          }

          else
          {
            v92 = 0;
          }

          if (interfaceAWDL)
          {
            v93 = v179;
          }

          else
          {
            v93 = 0;
          }

          v94 = v175;
          v95 = v183;
          v167 = v93;
          v153 = v91;
          v156 = v90;
          if ((v145 & v175) == 1 && v137 >= 0x1F400001)
          {
            date = [MEMORY[0x277CBEAA8] date];
            startingTimestamp = [v12 startingTimestamp];
            [date timeIntervalSinceDate:startingTimestamp];

            internal_symptom_new(405510);
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            attributedEntity6 = [snapshotCopy attributedEntity];
            v99 = attributedEntity6;
            if (attributedEntity6)
            {
              strlen([attributedEntity6 UTF8String]);
              v95 = v183;
              internal_symptom_set_additional_qualifier();
            }

            internal_symptom_send();

            v88 = logb;
            v93 = v167;
            v94 = v175;
            v91 = v153;
            v90 = v156;
          }

          BYTE1(v136) = v142;
          LOBYTE(v136) = v94;
          v150 = v92;
          BYTE2(v136) = v95 == 2;
          [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v170 wifiOut:v91 cellIn:v90 cellOut:deltaAccountingRxCellularBytes wiredIn:deltaAccountingTxCellularBytes wiredOut:v93 btIn:v92 btOut:*(&v144 + 1) xIn:v144 xOut:v138 isJumboFlow:v140 isExpensive:v136 closing:?];
          date2 = [MEMORY[0x277CBEAA8] date];
          [v88 setTimeStamp:date2];

          sourceIdentifier4 = [snapshotCopy sourceIdentifier];
          delegateName3 = [snapshotCopy delegateName];
          attributedExtension2 = [snapshotCopy attributedExtension];
          if (delegateName3)
          {
            v101 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (delegation: %@)", delegateName3];
          }

          else
          {
            v101 = &stru_2847966D8;
          }

          if (attributedExtension2)
          {
            name = [v88 name];
            if ([name isEqualToString:attributedExtension2])
            {

              v102 = &stru_2847966D8;
            }

            else
            {
              v110 = [v101 isEqualToString:attributedExtension2];

              if (v110)
              {
                v102 = &stru_2847966D8;
              }

              else
              {
                v102 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (attrExtn: %@)", attributedExtension2];
              }

              v88 = logb;
            }
          }

          else
          {
            v102 = &stru_2847966D8;
          }

          v111 = analyticsLogHandle;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v88 name];
            if ([snapshotCopy attributionReason] == 4)
            {
              v113 = @"(viaNEHelper)";
            }

            else
            {
              v113 = &stru_2847966D8;
            }

            wifiIN = [v170 wifiIN];
            wifiOUT = [v170 wifiOUT];
            wwanIN = [v170 wwanIN];
            wwanOUT = [v170 wwanOUT];
            v143 = [v170 tag];
            [snapshotCopy flowDuration];
            *buf = 138416130;
            *v191 = name2;
            *&v191[8] = 2112;
            *&v191[10] = v113;
            v88 = logb;
            v192 = 2112;
            v193 = *&v101;
            v194 = 2112;
            v195 = v102;
            v196 = 2048;
            v197 = sourceIdentifier4;
            v198 = 2112;
            v199 = wifiIN;
            v200 = 2112;
            v201 = wifiOUT;
            v202 = 2048;
            v203 = v153;
            v204 = 2048;
            v205 = v156;
            v206 = 2112;
            v207 = wwanIN;
            v208 = 2112;
            v209 = wwanOUT;
            v210 = 2048;
            v211 = deltaAccountingRxCellularBytes;
            v212 = 2048;
            v213 = deltaAccountingTxCellularBytes;
            v214 = 1024;
            v215 = v145;
            v216 = 2112;
            v217 = v143;
            v218 = 2048;
            v219 = v115;
            _os_log_impl(&dword_23255B000, v111, OS_LOG_TYPE_DEFAULT, "Data Usage for %@%@%@%@ on flow %llu - WiFi in/out: %@/%@, WiFi delta_in/delta_out: %lld/%lld, Cell in/out: %@/%@, Cell delta_in/delta_out: %lld/%lld, RNF: %d, subscriber tag: %@, total duration: %.3f", buf, 0x9Eu);
          }

          v103 = v101;
          if (v144 != 0)
          {
            v116 = analyticsLogHandle;
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              name3 = [v88 name];
              btIN = [v170 btIN];
              btOUT = [v170 btOUT];
              [snapshotCopy flowDuration];
              *buf = 138414338;
              *v191 = name3;
              *&v191[8] = 2112;
              *&v191[10] = v101;
              v192 = 2112;
              v193 = *&v102;
              v194 = 2048;
              v195 = sourceIdentifier4;
              v196 = 2112;
              v197 = btIN;
              v198 = 2112;
              v199 = btOUT;
              v200 = 2048;
              v201 = *(&v144 + 1);
              v202 = 2048;
              v203 = v144;
              v204 = 2048;
              v205 = v120;
              _os_log_impl(&dword_23255B000, v116, OS_LOG_TYPE_DEFAULT, "Bluetooth Data Usage for %@%@%@ on flow %llu - in/out: %@/%@,  delta_in/delta_out: %lld/%lld, total duration: %.3f", buf, 0x5Cu);

              v88 = logb;
            }
          }

          v121 = analyticsLogHandle;
          if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
          {
            name4 = [v88 name];
            wiredIN = [v170 wiredIN];
            wiredOUT = [v170 wiredOUT];
            v125 = [v170 tag];
            [snapshotCopy flowDuration];
            *buf = 138414594;
            *v191 = name4;
            *&v191[8] = 2112;
            *&v191[10] = v101;
            v192 = 2112;
            v193 = *&v102;
            v194 = 2048;
            v195 = sourceIdentifier4;
            v196 = 2112;
            v197 = wiredIN;
            v198 = 2112;
            v199 = wiredOUT;
            v200 = 2048;
            v201 = v167;
            v202 = 2048;
            v203 = v150;
            v204 = 2112;
            v205 = v125;
            v206 = 2048;
            v207 = v126;
            _os_log_impl(&dword_23255B000, v121, OS_LOG_TYPE_DEBUG, "Data Usage for %@%@%@ on flow %llu - Wired in/out: %@/%@, Wired delta_in/delta_out: %lld/%lld, subscriber tag: %@, total duration: %.3f", buf, 0x66u);

            v88 = logb;
          }

          ownerKey = v181;
          attributedEntity5 = v159;
          attributedEntity4 = v163;
        }

        else
        {
          v103 = evaluationLogHandle;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v160 = attributedEntity5;
            v104 = [v88 description];
            uTF8String = [v104 UTF8String];
            ctShim = self->ctShim;
            v164 = attributedEntity4;
            if (ctShim)
            {
              attributedExtension = [(CoreTelephonyShim *)ctShim currentSubscriberTag];
              if (attributedExtension)
              {
                currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                v108 = 1;
              }

              else
              {
                v108 = 0;
                currentSubscriberTag = &unk_2847EF6C8;
              }
            }

            else
            {
              v108 = 0;
              currentSubscriberTag = &unk_2847EF6C8;
            }

            *buf = 136315394;
            *v191 = uTF8String;
            *&v191[8] = 2112;
            *&v191[10] = currentSubscriberTag;
            _os_log_impl(&dword_23255B000, v103, OS_LOG_TYPE_DEFAULT, "Can't find liveusage for %s with subscriber tag: %@", buf, 0x16u);
            if (v108)
            {
            }

            ownerKey = v181;
            if (ctShim)
            {
            }

            attributedEntity5 = v160;
            attributedEntity4 = v164;
            v88 = logb;
          }
        }
      }

      if (v178)
      {
        v127 = attributedEntity5;
        interfaceIndex = [snapshotCopy interfaceIndex];
        v185[0] = MEMORY[0x277D85DD0];
        v185[1] = 3221225472;
        v185[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_323;
        v185[3] = &unk_27898A0C8;
        v185[4] = self;
        v129 = v185;
        if (_handleSnapshot__onceToken != -1)
        {
          dispatch_once(&_handleSnapshot__onceToken, v129);
        }

        if (self->_pdpLastUsedInterfaceIndex != interfaceIndex)
        {
          pdpMonitoredInterfaces = self->_pdpMonitoredInterfaces;
          v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:interfaceIndex];
          LOBYTE(pdpMonitoredInterfaces) = [(NSMutableSet *)pdpMonitoredInterfaces containsObject:v131];

          if (pdpMonitoredInterfaces)
          {
            self->_pdpLastUsedInterfaceIndex = interfaceIndex;
            v132 = flowLogHandle;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
            {
              pdpLastUsedInterfaceIndex = self->_pdpLastUsedInterfaceIndex;
              *buf = 67109376;
              *v191 = interfaceIndex;
              *&v191[4] = 1024;
              *&v191[6] = pdpLastUsedInterfaceIndex;
              _os_log_impl(&dword_23255B000, v132, OS_LOG_TYPE_INFO, "Already monitoring %d; updated last used pdp interface to %d", buf, 0xEu);
            }
          }

          else
          {
            v135 = flowLogHandle;
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109376;
              *v191 = interfaceIndex;
              *&v191[4] = 2048;
              *&v191[6] = v178;
              _os_log_impl(&dword_23255B000, v135, OS_LOG_TYPE_DEBUG, "Incoming (presumed) cellular interface index %d is not monitored (usage: %ld)", buf, 0x12u);
            }

            [(FlowAnalyticsEngine *)self _updateKnownCellularInterfaceIndexList:0 force:?];
            [(FlowAnalyticsEngine *)self _enableThresholdMonitoringForCellularInterface:interfaceIndex];
          }
        }

        ownerKey = v181;
        attributedEntity5 = v127;
        v88 = logb;
      }
    }

LABEL_221:

    v9 = v182;
    goto LABEL_222;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "no flow data", buf, 2u);
  }

LABEL_223:

  v134 = *MEMORY[0x277D85DE8];
}

uint64_t __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_323(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;

  return MEMORY[0x2821F96F8](v5, v7);
}

- (BOOL)_shouldProcessDomainInfoForBundleID:(id)d implicit:(id *)implicit knownToLaunchServices:(BOOL *)services ignoredInLaunchServices:(BOOL *)launchServices isWebBrowser:(BOOL *)browser
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = [LaunchServicesUtilities implicitlyAssumedIdentityEntitlementForBundleIdentifier:dCopy];
  v13 = v12;
  if (browser)
  {
    *browser = [v12 isWebBrowser];
  }

  type = [v13 type];
  v15 = 1;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 2)
      {
        *implicit = [v13 impliedBundleID];
        v20 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          v21 = *implicit;
          v24 = 138478083;
          v25 = v21;
          v26 = 2113;
          type2 = dCopy;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Using implied identity %{private}@ for %{private}@, entitlement type is 'bundleID'", &v24, 0x16u);
        }
      }
    }

    else
    {
      v23 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v24 = 138477827;
        v25 = dCopy;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Found unexpected 'type' in entitlement for %{private}@", &v24, 0xCu);
      }

      v15 = 1;
    }
  }

  else
  {
    if ((type - 3) >= 4)
    {
      if (type != 7)
      {
        goto LABEL_10;
      }

      if (services)
      {
        *services = 0;
      }

      v22 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138477827;
        v25 = dCopy;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, not known to LaunchServices", &v24, 0xCu);
      }
    }

    else
    {
      if (launchServices)
      {
        *launchServices = 1;
      }

      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v24 = 138478083;
        v25 = dCopy;
        v26 = 2048;
        type2 = [v13 type];
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, ignored in LaunchServices, type %lu", &v24, 0x16u);
      }
    }

    v15 = 0;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_handleSnapshotForDomains:(id)domains
{
  v114 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  if (([domainsCopy isSilent] & 1) == 0 && self->appTrackingEnabled)
  {
    v103 = 1;
    v102 = 0;
    v101 = 0;
    domainAttributedBundleId = [domainsCopy domainAttributedBundleId];

    if (domainAttributedBundleId)
    {
      domainAttributedBundleId2 = [domainsCopy domainAttributedBundleId];
LABEL_5:
      v7 = domainAttributedBundleId2;
      processName = [domainsCopy processName];
      if ([processName isEqualToString:@"mDNSResponder"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"terminusd"))
      {

LABEL_22:
        v11 = 0;
        goto LABEL_23;
      }

      v100 = 0;
      v10 = [(FlowAnalyticsEngine *)self _shouldProcessDomainInfoForBundleID:v7 implicit:&v100 knownToLaunchServices:&v103 ignoredInLaunchServices:&v102 isWebBrowser:&v101];
      v11 = v100;

      if (!v10)
      {
LABEL_23:

        goto LABEL_24;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(domainsCopy, "sourceIdentifier")}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = domainsCopy;
          v25 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          if (v25 && (v26 = v25, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 BOOLValue], v27, v26, (v28 & 1) != 0))
          {
            v18 = v24;
          }

          else
          {
            v18 = v24;
            remoteAddress = [(__CFString *)v24 remoteAddress];
            bytes = [remoteAddress bytes];

            if (!bytes || !*(bytes + 2) || is_directly_reachable_address(bytes))
            {
              remoteAddress2 = [(__CFString *)v24 remoteAddress];
              v97 = 0;
              v57 = validateSockAddrToString(remoteAddress2, 0, &v97);
              v49 = v97;

              if (v57)
              {
                v58 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  v105 = v49;
                  _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEFAULT, "Local flow (conn) to %{private}@ via reachability, will drop", buf, 0xCu);
                }
              }

              v13 = 0;
              goto LABEL_106;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v13 = 0;
LABEL_31:
        if (v11)
        {
          v29 = v11;
        }

        else
        {
          v29 = v7;
        }

        v30 = v29;
        v31 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:v30 shouldFillMiss:1];
        v32 = v31;
        v96 = v12;
        if (!v31)
        {
          v43 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v105 = v30;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Process is nil for %{private}@", buf, 0xCu);
          }

          goto LABEL_105;
        }

        if (![v31 isApp])
        {
          v44 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v105 = v30;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Process is not SFApp for %{private}@, triggering an ABC case", buf, 0xCu);
          }

          v41 = +[NetDomainsHandler sharedInstance];
          [v41 triggerAutoBugCaptureCaseForType:@"ProcessNotSFApp" subType:0 privateSubtypeContext:0 detectedProcess:v30 events:0 thresholdValuesString:0];
          goto LABEL_49;
        }

        v94 = v13;
        v33 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];

        if (!v33)
        {
          [(NSMutableDictionary *)self->trackedSourceIDs setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v12];
        }

        v34 = domainTrackingLogHandle;
        v95 = v18;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v35 = v34;
          domainAttributedBundleId3 = [domainsCopy domainAttributedBundleId];
          attributedEntity = [domainsCopy attributedEntity];
          *buf = 138478851;
          v105 = v30;
          v106 = 2113;
          v107 = v11;
          v108 = 2113;
          v109 = v7;
          v110 = 2113;
          v111 = domainAttributedBundleId3;
          v112 = 2113;
          v113 = attributedEntity;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "Proceed with privacy accounting by attributing to: %{private}@ (implicitIdentity: %{private}@, attributed: %{private}@, domainAttributedBundleId: %{private}@, attributedEntity: %{private}@)", buf, 0x34u);

          v18 = v95;
        }

        v13 = v94;
        if (v94)
        {
          v38 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          bOOLValue = [v38 BOOLValue];

          if (bOOLValue)
          {
            v40 = domainTrackingLogHandle;
            v18 = v95;
            if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
LABEL_105:

              v49 = 0;
              v12 = v96;
              goto LABEL_106;
            }

            v41 = v40;
            domainDescription = [v94 domainDescription];
            *buf = 138477827;
            v105 = domainDescription;
            _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "FlowSnapshot: %{private}@, already processed domain info", buf, 0xCu);

            v18 = v95;
LABEL_49:

            goto LABEL_105;
          }

          flowuuid = [v94 flowuuid];
          v93 = flowuuid;
          if (flowuuid)
          {
            v18 = v95;
            if ([(FlowAnalyticsEngine *)self isSnapshotFlowUUIDStored:flowuuid])
            {
              [(NSMutableDictionary *)self->trackedSourceIDs setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
              v68 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v105 = v93;
                _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_DEFAULT, "FlowSnapshot: fuuid %@ present in an earlier ConnSnapshot, ignoring", buf, 0xCu);
              }

              goto LABEL_104;
            }

            domainName = [v94 domainName];
            if (domainName)
            {
            }

            else
            {
              remoteAddress3 = [v94 remoteAddress];

              if (!remoteAddress3)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            v80 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
              domainDescription2 = [v94 domainDescription];
              *buf = 138477827;
              v105 = domainDescription2;
              v83 = "FlowSnapshot: %{private}@, will process domain info";
LABEL_102:
              _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_DEFAULT, v83, buf, 0xCu);

              goto LABEL_103;
            }

            goto LABEL_103;
          }

          v18 = v95;
          if ([v94 snapshotReason] == 2)
          {
            domainName2 = [v94 domainName];
            if (domainName2)
            {

              goto LABEL_100;
            }

            remoteAddress4 = [v94 remoteAddress];

            if (remoteAddress4)
            {
LABEL_100:
              v85 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v81 = v85;
                domainDescription2 = [v94 domainDescription];
                *buf = 138477827;
                v105 = domainDescription2;
                v83 = "FlowSnapshot: %{private}@, will process domain info for flow closing with nil fuuid";
                goto LABEL_102;
              }

LABEL_103:
              v86 = MEMORY[0x277CCABB0];
              v13 = v94;
              remoteAddress5 = [v94 remoteAddress];
              v88 = [v86 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v94, v32, v30, remoteAddress5, v101)}];
              [(NSMutableDictionary *)self->trackedSourceIDs setObject:v88 forKeyedSubscript:v12];

              v18 = v95;
              goto LABEL_104;
            }
          }

          v89 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v90 = v89;
            domainDescription3 = [v94 domainDescription];
            *buf = 138477827;
            v105 = domainDescription3;
            _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_DEFAULT, "FlowSnapshot: %{private}@, waiting to process domain info until flow closing with nil fuuid", buf, 0xCu);

            v18 = v95;
          }

          goto LABEL_104;
        }

        if (!v18)
        {
          goto LABEL_105;
        }

        flowuuid2 = [(__CFString *)v18 flowuuid];
        v63 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
        if ([v63 BOOLValue])
        {

LABEL_72:
          if (-[__CFString snapshotReason](v18, "snapshotReason") == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 BOOLValue], v64, v65))
          {
            [(FlowAnalyticsEngine *)self removeSnapshotFlowUUIDsForSourceKey:v12];
            v13 = 0;
            v66 = flowuuid2;
          }

          else
          {
            v13 = 0;
            v66 = flowuuid2;
            if (flowuuid2)
            {
              [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:flowuuid2 forSourceKey:v96];
            }
          }

LABEL_95:

          v18 = v95;
          goto LABEL_105;
        }

        domainName3 = [(__CFString *)v18 domainName];
        if (domainName3)
        {
        }

        else
        {
          remoteAddress6 = [(__CFString *)v18 remoteAddress];

          if (!remoteAddress6)
          {
            goto LABEL_72;
          }
        }

        v73 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v105 = v18;
          _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_DEFAULT, "ConnSnapshot: %{private}@, will process domain info", buf, 0xCu);
        }

        v66 = flowuuid2;
        if (flowuuid2 && [(__CFString *)v18 snapshotReason]!= 2)
        {
          [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:flowuuid2 forSourceKey:v96];
        }

        v74 = MEMORY[0x277CCABB0];
        remoteAddress7 = [(__CFString *)v18 remoteAddress];
        v76 = v18;
        v77 = remoteAddress7;
        v78 = [v74 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v76, v32, v30, remoteAddress7, v101)}];
        [(NSMutableDictionary *)self->trackedSourceIDs setObject:v78 forKeyedSubscript:v96];

        v13 = 0;
        goto LABEL_95;
      }

      v13 = domainsCopy;
      v14 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
      if (v14 && (v15 = v14, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, (v17 & 1) != 0) || (objc_msgSend(v13, "hasNonLocalDestination") & 1) != 0)
      {
LABEL_16:
        v18 = 0;
        goto LABEL_31;
      }

      hasLocalDestination = [v13 hasLocalDestination];
      remoteAddress8 = [v13 remoteAddress];
      v47 = remoteAddress8;
      if (hasLocalDestination)
      {
        v99 = 0;
        v48 = validateSockAddrToString(remoteAddress8, 0, &v99);
        v49 = v99;

        if (!v48)
        {
          goto LABEL_68;
        }

        v50 = domainTrackingLogHandle;
        if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_68;
        }

        *buf = 138477827;
        v105 = v49;
        v51 = "Local flow to %{private}@ via hasLocalDestination, will drop";
        v52 = v50;
        v53 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        bytes2 = [remoteAddress8 bytes];

        if (bytes2 && *(bytes2 + 2) && !is_directly_reachable_address(bytes2))
        {
          goto LABEL_16;
        }

        remoteAddress9 = [v13 remoteAddress];
        v98 = 0;
        v61 = validateSockAddrToString(remoteAddress9, 0, &v98);
        v49 = v98;

        if (!v61 || (v62 = domainTrackingLogHandle, !os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO)))
        {
LABEL_68:
          v18 = 0;
LABEL_106:

          goto LABEL_23;
        }

        *buf = 138477827;
        v105 = v49;
        v51 = "Local flow to %{private}@ via reachability, will drop";
        v52 = v62;
        v53 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_23255B000, v52, v53, v51, buf, 0xCu);
      goto LABEL_68;
    }

    attributedEntity2 = [domainsCopy attributedEntity];

    if (attributedEntity2)
    {
      if ([domainsCopy attributedEntityIsBundleName])
      {
        domainAttributedBundleId2 = [domainsCopy attributedEntity];
        goto LABEL_5;
      }

      v20 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = v20;
        attributedEntity3 = [domainsCopy attributedEntity];
        *buf = 138478083;
        v105 = attributedEntity3;
        v106 = 1024;
        LODWORD(v107) = [domainsCopy attributionReason];
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, attributionReason %d", buf, 0x12u);
      }
    }

    else
    {
      v19 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting, no attribution", buf, 2u);
      }
    }

    v7 = 0;
    goto LABEL_22;
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_didReceiveSnapshot:(id)snapshot
{
  v17 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = snapshotCopy;
    [(FlowAnalyticsEngine *)self _handleSnapshot:v5];
    [(FlowAnalyticsEngine *)self _handleSnapshotForDomains:v5];
    if ([v5 snapshotReason] == 2)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
      [TrackedFlow removeTrackingForKey:v6 fromSnapshot:v5];
LABEL_7:
      v7 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v6];
      bOOLValue = [v7 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        [(FlowAnalyticsEngine *)self _evalDomainTrackingDropOf:v5];
      }

      v9 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v6];

      if (v9)
      {
        [(NSMutableDictionary *)self->trackedSourceIDs setObject:0 forKeyedSubscript:v6];
      }

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = snapshotCopy;
    [(FlowAnalyticsEngine *)self _handleSnapshotForDomains:v5];
    if ([v5 snapshotReason] == 2)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
      goto LABEL_7;
    }

LABEL_12:

    goto LABEL_13;
  }

  v11 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Snapshot is of unexpected type %@", &v15, 0xCu);
  }

LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)statsManager:(id)manager thresholdReachedOn:(unsigned int)on
{
  v27 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  lastCellularThresholdRefreshTime = self->lastCellularThresholdRefreshTime;
  v9 = 1;
  if (lastCellularThresholdRefreshTime)
  {
    [(NSDate *)lastCellularThresholdRefreshTime timeIntervalSinceNow];
    if (fabs(v8) < 30.0)
    {
      v9 = 0;
    }
  }

  cellThroughputAdviser = self->cellThroughputAdviser;
  v11 = 20.0;
  v12 = 2.0;
  if (cellThroughputAdviser && [(CellThroughputAdviser *)cellThroughputAdviser enabled]&& [(CellThroughputAdviser *)self->cellThroughputAdviser quiesced])
  {
    v13 = analyticsLogHandle;
    v11 = 0.0;
    v12 = 1.0;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Threshold processing finds SDM quiesced", buf, 2u);
    }

    v9 = 1;
    v14 = @"SDMQuiescentThresholdHandling";
  }

  else
  {
    v14 = @"ThresholdHandling";
  }

  v15 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v16 = @"not";
    if (v9)
    {
      v16 = @"is";
    }

    *buf = 67109378;
    onCopy = on;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Threshold reached for interface %d, refresh %@ required", buf, 0x12u);
  }

  if (v9)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v18 = self->lastCellularThresholdRefreshTime;
    self->lastCellularThresholdRefreshTime = date;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    setApparentTime(v19);
    refreshScheduler = self->refreshScheduler;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__FlowAnalyticsEngine_statsManager_thresholdReachedOn___block_invoke;
    v22[3] = &unk_27898BB90;
    v22[4] = self;
    [(FlowRefreshScheduler *)refreshScheduler refreshDataUsageMaxStale:v14 maxDelay:v22 logAs:v11 callback:v12];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __55__FlowAnalyticsEngine_statsManager_thresholdReachedOn___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cellular threshold polling complete, success %d", v7, 8u);
  }

  result = [*(a1 + 32) _updateTetheringUsage:1];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (double)_usageFingerprintForBundleName:(id)name
{
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:nameCopy shouldFillMiss:0];
  if (v6)
  {
    v7 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v6];
    v8 = v7;
    if (v7)
    {
      wifiIN = [v7 wifiIN];
      [wifiIN doubleValue];
      v11 = v10;
      wifiOUT = [v8 wifiOUT];
      [wifiOUT doubleValue];
      v14 = v11 + v13;
      wwanIN = [v8 wwanIN];
      [wwanIN doubleValue];
      v17 = v14 + v16;
      wwanOUT = [v8 wwanOUT];
      [wwanOUT doubleValue];
      v20 = v17 + v19;
      wiredIN = [v8 wiredIN];
      [wiredIN doubleValue];
      v23 = v20 + v22;
      wiredOUT = [v8 wiredOUT];
      [wiredOUT doubleValue];
      v26 = v23 + v25;
    }

    else
    {
      v28 = procStateLogHandle;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        ctShim = self->ctShim;
        if (ctShim)
        {
          currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (currentSubscriberTag)
          {
            currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v31 = 1;
          }

          else
          {
            v31 = 0;
            currentSubscriberTag2 = &unk_2847EF6C8;
          }
        }

        else
        {
          v31 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }

        v34 = 138412546;
        v35 = nameCopy;
        v36 = 2112;
        v37 = currentSubscriberTag2;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "Failed to find LiveUsage for %@ with subscriber tag: %@", &v34, 0x16u);
        if (v31)
        {
        }

        if (ctShim)
        {
        }
      }

      v26 = 0.0;
    }
  }

  else
  {
    v27 = procStateLogHandle;
    v26 = 0.0;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412290;
      v35 = nameCopy;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Failed to find process for %@", &v34, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_handleApplicationNotificationCompactForBundleName:(id)name edgeMode:(BOOL)mode
{
  modeCopy = mode;
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "false";
    if (modeCopy)
    {
      v8 = "true";
    }

    v22 = 138412546;
    v23 = nameCopy;
    v24 = 2080;
    v25 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Foreground: %s", &v22, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->appCompactState objectForKey:nameCopy];
  v10 = v9;
  if (!modeCopy && !v9)
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = nameCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Removal when already gone for app: %@", &v22, 0xCu);
    }

    v10 = 0;
    goto LABEL_33;
  }

  if (modeCopy && v9)
  {
    v12 = procStateLogHandle;
    if (!os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v22 = 138412290;
    v23 = nameCopy;
    v13 = "Analytics Engine: double ON for app: %@";
LABEL_32:
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, &v22, 0xCu);
    goto LABEL_33;
  }

  if (modeCopy)
  {
    v14 = MEMORY[0x277CCABB0];
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:nameCopy];
    v15 = [v14 numberWithDouble:?];

    [(NSMutableDictionary *)self->appCompactState setObject:v15 forKey:nameCopy];
    v16 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = nameCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Set appCompactState object %@ for key %@", &v22, 0x16u);
    }

    if (self->appTrackingEnabled && nameCopy && self->endpointTrackingEnabled)
    {
      [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:nameCopy];
    }

    v10 = v15;
  }

  else
  {
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:nameCopy];
    if (v17 != 0.0)
    {
      v18 = v17;
      [v10 doubleValue];
      if (v19 != v18)
      {
        if (self->appTrackingEnabled && self->endpointTrackingEnabled)
        {
          [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:nameCopy];
          [(FlowAnalyticsEngine *)self _archiveAppEndpointsForUserId:gEffectiveUserId bundleName:nameCopy];
        }

        v20 = procStateLogHandle;
        if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = nameCopy;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "call _saveAndUnloadSelectState on %@ exiting foreground state", &v22, 0xCu);
        }

        [(FlowAnalyticsEngine *)self _saveAndUnloadSelectState];
      }
    }

    [(NSMutableDictionary *)self->appCompactState removeObjectForKey:nameCopy];
    v12 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = nameCopy;
      v13 = "Remove appCompactState key %@";
      goto LABEL_32;
    }
  }

LABEL_33:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleApplicationNotificationStateChangedForBundleName:(id)name edgeMode:(BOOL)mode intervalType:(int)type
{
  modeCopy = mode;
  v69 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    if (modeCopy)
    {
      v10 = "true";
    }

    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "State Change for bundle name %@: Foreground: %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = __Block_byref_object_copy__5;
  v67 = __Block_byref_object_dispose__5;
  v68 = [(NSMutableDictionary *)self->appState objectForKey:nameCopy];
  v11 = *(*&buf[8] + 40);
  if (modeCopy)
  {
    if (v11)
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
      {
        *v61 = 138412290;
        v62 = nameCopy;
        v13 = "Analytics Engine: double ON for app: %@";
LABEL_17:
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, v61, 0xCu);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

LABEL_10:
    v14 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:nameCopy shouldFillMiss:0];
    v56 = v14;
    if (v14)
    {
      v15 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v14];
      v16 = v15;
      if (v15)
      {
        wifiIN = [v15 wifiIN];
        [wifiIN doubleValue];
        if (v18 == 0.0)
        {
          wifiOUT = [v16 wifiOUT];
          [wifiOUT doubleValue];
          if (v20 == 0.0)
          {
            wwanIN = [v16 wwanIN];
            [wwanIN doubleValue];
            v55 = wwanIN;
            if (v29 == 0.0)
            {
              wwanOUT = [v16 wwanOUT];
              [wwanOUT doubleValue];
              if (v30 == 0.0)
              {
                wiredIN = [v16 wiredIN];
                [wiredIN doubleValue];
                if (v31 == 0.0)
                {
                  wiredOUT = [v16 wiredOUT];
                  [wiredOUT doubleValue];
                  v21 = v32 != 0.0;
                }

                else
                {
                  v21 = 1;
                }
              }

              else
              {
                v21 = 1;
              }
            }

            else
            {
              v21 = 1;
            }
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v21 = 1;
        }

LABEL_45:
        if (modeCopy)
        {
          date = [MEMORY[0x277CBEAA8] date];
          aspace = self->aspace;
          entityName = [MEMORY[0x277D6B580] entityName];
          v36 = [(AppAnalytics *)aspace createTemporaryEntityForEntityName:entityName];
          v37 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v36;

          if (*(*&buf[8] + 40))
          {
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
            [*(*&buf[8] + 40) setKind:v38];

            v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v40 = v39;
            if (v16)
            {
              wifiIN2 = [v16 wifiIN];
            }

            else
            {
              wifiIN2 = v39;
            }

            [*(*&buf[8] + 40) setWifiIN_start:wifiIN2];
            if (v16)
            {

              wifiOUT2 = [v16 wifiOUT];
            }

            else
            {
              wifiOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWifiOUT_start:wifiOUT2];
            if (v16)
            {

              wwanIN2 = [v16 wwanIN];
            }

            else
            {
              wwanIN2 = v40;
            }

            [*(*&buf[8] + 40) setWwanIN_start:wwanIN2];
            if (v16)
            {

              wwanOUT2 = [v16 wwanOUT];
            }

            else
            {
              wwanOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWwanOUT_start:wwanOUT2];
            if (v16)
            {

              wiredIN2 = [v16 wiredIN];
            }

            else
            {
              wiredIN2 = v40;
            }

            [*(*&buf[8] + 40) setWiredIN_start:wiredIN2];
            if (v16)
            {

              wiredOUT2 = [v16 wiredOUT];
            }

            else
            {
              wiredOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWiredOUT_start:wiredOUT2];
            if (v16)
            {
            }

            [*(*&buf[8] + 40) setTimeStart:date];
            [(NSMutableDictionary *)self->appState setObject:*(*&buf[8] + 40) forKey:nameCopy];
            if (self->appTrackingEnabled && self->endpointTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:nameCopy];
            }
          }

          else
          {
            v44 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v61 = 138412290;
              v62 = nameCopy;
              _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Failed to allocate SFAppRun entity for %@", v61, 0xCu);
            }
          }
        }

        else
        {
          if (!v21)
          {
            [(NSMutableDictionary *)self->appState removeObjectForKey:nameCopy];
            v42 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = 0;

            [(FlowAnalyticsEngine *)self _saveAndUnloadSelectState];
            v43 = v56;
LABEL_78:

            goto LABEL_79;
          }

          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __101__FlowAnalyticsEngine__handleApplicationNotificationStateChangedForBundleName_edgeMode_intervalType___block_invoke;
          v57[3] = &unk_27898C4E0;
          v57[4] = self;
          v58 = nameCopy;
          v59 = buf;
          typeCopy = type;
          [(FlowAnalyticsEngine *)self _refreshFullDataUsageWithCallback:v57];
        }

        v43 = v56;
        goto LABEL_78;
      }

      v23 = procStateLogHandle;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        ctShim = self->ctShim;
        if (ctShim)
        {
          currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (currentSubscriberTag)
          {
            v54 = currentSubscriberTag;
            currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v27 = 1;
          }

          else
          {
            v54 = 0;
            v27 = 0;
            currentSubscriberTag2 = &unk_2847EF6C8;
          }
        }

        else
        {
          v27 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }

        *v61 = 138412546;
        v62 = nameCopy;
        v63 = 2112;
        v64 = currentSubscriberTag2;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Failed to find LiveUsage for %@ with subscriber tag: %@", v61, 0x16u);
        if (v27)
        {
        }

        if (ctShim)
        {
        }
      }
    }

    else
    {
      v22 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 138412290;
        v62 = nameCopy;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find process for %@", v61, 0xCu);
      }
    }

    v16 = 0;
    v21 = 0;
    goto LABEL_45;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
  {
    *v61 = 138412290;
    v62 = nameCopy;
    v13 = "Removal when already gone for app: %@";
    goto LABEL_17;
  }

LABEL_79:
  _Block_object_dispose(buf, 8);

  v50 = *MEMORY[0x277D85DE8];
}

void __101__FlowAnalyticsEngine__handleApplicationNotificationStateChangedForBundleName_edgeMode_intervalType___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _processFetchForName:0 bundle:*(a1 + 40) shouldFillMiss:0];
  v4 = v3;
  if (v3 && ([v3 isApp] & 1) != 0)
  {
    v5 = [*(a1 + 32) _liveUsageFetchForProcess:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 wifiIN];
      [*(*(*(a1 + 48) + 8) + 40) setWifiIN_end:v7];

      v8 = [v6 wifiOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWifiOUT_end:v8];

      v9 = [v6 wwanIN];
      [*(*(*(a1 + 48) + 8) + 40) setWwanIN_end:v9];

      v10 = [v6 wwanOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWwanOUT_end:v10];

      v11 = [v6 wiredIN];
      [*(*(*(a1 + 48) + 8) + 40) setWiredIN_end:v11];

      v12 = [v6 wiredOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWiredOUT_end:v12];

      v13 = [MEMORY[0x277CBEAA8] date];
      [*(*(*(a1 + 48) + 8) + 40) setTimeEnd:v13];

      v14 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(a1 + 40);
        v15 = *(*(*(a1 + 48) + 8) + 40);
        log = v14;
        v68 = [v15 wifiIN_end];
        [v68 doubleValue];
        v17 = v16;
        v67 = [*(*(*(a1 + 48) + 8) + 40) wifiIN_start];
        [v67 doubleValue];
        v19 = v17 - v18;
        v66 = [*(*(*(a1 + 48) + 8) + 40) wifiOUT_end];
        [v66 doubleValue];
        v21 = v20;
        v65 = [*(*(*(a1 + 48) + 8) + 40) wifiOUT_start];
        [v65 doubleValue];
        v23 = v21 - v22;
        v63 = [*(*(*(a1 + 48) + 8) + 40) wwanIN_end];
        [v63 doubleValue];
        v25 = v24;
        v61 = [*(*(*(a1 + 48) + 8) + 40) wwanIN_start];
        [v61 doubleValue];
        v27 = v25 - v26;
        v60 = [*(*(*(a1 + 48) + 8) + 40) wwanOUT_end];
        [v60 doubleValue];
        v29 = v28;
        v59 = [*(*(*(a1 + 48) + 8) + 40) wwanOUT_start];
        [v59 doubleValue];
        v31 = v29 - v30;
        v32 = [*(*(*(a1 + 48) + 8) + 40) wiredIN_end];
        [v32 doubleValue];
        v34 = v33;
        v35 = [*(*(*(a1 + 48) + 8) + 40) wiredIN_start];
        [v35 doubleValue];
        v37 = v34 - v36;
        v38 = [*(*(*(a1 + 48) + 8) + 40) wiredOUT_end];
        [v38 doubleValue];
        v40 = v39;
        v41 = [*(*(*(a1 + 48) + 8) + 40) wiredOUT_start];
        [v41 doubleValue];
        v43 = v40 - v42;
        v44 = [*(*(*(a1 + 48) + 8) + 40) timeEnd];
        v45 = [*(*(*(a1 + 48) + 8) + 40) timeStart];
        [v44 timeIntervalSinceDate:v45];
        *buf = 138414082;
        v70 = v62;
        v71 = 2048;
        v72 = v19;
        v73 = 2048;
        v74 = v23;
        v75 = 2048;
        v76 = v27;
        v77 = 2048;
        v78 = v31;
        v79 = 2048;
        v80 = v37;
        v81 = 2048;
        v82 = v43;
        v83 = 2048;
        v84 = v46;
        _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEBUG, "%@ usage: WiFi in/out: %.0f/%.0f, Cell in/out: %.0f/%.0f, Wired in/out %.0f/%.0fDuration: %.1f seconds", buf, 0x52u);
      }

      if ([*(a1 + 32) haveCalendar])
      {
        [*(a1 + 32) _calendarUsageForApp:v4 givenLastRun:*(*(*(a1 + 48) + 8) + 40)];
      }

      [*(a1 + 32) _compactUsageForApp:v4 intervalType:*(a1 + 56) givenLastRun:*(*(*(a1 + 48) + 8) + 40)];
      [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
      v47 = *(*(a1 + 48) + 8);
      v48 = *(v47 + 40);
      *(v47 + 40) = 0;

      v49 = *(a1 + 32);
      if (v49[576] == 1 && v49[577] == 1)
      {
        [v49 _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:*(a1 + 40)];
        [*(a1 + 32) _archiveAppEndpointsForUserId:gEffectiveUserId bundleName:*(a1 + 40)];
        v49 = *(a1 + 32);
      }

      [v49 _saveAndUnloadSelectState];
    }

    else
    {
      v52 = procStateLogHandle;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 32);
        v54 = *(a1 + 40);
        v55 = *(v53 + 648);
        if (v55)
        {
          v1 = [*(v53 + 648) currentSubscriberTag];
          if (v1)
          {
            v56 = [*(*(a1 + 32) + 648) currentSubscriberTag];
            v57 = 1;
          }

          else
          {
            v57 = 0;
            v56 = &unk_2847EF6C8;
          }
        }

        else
        {
          v57 = 0;
          v56 = &unk_2847EF6C8;
        }

        *buf = 138412546;
        v70 = v54;
        v71 = 2112;
        v72 = *&v56;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "Upon exit: failed to find LiveUsage for %@ with subscriber tag: %@", buf, 0x16u);
        if (v57)
        {
        }

        if (v55)
        {
        }
      }

      [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
    }
  }

  else
  {
    v50 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 40);
      *buf = 138412290;
      v70 = v51;
      _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "Upon exit: %@: invalid App", buf, 0xCu);
    }

    [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)processSnapshotForConnectionEstablishment:(id)establishment
{
  v39 = *MEMORY[0x277D85DE8];
  establishmentCopy = establishment;
  snapshotReason = [establishmentCopy snapshotReason];
  [establishmentCopy flowDuration];
  if (v6 < 7.5 || snapshotReason == 2)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = establishmentCopy;
      qUICState = [v12 QUICState];
      qUICStateNumber = [v12 QUICStateNumber];

      if (qUICStateNumber > 8)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

LABEL_6:
    qUICState = 0;
    goto LABEL_21;
  }

  v10 = establishmentCopy;
  qUICState = [v10 TCPState];
  tCPStateNumber = [v10 TCPStateNumber];

  if ((tCPStateNumber & 0xFFFFFFFE) != 2)
  {
    goto LABEL_21;
  }

LABEL_12:
  attributedEntity = [establishmentCopy attributedEntity];
  interfaceWiFi = [establishmentCopy interfaceWiFi];
  interfaceCellular = [establishmentCopy interfaceCellular];
  [establishmentCopy flowDuration];
  v18 = v17;
  v19 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v20 = @"Other";
    if (interfaceCellular)
    {
      v20 = @"Cellular";
    }

    *buf = 138413058;
    v32 = attributedEntity;
    v35 = 2048;
    v33 = 2112;
    v34 = qUICState;
    if (interfaceWiFi)
    {
      v20 = @"Wi-Fi";
    }

    v36 = v18;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Found pre-connection establishment stuck flow for %@ [state=%@, duration=%.2fs, interface=%@]", buf, 0x2Au);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{interfaceWiFi, @"kNotificationFlowScrutinizerIsWiFiFlow"}];
  v30[0] = v21;
  v29[1] = @"kNotificationFlowScrutinizerIsCellularFlow";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:interfaceCellular];
  v30[1] = v22;
  v29[2] = @"kNotificationFlowScrutinizerFlowDuration";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v24 = v23;
  v29[3] = @"kNotificationFlowScrutinizerAttributedEntity";
  v25 = @"unknown";
  if (attributedEntity)
  {
    v25 = attributedEntity;
  }

  v30[2] = v23;
  v30[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kNotificationFlowScrutinizerPreConnectionStuckFlow" object:self userInfo:v26];

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainUserAppTrackingChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = changedCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserAppTrackingChanged delegate: %@", buf, 0xCu);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__FlowAnalyticsEngine_networkDomainUserAppTrackingChanged___block_invoke;
  v9[3] = &unk_27898A7D0;
  v9[4] = self;
  v10 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainUserEndpointTrackingChanged:(id)changed
{
  v13 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = changedCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserEndpointTrackingChanged delegate: %@", buf, 0xCu);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FlowAnalyticsEngine_networkDomainUserEndpointTrackingChanged___block_invoke;
  v9[3] = &unk_27898A7D0;
  v9[4] = self;
  v10 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainResolution:(id)resolution
{
  v21 = *MEMORY[0x277D85DE8];
  resolutionCopy = resolution;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = resolutionCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "networkDomainResolution delegate: %@", buf, 0xCu);
  }

  v6 = resolutionCopy;
  v7 = [v6 objectForKeyedSubscript:@"ResolvingEffectiveUserId"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"ResolvingBundleName"];
  v10 = [v6 objectForKeyedSubscript:@"ResolvingEndpoints"];
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__FlowAnalyticsEngine_networkDomainResolution___block_invoke;
  v15[3] = &unk_27898A758;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = unsignedIntegerValue;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

_BYTE *__47__FlowAnalyticsEngine_networkDomainResolution___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[576] == 1 && result[577] == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      return [result _updateAppEndpoints:*(a1 + 48) type:1 userId:*(a1 + 56) bundleName:v3 flowClosing:0];
    }
  }

  return result;
}

- (void)sendPowerLogReport:(id)report isStart:(BOOL)start
{
  v9 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = reportCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "SDM power log report %@", &v7, 0xCu);
  }

  PLLogRegisteredEvent();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)postCAEvent:(id)event withName:(id)name
{
  eventCopy = event;
  v4 = eventCopy;
  AnalyticsSendEventLazy();
}

- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  if (id - 18 < 2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    setApparentTime(v14);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = +[FlowScrutinizer sharedInstance];
    date2 = [v15 getLedgerState:id == 19];

    [dictionary setObject:date2 forKeyedSubscript:@"FlowLedgerDetails"];
    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "FlowLedger details", date, "collected on demand", 0, dictionary);
  }

  else
  {
    if (id != 15)
    {
      if (id == 12)
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        dictionary = dictionary2;
        cellThroughputAdviser = self->cellThroughputAdviser;
        if (cellThroughputAdviser)
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v13 = [(CellThroughputAdviser *)cellThroughputAdviser getStateAt:?];
          [dictionary setObject:v13 forKeyedSubscript:@"CellThroughputDetails"];
        }

        else
        {
          [dictionary2 setObject:@"No adviser configured" forKeyedSubscript:@"CellThroughputDetails"];
        }

        date2 = [MEMORY[0x277CBEAA8] date];
        (*(blockCopy + 2))(blockCopy, 0, "CellThroughputAdvice  details", date2, "collected on demand", 0, dictionary);
      }

      else
      {
        dictionary = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAC0] dictionary];
        (*(blockCopy + 2))(blockCopy, 0, "FAE unrecognised managed event request", dictionary, "collected on demand", 0, date2);
      }

      goto LABEL_12;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = +[WiFiThroughputAdviser sharedInstance];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    date2 = [v18 getStateAt:?];

    [dictionary setObject:date2 forKeyedSubscript:@"WiFiThroughputDetails"];
    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "WiFiThroughputAdvice  details", date, "collected on demand", 0, dictionary);
  }

LABEL_12:
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FlowAnalyticsEngine_generateInfoForId_context_uuid_completionBlock___block_invoke;
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

- (void)_newCoreMediaAssetDownloadEvent:(id)event
{
  v61 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selfCopy = self;
  if (![(FlowScrutinizer *)self->flowScrutinizer assetDownloadsScrutinized])
  {
    goto LABEL_46;
  }

  userInfo = [eventCopy userInfo];
  [userInfo keyEnumerator];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v5 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  v32 = 408;
  v33 = eventCopy;
  v7 = 0;
  v35 = *v47;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v47 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v46 + 1) + 8 * i);

      v10 = [userInfo objectForKeyedSubscript:v9];
      eventKey = [v10 eventKey];
      eventData = [v10 eventData];
      if ([v10 processName])
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:objc_msgSend(v10 encoding:{"processName"), 4}];
      }

      else
      {
        v13 = 0;
      }

      v7 = v9;
      v14 = [SymptomStore keyFromSymptomName:@"SYMPTOM_TRANSPORT_DISCONNECT", v32];
      v15 = [eventKey isEqualToString:v14];

      if (v15)
      {
        if (v13 && (([v13 isEqualToString:@"mediaserverd"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"mediaplaybackd")))
        {
          v28 = *(&selfCopy->super.super.isa + v32);
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          [v28 noteCoreMediaAssetDownloadEvent:2 downloadUUID:0 byProcess:v13 onBehalfOf:0 duration:0.0 at:v29];
        }

        goto LABEL_43;
      }

      if ((*(eventData + 4) & 4) == 0)
      {
        goto LABEL_16;
      }

      v16 = *(eventData + 40);
      if ((v16 & 1) == 0)
      {
        v30 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v10;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "FAE to CellThroughputAdviser, asset download prohibits cell, event ignored %@", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if ((~*(eventData + 40) & 6) != 0)
      {
        v17 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v51 = v16;
          v52 = 2112;
          v53 = v10;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "FAE to CellThroughputAdviser, asset download with (0x%llx) restrictions, continue %@", buf, 0x16u);
        }
      }

LABEL_16:
      v37 = eventKey;
      v18 = [v10 eventQualifierStringForKey:@"1"];
      processId = [v10 processId];
      if (selfCopy->assetDownloadProcessId != processId)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke;
        block[3] = &unk_27898AFE0;
        block[4] = selfCopy;
        block[5] = processId;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      eventQualifiers = [v10 eventQualifiers];
      v21 = [eventQualifiers objectForKeyedSubscript:@"2"];

      if (v21 && [v21 length] == 16)
      {
        v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v21, "bytes")}];
      }

      else
      {
        v22 = 0;
      }

      v23 = *(eventData + 4);
      if (v23)
      {
        v24 = *(eventData + 24);
      }

      else
      {

        v24 = 0;
        v22 = 0;
        v23 = *(eventData + 4);
      }

      v25 = 86400.0;
      if ((v23 & 2) != 0)
      {
        v25 = *(eventData + 32) / 1000.0;
      }

      v26 = flowScrutinyLogHandle;
      if (v22 && v13)
      {
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219010;
          v51 = v24;
          v52 = 2112;
          v53 = v13;
          v54 = 2112;
          v55 = v18;
          v56 = 2112;
          v57 = v22;
          v58 = 2048;
          v59 = v25;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "FAE to flowScrutinizer, Download event %lld %@ on behalf of %@ download UUID %@ duration %.3f", buf, 0x34u);
        }

        queue = [(AnalyticsEngineCore *)selfCopy queue];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke_405;
        v39[3] = &unk_27898C558;
        v39[4] = selfCopy;
        v43 = v24;
        v40 = v22;
        v41 = v13;
        v42 = v18;
        v44 = v25;
        dispatch_async(queue, v39);
      }

      else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = v10;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "FAE to flowScrutinizer, incorrect asset download symptom format %@", buf, 0xCu);
      }
    }

    v6 = [obj countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_44:

  eventCopy = v33;
LABEL_45:

LABEL_46:
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke(uint64_t a1)
{
  result = [TransportHandler requestExplicitDisconnectSymptom:*(a1 + 40)];
  *(*(a1 + 32) + 392) = *(a1 + 40);
  return result;
}

uint64_t __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke_405(double *a1)
{
  v1 = *(a1 + 5);
  v2 = *(*(a1 + 4) + 408);
  v4 = *(a1 + 7);
  v3 = *(a1 + 8);
  v5 = *(a1 + 6);
  v6 = a1[9];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteCoreMediaAssetDownloadEvent:v3 downloadUUID:v1 byProcess:v5 onBehalfOf:v4 duration:v6 at:v7];
}

- (void)_noteSizeableBackgroundTransferEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  if (!self->cellThroughputAdviser)
  {
    goto LABEL_19;
  }

  userInfo = [event userInfo];
  [userInfo keyEnumerator];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v37;
  v25 = v31;
  *&v5 = 138413058;
  v24 = v5;
  v26 = *v37;
  do
  {
    v9 = 0;
    v28 = v6;
    do
    {
      v10 = v7;
      if (*v37 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v36 + 1) + 8 * v9);

      v11 = [userInfo objectForKeyedSubscript:v7];
      eventData = [v11 eventData];
      v13 = [v11 eventQualifierStringForKey:@"1"];
      v14 = v13;
      if ((~*(eventData + 4) & 7) != 0)
      {
      }

      else if (v13)
      {
        v15 = userInfo;
        v16 = *(eventData + 24);
        v17 = *(eventData + 32);
        v18 = *(eventData + 40);
        v19 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v24;
          v41 = v14;
          v42 = 2048;
          v43 = v16;
          v44 = 2048;
          v45 = v18;
          v46 = 2048;
          v47 = v17;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "FAE to CellThroughputAdviser, Sizeable Background Transfer event named %@, event %lld, download %llu, upload %llu", buf, 0x2Au);
        }

        v20 = [(AnalyticsEngineCore *)self queue:v24];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v31[0] = __60__FlowAnalyticsEngine__noteSizeableBackgroundTransferEvent___block_invoke;
        v31[1] = &unk_27898C580;
        v31[2] = self;
        v32 = v14;
        v33 = v16;
        v34 = v18;
        v35 = v17;
        v21 = v14;
        dispatch_async(v20, block);

        userInfo = v15;
        v8 = v26;
        v6 = v28;
        goto LABEL_15;
      }

      v22 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v11;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "FAE to CellThroughputAdviser, incorrect sizeable background transfer symptom format %@", buf, 0xCu);
      }

LABEL_15:

      ++v9;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
  }

  while (v6);

LABEL_18:
LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __60__FlowAnalyticsEngine__noteSizeableBackgroundTransferEvent___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 368);
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteSizeableBackgroundTransferEventName:v1 event:v3 downloadSizeBytes:v4 uploadSizeBytes:v5 at:?];
}

- (void)_newExpectedTransfer:(id)transfer
{
  v54 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  selfCopy = self;
  if ([(FlowScrutinizer *)self->flowScrutinizer expectedTransfersScrutinized])
  {
    userInfo = [transferCopy userInfo];
    [userInfo keyEnumerator];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v33 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v33)
    {
      v26 = transferCopy;
      v6 = 0;
      v32 = *v42;
      v27 = userInfo;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          v8 = v6;
          if (*v42 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v41 + 1) + 8 * i);

          v9 = [userInfo objectForKeyedSubscript:v6];
          v10 = [v9 eventQualifierStringForKey:@"3"];
          v11 = [v9 eventQualifierStringForKey:@"7"];
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
          eventQualifiers = [v9 eventQualifiers];
          v14 = [eventQualifiers objectForKeyedSubscript:@"8"];

          eventQualifiers2 = [v9 eventQualifiers];
          v16 = [eventQualifiers2 objectForKeyedSubscript:@"9"];

          if (v12)
          {
            v17 = v14 == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = v17 || v16 == 0;
          if (!v18 && [v14 length] == 4 && objc_msgSend(v16, "length") == 8)
          {
            v40 = 0;
            v39 = 0;
            [v14 getBytes:&v40 length:4];
            [v16 getBytes:&v39 length:8];
            v19 = v40 - 1;
            if ((v40 - 1) >= 8)
            {
              v22 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v46) = v40;
                _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "_newExpectedTransfer, unexpected transfer type %d", buf, 8u);
              }

              LOBYTE(v30) = 0;
              LOBYTE(v20) = 1;
            }

            else
            {
              v30 = 0xCCu >> v19;
              v20 = 0xFu >> v19;
            }

            v29 = v20;
            v23 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              v46 = v39;
              v47 = 1024;
              v48 = v40;
              v49 = 2112;
              v50 = v12;
              v51 = 2112;
              v52 = v10;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "FAE to FlowScrutinizer, Transfer size %lld type %d flow UUID %@ from %@", buf, 0x26u);
            }

            queue = [(AnalyticsEngineCore *)selfCopy queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__FlowAnalyticsEngine__newExpectedTransfer___block_invoke;
            block[3] = &unk_27898C5A8;
            block[4] = selfCopy;
            v36 = v39;
            v37 = v29 & 1;
            v38 = v30 & 1;
            v35 = v12;
            dispatch_async(queue, block);

            userInfo = v27;
          }

          else
          {
            v21 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v9;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "FAE to CellThroughputAdviser, incorrect symptom format %@", buf, 0xCu);
            }
          }
        }

        v33 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v33);

      transferCopy = v26;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __44__FlowAnalyticsEngine__newExpectedTransfer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 408);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteExpectedTransfer:v3 inbound:v4 upperThreshold:v5 flowUUID:v1 at:?];
}

- (void)_dumpSubFlowCounts
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = 8;
  v13 = 0;
  v10 = 8;
  v11 = 0;
  if (sysctlbyname("net.soflow.count", &v13, &v12, 0, 0) < 0)
  {
    v4 = flowLogHandle;
    if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v5 = v4;
    v6 = *__error();
    *buf = 67109120;
    LODWORD(v15) = v6;
    v7 = "Unable to retrieve current subflow counts, error %d";
LABEL_9:
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, v7, buf, 8u);

    goto LABEL_10;
  }

  v2 = sysctlbyname("net.soflow.high_water_mark", &v11, &v10, 0, 0);
  v3 = flowLogHandle;
  if (v2 < 0)
  {
    if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v5 = v3;
    v8 = *__error();
    *buf = 67109120;
    LODWORD(v15) = v8;
    v7 = "Unable to retrieve current subflow high water mark, error %d";
    goto LABEL_9;
  }

  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v15 = v13;
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Kernel UDP subflows current count %ld high water mark %ld", buf, 0x16u);
  }

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_dumpState
{
  v43[2] = *MEMORY[0x277D85DE8];
  +[AppTracker dumpState];
  +[TrackedFlow dumpState];
  [(BitmapRetriever *)self->bitmapRetriever dumpActivityBitmap];
  cellThroughputAdviser = self->cellThroughputAdviser;
  if (cellThroughputAdviser)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(CellThroughputAdviser *)cellThroughputAdviser dumpStateAt:1 verbose:?];
  }

  [(FlowRefreshScheduler *)self->refreshScheduler dumpState];
  [(NWStatsManager *)self->nstatManager dumpState];
  v4 = MEMORY[0x277D2CA90];
  v5 = *MEMORY[0x277D2CC40];
  v42[0] = *MEMORY[0x277D2CC48];
  v42[1] = v5;
  v43[0] = MEMORY[0x277CBEC38];
  v43[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v4 dumpKernelMetrics:v6];

  [(FlowAnalyticsEngine *)self _dumpSubFlowCounts];
  v7 = 584;
  if (self->snapshotFlowUUIDs)
  {
    v8 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Connection flow UUIDs stored in memory, keyed with sourceKey", buf, 2u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->snapshotFlowUUIDs;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v32;
      *&v10 = 134218498;
      v28 = v10;
      do
      {
        v14 = 0;
        v29 = v11;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          v16 = [*(&self->super.super.isa + v7) objectForKeyedSubscript:{v15, v28}];
          v12 += [v16 count];

          v17 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(&self->super.super.isa + v7);
            v19 = v17;
            v20 = [v18 objectForKeyedSubscript:v15];
            [v20 allObjects];
            v22 = v21 = v7;
            [v22 componentsJoinedByString:{@", "}];
            v23 = v13;
            v25 = v24 = self;
            *buf = v28;
            v36 = v12;
            v37 = 2112;
            v38 = v15;
            v39 = 2112;
            v40 = v25;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "\tcumulative %lu: %@ -> [%@]", buf, 0x20u);

            v7 = v21;
            self = v24;
            v13 = v23;
            v11 = v29;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v11);
    }
  }

  v26 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v36 = connSnapshotFlowUUIDHitsAndMisses_0;
    v37 = 2048;
    v38 = connSnapshotFlowUUIDHitsAndMisses_1;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Connection flow UUIDs that were hit/missed by flows (since symptomsd's start): %llu/%llu", buf, 0x16u);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupLocalCache
{
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Setting up local cache", v13, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  flowCache = self->flowCache;
  self->flowCache = v4;

  if (!self->flowCache)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  flowInstant = self->flowInstant;
  self->flowInstant = v6;

  if (!self->flowInstant)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  appState = self->appState;
  self->appState = v8;

  if (!self->appState)
  {
    return 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  appCompactState = self->appCompactState;
  self->appCompactState = v10;

  return self->appCompactState != 0;
}

- (void)_removeAllInfoForProcess:(id)process
{
  v15 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138477827;
    v14 = processCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "_removeAllInfoForProcess %{private}@", &v13, 0xCu);
  }

  if (processCopy)
  {
    name = [processCopy name];
    extensionName = [processCopy extensionName];
    if (extensionName)
    {
      v8 = 4;
    }

    else
    {
      bundleName = [processCopy bundleName];
      if (bundleName)
      {
        v8 = 3;
      }

      else
      {
        procName = [processCopy procName];
        v8 = 2 * (procName != 0);
      }
    }

    [(FlowAnalyticsEngine *)self _removeInfoFromWorkspaceForProcess:processCopy];
    v11 = analyticsLogHandle;
    if (name)
    {
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        v14 = name;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Removing local cache for %@", &v13, 0xCu);
      }

      [(FlowAnalyticsEngine *)self _removeFromProcCache:name ofType:v8];
      [(NSMutableDictionary *)self->appState removeObjectForKey:name];
      [(NSMutableDictionary *)self->appCompactState removeObjectForKey:name];
    }

    else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = processCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Trying to removing local cache for %@ with nil name", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeInfoFromWorkspaceForProcess:(id)process
{
  v27 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v24 = processCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Removing Process entity %{private}@ from workspace", buf, 0xCu);
  }

  if ([processCopy isApp])
  {
    v6 = processCopy;
    hasTypicalUsage = [v6 hasTypicalUsage];
    v8 = [hasTypicalUsage count];

    if (v8)
    {
      aspace = self->aspace;
      hasTypicalUsage2 = [v6 hasTypicalUsage];
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
      v12 = [hasTypicalUsage2 objectsAtIndexes:v11];
      [(AppAnalytics *)aspace removeEntities:v12];
    }

    v13 = self->aspace;
    hasCalendarUsage = [v6 hasCalendarUsage];
    allObjects = [hasCalendarUsage allObjects];
    [(AppAnalytics *)v13 removeEntities:allObjects];
  }

  [processCopy setHintLiveUsage:0];
  if (processCopy && [processCopy isApp])
  {
    bundleName = [processCopy bundleName];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", gEffectiveUserId, @"bundleName", bundleName];
    v18 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v17 wspaceReset:0];
    v19 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v24 = v18;
      v25 = 2113;
      v26 = bundleName;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld ADU records for %{private}@ via reset data", buf, 0x16u);
    }
  }

  pspace = self->pspace;
  v21 = [MEMORY[0x277CBEA60] arrayWithObject:processCopy];
  [(ProcessAnalytics *)pspace removeEntities:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_processFetchForName:(id)name bundle:(id)bundle extension:(id)extension shouldFillMiss:(BOOL)miss
{
  missCopy = miss;
  v68 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  extensionCopy = extension;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__5;
  v60 = __Block_byref_object_dispose__5;
  v61 = 0;
  if (extensionCopy)
  {
    objc_opt_class();
    if (!((bundleCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 1;
        v14 = 4;
        v15 = MEMORY[0x277D6B5C8];
        v16 = extensionCopy;
        goto LABEL_13;
      }
    }

    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v63 = extensionCopy;
      v64 = 2113;
      v65 = bundleCopy;
      v18 = "_processFetchForName: extensionName %{private}@ requested with bundleID %{private}@, validation error";
      v19 = v17;
      v20 = 22;
LABEL_35:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (bundleCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 1;
      v14 = 3;
      v15 = MEMORY[0x277D6B5C0];
      v16 = bundleCopy;
      goto LABEL_13;
    }

    v33 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 138477827;
    v63 = bundleCopy;
    v18 = "_processFetchForName: bundleID %{private}@, validation error";
LABEL_34:
    v19 = v33;
    v20 = 12;
    goto LABEL_35;
  }

  if (!nameCopy)
  {
    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "_processFetchForName: called with no parameters";
      v19 = v34;
      v20 = 2;
      goto LABEL_35;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 138477827;
    v63 = nameCopy;
    v18 = "_processFetchForName: processName %{private}@, validation error";
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 2;
  v15 = MEMORY[0x277D6B5D0];
  v16 = nameCopy;
LABEL_13:
  v21 = v16;
  v22 = *v15;
  v23 = [(FlowAnalyticsEngine *)self _fetchFromProcCacheWithName:v21 ofType:v14];
  v24 = v57[5];
  v57[5] = v23;

  if (v57[5])
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = off_27898CA70[v14 - 2];
      *buf = 138478083;
      v63 = v21;
      v64 = 2112;
      v65 = v26;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "_processFetchForName: Return existing cached Process for processName %{private}@ type %@", buf, 0x16u);
    }

    v27 = v57[5];
  }

  else
  {
    v48 = v13;
    p_pspace = &self->pspace;
    v49 = v22;
    v50 = [(ProcessAnalytics *)self->pspace processesWithName:v21 nameKind:v22];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __76__FlowAnalyticsEngine__processFetchForName_bundle_extension_shouldFillMiss___block_invoke;
    v51[3] = &unk_27898C5D0;
    v46 = extensionCopy;
    v52 = v46;
    v29 = bundleCopy;
    v53 = v29;
    v55 = &v56;
    v30 = nameCopy;
    v54 = v30;
    [v50 enumerateObjectsUsingBlock:v51];
    if (v57[5])
    {
      v31 = analyticsLogHandle;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = off_27898CA70[v14 - 2];
        *buf = 138478083;
        v63 = v21;
        v64 = 2112;
        v65 = v32;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "_processFetchForName: insert under name %{private}@ type %@", buf, 0x16u);
      }

      [(FlowAnalyticsEngine *)self _insertProcCache:v57[5] ofType:v14 underName:v21, v46];
    }

    else if (missCopy)
    {
      if (v48)
      {
        p_pspace = &self->aspace;
      }

      createEntity = [(ProcessAnalytics *)*p_pspace createEntity];
      v36 = v57[5];
      v57[5] = createEntity;

      v37 = v57[5];
      if (v37)
      {
        [v37 setProcName:v21];
        [v57[5] setBundleName:v29];
        [v57[5] setExtensionName:v47];
        date = [MEMORY[0x277CBEAA8] date];
        [v57[5] setFirstTimeStamp:date];

        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        [v57[5] setTimeStamp:distantPast];

        [(AnalyticsWorkspace *)self->super.workspace save];
        [(FlowAnalyticsEngine *)self _insertProcCache:v57[5] ofType:v14 underName:v21];
        v40 = analyticsLogHandle;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v57[5];
          v42 = off_27898CA70[v14 - 2];
          *buf = 138478083;
          v63 = v41;
          v64 = 2112;
          v65 = v42;
          _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Created new Process entity %{private}@ and inserted to cache %@", buf, 0x16u);
        }
      }

      else
      {
        v45 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412803;
          v63 = v30;
          v64 = 2113;
          v65 = v29;
          v66 = 2113;
          v67 = v47;
          _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Failed to allocate Process entity for (process:{private}%@, bundleID:%{private}@, extension:%{private}@)", buf, 0x20u);
        }
      }
    }

    v27 = v57[5];
  }

LABEL_37:
  _Block_object_dispose(&v56, 8);

  v43 = *MEMORY[0x277D85DE8];

  return v27;
}

void __76__FlowAnalyticsEngine__processFetchForName_bundle_extension_shouldFillMiss___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  v9 = a1[4];
  if (v9)
  {
    v10 = [v7 extensionName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = a1[4];
      v13 = [v8 procName];
      if ([v12 isEqualToString:v13])
      {
        v14 = a1[5];
        v15 = [v8 bundleName];
        LODWORD(v14) = [v14 isEqualToString:v15];

        if (v14)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      v28 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v29 = a1[4];
      v30 = a1[5];
      v21 = v28;
      v22 = [v8 procName];
      v31 = [v8 bundleName];
      v62 = 138478595;
      v63 = v29;
      v64 = 2113;
      v65 = v30;
      v66 = 2113;
      v67 = v22;
      v68 = 2113;
      v69 = v31;
      v32 = "_processFetchForName: unexpected Process format for extensionName %{private}@ bundleID %{private}@: found procName %{private}@ bundleName %{private}@";
      v33 = v21;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 42;
      goto LABEL_27;
    }

    v26 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v27 = a1[4];
    v21 = v26;
    v22 = [v8 extensionName];
    v62 = 138478083;
    v63 = v27;
    v64 = 2113;
    v65 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested extension %{private}@ but get %{private}@";
    goto LABEL_12;
  }

  v16 = a1[5];
  v17 = [v7 extensionName];
  v18 = v17;
  if (v16)
  {

    if (v18)
    {
      v19 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v20 = a1[5];
      v21 = v19;
      v22 = [v8 extensionName];
      v62 = 138478083;
      v63 = v20;
      v64 = 2113;
      v65 = v22;
      v23 = "_processFetchForName: skipping Process return from processesWithName, require bundleID %{private}@ but has extension %{private}@";
      v24 = v21;
      v25 = OS_LOG_TYPE_DEBUG;
      goto LABEL_13;
    }

    v36 = a1[5];
    v37 = [v8 bundleName];
    LODWORD(v36) = [v36 isEqualToString:v37];

    if (v36)
    {
      v38 = a1[5];
      v39 = [v8 procName];
      LODWORD(v38) = [v38 isEqualToString:v39];

      if (!v38)
      {
        v40 = analyticsLogHandle;
        if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }

        v41 = a1[5];
        v21 = v40;
        v22 = [v8 procName];
        v31 = [v8 bundleName];
        v62 = 138478339;
        v63 = v41;
        v64 = 2113;
        v65 = v22;
        v66 = 2113;
        v67 = v31;
        v32 = "_processFetchForName: unexpected Process format for bundleID %{private}@: procName %{private}@ bundleName %{private}@";
        v33 = v21;
        v34 = OS_LOG_TYPE_FAULT;
LABEL_26:
        v35 = 32;
LABEL_27:
        _os_log_impl(&dword_23255B000, v33, v34, v32, &v62, v35);

        goto LABEL_28;
      }

LABEL_39:
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
      *a4 = 1;
      goto LABEL_29;
    }

    v56 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v57 = a1[5];
    v21 = v56;
    v22 = [v8 bundleName];
    v62 = 138478083;
    v63 = v57;
    v64 = 2113;
    v65 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested bundleID %{private}@ but get %{private}@";
LABEL_12:
    v24 = v21;
    v25 = OS_LOG_TYPE_ERROR;
LABEL_13:
    _os_log_impl(&dword_23255B000, v24, v25, v23, &v62, 0x16u);
LABEL_28:

    goto LABEL_29;
  }

  if (v17)
  {

LABEL_24:
    v43 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    v44 = a1[6];
    v21 = v43;
    v22 = [v8 bundleName];
    v31 = [v8 extensionName];
    v62 = 138478339;
    v63 = v44;
    v64 = 2113;
    v65 = v22;
    v66 = 2113;
    v67 = v31;
    v32 = "_processFetchForName: skipping Process return from processesWithName, require processName %{private}@ but has bundle %{private}@ extension %{private}@";
    v33 = v21;
    v34 = OS_LOG_TYPE_DEBUG;
    goto LABEL_26;
  }

  v42 = [v8 bundleName];

  if (v42)
  {
    goto LABEL_24;
  }

  v58 = a1[6];
  v59 = [v8 procName];
  LODWORD(v58) = [v58 isEqualToString:v59];

  if (v58)
  {
    goto LABEL_39;
  }

  v60 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v61 = a1[6];
    v21 = v60;
    v22 = [v8 procName];
    v62 = 138478083;
    v63 = v61;
    v64 = 2113;
    v65 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested processName %{private}@ but get %{private}@";
    goto LABEL_12;
  }

LABEL_29:
  v45 = *(*(a1[7] + 8) + 40);
  v46 = analyticsLogHandle;
  v47 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v45)
  {
    if (v47)
    {
      v49 = a1[5];
      v48 = a1[6];
      v50 = a1[4];
      v62 = 138478595;
      v63 = v48;
      v64 = 2113;
      v65 = v49;
      v66 = 2113;
      v67 = v50;
      v68 = 2113;
      v69 = v8;
      v51 = "_processFetchForName: match for request for processName %{private}@ bundle %{private}@ extension %{private}@ match %{private}@";
LABEL_34:
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, v51, &v62, 0x2Au);
    }
  }

  else if (v47)
  {
    v53 = a1[5];
    v52 = a1[6];
    v54 = a1[4];
    v62 = 138478595;
    v63 = v52;
    v64 = 2113;
    v65 = v53;
    v66 = 2113;
    v67 = v54;
    v68 = 2113;
    v69 = v8;
    v51 = "_processFetchForName: no match for requested processName %{private}@ bundle %{private}@ extension %{private}@ non-match %{private}@";
    goto LABEL_34;
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (id)_has1stPartyImpliedBundleNameBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v4 = behaviorCopy;
  if (_has1stPartyImpliedBundleNameBehavior__onceToken == -1)
  {
    if (behaviorCopy)
    {
LABEL_3:
      v5 = [_has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    [FlowAnalyticsEngine _has1stPartyImpliedBundleNameBehavior:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void __61__FlowAnalyticsEngine__has1stPartyImpliedBundleNameBehavior___block_invoke()
{
  v0 = _has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap;
  _has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap = &unk_2847EF480;
}

- (BOOL)_processNameIsValid:(id)valid
{
  if (valid)
  {
    return [valid isEqualToString:&stru_2847966D8] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_fetchFromProcCacheWithName:(id)name ofType:(unsigned int)type
{
  v65[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy || ![(AnalyticsWorkspace *)self->super.workspace persistent])
  {
    v8 = 0;
    goto LABEL_42;
  }

  p_processViaBundleNameCache = &self->processViaBundleNameCache;
  if (!self->processViaBundleNameCache || !self->processViaProcNameCache || !self->processViaExtensionNameCache)
  {
    typeCopy = type;
    v53 = nameCopy;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = *p_processViaBundleNameCache;
    v54 = &self->processViaBundleNameCache;
    *p_processViaBundleNameCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processViaProcNameCache = self->processViaProcNameCache;
    self->processViaProcNameCache = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processViaExtensionNameCache = self->processViaExtensionNameCache;
    self->processViaExtensionNameCache = v13;

    context = objc_autoreleasePoolPush();
    v15 = MEMORY[0x277CBE408];
    entityName = [MEMORY[0x277D6B548] entityName];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v18 = [v15 entityForName:entityName inManagedObjectContext:mainObjectContext];

    v19 = objc_alloc_init(MEMORY[0x277CBE428]);
    v50 = v18;
    [v19 setEntity:v18];
    [v19 setResultType:2];
    [v19 setAllocationType:1];
    v20 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v20 setName:@"objectID"];
    expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    [v20 setExpression:expressionForEvaluatedObject];

    [v20 setExpressionResultType:2000];
    v22 = *MEMORY[0x277D6B5C0];
    v65[0] = *MEMORY[0x277D6B5D0];
    v65[1] = v22;
    v65[2] = *MEMORY[0x277D6B5C8];
    v65[3] = v20;
    v48 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
    [v19 setPropertiesToFetch:v23];

    selfCopy = self;
    mainObjectContext2 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v59 = 0;
    v49 = v19;
    v26 = [mainObjectContext2 executeFetchRequest:v19 error:&v59];
    v47 = v59;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v56;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v55 + 1) + 8 * i);
          v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5D0]];
          v34 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5C0]];
          v35 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5C8]];
          v36 = [v32 objectForKeyedSubscript:@"objectID"];
          if (v36)
          {
            if (v35)
            {
              v37 = selfCopy->processViaExtensionNameCache;
              v38 = v36;
              v39 = v35;
            }

            else if (v34)
            {
              v37 = *v54;
              v38 = v36;
              v39 = v34;
            }

            else
            {
              v37 = selfCopy->processViaProcNameCache;
              v38 = v36;
              v39 = v33;
            }

            [(NSMutableDictionary *)v37 setObject:v38 forKeyedSubscript:v39];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v29);
    }

    self = selfCopy;
    [(AnalyticsWorkspace *)selfCopy->super.workspace reset];

    objc_autoreleasePoolPop(context);
    nameCopy = v53;
    type = typeCopy;
    p_processViaBundleNameCache = v54;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      goto LABEL_31;
    }

    if (type == 4)
    {
      v40 = 104;
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (type == 1)
  {
    v43 = [*p_processViaBundleNameCache objectForKeyedSubscript:nameCopy];
    if (v43 || ([(NSMutableDictionary *)self->processViaExtensionNameCache objectForKeyedSubscript:nameCopy], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v41 = v43;
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (type != 2)
  {
LABEL_33:
    v42 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109379;
      typeCopy2 = type;
      v62 = 2113;
      v63 = nameCopy;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "Attempting to retrieve using invalid cache type %u, for name %{private}@", buf, 0x12u);
    }

    v41 = 0;
    goto LABEL_36;
  }

LABEL_26:
  v40 = 112;
LABEL_30:
  p_processViaBundleNameCache = (&self->super.super.isa + v40);
LABEL_31:
  v41 = [*p_processViaBundleNameCache objectForKeyedSubscript:nameCopy];
  if (v41)
  {
LABEL_40:
    mainObjectContext3 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v8 = [mainObjectContext3 objectWithID:v41];

    goto LABEL_41;
  }

LABEL_36:
  v8 = 0;
LABEL_41:

LABEL_42:
  v45 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_insertProcCache:(id)cache ofType:(unsigned int)type underName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  nameCopy = name;
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (type > 4)
    {
      v11 = @"CacheTypeUnknown";
    }

    else
    {
      v11 = off_27898CA88[type];
    }

    *v21 = 138412803;
    *&v21[4] = v11;
    *&v21[12] = 2113;
    *&v21[14] = nameCopy;
    *&v21[22] = 2112;
    *&v21[24] = cacheCopy;
    v12 = v10;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "_insertProcCache %@ %{private}@ with %@", v21, 0x20u);
  }

  if (cacheCopy && nameCopy)
  {
    switch(type)
    {
      case 2u:
        objectID = [cacheCopy objectID];
        v14 = 112;
        goto LABEL_16;
      case 4u:
        objectID = [cacheCopy objectID];
        v14 = 104;
        goto LABEL_16;
      case 3u:
        objectID = [cacheCopy objectID];
        v14 = 96;
LABEL_16:
        [*(&self->super.super.isa + v14) setObject:objectID forKeyedSubscript:{nameCopy, *v21, *&v21[16], *&v21[24]}];
        goto LABEL_17;
    }

    v18 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      objectID2 = [cacheCopy objectID];
      *v21 = 67109635;
      *&v21[4] = type;
      *&v21[8] = 2113;
      *&v21[10] = nameCopy;
      *&v21[18] = 2112;
      *&v21[20] = objectID2;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Attempting to insert into invalid cache type %u, name %{private}@ for process %@", v21, 0x1Cu);
    }
  }

  else
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      objectID = v15;
      objectID3 = [cacheCopy objectID];
      *v21 = 138412546;
      *&v21[4] = nameCopy;
      *&v21[12] = 2112;
      *&v21[14] = objectID3;
      _os_log_impl(&dword_23255B000, objectID, OS_LOG_TYPE_ERROR, "Attempting to insert either no-name or no-process in cache: %@, name: %@", v21, 0x16u);

LABEL_17:
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromProcCache:(id)cache ofType:(unsigned int)type
{
  v18 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (type > 4)
    {
      v8 = @"CacheTypeUnknown";
    }

    else
    {
      v8 = off_27898CA88[type];
    }

    *v17 = 138412547;
    *&v17[4] = v8;
    *&v17[12] = 2113;
    *&v17[14] = cacheCopy;
    v9 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "_removeFromProcCache %@ %{private}@", v17, 0x16u);
  }

  if (cacheCopy)
  {
    switch(type)
    {
      case 2u:
        v10 = 112;
        goto LABEL_15;
      case 4u:
        v10 = 104;
        goto LABEL_15;
      case 3u:
        v10 = 96;
LABEL_15:
        [*(&self->super.super.isa + v10) removeObjectForKey:{cacheCopy, *v17, *&v17[16], v18}];
        goto LABEL_16;
    }

    v13 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = @"CacheTypeUnknown";
      if (type == 1)
      {
        v14 = @"CacheTypeBestMatch";
      }

      if (!type)
      {
        v14 = @"CacheTypeUndefined";
      }

      v15 = v14;
      *v17 = 138478083;
      *&v17[4] = cacheCopy;
      *&v17[12] = 2112;
      *&v17[14] = v15;
      v16 = v13;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Attempting to remove process with name %{private}@ but invalid cache type %@", v17, 0x16u);
    }
  }

  else
  {
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Attempting to remove no-name process from cache", v17, 2u);
    }
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLiveUsageinScope:(id)scope forTime:(id)time
{
  timeCopy = time;
  timeStamp = [scope timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v9 = v8;

  LODWORD(v10) = v9;
  if (v9 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = -v10;
  }

  return self->usageCoalescingSpanSecs > v10;
}

- (BOOL)_isLiveUsageInRollingWindow:(id)window forTime:(id)time
{
  timeCopy = time;
  timeStamp = [window timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v9 = v8;

  LODWORD(v10) = v9;
  if (v9 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = -v10;
  }

  return self->usageWindowUnitsCount * self->usageCoalescingSpanSecs >= v10;
}

- (id)_liveUsageFetchForProcess:(id)process
{
  v113 = *MEMORY[0x277D85DE8];
  processCopy = process;
  isApp = [processCopy isApp];
  v81 = processCopy;
  hintLiveUsage = [processCopy hintLiveUsage];
  selfCopy = self;
  if (hintLiveUsage)
  {
    currentSubscriberTag3 = [hintLiveUsage tag];
    if (currentSubscriberTag3)
    {
      v9 = [hintLiveUsage tag];
      ctShim = self->ctShim;
      if (ctShim)
      {
        currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
        if (currentSubscriberTag)
        {
          currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          v11 = 1;
        }

        else
        {
          v11 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }
      }

      else
      {
        v11 = 0;
        currentSubscriberTag2 = &unk_2847EF6C8;
      }

      currentSubscriberTag4 = [v9 isEqualToNumber:currentSubscriberTag2];
      if (v11)
      {
      }

      if (ctShim)
      {

        if (currentSubscriberTag4)
        {
LABEL_12:
          hintLiveUsage2 = [v81 hintLiveUsage];
          goto LABEL_33;
        }
      }

      else
      {

        if (currentSubscriberTag4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [v81 hasLiveUsage];
  v13 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
  if (v13)
  {
    v14 = *v99;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v99 != v14)
        {
          objc_enumerationMutation(obj);
        }

        currentSubscriberTag4 = *(*(&v98 + 1) + 8 * i);
        v16 = [currentSubscriberTag4 tag];
        v17 = selfCopy->ctShim;
        if (v17 && ([(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag], (currentSubscriberTag2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          currentSubscriberTag3 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v18 = 1;
          v19 = currentSubscriberTag3;
        }

        else
        {
          v18 = 0;
          v19 = &unk_2847EF6C8;
        }

        v20 = [v16 isEqualToNumber:v19];
        if (v18)
        {
        }

        if (v17)
        {
        }

        if (v20)
        {
          hintLiveUsage2 = currentSubscriberTag4;
          [v81 setHintLiveUsage:hintLiveUsage2];
          goto LABEL_32;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  hintLiveUsage2 = 0;
LABEL_32:

LABEL_33:
  date = [MEMORY[0x277CBEAA8] date];
  if (hintLiveUsage2)
  {
    v21 = analyticsLogHandle;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      name = [v81 name];
      v23 = selfCopy->ctShim;
      if (v23)
      {
        currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        if (currentSubscriberTag4)
        {
          currentSubscriberTag5 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v25 = 1;
        }

        else
        {
          v25 = 0;
          currentSubscriberTag5 = &unk_2847EF6C8;
        }
      }

      else
      {
        v25 = 0;
        currentSubscriberTag5 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v105 = isApp;
      v106 = 2112;
      v107 = name;
      v108 = 2048;
      v109 = hintLiveUsage2;
      v110 = 2112;
      v111 = currentSubscriberTag5;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "found LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
      if (v25)
      {
      }

      if (v23)
      {
      }
    }

    if (!isApp || [(FlowAnalyticsEngine *)selfCopy _isLiveUsageinScope:hintLiveUsage2 forTime:date])
    {
      goto LABEL_131;
    }

    v43 = analyticsLogHandle;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      name2 = [v81 name];
      v45 = selfCopy->ctShim;
      if (v45)
      {
        currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        if (currentSubscriberTag4)
        {
          currentSubscriberTag6 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v47 = 1;
        }

        else
        {
          v47 = 0;
          currentSubscriberTag6 = &unk_2847EF6C8;
        }
      }

      else
      {
        v47 = 0;
        currentSubscriberTag6 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v105 = 1;
      v106 = 2112;
      v107 = name2;
      v108 = 2048;
      v109 = hintLiveUsage2;
      v110 = 2112;
      v111 = currentSubscriberTag6;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "found LU hint but expired (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
      if (v47)
      {
      }

      if (v45)
      {
      }
    }

    goto LABEL_81;
  }

  if (!isApp)
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obja = [v81 hasLiveUsage];
    v26 = [obja countByEnumeratingWithState:&v90 objects:v102 count:16];
    if (!v26)
    {
      goto LABEL_97;
    }

    v27 = *v91;
    while (1)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v91 != v27)
        {
          objc_enumerationMutation(obja);
        }

        v29 = *(*(&v90 + 1) + 8 * j);
        v30 = [v29 tag];
        v31 = selfCopy->ctShim;
        if (v31)
        {
          currentSubscriberTag7 = [(CoreTelephonyShim *)v31 currentSubscriberTag];
          if (currentSubscriberTag7)
          {
            currentSubscriberTag8 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
            v34 = [v30 isEqualToNumber:currentSubscriberTag8];
          }

          else
          {
            v34 = [v30 isEqualToNumber:&unk_2847EF6C8];
          }

          if ((v34 & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          v35 = [v30 isEqualToNumber:&unk_2847EF6C8];

          if (!v35)
          {
            continue;
          }
        }

        kind = [v29 kind];
        v37 = [kind intValue] == 0;

        if (v37)
        {
          hintLiveUsage2 = v29;
          [v81 setHintLiveUsage:hintLiveUsage2];
          v38 = analyticsLogHandle;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            name3 = [v81 name];
            v40 = selfCopy->ctShim;
            if (v40)
            {
              kind = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
              if (kind)
              {
                currentSubscriberTag9 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                v42 = 1;
              }

              else
              {
                v42 = 0;
                currentSubscriberTag9 = &unk_2847EF6C8;
              }
            }

            else
            {
              v42 = 0;
              currentSubscriberTag9 = &unk_2847EF6C8;
            }

            *buf = 67109890;
            v105 = 0;
            v106 = 2112;
            v107 = name3;
            v108 = 2048;
            v109 = hintLiveUsage2;
            v110 = 2112;
            v111 = currentSubscriberTag9;
            _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "established LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
            if (v42)
            {
            }

            if (v40)
            {
            }
          }

          goto LABEL_117;
        }
      }

      v26 = [obja countByEnumeratingWithState:&v90 objects:v102 count:16];
      if (!v26)
      {
        goto LABEL_97;
      }
    }
  }

LABEL_81:
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v94 = 0u;
  obja = [v81 hasLiveUsage];
  v48 = [obja countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (!v48)
  {
    goto LABEL_97;
  }

  v49 = *v95;
  while (2)
  {
    for (k = 0; k != v48; ++k)
    {
      if (*v95 != v49)
      {
        objc_enumerationMutation(obja);
      }

      v51 = *(*(&v94 + 1) + 8 * k);
      v52 = [v51 tag];
      v53 = selfCopy->ctShim;
      if (v53)
      {
        currentSubscriberTag10 = [(CoreTelephonyShim *)v53 currentSubscriberTag];
        if (currentSubscriberTag10)
        {
          hintLiveUsage2 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v55 = [v52 isEqualToNumber:hintLiveUsage2];
        }

        else
        {
          v55 = [v52 isEqualToNumber:&unk_2847EF6C8];
        }

        if ((v55 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v56 = [v52 isEqualToNumber:&unk_2847EF6C8];

        if (!v56)
        {
          continue;
        }
      }

      kind2 = [v51 kind];
      v58 = [kind2 intValue] == 0;

      if (!v58 && [(FlowAnalyticsEngine *)selfCopy _isLiveUsageinScope:v51 forTime:date])
      {
        v59 = analyticsLogHandle;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v81 name];
          v61 = selfCopy->ctShim;
          if (v61)
          {
            hintLiveUsage2 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
            if (hintLiveUsage2)
            {
              currentSubscriberTag11 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
              v63 = 1;
            }

            else
            {
              v63 = 0;
              currentSubscriberTag11 = &unk_2847EF6C8;
            }
          }

          else
          {
            v63 = 0;
            currentSubscriberTag11 = &unk_2847EF6C8;
          }

          *buf = 67109890;
          v105 = 1;
          v106 = 2112;
          v107 = name4;
          v108 = 2048;
          v109 = 0;
          v110 = 2112;
          v111 = currentSubscriberTag11;
          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "established LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
          if (v63)
          {
          }

          if (v61)
          {
          }
        }

        hintLiveUsage2 = v51;
        [v81 setHintLiveUsage:hintLiveUsage2];
        goto LABEL_117;
      }
    }

    v48 = [obja countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_97:
  hintLiveUsage2 = 0;
LABEL_117:

  if (!hintLiveUsage2)
  {
    hintLiveUsage2 = [(UsageAnalytics *)selfCopy->uspace createEntity];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:isApp];
    [hintLiveUsage2 setKind:v64];

    date2 = [MEMORY[0x277CBEAA8] date];
    [hintLiveUsage2 setTimeStamp:date2];
    v66 = selfCopy->ctShim;
    if (v66)
    {
      currentSubscriberTag12 = [(CoreTelephonyShim *)v66 currentSubscriberTag];
      if (currentSubscriberTag12)
      {
        currentSubscriberTag13 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        [hintLiveUsage2 setTag:currentSubscriberTag13];
      }

      else
      {
        [hintLiveUsage2 setTag:&unk_2847EF6C8];
      }
    }

    else
    {
      [hintLiveUsage2 setTag:&unk_2847EF6C8];
    }

    [v81 setHintLiveUsage:hintLiveUsage2];
    v69 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v70 = v69;
      name5 = [v81 name];
      v72 = [hintLiveUsage2 tag];
      *buf = 67109890;
      v105 = isApp;
      v106 = 2112;
      v107 = name5;
      v108 = 2048;
      v109 = hintLiveUsage2;
      v110 = 2112;
      v111 = v72;
      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "creating LU record (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
    }

    [v81 addHasLiveUsageObject:hintLiveUsage2];
    v73 = [hintLiveUsage2 tag];
    v74 = [(FlowAnalyticsEngine *)selfCopy _liveUsageCountForProcess:v81 subscriberTag:v73];

    hasLiveUsage = [v81 hasLiveUsage];
    v76 = [hasLiveUsage count] == 1;

    if (v76)
    {
      [v81 setFirstTimeStamp:date2];
    }

    else if (v74 > selfCopy->usageWindowUnitsCount)
    {
      queue = [(AnalyticsEngineCore *)selfCopy queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke;
      block[3] = &unk_27898A328;
      block[4] = selfCopy;
      v88 = v81;
      v89 = hintLiveUsage2;
      dispatch_async(queue, block);
    }
  }

LABEL_131:

  v78 = *MEMORY[0x277D85DE8];

  return hintLiveUsage2;
}

void __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) tag];
  [v1 _liveUsagePackForProcess:v2 subscriberTag:v3];
}

- (unint64_t)_liveUsageCountForProcess:(id)process subscriberTag:(id)tag
{
  v26 = *MEMORY[0x277D85DE8];
  processCopy = process;
  tagCopy = tag;
  if (tagCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    hasLiveUsage = [processCopy hasLiveUsage];
    v8 = [hasLiveUsage countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(hasLiveUsage);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) tag];
          v14 = [v13 isEqualToNumber:tagCopy];

          v10 += v14;
        }

        v9 = [hasLiveUsage countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v15 = _liveUsageCountForProcess_subscriberTag__errCount;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * _liveUsageCountForProcess_subscriberTag__errCount, 1) <= 0x1999999999999999uLL)
    {
      v16 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v24 = _liveUsageCountForProcess_subscriberTag__errCount;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "_liveUsageCountForProcess: encountered unexpected nil tag (%llu previous errors)", buf, 0xCu);
      }

      v15 = _liveUsageCountForProcess_subscriberTag__errCount;
    }

    v10 = 0;
    _liveUsageCountForProcess_subscriberTag__errCount = v15 + 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_liveUsagePackForProcess:(id)process subscriberTag:(id)tag
{
  v74 = *MEMORY[0x277D85DE8];
  processCopy = process;
  tagCopy = tag;
  if (tagCopy)
  {
    v54 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->usageWindowUnitsCount];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      name = [processCopy name];
      *buf = 138412802;
      v65 = name;
      v66 = 2048;
      v67 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      v68 = 2112;
      v69 = tagCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "packing LU records for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    hasLiveUsage = [processCopy hasLiveUsage];
    v12 = [hasLiveUsage countByEnumeratingWithState:&v60 objects:v73 count:16];
    v53 = processCopy;
    if (v12)
    {
      v13 = v12;
      firstObject = 0;
      v15 = *v61;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(hasLiveUsage);
          }

          v17 = *(*(&v60 + 1) + 8 * i);
          v18 = [v17 tag];
          v19 = [v18 isEqualToNumber:tagCopy];

          if (v19)
          {
            kind = [v17 kind];
            intValue = [kind intValue];

            if (intValue)
            {
              if (![(FlowAnalyticsEngine *)self _isLiveUsageInRollingWindow:v17 forTime:date])
              {
                [v54 addObject:v17];
              }
            }

            else
            {
              v22 = v17;

              firstObject = v22;
            }
          }
        }

        v13 = [hasLiveUsage countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v13);

      processCopy = v53;
      v23 = v54;
      if (firstObject)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v23 = v54;
    }

    if (![v23 count])
    {
      firstObject = 0;
      goto LABEL_42;
    }

    firstObject = [v23 firstObject];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [firstObject setKind:v26];

    [v23 removeObject:firstObject];
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      name2 = [processCopy name];
      v30 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      *buf = 138412802;
      v65 = name2;
      v66 = 2048;
      v67 = v30;
      v68 = 2112;
      v69 = tagCopy;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "packing LU records, with promotion, for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    if (!firstObject)
    {
      goto LABEL_42;
    }

LABEL_29:
    if ([v23 count])
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v31 = v23;
      v32 = [v31 countByEnumeratingWithState:&v56 objects:v72 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v57;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v57 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v56 + 1) + 8 * j);
            [(FlowAnalyticsEngine *)self _applyCountsTo:firstObject fromLiveUsage:v36 mustReset:0];
            timeStamp = [firstObject timeStamp];
            [timeStamp timeIntervalSinceReferenceDate];
            v39 = v38;
            timeStamp2 = [v36 timeStamp];
            [timeStamp2 timeIntervalSinceReferenceDate];
            v42 = v41;

            if (v39 > v42)
            {
              timeStamp3 = [v36 timeStamp];
              [firstObject setTimeStamp:timeStamp3];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v56 objects:v72 count:16];
        }

        while (v33);
      }

      [(UsageAnalytics *)self->uspace removeEntities:v31];
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        processCopy = v53;
        name3 = [v53 name];
        v47 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v53 subscriberTag:tagCopy];
        *buf = 138413058;
        v65 = name3;
        v66 = 2112;
        v67 = tagCopy;
        v68 = 2048;
        v69 = v47;
        v70 = 2112;
        v71 = firstObject;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "packing LU records for %@, subscriber tag: %@, residual count: %lu, mono contents: %@", buf, 0x2Au);
      }

      else
      {
        processCopy = v53;
      }

      v23 = v54;
LABEL_46:

      goto LABEL_47;
    }

LABEL_42:
    v48 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v49 = v48;
      name4 = [processCopy name];
      v51 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      *buf = 138412802;
      v65 = name4;
      v66 = 2112;
      v67 = tagCopy;
      v68 = 2048;
      v69 = v51;
      _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "packing LU records for %@, nothing left to do, subscriber tag: %@, residual count: %lu", buf, 0x20u);
    }

    goto LABEL_46;
  }

  firstObject = [MEMORY[0x277CBEAA8] date];
  if (!_liveUsagePackForProcess_subscriberTag__lastLoggedTime || ([_liveUsagePackForProcess_subscriberTag__lastLoggedTime timeIntervalSinceDate:firstObject], v24 < -180.0))
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v65 = _liveUsagePackForProcess_subscriberTag__errCount;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "_liveUsagePackForProcess: encountered unexpected nil tag (%llu previous errors)", buf, 0xCu);
    }

    objc_storeStrong(&_liveUsagePackForProcess_subscriberTag__lastLoggedTime, firstObject);
  }

  ++_liveUsagePackForProcess_subscriberTag__errCount;
LABEL_47:

  v52 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_clearUninstalledAppEntries
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up entries of uninstalled Apps", buf, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  if (defaultWorkspace)
  {
    v5 = [(AppAnalytics *)self->aspace fetchAllEntityDictionariesWithProperties:&unk_2847EEB50];
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__5;
    v23 = __Block_byref_object_dispose__5;
    v24 = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__FlowAnalyticsEngine__clearUninstalledAppEntries__block_invoke;
    v15[3] = &unk_27898BEB0;
    v18 = buf;
    v16 = defaultWorkspace;
    v7 = v6;
    v17 = v7;
    [v5 enumerateObjectsUsingBlock:v15];
    v8 = [v7 count];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"bundleName", v7];
      v10 = [(AppAnalytics *)self->aspace removeEntitiesMatching:v9];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 134218240;
        v26 = v8;
        v27 = 2048;
        v28 = v10;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu apps to be removed, removed %ld", v25, 0x16u);
      }
    }

    else
    {
      v12 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "No Apps to be removed", v25, 2u);
      }

      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __50__FlowAnalyticsEngine__clearUninstalledAppEntries__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"bundleName"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  result = [*(*(*(a1 + 48) + 8) + 40) length];
  if (result)
  {
    result = [*(a1 + 32) applicationIsInstalled:*(*(*(a1 + 48) + 8) + 40)];
    if ((result & 1) == 0)
    {
      v7 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@ is not installed, marked for removal", &v10, 0xCu);
      }

      result = [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_performAppDomainUsageAnalytics
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:0.0];
  workspace = self->super.workspace;
  queue = [(AnalyticsEngineCore *)self queue];
  v6 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

  v35 = 0;
  v7 = [v6 exportAndUnarchiveItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" lastUpdated:&v35 verificationBlock:&__block_literal_global_495];
  v8 = v35;
  v9 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    [v8 timeIntervalSince1970];
    v12 = formattedDateStringForTimeInterval(v11);
    [v7 timeIntervalSince1970];
    v14 = formattedDateStringForTimeInterval(v13);
    *buf = 138412546;
    v37 = v12;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Last DMA run at: %@ ADUs captured till: %@", buf, 0x16u);
  }

  if (v7)
  {
    [v3 timeIntervalSinceDate:v8];
    if (v15 < 86400.0)
    {
      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Not posting an APR DB metric since insufficient time has passed since last DMA.", buf, 2u);
      }

      goto LABEL_26;
    }

    [v3 timeIntervalSinceDate:v7];
    if (v18 > 604800.0)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:timeIntervalFrom1970ToMidnight(v3) + -604800.0];

      [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v19];
      v7 = v19;
    }

    v20 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v7 sinceDate:86400.0];
    v21 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      [v7 timeIntervalSince1970];
      v24 = formattedDateStringForTimeInterval(v23);
      [v20 timeIntervalSince1970];
      v26 = formattedDateStringForTimeInterval(v25);
      *buf = 138412546;
      v37 = v24;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Posting APR DB metric, capturing ADUs from: %@ to:%@", buf, 0x16u);
    }

    v27 = [(FlowAnalyticsEngine *)self _performSystemLevelAppDomainUsageAnalyticsFromDate:v7 toDate:v20];
    v28 = [(FlowAnalyticsEngine *)self _performAppLevelAppDomainUsageAnalyticsFromDate:v7 toDate:v20];
    if (v27 || v28)
    {
      v31 = [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v20];
      v29 = domainTrackingLogHandle;
      if (v31)
      {
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v30 = "Updated APR telemetry captured timestamp.";
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v30 = "Failed to update APR telemetry captured timestamp.";
        v32 = v29;
        v33 = OS_LOG_TYPE_ERROR;
        goto LABEL_24;
      }
    }

    else
    {
      v29 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v30 = "Both analytics failed to complete; not updating APR telemetry timestamp.";
LABEL_21:
        v32 = v29;
        v33 = OS_LOG_TYPE_DEBUG;
LABEL_24:
        _os_log_impl(&dword_23255B000, v32, v33, v30, buf, 2u);
      }
    }

    goto LABEL_26;
  }

  v17 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "No APR DB metric timestamp found, adding one now.", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:timeIntervalFrom1970ToMidnight(v3)];
  [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v7];
LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __54__FlowAnalyticsEngine__performAppDomainUsageAnalytics__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)field forPredicate:(id)predicate
{
  predicateCopy = predicate;
  v6 = functionOnKeyDescriptor();
  v7 = objc_alloc_init(MEMORY[0x277D6B510]);
  [v7 addAggregateProperty:v6];
  LOBYTE(v13) = 1;
  v8 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:MEMORY[0x277CBEBF8] fetchRequestProperties:v7 predicate:predicateCopy sortDescriptors:0 limit:0 offset:0 includeObjectID:v13];

  firstObject = [v8 firstObject];
  v10 = [firstObject objectForKeyedSubscript:@"total"];
  integerValue = [v10 integerValue];

  return integerValue;
}

- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate
{
  v83[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = gEffectiveUserId;
  toDateCopy = toDate;
  dateCopy = date;
  v74 = [v6 predicateWithFormat:@"effectiveUserId == %u", v7];
  v66 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:?];
  toDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, dateCopy, toDateCopy];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainClassification == %u", 2];
  v14 = MEMORY[0x277CCA920];
  v83[0] = toDateCopy;
  v83[1] = v11;
  v72 = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = MEMORY[0x277CCA920];
  v82[0] = toDateCopy;
  v82[1] = v12;
  v71 = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = MEMORY[0x277CCA920];
  v81[0] = toDateCopy;
  v81[1] = v13;
  v70 = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v16];
  v58 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v19];
  v57 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v22];
  v24 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:toDateCopy];
  v69 = v16;
  v25 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v16];
  v67 = v22;
  v26 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v22];
  v68 = v19;
  v27 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v19];
  v73 = toDateCopy;
  v28 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:toDateCopy];
  v29 = v24;
  v79[0] = @"trackerUniqueCount";
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  v80[0] = v65;
  v79[1] = @"trackerTotalCount";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  v80[1] = v64;
  v79[2] = @"trackerUniqueRatio";
  v30 = -1.0;
  v31 = -1.0;
  if (v24)
  {
    v31 = (v23 / v29);
  }

  v32 = v28;
  v63 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  v80[2] = v63;
  v79[3] = @"trackerTotalRatio";
  if (v28)
  {
    v30 = (v25 / v32);
  }

  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  v80[3] = v62;
  v79[4] = @"appInitiatedUniqueCount";
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v58];
  v80[4] = v61;
  v79[5] = @"appInitiatedTotalCount";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
  v80[5] = v60;
  v79[6] = @"appInitiatedUniqueRatio";
  v33 = -1.0;
  v34 = -1.0;
  if (v24)
  {
    v34 = (v58 / v29);
  }

  v59 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  v80[6] = v59;
  v79[7] = @"appInitiatedTotalRatio";
  if (v28)
  {
    v33 = (v27 / v32);
  }

  v56 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
  v80[7] = v56;
  v79[8] = @"ipAddressUniqueCount";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
  v80[8] = v35;
  v79[9] = @"ipAddressTotalCount";
  v36 = v26;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v80[9] = v37;
  v79[10] = @"ipAddressUniqueRatio";
  v38 = -1.0;
  v39 = -1.0;
  if (v24)
  {
    v39 = (v57 / v29);
  }

  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v80[10] = v40;
  v79[11] = @"ipAddressTotalRatio";
  if (v28)
  {
    v38 = (v36 / v32);
  }

  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  v80[11] = v41;
  v79[12] = @"uniqueCount";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  v80[12] = v42;
  v79[13] = @"totalCount";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
  v80[13] = v43;
  v79[14] = @"totalADUCount";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
  v80[14] = v44;
  v79[15] = @"appTrackingEnabled";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->appTrackingEnabled];
  v80[15] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:16];

  v47 = v46;
  v48 = AnalyticsSendEventLazy();
  v49 = domainTrackingLogHandle;
  if (v48)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v76 = gEffectiveUserId;
      v77 = 2112;
      v78 = v47;
      v50 = "Posted APR DB metrics for user %u: %@";
      v51 = v49;
      v52 = OS_LOG_TYPE_DEBUG;
      v53 = 18;
LABEL_18:
      _os_log_impl(&dword_23255B000, v51, v52, v50, buf, v53);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v50 = "Failed to post APR DB metrics.";
    v51 = v49;
    v52 = OS_LOG_TYPE_ERROR;
    v53 = 2;
    goto LABEL_18;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v48;
}

- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  v8 = +[SystemProperties sharedInstance];
  internalBuild = [v8 internalBuild];

  if (internalBuild)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
    toDateCopy = [MEMORY[0x277CCA920] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, dateCopy, toDateCopy];
    v13 = countOfKeyDescriptor();
    v14 = objc_alloc_init(MEMORY[0x277D6B510]);
    [v14 addGroupByProperty:@"bundleName"];
    [v14 addAggregateProperty:v13];
    LOBYTE(v21) = 1;
    v15 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:&unk_2847EEB68 fetchRequestProperties:v14 predicate:toDateCopy sortDescriptors:0 limit:0 offset:0 includeObjectID:v21];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke;
    v22[3] = &unk_27898C620;
    v16 = toDateCopy;
    v23 = v16;
    v17 = v10;
    v24 = v17;
    v18 = v11;
    v25 = v18;
    selfCopy = self;
    v27 = &v28;
    [v15 enumerateObjectsUsingBlock:v22];
    v19 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

void __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke(uint64_t a1, void *a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleName"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"bundleName == %@", v4];
    v6 = MEMORY[0x277CCA920];
    v7 = *(a1 + 40);
    v40[0] = *(a1 + 32);
    v40[1] = v5;
    v40[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
    v9 = [v6 andPredicateWithSubpredicates:v8];

    v10 = MEMORY[0x277CCA920];
    v39[0] = *(a1 + 32);
    v39[1] = v5;
    v39[2] = *(a1 + 48);
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v25 = v9;
    v13 = [*(*(a1 + 56) + 488) countEntitiesMatching:v9];
    v14 = [*(*(a1 + 56) + 488) countEntitiesMatching:v12];
    v15 = [*(a1 + 56) _appBundleIdentifierIsWebBrowser:v4];
    v16 = v3;
    v26 = v16;
    v17 = v4;
    if (AnalyticsSendEventLazy())
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v18 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v24 = gEffectiveUserId;
        v19 = v18;
        v20 = [v16 objectForKeyedSubscript:@"count"];
        *buf = 67110403;
        v28 = v24;
        v29 = 2113;
        v30 = v17;
        v31 = 2112;
        v32 = v20;
        v33 = 2048;
        v34 = v13;
        v35 = 2048;
        v36 = v14;
        v37 = 1024;
        v38 = v15;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Posted APR DB metric for user %u, Bundle Name = %{private}@, total ADU count = %@, tracker ADU count = %lu, app-initiated ADUs= %lu, isBrowser = %d", buf, 0x36u);
      }
    }

    else
    {
      v22 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to post APR app telemetry.", buf, 2u);
      }
    }
  }

  else
  {
    v21 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Failed to post APR app telemetry; Bundle Name is nil.", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke_2(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"appADUCount";
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v11[0] = v2;
  v10[1] = @"appInitiatedADUCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = *(a1 + 40);
  v11[1] = v3;
  v11[2] = v4;
  v10[2] = @"appName";
  v10[3] = @"appTrackerADUCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v11[3] = v5;
  v10[4] = @"isBrowser";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_performAppPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearUninstalledAppEntries = [(FlowAnalyticsEngine *)self _clearUninstalledAppEntries];
  if (replyCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearUninstalledAppEntries];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    replyCopy[2](replyCopy, v7, 0);
  }
}

- (void)performAppPeriodicTasksComplete:(id)complete error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = analyticsLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = errorCopy;
      v8 = "Periodic app tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = completeCopy;
    v8 = "Periodic app tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppPeriodicTasksWithReply:reply];
  }
}

- (void)_applyCountsTo:(id)to fromLiveUsage:(id)usage mustReset:(BOOL)reset
{
  if (reset)
  {
    usageCopy = usage;
    toCopy = to;
    wwanIN = [usageCopy wwanIN];
    [toCopy setWwanIN:wwanIN];

    wwanIN_exp = [usageCopy wwanIN_exp];
    [toCopy setWwanIN_exp:wwanIN_exp];

    wwanOUT = [usageCopy wwanOUT];
    [toCopy setWwanOUT:wwanOUT];

    wwanOUT_exp = [usageCopy wwanOUT_exp];
    [toCopy setWwanOUT_exp:wwanOUT_exp];

    wifiIN = [usageCopy wifiIN];
    [toCopy setWifiIN:wifiIN];

    wifiIN_exp = [usageCopy wifiIN_exp];
    [toCopy setWifiIN_exp:wifiIN_exp];

    wifiOUT = [usageCopy wifiOUT];
    [toCopy setWifiOUT:wifiOUT];

    wifiOUT_exp = [usageCopy wifiOUT_exp];
    [toCopy setWifiOUT_exp:wifiOUT_exp];

    wiredIN = [usageCopy wiredIN];
    [toCopy setWiredIN:wiredIN];

    wiredIN_exp = [usageCopy wiredIN_exp];
    [toCopy setWiredIN_exp:wiredIN_exp];

    wiredOUT = [usageCopy wiredOUT];
    [toCopy setWiredOUT:wiredOUT];

    wiredOUT_exp = [usageCopy wiredOUT_exp];
    [toCopy setWiredOUT_exp:wiredOUT_exp];

    btIN = [usageCopy btIN];
    [toCopy setBtIN:btIN];

    btIN_exp = [usageCopy btIN_exp];
    [toCopy setBtIN_exp:btIN_exp];

    btOUT = [usageCopy btOUT];
    [toCopy setBtOUT:btOUT];

    btOUT_exp = [usageCopy btOUT_exp];
    [toCopy setBtOUT_exp:btOUT_exp];

    v24 = [usageCopy xIN];
    [toCopy setXIN:v24];

    xIN_exp = [usageCopy xIN_exp];
    [toCopy setXIN_exp:xIN_exp];

    xOUT = [usageCopy xOUT];
    [toCopy setXOUT:xOUT];

    xOUT_exp = [usageCopy xOUT_exp];
    [toCopy setXOUT_exp:xOUT_exp];

    allFlows = [usageCopy allFlows];
    [toCopy setAllFlows:allFlows];

    jumboFlows = [usageCopy jumboFlows];

    [toCopy setJumboFlows:jumboFlows];
  }

  else
  {
    v29 = MEMORY[0x277CCABB0];
    usageCopy2 = usage;
    toCopy2 = to;
    wwanIN2 = [usageCopy2 wwanIN];
    [wwanIN2 doubleValue];
    v34 = v33;
    wwanIN3 = [toCopy2 wwanIN];
    [wwanIN3 doubleValue];
    v37 = [v29 numberWithDouble:v34 + v36];
    [toCopy2 setWwanIN:v37];

    v38 = MEMORY[0x277CCABB0];
    wwanIN_exp2 = [usageCopy2 wwanIN_exp];
    [wwanIN_exp2 doubleValue];
    v41 = v40;
    wwanIN_exp3 = [toCopy2 wwanIN_exp];
    [wwanIN_exp3 doubleValue];
    v44 = [v38 numberWithDouble:v41 + v43];
    [toCopy2 setWwanIN_exp:v44];

    v45 = MEMORY[0x277CCABB0];
    wwanOUT2 = [usageCopy2 wwanOUT];
    [wwanOUT2 doubleValue];
    v48 = v47;
    wwanOUT3 = [toCopy2 wwanOUT];
    [wwanOUT3 doubleValue];
    v51 = [v45 numberWithDouble:v48 + v50];
    [toCopy2 setWwanOUT:v51];

    v52 = MEMORY[0x277CCABB0];
    wwanOUT_exp2 = [usageCopy2 wwanOUT_exp];
    [wwanOUT_exp2 doubleValue];
    v55 = v54;
    wwanOUT_exp3 = [toCopy2 wwanOUT_exp];
    [wwanOUT_exp3 doubleValue];
    v58 = [v52 numberWithDouble:v55 + v57];
    [toCopy2 setWwanOUT_exp:v58];

    v59 = MEMORY[0x277CCABB0];
    wifiIN2 = [usageCopy2 wifiIN];
    [wifiIN2 doubleValue];
    v62 = v61;
    wifiIN3 = [toCopy2 wifiIN];
    [wifiIN3 doubleValue];
    v65 = [v59 numberWithDouble:v62 + v64];
    [toCopy2 setWifiIN:v65];

    v66 = MEMORY[0x277CCABB0];
    wifiIN_exp2 = [usageCopy2 wifiIN_exp];
    [wifiIN_exp2 doubleValue];
    v69 = v68;
    wifiIN_exp3 = [toCopy2 wifiIN_exp];
    [wifiIN_exp3 doubleValue];
    v72 = [v66 numberWithDouble:v69 + v71];
    [toCopy2 setWifiIN_exp:v72];

    v73 = MEMORY[0x277CCABB0];
    wifiOUT2 = [usageCopy2 wifiOUT];
    [wifiOUT2 doubleValue];
    v76 = v75;
    wifiOUT3 = [toCopy2 wifiOUT];
    [wifiOUT3 doubleValue];
    v79 = [v73 numberWithDouble:v76 + v78];
    [toCopy2 setWifiOUT:v79];

    v80 = MEMORY[0x277CCABB0];
    wifiOUT_exp2 = [usageCopy2 wifiOUT_exp];
    [wifiOUT_exp2 doubleValue];
    v83 = v82;
    wifiOUT_exp3 = [toCopy2 wifiOUT_exp];
    [wifiOUT_exp3 doubleValue];
    v86 = [v80 numberWithDouble:v83 + v85];
    [toCopy2 setWifiOUT_exp:v86];

    v87 = MEMORY[0x277CCABB0];
    wiredIN2 = [usageCopy2 wiredIN];
    [wiredIN2 doubleValue];
    v90 = v89;
    wiredIN3 = [toCopy2 wiredIN];
    [wiredIN3 doubleValue];
    v93 = [v87 numberWithDouble:v90 + v92];
    [toCopy2 setWiredIN:v93];

    v94 = MEMORY[0x277CCABB0];
    wiredIN_exp2 = [usageCopy2 wiredIN_exp];
    [wiredIN_exp2 doubleValue];
    v97 = v96;
    wiredIN_exp3 = [toCopy2 wiredIN_exp];
    [wiredIN_exp3 doubleValue];
    v100 = [v94 numberWithDouble:v97 + v99];
    [toCopy2 setWiredIN_exp:v100];

    v101 = MEMORY[0x277CCABB0];
    wiredOUT2 = [usageCopy2 wiredOUT];
    [wiredOUT2 doubleValue];
    v104 = v103;
    wiredOUT3 = [toCopy2 wiredOUT];
    [wiredOUT3 doubleValue];
    v106 = [v101 numberWithDouble:v104 + v106];
    [toCopy2 setWiredOUT:v106];

    v108 = MEMORY[0x277CCABB0];
    wiredOUT_exp2 = [usageCopy2 wiredOUT_exp];
    [wiredOUT_exp2 doubleValue];
    v111 = v110;
    wiredOUT_exp3 = [toCopy2 wiredOUT_exp];
    [wiredOUT_exp3 doubleValue];
    v113 = [v108 numberWithDouble:v111 + v113];
    [toCopy2 setWiredOUT_exp:v113];

    v115 = MEMORY[0x277CCABB0];
    btIN2 = [usageCopy2 btIN];
    [btIN2 doubleValue];
    v118 = v117;
    btIN3 = [toCopy2 btIN];
    [btIN3 doubleValue];
    v120 = [v115 numberWithDouble:v118 + v120];
    [toCopy2 setBtIN:v120];

    v122 = MEMORY[0x277CCABB0];
    btIN_exp2 = [usageCopy2 btIN_exp];
    [btIN_exp2 doubleValue];
    v125 = v124;
    btIN_exp3 = [toCopy2 btIN_exp];
    [btIN_exp3 doubleValue];
    v127 = [v122 numberWithDouble:v125 + v127];
    [toCopy2 setBtIN_exp:v127];

    v129 = MEMORY[0x277CCABB0];
    btOUT2 = [usageCopy2 btOUT];
    [btOUT2 doubleValue];
    v132 = v131;
    btOUT3 = [toCopy2 btOUT];
    [btOUT3 doubleValue];
    v134 = [v129 numberWithDouble:v132 + v134];
    [toCopy2 setBtOUT:v134];

    v136 = MEMORY[0x277CCABB0];
    btOUT_exp2 = [usageCopy2 btOUT_exp];
    [btOUT_exp2 doubleValue];
    v139 = v138;
    btOUT_exp3 = [toCopy2 btOUT_exp];
    [btOUT_exp3 doubleValue];
    v141 = [v136 numberWithDouble:v139 + v141];
    [toCopy2 setBtOUT_exp:v141];

    v143 = MEMORY[0x277CCABB0];
    v144 = [usageCopy2 xIN];
    [v144 doubleValue];
    v146 = v145;
    v147 = [toCopy2 xIN];
    [v147 doubleValue];
    v148 = [v143 numberWithDouble:v146 + v148];
    [toCopy2 setXIN:v148];

    v150 = MEMORY[0x277CCABB0];
    xIN_exp2 = [usageCopy2 xIN_exp];
    [xIN_exp2 doubleValue];
    v153 = v152;
    xIN_exp3 = [toCopy2 xIN_exp];
    [xIN_exp3 doubleValue];
    v155 = [v150 numberWithDouble:v153 + v155];
    [toCopy2 setXIN_exp:v155];

    v157 = MEMORY[0x277CCABB0];
    xOUT2 = [usageCopy2 xOUT];
    [xOUT2 doubleValue];
    v160 = v159;
    xOUT3 = [toCopy2 xOUT];
    [xOUT3 doubleValue];
    v162 = [v157 numberWithDouble:v160 + v162];
    [toCopy2 setXOUT:v162];

    v164 = MEMORY[0x277CCABB0];
    xOUT_exp2 = [usageCopy2 xOUT_exp];
    [xOUT_exp2 doubleValue];
    v167 = v166;
    xOUT_exp3 = [toCopy2 xOUT_exp];
    [xOUT_exp3 doubleValue];
    v169 = [v164 numberWithDouble:v167 + v169];
    [toCopy2 setXOUT_exp:v169];

    v171 = MEMORY[0x277CCABB0];
    allFlows2 = [usageCopy2 allFlows];
    [allFlows2 doubleValue];
    v174 = v173;
    allFlows3 = [toCopy2 allFlows];
    [allFlows3 doubleValue];
    v176 = [v171 numberWithDouble:v174 + v176];
    [toCopy2 setAllFlows:v176];

    v178 = MEMORY[0x277CCABB0];
    jumboFlows = [usageCopy2 jumboFlows];

    [jumboFlows doubleValue];
    v180 = v179;
    toCopy = [toCopy2 jumboFlows];
    [toCopy doubleValue];
    v181 = [v178 numberWithDouble:v180 + v181];
    [toCopy2 setJumboFlows:v181];
  }
}

- (void)_updateLiveUsage:(id)usage wifiIn:(int64_t)in wifiOut:(int64_t)out cellIn:(int64_t)cellIn cellOut:(int64_t)cellOut wiredIn:(int64_t)wiredIn wiredOut:(int64_t)wiredOut btIn:(int64_t)self0 btOut:(int64_t)self1 xIn:(int64_t)self2 xOut:(int64_t)self3 isJumboFlow:(BOOL)self4 isExpensive:(BOOL)self5 closing:(BOOL)self6
{
  closingCopy2 = closing;
  flowCopy2 = flow;
  xOutCopy2 = xOut;
  usageCopy = usage;
  v118 = usageCopy;
  if (cellOut | cellIn)
  {
    v25 = MEMORY[0x277CCABB0];
    wwanIN = [usageCopy wwanIN];
    [wwanIN doubleValue];
    cellInCopy = cellIn;
    cellIn = [v25 numberWithDouble:v28 + cellIn];
    [v118 setWwanIN:cellIn];

    closingCopy2 = closing;
    v30 = MEMORY[0x277CCABB0];
    wwanOUT = [v118 wwanOUT];
    [wwanOUT doubleValue];
    cellOutCopy = cellOut;
    cellOut = [v30 numberWithDouble:v33 + cellOut];
    [v118 setWwanOUT:cellOut];

    flowCopy2 = flow;
    xOutCopy2 = xOut;
    usageCopy = v118;
    if (expensive)
    {
      v35 = MEMORY[0x277CCABB0];
      wwanIN_exp = [v118 wwanIN_exp];
      [wwanIN_exp doubleValue];
      cellInCopy = [v35 numberWithDouble:v37 + cellInCopy];
      [v118 setWwanIN_exp:cellInCopy];

      v39 = MEMORY[0x277CCABB0];
      wwanOUT_exp = [v118 wwanOUT_exp];
      [wwanOUT_exp doubleValue];
      cellOutCopy = [v39 numberWithDouble:v41 + cellOutCopy];
      [v118 setWwanOUT_exp:cellOutCopy];

      usageCopy = v118;
    }
  }

  if (out | in)
  {
    v43 = MEMORY[0x277CCABB0];
    wifiIN = [v118 wifiIN];
    [wifiIN doubleValue];
    inCopy = in;
    v47 = [v43 numberWithDouble:v46 + in];
    [v118 setWifiIN:v47];

    v48 = MEMORY[0x277CCABB0];
    wifiOUT = [v118 wifiOUT];
    [wifiOUT doubleValue];
    outCopy = out;
    v52 = [v48 numberWithDouble:v51 + out];
    [v118 setWifiOUT:v52];

    usageCopy = v118;
    if (expensive)
    {
      v53 = MEMORY[0x277CCABB0];
      wifiIN_exp = [v118 wifiIN_exp];
      [wifiIN_exp doubleValue];
      inCopy = [v53 numberWithDouble:v55 + inCopy];
      [v118 setWifiIN_exp:inCopy];

      v57 = MEMORY[0x277CCABB0];
      wifiOUT_exp = [v118 wifiOUT_exp];
      [wifiOUT_exp doubleValue];
      outCopy = [v57 numberWithDouble:v59 + outCopy];
      [v118 setWifiOUT_exp:outCopy];

      usageCopy = v118;
    }
  }

  if (wiredOut | wiredIn)
  {
    v61 = MEMORY[0x277CCABB0];
    wiredIN = [v118 wiredIN];
    [wiredIN doubleValue];
    wiredInCopy = wiredIn;
    wiredIn = [v61 numberWithDouble:v64 + wiredIn];
    [v118 setWiredIN:wiredIn];

    v66 = MEMORY[0x277CCABB0];
    wiredOUT = [v118 wiredOUT];
    [wiredOUT doubleValue];
    wiredOut = [v66 numberWithDouble:v68 + wiredOut];
    [v118 setWiredOUT:wiredOut];

    usageCopy = v118;
    if (expensive)
    {
      v70 = MEMORY[0x277CCABB0];
      wiredIN_exp = [v118 wiredIN_exp];
      [wiredIN_exp doubleValue];
      wiredInCopy = [v70 numberWithDouble:v72 + wiredInCopy];
      [v118 setWiredIN_exp:wiredInCopy];

      v74 = MEMORY[0x277CCABB0];
      wiredOUT_exp = [v118 wiredOUT_exp];
      [wiredOUT_exp doubleValue];
      wiredOut2 = [v74 numberWithDouble:v76 + wiredOut];
      [v118 setWiredOUT_exp:wiredOut2];

      usageCopy = v118;
    }
  }

  if (__PAIR128__(btOut, btIn) != 0)
  {
    v78 = MEMORY[0x277CCABB0];
    btIN = [v118 btIN];
    [btIN doubleValue];
    btIn = [v78 numberWithDouble:v80 + btIn];
    [v118 setBtIN:btIn];

    v82 = MEMORY[0x277CCABB0];
    btOUT = [v118 btOUT];
    [btOUT doubleValue];
    btOut = [v82 numberWithDouble:v84 + btOut];
    [v118 setBtOUT:btOut];

    usageCopy = v118;
    if (expensive)
    {
      v86 = MEMORY[0x277CCABB0];
      btIN_exp = [v118 btIN_exp];
      [btIN_exp doubleValue];
      btIn2 = [v86 numberWithDouble:v88 + btIn];
      [v118 setBtIN_exp:btIn2];

      v90 = MEMORY[0x277CCABB0];
      btOUT_exp = [v118 btOUT_exp];
      [btOUT_exp doubleValue];
      btOut2 = [v90 numberWithDouble:v92 + btOut];
      [v118 setBtOUT_exp:btOut2];

      usageCopy = v118;
    }
  }

  if (xOutCopy2 | xIn)
  {
    v94 = MEMORY[0x277CCABB0];
    v95 = [v118 xIN];
    [v95 doubleValue];
    v97 = [v94 numberWithDouble:v96 + xIn];
    [v118 setXIN:v97];

    v98 = MEMORY[0x277CCABB0];
    xOUT = [v118 xOUT];
    [xOUT doubleValue];
    xOutCopy2 = [v98 numberWithDouble:v100 + xOutCopy2];
    [v118 setXOUT:xOutCopy2];

    usageCopy = v118;
    if (expensive)
    {
      v102 = MEMORY[0x277CCABB0];
      xIN_exp = [v118 xIN_exp];
      [xIN_exp doubleValue];
      v105 = [v102 numberWithDouble:v104 + xIn];
      [v118 setXIN_exp:v105];

      v106 = MEMORY[0x277CCABB0];
      xOUT_exp = [v118 xOUT_exp];
      [xOUT_exp doubleValue];
      xOutCopy22 = [v106 numberWithDouble:v108 + xOutCopy2];
      [v118 setXOUT_exp:xOutCopy22];

      usageCopy = v118;
    }
  }

  if (closingCopy2)
  {
    v110 = MEMORY[0x277CCABB0];
    allFlows = [v118 allFlows];
    [allFlows doubleValue];
    v113 = [v110 numberWithDouble:v112 + 1.0];
    [v118 setAllFlows:v113];

    usageCopy = v118;
    if (flowCopy2)
    {
      v114 = MEMORY[0x277CCABB0];
      jumboFlows = [v118 jumboFlows];
      [jumboFlows doubleValue];
      v117 = [v114 numberWithDouble:v116 + 1.0];
      [v118 setJumboFlows:v117];

      usageCopy = v118;
    }
  }
}

- (void)_compactUsageForApp:(id)app intervalType:(int)type givenLastRun:(id)run
{
  v210 = *MEMORY[0x277D85DE8];
  appCopy = app;
  runCopy = run;
  bundleName = [appCopy bundleName];
  hasTypicalUsage = [appCopy hasTypicalUsage];
  v10 = [hasTypicalUsage count];

  if (!v10)
  {
    aspace = self->aspace;
    entityName = [MEMORY[0x277D6B588] entityName];
    v13 = [(AppAnalytics *)aspace createEntityForEntityName:entityName];

    if (!v13)
    {
      v181 = analyticsLogHandle;
      v68 = runCopy;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v209 = bundleName;
        _os_log_impl(&dword_23255B000, v181, OS_LOG_TYPE_ERROR, "Can't create AppTypicalUsage for %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v13 setIntervalType:v14];

    [appCopy insertObject:v13 inHasTypicalUsageAtIndex:0];
  }

  hasTypicalUsage2 = [appCopy hasTypicalUsage];
  typeCopy = type;
  v17 = [hasTypicalUsage2 objectAtIndex:type];

  firstTimeStamp = [v17 firstTimeStamp];

  if (!firstTimeStamp)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v17 setFirstTimeStamp:date];
  }

  wifiSampleCount = [v17 wifiSampleCount];
  [wifiSampleCount doubleValue];
  v202 = v21;

  wwanSampleCount = [v17 wwanSampleCount];
  [wwanSampleCount doubleValue];
  v199 = v23;

  wiredSampleCount = [v17 wiredSampleCount];
  [wiredSampleCount doubleValue];
  v200 = v25;

  wifiIN_mean = [v17 wifiIN_mean];
  [wifiIN_mean doubleValue];
  v28 = v27;

  wifiIN_M2 = [v17 wifiIN_M2];
  [wifiIN_M2 doubleValue];
  v188 = v30;

  wifiIN = [v17 wifiIN];
  [wifiIN doubleValue];
  v189 = v32;

  wifiOUT_mean = [v17 wifiOUT_mean];
  [wifiOUT_mean doubleValue];
  v35 = v34;

  wifiOUT_M2 = [v17 wifiOUT_M2];
  [wifiOUT_M2 doubleValue];
  v201 = v37;

  wifiOUT = [v17 wifiOUT];
  [wifiOUT doubleValue];
  v190 = v39;

  wwanIN_mean = [v17 wwanIN_mean];
  [wwanIN_mean doubleValue];
  v42 = v41;

  wwanIN_M2 = [v17 wwanIN_M2];
  [wwanIN_M2 doubleValue];
  v191 = v44;

  wwanIN = [v17 wwanIN];
  [wwanIN doubleValue];
  v192 = v46;

  wwanOUT_mean = [v17 wwanOUT_mean];
  [wwanOUT_mean doubleValue];
  v49 = v48;

  wwanOUT_M2 = [v17 wwanOUT_M2];
  [wwanOUT_M2 doubleValue];
  v193 = v51;

  wwanOUT = [v17 wwanOUT];
  [wwanOUT doubleValue];
  v194 = v53;

  wiredIN_mean = [v17 wiredIN_mean];
  [wiredIN_mean doubleValue];
  v56 = v55;

  wiredIN_M2 = [v17 wiredIN_M2];
  [wiredIN_M2 doubleValue];
  v195 = v58;

  wiredIN = [v17 wiredIN];
  [wiredIN doubleValue];
  v196 = v60;

  wiredOUT_mean = [v17 wiredOUT_mean];
  [wiredOUT_mean doubleValue];
  v63 = v62;

  wiredOUT_M2 = [v17 wiredOUT_M2];
  [wiredOUT_M2 doubleValue];
  v197 = v65;

  wiredOUT = [v17 wiredOUT];
  [wiredOUT doubleValue];
  v198 = v67;

  v68 = runCopy;
  v183 = appCopy;
  if (runCopy)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{runCopy, 0}];
  }

  else
  {
    [appCopy hasAppRun];
  }

  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v69 = v204 = 0u;
  v70 = [v69 countByEnumeratingWithState:&v203 objects:v207 count:16];
  obj = v69;
  if (!v70)
  {
LABEL_39:

    goto LABEL_40;
  }

  v71 = v70;
  v182 = v17;
  v72 = 0;
  v186 = 0;
  v73 = *v204;
  do
  {
    for (i = 0; i != v71; ++i)
    {
      if (*v204 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(*(&v203 + 1) + 8 * i);
      kind = [v75 kind];
      unsignedIntegerValue = [kind unsignedIntegerValue];

      if (unsignedIntegerValue != typeCopy)
      {
        continue;
      }

      wifiIN_end = [v75 wifiIN_end];
      [wifiIN_end doubleValue];
      v80 = v79;
      wifiIN_start = [v75 wifiIN_start];
      [wifiIN_start doubleValue];
      if (v80 != v82)
      {

LABEL_19:
        wifiIN_end2 = [v75 wifiIN_end];
        [wifiIN_end2 doubleValue];
        v91 = v90;
        wifiIN_start2 = [v75 wifiIN_start];
        [wifiIN_start2 doubleValue];
        v94 = v91 - v93;

        v95 = v94 - v28;
        v28 = v28 + (v94 - v28) / (v202 + 1.0);
        v188 = v188 + v95 * (v94 - v28);
        v189 = v189 + v94;
        wifiOUT_end = [v75 wifiOUT_end];
        [wifiOUT_end doubleValue];
        v98 = v97;
        wifiOUT_start = [v75 wifiOUT_start];
        [wifiOUT_start doubleValue];
        v101 = v98 - v100;

        v190 = v190 + v101;
        v102 = v101 - v35;
        v35 = v35 + (v101 - v35) / (v202 + 1.0);
        v201 = v201 + v102 * (v101 - v35);
        v202 = v202 + 1.0;
        v72 = 1;
        goto LABEL_20;
      }

      wifiOUT_end2 = [v75 wifiOUT_end];
      [wifiOUT_end2 doubleValue];
      v85 = v84;
      wifiOUT_start2 = [v75 wifiOUT_start];
      [wifiOUT_start2 doubleValue];
      v88 = v87;

      if (v85 != v88)
      {
        goto LABEL_19;
      }

LABEL_20:
      wwanIN_end = [v75 wwanIN_end];
      [wwanIN_end doubleValue];
      v105 = v104;
      wwanIN_start = [v75 wwanIN_start];
      [wwanIN_start doubleValue];
      if (v105 == v107)
      {
        wwanOUT_end = [v75 wwanOUT_end];
        [wwanOUT_end doubleValue];
        v110 = v109;
        wwanOUT_start = [v75 wwanOUT_start];
        [wwanOUT_start doubleValue];
        v113 = v112;

        if (v110 == v113)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      wwanIN_end2 = [v75 wwanIN_end];
      [wwanIN_end2 doubleValue];
      v116 = v115;
      wwanIN_start2 = [v75 wwanIN_start];
      [wwanIN_start2 doubleValue];
      v119 = v116 - v118;

      v120 = v119 - v42;
      v42 = v42 + (v119 - v42) / (v199 + 1.0);
      v191 = v191 + v120 * (v119 - v42);
      v192 = v192 + v119;
      wwanOUT_end2 = [v75 wwanOUT_end];
      [wwanOUT_end2 doubleValue];
      v123 = v122;
      wwanOUT_start2 = [v75 wwanOUT_start];
      [wwanOUT_start2 doubleValue];
      v126 = v123 - v125;

      v127 = v126 - v49;
      v199 = v199 + 1.0;
      v49 = v49 + (v126 - v49) / v199;
      v193 = v193 + v127 * (v126 - v49);
      v194 = v194 + v126;
      LOBYTE(v186) = 1;
LABEL_25:
      wiredIN_end = [v75 wiredIN_end];
      [wiredIN_end doubleValue];
      v130 = v129;
      wiredIN_start = [v75 wiredIN_start];
      [wiredIN_start doubleValue];
      if (v130 != v132)
      {

LABEL_29:
        wiredIN_end2 = [v75 wiredIN_end];
        [wiredIN_end2 doubleValue];
        v141 = v140;
        wiredIN_start2 = [v75 wiredIN_start];
        [wiredIN_start2 doubleValue];
        v144 = v141 - v143;

        v145 = v144 - v56;
        v56 = v56 + (v144 - v56) / (v200 + 1.0);
        v195 = v195 + v145 * (v144 - v56);
        v196 = v196 + v144;
        wiredOUT_end = [v75 wiredOUT_end];
        [wiredOUT_end doubleValue];
        v148 = v147;
        wiredOUT_start = [v75 wiredOUT_start];
        [wiredOUT_start doubleValue];
        v151 = v148 - v150;

        v152 = v151 - v63;
        v200 = v200 + 1.0;
        v63 = v63 + (v151 - v63) / v200;
        v197 = v197 + v152 * (v151 - v63);
        v198 = v198 + v151;
        BYTE4(v186) = 1;
        continue;
      }

      wiredOUT_end2 = [v75 wiredOUT_end];
      [wiredOUT_end2 doubleValue];
      v135 = v134;
      wiredOUT_start2 = [v75 wiredOUT_start];
      [wiredOUT_start2 doubleValue];
      v138 = v137;

      if (v135 != v138)
      {
        goto LABEL_29;
      }
    }

    v71 = [obj countByEnumeratingWithState:&v203 objects:v207 count:16];
  }

  while (v71);

  if (v72)
  {
    v153 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
    v17 = v182;
    [v182 setWifiIN_mean:v153];

    v202 = [MEMORY[0x277CCABB0] numberWithDouble:v188 / v202];
    [v182 setWifiIN_var:v202];

    v155 = [MEMORY[0x277CCABB0] numberWithDouble:v188];
    [v182 setWifiIN_M2:v155];

    v156 = [MEMORY[0x277CCABB0] numberWithDouble:v189];
    [v182 setWifiIN:v156];

    v157 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    [v182 setWifiOUT_mean:v157];

    v2022 = [MEMORY[0x277CCABB0] numberWithDouble:v201 / v202];
    [v182 setWifiOUT_var:v2022];

    v159 = [MEMORY[0x277CCABB0] numberWithDouble:v201];
    [v182 setWifiOUT_M2:v159];

    v160 = [MEMORY[0x277CCABB0] numberWithDouble:v190];
    [v182 setWifiOUT:v160];

    v161 = [MEMORY[0x277CCABB0] numberWithDouble:v202];
    [v182 setWifiSampleCount:v161];
  }

  else
  {
    v17 = v182;
  }

  if (v186)
  {
    v162 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
    [v17 setWwanIN_mean:v162];

    v199 = [MEMORY[0x277CCABB0] numberWithDouble:v191 / v199];
    [v17 setWwanIN_var:v199];

    v164 = [MEMORY[0x277CCABB0] numberWithDouble:v191];
    [v17 setWwanIN_M2:v164];

    v165 = [MEMORY[0x277CCABB0] numberWithDouble:v192];
    [v17 setWwanIN:v165];

    v166 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
    [v17 setWwanOUT_mean:v166];

    v1992 = [MEMORY[0x277CCABB0] numberWithDouble:v193 / v199];
    [v17 setWwanOUT_var:v1992];

    v168 = [MEMORY[0x277CCABB0] numberWithDouble:v193];
    [v17 setWwanOUT_M2:v168];

    v169 = [MEMORY[0x277CCABB0] numberWithDouble:v194];
    [v17 setWwanOUT:v169];

    v170 = [MEMORY[0x277CCABB0] numberWithDouble:v199];
    [v17 setWwanSampleCount:v170];
  }

  v68 = runCopy;
  if ((v186 & 0x100000000) != 0)
  {
    v171 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
    [v17 setWiredIN_mean:v171];

    v200 = [MEMORY[0x277CCABB0] numberWithDouble:v195 / v200];
    [v17 setWiredIN_var:v200];

    v173 = [MEMORY[0x277CCABB0] numberWithDouble:v195];
    [v17 setWiredIN_M2:v173];

    v174 = [MEMORY[0x277CCABB0] numberWithDouble:v196];
    [v17 setWiredIN:v174];

    v175 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v17 setWiredOUT_mean:v175];

    v2002 = [MEMORY[0x277CCABB0] numberWithDouble:v197 / v200];
    [v17 setWiredOUT_var:v2002];

    v177 = [MEMORY[0x277CCABB0] numberWithDouble:v197];
    [v17 setWiredOUT_M2:v177];

    v178 = [MEMORY[0x277CCABB0] numberWithDouble:v198];
    [v17 setWiredOUT:v178];

    v69 = [MEMORY[0x277CCABB0] numberWithDouble:v200];
    [v17 setWiredSampleCount:v69];
    goto LABEL_39;
  }

LABEL_40:
  date2 = [MEMORY[0x277CBEAA8] date];
  [v17 setTimeStamp:date2];

  appCopy = v183;
LABEL_41:

  v180 = *MEMORY[0x277D85DE8];
}

- (void)workspaceSaveWithCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke;
  v8[3] = &unk_27898C648;
  v8[4] = self;
  v9 = callbackCopy;
  v6 = callbackCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(queue, v7);
}

uint64_t __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) save];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)workspaceSaveWithCallback:(id)callback
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 workspaceSaveWithCallback:callback];
  }

  else
  {
    (*(callback + 2))(callback);
  }
}

+ (void)checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _checkForegroundStateForProcessWithUUID:d replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__FlowAnalyticsEngine_checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __79__FlowAnalyticsEngine_checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "returning error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v16 = dCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:96 userInfo:0];
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v2 = *(*(a1 + 40) + 184);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  v3 = [v2 identifierForUUID:? derivation:?];
  if (v3 && (v15 - 1) <= 1)
  {
    v4 = +[AppStateMonitor foregroundAppKeys];
    v5 = [v4 containsObject:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_11:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke_2;
  v10[3] = &unk_27898C698;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v14 = v5;
  v13 = v8;
  v11 = v6;
  v12 = *(a1 + 32);
  v9 = v6;
  dispatch_async(v7, v10);
}

void __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = @"not supplied";
    }

    v6 = *(a1 + 56);
    v8 = 138412546;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "UUID %@, foreground state: %d", &v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_endRNFPeriod
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "_endRNFPeriod started", buf, 2u);
  }

  nstatManager = self->nstatManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke;
  v9[3] = &unk_27898C490;
  v9[4] = self;
  v5 = [(NWStatsManager *)nstatManager refreshUsingBlock:v9 completionBlock:&__block_literal_global_610];
  if (v5)
  {
    v6 = v5;
    v7 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "_endRNFPeriod refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) _didReceiveSnapshot:v11];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v11;
  if (isKindOfClass)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "sourceIdentifier")}];
    v6 = [TrackedFlow flowForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 ownerKey];
      v9 = [v8 isEqualToString:@"com.apple.facetime"];

      if ((v9 & 1) == 0)
      {
        [v7 setIsForcedNonRNF:1];
        [v7 setIsRNF:0];
      }
    }

    v4 = v11;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v4);
}

void __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke_2()
{
  v0 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_INFO, "NetworkStatistics reports refresh complete for _endRNFPeriod", v1, 2u);
  }
}

+ (void)endRNFPeriod
{
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    dispatch_async(queue, &__block_literal_global_612);
  }
}

+ (void)recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _recentUsageForApps:apps replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__FlowAnalyticsEngine_recentUsageForApps_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __59__FlowAnalyticsEngine_recentUsageForApps_replyQueue_reply___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "returning error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply
{
  appsCopy = apps;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v15[4] = self;
  v16 = appsCopy;
  v17 = queueCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = appsCopy;
  dispatch_async(queue, v15);
}

void __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v64 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v63 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v2 = [MEMORY[0x277D6B518] entityName];
  v57 = [*(*(a1 + 32) + 64) getDescriptionForName:v2];
  v56 = [*(*(a1 + 32) + 64) createTemporaryEntityForEntityName:v2];
  v54 = v2;
  v68 = [*(*(a1 + 32) + 64) createTemporaryEntityForEntityName:v2];
  if ([*(a1 + 40) count])
  {
    v53 = 0;
  }

  else
  {
    v53 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

  v69 = [MEMORY[0x277CBEAA8] date];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v3)
  {
    v4 = v3;
    v62 = *v82;
    v5 = 0x277CBE000uLL;
    do
    {
      v6 = 0;
      v58 = v4;
      do
      {
        if (*v82 != v62)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v66 = v6;
        v8 = *(*(&v81 + 1) + 8 * v6);
        v9 = [*(v5 + 2920) null];
        v67 = v8;
        v10 = [*(a1 + 32) _processFetchForName:0 bundle:v8 shouldFillMiss:0];
        v11 = v10;
        if (v10 && ([v10 isApp] & 1) != 0)
        {
          v65 = 0;
        }

        else
        {
          v12 = [*(a1 + 32) _attemptConvertingPluginNameToContainingAppName:v8];
          v65 = v12;
          if (v12)
          {
            v13 = v12;
            v14 = [*(a1 + 32) _processFetchForName:0 bundle:v12 shouldFillMiss:0];

            v15 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v87 = v67;
              v88 = 2112;
              v89 = v13;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "remap from %@ to %@", buf, 0x16u);
            }

            if (!v14)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v36 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v87 = v67;
              _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "remap from %@ failed", buf, 0xCu);
            }

            v14 = v11;
            if (!v11)
            {
LABEL_41:
              v11 = 0;
LABEL_42:
              v37 = analyticsLogHandle;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v87 = v67;
                _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "missing app: %@", buf, 0xCu);
              }

              goto LABEL_47;
            }
          }

          v11 = v14;
        }

        if (![v11 isApp])
        {
          goto LABEL_42;
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v16 = [v11 hasLiveUsage];
        v17 = [v16 countByEnumeratingWithState:&v77 objects:v85 count:16];
        if (!v17)
        {

          goto LABEL_45;
        }

        v18 = v17;
        v59 = v11;
        v60 = v9;
        v19 = *v78;
        v70 = 1;
        v20 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v78 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v77 + 1) + 8 * i);
            v23 = [v22 tag];
            v24 = v20[640];
            v25 = *(*(a1 + 32) + v24);
            if (v25)
            {
              v26 = [v25 currentSubscriberTag];
              if (v26)
              {
                v27 = v26;
                v28 = [*(*(a1 + 32) + v24) currentSubscriberTag];
                v29 = [v23 isEqualToNumber:v28];

                v20 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
                if ((v29 & 1) == 0)
                {
                  continue;
                }
              }

              else
              {
                v31 = [v23 isEqualToNumber:&unk_2847EF6C8];

                if ((v31 & 1) == 0)
                {
                  continue;
                }
              }
            }

            else
            {
              v30 = [v23 isEqualToNumber:&unk_2847EF6C8];

              if (!v30)
              {
                continue;
              }
            }

            v32 = [v22 kind];
            if ([v32 intValue])
            {
              v33 = [*(a1 + 32) _isLiveUsageInRollingWindow:v22 forTime:v69];

              if (v33)
              {
                [*(a1 + 32) _applyCountsTo:v68 fromLiveUsage:v22 mustReset:v70 & 1];
                v70 = 0;
              }
            }

            else
            {
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v77 objects:v85 count:16];
        }

        while (v18);

        v11 = v59;
        v9 = v60;
        if ((v70 & 1) == 0)
        {
          v34 = [v59 firstTimeStamp];
          v35 = v68;
          goto LABEL_46;
        }

LABEL_45:
        v34 = [v11 firstTimeStamp];
        v35 = v56;
LABEL_46:
        [v35 setTimeStamp:v34];

        v38 = [v57 attributesByName];
        v39 = [v38 allKeys];
        v40 = [v35 dictionaryWithValuesForKeys:v39];

        v9 = v40;
        v4 = v58;
        v5 = 0x277CBE000;
LABEL_47:
        [v64 setObject:v9 forKey:v67];
        if (v65)
        {
          v41 = v65;
        }

        else
        {
          v41 = v67;
        }

        v42 = *(a1 + 32);
        v43 = v41;
        v44 = [v42 _bundleBackgroundAudioCapable:v43];
        v45 = [MEMORY[0x277CCABB0] numberWithBool:v44];
        [v63 setObject:v45 forKey:v67];

        v6 = v66 + 1;
      }

      while (v66 + 1 != v4);
      v4 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke_614;
  block[3] = &unk_27898C6C0;
  v46 = *(a1 + 48);
  v47 = *(a1 + 56);
  v72 = v64;
  v73 = v63;
  v48 = *(a1 + 32);
  v74 = v53;
  v75 = v48;
  v76 = v47;
  v49 = v53;
  v50 = v63;
  v51 = v64;
  dispatch_async(v46, block);

  objc_autoreleasePoolPop(context);
  v52 = *MEMORY[0x277D85DE8];
}

void __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke_614(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  (*(a1[8] + 16))();
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[4];
    v7 = a1[5];
    v10 = a1[6];
    v9 = a1[7];
    v11 = *(v9 + 648);
    if (v11)
    {
      v1 = [*(v9 + 648) currentSubscriberTag];
      if (v1)
      {
        v12 = [*(a1[7] + 648) currentSubscriberTag];
        v13 = 1;
      }

      else
      {
        v13 = 0;
        v12 = &unk_2847EF6C8;
      }
    }

    else
    {
      v13 = 0;
      v12 = &unk_2847EF6C8;
    }

    v15 = 138413058;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "returning (usage/audio/error): %@/%@/%@ for subscriber tag: %@", &v15, 0x2Au);
    if (v13)
    {
    }

    if (v11)
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (test && sharedInstance_1)
  {
    [sharedInstance_1 _appsWithFlowsPassingTest:test replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__FlowAnalyticsEngine_appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

- (void)_appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply
{
  testCopy = test;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
  v12[3] = &unk_27898C6E8;
  v13 = testCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = testCopy;
  dispatch_async(queue, v12);
}

void __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke(uint64_t a1)
{
  v2 = [TrackedFlow ownersOfFlowsPassingTest:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (void)identifierForUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C710;
    v18 = dCopy;
    v19 = queueCopy;
    v20 = replyCopy;
    dispatch_async(queue, block);

    v11 = v18;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "returning error: %@", buf, 0xCu);
    }

    if (queueCopy)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke_615;
      v14[3] = &unk_27898B678;
      v16 = replyCopy;
      v11 = v11;
      v15 = v11;
      dispatch_async(queueCopy, v14);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0, 0, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_trafficEnvelopeToTier:(double)tier
{
  tierCopy = tier;
  if (tier < 0x1000)
  {
    return @"tier1";
  }

  if (tierCopy < 0x10000)
  {
    return @"tier2";
  }

  if (tierCopy < 0x100000)
  {
    return @"tier3";
  }

  if (tierCopy >> 24)
  {
    return @"tier5";
  }

  return @"tier4";
}

- (void)_calendarUsageForApp:(id)app givenLastRun:(id)run
{
  v79 = *MEMORY[0x277D85DE8];
  appCopy = app;
  runCopy = run;
  timeStart = [runCopy timeStart];
  [timeStart timeIntervalSince1970];
  v9 = v8;

  v68 = v9;
  v10 = gmtime(&v68);
  v11 = v10->tm_min / 15 + 4 * v10->tm_hour + 1;
  v12 = LOWORD(v10->tm_wday) + 1;
  hintCalendarUsage = [appCopy hintCalendarUsage];
  if (!hintCalendarUsage)
  {
LABEL_8:
    v22 = MEMORY[0x277CCAC30];
    bundleName = [appCopy bundleName];
    v24 = [v22 predicateWithFormat:@"%K == %@ AND %K == %hu AND %K == %hu", @"hasApp.bundleName", bundleName, @"timeOfDaySlot", v11, @"dayOfWeek", v12];

    v25 = [(ObjectAnalytics *)self->calspace fetchEntitiesFreeForm:v24 sortDesc:0];
    if ([v25 count] == 1)
    {
      hintCalendarUsage4 = [v25 objectAtIndex:0];
    }

    else
    {
      aspace = self->aspace;
      entityName = [MEMORY[0x277D6B560] entityName];
      hintCalendarUsage4 = [(AppAnalytics *)aspace createEntityForEntityName:entityName];

      if (hintCalendarUsage4)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [hintCalendarUsage4 setTimeOfDaySlot:v28];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
        [hintCalendarUsage4 setDayOfWeek:v29];

        timeStart2 = [runCopy timeStart];
        [hintCalendarUsage4 setFirstTimeStamp:timeStart2];

        [appCopy addHasCalendarUsageObject:hintCalendarUsage4];
      }
    }

    if (!hintCalendarUsage4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v14 = hintCalendarUsage;
  hintCalendarUsage2 = [appCopy hintCalendarUsage];
  timeOfDaySlot = [hintCalendarUsage2 timeOfDaySlot];
  if ([timeOfDaySlot unsignedShortValue] != v11)
  {

    goto LABEL_8;
  }

  hintCalendarUsage3 = [appCopy hintCalendarUsage];
  dayOfWeek = [hintCalendarUsage3 dayOfWeek];
  unsignedShortValue = [dayOfWeek unsignedShortValue];

  if (unsignedShortValue != v12)
  {
    goto LABEL_8;
  }

  hintCalendarUsage4 = [appCopy hintCalendarUsage];
  if (!hintCalendarUsage4)
  {
LABEL_5:
    v21 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "calendar: couldn't find suitable AppCalendarUsage record nor could create one", buf, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  v64 = v11;
  v65 = v12;
  wifiIN_end = [runCopy wifiIN_end];
  [wifiIN_end doubleValue];
  v32 = v31;
  wifiIN_start = [runCopy wifiIN_start];
  [wifiIN_start doubleValue];
  v35 = v32 - v34;
  wifiOUT_end = [runCopy wifiOUT_end];
  [wifiOUT_end doubleValue];
  v38 = v35 + v37;
  wifiOUT_start = [runCopy wifiOUT_start];
  [wifiOUT_start doubleValue];
  v41 = v38 - v40;
  wwanIN_end = [runCopy wwanIN_end];
  [wwanIN_end doubleValue];
  v44 = v41 + v43;
  [runCopy wwanIN_start];
  v46 = v45 = appCopy;
  [v46 doubleValue];
  v48 = v44 - v47;
  wwanOUT_end = [runCopy wwanOUT_end];
  [wwanOUT_end doubleValue];
  v51 = v48 + v50;
  wwanOUT_start = [runCopy wwanOUT_start];
  [wwanOUT_start doubleValue];
  v54 = v51 - v53;

  appCopy = v45;
  v55 = [(FlowAnalyticsEngine *)self _trafficEnvelopeToTier:v54];
  v56 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v57 = v56;
    bundleName2 = [appCopy bundleName];
    *buf = 138413314;
    v70 = bundleName2;
    v71 = 2048;
    v72 = v54;
    v73 = 2112;
    v74 = v55;
    v75 = 1024;
    v76 = v64;
    v77 = 1024;
    v78 = v65;
    _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEBUG, "calendar: app: %@, traffic envelope: %f, tier: %@, at timeslot: %d, dayslot: %d", buf, 0x2Cu);
  }

  v59 = [hintCalendarUsage4 valueForKey:v55];
  v60 = [v59 unsignedIntValue] + 1;

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
  [hintCalendarUsage4 setValue:v61 forKey:v55];

  timeStart3 = [runCopy timeStart];
  [hintCalendarUsage4 setTimeStamp:timeStart3];

  [appCopy setHintCalendarUsage:hintCalendarUsage4];
LABEL_16:

  v63 = *MEMORY[0x277D85DE8];
}

+ (id)appBundleIdentifierFromAuditToken:(id *)token
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = *&token->var0[4];
  *buf = *token->var0;
  v14 = v3;
  v4 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v4 isWebBrowser:0];
  }

  else
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Error creating LSBundleRecord from audit token, %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)appBundleIdentifierFromBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v12];
    v5 = v12;
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v9 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v4 isWebBrowser:0];
    }

    else
    {
      v8 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v14 = identifierCopy;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Error creating LSBundleRecord from bundle identifier (%{private}@), %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)appBundleIdentifierIsWebBrowser:(id)browser
{
  result = sharedInstance_1;
  if (sharedInstance_1)
  {
    return [sharedInstance_1 _appBundleIdentifierIsWebBrowser:browser];
  }

  return result;
}

- (BOOL)_appBundleIdentifierIsWebBrowser:(id)browser
{
  v29 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  v24 = 0;
  if (browserCopy)
  {
    v5 = [(NSMutableDictionary *)self->webBrowserBundleCache objectForKeyedSubscript:browserCopy];
    v6 = v5;
    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
      v24 = bOOLValue;
LABEL_19:

      goto LABEL_20;
    }

    v23 = 0;
    v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:browserCopy allowPlaceholder:0 error:&v23];
    v10 = v23;
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v17 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v9 isWebBrowser:&v24];
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v24];
        [(NSMutableDictionary *)self->webBrowserBundleCache setObject:v19 forKeyedSubscript:browserCopy];
      }

      else
      {
        v24 = 0;
        v20 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v26 = browserCopy;
          v14 = "Error creating appBundleIdentifier from bundle identifier (%{private}@)";
          v15 = v20;
          v16 = 12;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v26 = browserCopy;
        v27 = 2112;
        v28 = v11;
        v14 = "Error creating LSBundleRecord from bundle identifier (%{private}@), %@";
        v15 = v13;
        v16 = 22;
LABEL_17:
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    bOOLValue = v24;
    goto LABEL_19;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Nil bundleIdentifier", buf, 2u);
  }

  bOOLValue = 0;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return bOOLValue & 1;
}

- (void)startObservingLaunchServices
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(DistributedCenter, self, ls_application_unregistered_notification_callback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)stopObservingLaunchServices
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
}

- (void)handleLaunchServicesApplicationUnregistration:(id)unregistration
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = unregistration;
  v4 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", gEffectiveUserId, @"bundleName", v8];
        v10 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v9];
        v11 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          v19 = v10;
          v20 = 2113;
          v21 = v8;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %ld ADU records for %{private}@ via LaunchServices app unregistration", buf, 0x16u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)endpointMaintenanceOnClose:(id)close
{
  v19 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  attributedEntity = [closeCopy attributedEntity];
  remoteAddress = [closeCopy remoteAddress];
  v14 = 0;
  v7 = validateSockAddrToString(remoteAddress, 0, &v14);
  v8 = v14;
  if (v7)
  {
    bytes = [remoteAddress bytes];
    if (([closeCopy hasNonLocalDestination] & 1) != 0 || *(bytes + 2) && (is_directly_reachable_address(bytes) & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
      isTracker = [closeCopy isTracker];
      [(FlowAnalyticsEngine *)self _updateAppEndpoints:v10 type:isTracker userId:gEffectiveUserId bundleName:attributedEntity flowClosing:1];
      [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:attributedEntity];
    }
  }

  else
  {
    v12 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = remoteAddress;
      v17 = 2112;
      v18 = attributedEntity;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "No remote endpoint extracted from %@ for %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_appEndpointsInProcess:(id)process
{
  v24 = *MEMORY[0x277D85DE8];
  processCopy = process;
  date = [MEMORY[0x277CBEAA8] date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  hasAppEndpoint = [processCopy hasAppEndpoint];
  v6 = [hasAppEndpoint countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(hasAppEndpoint);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      effectiveUserId = [v10 effectiveUserId];
      if (effectiveUserId == gEffectiveUserId)
      {
        firstTimeStamp = [v10 firstTimeStamp];
        v13 = isDateWithinScope(date, firstTimeStamp, 86400.0);

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [hasAppEndpoint countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    createEntity = v10;

    if (createEntity)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  createEntity = [(ObjectAnalytics *)self->epspace createEntity];
  [createEntity setEffectiveUserId:gEffectiveUserId];
  date2 = [MEMORY[0x277CBEAA8] date];
  [createEntity setFirstTimeStamp:date2];

  [processCopy addHasAppEndpointObject:createEntity];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return createEntity;
}

- (unint64_t)_clearStaleAppEndpointRecords
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 dateWithTimeIntervalSinceNow:-604800.0];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Clearing out AppEndpoint records with firstTimeStamp older than %@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v9 = [v7 predicateWithFormat:@"%K < %@", @"firstTimeStamp", v8];

  v10 = [(ObjectAnalytics *)self->epspace removeEntitiesMatching:v9];
  v11 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v10;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %lu AppEndpoint records", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)_submitAppEndpointRecordInfoAnalytics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ObjectAnalytics *)self->epspace fetchAllEntityDictionariesWithProperties:&unk_2847EEB98];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke;
  v5[3] = &unk_27898C758;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"timeStamp"];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"firstTimeStamp"];

  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v6 >= v9)
  {
    if (AnalyticsSendEventLazy())
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

id __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"intervalSeconds";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32) - *(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearStaleAppEndpointRecords = [(FlowAnalyticsEngine *)self _clearStaleAppEndpointRecords];
  _submitAppEndpointRecordInfoAnalytics = [(FlowAnalyticsEngine *)self _submitAppEndpointRecordInfoAnalytics];
  if (replyCopy)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearStaleAppEndpointRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_submitAppEndpointRecordInfoAnalytics];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"endpointRecordsDeleted", v8, @"endpointRecordAnalyticsSubmitted", 0}];

    replyCopy[2](replyCopy, v9, 0);
  }
}

- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)complete error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = domainTrackingLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = errorCopy;
      v8 = "Periodic app endpoint tracking tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = completeCopy;
    v8 = "Periodic app endpoint tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppEndpointTrackingPeriodicTasksWithReply:reply];
  }
}

- (void)submitAppEndpointToDateSPICallMetric
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.AppEndpointSPICall to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (void)_reportDomainTrackingDropFor:(id)for withCause:(unint64_t)cause detail:(id)detail
{
  v22 = *MEMORY[0x277D85DE8];
  forCopy = for;
  detailCopy = detail;
  if (cause <= 0xA && ((1 << cause) & 0x7AE) != 0)
  {
    if (forCopy)
    {
      v9 = +[NetDomainsHandler sharedInstance];
      v10 = [v9 bundleNameImplies1stOr2ndParty:forCopy];

      if (v10)
      {
        v11 = forCopy;
      }

      else
      {
        v12 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138478339;
          v17 = forCopy;
          v18 = 2048;
          causeCopy2 = cause;
          v20 = 2113;
          v21 = detailCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "3rd Party obfuscated Drop reported to analytics for %{private}@ cause %lu detail %{private}@", buf, 0x20u);
        }

        v11 = @"com.apple.apr.3pp";
      }
    }

    else
    {
      v11 = @"unknown";
    }

    v13 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138478339;
      v17 = forCopy;
      v18 = 2048;
      causeCopy2 = cause;
      v20 = 2113;
      v21 = detailCopy;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Drop reported to analytics for %{private}@ cause %lu detail %{private}@", buf, 0x20u);
    }

    v14 = v11;
    AnalyticsSendEventLazy();
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __69__FlowAnalyticsEngine__reportDomainTrackingDropFor_withCause_detail___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = daemonFunctionalGroupingForProcName([*(a1 + 32) UTF8String]);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    goto LABEL_7;
  }

  if ([*(a1 + 32) hasPrefix:@"com.apple."])
  {
    v5 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
    v3 = daemonFunctionalGroupingForProcName([v5 UTF8String]);

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v4 = @"unknown";
LABEL_7:
  v11[0] = @"Entity";
  v11[1] = @"EntityGroup";
  v6 = *(a1 + 40);
  v12[0] = *(a1 + 32);
  v12[1] = v4;
  v11[2] = @"Cause";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v12[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_evalDomainTrackingDropOf:(id)of
{
  ofCopy = of;
  if (self->appTrackingEnabled && AnalyticsIsEventUsed())
  {
    domainAttributedBundleId = [ofCopy domainAttributedBundleId];
    if (domainAttributedBundleId)
    {
      [ofCopy domainAttributedBundleId];
    }

    else
    {
      [ofCopy attributedEntity];
    }
    v6 = ;

    v37 = 1;
    v36 = 0;
    v35 = 0;
    processName = [ofCopy processName];
    if ([processName isEqualToString:@"mDNSResponder"])
    {

LABEL_9:
      selfCopy3 = self;
      v10 = v6;
      v11 = 6;
LABEL_10:
      [(FlowAnalyticsEngine *)selfCopy3 _reportDomainTrackingDropFor:v10 withCause:v11 detail:ofCopy];
      v12 = 0;
LABEL_11:
      v13 = v6;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [v6 isEqualToString:@"mDNSResponder"];

    if (v8)
    {
      goto LABEL_9;
    }

    if (!v6)
    {
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:0 withCause:1 detail:ofCopy];
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    if ([v6 hasPrefix:@"terminusd"])
    {
      selfCopy3 = self;
      v10 = v6;
      v11 = 8;
      goto LABEL_10;
    }

    attributedEntity = [ofCopy attributedEntity];
    if (attributedEntity)
    {
      v15 = attributedEntity;
      attributedEntityIsBundleName = [ofCopy attributedEntityIsBundleName];

      if ((attributedEntityIsBundleName & 1) == 0)
      {
        selfCopy3 = self;
        v10 = v6;
        v11 = 11;
        goto LABEL_10;
      }
    }

    v34 = 0;
    v17 = [(FlowAnalyticsEngine *)self _shouldProcessDomainInfoForBundleID:v6 implicit:&v34 knownToLaunchServices:&v37 ignoredInLaunchServices:&v36 isWebBrowser:&v35];
    v18 = v34;
    v12 = v18;
    if (!v17)
    {
      if (v36 == 1)
      {
        selfCopy5 = self;
        v21 = v6;
        v22 = 7;
      }

      else
      {
        if (v37)
        {
          goto LABEL_11;
        }

        selfCopy5 = self;
        v21 = v6;
        v22 = 9;
      }

      [(FlowAnalyticsEngine *)selfCopy5 _reportDomainTrackingDropFor:v21 withCause:v22 detail:ofCopy];
      goto LABEL_11;
    }

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v6;
    }

    v13 = v19;

    if ([ofCopy isSilent])
    {
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:4 detail:ofCopy];
      goto LABEL_12;
    }

    domainName = [ofCopy domainName];

    if (domainName)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = ofCopy;
      remoteAddress = [v24 remoteAddress];
      flowuuid = [v24 flowuuid];
      hasLocalDestination = [v24 hasLocalDestination];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        flowuuid = 0;
        goto LABEL_45;
      }

      v29 = ofCopy;
      remoteAddress = [v29 remoteAddress];
      flowuuid = [v29 flowuuid];
      bytes = [remoteAddress bytes];
      if (!bytes || !*(bytes + 2))
      {
        v28 = 0;
LABEL_42:

        if (remoteAddress)
        {
          if (!v28)
          {
            v33 = 0;
            v31 = validateSockAddrToString(remoteAddress, 0, &v33);
            v32 = v33;
            if (flowuuid && !v31)
            {
              [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:3 detail:ofCopy];
            }

            goto LABEL_12;
          }

          [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:5 detail:ofCopy];

          goto LABEL_46;
        }

LABEL_45:
        [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:2 detail:ofCopy];
LABEL_46:

        goto LABEL_12;
      }

      hasLocalDestination = is_directly_reachable_address(bytes);
    }

    v28 = hasLocalDestination;
    goto LABEL_42;
  }

LABEL_13:
}

- (void)storeSnapshotFlowUUID:(id)d forSourceKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  v8 = keyCopy;
  if (!dCopy || !keyCopy)
  {
    goto LABEL_17;
  }

  v9 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *v25 = 138412546;
        *&v25[4] = v17;
        *&v25[12] = 2112;
        *&v25[14] = v8;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "ConnSnapshot: fuuids of unexpected class %@ for conn id %@", v25, 0x16u);
      }

      goto LABEL_12;
    }

    [v9 addObject:dCopy];
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v25 = 138412546;
      *&v25[4] = dCopy;
      *&v25[12] = 2112;
      *&v25[14] = v8;
      v11 = "ConnSnapshot: stored fuuid %@ for conn id %@";
LABEL_9:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, v11, v25, 0x16u);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->snapshotFlowUUIDs setObject:v12 forKeyedSubscript:v8];

    v13 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:v8];
    [v13 addObject:dCopy];

    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v25 = 138412546;
      *&v25[4] = dCopy;
      *&v25[12] = 2112;
      *&v25[14] = v8;
      v11 = "ConnSnapshot: stored fuuid %@ for conn id %@ (first time)";
      goto LABEL_9;
    }
  }

LABEL_12:
  if ([(NSMutableDictionary *)self->snapshotFlowUUIDs count:*v25]>= 0xBB9)
  {
    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      snapshotFlowUUIDs = self->snapshotFlowUUIDs;
      v20 = v18;
      v21 = [(NSMutableDictionary *)snapshotFlowUUIDs count];
      *v25 = 134218240;
      *&v25[4] = v21;
      *&v25[12] = 1024;
      *&v25[14] = 3000;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Concurrent connections count %lu exceeds threshold %d, triggering an ABC case", v25, 0x12u);
    }

    v22 = +[NetDomainsHandler sharedInstance];
    stringValue = [&unk_2847EF6F8 stringValue];
    [v22 triggerAutoBugCaptureCaseForType:@"ExcessiveConcurrentConnections" subType:0 privateSubtypeContext:0 detectedProcess:@"symptomsd" events:0 thresholdValuesString:stringValue];
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeSnapshotFlowUUIDsForSourceKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:keyCopy];
    if (v5)
    {
      [(NSMutableDictionary *)self->snapshotFlowUUIDs setObject:0 forKeyedSubscript:keyCopy];
      v6 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        snapshotFlowUUIDs = self->snapshotFlowUUIDs;
        v8 = v6;
        v9 = [(NSMutableDictionary *)snapshotFlowUUIDs count];
        allKeys = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
        v11 = [allKeys componentsJoinedByString:{@", "}];
        v13 = 138413058;
        v14 = v5;
        v15 = 2112;
        v16 = keyCopy;
        v17 = 2048;
        v18 = v9;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "ConnSnapshot: removed fuuids %@ for conn id %@, remaining (>= %lu) for conn ids [%@]", &v13, 0x2Au);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSnapshotFlowUUIDStored:(id)stored
{
  v26 = *MEMORY[0x277D85DE8];
  storedCopy = stored;
  if (storedCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v20;
      while (2)
      {
        v10 = 0;
        v11 = v8 + 1;
        v18 = v8 + v7;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v10)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 containsObject:storedCopy])
          {
            ++connSnapshotFlowUUIDHitsAndMisses_0;
            v13 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v24 = v11;
              _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "isSnapshotFlowUUIDStored: YES after scanning %d entries", buf, 8u);
            }

            v14 = 1;
            goto LABEL_19;
          }

          ++v10;
          ++v11;
        }

        while (v7 != v10);
        v7 = [allKeys countByEnumeratingWithState:&v19 objects:v25 count:16];
        v8 = v18;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    ++connSnapshotFlowUUIDHitsAndMisses_1;
    v15 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v24 = v8;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "isSnapshotFlowUUIDStored: NO after scanning %d entries", buf, 8u);
    }
  }

  v14 = 0;
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)domainInfoProcessingForSnapshot:(id)snapshot process:(id)process attributedName:(id)name remoteAddress:(id)address isWebBrowser:(BOOL)browser
{
  browserCopy = browser;
  v122[1] = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  processCopy = process;
  nameCopy = name;
  addressCopy = address;
  domainOwner = [snapshotCopy domainOwner];
  domainOwner2 = &stru_2847966D8;
  v94 = nameCopy;
  if (domainOwner)
  {
    domainOwner2 = [snapshotCopy domainOwner];
  }

  snapshotType = [snapshotCopy snapshotType];
  sourceIdentifier = [snapshotCopy sourceIdentifier];
  isNonAppInitiated = [snapshotCopy isNonAppInitiated];
  if (isNonAppInitiated)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v91 = v18;
  isTracker = [snapshotCopy isTracker];
  v20 = isTracker;
  if (isTracker)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  domainName = [snapshotCopy domainName];

  v90 = addressCopy;
  if (domainName)
  {
    v84 = sourceIdentifier;
    domainName2 = [snapshotCopy domainName];
    v24 = [domainName2 hasSuffix:@"."];

    domainName3 = [snapshotCopy domainName];
    if (v24)
    {
      domainName4 = [snapshotCopy domainName];
      v27 = -[__CFString substringToIndex:](domainName3, "substringToIndex:", [domainName4 length] - 1);

      domainName3 = v27;
    }

    if (v20)
    {
      v28 = 1;
      v92 = 1;
      if (!domainName3)
      {
        goto LABEL_78;
      }

LABEL_46:
      domainTrackerContext = [snapshotCopy domainTrackerContext];
      domainTrackerContext3 = &stru_2847966D8;
      if (domainTrackerContext)
      {
        domainTrackerContext2 = [snapshotCopy domainTrackerContext];
        if ([NetworkDomainsUtility isValidDomain:domainTrackerContext2])
        {
          domainTrackerContext3 = [snapshotCopy domainTrackerContext];
        }
      }

      processName = [snapshotCopy processName];
      if (domainTrackerContext3)
      {
        v49 = [(__CFString *)domainTrackerContext3 length];
        v50 = 0;
        v51 = @"Unknown";
        if (!v49 || !processName)
        {
          goto LABEL_57;
        }

        if ([(__CFString *)processName length])
        {
          if (([(__CFString *)processName isEqualToString:@"com.apple.WebKit.Networking"]& 1) != 0)
          {
            v50 = 2;
            v51 = @"Verified";
          }

          else
          {
            if ([(__CFString *)processName isEqualToString:@"MobileSafari"])
            {
              v78 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412803;
                v97 = processName;
                v98 = 2113;
                v99 = domainTrackerContext3;
                v100 = 2113;
                v101 = v94;
                _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_ERROR, "Process is %@ with context %{private}@ for %{private}@, triggering an ABC case", buf, 0x20u);
              }

              v79 = +[NetDomainsHandler sharedInstance];
              [v79 triggerAutoBugCaptureCaseForType:@"ProcessMobileSafariWithContext" subType:0 privateSubtypeContext:domainTrackerContext3 detectedProcess:processName events:0 thresholdValuesString:0];
            }

            v50 = 1;
            v51 = @"Unverified";
          }

LABEL_57:
          v83 = v51;
          v85 = processName;
          v52 = gEffectiveUserId;
          bundleName = [processCopy bundleName];
          HIDWORD(v80) = v91;
          LOWORD(v80) = v50;
          v54 = [(FlowAnalyticsEngine *)self _appDomainUsageBy:v52 bundleName:bundleName forDomain:domainName3 domainOwner:domainOwner2 domainType:v92 domainClassification:v28 context:domainTrackerContext3 contextVerificationType:v80 initiatedType:?];

          if (!v54)
          {
            v64 = domainTrackingLogHandle;
            v62 = v92;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v97 = v94;
              _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_ERROR, "Couldn't create AppDomainUsage record for %{private}@", buf, 0xCu);
            }

LABEL_77:

            if (v62 != 1)
            {
              v36 = 1;
              v35 = v94;
              goto LABEL_81;
            }

            goto LABEL_78;
          }

          v82 = processCopy;
          date = [MEMORY[0x277CBEAA8] date];
          snapshotReasonString = [snapshotCopy snapshotReasonString];
          v57 = @"AppInitiated";
          if (isNonAppInitiated)
          {
            v57 = @"NonAppInitiated";
          }

          v87 = v57;
          timeStamp = [v54 timeStamp];

          if (timeStamp)
          {
            timeStamp2 = [v54 timeStamp];
            [date timeIntervalSinceDate:timeStamp2];
            v61 = v60;

            v62 = v92;
            if (v61 >= 0.0)
            {
              if (v61 < self->domainUsageBucketDuration)
              {
                v89 = @"bucketed";
LABEL_71:
                v69 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  if (v62 == 2)
                  {
                    v70 = @"non-";
                  }

                  else
                  {
                    v70 = &stru_2847966D8;
                  }

                  v71 = domainTrackerContext3;
                  v72 = date;
                  v73 = domainOwner2;
                  v74 = gEffectiveUserId;
                  log = v69;
                  hits = [v54 hits];
                  *buf = 138415619;
                  v97 = v70;
                  v98 = 2112;
                  v99 = snapshotType;
                  v100 = 2048;
                  v101 = v84;
                  v102 = 2112;
                  v103 = snapshotReasonString;
                  v104 = 1024;
                  *v105 = v74;
                  domainOwner2 = v73;
                  date = v72;
                  domainTrackerContext3 = v71;
                  v62 = v92;
                  *&v105[4] = 2113;
                  *&v105[6] = v94;
                  v106 = 2113;
                  v107 = domainName3;
                  v108 = 2113;
                  v109 = domainOwner2;
                  v110 = 2113;
                  v111 = v71;
                  v112 = 2112;
                  v113 = v87;
                  v114 = 2112;
                  v115 = v83;
                  v116 = 2112;
                  v117 = hits;
                  v118 = 2113;
                  v119 = v85;
                  v120 = 2112;
                  v121 = v89;
                  _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Hit %@tracker domain for %@ id %llu %@, euid: %u, bundle: %{private}@, domain: %{private}@, owner: %{private}@, context: %{private}@, initiatedType: %@, contextVerificationType: %@, hits: %@, process: %{private}@, disposition: %@", buf, 0x8Au);
                }

                processCopy = v82;
                goto LABEL_77;
              }

              v63 = @"updated";
            }

            else
            {
              v63 = @"clock-change";
            }

            v89 = v63;
          }

          else
          {
            v89 = @"new";
            v62 = v92;
          }

          v65 = MEMORY[0x277CCABB0];
          hits2 = [v54 hits];
          [hits2 doubleValue];
          v68 = [v65 numberWithDouble:v67 + 1.0];
          [v54 setHits:v68];

          [v54 setTimeStamp:date];
          goto LABEL_71;
        }
      }

      v50 = 0;
      v51 = @"Unknown";
      goto LABEL_57;
    }

    v29 = domainOwner2;
    if (NEHelperTrackerGetAppInfo())
    {
      if (browserCopy)
      {
        NEHelperTrackerAppInfoSetIsBrowser();
      }
    }

    else
    {
      v37 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v97) = browserCopy;
        _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "NEHelperTrackerGetAppInfo() failed to create appInfoRef, isWebBrowser: %d, will match DDG app list", buf, 8u);
      }
    }

    v122[0] = domainName3;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
    v95[1] = 0;
    v95[2] = 0;
    Disposition = NEHelperTrackerGetDisposition();
    NEHelperTrackerFreeAppInfo();
    if (Disposition == 1)
    {
      DomainOwner = NEHelperTrackerContextGetDomainOwner();
      if (DomainOwner)
      {
        v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DomainOwner];

        v41 = v40;
      }

      else
      {
        v41 = v29;
      }

      if (!v41)
      {
        v41 = &stru_2847966D8;
      }

      v43 = domainTrackingLogHandle;
      v92 = 1;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v44 = @"app";
        *buf = 138413827;
        v97 = snapshotType;
        v98 = 2048;
        if (browserCopy)
        {
          v44 = @"web";
        }

        v99 = v84;
        v100 = 2112;
        v101 = v44;
        v102 = 2113;
        v29 = v41;
        v103 = v41;
        v104 = 1024;
        *v105 = 1;
        *&v105[4] = 2113;
        *&v105[6] = domainName3;
        v106 = 2113;
        v107 = v94;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "%@ %llu fetched from DDG %@ list, owner: %{private}@, domainType: %d, domain: %{private}@, bundle: %{private}@", buf, 0x44u);
      }

      else
      {
        v29 = v41;
      }
    }

    else
    {
      v92 = 2;
    }

    v28 = 1;
  }

  else
  {
    v92 = v21;
    v29 = domainOwner2;
    v95[0] = 0;
    v30 = validateSockAddrToString(addressCopy, 0, v95);
    v31 = v95[0];
    v32 = v31;
    if (!v30)
    {
      v34 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413059;
        v35 = v94;
        v97 = snapshotType;
        v98 = 2048;
        v99 = sourceIdentifier;
        v100 = 2113;
        v101 = v94;
        v102 = 2113;
        v103 = addressCopy;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "%@ %llu uses null dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
        domainName3 = 0;
        v36 = 0;
      }

      else
      {
        domainName3 = 0;
        v36 = 0;
        v35 = v94;
      }

      goto LABEL_79;
    }

    v84 = sourceIdentifier;
    if (v31)
    {
      v32 = v31;
      v33 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413315;
        v97 = snapshotType;
        v98 = 2048;
        v99 = sourceIdentifier;
        v100 = 2113;
        v101 = v32;
        v102 = 2113;
        v103 = v94;
        v104 = 2113;
        *v105 = addressCopy;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "%@ %llu uses dest IP address (treating as domainName): %{private}@, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x34u);
      }

      v28 = 2;
    }

    else
    {
      v42 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413059;
        v97 = snapshotType;
        v98 = 2048;
        v99 = sourceIdentifier;
        v100 = 2113;
        v101 = v94;
        v102 = 2113;
        v103 = addressCopy;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "%@ %llu failed to extract dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
      }

      v28 = 0;
    }

    domainName3 = v32;
  }

  domainOwner2 = v29;
  if (domainName3)
  {
    goto LABEL_46;
  }

LABEL_78:
  v29 = domainOwner2;
  v32 = +[NetDomainsHandler sharedInstance];
  v35 = v94;
  [(__CFString *)v32 checkForAutoBugCaptureWorthyCase:v94 domainName:domainName3 initiatedType:v91];
  v36 = 1;
LABEL_79:

  domainOwner2 = v29;
LABEL_81:

  v76 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)_summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke;
    block[3] = &unk_27898C7D0;
    byCopy = by;
    block[4] = self;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetDomains: summarizing data for euid: %u", buf, 8u);
  }

  v4 = *(*(a1 + 32) + 488);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", *(a1 + 48)];
  v6 = [v4 fetchEntityDictionariesWithProperties:&unk_2847EEBB0 predicate:v5];

  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB58] set];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke_782;
  v12[3] = &unk_27898C7A8;
  v13 = v7;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v12];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v9 count], objc_msgSend(v10, "count"), 0);

  v11 = *MEMORY[0x277D85DE8];
}

void __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke_782(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"domain"];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 objectForKeyedSubscript:@"bundleName"];

  [v6 addObject:v7];
}

- (unint64_t)_clearStaleNetDomainsRecords
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 dateWithTimeIntervalSinceNow:-604800.0];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Clearing out AppDomainsUsage with firstTimeStamp older than %@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v9 = [v7 predicateWithFormat:@"%K < %@", @"firstTimeStamp", v8];

  v10 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v9];
  v11 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v10;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %lu AppDomainsUsage records", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)_submitAppDomainUsageRecordInfoAnalytics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ObjectAnalytics *)self->domspace fetchAllEntityDictionariesWithProperties:&unk_2847EEBC8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke;
  v5[3] = &unk_27898C758;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"timeStamp"];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"firstTimeStamp"];

  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v6 >= v9)
  {
    if (AnalyticsSendEventLazy())
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

id __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"intervalSeconds";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32) - *(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_performAppTrackingPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearStaleNetDomainsRecords = [(FlowAnalyticsEngine *)self _clearStaleNetDomainsRecords];
  _submitAppDomainUsageRecordInfoAnalytics = [(FlowAnalyticsEngine *)self _submitAppDomainUsageRecordInfoAnalytics];
  if (replyCopy)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearStaleNetDomainsRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_submitAppDomainUsageRecordInfoAnalytics];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"aduRecordsDeleted", v8, @"aduRecordAnalyticsSubmitted", 0}];

    replyCopy[2](replyCopy, v9, 0);
  }
}

- (void)performAppTrackingPeriodicTasksComplete:(id)complete error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = domainTrackingLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = errorCopy;
      v8 = "Periodic app tracking tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = completeCopy;
    v8 = "Periodic app tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppTrackingPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppTrackingPeriodicTasksWithReply:reply];
  }
}

- (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply
{
  v111 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v9 = [optionsCopy objectForKeyedSubscript:@"clearHistory"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v102 = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Clear history action has nil option or unexpected class %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v14);
  }

  v15 = [v9 objectForKeyedSubscript:@"clearHistoryBundleIDs"];
  if (!v15)
  {
    v16 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Clear history action has nil bundleIDs", buf, 2u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }

  v18 = [v9 objectForKeyedSubscript:@"clearHistoryStartDate"];
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 134218242;
      v102 = v18;
      v103 = 2112;
      v104 = v22;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Clear history action has nil or invalid start date class: %p (%@)", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v23);
  }

  v24 = [v9 objectForKeyedSubscript:@"clearHistoryEndDate"];
  v85 = v24;
  if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 134218242;
      v102 = v85;
      v103 = 2112;
      v104 = v29;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Clear history action has nil or invalid end date class: %p (%@)", buf, 0x16u);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v30);

    v25 = v85;
  }

  v84 = v15;
  v31 = v25;
  if ([v18 compare:v25] == 1)
  {
    v32 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      [v18 timeIntervalSince1970];
      v35 = formattedDateStringForTimeInterval(v34);
      [v31 timeIntervalSince1970];
      v37 = formattedDateStringForTimeInterval(v36);
      *buf = 138412546;
      v102 = v35;
      v103 = 2112;
      v104 = v37;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Clear history action dates misordered: start:%@ end:%@", buf, 0x16u);

      v15 = v84;
    }

    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v38);
  }

  v82 = v18;
  v39 = 0x277CBE000uLL;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  v83 = replyCopy;
  selfCopy = self;
  v81 = v9;
  if (objc_opt_isKindOfClass())
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v41 = v15;
    v42 = [v41 countByEnumeratingWithState:&v97 objects:v110 count:16];
    if (v42)
    {
      v43 = v42;
      v78 = optionsCopy;
      v44 = *v98;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v98 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v97 + 1) + 8 * i);
          v47 = [v41 objectForKeyedSubscript:{v46, v78}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v40 setObject:v47 forKey:v46];
          }

          else
          {
            v48 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              v49 = v48;
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              *buf = 138412547;
              v102 = v51;
              v103 = 2113;
              v104 = v46;
              _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_ERROR, "Clear history action has context of type (%@) for bundleID %{private}@", buf, 0x16u);
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v97 objects:v110 count:16];
      }

      while (v43);
      optionsCopy = v78;
      v31 = v85;
      v39 = 0x277CBE000;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v41 = v15;
      v52 = [v41 countByEnumeratingWithState:&v93 objects:v109 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v94;
        v55 = MEMORY[0x277CBEBF8];
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v94 != v54)
            {
              objc_enumerationMutation(v41);
            }

            [v40 setObject:v55 forKey:*(*(&v93 + 1) + 8 * j)];
          }

          v53 = [v41 countByEnumeratingWithState:&v93 objects:v109 count:16];
        }

        while (v53);
        v31 = v85;
      }

      v39 = 0x277CBE000uLL;
    }

    else
    {
      v57 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v58 = v57;
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138412290;
        v102 = v60;
        _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_ERROR, "Clear history action has bundleIDs of type (%@)", buf, 0xCu);

        v39 = 0x277CBE000uLL;
      }

      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      replyCopy[2](replyCopy, 0, v41);
    }
  }

  if (![v40 count])
  {
    v61 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "Clear history action does not have any valid bundle IDs", buf, 2u);
    }

    v62 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (v83)[2](v83, 0, v62);
  }

  v63 = [optionsCopy objectForKeyedSubscript:@"showDetails"];
  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v63 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v65 = objc_alloc_init(*(v39 + 2872));
  v66 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v67 = v66;
    [v82 timeIntervalSince1970];
    v69 = formattedDateStringForTimeInterval(v68);
    [v31 timeIntervalSince1970];
    formattedDateStringForTimeInterval(v70);
    v72 = v71 = optionsCopy;
    *buf = 138478595;
    v102 = v84;
    v103 = 2112;
    v104 = v69;
    v105 = 2112;
    v106 = v72;
    v107 = 1024;
    v108 = bOOLValue;
    _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "Clear history action received options: %{private}@, start %@, end %@, details %d", buf, 0x26u);

    optionsCopy = v71;
    v31 = v85;
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __72__FlowAnalyticsEngine_performAppTrackingActionWithOptions_userId_reply___block_invoke;
  v86[3] = &unk_27898C7F8;
  idCopy = id;
  v73 = v31;
  v87 = v73;
  v74 = v82;
  v88 = v74;
  v89 = selfCopy;
  v92 = bOOLValue;
  v75 = v65;
  v90 = v75;
  [v40 enumerateKeysAndObjectsUsingBlock:v86];
  v76 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEFAULT, "Clear history action successful", buf, 2u);
  }

  (v83)[2](v83, v75, 0);

  v77 = *MEMORY[0x277D85DE8];
}

void __72__FlowAnalyticsEngine_performAppTrackingActionWithOptions_userId_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v78[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v50 = v5;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@ AND %K <= %@ AND %K >= %@", @"effectiveUserId", *(a1 + 64), @"bundleName", v5, @"firstTimeStamp", *(a1 + 32), @"timeStamp", *(a1 + 40)];
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"context", v6];
    v9 = MEMORY[0x277CCA920];
    v78[0] = v7;
    v78[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Clear history action predicate: %@", buf, 0xCu);
  }

  v13 = [*(*(a1 + 48) + 488) fetchEntityDictionariesWithProperties:&unk_2847EEBE0 predicate:v11];
  v14 = v13;
  if (v13 && [v13 count])
  {
    v48 = v7;
    v49 = v6;
    v46 = v11;
    v47 = a1;
    if (*(a1 + 68) == 1)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    else
    {
      v15 = 0;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = v14;
    obj = v14;
    v55 = [obj countByEnumeratingWithState:&v57 objects:v77 count:16];
    if (v55)
    {
      v54 = *v58;
      v56 = v15;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v58 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          if (v15)
          {
            v18 = [*(*(&v57 + 1) + 8 * i) objectForKeyedSubscript:@"kind"];
            v19 = [v18 integerValue];
            v20 = @"NonAppInitiated";
            if (v19 == 1)
            {
              v20 = @"AppInitiated";
            }

            v21 = v20;

            v22 = objc_alloc(MEMORY[0x277CCACA8]);
            v23 = [v17 objectForKeyedSubscript:@"domain"];
            v24 = [v17 objectForKeyedSubscript:@"domainOwner"];
            v25 = [v17 objectForKeyedSubscript:@"context"];
            v26 = [v17 objectForKeyedSubscript:@"firstTimeStamp"];
            v27 = [v17 objectForKeyedSubscript:@"timeStamp"];
            v28 = [v17 objectForKeyedSubscript:@"hits"];
            v29 = [v22 initWithFormat:@"%@, %@, %@, %@, %@, %@, %ld", v23, v24, v25, v21, v26, v27, objc_msgSend(v28, "integerValue")];

            v15 = v56;
            [v56 addObject:v29];
          }

          v30 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v30;
            v52 = [v17 objectForKeyedSubscript:@"domain"];
            v31 = [v17 objectForKeyedSubscript:@"domainOwner"];
            v32 = [v17 objectForKeyedSubscript:@"context"];
            v33 = [v17 objectForKeyedSubscript:@"kind"];
            v34 = [v17 objectForKeyedSubscript:@"hits"];
            v35 = [v17 objectForKeyedSubscript:@"firstTimeStamp"];
            [v35 timeIntervalSince1970];
            v37 = formattedDateStringForTimeInterval(v36);
            v38 = [v17 objectForKeyedSubscript:@"timeStamp"];
            [v38 timeIntervalSince1970];
            v40 = formattedDateStringForTimeInterval(v39);
            *buf = 138479619;
            v62 = v50;
            v63 = 2113;
            v64 = v52;
            v65 = 2113;
            v66 = v31;
            v67 = 2113;
            v68 = v32;
            v69 = 2112;
            v70 = v33;
            v71 = 2112;
            v72 = v34;
            v73 = 2112;
            v74 = v37;
            v75 = 2112;
            v76 = v40;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Clear history action for %{private}@ matched ADU record with domain: %{private}@, owner: %{private}@, context: %{private}@, initiatedType: %@, hits: %@, start: %@, end: %@", buf, 0x52u);

            v15 = v56;
          }
        }

        v55 = [obj countByEnumeratingWithState:&v57 objects:v77 count:16];
      }

      while (v55);
    }

    if (v15)
    {
      [*(v47 + 56) setObject:v15 forKeyedSubscript:v50];
    }

    v11 = v46;
    [*(*(v47 + 48) + 488) removeEntitiesMatching:v46];

    v7 = v48;
    v6 = v49;
    v14 = v45;
  }

  v41 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    v43 = [v14 count];
    *buf = 134218243;
    v62 = v43;
    v63 = 2113;
    v64 = v50;
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "Clear history action removed %lu ADU records for %{private}@", buf, 0x16u);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)submitNetworkDomainUsageToDateSPICallMetric
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageSPICall to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (void)_handleEndpointTrackingNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy objectForKeyedSubscript:@"userEndpointTrackingUserID"];
  v6 = [notificationCopy objectForKeyedSubscript:@"userEndpointTrackingState"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v5 unsignedIntValue];
          bOOLValue = [v6 BOOLValue];
          self->endpointTrackingEnabled = bOOLValue;
          if (bOOLValue)
          {
            v9 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v14 = 67109120;
              v15 = unsignedIntValue;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Endpoint tracking enabled for user %u", &v14, 8u);
            }

            if (self->appTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self createAppEndpointsStorageForUserId:unsignedIntValue];
            }
          }

          else
          {
            v10 = os_transaction_create();
            if (v10)
            {
              v11 = v10;
              v12 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v14 = 67109120;
                v15 = unsignedIntValue;
                _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Endpoint tracking disabled for user %u, clearing out the account's EndpointTracking data", &v14, 8u);
              }

              [(FlowAnalyticsEngine *)self clearAppEndpointsForUserWithID:unsignedIntValue];
            }
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppTrackingNotification:(id)notification
{
  v66 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = [notificationCopy objectForKeyedSubscript:@"userAppTrackingUserID"];
  v5 = [notificationCopy objectForKeyedSubscript:@"userAppTrackingState"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = v4;
          v51 = notificationCopy;
          unsignedIntValue = [v4 unsignedIntValue];
          v49 = v5;
          self->appTrackingEnabled = [v5 BOOLValue];
          context = objc_autoreleasePoolPush();
          v48 = unsignedIntValue;
          v46 = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId = %d AND bundleName = %@", unsignedIntValue, &stru_2847966D8];
          v7 = [ObjectAnalytics fetchEntitiesFreeForm:"fetchEntitiesFreeForm:sortDesc:limit:batchSize:" sortDesc:? limit:? batchSize:?];
          v8 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            *buf = 134217984;
            v60 = [v7 count];
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Will migrate %lu AppDomainUsage objects to new schema", buf, 0xCu);
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v10 = v7;
          v11 = [v10 countByEnumeratingWithState:&v55 objects:v65 count:16];
          v53 = v10;
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v56;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v56 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v55 + 1) + 8 * i);
                v17 = objc_autoreleasePoolPush();
                v18 = v16;
                bundleName = [v18 bundleName];
                v20 = [bundleName length];

                if (!v20)
                {
                  hasApp = [v18 hasApp];
                  bundleName2 = [hasApp bundleName];

                  if (bundleName2)
                  {
                    hasApp2 = [v18 hasApp];
                    bundleName3 = [hasApp2 bundleName];

                    [v18 setBundleName:bundleName3];
                    ++v13;
                    v25 = domainTrackingLogHandle;
                    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v26 = v25;
                      domain = [v18 domain];
                      bundleName4 = [v18 bundleName];
                      *buf = 134218499;
                      v60 = v13;
                      v61 = 2113;
                      v62 = domain;
                      v63 = 2113;
                      v64 = bundleName4;
                      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "%lu: Updated old ADU's (domain: %{private}@) bundleName to %{private}@", buf, 0x20u);

                      v10 = v53;
                    }

                    if (__ROR8__(0x1CAC083126E978D5 * v13, 3) <= 0x4189374BC6A7EFuLL)
                    {
                      v54 = v13;
                      [(AnalyticsWorkspace *)self->super.workspace save];
                      mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
                      [mainObjectContext refreshAllObjects];
                      v30 = domainTrackingLogHandle;
                      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = v30;
                        domain2 = [v18 domain];
                        bundleName5 = [v18 bundleName];
                        *buf = 134218499;
                        v60 = v54;
                        v61 = 2113;
                        v62 = domain2;
                        v63 = 2113;
                        v64 = bundleName5;
                        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "%lu: Intermediate save and refresh up to domain: %{private}@, bundleName: %{private}@", buf, 0x20u);

                        v10 = v53;
                      }

                      v13 = v54;
                    }
                  }
                }

                objc_autoreleasePoolPop(v17);
              }

              v12 = [v10 countByEnumeratingWithState:&v55 objects:v65 count:16];
            }

            while (v12);
          }

          notificationCopy = v51;
          if ([v10 count])
          {
            [(AnalyticsWorkspace *)self->super.workspace save];
            mainObjectContext2 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
            [mainObjectContext2 refreshAllObjects];
            v35 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "Final save and refresh, DB migration completed", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(context);
          appTrackingEnabled = self->appTrackingEnabled;
          v37 = domainTrackingLogHandle;
          v38 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
          if (appTrackingEnabled)
          {
            if (v38)
            {
              *buf = 67109120;
              LODWORD(v60) = v48;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "App tracking enabled for user %u", buf, 8u);
            }

            v5 = v49;
            v4 = v50;
            if (!self->snapshotFlowUUIDs)
            {
              v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
              snapshotFlowUUIDs = self->snapshotFlowUUIDs;
              self->snapshotFlowUUIDs = v39;

              v41 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "Creating an empty in-memory storage for snapshots' flow UUIDs", buf, 2u);
              }
            }

            if (!self->trackedSourceIDs)
            {
              v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
              trackedSourceIDs = self->trackedSourceIDs;
              self->trackedSourceIDs = v42;

              v44 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "Creating an empty in-memory storage for tracking source identifiers for flows and connections", buf, 2u);
              }
            }

            if (self->endpointTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self createAppEndpointsStorageForUserId:v48];
            }
          }

          else
          {
            if (v38)
            {
              *buf = 67109120;
              LODWORD(v60) = v48;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "App tracking disabled for user %u", buf, 8u);
            }

            [(NSMutableDictionary *)self->snapshotFlowUUIDs removeAllObjects];
            [(NSMutableDictionary *)self->trackedSourceIDs removeAllObjects];
            [(FlowAnalyticsEngine *)self _clearAppDomainAndEndpointTrackingForUserWithID:v48];
            v5 = v49;
            v4 = v50;
          }
        }
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_repurposeAppEndpointRecords:(id)records
{
  v65 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = recordsCopy;
  v5 = [v4 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v55;
    v8 = 0x277CBE000uLL;
    v9 = @"endpointSet";
    v10 = 0x277CBE000uLL;
    v42 = *v55;
    v43 = v4;
    do
    {
      v11 = 0;
      v45 = v6;
      do
      {
        if (*v55 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        if (v12)
        {
          v13 = *(v8 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v12 mutableCopy];
            v15 = [v14 objectForKeyedSubscript:v9];
            if (v15)
            {
              v47 = v14;
              v16 = *(v10 + 2968);
              v63[0] = objc_opt_class();
              v63[1] = objc_opt_class();
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
              v18 = [v16 setWithArray:v17];

              v53 = 0;
              v46 = v18;
              v19 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v18 fromData:v15 error:&v53];
              v20 = v53;
              v48 = v19;
              if (!v20 && v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v21 = v19;
                v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v24 = v21;
                v25 = [v24 countByEnumeratingWithState:&v49 objects:v62 count:16];
                if (v25)
                {
                  v26 = v25;
                  v27 = *v50;
                  do
                  {
                    for (i = 0; i != v26; ++i)
                    {
                      if (*v50 != v27)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v29 = *(*(&v49 + 1) + 8 * i);
                      v30 = v22;
                      if ([v29 type])
                      {
                        v30 = v23;
                        if ([v29 type] != 1)
                        {
                          continue;
                        }
                      }

                      name = [v29 name];
                      [v30 addObject:name];
                    }

                    v26 = [v24 countByEnumeratingWithState:&v49 objects:v62 count:16];
                  }

                  while (v26);
                }

                v9 = @"endpointSet";
                [v47 removeObjectForKey:@"endpointSet"];
                [v47 setObject:v22 forKeyedSubscript:@"UnresolvedEndpoints"];
                [v47 setObject:v23 forKeyedSubscript:@"ResolvedEndpoints"];
                [v44 addObject:v47];

                v7 = v42;
                v4 = v43;
                v6 = v45;
                v20 = 0;
                v8 = 0x277CBE000;
                v10 = 0x277CBE000;
              }

              else
              {
                v32 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v33 = v32;
                  v34 = objc_opt_class();
                  NSStringFromClass(v34);
                  v35 = v4;
                  v36 = v9;
                  v37 = v10;
                  v39 = v38 = v20;
                  *buf = 138412546;
                  v59 = v39;
                  v60 = 2112;
                  v61 = v38;
                  _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Failed to unarchive, endpoints record is nil or unexpected class %@, error %@", buf, 0x16u);

                  v20 = v38;
                  v10 = v37;
                  v9 = v36;
                  v4 = v35;
                  v8 = 0x277CBE000;
                }
              }

              v14 = v47;
            }
          }
        }

        ++v11;
      }

      while (v11 != v6);
      v6 = [v4 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v6);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)updateEffectiveUserId:(id)id
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [id objectForKeyedSubscript:@"UMSwitchToUserID"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      gEffectiveUserId = [v3 intValue];
      v4 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v6[0] = 67109120;
        v6[1] = gEffectiveUserId;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "gEffectiveUserId changed to %u", v6, 8u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAppEndpoints:(id)endpoints
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [(ObjectAnalytics *)self->epspace removeEntitiesMatching:0];
  allAppEndpoints = self->allAppEndpoints;
  if (allAppEndpoints)
  {
    [(NSMutableDictionary *)allAppEndpoints removeAllObjects];
  }

  resolvedAppEndpoints = self->resolvedAppEndpoints;
  if (resolvedAppEndpoints)
  {
    [(NSMutableDictionary *)resolvedAppEndpoints removeAllObjects];
  }

  determinedTrackersFromAPICount = self->determinedTrackersFromAPICount;
  if (determinedTrackersFromAPICount)
  {
    [(NSMutableDictionary *)determinedTrackersFromAPICount removeAllObjects];
  }

  v8 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->allAppEndpoints;
    v10 = self->resolvedAppEndpoints;
    v11 = self->determinedTrackersFromAPICount;
    v13 = 134218755;
    v14 = v4;
    v15 = 2113;
    v16 = v9;
    v17 = 2113;
    v18 = v10;
    v19 = 2113;
    v20 = v11;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "UserManagement: Cleared out all %ld endpoint tracking data, all: %{private}@, resolved: %{private}@, trackersFromAPI: %{private}@", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)clearAppDomainUsage:(id)usage
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:0];
  v4 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "UserManagement: Cleared out all %ld domain tracking data.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_appExperienceForApp:(id)app forTime:(id)time
{
  v26 = *MEMORY[0x277D85DE8];
  appCopy = app;
  timeCopy = time;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  hasAppExperience = [appCopy hasAppExperience];
  v9 = [hasAppExperience countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(hasAppExperience);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      firstTimeStamp = [v13 firstTimeStamp];
      [firstTimeStamp timeIntervalSinceDate:timeCopy];
      v16 = v15;

      v17 = v16;
      if (v16 < 0)
      {
        v17 = -v17;
      }

      if (v17 >> 7 < 0x2A3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [hasAppExperience countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    createEntity = v13;

    if (createEntity)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  createEntity = [(ObjectAnalytics *)self->expspace createEntity];
  [createEntity setFirstTimeStamp:timeCopy];
  [appCopy addHasAppExperienceObject:createEntity];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return createEntity;
}

- (void)_performAppExperiencePeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _pruneAppExperienceRecords = [(FlowAnalyticsEngine *)self _pruneAppExperienceRecords];
  if (replyCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_pruneAppExperienceRecords];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    replyCopy[2](replyCopy, v7, 0);
  }
}

- (void)performAppExperiencePeriodicTasksComplete:(id)complete error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = appExperienceLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = errorCopy;
      v8 = "Periodic app experience tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = completeCopy;
    v8 = "Periodic app experience tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppExperiencePeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppExperiencePeriodicTasksWithReply:reply];
  }
}

- (unint64_t)_pruneAppExperienceRecords
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %@", @"firstTimeStamp", v3];
  v5 = [(ObjectAnalytics *)self->expspace removeEntitiesMatching:v4];
  v6 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Removed %ld AppExperience entries", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_algosScoreFor:(id)for score:(double)score
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(for);
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412546;
    v23 = v6;
    v24 = 2048;
    scoreCopy = score;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Bundle: %@ score: %f", &v22, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (v6 != 0.0)
  {
    v9 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:*&v6 shouldFillMiss:0];
    v10 = v9;
    if (v9 && [v9 isApp])
    {
      v11 = v10;
      v12 = [(FlowAnalyticsEngine *)self _appExperienceForApp:v11 forTime:date];
      v13 = v12;
      if (v12)
      {
        [v12 setAlgosSamples:{objc_msgSend(v12, "algosSamples") + 1}];
        [v13 algosScore];
        v15 = v14;
        [v13 setAlgosScore:{v14 + (score - v14) / objc_msgSend(v13, "algosSamples")}];
        v16 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          [v13 algosScore];
          v22 = 138413058;
          v23 = v6;
          v24 = 2048;
          scoreCopy = v15;
          v26 = 2048;
          scoreCopy2 = score;
          v28 = 2048;
          v29 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Bundle %@ agg-value: %f, new value: %f, new agg-value: %f", &v22, 0x2Au);
        }

        [v13 setTimeStamp:date];
      }

      else
      {
        v20 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = 138412290;
          v23 = v6;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Couldn't create AppExperience record for bundle %@", &v22, 0xCu);
        }
      }
    }

    else
    {
      v19 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412546;
        v23 = *&v10;
        v24 = 2112;
        scoreCopy = v6;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Either no entry (%@) or non-App entry for bundle %@", &v22, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLiveFlowPerfinScope:(id)scope forTime:(id)time andTag:(id)tag
{
  scopeCopy = scope;
  tagCopy = tag;
  timeCopy = time;
  timeStamp = [scopeCopy timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v12 = v11;

  v13 = v12;
  if (v12 < 0)
  {
    v13 = -v13;
  }

  if (v13 >> 7 <= 0x2A2)
  {
    v15 = [scopeCopy tag];
    v14 = [v15 isEqualToString:tagCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_removeOldFlowRecords
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.84467441e19];
  v4 = MEMORY[0x277CCAC30];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", distantPast, @"timeStamp", v3];

  v7 = [(ObjectAnalytics *)self->lfpspace fetchEntitiesFreeForm:v6 sortDesc:0];
  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    *buf = 134217984;
    v12 = [v7 count];
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: removing %lu flow entries", buf, 0xCu);
  }

  [(ObjectAnalytics *)self->lfpspace removeEntities:v7];
  [(AnalyticsWorkspace *)self->super.workspace save];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_flowFetchForName:(id)name
{
  v45 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v5 = objc_autoreleasePoolPush();
  if (![(NSMutableDictionary *)self->flowCache count])
  {
    v6 = [(ObjectAnalytics *)self->fspace fetchEntitiesFreeForm:0 sortDesc:0];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __41__FlowAnalyticsEngine__flowFetchForName___block_invoke;
    v37[3] = &unk_27898C820;
    v37[4] = self;
    [v6 enumerateObjectsUsingBlock:v37];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      flowCache = self->flowCache;
      v9 = v7;
      v10 = [(NSMutableDictionary *)flowCache count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "flow cache force-populated with %lu entries", &buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v11 = [(NSMutableDictionary *)self->flowCache objectForKey:nameCopy];
  v12 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v11;

  v13 = *(*(&buf + 1) + 40);
  if (!v13)
  {
    nameCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"remoteID", nameCopy];
    v16 = [(ObjectAnalytics *)self->fspace fetchEntitiesFreeForm:nameCopy sortDesc:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__FlowAnalyticsEngine__flowFetchForName___block_invoke_843;
    v34[3] = &unk_27898C848;
    v17 = nameCopy;
    v35 = v17;
    p_buf = &buf;
    [v16 enumerateObjectsUsingBlock:v34];
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      [(NSMutableDictionary *)self->flowCache setObject:v18 forKey:v17];
LABEL_17:
      v14 = *(*(&buf + 1) + 40);

      goto LABEL_18;
    }

    fspace = self->fspace;
    entityName = [MEMORY[0x277D6B590] entityName];
    v21 = [(ObjectAnalytics *)fspace createEntityForEntityName:entityName];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;

    v23 = *(*(&buf + 1) + 40);
    if (v23)
    {
      [v23 setRemoteID:v17];
      date = [MEMORY[0x277CBEAA8] date];
      [*(*(&buf + 1) + 40) setFirstTimeStamp:date];

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [*(*(&buf + 1) + 40) setTimeStamp:distantPast];

      v26 = [MEMORY[0x277CCABB0] numberWithShort:0];
      [*(*(&buf + 1) + 40) setKind:v26];

      [(NSMutableDictionary *)self->flowCache setObject:*(*(&buf + 1) + 40) forKey:v17];
      v27 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *v38 = 138412290;
      v39 = v17;
      v28 = "flowCache miss for %@";
      v29 = v27;
      v30 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v31 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v38 = 138412290;
      v39 = v17;
      v28 = "Failed to allocate Flow entity for %@";
      v29 = v31;
      v30 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_23255B000, v29, v30, v28, v38, 0xCu);
    goto LABEL_17;
  }

  v14 = v13;
LABEL_18:
  _Block_object_dispose(&buf, 8);

LABEL_19:
  v32 = *MEMORY[0x277D85DE8];

  return v14;
}

void __41__FlowAnalyticsEngine__flowFetchForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteID];
  [*(*(a1 + 32) + 440) setObject:v3 forKey:v4];
  [*(*(a1 + 32) + 472) refresh:v3];
}

void __41__FlowAnalyticsEngine__flowFetchForName___block_invoke_843(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 remoteID];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_parseEvent:(id)event withGeneration:(id *)generation
{
  v86 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  fspace = self->fspace;
  entityName = [MEMORY[0x277D6B598] entityName];
  v9 = [(ObjectAnalytics *)fspace createTemporaryEntityForEntityName:entityName];

  v72 = eventCopy;
  [eventCopy keyEnumerator];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v10 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    generationCopy = generation;
    v68 = v9;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    log = *v74;
LABEL_3:
    v15 = 0;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    while (1)
    {
      if (*v74 != log)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v73 + 1) + 8 * v15);

      v19 = [v72 objectForKeyedSubscript:v12];
      eventData = [v19 eventData];
      v21 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v78 = v12;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification for %@", buf, 0xCu);
      }

      v14 = [v19 eventQualifierStringForKey:{@"1", generationCopy}];

      v13 = [v19 eventQualifierStringForKey:@"2"];

      if (v14)
      {
        v22 = v13 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v30 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          loga = v30;
          eventQualifiers = [v19 eventQualifiers];
          v32 = [eventQualifiers objectForKeyedSubscript:@"1"];
          if (v32)
          {
            v33 = " not";
          }

          else
          {
            v33 = "";
          }

          eventQualifiers2 = [v19 eventQualifiers];
          v35 = [eventQualifiers2 objectForKeyedSubscript:@"2"];
          *buf = 138412802;
          v36 = " not";
          if (!v35)
          {
            v36 = "";
          }

          v78 = v12;
          v79 = 2080;
          v80 = v33;
          v81 = 2080;
          v82 = v36;
          _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_ERROR, "%@ with incorrect qualifiers: 1 is%s nil, 2 is%s nil", buf, 0x20u);
        }

LABEL_27:
        v29 = 0;
        v9 = v68;
        goto LABEL_44;
      }

      v23 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.establishstats"];
      v24 = [v12 isEqualToString:v23];

      if (v24)
      {
        break;
      }

      v25 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.sendstats"];
      v26 = [v12 isEqualToString:v25];

      if (v26)
      {
        v47 = eventData;
        v48 = *(eventData + 4) & 0xF;
        v9 = v68;
        if (v48 == 15)
        {
          [v68 setTmpID:v14];
          v49 = v13;
          *generationCopy = v13;
          v50 = [MEMORY[0x277CCABB0] numberWithDouble:v47[3]];
          [v68 setTxPackets:v50];

          v51 = [MEMORY[0x277CCABB0] numberWithDouble:v47[4]];
          [v68 setTxReTxPackets:v51];

          v52 = [MEMORY[0x277CCABB0] numberWithDouble:v47[5]];
          [v68 setTxFailPackets:v52];

          v53 = [MEMORY[0x277CCABB0] numberWithDouble:v47[6]];
          [v68 setTxReTxInterval:v53];

          v54 = [MEMORY[0x277CCABB0] numberWithShort:1];
          [v68 setKind:v54];

          [v68 setTag:@"IKE"];
        }

        v55 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
LABEL_41:
          *buf = 138412802;
          v78 = v12;
          v79 = 2112;
          v80 = v14;
          v81 = 2112;
          v82 = v13;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: parsed %@, %@, %@", buf, 0x20u);
        }

LABEL_42:

        if (v48 == 15)
        {
LABEL_43:
          v29 = v9;
          goto LABEL_44;
        }

LABEL_33:
        v29 = 0;
        goto LABEL_44;
      }

      v27 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.disconnectstats"];
      v28 = [v12 isEqualToString:v27];

      if (v28)
      {
        v56 = eventData;
        v48 = *(eventData + 4) & 0xF;
        v9 = v68;
        if (v48 == 15)
        {
          [v68 setTmpID:v14];
          v57 = v13;
          *generationCopy = v13;
          v58 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
          [v68 setConnAttempts:v58];

          v59 = [MEMORY[0x277CCABB0] numberWithDouble:v56[3]];
          [v68 setTxPackets:v59];

          v60 = [MEMORY[0x277CCABB0] numberWithDouble:v56[4]];
          [v68 setTxReTxPackets:v60];

          v61 = [MEMORY[0x277CCABB0] numberWithDouble:v56[5]];
          [v68 setTxFailPackets:v61];

          v62 = [MEMORY[0x277CCABB0] numberWithDouble:v56[6]];
          [v68 setOverallTime:v62];

          v63 = [MEMORY[0x277CCABB0] numberWithShort:2];
          [v68 setKind:v63];

          [v68 setTag:@"IKE"];
        }

        v55 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      ++v15;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      if (v11 == v15)
      {
        v11 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        v12 = 0;
        goto LABEL_27;
      }
    }

    v37 = eventData;
    v38 = *(eventData + 4) & 3;
    v9 = v68;
    if (v38 == 3)
    {
      [v68 setTmpID:v14];
      v39 = v13;
      *generationCopy = v13;
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v68 setConnSuccesses:v40];

      connSuccesses = [v68 connSuccesses];
      [v68 setConnAttempts:connSuccesses];

      v42 = [MEMORY[0x277CCABB0] numberWithDouble:(*(v37 + 32) + (*(v37 + 24) * 1000000.0))];
      [v68 setUsecsEstabTime:v42];

      v43 = [MEMORY[0x277CCABB0] numberWithShort:0];
      [v68 setKind:v43];

      [v68 setTag:@"IKE"];
    }

    v44 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v45 = v44;
      usecsEstabTime = [v68 usecsEstabTime];
      *buf = 138413058;
      v78 = v12;
      v79 = 2112;
      v80 = v14;
      v81 = 2112;
      v82 = v13;
      v83 = 2112;
      v84 = usecsEstabTime;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: parsed %@, %@, %@, %@", buf, 0x2Au);
    }

    if (v38 == 3)
    {
      goto LABEL_43;
    }

    goto LABEL_33;
  }

  v12 = 0;
  v29 = 0;
  v13 = 0;
  v14 = 0;
LABEL_44:

  v64 = v29;
  v65 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)_archiveRecord:(id)record
{
  v95 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    tmpID = [recordCopy tmpID];
    *buf = 134218242;
    v92 = recordCopy;
    v93 = 2112;
    v94 = tmpID;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: archiving flow record %p for %@", buf, 0x16u);
  }

  tmpID2 = [recordCopy tmpID];
  v10 = [(FlowAnalyticsEngine *)self _flowFetchForName:tmpID2];

  if (v10)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = v10;
    hasLivePerformance = [v10 hasLivePerformance];
    v12 = [hasLivePerformance countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v87;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v87 != v14)
        {
          objc_enumerationMutation(hasLivePerformance);
        }

        v16 = *(*(&v86 + 1) + 8 * v15);
        v17 = [recordCopy tag];
        v18 = [(FlowAnalyticsEngine *)self _isLiveFlowPerfinScope:v16 forTime:date andTag:v17];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [hasLivePerformance countByEnumeratingWithState:&v86 objects:v90 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      createEntity = v16;

      v10 = v85;
      if (createEntity)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_12:

      v10 = v85;
    }

    createEntity = [(ObjectAnalytics *)self->lfpspace createEntity];
    v20 = [DateRounder roundToDayResolutionOnly:date];
    [createEntity setTimeStamp:v20];

    [v10 addHasLivePerformanceObject:createEntity];
    hasLivePerformance2 = [v10 hasLivePerformance];
    v22 = [hasLivePerformance2 count];

    if (v22 == 1)
    {
      timeStamp = [createEntity timeStamp];
      [v10 setFirstTimeStamp:timeStamp];
    }

LABEL_16:
    v24 = [recordCopy tag];
    [createEntity setTag:v24];

    connSuccesses = [createEntity connSuccesses];
    [connSuccesses doubleValue];
    v27 = v26;

    v28 = MEMORY[0x277CCABB0];
    connSuccesses2 = [recordCopy connSuccesses];
    [connSuccesses2 doubleValue];
    v31 = [v28 numberWithDouble:v27 + v30];
    [createEntity setConnSuccesses:v31];

    connAttempts = [createEntity connAttempts];
    [connAttempts doubleValue];
    v34 = v33;

    v35 = MEMORY[0x277CCABB0];
    connAttempts2 = [recordCopy connAttempts];
    [connAttempts2 doubleValue];
    v38 = [v35 numberWithDouble:v34 + v37];
    [createEntity setConnAttempts:v38];

    usecsEstabTime = [createEntity usecsEstabTime];
    [usecsEstabTime doubleValue];
    v41 = v40;

    v42 = MEMORY[0x277CCABB0];
    usecsEstabTime2 = [recordCopy usecsEstabTime];
    [usecsEstabTime2 doubleValue];
    v45 = [v42 numberWithDouble:v41 + v44];
    [createEntity setUsecsEstabTime:v45];

    txPackets = [createEntity txPackets];
    [txPackets doubleValue];
    v48 = v47;

    v49 = MEMORY[0x277CCABB0];
    txPackets2 = [recordCopy txPackets];
    [txPackets2 doubleValue];
    v52 = [v49 numberWithDouble:v48 + v51];
    [createEntity setTxPackets:v52];

    txReTxPackets = [createEntity txReTxPackets];
    [txReTxPackets doubleValue];
    v55 = v54;

    v56 = MEMORY[0x277CCABB0];
    txReTxPackets2 = [recordCopy txReTxPackets];
    [txReTxPackets2 doubleValue];
    v59 = [v56 numberWithDouble:v55 + v58];
    [createEntity setTxReTxPackets:v59];

    txFailPackets = [createEntity txFailPackets];
    [txFailPackets doubleValue];
    v62 = v61;

    v63 = MEMORY[0x277CCABB0];
    txFailPackets2 = [recordCopy txFailPackets];
    [txFailPackets2 doubleValue];
    v66 = [v63 numberWithDouble:v62 + v65];
    [createEntity setTxFailPackets:v66];

    overallTime = [createEntity overallTime];
    [overallTime doubleValue];
    v69 = v68;

    v70 = MEMORY[0x277CCABB0];
    overallTime2 = [recordCopy overallTime];
    [overallTime2 doubleValue];
    v73 = [v70 numberWithDouble:v69 + v72];
    [createEntity setOverallTime:v73];

    timesThresholded = [createEntity timesThresholded];
    [timesThresholded doubleValue];
    v76 = v75;

    v77 = MEMORY[0x277CCABB0];
    timesThresholded2 = [recordCopy timesThresholded];
    [timesThresholded2 doubleValue];
    v80 = [v77 numberWithDouble:v76 + v79];
    [createEntity setTimesThresholded:v80];

    [(AnalyticsWorkspace *)self->super.workspace save];
  }

  else
  {
    v81 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v82 = v81;
      tmpID3 = [recordCopy tmpID];
      *buf = 138412290;
      v92 = tmpID3;
      _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_ERROR, "Failing to track usage for flow %@", buf, 0xCu);
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)_pruneFlowHistory
{
  date = [MEMORY[0x277CBEAA8] date];
  flowInstant = self->flowInstant;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke;
  v6[3] = &unk_27898B7F0;
  v7 = date;
  v5 = date;
  [(NSMutableDictionary *)flowInstant enumerateKeysAndObjectsUsingBlock:v6];
}

void __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v27 = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: now pruning for key %@", buf, 0xCu);
  }

  if ([v6 count] >= 2)
  {
    v20 = v5;
    v8 = [v6 objectAtIndex:0];
    v9 = MEMORY[0x277D85DD0];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854;
    v24 = &unk_27898C4B8;
    v25 = *(a1 + 32);
    v10 = [v6 indexOfObjectPassingTest:&v21];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [v6 indexOfObjectPassingTest:&v21])
      {
        v12 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v13 = v12;
          v14 = [v6 count];
          *buf = 134217984;
          v27 = v14;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: pruning one record, records left = %lu", buf, 0xCu);
        }

        v15 = [v6 objectAtIndex:i];
        v16 = [v15 txPackets];
        [v8 setTxPackets:v16];

        v17 = [v15 txReTxPackets];
        [v8 setTxReTxPackets:v17];

        v18 = [v15 txFailPackets];
        [v8 setTxFailPackets:v18];

        [v6 removeObjectAtIndex:i];
        v21 = v9;
        v22 = 3221225472;
        v23 = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854;
        v24 = &unk_27898C4B8;
        objc_storeStrong(&v25, *(a1 + 32));
      }
    }

    v5 = v20;
  }

  v19 = *MEMORY[0x277D85DE8];
}

BOOL __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  if ([v4 shortValue] == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v3 timeStamp];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7 > 60.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_newFlowData:(id)data
{
  v82 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification", buf, 2u);
  }

  userInfo = [dataCopy userInfo];
  v75 = 0;
  v5 = [(FlowAnalyticsEngine *)self _parseEvent:userInfo withGeneration:&v75];
  v60 = v75;
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v5 setTimeStamp:date];
    v59 = [(NSMutableDictionary *)self->flowInstant objectForKeyedSubscript:v60];
    if (v59)
    {
      [(FlowAnalyticsEngine *)self _pruneFlowHistory];
      v61 = [v59 objectAtIndex:0];
      kind = [v61 kind];
      v7 = [kind shortValue] == 0;

      if (!v7)
      {
        v8 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          tmpID = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = tmpID;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (1) no head-end for flow %@, discarding all its records", buf, 0xCu);
        }

        goto LABEL_50;
      }
    }

    else
    {
      kind2 = [v5 kind];
      v12 = [kind2 shortValue] == 1;

      if (v12)
      {
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          tmpID2 = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = tmpID2;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (2) no head-end for flow %@, discarding all its records", buf, 0xCu);
        }

        v61 = 0;

        goto LABEL_51;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v81 = 0;
      flowInstant = self->flowInstant;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __36__FlowAnalyticsEngine__newFlowData___block_invoke;
      v72[3] = &unk_27898C870;
      v17 = v5;
      v73 = v17;
      v74 = buf;
      [(NSMutableDictionary *)flowInstant enumerateKeysAndObjectsUsingBlock:v72];
      v18 = *(*&buf[8] + 24);
      if (v18 == 1)
      {
        v19 = analyticsLogHandle;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          tmpID3 = [v17 tmpID];
          *v78 = 138412290;
          v79 = tmpID3;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (3) avoiding multiple instantiations for flow %@, discarding all its new records", v78, 0xCu);
        }

        v59 = 0;
      }

      else
      {
        v59 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
        [(NSMutableDictionary *)self->flowInstant setObject:v59 forKeyedSubscript:v60];
      }

      _Block_object_dispose(buf, 8);
      v61 = 0;
      if (v18)
      {
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }
    }

    kind3 = [v5 kind];
    shortValue = [kind3 shortValue];

    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      tmpID4 = [v5 tmpID];
      *buf = 67109378;
      *&buf[4] = shortValue;
      *&buf[8] = 2112;
      *&buf[10] = tmpID4;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: receiving record kind %hd for %@", buf, 0x12u);
    }

    if (shortValue == 2)
    {
      if (v61)
      {
        overallTime = [v5 overallTime];
        [v61 setOverallTime:overallTime];

        txPackets = [v5 txPackets];
        [v61 setTxPackets:txPackets];

        txReTxPackets = [v5 txReTxPackets];
        [v61 setTxReTxPackets:txReTxPackets];

        txFailPackets = [v5 txFailPackets];
        [v61 setTxFailPackets:txFailPackets];
      }

      else
      {
        v61 = v5;
        internal_symptom_create();
        v47 = [v61 tag];
        v48 = v47;
        uTF8String = [v47 UTF8String];

        strlen(uTF8String);
        internal_symptom_set_additional_qualifier();
        internal_symptom_send();
      }

      [(FlowAnalyticsEngine *)self _archiveRecord:v61];
      [v59 removeAllObjects];
      [(NSMutableDictionary *)self->flowInstant removeObjectForKey:v60];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      flowWatchers = [(FlowAnalyticsEngine *)self flowWatchers];
      allValues = [flowWatchers allValues];

      v52 = [allValues countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v52)
      {
        v53 = *v65;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v65 != v53)
            {
              objc_enumerationMutation(allValues);
            }

            v55 = *(*(&v64 + 1) + 8 * i);
            v56 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: scan list to detect dead watchpoints", buf, 2u);
            }

            (*(v55 + 16))(v55);
          }

          v52 = [allValues countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v52);
      }
    }

    else if (shortValue == 1)
    {
      [v59 addObject:v5];
      timesThresholded = [v61 timesThresholded];
      [timesThresholded doubleValue];
      v31 = v30;

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31 + 1.0];
      [v61 setTimesThresholded:v32];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      flowWatchers2 = [(FlowAnalyticsEngine *)self flowWatchers];
      allValues2 = [flowWatchers2 allValues];

      v35 = [allValues2 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v35)
      {
        v36 = *v69;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v69 != v36)
            {
              objc_enumerationMutation(allValues2);
            }

            v38 = *(*(&v68 + 1) + 8 * j);
            v39 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: found a live watcher to test", buf, 2u);
            }

            (*(v38 + 16))(v38);
          }

          v35 = [allValues2 countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v35);
      }
    }

    else if (shortValue)
    {
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        tmpID5 = [v5 tmpID];
        *buf = 67109378;
        *&buf[4] = shortValue;
        *&buf[8] = 2112;
        *&buf[10] = tmpID5;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: unknown record kind %hd for %@", buf, 0x12u);
      }
    }

    else
    {
      [v59 addObject:v5];
      internal_symptom_create();
      v26 = [v5 tag];
      v27 = v26;
      uTF8String2 = [v26 UTF8String];

      strlen(uTF8String2);
      internal_symptom_set_additional_qualifier();
      internal_symptom_send();
    }

    goto LABEL_50;
  }

  v61 = 0;
LABEL_52:

  v57 = *MEMORY[0x277D85DE8];
}

void __36__FlowAnalyticsEngine__newFlowData___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = [a3 firstObject];
  v6 = [v9 tmpID];
  v7 = [*(a1 + 32) tmpID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_updateTetheringUsage:(BOOL)usage
{
  usageCopy = usage;
  __src[65] = *MEMORY[0x277D85DE8];
  memset(__src, 0, 512);
  if (_updateTetheringUsage__pred != -1)
  {
    [FlowAnalyticsEngine _updateTetheringUsage:];
  }

  if (self->isTetherActive)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "not";
      if (usageCopy)
      {
        v8 = "";
      }

      else
      {
        v8 = "not";
      }

      if (self->isTetherActive)
      {
        v7 = "";
      }

      *buf = 136315394;
      *v64 = v8;
      *&v64[8] = 2080;
      *&v64[10] = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "tether: updating usage, is %s from refresh trigger, state is %s active", buf, 0x16u);
    }

    v39 = usageCopy;
    selfCopy = self;
    v9 = 0;
    v10 = 0;
    currentSubscriberTag = 712;
    while (1)
    {
      if ((_updateTetheringUsage__bitmap & (1 << v9)) != 0)
      {
        *v65 = xmmword_232816BF0;
        v65[4] = v9;
        v65[5] = 5;
        v40 = 712;
        bzero(v41, 0x2C8uLL);
        if (sysctl(v65, 6u, v41, &v40, 0, 0))
        {
          v12 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v64 = v9;
            v13 = v12;
            v14 = "tether: cell interface %d cannot be read";
LABEL_16:
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, v14, buf, 8u);
          }
        }

        else
        {
          v15 = *(&v42 + 1);
          __src[v9] = *(&v42 + 1);
          currentSubscriberTag3 = v15 - _updateTetheringUsage__carryIfindex[v9];
          if (currentSubscriberTag3 >= 1)
          {
            v16 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v64 = v9;
              *&v64[4] = 2048;
              *&v64[6] = currentSubscriberTag3;
              _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "tether: cell interface %d contributes %lld bytes", buf, 0x12u);
            }

            v10 += currentSubscriberTag3;
            goto LABEL_21;
          }

          v17 = analyticsLogHandle;
          if (currentSubscriberTag3 < 0)
          {
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
            {
              v18 = _updateTetheringUsage__carryIfindex[v9];
              *buf = 67109632;
              *v64 = v9;
              *&v64[4] = 2048;
              *&v64[6] = v18;
              *&v64[14] = 2048;
              *&v64[16] = v15;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "tether usage readout no longer monotonically increasing on ifindex %d, was %llu, is %llu", buf, 0x1Cu);
            }

            _updateTetheringUsage__carryIfindex[v9] = v15;
            goto LABEL_21;
          }

          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v64 = v9;
            v13 = v17;
            v14 = "tether: cell interface %d contributes 0 bytes";
            goto LABEL_16;
          }
        }
      }

LABEL_21:
      if (++v9 == 64)
      {
        v19 = v39;
        if (v10 > 0)
        {
          v20 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v64 = v10;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "tether: new data activity amounts to %llu bytes, must persist", buf, 0xCu);
          }

          v21 = [(FlowAnalyticsEngine *)self _processFetchForName:@"misd" bundle:0 shouldFillMiss:1];
          if (v21)
          {
            v22 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v21];
            if (v22)
            {
              cellRelay = [(FlowAnalyticsEngine *)self cellRelay];
              BYTE2(v37) = 0;
              BYTE1(v37) = [cellRelay expensive];
              LOBYTE(v37) = 0;
              [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v22 wifiOut:0 cellIn:0 cellOut:v10 wiredIn:0 wiredOut:0 btIn:0 btOut:0 xIn:0 xOut:0 isJumboFlow:0 isExpensive:v37 closing:?];

              v24 = analyticsLogHandle;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                wwanIN = [v22 wwanIN];
                [wwanIN doubleValue];
                v27 = v26;
                ctShim = self->ctShim;
                if (ctShim)
                {
                  currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                  if (currentSubscriberTag)
                  {
                    currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                    v30 = 1;
                  }

                  else
                  {
                    v30 = 0;
                    currentSubscriberTag2 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v30 = 0;
                  currentSubscriberTag2 = &unk_2847EF6C8;
                }

                *buf = 134218242;
                *v64 = v27;
                *&v64[8] = 2112;
                *&v64[10] = currentSubscriberTag2;
                _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "tether: data activity, updated new tally (fwd): %f, subscriber tag: %@", buf, 0x16u);
                if (v30)
                {
                }

                if (ctShim)
                {
                }

                v19 = v39;
              }

              memcpy(_updateTetheringUsage__carryIfindex, __src, sizeof(_updateTetheringUsage__carryIfindex));
              if (!v19)
              {
                [(AnalyticsWorkspace *)self->super.workspace save];
              }
            }

            else
            {
              v32 = analyticsLogHandle;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = selfCopy->ctShim;
                if (v33)
                {
                  currentSubscriberTag3 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                  if (currentSubscriberTag3)
                  {
                    currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                    v35 = 1;
                  }

                  else
                  {
                    v35 = 0;
                    currentSubscriberTag4 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v35 = 0;
                  currentSubscriberTag4 = &unk_2847EF6C8;
                }

                *buf = 138412546;
                *v64 = @"misd";
                *&v64[8] = 2112;
                *&v64[10] = currentSubscriberTag4;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "tether: failed to find LiveUsage for %@ with subscriber tag: %@", buf, 0x16u);
                if (v35)
                {
                }

                if (v33)
                {
                }
              }
            }
          }

          else
          {
            v31 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v64 = @"misd";
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "tether: failed to find process for %@", buf, 0xCu);
            }
          }
        }

        break;
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __45__FlowAnalyticsEngine__updateTetheringUsage___block_invoke()
{
  v20 = *MEMORY[0x277D85DE8];
  _updateTetheringUsage__bitmap = if_nametobitmask("pdp");
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v18 = _updateTetheringUsage__bitmap;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "tether: eligible cell interfaces %llx", buf, 0xCu);
  }

  for (i = 0; i != 64; ++i)
  {
    if ((_updateTetheringUsage__bitmap & (1 << i)) == 0)
    {
      continue;
    }

    *v14 = xmmword_232816BF0;
    v15 = i;
    v16 = 5;
    v9 = 712;
    bzero(buf, 0x2C8uLL);
    if (sysctl(v14, 6u, buf, &v9, 0, 0))
    {
      v2 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        continue;
      }

      *v10 = 67109120;
      v11 = i;
      v3 = v2;
      v4 = "tether: baseline, cell interface %d cannot be read";
      v5 = 8;
    }

    else
    {
      _updateTetheringUsage__carryIfindex[i] = v19;
      v6 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        continue;
      }

      v7 = _updateTetheringUsage__carryIfindex[i];
      *v10 = 67109376;
      v11 = i;
      v12 = 2048;
      v13 = v7;
      v3 = v6;
      v4 = "tether: baseline for interface %d set to %llu bytes";
      v5 = 18;
    }

    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, v4, v10, v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handlesProcEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B548] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B518] entityName];
    if ([entityCopy isEqualToString:entityName2])
    {
      v5 = 1;
    }

    else
    {
      entityName3 = [MEMORY[0x277D6B558] entityName];
      if ([entityCopy isEqualToString:entityName3])
      {
        v5 = 1;
      }

      else
      {
        entityName4 = [MEMORY[0x277D6B568] entityName];
        if ([entityCopy isEqualToString:entityName4])
        {
          v5 = 1;
        }

        else
        {
          entityName5 = [MEMORY[0x277D6B578] entityName];
          if ([entityCopy isEqualToString:entityName5])
          {
            v5 = 1;
          }

          else
          {
            entityName6 = [MEMORY[0x277D6B570] entityName];
            if ([entityCopy isEqualToString:entityName6])
            {
              v5 = 1;
            }

            else
            {
              entityName7 = [MEMORY[0x277D6B588] entityName];
              if ([entityCopy isEqualToString:entityName7])
              {
                v5 = 1;
              }

              else
              {
                entityName8 = [MEMORY[0x277D6B560] entityName];
                v5 = [entityCopy isEqualToString:entityName8];
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)_handlesFlowEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B590] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B598] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (BOOL)handlesEntity:(id)entity
{
  entityCopy = entity;
  v5 = [(FlowAnalyticsEngine *)self _handlesProcEntity:entityCopy]|| [(FlowAnalyticsEngine *)self _handlesFlowEntity:entityCopy];

  return v5;
}

- (BOOL)_requiresUserValidationPredicateForEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B568] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B570] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (void)_logBitmapOutcome:(id)outcome
{
  v47 = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  if (outcomeCopy)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "[Bitmap] Start of reply message to client", buf, 2u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = outcomeCopy;
    v30 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v30)
    {
      v6 = *v38;
      v7 = 0x277CBE000uLL;
      v28 = *v38;
      v29 = v5;
      do
      {
        v8 = 0;
        do
        {
          if (*v38 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v31 = v8;
          v9 = *(*(&v37 + 1) + 8 * v8);
          v10 = [v5 objectForKeyedSubscript:v9];
          v11 = *(v7 + 2752);
          objc_opt_class();
          v32 = v10;
          LOBYTE(v10) = objc_opt_isKindOfClass();
          v12 = analyticsLogHandle;
          v13 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            if (v13)
            {
              *buf = 138412290;
              v42 = v9;
              _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "[Bitmap] %@-> {", buf, 0xCu);
            }

            v14 = v32;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v15 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v34;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v34 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = *(*(&v33 + 1) + 8 * i);
                    v21 = v19;
                    v22 = [v14 objectForKeyedSubscript:v20];
                    *buf = 138412546;
                    v42 = v20;
                    v43 = 2112;
                    v44 = v22;
                    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "[Bitmap]     %@-> %@", buf, 0x16u);
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
              }

              while (v16);
            }

            v23 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "[Bitmap]  }", buf, 2u);
            }

            v6 = v28;
            v5 = v29;
            v7 = 0x277CBE000;
          }

          else if (v13)
          {
            v24 = v12;
            v25 = [v5 objectForKeyedSubscript:v9];
            *buf = 138412546;
            v42 = v9;
            v43 = 2112;
            v44 = v25;
            _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "[Bitmap] %@-> %@", buf, 0x16u);
          }

          v8 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v30);
    }

    v26 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "[Bitmap] End of reply message to client", buf, 2u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply
{
  namesCopy = names;
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke;
    v17[3] = &unk_27898C8E8;
    v17[4] = self;
    v18 = namesCopy;
    timeCopy = time;
    endTimeCopy = endTime;
    v19 = optionsCopy;
    v20 = replyCopy;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
    dispatch_async(queue, v16);
  }
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke(uint64_t a1)
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "[Bitmap] polling start", buf, 2u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v3);
  v9 = *(a1 + 32);
  v4 = *(v9 + 432);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_865;
  v10[3] = &unk_27898C8C0;
  v5 = *(&v9 + 1);
  v13 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 refreshDataUsageMaxStale:@"getBitmaps" maxDelay:v10 logAs:2.0 callback:0.1];
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_865(uint64_t a1)
{
  v2 = machAbsoluteTime_secs();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 416);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_2;
  v9[3] = &unk_27898C898;
  v9[4] = v3;
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v5 getActivityBitmapsWithNames:v4 currMachAbsTime:v2 startTime:v6 endTime:v7 options:v8 reply:v9];
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4[634] == 1)
  {
    [v4 _logBitmapOutcome:?];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)logOutcomeArray:(id)array
{
  v67 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = +[SystemProperties sharedInstance];
  internalBuild = [v5 internalBuild];

  if (internalBuild)
  {
    v7 = [arrayCopy count];
    outcomeArrayLogEntryCount = self->outcomeArrayLogEntryCount;
    v9 = v7 - outcomeArrayLogEntryCount;
    if (v7 < outcomeArrayLogEntryCount)
    {
      v9 = 0;
    }

    if (v9 < v7)
    {
      v10 = v7;
      v11 = 0;
      if (v7 < outcomeArrayLogEntryCount)
      {
        outcomeArrayLogEntryCount = v7;
      }

      v12 = -outcomeArrayLogEntryCount;
      v13 = 1;
      v14 = 0x277CBE000uLL;
      v48 = v7;
      v45 = arrayCopy;
      do
      {
        v15 = v11;
        v16 = objc_autoreleasePoolPush();
        v11 = [arrayCopy objectAtIndexedSubscript:v10 + v12];

        v17 = *(v14 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v11;
          v19 = [v18 objectForKeyedSubscript:@"allFlows"];

          if (v19)
          {
            if (v13)
            {
              v20 = analyticsLogHandle;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "entry:                                                                       Name        WiFiIn      WiFiOut       CellIn      CellOut Tag Kind", buf, 2u);
              }

              if (v10 + v12)
              {
                v21 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  v52 = v10 + v12;
                  v53 = 2048;
                  v54 = v10;
                  _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "[Skipping first %lu of %lu entries]", buf, 0x16u);
                }
              }
            }

            v50 = v16;
            v22 = objc_alloc(MEMORY[0x277CCACA8]);
            v23 = [v18 objectForKeyedSubscript:@"hasProcess.procName"];
            v24 = [v18 objectForKeyedSubscript:@"hasProcess.bundleName"];
            v25 = [v18 objectForKeyedSubscript:@"hasProcess.extensionName"];
            v26 = [v22 initWithFormat:@"%@:%@:%@", v23, v24, v25];

            v27 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              log = v27;
              v46 = [v18 objectForKeyedSubscript:@"timeStamp"];
              v28 = [v18 objectForKeyedSubscript:@"wifiIN"];
              v29 = [v18 objectForKeyedSubscript:@"wifiOUT"];
              v30 = [v18 objectForKeyedSubscript:@"wwanIN"];
              v31 = [v18 objectForKeyedSubscript:@"wwanOUT"];
              [v18 objectForKeyedSubscript:@"tag"];
              v32 = v49 = v26;
              v33 = [v18 objectForKeyedSubscript:@"kind"];
              *buf = 138414082;
              v52 = v46;
              v53 = 2112;
              v54 = v49;
              v55 = 2112;
              v56 = v28;
              v57 = 2112;
              v58 = v29;
              v59 = 2112;
              v60 = v30;
              v61 = 2112;
              v62 = v31;
              v63 = 2112;
              v64 = v32;
              v65 = 2112;
              v66 = v33;
              _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "entry: %@ %50@ %12@ %12@ %12@ %12@ %3@ %3@", buf, 0x52u);

              arrayCopy = v45;
              v26 = v49;
            }

            v13 = 0;
            v10 = v48;
            v16 = v50;
          }

          else
          {
            v39 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v52 = v18;
              _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "entry: unknown dictionary %@", buf, 0xCu);
            }
          }

          v14 = 0x277CBE000;
        }

        else
        {
          v34 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
            v36 = objc_opt_class();
            NSStringFromClass(v36);
            v38 = v37 = v16;
            *buf = 138412546;
            v52 = v38;
            v53 = 2112;
            v54 = v11;
            _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "entry: not a dictionary, %@   %@", buf, 0x16u);

            v16 = v37;
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      while (!__CFADD__(v12++, 1));
    }
  }

  v41 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    v43 = [arrayCopy count];
    *buf = 134217984;
    v52 = v43;
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE end of outcome array (%lu entries)", buf, 0xCu);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0
{
  v102 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  serviceCopy = service;
  connectionCopy = connection;
  replyCopy = reply;
  processIdentifier = [connectionCopy processIdentifier];
  v20 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = pid_to_process_name(processIdentifier);
    v23 = v22;
    v24 = @"<unknown>";
    *buf = 138413826;
    if (v22)
    {
      v24 = v22;
    }

    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = processIdentifier;
    *&buf[22] = 2112;
    v96 = entityCopy;
    *v97 = 2112;
    *&v97[2] = predCopy;
    *&v97[10] = 2112;
    *&v97[12] = sortCopy;
    v98 = 2112;
    v99 = actionsCopy;
    v100 = 2112;
    v101 = propertiesCopy;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE perform query for %@ (pid %lld) on %@ predicate %@ sort %@ actions %@ properties %@", buf, 0x48u);
  }

  if (entityCopy)
  {
    entityName = [MEMORY[0x277D6B568] entityName];
    v26 = [entityCopy isEqualToString:entityName];

    if (v26)
    {
      [(FlowAnalyticsEngine *)self submitNetworkDomainUsageToDateSPICallMetric];
    }

    entityName2 = [MEMORY[0x277D6B570] entityName];
    v28 = [entityCopy isEqualToString:entityName2];

    if (v28)
    {
      [(FlowAnalyticsEngine *)self submitAppEndpointToDateSPICallMetric];
      if (!self->appTrackingEnabled || !self->endpointTrackingEnabled)
      {
        v43 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          appTrackingEnabled = self->appTrackingEnabled;
          endpointTrackingEnabled = self->endpointTrackingEnabled;
          *buf = 67109376;
          *&buf[4] = appTrackingEnabled;
          *&buf[8] = 1024;
          *&buf[10] = endpointTrackingEnabled;
          _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: app tracking (%d) or endpoint tracking (%d) not enabled", buf, 0xEu);
        }

        v36 = objc_alloc_init(MEMORY[0x277CBEA60]);
        replyCopy[2](replyCopy, v36);
        goto LABEL_38;
      }
    }
  }

  if (actionsCopy)
  {
    v29 = [actionsCopy objectForKeyedSubscript:@"refreshUsage"];
    v30 = v29 != 0;

    if (v30)
    {
      if (![serviceCopy assertEntitlement:connectionCopy entitlement:2 orWaiveOnIntent:actionsCopy])
      {
        goto LABEL_35;
      }

      v31 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: refresh authorized", buf, 2u);
      }
    }

    v32 = [actionsCopy objectForKeyedSubscript:@"watchpointKey"];
    v33 = v32 == 0;

    if (!v33)
    {
      if ([serviceCopy assertEntitlement:connectionCopy entitlement:3 orWaiveOnIntent:actionsCopy])
      {
        v34 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: watchpoint authorized", buf, 2u);
        }

        v35 = 1;
        goto LABEL_23;
      }

LABEL_35:
      v47 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: request's parsing error", buf, 2u);
      }

      v36 = objc_alloc_init(MEMORY[0x277CBEA60]);
      replyCopy[2](replyCopy, v36);
      goto LABEL_38;
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = 0;
LABEL_23:
  v36 = predCopy;
  if ([(FlowAnalyticsEngine *)self _requiresUserValidationPredicateForEntity:entityCopy])
  {
    effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", effectiveUserIdentifier];
    v39 = v38;
    if (v36)
    {
      v40 = MEMORY[0x277CCA920];
      v94[0] = v38;
      v94[1] = v36;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
      v42 = [v40 andPredicateWithSubpredicates:v41];

      v36 = v42;
    }

    else
    {
      v36 = v38;
    }
  }

  if ((v30 & v35) == 1)
  {
    v46 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: options conflicting", buf, 2u);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!v30)
  {
    if (!v35)
    {
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_3;
      v66[3] = &unk_27898C9B0;
      v67 = entityCopy;
      selfCopy = self;
      v69 = replyCopy;
      [(AnalyticsEngineCore *)self performQueryOnEntityCore:v67 fetchRequestProperties:propertiesCopy pred:v36 sort:sortCopy actions:actionsCopy service:serviceCopy reply:v66];

      goto LABEL_38;
    }

    v52 = [actionsCopy objectForKey:@"watchpointTarget"];
    v53 = [actionsCopy objectForKey:@"watchpointKey"];
    v54 = [actionsCopy objectForKey:@"watchpointValue"];
    v55 = v54;
    if (connectionCopy && v52 && v53 && v54)
    {
      v60 = [(ObjectAnalytics *)self->lfpspace getDescriptionForName:entityCopy];
      attributesByName = [v60 attributesByName];
      v57 = [attributesByName objectForKeyedSubscript:v53];
      v58 = v57 == 0;

      if (!v58)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v96 = __Block_byref_object_copy__901;
        *v97 = __Block_byref_object_dispose__902;
        *&v97[8] = 0;
        obj = 0;
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_903;
        v75[3] = &unk_27898C960;
        v75[4] = self;
        v76 = entityCopy;
        v77 = propertiesCopy;
        v36 = v36;
        v78 = v36;
        v79 = sortCopy;
        v80 = actionsCopy;
        v81 = serviceCopy;
        v83 = replyCopy;
        v82 = connectionCopy;
        v84 = buf;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2_905;
        v70[3] = &unk_27898C988;
        v73 = v83;
        v71 = v82;
        selfCopy2 = self;
        v74 = buf;
        [(FlowAnalyticsEngine *)self performThresholdingOn:v52 forKey:v53 andValue:v55 connection:v71 createdBlock:&obj hitBlock:v75 errorBlock:v70];
        objc_storeStrong(&v97[8], obj);

        _Block_object_dispose(buf, 8);
        goto LABEL_38;
      }

      v59 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v53;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: watchpoint requested on non-existent key: %@", buf, 0xCu);
      }
    }

    else
    {
    }

    goto LABEL_34;
  }

  v49 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v50 = v49;
    processIdentifier2 = [connectionCopy processIdentifier];
    *buf = 134217984;
    *&buf[4] = processIdentifier2;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: in refresh codepath on behalf of pid %lld", buf, 0xCu);
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke;
  v86[3] = &unk_27898C938;
  v86[4] = self;
  v87 = entityCopy;
  v88 = propertiesCopy;
  v36 = v36;
  v89 = v36;
  v90 = sortCopy;
  v91 = actionsCopy;
  v92 = serviceCopy;
  v93 = replyCopy;
  [(FlowAnalyticsEngine *)self _refreshFullDataUsageWithCallback:v86];

LABEL_38:
  v48 = *MEMORY[0x277D85DE8];
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2;
  v8[3] = &unk_27898C910;
  v8[4] = v1;
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  [v1 performQueryOnEntityCore:v2 fetchRequestProperties:v3 pred:v4 sort:v5 actions:v6 service:v7 reply:v8];
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  v5 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity outcome array after refresh:", buf, 2u);
    }

    [*(a1 + 32) logOutcomeArray:v3];
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity has nil outcome", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_903(uint64_t a1)
{
  [*(a1 + 32) performQueryOnEntityCore:*(a1 + 40) fetchRequestProperties:*(a1 + 48) pred:*(a1 + 56) sort:*(a1 + 64) actions:*(a1 + 72) service:*(a1 + 80) reply:*(a1 + 96)];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 88)];
  v2 = [*(a1 + 32) flowWatchers];
  [v2 removeObjectForKey:v5];

  v3 = *(*(a1 + 104) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2_905(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  (*(v2 + 16))(v2, v3);

  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  v4 = [*(a1 + 40) flowWatchers];
  [v4 removeObjectForKey:v7];

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  v5 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity outcome array, no refresh", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277D6B570] entityName];
    LODWORD(v6) = [v6 isEqualToString:v7];

    if (v6)
    {
      v8 = [*(a1 + 40) _repurposeAppEndpointRecords:v3];

      v3 = v8;
    }

    [*(a1 + 40) logOutcomeArray:v3];
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity has nil outcome", v9, 2u);
    }

    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performThresholdingOn:(id)on forKey:(id)key andValue:(id)value connection:(id)connection createdBlock:(id *)block hitBlock:(id)hitBlock errorBlock:(id)errorBlock
{
  v52 = *MEMORY[0x277D85DE8];
  onCopy = on;
  keyCopy = key;
  valueCopy = value;
  connectionCopy = connection;
  hitBlockCopy = hitBlock;
  errorBlockCopy = errorBlock;
  v21 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v47 = onCopy;
    v48 = 2112;
    v49 = keyCopy;
    v50 = 2112;
    v51 = valueCopy;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: entering watchpoint codepath with (target,key,value: %@/%@/%@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke;
  aBlock[3] = &unk_27898CA00;
  aBlock[4] = self;
  v34 = onCopy;
  v41 = v34;
  v22 = keyCopy;
  v42 = v22;
  v23 = valueCopy;
  v43 = v23;
  v24 = hitBlockCopy;
  v44 = v24;
  v25 = errorBlockCopy;
  v45 = v25;
  *block = _Block_copy(aBlock);
  v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:connectionCopy];
  flowWatchers = [(FlowAnalyticsEngine *)self flowWatchers];
  v28 = _Block_copy(*block);
  [flowWatchers setObject:v28 forKey:v26];

  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_906;
  v35[3] = &unk_27898CA28;
  objc_copyWeak(&v36, &from);
  objc_copyWeak(&v37, &location);
  [connectionCopy setInvalidationHandler:v35];
  v29 = analyticsLogHandle;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [connectionCopy description];
    flowWatchers2 = [(FlowAnalyticsEngine *)self flowWatchers];
    v32 = [flowWatchers2 count];
    *buf = 138412546;
    v47 = v30;
    v48 = 2048;
    v49 = v32;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: connection watchpoint set for conn %@, %lu left", buf, 0x16u);
  }

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v33 = *MEMORY[0x277D85DE8];
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = *(*(a1 + 32) + 448);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_2;
  v11[3] = &unk_27898C9D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = &v15;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v11];
  if ((v16[3] & 1) == 0)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint doesn't match any target", v10, 2u);
    }

    (*(*(a1 + 72) + 16))();
  }

  _Block_object_dispose(&v15, 8);
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 tmpID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  v8 = analyticsLogHandle;
  v9 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v25 = 138412546;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint now evaluating for %@ ikey %@", &v25, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if ([v4 count] >= 2)
    {
      v12 = [v4 lastObject];
      v13 = [v4 objectAtIndex:{objc_msgSend(v4, "count") - 2}];
      v14 = [v12 valueForKey:*(a1 + 40)];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v13 valueForKey:*(a1 + 40)];
      [v17 doubleValue];
      v19 = v18;

      v20 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 40);
        v25 = 138412802;
        v26 = v21;
        v27 = 2048;
        v28 = v16;
        v29 = 2048;
        v30 = v19;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: %@ new %f old %f", &v25, 0x20u);
      }

      [*(a1 + 48) doubleValue];
      if (v16 - v19 >= v22)
      {
        (*(*(a1 + 56) + 16))();
      }

      goto LABEL_11;
    }
  }

  else if (v9)
  {
    v12 = v8;
    v13 = [v5 tmpID];
    v23 = *(a1 + 40);
    v25 = 138412546;
    v26 = v13;
    v27 = 2112;
    v28 = v23;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint skipping %@ key %@", &v25, 0x16u);
LABEL_11:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_906(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCAE60];
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v3 valueWithNonretainedObject:v4];

    v6 = [WeakRetained flowWatchers];
    [v6 removeObjectForKey:v5];

    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [WeakRetained flowWatchers];
      v11 = 134217984;
      v12 = [v9 count];
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: invalidation handler called, %lu left", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found
{
  v66 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  predCopy = pred;
  actionsCopy = actions;
  name = [cacheCopy name];
  v16 = [actionsCopy objectForKeyedSubscript:@"sweepUsage"];

  v56 = 0;
  if (v16)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    subpredicates = [predCopy subpredicates];
    v19 = [subpredicates countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v19)
    {
      v20 = v19;
      foundCopy = found;
      altpredCopy = altpred;
      v21 = *v53;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(subpredicates);
          }

          v23 = [(AnalyticsEngineCore *)self extractQueryStringFrom:*(*(&v52 + 1) + 8 * i) isGeneric:&v56];
          if (v23)
          {
            v17 = v23;
            goto LABEL_16;
          }
        }

        v20 = [subpredicates countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_16:
      found = foundCopy;
      altpred = altpredCopy;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v17 = 0;
      goto LABEL_19;
    }

    v17 = [(AnalyticsEngineCore *)self extractQueryStringFrom:predCopy isGeneric:&v56];
  }

LABEL_19:
  if ([(FlowAnalyticsEngine *)self _handlesProcEntity:name])
  {
    if (v17 || (v56 & 1) != 0)
    {
      v24 = [(AnalyticsEngineCore *)self safePredFrom:predCopy forEntity:cacheCopy];
      if (v24)
      {
        if (v56)
        {
          v25 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: entering flow for generics", buf, 2u);
          }

          v26 = [actionsCopy objectForKeyedSubscript:@"nameChain"];

          if (v26)
          {
            altpredCopy2 = altpred;
            null = [MEMORY[0x277CBEB68] null];
            v28 = [v26 isEqual:null];

            if (v28)
            {
              v29 = analyticsLogHandle;
              v30 = 2;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: query target is NSNull, failing query", buf, 2u);
              }
            }

            else
            {
              v63 = @"targetname";
              v64 = v26;
              v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
              v37 = [v24 predicateWithSubstitutionVariables:?];
              *altpredCopy2 = v37;
              if ([(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v26 pred:v37 found:found])
              {
                v38 = [(FlowAnalyticsEngine *)self _attemptConvertingPluginNameToContainingAppName:v26];
                if (v38)
                {
                  v61 = @"targetname";
                  v62 = v38;
                  v47 = v38;
                  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];

                  v49 = v39;
                  v40 = [v24 predicateWithSubstitutionVariables:v39];

                  v41 = v40;
                  v37 = v40;
                  *altpredCopy2 = v40;
                  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v47 pred:v40 found:found];
                  v42 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v43 = v47;
                    v58 = v47;
                    v59 = 1024;
                    v60 = v30;
                    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: performed 2nd attempt with alt target %@, got %d", buf, 0x12u);
                  }

                  else
                  {
                    v43 = v47;
                  }
                }

                else
                {
                  v43 = 0;
                  v46 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: failed 1st attempt but no alt target, will query all", buf, 2u);
                  }

                  v30 = 1;
                }

                v45 = v49;
              }

              else
              {
                v44 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v58 = v26;
                  _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: cache hit on 1st attempt for target: %@", buf, 0xCu);
                }

                v30 = 0;
                v45 = v49;
              }
            }
          }

          else
          {
            v36 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: missing target for 1st attempt", buf, 2u);
            }

            v26 = 0;
            v30 = 1;
          }

          goto LABEL_38;
        }

        v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v17 pred:v24 found:found];
      }

      else
      {
        v32 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: failed to create safe predicate", buf, 2u);
        }

        v30 = 1;
      }

      v26 = v17;
LABEL_38:

      v17 = v26;
      goto LABEL_43;
    }

    v33 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: only 1-result string queries are first tried on the memory cache, giving up", buf, 2u);
    }

    v17 = 0;
LABEL_42:
    v30 = 1;
    goto LABEL_43;
  }

  if (![(FlowAnalyticsEngine *)self _handlesFlowEntity:name])
  {
    goto LABEL_42;
  }

  v31 = [actionsCopy objectForKeyedSubscript:@"instantFlow"];

  if (!v31)
  {
    goto LABEL_42;
  }

  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromInstantFlowCache:cacheCopy target:v17 pred:predCopy found:found];
LABEL_43:

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

- (int)_performQueryOnEntityFromProcCache:(id)cache target:(id)target pred:(id)pred found:(id *)found
{
  v54 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  targetCopy = target;
  predCopy = pred;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__FlowAnalyticsEngine__performQueryOnEntityFromProcCache_target_pred_found___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (_performQueryOnEntityFromProcCache_target_pred_found__once != -1)
  {
    dispatch_once(&_performQueryOnEntityFromProcCache_target_pred_found__once, block);
  }

  v13 = [(FlowAnalyticsEngine *)self _fetchFromProcCacheWithName:targetCopy ofType:1];
  if (v13)
  {
    v38 = predCopy;
    v39 = targetCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    isApp = [v13 isApp];
    v17 = &_performQueryOnEntityFromProcCache_target_pred_found__appDesc;
    if (!isApp)
    {
      v17 = &_performQueryOnEntityFromProcCache_target_pred_found__procDesc;
    }

    v40 = cacheCopy;
    [*v17 relationshipsWithDestinationEntity:{cacheCopy, found}];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = v48 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          if (([v23 isTransient] & 1) == 0)
          {
            name = [v23 name];
            [v14 addObject:name];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v20);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v14;
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v42;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v42 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [v13 valueForKey:*(*(&v41 + 1) + 8 * j)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            allObjects = [v30 allObjects];
LABEL_24:
            v32 = allObjects;
            [v15 addObjectsFromArray:allObjects];

            goto LABEL_26;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            allObjects = [v30 array];
            goto LABEL_24;
          }

          [v15 addObject:v30];
LABEL_26:
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v27);
    }

    predCopy = v38;
    *v37 = [v15 filteredArrayUsingPredicate:v38];

    v33 = 0;
    targetCopy = v39;
    cacheCopy = v40;
  }

  else
  {
    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v53 = targetCopy;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: cache miss for %@", buf, 0xCu);
    }

    v33 = 1;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v33;
}

void __76__FlowAnalyticsEngine__performQueryOnEntityFromProcCache_target_pred_found___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D6B540]);
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x277D6B548] entityName];
  v11 = [v2 initWithWorkspace:v3 entityName:v4 withCache:0];

  v5 = [MEMORY[0x277D6B548] entityName];
  v6 = [v11 getDescriptionForName:v5];
  v7 = _performQueryOnEntityFromProcCache_target_pred_found__procDesc;
  _performQueryOnEntityFromProcCache_target_pred_found__procDesc = v6;

  v8 = [MEMORY[0x277D6B558] entityName];
  v9 = [v11 getDescriptionForName:v8];
  v10 = _performQueryOnEntityFromProcCache_target_pred_found__appDesc;
  _performQueryOnEntityFromProcCache_target_pred_found__appDesc = v9;
}

- (id)_attemptConvertingPluginNameToContainingAppName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->pluginToBundleCache objectForKeyedSubscript:nameCopy];
  if (v5)
  {
    applicationIdentifier2 = v5;
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412546;
      v19 = nameCopy;
      v20 = 2112;
      v21 = applicationIdentifier2;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: hotpath hit, converted %@ to %@", &v18, 0x16u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:nameCopy];
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412546;
      v19 = nameCopy;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: slowpath, converting %@ to plugin: %p", &v18, 0x16u);
    }

    if (v8)
    {
      containingBundle = [v8 containingBundle];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134217984;
        v19 = containingBundle;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: containing bundle: %p", &v18, 0xCu);
      }

      if (containingBundle && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = containingBundle;
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          applicationIdentifier = [v12 applicationIdentifier];
          v18 = 138412290;
          v19 = applicationIdentifier;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: plugin's containing appname: %@", &v18, 0xCu);
        }

        applicationIdentifier2 = [v12 applicationIdentifier];
        if (applicationIdentifier2)
        {
          [(NSMutableDictionary *)self->pluginToBundleCache setObject:applicationIdentifier2 forKeyedSubscript:nameCopy];
        }
      }

      else
      {
        applicationIdentifier2 = 0;
      }
    }

    else
    {
      applicationIdentifier2 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return applicationIdentifier2;
}

- (BOOL)_bundleBackgroundAudioCapable:(id)capable
{
  v21 = *MEMORY[0x277D85DE8];
  capableCopy = capable;
  v5 = [(NSMutableDictionary *)self->audioBundleCache objectForKeyedSubscript:capableCopy];
  v6 = v5;
  if (v5)
  {
    LODWORD(v7) = [v5 BOOLValue];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = capableCopy;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "audio background capability for %@: %d (source: cache)", &v17, 0x12u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:capableCopy];
    v10 = v9;
    if (v9)
    {
      uIBackgroundModes = [v9 UIBackgroundModes];
      v7 = [uIBackgroundModes containsObject:@"audio"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      [(NSMutableDictionary *)self->audioBundleCache setObject:v12 forKeyedSubscript:capableCopy];

      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412546;
        v18 = capableCopy;
        v19 = 1024;
        v20 = v7;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "audio background capability for %@: %d (source: LS)", &v17, 0x12u);
      }
    }

    else
    {
      v14 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = capableCopy;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "applicationProxyForIdentifier failed for %@", &v17, 0xCu);
      }

      LOBYTE(v7) = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)_performQueryOnEntityFromInstantFlowCache:(id)cache target:(id)target pred:(id)pred found:(id *)found
{
  v28 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  [(FlowAnalyticsEngine *)self _pruneFlowHistory];
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    flowInstant = self->flowInstant;
    v11 = v9;
    v24 = 138412546;
    v25 = targetCopy;
    v26 = 2048;
    v27 = [(NSMutableDictionary *)flowInstant count];
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: looking for instant flow: %@, %lu on record", &v24, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  objectEnumerator = [(NSMutableDictionary *)self->flowInstant objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v16 = nextObject2;
      firstObject = [v16 firstObject];
      v18 = firstObject;
      if (!targetCopy || ([firstObject tmpID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", targetCopy), v19, v20))
      {
        [v12 addObjectsFromArray:v16];
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v21 = v12;
  *found = v12;

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  replyCopy = reply;
  v9 = [v6 errorWithDomain:v7 code:45 userInfo:0];
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: netanalyticsdebug: flow: denied snapshot request (ENOTSUP)", v11, 2u);
  }

  replyCopy[2](replyCopy, 0, v9);
}

- (id)setOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  if (!optionCopy)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = @"calendarUsageToggle";
  v7 = [optionCopy objectForKey:@"calendarUsageToggle"];
  if (!v7)
  {
    v6 = @"typicalUsageToggle";
    v8 = [v5 objectForKey:@"typicalUsageToggle"];
    if (v8)
    {
      haveTypicalUsage = [(FlowAnalyticsEngine *)self haveTypicalUsage];
      -[FlowAnalyticsEngine setHaveTypicalUsage:](self, "setHaveTypicalUsage:", [v8 BOOLValue]);
      goto LABEL_8;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  haveTypicalUsage = [(FlowAnalyticsEngine *)self haveCalendar];
  -[FlowAnalyticsEngine setHaveCalendar:](self, "setHaveCalendar:", [v8 BOOLValue]);
LABEL_8:
  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:haveTypicalUsage];
  v10 = [v11 dictionaryWithObjectsAndKeys:{v12, v6, 0}];

LABEL_9:

  return v10;
}

- (id)getOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  if (optionCopy)
  {
    dictionary = [optionCopy objectForKey:@"calendarUsageToggle"];

    if (dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveCalendar](self, "haveCalendar")}];
      [dictionary setObject:v7 forKeyedSubscript:@"calendarUsageToggle"];
    }

    v8 = [v5 objectForKey:@"typicalUsageToggle"];

    if (v8)
    {
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveTypicalUsage](self, "haveTypicalUsage")}];
      [dictionary setObject:v9 forKeyedSubscript:@"typicalUsageToggle"];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)resetDataFor:(id)for nameKind:(id)kind
{
  v24 = *MEMORY[0x277D85DE8];
  forCopy = for;
  kindCopy = kind;
  if (forCopy && [forCopy count])
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:forCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ProcessAnalytics *)self->pspace processesWithNameInSet:v8 nameKind:kindCopy];
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Resetting entries for processes %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(FlowAnalyticsEngine *)self _removeAllInfoForProcess:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)identifierForUUID:(id)d queue:(id)queue reply:(id)reply
{
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  if (dCopy)
  {
    nstatManager = self->nstatManager;
    if (nstatManager)
    {
      v22 = 0;
      v12 = [(NWStatsManager *)nstatManager identifierForUUID:dCopy derivation:&v22];
      if (v12)
      {
        v13 = v12;
        if (v22 - 1) < 5 && ((0x17u >> (v22 - 1)))
        {
          v14 = kSymptomAnalyticsTypeBundleIdentifier;
        }

        else
        {
          if ((v22 & 0xFFFFFFFD) != 4)
          {
            v16 = 0;
LABEL_13:
            v15 = 0;
            if (!queueCopy)
            {
              goto LABEL_14;
            }

            goto LABEL_8;
          }

          v14 = kSymptomAnalyticsTypeProcessName;
        }

        v16 = *v14;
        goto LABEL_13;
      }
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  v16 = 0;
  v13 = 0;
  if (!queueCopy)
  {
LABEL_14:
    replyCopy[2](replyCopy, v13, v16, v15);
    goto LABEL_15;
  }

LABEL_8:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FlowAnalyticsEngine_identifierForUUID_queue_reply___block_invoke;
  block[3] = &unk_27898CA50;
  v21 = replyCopy;
  v18 = v13;
  v19 = v16;
  v20 = v15;
  dispatch_async(queueCopy, block);

LABEL_15:
}

- (void)_updateKnownCellularInterfaceIndexList:(int)list force:
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self && (![v5 count] || list))
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (list)
      {
        v8 = " (forced)";
      }

      *buf = 136315138;
      *v18 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Ready to list pdp interfaces%s...", buf, 0xCu);
    }

    v9 = if_nametobitmask("pdp");
    for (i = 0; i != 64; ++i)
    {
      if ((v9 >> i))
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:i];
        [v6 addObject:v11];

        v12 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v6 count];
          *buf = 67109376;
          v18[0] = i;
          LOWORD(v18[1]) = 2048;
          *(&v18[1] + 2) = v14;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Found pdp interface at index %d; total found: %ld", buf, 0x12u);
        }
      }
    }

    v15 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v18 = v6;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Total pdp interface index list: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)interface
{
  v17 = *MEMORY[0x277D85DE8];
  if (interface)
  {
    v4 = *(interface + 256);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      [interface _startMonitoringNetworkInterface:a2 usingThreshold:0x100000];
      v6 = *(interface + 264);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      [v6 addObject:v7];

      v8 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(interface + 264);
        v13 = 67109378;
        v14 = a2;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Set threshold monitoring on interface index %d (total monitored interfaces: %@)", &v13, 0x12u);
      }

      *(interface + 248) = a2;
      v10 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        v11 = *(interface + 248);
        v13 = 67109120;
        v14 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Updated last used pdp interface to %d", &v13, 8u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeInfoFromWorkspaceForProcess:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "exception caught while setting process hintLiveUsage: process = %@", &v6, 0xCu);
  }

  objc_end_catch();
  v5 = *MEMORY[0x277D85DE8];
}

@end