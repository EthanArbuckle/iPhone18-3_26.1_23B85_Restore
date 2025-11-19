@interface FlowAnalyticsEngine
+ (BOOL)appBundleIdentifierIsWebBrowser:(id)a3;
+ (id)appBundleIdentifierFromAuditToken:(id *)a3;
+ (id)appBundleIdentifierFromBundleIdentifier:(id)a3;
+ (id)queue;
+ (void)appsWithFlowsPassingTest:(id)a3 replyQueue:(id)a4 reply:(id)a5;
+ (void)checkForegroundStateForProcessWithUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5;
+ (void)endRNFPeriod;
+ (void)identifierForUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5;
+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)a3;
+ (void)performAppExperiencePeriodicActivityWithReply:(id)a3;
+ (void)performAppPeriodicActivityWithReply:(id)a3;
+ (void)performAppTrackingPeriodicActivityWithReply:(id)a3;
+ (void)recentUsageForApps:(id)a3 replyQueue:(id)a4 reply:(id)a5;
+ (void)workspaceSaveWithCallback:(id)a3;
- (BOOL)_appBundleIdentifierIsWebBrowser:(id)a3;
- (BOOL)_bundleBackgroundAudioCapable:(id)a3;
- (BOOL)_handlesFlowEntity:(id)a3;
- (BOOL)_handlesProcEntity:(id)a3;
- (BOOL)_isLiveFlowPerfinScope:(id)a3 forTime:(id)a4 andTag:(id)a5;
- (BOOL)_isLiveUsageInRollingWindow:(id)a3 forTime:(id)a4;
- (BOOL)_isLiveUsageinScope:(id)a3 forTime:(id)a4;
- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)a3 toDate:(id)a4;
- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)a3 toDate:(id)a4;
- (BOOL)_processNameIsValid:(id)a3;
- (BOOL)_requiresUserValidationPredicateForEntity:(id)a3;
- (BOOL)_setupLocalCache;
- (BOOL)_setupObjectAnalyticsWorkspaces:(id)a3;
- (BOOL)_setupSignalHandling;
- (BOOL)_shouldProcessDomainInfoForBundleID:(id)a3 implicit:(id *)a4 knownToLaunchServices:(BOOL *)a5 ignoredInLaunchServices:(BOOL *)a6 isWebBrowser:(BOOL *)a7;
- (BOOL)_shouldSendStatisticsReport:(id)a3;
- (BOOL)domainInfoProcessingForSnapshot:(id)a3 process:(id)a4 attributedName:(id)a5 remoteAddress:(id)a6 isWebBrowser:(BOOL)a7;
- (BOOL)handlesEntity:(id)a3;
- (BOOL)isSnapshotFlowUUIDStored:(id)a3;
- (FlowAnalyticsEngine)initWithWorkspace:(id)a3 params:(id)a4 queue:(id)a5;
- (double)_usageFingerprintForBundleName:(id)a3;
- (id)_appEndpointsInProcess:(id)a3;
- (id)_appExperienceForApp:(id)a3 forTime:(id)a4;
- (id)_attemptConvertingPluginNameToContainingAppName:(id)a3;
- (id)_fetchFromProcCacheWithName:(id)a3 ofType:(unsigned int)a4;
- (id)_flowFetchForName:(id)a3;
- (id)_has1stPartyImpliedBundleNameBehavior:(id)a3;
- (id)_liveUsageFetchForProcess:(id)a3;
- (id)_parseEvent:(id)a3 withGeneration:(id *)a4;
- (id)_processFetchForName:(id)a3 bundle:(id)a4 extension:(id)a5 shouldFillMiss:(BOOL)a6;
- (id)_repurposeAppEndpointRecords:(id)a3;
- (id)_trafficEnvelopeToTier:(double)a3;
- (id)createFlushInactiveLedgerTimer:(id)a3;
- (id)getOption:(id)a3;
- (id)setOption:(id)a3;
- (int)_performQueryOnEntityFromInstantFlowCache:(id)a3 target:(id)a4 pred:(id)a5 found:(id *)a6;
- (int)_performQueryOnEntityFromProcCache:(id)a3 target:(id)a4 pred:(id)a5 found:(id *)a6;
- (int)performQueryOnEntityFromCache:(id)a3 pred:(id)a4 altpred:(id *)a5 actions:(id)a6 found:(id *)a7;
- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)a3 forPredicate:(id)a4;
- (unint64_t)_clearStaleAppEndpointRecords;
- (unint64_t)_clearStaleNetDomainsRecords;
- (unint64_t)_clearUninstalledAppEntries;
- (unint64_t)_liveUsageCountForProcess:(id)a3 subscriberTag:(id)a4;
- (unint64_t)_pruneAppExperienceRecords;
- (unint64_t)_submitAppDomainUsageRecordInfoAnalytics;
- (unint64_t)_submitAppEndpointRecordInfoAnalytics;
- (void)_algosScoreFor:(id)a3 score:(double)a4;
- (void)_applyCountsTo:(id)a3 fromLiveUsage:(id)a4 mustReset:(BOOL)a5;
- (void)_appsWithFlowsPassingTest:(id)a3 replyQueue:(id)a4 reply:(id)a5;
- (void)_archiveRecord:(id)a3;
- (void)_calendarUsageForApp:(id)a3 givenLastRun:(id)a4;
- (void)_checkCellExcessUsageActions:(unint64_t)a3 previous:(unint64_t)a4 snapshot:(id)a5;
- (void)_checkForegroundStateForProcessWithUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5;
- (void)_compactUsageForApp:(id)a3 intervalType:(int)a4 givenLastRun:(id)a5;
- (void)_didReceiveSnapshot:(id)a3;
- (void)_dumpState;
- (void)_dumpSubFlowCounts;
- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)a1;
- (void)_endRNFPeriod;
- (void)_evalDomainTrackingDropOf:(id)a3;
- (void)_generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6;
- (void)_handleAppTrackingNotification:(id)a3;
- (void)_handleApplicationNotificationCompactForBundleName:(id)a3 edgeMode:(BOOL)a4;
- (void)_handleApplicationNotificationStateChangedForBundleName:(id)a3 edgeMode:(BOOL)a4 intervalType:(int)a5;
- (void)_handleEndpointTrackingNotification:(id)a3;
- (void)_handleSIGUSR1;
- (void)_handleSnapshot:(id)a3;
- (void)_handleSnapshotForDomains:(id)a3;
- (void)_initializeInternals;
- (void)_insertProcCache:(id)a3 ofType:(unsigned int)a4 underName:(id)a5;
- (void)_liveUsagePackForProcess:(id)a3 subscriberTag:(id)a4;
- (void)_logBitmapOutcome:(id)a3;
- (void)_logExcessCellUsage:(int64_t)a3 snapshot:(id)a4;
- (void)_newCoreMediaAssetDownloadEvent:(id)a3;
- (void)_newExpectedTransfer:(id)a3;
- (void)_newFlowData:(id)a3;
- (void)_noteSizeableBackgroundTransferEvent:(id)a3;
- (void)_performAppDomainUsageAnalytics;
- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)a3;
- (void)_performAppExperiencePeriodicTasksWithReply:(id)a3;
- (void)_performAppPeriodicTasksWithReply:(id)a3;
- (void)_performAppTrackingPeriodicTasksWithReply:(id)a3;
- (void)_pruneFlowHistory;
- (void)_recentUsageForApps:(id)a3 replyQueue:(id)a4 reply:(id)a5;
- (void)_refreshFullDataUsage;
- (void)_refreshFullDataUsageComplete;
- (void)_refreshFullDataUsageWithCallback:(id)a3;
- (void)_removeAllInfoForProcess:(id)a3;
- (void)_removeFromProcCache:(id)a3 ofType:(unsigned int)a4;
- (void)_removeInfoFromWorkspaceForProcess:(id)a3;
- (void)_removeOldFlowRecords;
- (void)_reportDomainTrackingDropFor:(id)a3 withCause:(unint64_t)a4 detail:(id)a5;
- (void)_reportThresholdedFlowCount:(unint64_t)a3 threshold:(unint64_t)a4;
- (void)_saveAndUnloadSelectState;
- (void)_sendStatisticsReport:(id)a3;
- (void)_setupDailyMaintenanceActivity;
- (void)_setupNotificationCenterAndRelayObservers;
- (void)_setupPrefsStoreObserving;
- (void)_startFlowMonitoring;
- (void)_summaryAppDomainUsageBy:(unsigned int)a3 reply:(id)a4;
- (void)_updateKnownCellularInterfaceIndexList:(int)a3 force:;
- (void)_updateLiveUsage:(id)a3 wifiIn:(int64_t)a4 wifiOut:(int64_t)a5 cellIn:(int64_t)a6 cellOut:(int64_t)a7 wiredIn:(int64_t)a8 wiredOut:(int64_t)a9 btIn:(int64_t)a10 btOut:(int64_t)a11 xIn:(int64_t)a12 xOut:(int64_t)a13 isJumboFlow:(BOOL)a14 isExpensive:(BOOL)a15 closing:(BOOL)a16;
- (void)_updateTetheringUsage:(BOOL)a3;
- (void)clearAppDomainUsage:(id)a3;
- (void)clearAppEndpoints:(id)a3;
- (void)createSnapshotFor:(id)a3 pred:(id)a4 actions:(id)a5 reply:(id)a6;
- (void)dealloc;
- (void)endpointMaintenanceOnClose:(id)a3;
- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6;
- (void)getNetworkBitmapsWithNames:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7;
- (void)handleLaunchServicesApplicationUnregistration:(id)a3;
- (void)identifierForUUID:(id)a3 queue:(id)a4 reply:(id)a5;
- (void)logOutcomeArray:(id)a3;
- (void)networkDomainResolution:(id)a3;
- (void)networkDomainUserAppTrackingChanged:(id)a3;
- (void)networkDomainUserEndpointTrackingChanged:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)a3 error:(id)a4;
- (void)performAppExperiencePeriodicTasksComplete:(id)a3 error:(id)a4;
- (void)performAppPeriodicTasksComplete:(id)a3 error:(id)a4;
- (void)performAppTrackingActionWithOptions:(id)a3 userId:(unsigned int)a4 reply:(id)a5;
- (void)performAppTrackingPeriodicTasksComplete:(id)a3 error:(id)a4;
- (void)performQueryOnEntity:(id)a3 fetchRequestProperties:(id)a4 pred:(id)a5 sort:(id)a6 actions:(id)a7 service:(id)a8 connection:(id)a9 reply:(id)a10;
- (void)performThresholdingOn:(id)a3 forKey:(id)a4 andValue:(id)a5 connection:(id)a6 createdBlock:(id *)a7 hitBlock:(id)a8 errorBlock:(id)a9;
- (void)pollFlows;
- (void)postCAEvent:(id)a3 withName:(id)a4;
- (void)processSnapshotForConnectionEstablishment:(id)a3;
- (void)removeSnapshotFlowUUIDsForSourceKey:(id)a3;
- (void)resetDataFor:(id)a3 nameKind:(id)a4;
- (void)sendPowerLogReport:(id)a3 isStart:(BOOL)a4;
- (void)startObservingLaunchServices;
- (void)statsManager:(id)a3 thresholdReachedOn:(unsigned int)a4;
- (void)stopObservingLaunchServices;
- (void)storeSnapshotFlowUUID:(id)a3 forSourceKey:(id)a4;
- (void)submitAppEndpointToDateSPICallMetric;
- (void)submitNetworkDomainUsageToDateSPICallMetric;
- (void)updateEffectiveUserId:(id)a3;
- (void)workspaceSaveWithCallback:(id)a3;
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
  v3 = sharedInstance_1;
  if (sharedInstance_1)
  {
    v3 = [sharedInstance_1 queue];
    v2 = vars8;
  }

  return v3;
}

- (void)_refreshFullDataUsage
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  lastFullRefreshTime = self->lastFullRefreshTime;
  if (lastFullRefreshTime && ([(NSDate *)lastFullRefreshTime timeIntervalSinceDate:v3], fabs(v5) < 1.0))
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

  objc_storeStrong(&self->lastFullRefreshTime, v3);
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
    v3 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v4 = [v3 registeredObjects];
    v5 = [v4 count];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke;
    v16[3] = &unk_27898C508;
    v16[4] = &v17;
    [v4 enumerateObjectsUsingBlock:v16];
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
      v9 = v3;
      v15 = v9;
      [v4 enumerateObjectsUsingBlock:&v11];
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

- (FlowAnalyticsEngine)initWithWorkspace:(id)a3 params:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (!v8 || !v10)
  {
    goto LABEL_19;
  }

  v33.receiver = self;
  v33.super_class = FlowAnalyticsEngine;
  v13 = [(AnalyticsEngineCore *)&v33 initWithWorkspace:v8 params:v9 queue:v10];
  self = v13;
  if (!v13)
  {
LABEL_17:
    self = self;
    v12 = self;
    goto LABEL_19;
  }

  if (![(FlowAnalyticsEngine *)v13 _setupObjectAnalyticsWorkspaces:v8])
  {
LABEL_18:
    v12 = 0;
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
              v23 = [(AnalyticsEngineCore *)self queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_2;
              block[3] = &unk_27898A0C8;
              v24 = self;
              v30 = v24;
              v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
              dispatch_async(v23, v25);

              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_3;
              v27[3] = &unk_27898A0C8;
              v28 = v24;
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
  v14 = self;
  v32 = v14;
  if (initWithWorkspace_params_queue__pred != -1)
  {
    dispatch_once(&initWithWorkspace_params_queue__pred, v31);
  }

  self = v14;

  v12 = self;
LABEL_19:

  return v12;
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
    v60 = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "FAE _initializeInternals: QoS %s", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v6);
  v7 = [FlowRefreshScheduler alloc];
  v8 = [(AnalyticsEngineCore *)self queue];
  v9 = [(FlowRefreshScheduler *)v7 initWithQueue:v8];
  refreshScheduler = self->refreshScheduler;
  self->refreshScheduler = v9;

  [(FlowRefreshScheduler *)self->refreshScheduler setDelegate:self];
  v11 = +[FlowScrutinizer sharedInstance];
  flowScrutinizer = self->flowScrutinizer;
  self->flowScrutinizer = v11;

  v13 = +[BitmapRetriever sharedInstance];
  bitmapRetriever = self->bitmapRetriever;
  self->bitmapRetriever = v13;

  v15 = [(AnalyticsEngineCore *)self queue];
  v16 = [(FlowAnalyticsEngine *)self createFlushInactiveLedgerTimer:v15];
  flushInactiveLedgerTimer = self->flushInactiveLedgerTimer;
  self->flushInactiveLedgerTimer = v16;

  v18 = [(AnalyticsEngineCore *)self queue];
  [TrackedFlow setPolledFlowQueue:v18];

  self->_greenTeaLogger = ct_green_tea_logger_create();
  [(FlowAnalyticsEngine *)self _setupSignalHandling];
  v19 = [(AnalyticsEngineCore *)self queue];
  handler[5] = MEMORY[0x277D85DD0];
  handler[6] = 3221225472;
  handler[7] = __43__FlowAnalyticsEngine__initializeInternals__block_invoke;
  handler[8] = &unk_27898A820;
  handler[9] = self;
  self->logStateHandle = os_state_add_handler();

  [(FlowAnalyticsEngine *)self startObservingLaunchServices];
  v20 = objc_alloc(MEMORY[0x277D2CA90]);
  v21 = [(AnalyticsEngineCore *)self queue];
  v22 = [v20 initWithQueue:v21];
  nstatManager = self->nstatManager;
  self->nstatManager = v22;

  v24 = self->nstatManager;
  if (v24)
  {
    [(NWStatsManager *)v24 setDelegate:self];
    self->_nrFrequencyBand = -1;
    v25 = [(AnalyticsEngineCore *)self queue];
    v26 = +[WiFiThroughputAdviser sharedInstance];
    [v26 setQueue:v25];

    v27 = [(AnalyticsEngineCore *)self queue];
    [AppTracker setInternalQueue:v27];

    v28 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v60 = self;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "Configuring FAE<%p> as the network domain delegate", buf, 0xCu);
    }

    v29 = +[NetDomainsHandler sharedInstance];
    [v29 setNetworkDomainDelegate:self];

    [(FlowAnalyticsEngine *)self _setupNotificationCenterAndRelayObservers];
    v30 = [(AnalyticsEngineCore *)self queue];
    v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v30);
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
    v40 = [(AnalyticsEngineCore *)self queue];
    [v39 setQueue:v40];

    [v39 enable];
    v41 = +[SystemSettingsRelay defaultRelay];
    if ([v41 taggedInfoFeatureFlagEnabled])
    {
      v42 = +[BasebandFlowChecker sharedInstance];
      v43 = [(AnalyticsEngineCore *)self queue];
      [v42 setQueue:v43];

      [v42 activate];
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v42;
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
    v47 = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = @"ObjectKey";
    v58 = self;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    [v47 postNotificationName:@"kNotificationOfCompletedInitialization" object:self userInfo:v48];

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

- (BOOL)_setupObjectAnalyticsWorkspaces:(id)a3
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
  v8 = [MEMORY[0x277D6B568] entityName];
  v9 = [v6 initWithWorkspace:workspace entityName:v8 withCache:0];
  domspace = self->domspace;
  self->domspace = v9;

  v11 = objc_alloc(MEMORY[0x277D6B540]);
  v12 = self->super.workspace;
  v13 = [MEMORY[0x277D6B570] entityName];
  v14 = [v11 initWithWorkspace:v12 entityName:v13 withCache:0];
  epspace = self->epspace;
  self->epspace = v14;

  self->domainUsageBucketDuration = 60.0;
  v16 = objc_alloc(MEMORY[0x277D6B540]);
  v17 = self->super.workspace;
  v18 = [MEMORY[0x277D6B578] entityName];
  v19 = [v16 initWithWorkspace:v17 entityName:v18 withCache:0];
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
  v28 = [MEMORY[0x277D6B560] entityName];
  v29 = [v26 initWithWorkspace:v27 entityName:v28 withCache:0];
  calspace = self->calspace;
  self->calspace = v29;

  if (!self->calspace)
  {
    return 0;
  }

  v31 = objc_alloc(MEMORY[0x277D6B540]);
  v32 = self->super.workspace;
  v33 = [MEMORY[0x277D6B590] entityName];
  v34 = [v31 initWithWorkspace:v32 entityName:v33 withCache:0];
  fspace = self->fspace;
  self->fspace = v34;

  if (!self->fspace)
  {
    return 0;
  }

  v36 = objc_alloc(MEMORY[0x277D6B540]);
  v37 = self->super.workspace;
  v38 = [MEMORY[0x277D6B598] entityName];
  v39 = [v36 initWithWorkspace:v37 entityName:v38 withCache:0];
  lfpspace = self->lfpspace;
  self->lfpspace = v39;

  return self->lfpspace != 0;
}

- (id)createFlushInactiveLedgerTimer:(id)a3
{
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, a3);
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
    v3 = [(FlowAnalyticsEngine *)self proxyAnalytics];

    if (!v3)
    {
      v4 = objc_opt_new();
      [(FlowAnalyticsEngine *)self setProxyAnalytics:v4];

      v5 = [(FlowAnalyticsEngine *)self proxyAnalytics];
      [v5 setDelegate:self];
    }

    v6 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [v6 performAppPeriodicTasks];

    v7 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [v7 performAppTrackingPeriodicTasks];

    v8 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [v8 performAppEndpointTrackingPeriodicTasks];

    v9 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [v9 performAppExperiencePeriodicTasks];
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
  v3 = [(AnalyticsEngineCore *)self queue];
  v4 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, v3);
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
  v6 = [(AnalyticsEngineCore *)self queue];
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, v6);
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke;
  v38[3] = &unk_27898A690;
  v38[4] = self;
  v4 = [v3 addObserverForName:@"kNotificationCellTrafficClassReportCapable" object:0 queue:0 usingBlock:v38];
  cellTCCapabilityObserver = self->cellTCCapabilityObserver;
  self->cellTCCapabilityObserver = v4;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_107;
  v37[3] = &unk_27898A690;
  v37[4] = self;
  v6 = [v3 addObserverForName:@"kNotificationCellThroughputAdvisoryCapable" object:0 queue:0 usingBlock:v37];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = v6;

  v8 = +[SystemSettingsRelay defaultRelay];
  [v8 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_118;
  v36[3] = &unk_27898A690;
  v36[4] = self;
  v9 = [v3 addObserverForName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:0 queue:0 usingBlock:v36];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = v9;

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3;
  v35[3] = &unk_27898A690;
  v35[4] = self;
  v11 = [v3 addObserverForName:@"UMSwitch" object:0 queue:0 usingBlock:v35];
  userSwitchObserver = self->userSwitchObserver;
  self->userSwitchObserver = v11;

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_122;
  v34[3] = &unk_27898A690;
  v34[4] = self;
  v13 = [v3 addObserverForName:@"AlgosScore" object:0 queue:0 usingBlock:v34];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = v13;

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4;
  v33[3] = &unk_27898A690;
  v33[4] = self;
  v15 = [v3 addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v33];
  relayReadyObserver = self->relayReadyObserver;
  self->relayReadyObserver = v15;

  self->trackedFlowCountSincePrimaryInterfaceChanged = -1;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_131;
  v32[3] = &unk_27898A690;
  v32[4] = self;
  v17 = [v3 addObserverForName:@"kNotificationOfTetheringState" object:0 queue:0 usingBlock:v32];
  tetherObserver = self->tetherObserver;
  self->tetherObserver = v17;

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_133;
  v31[3] = &unk_27898A690;
  v31[4] = self;
  v19 = [v3 addObserverForName:@"kNotificationFlowStats" object:0 queue:0 usingBlock:v31];
  flowObserver = self->flowObserver;
  self->flowObserver = v19;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_135;
  v30[3] = &unk_27898A690;
  v30[4] = self;
  v21 = [v3 addObserverForName:@"kNotificationExpectedTransfer" object:0 queue:0 usingBlock:v30];
  transferSizeObserver = self->transferSizeObserver;
  self->transferSizeObserver = v21;

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5_137;
  v29[3] = &unk_27898A690;
  v29[4] = self;
  v23 = [v3 addObserverForName:@"kNotificationCoreMediaAssetDownload" object:0 queue:0 usingBlock:v29];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = v23;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_139;
  v28[3] = &unk_27898A690;
  v28[4] = self;
  v25 = [v3 addObserverForName:@"kNotificationDASOversizeLoad" object:0 queue:0 usingBlock:v28];
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
  v3 = [(AnalyticsEngineCore *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke;
  v4[3] = &unk_27898C3B0;
  objc_copyWeak(&v5, &location);
  [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"FAEngine.Daily" queue:v3 activity:v4];

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

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 removeObserver:self->tetherObserver];
  [v12 removeObserver:self->algosScoreObserver];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = 0;

  [v12 removeObserver:self->appStateChangeObserver];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = 0;

  [v12 removeObserver:self->assetDownloadObserver];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = 0;

  [v12 removeObserver:self->cellThroughputAdvisoryReqObserver];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = 0;

  if (self->relayReadyObserver)
  {
    [v12 removeObserver:?];
  }

  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"nrFrequencyBand"];
  [v12 removeObserver:self->flowObserver];
  flushOldFlowRecordsTimer = self->flushOldFlowRecordsTimer;
  if (flushOldFlowRecordsTimer)
  {
    dispatch_source_cancel(flushOldFlowRecordsTimer);
    v18 = self->flushOldFlowRecordsTimer;
    self->flushOldFlowRecordsTimer = 0;
  }

  if (self->userSwitchObserver)
  {
    [v12 removeObserver:?];
    userSwitchObserver = self->userSwitchObserver;
    self->userSwitchObserver = 0;
  }

  if (self->userAppTrackingObserver)
  {
    [v12 removeObserver:?];
    userAppTrackingObserver = self->userAppTrackingObserver;
    self->userAppTrackingObserver = 0;
  }

  if (self->userEndpointTrackingObserver)
  {
    [v12 removeObserver:?];
    userEndpointTrackingObserver = self->userEndpointTrackingObserver;
    self->userEndpointTrackingObserver = 0;
  }

  [v12 removeObserver:self->domainResolvingObserver];
  domainResolvingObserver = self->domainResolvingObserver;
  self->domainResolvingObserver = 0;

  v23 = +[PowerStateRelay defaultRelay];
  [v23 removeObserver:self forKeyPath:@"screenNotDark"];
  [v23 removeObserver:self forKeyPath:@"screenUnlocked"];

  v24.receiver = self;
  v24.super_class = FlowAnalyticsEngine;
  [(AnalyticsEngineCore *)&v24 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 isEqualToString:@"primary"])
  {
    v12 = v10;
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v14 = [v12 functionalInterfaceType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 BOOLValue])
    {
      if (v14 == 3)
      {
        objc_storeStrong(&self->_mostRecentPrimaryRelay, a4);
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

  if ([v9 isEqualToString:@"nrFrequencyBand"])
  {
    v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 shortValue];
      if (v18 >= 3)
      {
        v19 = -1;
      }

      else
      {
        v19 = v18;
      }

      v20 = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_27898A3A0;
      block[4] = self;
      v43 = v19;
      dispatch_async(v20, block);
    }
  }

  if ([v9 isEqualToString:@"autoBugCaptureEnabled"])
  {
    v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [v21 BOOLValue];
      *buf = 67109120;
      v45 = v24;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Observed value for autoBugCaptureEnabled is %d", buf, 8u);
    }

    v25 = [(AnalyticsEngineCore *)self queue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_195;
    v39[3] = &unk_27898A7D0;
    v40 = v21;
    v41 = self;
    v26 = v21;
    dispatch_async(v25, v39);

    v27 = v40;
    goto LABEL_27;
  }

  if ([v9 isEqualToString:@"screenNotDark"])
  {
    v26 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v26;
      v29 = [(AnalyticsEngineCore *)self queue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v36[3] = &unk_27898A7D0;
      v37 = v28;
      v38 = self;
      v27 = v28;
      dispatch_async(v29, v36);

      v30 = v37;
LABEL_26:

      v26 = v27;
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if ([v9 isEqualToString:@"screenUnlocked"])
  {
    v26 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v26;
      v32 = [(AnalyticsEngineCore *)self queue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_199;
      v34[3] = &unk_27898A7D0;
      v34[4] = self;
      v35 = v31;
      v27 = v31;
      dispatch_async(v32, v34);

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

- (void)_refreshFullDataUsageWithCallback:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v12 = [(AnalyticsEngineCore *)self queue];
  v13 = _Block_copy(self->dataUsageRefreshCompletionBlock);
  ++self->dataUsageRefreshCompletionNumWaiting;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke;
  v27 = &unk_27898C468;
  v14 = v13;
  v29 = v14;
  v15 = v12;
  v28 = v15;
  v31 = v11;
  v16 = v4;
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

- (void)_reportThresholdedFlowCount:(unint64_t)a3 threshold:(unint64_t)a4
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

- (void)_logExcessCellUsage:(int64_t)a3 snapshot:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v6;
    v7 = a4;
    v8 = [v7 snapshotReason];
    v9 = "";
    if (v8 == 2)
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
    v12 = [v7 flowUsesChannels];
    v13 = "socket";
    if (v12)
    {
      v13 = "channel";
    }

    v14 = [v7 sourceIdentifier];
    [v7 flowDuration];
    v16 = v15;
    v17 = [v7 processID];
    v18 = [v7 processName];
    v19 = [v7 uuid];
    v20 = [v7 euuid];
    v21 = [v7 vuuid];
    v22 = [v7 attributedEntity];
    v23 = [v7 attributionReasonString];

    *buf = 134221058;
    v30 = a3;
    v31 = 2080;
    v32 = v27;
    v33 = 2080;
    v34 = v26;
    v35 = 2080;
    v36 = v25;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = v16;
    v41 = 1024;
    v42 = v17;
    v43 = 2112;
    v44 = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v20;
    v49 = 2112;
    v50 = v21;
    v51 = 2112;
    v52 = v22;
    v53 = 2112;
    v54 = v23;
    _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Cell traffic threshold %lld on %s %s %s flow %lld duration %.2f with pid %d procname %@ UUID %@ EUUID %@ VUUID %@ (attributed %@ reason%@)", buf, 0x80u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_checkCellExcessUsageActions:(unint64_t)a3 previous:(unint64_t)a4 snapshot:(id)a5
{
  v15 = a5;
  v8 = [v15 snapshotReason];
  if (a3 > 0x100000 && (a3 > 0xA00000 ? (v9 = a4 >= 0xA00001) : (v9 = 1), v9 ? (v10 = 0) : (v10 = 1), a4 <= 0x100000 || (v10 & 1) != 0 || v8 == 2))
  {
    [(FlowAnalyticsEngine *)self _logExcessCellUsage:a3 snapshot:v15];
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

  if (v12 < a3 && v12 >= a4)
  {
    if ((v11 & 1) == 0)
    {
      [(FlowAnalyticsEngine *)self _logExcessCellUsage:a3 snapshot:v15];
    }

    [(FlowAnalyticsEngine *)self _generateFlowAnomalySymptom:405527 currentUsage:a3 snapshot:v15];
  }
}

- (BOOL)_shouldSendStatisticsReport:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 snapshotReason] != 2)
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

- (void)_sendStatisticsReport:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
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

  if ([v3 snapshotReason] != 2)
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
    v7 = [v4 flowTypeLowerCase];
    v8 = [v7 UTF8String];

    if (v8)
    {
      v9 = [v4 flowTypeLowerCase];
      xpc_dictionary_set_string(v5, "type", [v9 UTF8String]);
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
    v10 = [v4 attributedEntity];
    v11 = [v10 UTF8String];

    if (v11)
    {
      v12 = [v4 attributedEntity];
      xpc_dictionary_set_string(v5, "attributedEntity", [v12 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "attributedEntityIsProcessName", [v4 attributedEntityIsProcessName]);
    xpc_dictionary_set_BOOL(v5, "attributedEntityIsBundleName", [v4 attributedEntityIsBundleName]);
    v13 = [v4 attributionReasonString];
    v14 = [v13 UTF8String];

    if (v14)
    {
      v15 = [v4 attributionReasonString];
      xpc_dictionary_set_string(v5, "attributionReason", [v15 UTF8String]);
    }

    v16 = [v4 delegateName];
    v17 = [v16 UTF8String];

    if (v17)
    {
      v18 = [v4 delegateName];
      xpc_dictionary_set_string(v5, "delegateName", [v18 UTF8String]);
    }

    v19 = [v4 processName];
    v20 = [v19 UTF8String];

    if (v20)
    {
      v21 = [v4 processName];
      xpc_dictionary_set_string(v5, "processName", [v21 UTF8String]);
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
      v22 = [v4 domainName];
      v23 = [v22 UTF8String];

      if (v23)
      {
        v24 = [v4 domainName];
        xpc_dictionary_set_string(v5, "domainName", [v24 UTF8String]);
      }

      v25 = [v4 domainOwner];
      v26 = [v25 UTF8String];

      if (v26)
      {
        v27 = [v4 domainOwner];
        xpc_dictionary_set_string(v5, "domainOwner", [v27 UTF8String]);
      }

      v28 = [v4 domainTrackerContext];
      v29 = [v28 UTF8String];

      if (v29)
      {
        v30 = [v4 domainTrackerContext];
        xpc_dictionary_set_string(v5, "domainTrackerContext", [v30 UTF8String]);
      }

      v31 = [v4 domainAttributedBundleId];
      v32 = [v31 UTF8String];

      if (v32)
      {
        v33 = [v4 domainAttributedBundleId];
        xpc_dictionary_set_string(v5, "domainAttributedBundleId", [v33 UTF8String]);
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
      v38 = [v34 congestionAlgorithm];
      v39 = [v38 UTF8String];

      if (v39)
      {
        v40 = [v34 congestionAlgorithm];
        xpc_dictionary_set_string(v5, "congestionAlgorithm", [v40 UTF8String]);
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
      v45 = [v41 txRetransmittedBytes];

      xpc_dictionary_set_uint64(v5, "txRetransmittedBytes", v45);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v4;
      [v46 connDuration];
      xpc_dictionary_set_double(v5, "connectionDuration", v47);
      xpc_dictionary_set_BOOL(v5, "hasNetAccess", [v46 hasNetAccess]);
      v48 = [v46 currentProperties];
      v49 = v48;
      if (v48)
      {
        if ([v48 isSilent])
        {

LABEL_60:
          goto LABEL_61;
        }

        xpc_dictionary_set_BOOL(v5, "nw_isTracker", [v49 isTracker]);
        xpc_dictionary_set_BOOL(v5, "nw_isNonAppInitiated", [v49 isNonAppInitiated]);
        if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl())
        {
          v52 = [v49 domainName];
          v53 = [v52 UTF8String];

          if (v53)
          {
            v54 = [v49 domainName];
            xpc_dictionary_set_string(v5, "nw_domainName", [v54 UTF8String]);
          }

          v55 = [v49 domainOwner];
          v56 = [v55 UTF8String];

          if (v56)
          {
            v57 = [v49 domainOwner];
            xpc_dictionary_set_string(v5, "nw_domainOwner", [v57 UTF8String]);
          }

          v58 = [v49 domainTrackerContext];
          v59 = [v58 UTF8String];

          if (v59)
          {
            v60 = [v49 domainTrackerContext];
            xpc_dictionary_set_string(v5, "nw_domainTrackerContext", [v60 UTF8String]);
          }

          v61 = [v49 domainAttributedBundleId];
          v62 = [v61 UTF8String];

          if (v62)
          {
            v63 = [v49 domainAttributedBundleId];
            xpc_dictionary_set_string(v5, "nw_domainAttributedBundleId", [v63 UTF8String]);
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

- (void)_handleSnapshot:(id)a3
{
  v220 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "sourceIdentifier")}];
    v10 = [v4 snapshotReason];
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v191 = v4;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Flow data on entry is %@", buf, 0xCu);
    }

    v12 = [TrackedFlow flowForKey:v9];
    v13 = attributionLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (v10 == 2)
      {
        v14 = "";
      }

      else
      {
        v14 = "not ";
      }

      v15 = +[TrackedFlow allActiveFlowsCount];
      v16 = [v4 sourceIdentifier];
      *buf = 136316162;
      *v191 = v14;
      *&v191[8] = 2048;
      *&v191[10] = v15;
      v192 = 2048;
      v193 = *&v16;
      v194 = 2112;
      v195 = v4;
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
          v35 = [v4 attributedEntity];
          *buf = 138478083;
          *v191 = v35;
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
            v28 = [(NetworkStateRelay *)self->_mostRecentPrimaryRelay madePrimaryDate];
            [v28 timeIntervalSinceNow];
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
            v31 = [(AnalyticsEngineCore *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke;
            block[3] = &unk_27898AFE0;
            block[4] = self;
            block[5] = v25;
            dispatch_async(v31, block);
          }
        }
      }

      if (!self->flowCountExceededThreshold && v22 >= 0x3E9)
      {
        self->flowCountExceededThreshold = 1;
        v32 = [(AnalyticsEngineCore *)self queue];
        v188[0] = MEMORY[0x277D85DD0];
        v188[1] = 3221225472;
        v188[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_2;
        v188[3] = &unk_27898AFE0;
        v188[4] = self;
        v188[5] = v22;
        dispatch_async(v32, v188);
      }
    }

    if (([v12 flags] & 0x200) == 0 && (objc_msgSend(v12, "inheritEarlyProperties:", v4) & 1) == 0 && v10 != 2)
    {
      -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [v4 sourceIdentifier]);

LABEL_222:
      goto LABEL_223;
    }

    v183 = v10;
    v17 = [v12 ownerKey];
    if (!v17)
    {
      v17 = [v4 attributedEntity];
      v18 = [v4 delegateName];

      if (v18)
      {
        v19 = [v4 delegateName];
        [AppTracker noteFlow:v12 withDelegatee:v19 snapshot:v4];
      }

      else if (v183 != 2)
      {
        goto LABEL_50;
      }

      [v12 setOwnerKey:v17];
    }

LABEL_50:
    [AppTracker noteFlow:v12 withOwner:v17 snapshot:v4];
    if ([v4 networkActivityMapStartTime])
    {
      [(FlowScrutinizer *)self->flowScrutinizer addActivityBitmapFromSnapshot:v4];
    }

    if (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") && (([v4 interfaceCellular] & 1) != 0 || objc_msgSend(v4, "rxCellularBytes") || objc_msgSend(v4, "txCellularBytes")) && (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") == 2 || objc_msgSend(v4, "snapshotReason") == 2) || -[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") && ((objc_msgSend(v4, "interfaceWiFi") & 1) != 0 || objc_msgSend(v4, "rxWiFiBytes") || objc_msgSend(v4, "txWiFiBytes")) && (objc_msgSend(v4, "hasLocalDestination") & 1) == 0 && (-[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") == 2 || objc_msgSend(v4, "snapshotReason") == 2))
    {
      if ([v4 attributedEntityIsBundleName] && (objc_msgSend(v4, "attributedEntity"), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
      {
        v37 = [v4 attributedEntity];
        [v4 setUiBackgroundAudioCapable:{-[FlowAnalyticsEngine _bundleBackgroundAudioCapable:](self, "_bundleBackgroundAudioCapable:", v37)}];
      }

      else
      {
        [v4 setUiBackgroundAudioCapable:0];
      }

      flowScrutinizer = self->flowScrutinizer;
      v39 = [v12 classification];
      [(FlowScrutinizer *)flowScrutinizer scrutinizeFlow:v4 withClassification:v39];
    }

    v182 = v9;
    if ([v4 failedConsistencyChecks])
    {
      if ([v4 failedNegativeDeltaCheck])
      {
        v40 = 405528;
        goto LABEL_77;
      }

      if ([v4 failedRxCountCheck])
      {
        v40 = 405529;
        goto LABEL_77;
      }

      if ([v4 failedSkywalkAction])
      {
        v40 = 405530;
LABEL_77:
        v41 = [v12 flags];
        v42 = analyticsLogHandle;
        v43 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
        if ((v41 & 0x2000) != 0)
        {
          if (v43)
          {
            v50 = v42;
            v51 = [v4 sourceIdentifier];
            *buf = 134217984;
            *v191 = v51;
            _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, suppress duplicate reports on flow %lld", buf, 0xCu);
          }
        }

        else
        {
          if (v43)
          {
            v44 = v42;
            v45 = [v4 sourceIdentifier];
            *buf = 67109376;
            *v191 = v40;
            *&v191[4] = 2048;
            *&v191[6] = v45;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, report symptom %x to ABC for flow %lld", buf, 0x12u);
          }

          -[FlowAnalyticsEngine _generateFlowAnomalySymptom:currentUsage:snapshot:](self, "_generateFlowAnomalySymptom:currentUsage:snapshot:", v40, [v4 txWiredBytes] + objc_msgSend(v4, "rxWiredBytes") + objc_msgSend(v4, "rxCellularBytes") + objc_msgSend(v4, "txCellularBytes") + objc_msgSend(v4, "rxWiFiBytes") + objc_msgSend(v4, "txWiFiBytes"), v4);
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          if (v183 != 2)
          {
            -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [v4 sourceIdentifier]);
          }
        }

        goto LABEL_221;
      }
    }

    v177 = [v4 rxBytes];
    v174 = [v4 txBytes];
    if (([v4 interfaceCompanionLink] & 1) != 0 || -[FlowAnalyticsEngine _snapshotUsesCompanion:](self, "_snapshotUsesCompanion:", v4))
    {
      [v4 hasCellTraffic];
    }

    v181 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v46 = v4;
      v47 = [v46 rxDuplicateBytes];
      v48 = [v46 rxOutOfOrderBytes];
      v49 = [v46 txRetransmittedBytes];
      [v46 deltaRxDuplicateBytes];
      [v46 deltaRxOutOfOrderBytes];
      [v46 deltaTxRetransmittedBytes];
      v157 = [v46 txUnacked];
      v161 = [v46 probeActivated];
      v165 = [v46 connProbeFailed];
      v168 = [v46 readProbeFailed];
      log = [v46 writeProbeFailed];

      v148 = v47;
      v151 = v48;
      v154 = v49;
    }

    else
    {
      v157 = 0;
      log = 0;
      v168 = 0;
      v165 = 0;
      v161 = 0;
      v151 = 0;
      v154 = 0;
      v148 = 0;
    }

    v52 = [v4 deltaAccountingRxWiredBytes];
    v53 = [v4 deltaAccountingTxWiredBytes];
    v54 = [v4 deltaAccountingRxCellularBytes];
    v55 = [v4 deltaAccountingTxCellularBytes];
    v56 = [v4 deltaAccountingRxWiFiBytes];
    v57 = [v4 deltaAccountingTxWiFiBytes];
    v58 = [v4 deltaAccountingRxCompanionLinkBluetoothBytes];
    v59 = [v4 deltaAccountingTxCompanionLinkBluetoothBytes];
    v179 = v56;
    v60 = v56 | v57;
    v61 = v57;
    v62 = v60 != 0;
    *&v144 = v59;
    *(&v144 + 1) = v58;
    v146 = (v60 | v54 | v55 | v52 | v53 | v58 | v59) != 0;
    v63 = [v4 interfaceExpensive];
    if ((([v4 snapshotAppStateIsForeground] & 1) != 0 || objc_msgSend(v4, "startAppStateIsForeground")) && (objc_msgSend(v4, "hasLocalDestination") & 1) == 0 && (v54 || v179 | v55 || v61))
    {
      [TrackedFlow foregroundNonLocalUsageGrandTallyAfterAdding:v55 + v54 + v179 + v61];
      v64 = outrankLogHandle;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [v4 flowDuration];
        *buf = 138413570;
        *v191 = v181;
        *&v191[8] = 2048;
        *&v191[10] = v65;
        v192 = 2048;
        v193 = *&v54;
        v194 = 2048;
        v195 = v55;
        v196 = 2048;
        v197 = v179;
        v198 = 2048;
        v199 = v61;
        _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEBUG, "FAE foregroundNonLocalUsage note %@ flow duration %f for cell rx %lld tx %lld wifi rx %lld tx %lld", buf, 0x3Eu);
      }
    }

    if ([v4 interfaceCellularViaPreferredFallback])
    {
      [TrackedFlow reverseRnfUsageGrandTallyAfterAdding:v55 + v54];
    }

    if (v62 && ([v4 hasLocalDestination] & 1) == 0)
    {
      [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:v61 + v179];
    }

    if (v54 | v55)
    {
      [TrackedFlow cellUsageGrandTallyAfterAdding:v55 + v54];
      if (v63)
      {
        [TrackedFlow cellExpensiveUsageGrandTallyAfterAdding:v55 + v54];
      }
    }

    v142 = v63;
    if ([v4 interfaceCellularViaFallback] && (objc_msgSend(v12, "isForcedNonRNF") & 1) == 0)
    {
      v145 = 1;
      [v12 setIsRNF:1];
      [TrackedFlow rnfUsageGrandTallyAfterAdding:v55 + v54];
      v66 = v55;
      v67 = v54;
      if (v63)
      {
        [TrackedFlow rnfExpensiveUsageGrandTallyAfterAdding:v55 + v54];
        v145 = 1;
        v66 = v55;
        v67 = v54;
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
    v68 = v174 + v177;
    v69 = [v4 rxCellularBytes];
    v178 = [v4 txCellularBytes] + v69;
    if (v178 > 0x100000)
    {
      -[FlowAnalyticsEngine _checkCellExcessUsageActions:previous:snapshot:](self, "_checkCellExcessUsageActions:previous:snapshot:", v178, v178 - ([v4 deltaAccountingRxCellularBytes] + objc_msgSend(v4, "deltaAccountingTxCellularBytes")), v4);
    }

    v70 = v62;
    [v12 setRxWiFiBytes:{objc_msgSend(v4, "rxWiFiBytes")}];
    [v12 setTxWiFiBytes:{objc_msgSend(v4, "txWiFiBytes")}];
    [v12 setRxDupeBytes:v148];
    [v12 setRxOOOBytes:v151];
    [v12 setTxReTxBytes:v154];
    [v12 setTxUnacked:v157];
    [v12 setRxPkts:{objc_msgSend(v4, "rxPackets")}];
    [v12 setTxPkts:{objc_msgSend(v4, "txPackets")}];
    [v12 setProbedFlow:v161];
    [v12 setProbed3WHSStuckFlow:v165];
    [v12 setProbedReadStuckFlow:v168];
    [v12 setProbedWriteStuckFlow:log];
    if (v183 == 2)
    {
      [NetworkAnalyticsEngine didReceiveProtocolSnapshot:v4];
      v71 = v68;
      v175 = v68 > 0x3200000;
      v17 = v181;
      if ([(FlowAnalyticsEngine *)self _shouldSendStatisticsReport:v4])
      {
        v72 = [(AnalyticsEngineCore *)self queue];
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_306;
        v186[3] = &unk_27898A7D0;
        v186[4] = self;
        v187 = v4;
        dispatch_async(v72, v186);
      }

      if (self->repeatedConnFailureDetector)
      {
        if (![v4 rxBytes])
        {
          [v4 flowDuration];
          if (v73 > 1.0)
          {
            if ([v4 isADaemon])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(RepeatedConnFailureDetector *)self->repeatedConnFailureDetector noteSuspectFlow:v4 withOwner:v181];
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
      if (self->appTrackingEnabled && v181 && self->endpointTrackingEnabled && [v4 attributedEntityIsBundleName] && (objc_msgSend(v4, "hasLocalDestination") & 1) == 0)
      {
        [(FlowAnalyticsEngine *)self endpointMaintenanceOnClose:v4];
      }
    }

    else
    {
      v175 = 0;
      v17 = v181;
    }

    if (v146)
    {
      v74 = v179;
      if (!v70)
      {
        v74 = 0;
      }

      v166 = v61;
      if (v54 | v55)
      {
        v75 = v55;
      }

      else
      {
        v75 = v61;
      }

      if (v54 | v55)
      {
        v76 = v54;
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
            if (v54 | v55)
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
            v155 = [v4 processName];
            v149 = [v4 attributedEntity];
            v169 = [v4 localAddress];
            v83 = sockAddrToString(v169);
            v158 = [v4 remoteAddress];
            v84 = sockAddrToString(v158);
            *buf = 136316930;
            *v191 = v162;
            *&v191[8] = 2080;
            *&v191[10] = v152;
            v192 = 2048;
            v193 = *&v75;
            v194 = 2048;
            v195 = v76;
            v196 = 2114;
            v197 = v155;
            v198 = 2114;
            v199 = v149;
            v200 = 2114;
            v201 = v83;
            v202 = 2114;
            v203 = v84;
            _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_INFO, "%s %s bytes transmitted: %llu, bytes received: %llu, process name: %{public}@, bundle id: %{public}@ local address: %{public}@ remote address: %{public}@", buf, 0x52u);

            v17 = v181;
          }
        }
      }

      if ([v4 attributedEntityIsProcessName])
      {
        v85 = [v4 attributedEntity];
      }

      else
      {
        v85 = 0;
      }

      if ([v4 attributedEntityIsBundleName])
      {
        v86 = [v4 attributedEntity];
      }

      else
      {
        v86 = 0;
      }

      v87 = [v4 attributedExtension];
      v88 = [(FlowAnalyticsEngine *)self _processFetchForName:v85 bundle:v86 extension:v87 shouldFillMiss:1];

      logb = v88;
      if (v88)
      {
        v170 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v88];
        if (v170)
        {
          v159 = v86;
          v163 = v85;
          v89 = [v4 interfaceAWDL];
          if (v89)
          {
            v90 = 0;
          }

          else
          {
            v90 = v166;
          }

          if (v89)
          {
            v91 = 0;
          }

          else
          {
            v91 = v179;
          }

          if (v89)
          {
            v92 = v166;
          }

          else
          {
            v92 = 0;
          }

          if (v89)
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
            v96 = [MEMORY[0x277CBEAA8] date];
            v97 = [v12 startingTimestamp];
            [v96 timeIntervalSinceDate:v97];

            internal_symptom_new(405510);
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            v98 = [v4 attributedEntity];
            v99 = v98;
            if (v98)
            {
              strlen([v98 UTF8String]);
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
          [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v170 wifiOut:v91 cellIn:v90 cellOut:v54 wiredIn:v55 wiredOut:v93 btIn:v92 btOut:*(&v144 + 1) xIn:v144 xOut:v138 isJumboFlow:v140 isExpensive:v136 closing:?];
          v100 = [MEMORY[0x277CBEAA8] date];
          [v88 setTimeStamp:v100];

          v176 = [v4 sourceIdentifier];
          v101 = [v4 delegateName];
          v102 = [v4 attributedExtension];
          if (v101)
          {
            v184 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (delegation: %@)", v101];
          }

          else
          {
            v184 = &stru_2847966D8;
          }

          if (v102)
          {
            v109 = [v88 name];
            if ([v109 isEqualToString:v102])
            {

              v180 = &stru_2847966D8;
            }

            else
            {
              v110 = [v184 isEqualToString:v102];

              if (v110)
              {
                v180 = &stru_2847966D8;
              }

              else
              {
                v180 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (attrExtn: %@)", v102];
              }

              v88 = logb;
            }
          }

          else
          {
            v180 = &stru_2847966D8;
          }

          v111 = analyticsLogHandle;
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = [v88 name];
            if ([v4 attributionReason] == 4)
            {
              v113 = @"(viaNEHelper)";
            }

            else
            {
              v113 = &stru_2847966D8;
            }

            v147 = [v170 wifiIN];
            v114 = [v170 wifiOUT];
            v141 = [v170 wwanIN];
            v139 = [v170 wwanOUT];
            v143 = [v170 tag];
            [v4 flowDuration];
            *buf = 138416130;
            *v191 = v112;
            *&v191[8] = 2112;
            *&v191[10] = v113;
            v88 = logb;
            v192 = 2112;
            v193 = *&v184;
            v194 = 2112;
            v195 = v180;
            v196 = 2048;
            v197 = v176;
            v198 = 2112;
            v199 = v147;
            v200 = 2112;
            v201 = v114;
            v202 = 2048;
            v203 = v153;
            v204 = 2048;
            v205 = v156;
            v206 = 2112;
            v207 = v141;
            v208 = 2112;
            v209 = v139;
            v210 = 2048;
            v211 = v54;
            v212 = 2048;
            v213 = v55;
            v214 = 1024;
            v215 = v145;
            v216 = 2112;
            v217 = v143;
            v218 = 2048;
            v219 = v115;
            _os_log_impl(&dword_23255B000, v111, OS_LOG_TYPE_DEFAULT, "Data Usage for %@%@%@%@ on flow %llu - WiFi in/out: %@/%@, WiFi delta_in/delta_out: %lld/%lld, Cell in/out: %@/%@, Cell delta_in/delta_out: %lld/%lld, RNF: %d, subscriber tag: %@, total duration: %.3f", buf, 0x9Eu);
          }

          v103 = v184;
          if (v144 != 0)
          {
            v116 = analyticsLogHandle;
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
            {
              v117 = [v88 name];
              v118 = [v170 btIN];
              v119 = [v170 btOUT];
              [v4 flowDuration];
              *buf = 138414338;
              *v191 = v117;
              *&v191[8] = 2112;
              *&v191[10] = v184;
              v192 = 2112;
              v193 = *&v180;
              v194 = 2048;
              v195 = v176;
              v196 = 2112;
              v197 = v118;
              v198 = 2112;
              v199 = v119;
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
            v122 = [v88 name];
            v123 = [v170 wiredIN];
            v124 = [v170 wiredOUT];
            v125 = [v170 tag];
            [v4 flowDuration];
            *buf = 138414594;
            *v191 = v122;
            *&v191[8] = 2112;
            *&v191[10] = v184;
            v192 = 2112;
            v193 = *&v180;
            v194 = 2048;
            v195 = v176;
            v196 = 2112;
            v197 = v123;
            v198 = 2112;
            v199 = v124;
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

          v17 = v181;
          v86 = v159;
          v85 = v163;
        }

        else
        {
          v103 = evaluationLogHandle;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            v160 = v86;
            v104 = [v88 description];
            v105 = [v104 UTF8String];
            ctShim = self->ctShim;
            v164 = v85;
            if (ctShim)
            {
              v87 = [(CoreTelephonyShim *)ctShim currentSubscriberTag];
              if (v87)
              {
                v107 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                v108 = 1;
              }

              else
              {
                v108 = 0;
                v107 = &unk_2847EF6C8;
              }
            }

            else
            {
              v108 = 0;
              v107 = &unk_2847EF6C8;
            }

            *buf = 136315394;
            *v191 = v105;
            *&v191[8] = 2112;
            *&v191[10] = v107;
            _os_log_impl(&dword_23255B000, v103, OS_LOG_TYPE_DEFAULT, "Can't find liveusage for %s with subscriber tag: %@", buf, 0x16u);
            if (v108)
            {
            }

            v17 = v181;
            if (ctShim)
            {
            }

            v86 = v160;
            v85 = v164;
            v88 = logb;
          }
        }
      }

      if (v178)
      {
        v127 = v86;
        v128 = [v4 interfaceIndex];
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

        if (self->_pdpLastUsedInterfaceIndex != v128)
        {
          pdpMonitoredInterfaces = self->_pdpMonitoredInterfaces;
          v131 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v128];
          LOBYTE(pdpMonitoredInterfaces) = [(NSMutableSet *)pdpMonitoredInterfaces containsObject:v131];

          if (pdpMonitoredInterfaces)
          {
            self->_pdpLastUsedInterfaceIndex = v128;
            v132 = flowLogHandle;
            if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
            {
              pdpLastUsedInterfaceIndex = self->_pdpLastUsedInterfaceIndex;
              *buf = 67109376;
              *v191 = v128;
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
              *v191 = v128;
              *&v191[4] = 2048;
              *&v191[6] = v178;
              _os_log_impl(&dword_23255B000, v135, OS_LOG_TYPE_DEBUG, "Incoming (presumed) cellular interface index %d is not monitored (usage: %ld)", buf, 0x12u);
            }

            [(FlowAnalyticsEngine *)self _updateKnownCellularInterfaceIndexList:0 force:?];
            [(FlowAnalyticsEngine *)self _enableThresholdMonitoringForCellularInterface:v128];
          }
        }

        v17 = v181;
        v86 = v127;
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

- (BOOL)_shouldProcessDomainInfoForBundleID:(id)a3 implicit:(id *)a4 knownToLaunchServices:(BOOL *)a5 ignoredInLaunchServices:(BOOL *)a6 isWebBrowser:(BOOL *)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [LaunchServicesUtilities implicitlyAssumedIdentityEntitlementForBundleIdentifier:v11];
  v13 = v12;
  if (a7)
  {
    *a7 = [v12 isWebBrowser];
  }

  v14 = [v13 type];
  v15 = 1;
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 2)
      {
        *a4 = [v13 impliedBundleID];
        v20 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          v21 = *a4;
          v24 = 138478083;
          v25 = v21;
          v26 = 2113;
          v27 = v11;
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
        v25 = v11;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "Found unexpected 'type' in entitlement for %{private}@", &v24, 0xCu);
      }

      v15 = 1;
    }
  }

  else
  {
    if ((v14 - 3) >= 4)
    {
      if (v14 != 7)
      {
        goto LABEL_10;
      }

      if (a5)
      {
        *a5 = 0;
      }

      v22 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138477827;
        v25 = v11;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, not known to LaunchServices", &v24, 0xCu);
      }
    }

    else
    {
      if (a6)
      {
        *a6 = 1;
      }

      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v24 = 138478083;
        v25 = v11;
        v26 = 2048;
        v27 = [v13 type];
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, ignored in LaunchServices, type %lu", &v24, 0x16u);
      }
    }

    v15 = 0;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_handleSnapshotForDomains:(id)a3
{
  v114 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isSilent] & 1) == 0 && self->appTrackingEnabled)
  {
    v103 = 1;
    v102 = 0;
    v101 = 0;
    v5 = [v4 domainAttributedBundleId];

    if (v5)
    {
      v6 = [v4 domainAttributedBundleId];
LABEL_5:
      v7 = v6;
      v8 = [v4 processName];
      if ([v8 isEqualToString:@"mDNSResponder"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"terminusd"))
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

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v4, "sourceIdentifier")}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v4;
          v25 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          if (v25 && (v26 = v25, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 BOOLValue], v27, v26, (v28 & 1) != 0))
          {
            v18 = v24;
          }

          else
          {
            v18 = v24;
            v54 = [(__CFString *)v24 remoteAddress];
            v55 = [v54 bytes];

            if (!v55 || !*(v55 + 2) || is_directly_reachable_address(v55))
            {
              v56 = [(__CFString *)v24 remoteAddress];
              v97 = 0;
              v57 = validateSockAddrToString(v56, 0, &v97);
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
          v36 = [v4 domainAttributedBundleId];
          v37 = [v4 attributedEntity];
          *buf = 138478851;
          v105 = v30;
          v106 = 2113;
          v107 = v11;
          v108 = 2113;
          v109 = v7;
          v110 = 2113;
          v111 = v36;
          v112 = 2113;
          v113 = v37;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "Proceed with privacy accounting by attributing to: %{private}@ (implicitIdentity: %{private}@, attributed: %{private}@, domainAttributedBundleId: %{private}@, attributedEntity: %{private}@)", buf, 0x34u);

          v18 = v95;
        }

        v13 = v94;
        if (v94)
        {
          v38 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          v39 = [v38 BOOLValue];

          if (v39)
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
            v42 = [v94 domainDescription];
            *buf = 138477827;
            v105 = v42;
            _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "FlowSnapshot: %{private}@, already processed domain info", buf, 0xCu);

            v18 = v95;
LABEL_49:

            goto LABEL_105;
          }

          v67 = [v94 flowuuid];
          v93 = v67;
          if (v67)
          {
            v18 = v95;
            if ([(FlowAnalyticsEngine *)self isSnapshotFlowUUIDStored:v67])
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

            v71 = [v94 domainName];
            if (v71)
            {
            }

            else
            {
              v79 = [v94 remoteAddress];

              if (!v79)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            v80 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v81 = v80;
              v82 = [v94 domainDescription];
              *buf = 138477827;
              v105 = v82;
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
            v70 = [v94 domainName];
            if (v70)
            {

              goto LABEL_100;
            }

            v84 = [v94 remoteAddress];

            if (v84)
            {
LABEL_100:
              v85 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v81 = v85;
                v82 = [v94 domainDescription];
                *buf = 138477827;
                v105 = v82;
                v83 = "FlowSnapshot: %{private}@, will process domain info for flow closing with nil fuuid";
                goto LABEL_102;
              }

LABEL_103:
              v86 = MEMORY[0x277CCABB0];
              v13 = v94;
              v87 = [v94 remoteAddress];
              v88 = [v86 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v94, v32, v30, v87, v101)}];
              [(NSMutableDictionary *)self->trackedSourceIDs setObject:v88 forKeyedSubscript:v12];

              v18 = v95;
              goto LABEL_104;
            }
          }

          v89 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v90 = v89;
            v91 = [v94 domainDescription];
            *buf = 138477827;
            v105 = v91;
            _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_DEFAULT, "FlowSnapshot: %{private}@, waiting to process domain info until flow closing with nil fuuid", buf, 0xCu);

            v18 = v95;
          }

          goto LABEL_104;
        }

        if (!v18)
        {
          goto LABEL_105;
        }

        v92 = [(__CFString *)v18 flowuuid];
        v63 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
        if ([v63 BOOLValue])
        {

LABEL_72:
          if (-[__CFString snapshotReason](v18, "snapshotReason") == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 BOOLValue], v64, v65))
          {
            [(FlowAnalyticsEngine *)self removeSnapshotFlowUUIDsForSourceKey:v12];
            v13 = 0;
            v66 = v92;
          }

          else
          {
            v13 = 0;
            v66 = v92;
            if (v92)
            {
              [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:v92 forSourceKey:v96];
            }
          }

LABEL_95:

          v18 = v95;
          goto LABEL_105;
        }

        v69 = [(__CFString *)v18 domainName];
        if (v69)
        {
        }

        else
        {
          v72 = [(__CFString *)v18 remoteAddress];

          if (!v72)
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

        v66 = v92;
        if (v92 && [(__CFString *)v18 snapshotReason]!= 2)
        {
          [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:v92 forSourceKey:v96];
        }

        v74 = MEMORY[0x277CCABB0];
        v75 = [(__CFString *)v18 remoteAddress];
        v76 = v18;
        v77 = v75;
        v78 = [v74 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v76, v32, v30, v75, v101)}];
        [(NSMutableDictionary *)self->trackedSourceIDs setObject:v78 forKeyedSubscript:v96];

        v13 = 0;
        goto LABEL_95;
      }

      v13 = v4;
      v14 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
      if (v14 && (v15 = v14, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, (v17 & 1) != 0) || (objc_msgSend(v13, "hasNonLocalDestination") & 1) != 0)
      {
LABEL_16:
        v18 = 0;
        goto LABEL_31;
      }

      v45 = [v13 hasLocalDestination];
      v46 = [v13 remoteAddress];
      v47 = v46;
      if (v45)
      {
        v99 = 0;
        v48 = validateSockAddrToString(v46, 0, &v99);
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
        v59 = [v46 bytes];

        if (v59 && *(v59 + 2) && !is_directly_reachable_address(v59))
        {
          goto LABEL_16;
        }

        v60 = [v13 remoteAddress];
        v98 = 0;
        v61 = validateSockAddrToString(v60, 0, &v98);
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

    v9 = [v4 attributedEntity];

    if (v9)
    {
      if ([v4 attributedEntityIsBundleName])
      {
        v6 = [v4 attributedEntity];
        goto LABEL_5;
      }

      v20 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = v20;
        v22 = [v4 attributedEntity];
        *buf = 138478083;
        v105 = v22;
        v106 = 1024;
        LODWORD(v107) = [v4 attributionReason];
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

- (void)_didReceiveSnapshot:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(FlowAnalyticsEngine *)self _handleSnapshot:v5];
    [(FlowAnalyticsEngine *)self _handleSnapshotForDomains:v5];
    if ([v5 snapshotReason] == 2)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
      [TrackedFlow removeTrackingForKey:v6 fromSnapshot:v5];
LABEL_7:
      v7 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v6];
      v8 = [v7 BOOLValue];

      if ((v8 & 1) == 0)
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
    v5 = v4;
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

- (void)statsManager:(id)a3 thresholdReachedOn:(unsigned int)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v24 = a4;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Threshold reached for interface %d, refresh %@ required", buf, 0x12u);
  }

  if (v9)
  {
    v17 = [MEMORY[0x277CBEAA8] date];
    v18 = self->lastCellularThresholdRefreshTime;
    self->lastCellularThresholdRefreshTime = v17;

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

- (double)_usageFingerprintForBundleName:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:v5 shouldFillMiss:0];
  if (v6)
  {
    v7 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 wifiIN];
      [v9 doubleValue];
      v11 = v10;
      v12 = [v8 wifiOUT];
      [v12 doubleValue];
      v14 = v11 + v13;
      v15 = [v8 wwanIN];
      [v15 doubleValue];
      v17 = v14 + v16;
      v18 = [v8 wwanOUT];
      [v18 doubleValue];
      v20 = v17 + v19;
      v21 = [v8 wiredIN];
      [v21 doubleValue];
      v23 = v20 + v22;
      v24 = [v8 wiredOUT];
      [v24 doubleValue];
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
          v3 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (v3)
          {
            v30 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v31 = 1;
          }

          else
          {
            v31 = 0;
            v30 = &unk_2847EF6C8;
          }
        }

        else
        {
          v31 = 0;
          v30 = &unk_2847EF6C8;
        }

        v34 = 138412546;
        v35 = v5;
        v36 = 2112;
        v37 = v30;
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
      v35 = v5;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Failed to find process for %@", &v34, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_handleApplicationNotificationCompactForBundleName:(id)a3 edgeMode:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "false";
    if (v4)
    {
      v8 = "true";
    }

    v22 = 138412546;
    v23 = v6;
    v24 = 2080;
    v25 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Foreground: %s", &v22, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->appCompactState objectForKey:v6];
  v10 = v9;
  if (!v4 && !v9)
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v6;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Removal when already gone for app: %@", &v22, 0xCu);
    }

    v10 = 0;
    goto LABEL_33;
  }

  if (v4 && v9)
  {
    v12 = procStateLogHandle;
    if (!os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v22 = 138412290;
    v23 = v6;
    v13 = "Analytics Engine: double ON for app: %@";
LABEL_32:
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, &v22, 0xCu);
    goto LABEL_33;
  }

  if (v4)
  {
    v14 = MEMORY[0x277CCABB0];
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:v6];
    v15 = [v14 numberWithDouble:?];

    [(NSMutableDictionary *)self->appCompactState setObject:v15 forKey:v6];
    v16 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Set appCompactState object %@ for key %@", &v22, 0x16u);
    }

    if (self->appTrackingEnabled && v6 && self->endpointTrackingEnabled)
    {
      [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:v6];
    }

    v10 = v15;
  }

  else
  {
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:v6];
    if (v17 != 0.0)
    {
      v18 = v17;
      [v10 doubleValue];
      if (v19 != v18)
      {
        if (self->appTrackingEnabled && self->endpointTrackingEnabled)
        {
          [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:v6];
          [(FlowAnalyticsEngine *)self _archiveAppEndpointsForUserId:gEffectiveUserId bundleName:v6];
        }

        v20 = procStateLogHandle;
        if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v6;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "call _saveAndUnloadSelectState on %@ exiting foreground state", &v22, 0xCu);
        }

        [(FlowAnalyticsEngine *)self _saveAndUnloadSelectState];
      }
    }

    [(NSMutableDictionary *)self->appCompactState removeObjectForKey:v6];
    v12 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v6;
      v13 = "Remove appCompactState key %@";
      goto LABEL_32;
    }
  }

LABEL_33:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleApplicationNotificationStateChangedForBundleName:(id)a3 edgeMode:(BOOL)a4 intervalType:(int)a5
{
  v6 = a4;
  v69 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    if (v6)
    {
      v10 = "true";
    }

    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "State Change for bundle name %@: Foreground: %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = __Block_byref_object_copy__5;
  v67 = __Block_byref_object_dispose__5;
  v68 = [(NSMutableDictionary *)self->appState objectForKey:v8];
  v11 = *(*&buf[8] + 40);
  if (v6)
  {
    if (v11)
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
      {
        *v61 = 138412290;
        v62 = v8;
        v13 = "Analytics Engine: double ON for app: %@";
LABEL_17:
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, v61, 0xCu);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

LABEL_10:
    v14 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:v8 shouldFillMiss:0];
    v56 = v14;
    if (v14)
    {
      v15 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v14];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 wifiIN];
        [v17 doubleValue];
        if (v18 == 0.0)
        {
          v19 = [v16 wifiOUT];
          [v19 doubleValue];
          if (v20 == 0.0)
          {
            v28 = [v16 wwanIN];
            [v28 doubleValue];
            v55 = v28;
            if (v29 == 0.0)
            {
              v53 = [v16 wwanOUT];
              [v53 doubleValue];
              if (v30 == 0.0)
              {
                v52 = [v16 wiredIN];
                [v52 doubleValue];
                if (v31 == 0.0)
                {
                  v51 = [v16 wiredOUT];
                  [v51 doubleValue];
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
        if (v6)
        {
          v33 = [MEMORY[0x277CBEAA8] date];
          aspace = self->aspace;
          v35 = [MEMORY[0x277D6B580] entityName];
          v36 = [(AppAnalytics *)aspace createTemporaryEntityForEntityName:v35];
          v37 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v36;

          if (*(*&buf[8] + 40))
          {
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
            [*(*&buf[8] + 40) setKind:v38];

            v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v40 = v39;
            if (v16)
            {
              v41 = [v16 wifiIN];
            }

            else
            {
              v41 = v39;
            }

            [*(*&buf[8] + 40) setWifiIN_start:v41];
            if (v16)
            {

              v45 = [v16 wifiOUT];
            }

            else
            {
              v45 = v40;
            }

            [*(*&buf[8] + 40) setWifiOUT_start:v45];
            if (v16)
            {

              v46 = [v16 wwanIN];
            }

            else
            {
              v46 = v40;
            }

            [*(*&buf[8] + 40) setWwanIN_start:v46];
            if (v16)
            {

              v47 = [v16 wwanOUT];
            }

            else
            {
              v47 = v40;
            }

            [*(*&buf[8] + 40) setWwanOUT_start:v47];
            if (v16)
            {

              v48 = [v16 wiredIN];
            }

            else
            {
              v48 = v40;
            }

            [*(*&buf[8] + 40) setWiredIN_start:v48];
            if (v16)
            {

              v49 = [v16 wiredOUT];
            }

            else
            {
              v49 = v40;
            }

            [*(*&buf[8] + 40) setWiredOUT_start:v49];
            if (v16)
            {
            }

            [*(*&buf[8] + 40) setTimeStart:v33];
            [(NSMutableDictionary *)self->appState setObject:*(*&buf[8] + 40) forKey:v8];
            if (self->appTrackingEnabled && self->endpointTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:v8];
            }
          }

          else
          {
            v44 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v61 = 138412290;
              v62 = v8;
              _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Failed to allocate SFAppRun entity for %@", v61, 0xCu);
            }
          }
        }

        else
        {
          if (!v21)
          {
            [(NSMutableDictionary *)self->appState removeObjectForKey:v8];
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
          v58 = v8;
          v59 = buf;
          v60 = a5;
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
          v25 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (v25)
          {
            v54 = v25;
            v26 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v27 = 1;
          }

          else
          {
            v54 = 0;
            v27 = 0;
            v26 = &unk_2847EF6C8;
          }
        }

        else
        {
          v27 = 0;
          v26 = &unk_2847EF6C8;
        }

        *v61 = 138412546;
        v62 = v8;
        v63 = 2112;
        v64 = v26;
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
        v62 = v8;
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
    v62 = v8;
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

- (void)processSnapshotForConnectionEstablishment:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 snapshotReason];
  [v4 flowDuration];
  if (v6 < 7.5 || v5 == 2)
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
      v12 = v4;
      v8 = [v12 QUICState];
      v13 = [v12 QUICStateNumber];

      if (v13 > 8)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_21;
  }

  v10 = v4;
  v8 = [v10 TCPState];
  v11 = [v10 TCPStateNumber];

  if ((v11 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_21;
  }

LABEL_12:
  v14 = [v4 attributedEntity];
  v15 = [v4 interfaceWiFi];
  v16 = [v4 interfaceCellular];
  [v4 flowDuration];
  v18 = v17;
  v19 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v20 = @"Other";
    if (v16)
    {
      v20 = @"Cellular";
    }

    *buf = 138413058;
    v32 = v14;
    v35 = 2048;
    v33 = 2112;
    v34 = v8;
    if (v15)
    {
      v20 = @"Wi-Fi";
    }

    v36 = v18;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Found pre-connection establishment stuck flow for %@ [state=%@, duration=%.2fs, interface=%@]", buf, 0x2Au);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{v15, @"kNotificationFlowScrutinizerIsWiFiFlow"}];
  v30[0] = v21;
  v29[1] = @"kNotificationFlowScrutinizerIsCellularFlow";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  v30[1] = v22;
  v29[2] = @"kNotificationFlowScrutinizerFlowDuration";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v24 = v23;
  v29[3] = @"kNotificationFlowScrutinizerAttributedEntity";
  v25 = @"unknown";
  if (v14)
  {
    v25 = v14;
  }

  v30[2] = v23;
  v30[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 postNotificationName:@"kNotificationFlowScrutinizerPreConnectionStuckFlow" object:self userInfo:v26];

LABEL_21:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainUserAppTrackingChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserAppTrackingChanged delegate: %@", buf, 0xCu);
  }

  v6 = [(AnalyticsEngineCore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__FlowAnalyticsEngine_networkDomainUserAppTrackingChanged___block_invoke;
  v9[3] = &unk_27898A7D0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainUserEndpointTrackingChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserEndpointTrackingChanged delegate: %@", buf, 0xCu);
  }

  v6 = [(AnalyticsEngineCore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__FlowAnalyticsEngine_networkDomainUserEndpointTrackingChanged___block_invoke;
  v9[3] = &unk_27898A7D0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)networkDomainResolution:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "networkDomainResolution delegate: %@", buf, 0xCu);
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"ResolvingEffectiveUserId"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"ResolvingBundleName"];
  v10 = [v6 objectForKeyedSubscript:@"ResolvingEndpoints"];
  v11 = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__FlowAnalyticsEngine_networkDomainResolution___block_invoke;
  v15[3] = &unk_27898A758;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v11, v15);

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

- (void)sendPowerLogReport:(id)a3 isStart:(BOOL)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "SDM power log report %@", &v7, 0xCu);
  }

  PLLogRegisteredEvent();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)postCAEvent:(id)a3 withName:(id)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)_generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6
{
  v19 = a5;
  v9 = a6;
  if (a3 - 18 < 2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    setApparentTime(v14);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v15 = +[FlowScrutinizer sharedInstance];
    v16 = [v15 getLedgerState:a3 == 19];

    [v11 setObject:v16 forKeyedSubscript:@"FlowLedgerDetails"];
    v17 = [MEMORY[0x277CBEAA8] date];
    (*(v9 + 2))(v9, 0, "FlowLedger details", v17, "collected on demand", 0, v11);
  }

  else
  {
    if (a3 != 15)
    {
      if (a3 == 12)
      {
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        cellThroughputAdviser = self->cellThroughputAdviser;
        if (cellThroughputAdviser)
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v13 = [(CellThroughputAdviser *)cellThroughputAdviser getStateAt:?];
          [v11 setObject:v13 forKeyedSubscript:@"CellThroughputDetails"];
        }

        else
        {
          [v10 setObject:@"No adviser configured" forKeyedSubscript:@"CellThroughputDetails"];
        }

        v16 = [MEMORY[0x277CBEAA8] date];
        (*(v9 + 2))(v9, 0, "CellThroughputAdvice  details", v16, "collected on demand", 0, v11);
      }

      else
      {
        v11 = [MEMORY[0x277CBEAA8] date];
        v16 = [MEMORY[0x277CBEAC0] dictionary];
        (*(v9 + 2))(v9, 0, "FAE unrecognised managed event request", v11, "collected on demand", 0, v16);
      }

      goto LABEL_12;
    }

    v11 = [MEMORY[0x277CBEB38] dictionary];
    v18 = +[WiFiThroughputAdviser sharedInstance];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v16 = [v18 getStateAt:?];

    [v11 setObject:v16 forKeyedSubscript:@"WiFiThroughputDetails"];
    v17 = [MEMORY[0x277CBEAA8] date];
    (*(v9 + 2))(v9, 0, "WiFiThroughputAdvice  details", v17, "collected on demand", 0, v11);
  }

LABEL_12:
}

- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FlowAnalyticsEngine_generateInfoForId_context_uuid_completionBlock___block_invoke;
  block[3] = &unk_27898AFB8;
  v18 = a3;
  v19 = a4;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

- (void)_newCoreMediaAssetDownloadEvent:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38 = self;
  if (![(FlowScrutinizer *)self->flowScrutinizer assetDownloadsScrutinized])
  {
    goto LABEL_46;
  }

  v36 = [v4 userInfo];
  [v36 keyEnumerator];
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
  v33 = v4;
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

      v10 = [v36 objectForKeyedSubscript:v9];
      v11 = [v10 eventKey];
      v12 = [v10 eventData];
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
      v15 = [v11 isEqualToString:v14];

      if (v15)
      {
        if (v13 && (([v13 isEqualToString:@"mediaserverd"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"mediaplaybackd")))
        {
          v28 = *(&v38->super.super.isa + v32);
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          [v28 noteCoreMediaAssetDownloadEvent:2 downloadUUID:0 byProcess:v13 onBehalfOf:0 duration:0.0 at:v29];
        }

        goto LABEL_43;
      }

      if ((*(v12 + 4) & 4) == 0)
      {
        goto LABEL_16;
      }

      v16 = *(v12 + 40);
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

      if ((~*(v12 + 40) & 6) != 0)
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
      v37 = v11;
      v18 = [v10 eventQualifierStringForKey:@"1"];
      v19 = [v10 processId];
      if (v38->assetDownloadProcessId != v19)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke;
        block[3] = &unk_27898AFE0;
        block[4] = v38;
        block[5] = v19;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      v20 = [v10 eventQualifiers];
      v21 = [v20 objectForKeyedSubscript:@"2"];

      if (v21 && [v21 length] == 16)
      {
        v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v21, "bytes")}];
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v12 + 4);
      if (v23)
      {
        v24 = *(v12 + 24);
      }

      else
      {

        v24 = 0;
        v22 = 0;
        v23 = *(v12 + 4);
      }

      v25 = 86400.0;
      if ((v23 & 2) != 0)
      {
        v25 = *(v12 + 32) / 1000.0;
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

        v27 = [(AnalyticsEngineCore *)v38 queue];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke_405;
        v39[3] = &unk_27898C558;
        v39[4] = v38;
        v43 = v24;
        v40 = v22;
        v41 = v13;
        v42 = v18;
        v44 = v25;
        dispatch_async(v27, v39);
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

  v4 = v33;
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

- (void)_noteSizeableBackgroundTransferEvent:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  if (!self->cellThroughputAdviser)
  {
    goto LABEL_19;
  }

  v3 = [a3 userInfo];
  [v3 keyEnumerator];
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

      v11 = [v3 objectForKeyedSubscript:v7];
      v12 = [v11 eventData];
      v13 = [v11 eventQualifierStringForKey:@"1"];
      v14 = v13;
      if ((~*(v12 + 4) & 7) != 0)
      {
      }

      else if (v13)
      {
        v15 = v3;
        v16 = *(v12 + 24);
        v17 = *(v12 + 32);
        v18 = *(v12 + 40);
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

        v3 = v15;
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

- (void)_newExpectedTransfer:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = self;
  if ([(FlowScrutinizer *)self->flowScrutinizer expectedTransfersScrutinized])
  {
    v5 = [v4 userInfo];
    [v5 keyEnumerator];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v44 = 0u;
    v33 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v33)
    {
      v26 = v4;
      v6 = 0;
      v32 = *v42;
      v27 = v5;
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

          v9 = [v5 objectForKeyedSubscript:v6];
          v10 = [v9 eventQualifierStringForKey:@"3"];
          v11 = [v9 eventQualifierStringForKey:@"7"];
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
          v13 = [v9 eventQualifiers];
          v14 = [v13 objectForKeyedSubscript:@"8"];

          v15 = [v9 eventQualifiers];
          v16 = [v15 objectForKeyedSubscript:@"9"];

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

            v24 = [(AnalyticsEngineCore *)v28 queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__FlowAnalyticsEngine__newExpectedTransfer___block_invoke;
            block[3] = &unk_27898C5A8;
            block[4] = v28;
            v36 = v39;
            v37 = v29 & 1;
            v38 = v30 & 1;
            v35 = v12;
            dispatch_async(v24, block);

            v5 = v27;
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

      v4 = v26;
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

- (void)_removeAllInfoForProcess:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138477827;
    v14 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "_removeAllInfoForProcess %{private}@", &v13, 0xCu);
  }

  if (v4)
  {
    v6 = [v4 name];
    v7 = [v4 extensionName];
    if (v7)
    {
      v8 = 4;
    }

    else
    {
      v9 = [v4 bundleName];
      if (v9)
      {
        v8 = 3;
      }

      else
      {
        v10 = [v4 procName];
        v8 = 2 * (v10 != 0);
      }
    }

    [(FlowAnalyticsEngine *)self _removeInfoFromWorkspaceForProcess:v4];
    v11 = analyticsLogHandle;
    if (v6)
    {
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Removing local cache for %@", &v13, 0xCu);
      }

      [(FlowAnalyticsEngine *)self _removeFromProcCache:v6 ofType:v8];
      [(NSMutableDictionary *)self->appState removeObjectForKey:v6];
      [(NSMutableDictionary *)self->appCompactState removeObjectForKey:v6];
    }

    else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Trying to removing local cache for %@ with nil name", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeInfoFromWorkspaceForProcess:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v24 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Removing Process entity %{private}@ from workspace", buf, 0xCu);
  }

  if ([v4 isApp])
  {
    v6 = v4;
    v7 = [v6 hasTypicalUsage];
    v8 = [v7 count];

    if (v8)
    {
      aspace = self->aspace;
      v10 = [v6 hasTypicalUsage];
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
      v12 = [v10 objectsAtIndexes:v11];
      [(AppAnalytics *)aspace removeEntities:v12];
    }

    v13 = self->aspace;
    v14 = [v6 hasCalendarUsage];
    v15 = [v14 allObjects];
    [(AppAnalytics *)v13 removeEntities:v15];
  }

  [v4 setHintLiveUsage:0];
  if (v4 && [v4 isApp])
  {
    v16 = [v4 bundleName];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", gEffectiveUserId, @"bundleName", v16];
    v18 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v17 wspaceReset:0];
    v19 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v24 = v18;
      v25 = 2113;
      v26 = v16;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld ADU records for %{private}@ via reset data", buf, 0x16u);
    }
  }

  pspace = self->pspace;
  v21 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  [(ProcessAnalytics *)pspace removeEntities:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_processFetchForName:(id)a3 bundle:(id)a4 extension:(id)a5 shouldFillMiss:(BOOL)a6
{
  v6 = a6;
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__5;
  v60 = __Block_byref_object_dispose__5;
  v61 = 0;
  if (v12)
  {
    objc_opt_class();
    if (!((v11 == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 1;
        v14 = 4;
        v15 = MEMORY[0x277D6B5C8];
        v16 = v12;
        goto LABEL_13;
      }
    }

    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v63 = v12;
      v64 = 2113;
      v65 = v11;
      v18 = "_processFetchForName: extensionName %{private}@ requested with bundleID %{private}@, validation error";
      v19 = v17;
      v20 = 22;
LABEL_35:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 1;
      v14 = 3;
      v15 = MEMORY[0x277D6B5C0];
      v16 = v11;
      goto LABEL_13;
    }

    v33 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 138477827;
    v63 = v11;
    v18 = "_processFetchForName: bundleID %{private}@, validation error";
LABEL_34:
    v19 = v33;
    v20 = 12;
    goto LABEL_35;
  }

  if (!v10)
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
    v63 = v10;
    v18 = "_processFetchForName: processName %{private}@, validation error";
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 2;
  v15 = MEMORY[0x277D6B5D0];
  v16 = v10;
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
    v46 = v12;
    v52 = v46;
    v29 = v11;
    v53 = v29;
    v55 = &v56;
    v30 = v10;
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

    else if (v6)
    {
      if (v48)
      {
        p_pspace = &self->aspace;
      }

      v35 = [(ProcessAnalytics *)*p_pspace createEntity];
      v36 = v57[5];
      v57[5] = v35;

      v37 = v57[5];
      if (v37)
      {
        [v37 setProcName:v21];
        [v57[5] setBundleName:v29];
        [v57[5] setExtensionName:v47];
        v38 = [MEMORY[0x277CBEAA8] date];
        [v57[5] setFirstTimeStamp:v38];

        v39 = [MEMORY[0x277CBEAA8] distantPast];
        [v57[5] setTimeStamp:v39];

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

- (id)_has1stPartyImpliedBundleNameBehavior:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (_has1stPartyImpliedBundleNameBehavior__onceToken == -1)
  {
    if (v3)
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

- (BOOL)_processNameIsValid:(id)a3
{
  if (a3)
  {
    return [a3 isEqualToString:&stru_2847966D8] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_fetchFromProcCacheWithName:(id)a3 ofType:(unsigned int)a4
{
  v65[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6 || ![(AnalyticsWorkspace *)self->super.workspace persistent])
  {
    v8 = 0;
    goto LABEL_42;
  }

  p_processViaBundleNameCache = &self->processViaBundleNameCache;
  if (!self->processViaBundleNameCache || !self->processViaProcNameCache || !self->processViaExtensionNameCache)
  {
    v52 = a4;
    v53 = v6;
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
    v16 = [MEMORY[0x277D6B548] entityName];
    v17 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v18 = [v15 entityForName:v16 inManagedObjectContext:v17];

    v19 = objc_alloc_init(MEMORY[0x277CBE428]);
    v50 = v18;
    [v19 setEntity:v18];
    [v19 setResultType:2];
    [v19 setAllocationType:1];
    v20 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v20 setName:@"objectID"];
    v21 = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    [v20 setExpression:v21];

    [v20 setExpressionResultType:2000];
    v22 = *MEMORY[0x277D6B5C0];
    v65[0] = *MEMORY[0x277D6B5D0];
    v65[1] = v22;
    v65[2] = *MEMORY[0x277D6B5C8];
    v65[3] = v20;
    v48 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];
    [v19 setPropertiesToFetch:v23];

    v24 = self;
    v25 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v59 = 0;
    v49 = v19;
    v26 = [v25 executeFetchRequest:v19 error:&v59];
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
              v37 = v24->processViaExtensionNameCache;
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
              v37 = v24->processViaProcNameCache;
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

    self = v24;
    [(AnalyticsWorkspace *)v24->super.workspace reset];

    objc_autoreleasePoolPop(context);
    v6 = v53;
    a4 = v52;
    p_processViaBundleNameCache = v54;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      goto LABEL_31;
    }

    if (a4 == 4)
    {
      v40 = 104;
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (a4 == 1)
  {
    v43 = [*p_processViaBundleNameCache objectForKeyedSubscript:v6];
    if (v43 || ([(NSMutableDictionary *)self->processViaExtensionNameCache objectForKeyedSubscript:v6], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v41 = v43;
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (a4 != 2)
  {
LABEL_33:
    v42 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109379;
      v61 = a4;
      v62 = 2113;
      v63 = v6;
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
  v41 = [*p_processViaBundleNameCache objectForKeyedSubscript:v6];
  if (v41)
  {
LABEL_40:
    v44 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v8 = [v44 objectWithID:v41];

    goto LABEL_41;
  }

LABEL_36:
  v8 = 0;
LABEL_41:

LABEL_42:
  v45 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_insertProcCache:(id)a3 ofType:(unsigned int)a4 underName:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (a4 > 4)
    {
      v11 = @"CacheTypeUnknown";
    }

    else
    {
      v11 = off_27898CA88[a4];
    }

    *v21 = 138412803;
    *&v21[4] = v11;
    *&v21[12] = 2113;
    *&v21[14] = v9;
    *&v21[22] = 2112;
    *&v21[24] = v8;
    v12 = v10;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "_insertProcCache %@ %{private}@ with %@", v21, 0x20u);
  }

  if (v8 && v9)
  {
    switch(a4)
    {
      case 2u:
        v13 = [v8 objectID];
        v14 = 112;
        goto LABEL_16;
      case 4u:
        v13 = [v8 objectID];
        v14 = 104;
        goto LABEL_16;
      case 3u:
        v13 = [v8 objectID];
        v14 = 96;
LABEL_16:
        [*(&self->super.super.isa + v14) setObject:v13 forKeyedSubscript:{v9, *v21, *&v21[16], *&v21[24]}];
        goto LABEL_17;
    }

    v18 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = [v8 objectID];
      *v21 = 67109635;
      *&v21[4] = a4;
      *&v21[8] = 2113;
      *&v21[10] = v9;
      *&v21[18] = 2112;
      *&v21[20] = v20;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Attempting to insert into invalid cache type %u, name %{private}@ for process %@", v21, 0x1Cu);
    }
  }

  else
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = v15;
      v16 = [v8 objectID];
      *v21 = 138412546;
      *&v21[4] = v9;
      *&v21[12] = 2112;
      *&v21[14] = v16;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Attempting to insert either no-name or no-process in cache: %@, name: %@", v21, 0x16u);

LABEL_17:
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeFromProcCache:(id)a3 ofType:(unsigned int)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (a4 > 4)
    {
      v8 = @"CacheTypeUnknown";
    }

    else
    {
      v8 = off_27898CA88[a4];
    }

    *v17 = 138412547;
    *&v17[4] = v8;
    *&v17[12] = 2113;
    *&v17[14] = v6;
    v9 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "_removeFromProcCache %@ %{private}@", v17, 0x16u);
  }

  if (v6)
  {
    switch(a4)
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
        [*(&self->super.super.isa + v10) removeObjectForKey:{v6, *v17, *&v17[16], v18}];
        goto LABEL_16;
    }

    v13 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = @"CacheTypeUnknown";
      if (a4 == 1)
      {
        v14 = @"CacheTypeBestMatch";
      }

      if (!a4)
      {
        v14 = @"CacheTypeUndefined";
      }

      v15 = v14;
      *v17 = 138478083;
      *&v17[4] = v6;
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

- (BOOL)_isLiveUsageinScope:(id)a3 forTime:(id)a4
{
  v6 = a4;
  v7 = [a3 timeStamp];
  [v7 timeIntervalSinceDate:v6];
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

- (BOOL)_isLiveUsageInRollingWindow:(id)a3 forTime:(id)a4
{
  v6 = a4;
  v7 = [a3 timeStamp];
  [v7 timeIntervalSinceDate:v6];
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

- (id)_liveUsageFetchForProcess:(id)a3
{
  v113 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v80 = [v8 isApp];
  v81 = v8;
  v82 = [v8 hintLiveUsage];
  v86 = self;
  if (v82)
  {
    v4 = [v82 tag];
    if (v4)
    {
      v9 = [v82 tag];
      ctShim = self->ctShim;
      if (ctShim)
      {
        v3 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
        if (v3)
        {
          v5 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          v11 = 1;
        }

        else
        {
          v11 = 0;
          v5 = &unk_2847EF6C8;
        }
      }

      else
      {
        v11 = 0;
        v5 = &unk_2847EF6C8;
      }

      v6 = [v9 isEqualToNumber:v5];
      if (v11)
      {
      }

      if (ctShim)
      {

        if (v6)
        {
LABEL_12:
          v12 = [v81 hintLiveUsage];
          goto LABEL_33;
        }
      }

      else
      {

        if (v6)
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

        v6 = *(*(&v98 + 1) + 8 * i);
        v16 = [v6 tag];
        v17 = v86->ctShim;
        if (v17 && ([(CoreTelephonyShim *)v86->ctShim currentSubscriberTag], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v4 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
          v18 = 1;
          v19 = v4;
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
          v12 = v6;
          [v81 setHintLiveUsage:v12];
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

  v12 = 0;
LABEL_32:

LABEL_33:
  v83 = [MEMORY[0x277CBEAA8] date];
  if (v12)
  {
    v21 = analyticsLogHandle;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v81 name];
      v23 = v86->ctShim;
      if (v23)
      {
        v6 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
        if (v6)
        {
          v24 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
          v25 = 1;
        }

        else
        {
          v25 = 0;
          v24 = &unk_2847EF6C8;
        }
      }

      else
      {
        v25 = 0;
        v24 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v105 = v80;
      v106 = 2112;
      v107 = v22;
      v108 = 2048;
      v109 = v12;
      v110 = 2112;
      v111 = v24;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "found LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
      if (v25)
      {
      }

      if (v23)
      {
      }
    }

    if (!v80 || [(FlowAnalyticsEngine *)v86 _isLiveUsageinScope:v12 forTime:v83])
    {
      goto LABEL_131;
    }

    v43 = analyticsLogHandle;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = [v81 name];
      v45 = v86->ctShim;
      if (v45)
      {
        v6 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
        if (v6)
        {
          v46 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
          v47 = 1;
        }

        else
        {
          v47 = 0;
          v46 = &unk_2847EF6C8;
        }
      }

      else
      {
        v47 = 0;
        v46 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v105 = 1;
      v106 = 2112;
      v107 = v44;
      v108 = 2048;
      v109 = v12;
      v110 = 2112;
      v111 = v46;
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

  if (!v80)
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
        v31 = v86->ctShim;
        if (v31)
        {
          v32 = [(CoreTelephonyShim *)v31 currentSubscriberTag];
          if (v32)
          {
            v33 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
            v34 = [v30 isEqualToNumber:v33];
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

        v36 = [v29 kind];
        v37 = [v36 intValue] == 0;

        if (v37)
        {
          v12 = v29;
          [v81 setHintLiveUsage:v12];
          v38 = analyticsLogHandle;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = [v81 name];
            v40 = v86->ctShim;
            if (v40)
            {
              v36 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
              if (v36)
              {
                v41 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
                v42 = 1;
              }

              else
              {
                v42 = 0;
                v41 = &unk_2847EF6C8;
              }
            }

            else
            {
              v42 = 0;
              v41 = &unk_2847EF6C8;
            }

            *buf = 67109890;
            v105 = 0;
            v106 = 2112;
            v107 = v39;
            v108 = 2048;
            v109 = v12;
            v110 = 2112;
            v111 = v41;
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
      v53 = v86->ctShim;
      if (v53)
      {
        v54 = [(CoreTelephonyShim *)v53 currentSubscriberTag];
        if (v54)
        {
          v12 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
          v55 = [v52 isEqualToNumber:v12];
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

      v57 = [v51 kind];
      v58 = [v57 intValue] == 0;

      if (!v58 && [(FlowAnalyticsEngine *)v86 _isLiveUsageinScope:v51 forTime:v83])
      {
        v59 = analyticsLogHandle;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = [v81 name];
          v61 = v86->ctShim;
          if (v61)
          {
            v12 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
            if (v12)
            {
              v62 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
              v63 = 1;
            }

            else
            {
              v63 = 0;
              v62 = &unk_2847EF6C8;
            }
          }

          else
          {
            v63 = 0;
            v62 = &unk_2847EF6C8;
          }

          *buf = 67109890;
          v105 = 1;
          v106 = 2112;
          v107 = v60;
          v108 = 2048;
          v109 = 0;
          v110 = 2112;
          v111 = v62;
          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "established LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
          if (v63)
          {
          }

          if (v61)
          {
          }
        }

        v12 = v51;
        [v81 setHintLiveUsage:v12];
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
  v12 = 0;
LABEL_117:

  if (!v12)
  {
    v12 = [(UsageAnalytics *)v86->uspace createEntity];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:v80];
    [v12 setKind:v64];

    v65 = [MEMORY[0x277CBEAA8] date];
    [v12 setTimeStamp:v65];
    v66 = v86->ctShim;
    if (v66)
    {
      v67 = [(CoreTelephonyShim *)v66 currentSubscriberTag];
      if (v67)
      {
        v68 = [(CoreTelephonyShim *)v86->ctShim currentSubscriberTag];
        [v12 setTag:v68];
      }

      else
      {
        [v12 setTag:&unk_2847EF6C8];
      }
    }

    else
    {
      [v12 setTag:&unk_2847EF6C8];
    }

    [v81 setHintLiveUsage:v12];
    v69 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v70 = v69;
      v71 = [v81 name];
      v72 = [v12 tag];
      *buf = 67109890;
      v105 = v80;
      v106 = 2112;
      v107 = v71;
      v108 = 2048;
      v109 = v12;
      v110 = 2112;
      v111 = v72;
      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "creating LU record (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
    }

    [v81 addHasLiveUsageObject:v12];
    v73 = [v12 tag];
    v74 = [(FlowAnalyticsEngine *)v86 _liveUsageCountForProcess:v81 subscriberTag:v73];

    v75 = [v81 hasLiveUsage];
    v76 = [v75 count] == 1;

    if (v76)
    {
      [v81 setFirstTimeStamp:v65];
    }

    else if (v74 > v86->usageWindowUnitsCount)
    {
      v77 = [(AnalyticsEngineCore *)v86 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke;
      block[3] = &unk_27898A328;
      block[4] = v86;
      v88 = v81;
      v89 = v12;
      dispatch_async(v77, block);
    }
  }

LABEL_131:

  v78 = *MEMORY[0x277D85DE8];

  return v12;
}

void __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) tag];
  [v1 _liveUsagePackForProcess:v2 subscriberTag:v3];
}

- (unint64_t)_liveUsageCountForProcess:(id)a3 subscriberTag:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 hasLiveUsage];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) tag];
          v14 = [v13 isEqualToNumber:v6];

          v10 += v14;
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (void)_liveUsagePackForProcess:(id)a3 subscriberTag:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v54 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->usageWindowUnitsCount];
    v55 = [MEMORY[0x277CBEAA8] date];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = [v6 name];
      *buf = 138412802;
      v65 = v10;
      v66 = 2048;
      v67 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v6 subscriberTag:v7];
      v68 = 2112;
      v69 = v7;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "packing LU records for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v11 = [v6 hasLiveUsage];
    v12 = [v11 countByEnumeratingWithState:&v60 objects:v73 count:16];
    v53 = v6;
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v61;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v60 + 1) + 8 * i);
          v18 = [v17 tag];
          v19 = [v18 isEqualToNumber:v7];

          if (v19)
          {
            v20 = [v17 kind];
            v21 = [v20 intValue];

            if (v21)
            {
              if (![(FlowAnalyticsEngine *)self _isLiveUsageInRollingWindow:v17 forTime:v55])
              {
                [v54 addObject:v17];
              }
            }

            else
            {
              v22 = v17;

              v14 = v22;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v60 objects:v73 count:16];
      }

      while (v13);

      v6 = v53;
      v23 = v54;
      if (v14)
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
      v14 = 0;
      goto LABEL_42;
    }

    v14 = [v23 firstObject];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [v14 setKind:v26];

    [v23 removeObject:v14];
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      v29 = [v6 name];
      v30 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v6 subscriberTag:v7];
      *buf = 138412802;
      v65 = v29;
      v66 = 2048;
      v67 = v30;
      v68 = 2112;
      v69 = v7;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "packing LU records, with promotion, for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    if (!v14)
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
            [(FlowAnalyticsEngine *)self _applyCountsTo:v14 fromLiveUsage:v36 mustReset:0];
            v37 = [v14 timeStamp];
            [v37 timeIntervalSinceReferenceDate];
            v39 = v38;
            v40 = [v36 timeStamp];
            [v40 timeIntervalSinceReferenceDate];
            v42 = v41;

            if (v39 > v42)
            {
              v43 = [v36 timeStamp];
              [v14 setTimeStamp:v43];
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
        v6 = v53;
        v46 = [v53 name];
        v47 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v53 subscriberTag:v7];
        *buf = 138413058;
        v65 = v46;
        v66 = 2112;
        v67 = v7;
        v68 = 2048;
        v69 = v47;
        v70 = 2112;
        v71 = v14;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "packing LU records for %@, subscriber tag: %@, residual count: %lu, mono contents: %@", buf, 0x2Au);
      }

      else
      {
        v6 = v53;
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
      v50 = [v6 name];
      v51 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v6 subscriberTag:v7];
      *buf = 138412802;
      v65 = v50;
      v66 = 2112;
      v67 = v7;
      v68 = 2048;
      v69 = v51;
      _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "packing LU records for %@, nothing left to do, subscriber tag: %@, residual count: %lu", buf, 0x20u);
    }

    goto LABEL_46;
  }

  v14 = [MEMORY[0x277CBEAA8] date];
  if (!_liveUsagePackForProcess_subscriberTag__lastLoggedTime || ([_liveUsagePackForProcess_subscriberTag__lastLoggedTime timeIntervalSinceDate:v14], v24 < -180.0))
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v65 = _liveUsagePackForProcess_subscriberTag__errCount;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "_liveUsagePackForProcess: encountered unexpected nil tag (%llu previous errors)", buf, 0xCu);
    }

    objc_storeStrong(&_liveUsagePackForProcess_subscriberTag__lastLoggedTime, v14);
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

  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  if (v4)
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
    v16 = v4;
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
  v5 = [(AnalyticsEngineCore *)self queue];
  v6 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:v5];

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

- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)a3 forPredicate:(id)a4
{
  v5 = a4;
  v6 = functionOnKeyDescriptor();
  v7 = objc_alloc_init(MEMORY[0x277D6B510]);
  [v7 addAggregateProperty:v6];
  LOBYTE(v13) = 1;
  v8 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:MEMORY[0x277CBEBF8] fetchRequestProperties:v7 predicate:v5 sortDescriptors:0 limit:0 offset:0 includeObjectID:v13];

  v9 = [v8 firstObject];
  v10 = [v9 objectForKeyedSubscript:@"total"];
  v11 = [v10 integerValue];

  return v11;
}

- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)a3 toDate:(id)a4
{
  v83[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = gEffectiveUserId;
  v8 = a4;
  v9 = a3;
  v74 = [v6 predicateWithFormat:@"effectiveUserId == %u", v7];
  v66 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:?];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, v9, v8];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainClassification == %u", 2];
  v14 = MEMORY[0x277CCA920];
  v83[0] = v10;
  v83[1] = v11;
  v72 = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = MEMORY[0x277CCA920];
  v82[0] = v10;
  v82[1] = v12;
  v71 = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = MEMORY[0x277CCA920];
  v81[0] = v10;
  v81[1] = v13;
  v70 = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v16];
  v58 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v19];
  v57 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v22];
  v24 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v10];
  v69 = v16;
  v25 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v16];
  v67 = v22;
  v26 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v22];
  v68 = v19;
  v27 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v19];
  v73 = v10;
  v28 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v10];
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

- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)a3 toDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SystemProperties sharedInstance];
  v9 = [v8 internalBuild];

  if (v9)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
    v12 = [MEMORY[0x277CCA920] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, v6, v7];
    v13 = countOfKeyDescriptor();
    v14 = objc_alloc_init(MEMORY[0x277D6B510]);
    [v14 addGroupByProperty:@"bundleName"];
    [v14 addAggregateProperty:v13];
    LOBYTE(v21) = 1;
    v15 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:&unk_2847EEB68 fetchRequestProperties:v14 predicate:v12 sortDescriptors:0 limit:0 offset:0 includeObjectID:v21];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke;
    v22[3] = &unk_27898C620;
    v16 = v12;
    v23 = v16;
    v17 = v10;
    v24 = v17;
    v18 = v11;
    v25 = v18;
    v26 = self;
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

- (void)_performAppPeriodicTasksWithReply:(id)a3
{
  v8 = a3;
  v4 = [(FlowAnalyticsEngine *)self _clearUninstalledAppEntries];
  if (v8)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    v8[2](v8, v7, 0);
  }
}

- (void)performAppPeriodicTasksComplete:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = analyticsLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
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
    v13 = v5;
    v8 = "Periodic app tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppPeriodicActivityWithReply:(id)a3
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppPeriodicTasksWithReply:a3];
  }
}

- (void)_applyCountsTo:(id)a3 fromLiveUsage:(id)a4 mustReset:(BOOL)a5
{
  if (a5)
  {
    v6 = a4;
    v7 = a3;
    v8 = [v6 wwanIN];
    [v7 setWwanIN:v8];

    v9 = [v6 wwanIN_exp];
    [v7 setWwanIN_exp:v9];

    v10 = [v6 wwanOUT];
    [v7 setWwanOUT:v10];

    v11 = [v6 wwanOUT_exp];
    [v7 setWwanOUT_exp:v11];

    v12 = [v6 wifiIN];
    [v7 setWifiIN:v12];

    v13 = [v6 wifiIN_exp];
    [v7 setWifiIN_exp:v13];

    v14 = [v6 wifiOUT];
    [v7 setWifiOUT:v14];

    v15 = [v6 wifiOUT_exp];
    [v7 setWifiOUT_exp:v15];

    v16 = [v6 wiredIN];
    [v7 setWiredIN:v16];

    v17 = [v6 wiredIN_exp];
    [v7 setWiredIN_exp:v17];

    v18 = [v6 wiredOUT];
    [v7 setWiredOUT:v18];

    v19 = [v6 wiredOUT_exp];
    [v7 setWiredOUT_exp:v19];

    v20 = [v6 btIN];
    [v7 setBtIN:v20];

    v21 = [v6 btIN_exp];
    [v7 setBtIN_exp:v21];

    v22 = [v6 btOUT];
    [v7 setBtOUT:v22];

    v23 = [v6 btOUT_exp];
    [v7 setBtOUT_exp:v23];

    v24 = [v6 xIN];
    [v7 setXIN:v24];

    v25 = [v6 xIN_exp];
    [v7 setXIN_exp:v25];

    v26 = [v6 xOUT];
    [v7 setXOUT:v26];

    v27 = [v6 xOUT_exp];
    [v7 setXOUT_exp:v27];

    v28 = [v6 allFlows];
    [v7 setAllFlows:v28];

    v183 = [v6 jumboFlows];

    [v7 setJumboFlows:v183];
  }

  else
  {
    v29 = MEMORY[0x277CCABB0];
    v30 = a4;
    v31 = a3;
    v32 = [v30 wwanIN];
    [v32 doubleValue];
    v34 = v33;
    v35 = [v31 wwanIN];
    [v35 doubleValue];
    v37 = [v29 numberWithDouble:v34 + v36];
    [v31 setWwanIN:v37];

    v38 = MEMORY[0x277CCABB0];
    v39 = [v30 wwanIN_exp];
    [v39 doubleValue];
    v41 = v40;
    v42 = [v31 wwanIN_exp];
    [v42 doubleValue];
    v44 = [v38 numberWithDouble:v41 + v43];
    [v31 setWwanIN_exp:v44];

    v45 = MEMORY[0x277CCABB0];
    v46 = [v30 wwanOUT];
    [v46 doubleValue];
    v48 = v47;
    v49 = [v31 wwanOUT];
    [v49 doubleValue];
    v51 = [v45 numberWithDouble:v48 + v50];
    [v31 setWwanOUT:v51];

    v52 = MEMORY[0x277CCABB0];
    v53 = [v30 wwanOUT_exp];
    [v53 doubleValue];
    v55 = v54;
    v56 = [v31 wwanOUT_exp];
    [v56 doubleValue];
    v58 = [v52 numberWithDouble:v55 + v57];
    [v31 setWwanOUT_exp:v58];

    v59 = MEMORY[0x277CCABB0];
    v60 = [v30 wifiIN];
    [v60 doubleValue];
    v62 = v61;
    v63 = [v31 wifiIN];
    [v63 doubleValue];
    v65 = [v59 numberWithDouble:v62 + v64];
    [v31 setWifiIN:v65];

    v66 = MEMORY[0x277CCABB0];
    v67 = [v30 wifiIN_exp];
    [v67 doubleValue];
    v69 = v68;
    v70 = [v31 wifiIN_exp];
    [v70 doubleValue];
    v72 = [v66 numberWithDouble:v69 + v71];
    [v31 setWifiIN_exp:v72];

    v73 = MEMORY[0x277CCABB0];
    v74 = [v30 wifiOUT];
    [v74 doubleValue];
    v76 = v75;
    v77 = [v31 wifiOUT];
    [v77 doubleValue];
    v79 = [v73 numberWithDouble:v76 + v78];
    [v31 setWifiOUT:v79];

    v80 = MEMORY[0x277CCABB0];
    v81 = [v30 wifiOUT_exp];
    [v81 doubleValue];
    v83 = v82;
    v84 = [v31 wifiOUT_exp];
    [v84 doubleValue];
    v86 = [v80 numberWithDouble:v83 + v85];
    [v31 setWifiOUT_exp:v86];

    v87 = MEMORY[0x277CCABB0];
    v88 = [v30 wiredIN];
    [v88 doubleValue];
    v90 = v89;
    v91 = [v31 wiredIN];
    [v91 doubleValue];
    v93 = [v87 numberWithDouble:v90 + v92];
    [v31 setWiredIN:v93];

    v94 = MEMORY[0x277CCABB0];
    v95 = [v30 wiredIN_exp];
    [v95 doubleValue];
    v97 = v96;
    v98 = [v31 wiredIN_exp];
    [v98 doubleValue];
    v100 = [v94 numberWithDouble:v97 + v99];
    [v31 setWiredIN_exp:v100];

    v101 = MEMORY[0x277CCABB0];
    v102 = [v30 wiredOUT];
    [v102 doubleValue];
    v104 = v103;
    v105 = [v31 wiredOUT];
    [v105 doubleValue];
    v107 = [v101 numberWithDouble:v104 + v106];
    [v31 setWiredOUT:v107];

    v108 = MEMORY[0x277CCABB0];
    v109 = [v30 wiredOUT_exp];
    [v109 doubleValue];
    v111 = v110;
    v112 = [v31 wiredOUT_exp];
    [v112 doubleValue];
    v114 = [v108 numberWithDouble:v111 + v113];
    [v31 setWiredOUT_exp:v114];

    v115 = MEMORY[0x277CCABB0];
    v116 = [v30 btIN];
    [v116 doubleValue];
    v118 = v117;
    v119 = [v31 btIN];
    [v119 doubleValue];
    v121 = [v115 numberWithDouble:v118 + v120];
    [v31 setBtIN:v121];

    v122 = MEMORY[0x277CCABB0];
    v123 = [v30 btIN_exp];
    [v123 doubleValue];
    v125 = v124;
    v126 = [v31 btIN_exp];
    [v126 doubleValue];
    v128 = [v122 numberWithDouble:v125 + v127];
    [v31 setBtIN_exp:v128];

    v129 = MEMORY[0x277CCABB0];
    v130 = [v30 btOUT];
    [v130 doubleValue];
    v132 = v131;
    v133 = [v31 btOUT];
    [v133 doubleValue];
    v135 = [v129 numberWithDouble:v132 + v134];
    [v31 setBtOUT:v135];

    v136 = MEMORY[0x277CCABB0];
    v137 = [v30 btOUT_exp];
    [v137 doubleValue];
    v139 = v138;
    v140 = [v31 btOUT_exp];
    [v140 doubleValue];
    v142 = [v136 numberWithDouble:v139 + v141];
    [v31 setBtOUT_exp:v142];

    v143 = MEMORY[0x277CCABB0];
    v144 = [v30 xIN];
    [v144 doubleValue];
    v146 = v145;
    v147 = [v31 xIN];
    [v147 doubleValue];
    v149 = [v143 numberWithDouble:v146 + v148];
    [v31 setXIN:v149];

    v150 = MEMORY[0x277CCABB0];
    v151 = [v30 xIN_exp];
    [v151 doubleValue];
    v153 = v152;
    v154 = [v31 xIN_exp];
    [v154 doubleValue];
    v156 = [v150 numberWithDouble:v153 + v155];
    [v31 setXIN_exp:v156];

    v157 = MEMORY[0x277CCABB0];
    v158 = [v30 xOUT];
    [v158 doubleValue];
    v160 = v159;
    v161 = [v31 xOUT];
    [v161 doubleValue];
    v163 = [v157 numberWithDouble:v160 + v162];
    [v31 setXOUT:v163];

    v164 = MEMORY[0x277CCABB0];
    v165 = [v30 xOUT_exp];
    [v165 doubleValue];
    v167 = v166;
    v168 = [v31 xOUT_exp];
    [v168 doubleValue];
    v170 = [v164 numberWithDouble:v167 + v169];
    [v31 setXOUT_exp:v170];

    v171 = MEMORY[0x277CCABB0];
    v172 = [v30 allFlows];
    [v172 doubleValue];
    v174 = v173;
    v175 = [v31 allFlows];
    [v175 doubleValue];
    v177 = [v171 numberWithDouble:v174 + v176];
    [v31 setAllFlows:v177];

    v178 = MEMORY[0x277CCABB0];
    v183 = [v30 jumboFlows];

    [v183 doubleValue];
    v180 = v179;
    v7 = [v31 jumboFlows];
    [v7 doubleValue];
    v182 = [v178 numberWithDouble:v180 + v181];
    [v31 setJumboFlows:v182];
  }
}

- (void)_updateLiveUsage:(id)a3 wifiIn:(int64_t)a4 wifiOut:(int64_t)a5 cellIn:(int64_t)a6 cellOut:(int64_t)a7 wiredIn:(int64_t)a8 wiredOut:(int64_t)a9 btIn:(int64_t)a10 btOut:(int64_t)a11 xIn:(int64_t)a12 xOut:(int64_t)a13 isJumboFlow:(BOOL)a14 isExpensive:(BOOL)a15 closing:(BOOL)a16
{
  v21 = a16;
  v22 = a14;
  v23 = a13;
  v24 = a3;
  v118 = v24;
  if (a7 | a6)
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = [v24 wwanIN];
    [v26 doubleValue];
    v27 = a6;
    v29 = [v25 numberWithDouble:v28 + a6];
    [v118 setWwanIN:v29];

    v21 = a16;
    v30 = MEMORY[0x277CCABB0];
    v31 = [v118 wwanOUT];
    [v31 doubleValue];
    v32 = a7;
    v34 = [v30 numberWithDouble:v33 + a7];
    [v118 setWwanOUT:v34];

    v22 = a14;
    v23 = a13;
    v24 = v118;
    if (a15)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [v118 wwanIN_exp];
      [v36 doubleValue];
      v38 = [v35 numberWithDouble:v37 + v27];
      [v118 setWwanIN_exp:v38];

      v39 = MEMORY[0x277CCABB0];
      v40 = [v118 wwanOUT_exp];
      [v40 doubleValue];
      v42 = [v39 numberWithDouble:v41 + v32];
      [v118 setWwanOUT_exp:v42];

      v24 = v118;
    }
  }

  if (a5 | a4)
  {
    v43 = MEMORY[0x277CCABB0];
    v44 = [v118 wifiIN];
    [v44 doubleValue];
    v45 = a4;
    v47 = [v43 numberWithDouble:v46 + a4];
    [v118 setWifiIN:v47];

    v48 = MEMORY[0x277CCABB0];
    v49 = [v118 wifiOUT];
    [v49 doubleValue];
    v50 = a5;
    v52 = [v48 numberWithDouble:v51 + a5];
    [v118 setWifiOUT:v52];

    v24 = v118;
    if (a15)
    {
      v53 = MEMORY[0x277CCABB0];
      v54 = [v118 wifiIN_exp];
      [v54 doubleValue];
      v56 = [v53 numberWithDouble:v55 + v45];
      [v118 setWifiIN_exp:v56];

      v57 = MEMORY[0x277CCABB0];
      v58 = [v118 wifiOUT_exp];
      [v58 doubleValue];
      v60 = [v57 numberWithDouble:v59 + v50];
      [v118 setWifiOUT_exp:v60];

      v24 = v118;
    }
  }

  if (a9 | a8)
  {
    v61 = MEMORY[0x277CCABB0];
    v62 = [v118 wiredIN];
    [v62 doubleValue];
    v63 = a8;
    v65 = [v61 numberWithDouble:v64 + a8];
    [v118 setWiredIN:v65];

    v66 = MEMORY[0x277CCABB0];
    v67 = [v118 wiredOUT];
    [v67 doubleValue];
    v69 = [v66 numberWithDouble:v68 + a9];
    [v118 setWiredOUT:v69];

    v24 = v118;
    if (a15)
    {
      v70 = MEMORY[0x277CCABB0];
      v71 = [v118 wiredIN_exp];
      [v71 doubleValue];
      v73 = [v70 numberWithDouble:v72 + v63];
      [v118 setWiredIN_exp:v73];

      v74 = MEMORY[0x277CCABB0];
      v75 = [v118 wiredOUT_exp];
      [v75 doubleValue];
      v77 = [v74 numberWithDouble:v76 + a9];
      [v118 setWiredOUT_exp:v77];

      v24 = v118;
    }
  }

  if (__PAIR128__(a11, a10) != 0)
  {
    v78 = MEMORY[0x277CCABB0];
    v79 = [v118 btIN];
    [v79 doubleValue];
    v81 = [v78 numberWithDouble:v80 + a10];
    [v118 setBtIN:v81];

    v82 = MEMORY[0x277CCABB0];
    v83 = [v118 btOUT];
    [v83 doubleValue];
    v85 = [v82 numberWithDouble:v84 + a11];
    [v118 setBtOUT:v85];

    v24 = v118;
    if (a15)
    {
      v86 = MEMORY[0x277CCABB0];
      v87 = [v118 btIN_exp];
      [v87 doubleValue];
      v89 = [v86 numberWithDouble:v88 + a10];
      [v118 setBtIN_exp:v89];

      v90 = MEMORY[0x277CCABB0];
      v91 = [v118 btOUT_exp];
      [v91 doubleValue];
      v93 = [v90 numberWithDouble:v92 + a11];
      [v118 setBtOUT_exp:v93];

      v24 = v118;
    }
  }

  if (v23 | a12)
  {
    v94 = MEMORY[0x277CCABB0];
    v95 = [v118 xIN];
    [v95 doubleValue];
    v97 = [v94 numberWithDouble:v96 + a12];
    [v118 setXIN:v97];

    v98 = MEMORY[0x277CCABB0];
    v99 = [v118 xOUT];
    [v99 doubleValue];
    v101 = [v98 numberWithDouble:v100 + v23];
    [v118 setXOUT:v101];

    v24 = v118;
    if (a15)
    {
      v102 = MEMORY[0x277CCABB0];
      v103 = [v118 xIN_exp];
      [v103 doubleValue];
      v105 = [v102 numberWithDouble:v104 + a12];
      [v118 setXIN_exp:v105];

      v106 = MEMORY[0x277CCABB0];
      v107 = [v118 xOUT_exp];
      [v107 doubleValue];
      v109 = [v106 numberWithDouble:v108 + v23];
      [v118 setXOUT_exp:v109];

      v24 = v118;
    }
  }

  if (v21)
  {
    v110 = MEMORY[0x277CCABB0];
    v111 = [v118 allFlows];
    [v111 doubleValue];
    v113 = [v110 numberWithDouble:v112 + 1.0];
    [v118 setAllFlows:v113];

    v24 = v118;
    if (v22)
    {
      v114 = MEMORY[0x277CCABB0];
      v115 = [v118 jumboFlows];
      [v115 doubleValue];
      v117 = [v114 numberWithDouble:v116 + 1.0];
      [v118 setJumboFlows:v117];

      v24 = v118;
    }
  }
}

- (void)_compactUsageForApp:(id)a3 intervalType:(int)a4 givenLastRun:(id)a5
{
  v210 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v185 = a5;
  v184 = [v8 bundleName];
  v9 = [v8 hasTypicalUsage];
  v10 = [v9 count];

  if (!v10)
  {
    aspace = self->aspace;
    v12 = [MEMORY[0x277D6B588] entityName];
    v13 = [(AppAnalytics *)aspace createEntityForEntityName:v12];

    if (!v13)
    {
      v181 = analyticsLogHandle;
      v68 = v185;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v209 = v184;
        _os_log_impl(&dword_23255B000, v181, OS_LOG_TYPE_ERROR, "Can't create AppTypicalUsage for %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v13 setIntervalType:v14];

    [v8 insertObject:v13 inHasTypicalUsageAtIndex:0];
  }

  v15 = [v8 hasTypicalUsage];
  v16 = a4;
  v17 = [v15 objectAtIndex:a4];

  v18 = [v17 firstTimeStamp];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEAA8] date];
    [v17 setFirstTimeStamp:v19];
  }

  v20 = [v17 wifiSampleCount];
  [v20 doubleValue];
  v202 = v21;

  v22 = [v17 wwanSampleCount];
  [v22 doubleValue];
  v199 = v23;

  v24 = [v17 wiredSampleCount];
  [v24 doubleValue];
  v200 = v25;

  v26 = [v17 wifiIN_mean];
  [v26 doubleValue];
  v28 = v27;

  v29 = [v17 wifiIN_M2];
  [v29 doubleValue];
  v188 = v30;

  v31 = [v17 wifiIN];
  [v31 doubleValue];
  v189 = v32;

  v33 = [v17 wifiOUT_mean];
  [v33 doubleValue];
  v35 = v34;

  v36 = [v17 wifiOUT_M2];
  [v36 doubleValue];
  v201 = v37;

  v38 = [v17 wifiOUT];
  [v38 doubleValue];
  v190 = v39;

  v40 = [v17 wwanIN_mean];
  [v40 doubleValue];
  v42 = v41;

  v43 = [v17 wwanIN_M2];
  [v43 doubleValue];
  v191 = v44;

  v45 = [v17 wwanIN];
  [v45 doubleValue];
  v192 = v46;

  v47 = [v17 wwanOUT_mean];
  [v47 doubleValue];
  v49 = v48;

  v50 = [v17 wwanOUT_M2];
  [v50 doubleValue];
  v193 = v51;

  v52 = [v17 wwanOUT];
  [v52 doubleValue];
  v194 = v53;

  v54 = [v17 wiredIN_mean];
  [v54 doubleValue];
  v56 = v55;

  v57 = [v17 wiredIN_M2];
  [v57 doubleValue];
  v195 = v58;

  v59 = [v17 wiredIN];
  [v59 doubleValue];
  v196 = v60;

  v61 = [v17 wiredOUT_mean];
  [v61 doubleValue];
  v63 = v62;

  v64 = [v17 wiredOUT_M2];
  [v64 doubleValue];
  v197 = v65;

  v66 = [v17 wiredOUT];
  [v66 doubleValue];
  v198 = v67;

  v68 = v185;
  v183 = v8;
  if (v185)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{v185, 0}];
  }

  else
  {
    [v8 hasAppRun];
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
      v76 = [v75 kind];
      v77 = [v76 unsignedIntegerValue];

      if (v77 != v16)
      {
        continue;
      }

      v78 = [v75 wifiIN_end];
      [v78 doubleValue];
      v80 = v79;
      v81 = [v75 wifiIN_start];
      [v81 doubleValue];
      if (v80 != v82)
      {

LABEL_19:
        v89 = [v75 wifiIN_end];
        [v89 doubleValue];
        v91 = v90;
        v92 = [v75 wifiIN_start];
        [v92 doubleValue];
        v94 = v91 - v93;

        v95 = v94 - v28;
        v28 = v28 + (v94 - v28) / (v202 + 1.0);
        v188 = v188 + v95 * (v94 - v28);
        v189 = v189 + v94;
        v96 = [v75 wifiOUT_end];
        [v96 doubleValue];
        v98 = v97;
        v99 = [v75 wifiOUT_start];
        [v99 doubleValue];
        v101 = v98 - v100;

        v190 = v190 + v101;
        v102 = v101 - v35;
        v35 = v35 + (v101 - v35) / (v202 + 1.0);
        v201 = v201 + v102 * (v101 - v35);
        v202 = v202 + 1.0;
        v72 = 1;
        goto LABEL_20;
      }

      v83 = [v75 wifiOUT_end];
      [v83 doubleValue];
      v85 = v84;
      v86 = [v75 wifiOUT_start];
      [v86 doubleValue];
      v88 = v87;

      if (v85 != v88)
      {
        goto LABEL_19;
      }

LABEL_20:
      v103 = [v75 wwanIN_end];
      [v103 doubleValue];
      v105 = v104;
      v106 = [v75 wwanIN_start];
      [v106 doubleValue];
      if (v105 == v107)
      {
        v108 = [v75 wwanOUT_end];
        [v108 doubleValue];
        v110 = v109;
        v111 = [v75 wwanOUT_start];
        [v111 doubleValue];
        v113 = v112;

        if (v110 == v113)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      v114 = [v75 wwanIN_end];
      [v114 doubleValue];
      v116 = v115;
      v117 = [v75 wwanIN_start];
      [v117 doubleValue];
      v119 = v116 - v118;

      v120 = v119 - v42;
      v42 = v42 + (v119 - v42) / (v199 + 1.0);
      v191 = v191 + v120 * (v119 - v42);
      v192 = v192 + v119;
      v121 = [v75 wwanOUT_end];
      [v121 doubleValue];
      v123 = v122;
      v124 = [v75 wwanOUT_start];
      [v124 doubleValue];
      v126 = v123 - v125;

      v127 = v126 - v49;
      v199 = v199 + 1.0;
      v49 = v49 + (v126 - v49) / v199;
      v193 = v193 + v127 * (v126 - v49);
      v194 = v194 + v126;
      LOBYTE(v186) = 1;
LABEL_25:
      v128 = [v75 wiredIN_end];
      [v128 doubleValue];
      v130 = v129;
      v131 = [v75 wiredIN_start];
      [v131 doubleValue];
      if (v130 != v132)
      {

LABEL_29:
        v139 = [v75 wiredIN_end];
        [v139 doubleValue];
        v141 = v140;
        v142 = [v75 wiredIN_start];
        [v142 doubleValue];
        v144 = v141 - v143;

        v145 = v144 - v56;
        v56 = v56 + (v144 - v56) / (v200 + 1.0);
        v195 = v195 + v145 * (v144 - v56);
        v196 = v196 + v144;
        v146 = [v75 wiredOUT_end];
        [v146 doubleValue];
        v148 = v147;
        v149 = [v75 wiredOUT_start];
        [v149 doubleValue];
        v151 = v148 - v150;

        v152 = v151 - v63;
        v200 = v200 + 1.0;
        v63 = v63 + (v151 - v63) / v200;
        v197 = v197 + v152 * (v151 - v63);
        v198 = v198 + v151;
        BYTE4(v186) = 1;
        continue;
      }

      v133 = [v75 wiredOUT_end];
      [v133 doubleValue];
      v135 = v134;
      v136 = [v75 wiredOUT_start];
      [v136 doubleValue];
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

    v154 = [MEMORY[0x277CCABB0] numberWithDouble:v188 / v202];
    [v182 setWifiIN_var:v154];

    v155 = [MEMORY[0x277CCABB0] numberWithDouble:v188];
    [v182 setWifiIN_M2:v155];

    v156 = [MEMORY[0x277CCABB0] numberWithDouble:v189];
    [v182 setWifiIN:v156];

    v157 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    [v182 setWifiOUT_mean:v157];

    v158 = [MEMORY[0x277CCABB0] numberWithDouble:v201 / v202];
    [v182 setWifiOUT_var:v158];

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

    v163 = [MEMORY[0x277CCABB0] numberWithDouble:v191 / v199];
    [v17 setWwanIN_var:v163];

    v164 = [MEMORY[0x277CCABB0] numberWithDouble:v191];
    [v17 setWwanIN_M2:v164];

    v165 = [MEMORY[0x277CCABB0] numberWithDouble:v192];
    [v17 setWwanIN:v165];

    v166 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
    [v17 setWwanOUT_mean:v166];

    v167 = [MEMORY[0x277CCABB0] numberWithDouble:v193 / v199];
    [v17 setWwanOUT_var:v167];

    v168 = [MEMORY[0x277CCABB0] numberWithDouble:v193];
    [v17 setWwanOUT_M2:v168];

    v169 = [MEMORY[0x277CCABB0] numberWithDouble:v194];
    [v17 setWwanOUT:v169];

    v170 = [MEMORY[0x277CCABB0] numberWithDouble:v199];
    [v17 setWwanSampleCount:v170];
  }

  v68 = v185;
  if ((v186 & 0x100000000) != 0)
  {
    v171 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
    [v17 setWiredIN_mean:v171];

    v172 = [MEMORY[0x277CCABB0] numberWithDouble:v195 / v200];
    [v17 setWiredIN_var:v172];

    v173 = [MEMORY[0x277CCABB0] numberWithDouble:v195];
    [v17 setWiredIN_M2:v173];

    v174 = [MEMORY[0x277CCABB0] numberWithDouble:v196];
    [v17 setWiredIN:v174];

    v175 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v17 setWiredOUT_mean:v175];

    v176 = [MEMORY[0x277CCABB0] numberWithDouble:v197 / v200];
    [v17 setWiredOUT_var:v176];

    v177 = [MEMORY[0x277CCABB0] numberWithDouble:v197];
    [v17 setWiredOUT_M2:v177];

    v178 = [MEMORY[0x277CCABB0] numberWithDouble:v198];
    [v17 setWiredOUT:v178];

    v69 = [MEMORY[0x277CCABB0] numberWithDouble:v200];
    [v17 setWiredSampleCount:v69];
    goto LABEL_39;
  }

LABEL_40:
  v179 = [MEMORY[0x277CBEAA8] date];
  [v17 setTimeStamp:v179];

  v8 = v183;
LABEL_41:

  v180 = *MEMORY[0x277D85DE8];
}

- (void)workspaceSaveWithCallback:(id)a3
{
  v4 = a3;
  v5 = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke;
  v8[3] = &unk_27898C648;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(v5, v7);
}

uint64_t __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) save];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)workspaceSaveWithCallback:(id)a3
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 workspaceSaveWithCallback:a3];
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

+ (void)checkForegroundStateForProcessWithUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v7 = a5;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _checkForegroundStateForProcessWithUUID:a3 replyQueue:a4 reply:v7];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__FlowAnalyticsEngine_checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = v7;
    dispatch_async(a4, block);
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

- (void)_checkForegroundStateForProcessWithUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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
    v2 = [sharedInstance_1 queue];
    dispatch_async(v2, &__block_literal_global_612);
  }
}

+ (void)recentUsageForApps:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v7 = a5;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _recentUsageForApps:a3 replyQueue:a4 reply:v7];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__FlowAnalyticsEngine_recentUsageForApps_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = v7;
    dispatch_async(a4, block);
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

- (void)_recentUsageForApps:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

+ (void)appsWithFlowsPassingTest:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v7 = a5;
  if (a3 && sharedInstance_1)
  {
    [sharedInstance_1 _appsWithFlowsPassingTest:a3 replyQueue:a4 reply:v7];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__FlowAnalyticsEngine_appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = v7;
    dispatch_async(a4, block);
  }
}

- (void)_appsWithFlowsPassingTest:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(AnalyticsEngineCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
  v12[3] = &unk_27898C6E8;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke(uint64_t a1)
{
  v2 = [TrackedFlow ownersOfFlowsPassingTest:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (void)identifierForUUID:(id)a3 replyQueue:(id)a4 reply:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (sharedInstance_1)
  {
    v10 = [sharedInstance_1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C710;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    dispatch_async(v10, block);

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

    if (v8)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke_615;
      v14[3] = &unk_27898B678;
      v16 = v9;
      v11 = v11;
      v15 = v11;
      dispatch_async(v8, v14);
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0, v11);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_trafficEnvelopeToTier:(double)a3
{
  v3 = a3;
  if (a3 < 0x1000)
  {
    return @"tier1";
  }

  if (v3 < 0x10000)
  {
    return @"tier2";
  }

  if (v3 < 0x100000)
  {
    return @"tier3";
  }

  if (v3 >> 24)
  {
    return @"tier5";
  }

  return @"tier4";
}

- (void)_calendarUsageForApp:(id)a3 givenLastRun:(id)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 timeStart];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v68 = v9;
  v10 = gmtime(&v68);
  v11 = v10->tm_min / 15 + 4 * v10->tm_hour + 1;
  v12 = LOWORD(v10->tm_wday) + 1;
  v13 = [v5 hintCalendarUsage];
  if (!v13)
  {
LABEL_8:
    v22 = MEMORY[0x277CCAC30];
    v23 = [v5 bundleName];
    v24 = [v22 predicateWithFormat:@"%K == %@ AND %K == %hu AND %K == %hu", @"hasApp.bundleName", v23, @"timeOfDaySlot", v11, @"dayOfWeek", v12];

    v25 = [(ObjectAnalytics *)self->calspace fetchEntitiesFreeForm:v24 sortDesc:0];
    if ([v25 count] == 1)
    {
      v20 = [v25 objectAtIndex:0];
    }

    else
    {
      aspace = self->aspace;
      v27 = [MEMORY[0x277D6B560] entityName];
      v20 = [(AppAnalytics *)aspace createEntityForEntityName:v27];

      if (v20)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [v20 setTimeOfDaySlot:v28];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
        [v20 setDayOfWeek:v29];

        v30 = [v6 timeStart];
        [v20 setFirstTimeStamp:v30];

        [v5 addHasCalendarUsageObject:v20];
      }
    }

    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v5 hintCalendarUsage];
  v16 = [v15 timeOfDaySlot];
  if ([v16 unsignedShortValue] != v11)
  {

    goto LABEL_8;
  }

  v17 = [v5 hintCalendarUsage];
  v18 = [v17 dayOfWeek];
  v19 = [v18 unsignedShortValue];

  if (v19 != v12)
  {
    goto LABEL_8;
  }

  v20 = [v5 hintCalendarUsage];
  if (!v20)
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
  v66 = [v6 wifiIN_end];
  [v66 doubleValue];
  v32 = v31;
  v33 = [v6 wifiIN_start];
  [v33 doubleValue];
  v35 = v32 - v34;
  v36 = [v6 wifiOUT_end];
  [v36 doubleValue];
  v38 = v35 + v37;
  v39 = [v6 wifiOUT_start];
  [v39 doubleValue];
  v41 = v38 - v40;
  v42 = [v6 wwanIN_end];
  [v42 doubleValue];
  v44 = v41 + v43;
  [v6 wwanIN_start];
  v46 = v45 = v5;
  [v46 doubleValue];
  v48 = v44 - v47;
  v49 = [v6 wwanOUT_end];
  [v49 doubleValue];
  v51 = v48 + v50;
  v52 = [v6 wwanOUT_start];
  [v52 doubleValue];
  v54 = v51 - v53;

  v5 = v45;
  v55 = [(FlowAnalyticsEngine *)self _trafficEnvelopeToTier:v54];
  v56 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v57 = v56;
    v58 = [v5 bundleName];
    *buf = 138413314;
    v70 = v58;
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

  v59 = [v20 valueForKey:v55];
  v60 = [v59 unsignedIntValue] + 1;

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
  [v20 setValue:v61 forKey:v55];

  v62 = [v6 timeStart];
  [v20 setTimeStamp:v62];

  [v5 setHintCalendarUsage:v20];
LABEL_16:

  v63 = *MEMORY[0x277D85DE8];
}

+ (id)appBundleIdentifierFromAuditToken:(id *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v3 = *&a3->var0[4];
  *buf = *a3->var0;
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

+ (id)appBundleIdentifierFromBundleIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v3 allowPlaceholder:0 error:&v12];
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
        v14 = v3;
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

+ (BOOL)appBundleIdentifierIsWebBrowser:(id)a3
{
  result = sharedInstance_1;
  if (sharedInstance_1)
  {
    return [sharedInstance_1 _appBundleIdentifierIsWebBrowser:a3];
  }

  return result;
}

- (BOOL)_appBundleIdentifierIsWebBrowser:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->webBrowserBundleCache objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 BOOLValue];
      v24 = v7;
LABEL_19:

      goto LABEL_20;
    }

    v23 = 0;
    v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:0 error:&v23];
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
        [(NSMutableDictionary *)self->webBrowserBundleCache setObject:v19 forKeyedSubscript:v4];
      }

      else
      {
        v24 = 0;
        v20 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v26 = v4;
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
        v26 = v4;
        v27 = 2112;
        v28 = v11;
        v14 = "Error creating LSBundleRecord from bundle identifier (%{private}@), %@";
        v15 = v13;
        v16 = 22;
LABEL_17:
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    v7 = v24;
    goto LABEL_19;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Nil bundleIdentifier", buf, 2u);
  }

  v7 = 0;
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
  return v7 & 1;
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

- (void)handleLaunchServicesApplicationUnregistration:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = a3;
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

- (void)endpointMaintenanceOnClose:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 attributedEntity];
  v6 = [v4 remoteAddress];
  v14 = 0;
  v7 = validateSockAddrToString(v6, 0, &v14);
  v8 = v14;
  if (v7)
  {
    v9 = [v6 bytes];
    if (([v4 hasNonLocalDestination] & 1) != 0 || *(v9 + 2) && (is_directly_reachable_address(v9) & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
      v11 = [v4 isTracker];
      [(FlowAnalyticsEngine *)self _updateAppEndpoints:v10 type:v11 userId:gEffectiveUserId bundleName:v5 flowClosing:1];
      [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:v5];
    }
  }

  else
  {
    v12 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "No remote endpoint extracted from %@ for %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_appEndpointsInProcess:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEAA8] date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v3 hasAppEndpoint];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [v10 effectiveUserId];
      if (v11 == gEffectiveUserId)
      {
        v12 = [v10 firstTimeStamp];
        v13 = isDateWithinScope(v4, v12, 86400.0);

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v14 = v10;

    if (v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = [(ObjectAnalytics *)self->epspace createEntity];
  [v14 setEffectiveUserId:gEffectiveUserId];
  v15 = [MEMORY[0x277CBEAA8] date];
  [v14 setFirstTimeStamp:v15];

  [v3 addHasAppEndpointObject:v14];
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
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

- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)a3
{
  v10 = a3;
  v4 = [(FlowAnalyticsEngine *)self _clearStaleAppEndpointRecords];
  v5 = [(FlowAnalyticsEngine *)self _submitAppEndpointRecordInfoAnalytics];
  if (v10)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"endpointRecordsDeleted", v8, @"endpointRecordAnalyticsSubmitted", 0}];

    v10[2](v10, v9, 0);
  }
}

- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = domainTrackingLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
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
    v13 = v5;
    v8 = "Periodic app endpoint tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)a3
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppEndpointTrackingPeriodicTasksWithReply:a3];
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

- (void)_reportDomainTrackingDropFor:(id)a3 withCause:(unint64_t)a4 detail:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (a4 <= 0xA && ((1 << a4) & 0x7AE) != 0)
  {
    if (v7)
    {
      v9 = +[NetDomainsHandler sharedInstance];
      v10 = [v9 bundleNameImplies1stOr2ndParty:v7];

      if (v10)
      {
        v11 = v7;
      }

      else
      {
        v12 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138478339;
          v17 = v7;
          v18 = 2048;
          v19 = a4;
          v20 = 2113;
          v21 = v8;
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
      v17 = v7;
      v18 = 2048;
      v19 = a4;
      v20 = 2113;
      v21 = v8;
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

- (void)_evalDomainTrackingDropOf:(id)a3
{
  v4 = a3;
  if (self->appTrackingEnabled && AnalyticsIsEventUsed())
  {
    v5 = [v4 domainAttributedBundleId];
    if (v5)
    {
      [v4 domainAttributedBundleId];
    }

    else
    {
      [v4 attributedEntity];
    }
    v6 = ;

    v37 = 1;
    v36 = 0;
    v35 = 0;
    v7 = [v4 processName];
    if ([v7 isEqualToString:@"mDNSResponder"])
    {

LABEL_9:
      v9 = self;
      v10 = v6;
      v11 = 6;
LABEL_10:
      [(FlowAnalyticsEngine *)v9 _reportDomainTrackingDropFor:v10 withCause:v11 detail:v4];
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
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:0 withCause:1 detail:v4];
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    if ([v6 hasPrefix:@"terminusd"])
    {
      v9 = self;
      v10 = v6;
      v11 = 8;
      goto LABEL_10;
    }

    v14 = [v4 attributedEntity];
    if (v14)
    {
      v15 = v14;
      v16 = [v4 attributedEntityIsBundleName];

      if ((v16 & 1) == 0)
      {
        v9 = self;
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
        v20 = self;
        v21 = v6;
        v22 = 7;
      }

      else
      {
        if (v37)
        {
          goto LABEL_11;
        }

        v20 = self;
        v21 = v6;
        v22 = 9;
      }

      [(FlowAnalyticsEngine *)v20 _reportDomainTrackingDropFor:v21 withCause:v22 detail:v4];
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

    if ([v4 isSilent])
    {
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:4 detail:v4];
      goto LABEL_12;
    }

    v23 = [v4 domainName];

    if (v23)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v4;
      v25 = [v24 remoteAddress];
      v26 = [v24 flowuuid];
      v27 = [v24 hasLocalDestination];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = 0;
        goto LABEL_45;
      }

      v29 = v4;
      v25 = [v29 remoteAddress];
      v26 = [v29 flowuuid];
      v30 = [v25 bytes];
      if (!v30 || !*(v30 + 2))
      {
        v28 = 0;
LABEL_42:

        if (v25)
        {
          if (!v28)
          {
            v33 = 0;
            v31 = validateSockAddrToString(v25, 0, &v33);
            v32 = v33;
            if (v26 && !v31)
            {
              [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:3 detail:v4];
            }

            goto LABEL_12;
          }

          [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:5 detail:v4];

          goto LABEL_46;
        }

LABEL_45:
        [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:2 detail:v4];
LABEL_46:

        goto LABEL_12;
      }

      v27 = is_directly_reachable_address(v30);
    }

    v28 = v27;
    goto LABEL_42;
  }

LABEL_13:
}

- (void)storeSnapshotFlowUUID:(id)a3 forSourceKey:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    goto LABEL_17;
  }

  v9 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:v7];
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

    [v9 addObject:v6];
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v25 = 138412546;
      *&v25[4] = v6;
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
    [v13 addObject:v6];

    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v25 = 138412546;
      *&v25[4] = v6;
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
    v23 = [&unk_2847EF6F8 stringValue];
    [v22 triggerAutoBugCaptureCaseForType:@"ExcessiveConcurrentConnections" subType:0 privateSubtypeContext:0 detectedProcess:@"symptomsd" events:0 thresholdValuesString:v23];
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeSnapshotFlowUUIDsForSourceKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:v4];
    if (v5)
    {
      [(NSMutableDictionary *)self->snapshotFlowUUIDs setObject:0 forKeyedSubscript:v4];
      v6 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        snapshotFlowUUIDs = self->snapshotFlowUUIDs;
        v8 = v6;
        v9 = [(NSMutableDictionary *)snapshotFlowUUIDs count];
        v10 = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
        v11 = [v10 componentsJoinedByString:{@", "}];
        v13 = 138413058;
        v14 = v5;
        v15 = 2112;
        v16 = v4;
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

- (BOOL)isSnapshotFlowUUIDStored:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
            objc_enumerationMutation(v5);
          }

          v12 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:*(*(&v19 + 1) + 8 * v10)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 containsObject:v4])
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
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
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

- (BOOL)domainInfoProcessingForSnapshot:(id)a3 process:(id)a4 attributedName:(id)a5 remoteAddress:(id)a6 isWebBrowser:(BOOL)a7
{
  v7 = a7;
  v122[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 domainOwner];
  v16 = &stru_2847966D8;
  v94 = v13;
  if (v15)
  {
    v16 = [v11 domainOwner];
  }

  v93 = [v11 snapshotType];
  v17 = [v11 sourceIdentifier];
  v86 = [v11 isNonAppInitiated];
  if (v86)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v91 = v18;
  v19 = [v11 isTracker];
  v20 = v19;
  if (v19)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v22 = [v11 domainName];

  v90 = v14;
  if (v22)
  {
    v84 = v17;
    v23 = [v11 domainName];
    v24 = [v23 hasSuffix:@"."];

    v25 = [v11 domainName];
    if (v24)
    {
      v26 = [v11 domainName];
      v27 = -[__CFString substringToIndex:](v25, "substringToIndex:", [v26 length] - 1);

      v25 = v27;
    }

    if (v20)
    {
      v28 = 1;
      v92 = 1;
      if (!v25)
      {
        goto LABEL_78;
      }

LABEL_46:
      v45 = [v11 domainTrackerContext];
      v46 = &stru_2847966D8;
      if (v45)
      {
        v47 = [v11 domainTrackerContext];
        if ([NetworkDomainsUtility isValidDomain:v47])
        {
          v46 = [v11 domainTrackerContext];
        }
      }

      v48 = [v11 processName];
      if (v46)
      {
        v49 = [(__CFString *)v46 length];
        v50 = 0;
        v51 = @"Unknown";
        if (!v49 || !v48)
        {
          goto LABEL_57;
        }

        if ([(__CFString *)v48 length])
        {
          if (([(__CFString *)v48 isEqualToString:@"com.apple.WebKit.Networking"]& 1) != 0)
          {
            v50 = 2;
            v51 = @"Verified";
          }

          else
          {
            if ([(__CFString *)v48 isEqualToString:@"MobileSafari"])
            {
              v78 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412803;
                v97 = v48;
                v98 = 2113;
                v99 = v46;
                v100 = 2113;
                v101 = v94;
                _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_ERROR, "Process is %@ with context %{private}@ for %{private}@, triggering an ABC case", buf, 0x20u);
              }

              v79 = +[NetDomainsHandler sharedInstance];
              [v79 triggerAutoBugCaptureCaseForType:@"ProcessMobileSafariWithContext" subType:0 privateSubtypeContext:v46 detectedProcess:v48 events:0 thresholdValuesString:0];
            }

            v50 = 1;
            v51 = @"Unverified";
          }

LABEL_57:
          v83 = v51;
          v85 = v48;
          v52 = gEffectiveUserId;
          v53 = [v12 bundleName];
          HIDWORD(v80) = v91;
          LOWORD(v80) = v50;
          v54 = [(FlowAnalyticsEngine *)self _appDomainUsageBy:v52 bundleName:v53 forDomain:v25 domainOwner:v16 domainType:v92 domainClassification:v28 context:v46 contextVerificationType:v80 initiatedType:?];

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

          v82 = v12;
          v55 = [MEMORY[0x277CBEAA8] date];
          v56 = [v11 snapshotReasonString];
          v57 = @"AppInitiated";
          if (v86)
          {
            v57 = @"NonAppInitiated";
          }

          v87 = v57;
          v58 = [v54 timeStamp];

          if (v58)
          {
            v59 = [v54 timeStamp];
            [v55 timeIntervalSinceDate:v59];
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

                  v71 = v46;
                  v72 = v55;
                  v73 = v16;
                  v74 = gEffectiveUserId;
                  log = v69;
                  v75 = [v54 hits];
                  *buf = 138415619;
                  v97 = v70;
                  v98 = 2112;
                  v99 = v93;
                  v100 = 2048;
                  v101 = v84;
                  v102 = 2112;
                  v103 = v56;
                  v104 = 1024;
                  *v105 = v74;
                  v16 = v73;
                  v55 = v72;
                  v46 = v71;
                  v62 = v92;
                  *&v105[4] = 2113;
                  *&v105[6] = v94;
                  v106 = 2113;
                  v107 = v25;
                  v108 = 2113;
                  v109 = v16;
                  v110 = 2113;
                  v111 = v71;
                  v112 = 2112;
                  v113 = v87;
                  v114 = 2112;
                  v115 = v83;
                  v116 = 2112;
                  v117 = v75;
                  v118 = 2113;
                  v119 = v85;
                  v120 = 2112;
                  v121 = v89;
                  _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Hit %@tracker domain for %@ id %llu %@, euid: %u, bundle: %{private}@, domain: %{private}@, owner: %{private}@, context: %{private}@, initiatedType: %@, contextVerificationType: %@, hits: %@, process: %{private}@, disposition: %@", buf, 0x8Au);
                }

                v12 = v82;
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
          v66 = [v54 hits];
          [v66 doubleValue];
          v68 = [v65 numberWithDouble:v67 + 1.0];
          [v54 setHits:v68];

          [v54 setTimeStamp:v55];
          goto LABEL_71;
        }
      }

      v50 = 0;
      v51 = @"Unknown";
      goto LABEL_57;
    }

    v29 = v16;
    if (NEHelperTrackerGetAppInfo())
    {
      if (v7)
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
        LODWORD(v97) = v7;
        _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "NEHelperTrackerGetAppInfo() failed to create appInfoRef, isWebBrowser: %d, will match DDG app list", buf, 8u);
      }
    }

    v122[0] = v25;
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
        v97 = v93;
        v98 = 2048;
        if (v7)
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
        *&v105[6] = v25;
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
    v29 = v16;
    v95[0] = 0;
    v30 = validateSockAddrToString(v14, 0, v95);
    v31 = v95[0];
    v32 = v31;
    if (!v30)
    {
      v34 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413059;
        v35 = v94;
        v97 = v93;
        v98 = 2048;
        v99 = v17;
        v100 = 2113;
        v101 = v94;
        v102 = 2113;
        v103 = v14;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "%@ %llu uses null dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
        v25 = 0;
        v36 = 0;
      }

      else
      {
        v25 = 0;
        v36 = 0;
        v35 = v94;
      }

      goto LABEL_79;
    }

    v84 = v17;
    if (v31)
    {
      v32 = v31;
      v33 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413315;
        v97 = v93;
        v98 = 2048;
        v99 = v17;
        v100 = 2113;
        v101 = v32;
        v102 = 2113;
        v103 = v94;
        v104 = 2113;
        *v105 = v14;
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
        v97 = v93;
        v98 = 2048;
        v99 = v17;
        v100 = 2113;
        v101 = v94;
        v102 = 2113;
        v103 = v14;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "%@ %llu failed to extract dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
      }

      v28 = 0;
    }

    v25 = v32;
  }

  v16 = v29;
  if (v25)
  {
    goto LABEL_46;
  }

LABEL_78:
  v29 = v16;
  v32 = +[NetDomainsHandler sharedInstance];
  v35 = v94;
  [(__CFString *)v32 checkForAutoBugCaptureWorthyCase:v94 domainName:v25 initiatedType:v91];
  v36 = 1;
LABEL_79:

  v16 = v29;
LABEL_81:

  v76 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)_summaryAppDomainUsageBy:(unsigned int)a3 reply:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke;
    block[3] = &unk_27898C7D0;
    v10 = a3;
    block[4] = self;
    v9 = v6;
    dispatch_async(v7, block);
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

- (void)_performAppTrackingPeriodicTasksWithReply:(id)a3
{
  v10 = a3;
  v4 = [(FlowAnalyticsEngine *)self _clearStaleNetDomainsRecords];
  v5 = [(FlowAnalyticsEngine *)self _submitAppDomainUsageRecordInfoAnalytics];
  if (v10)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"aduRecordsDeleted", v8, @"aduRecordAnalyticsSubmitted", 0}];

    v10[2](v10, v9, 0);
  }
}

- (void)performAppTrackingPeriodicTasksComplete:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = domainTrackingLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
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
    v13 = v5;
    v8 = "Periodic app tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppTrackingPeriodicActivityWithReply:(id)a3
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppTrackingPeriodicTasksWithReply:a3];
  }
}

- (void)performAppTrackingActionWithOptions:(id)a3 userId:(unsigned int)a4 reply:(id)a5
{
  v111 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 objectForKeyedSubscript:@"clearHistory"];
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
    v8[2](v8, 0, v14);
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
    v8[2](v8, 0, v17);
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
    v8[2](v8, 0, v23);
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
    v8[2](v8, 0, v30);

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
    v8[2](v8, 0, v38);
  }

  v82 = v18;
  v39 = 0x277CBE000uLL;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  v83 = v8;
  v80 = self;
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
      v78 = v7;
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
      v7 = v78;
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
      v8[2](v8, 0, v41);
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

  v63 = [v7 objectForKeyedSubscript:@"showDetails"];
  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v64 = [v63 BOOLValue];
  }

  else
  {
    v64 = 0;
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
    v72 = v71 = v7;
    *buf = 138478595;
    v102 = v84;
    v103 = 2112;
    v104 = v69;
    v105 = 2112;
    v106 = v72;
    v107 = 1024;
    v108 = v64;
    _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "Clear history action received options: %{private}@, start %@, end %@, details %d", buf, 0x26u);

    v7 = v71;
    v31 = v85;
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __72__FlowAnalyticsEngine_performAppTrackingActionWithOptions_userId_reply___block_invoke;
  v86[3] = &unk_27898C7F8;
  v91 = a4;
  v73 = v31;
  v87 = v73;
  v74 = v82;
  v88 = v74;
  v89 = v80;
  v92 = v64;
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

- (void)_handleEndpointTrackingNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"userEndpointTrackingUserID"];
  v6 = [v4 objectForKeyedSubscript:@"userEndpointTrackingState"];

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
          v7 = [v5 unsignedIntValue];
          v8 = [v6 BOOLValue];
          self->endpointTrackingEnabled = v8;
          if (v8)
          {
            v9 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v14 = 67109120;
              v15 = v7;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Endpoint tracking enabled for user %u", &v14, 8u);
            }

            if (self->appTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self createAppEndpointsStorageForUserId:v7];
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
                v15 = v7;
                _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Endpoint tracking disabled for user %u, clearing out the account's EndpointTracking data", &v14, 8u);
              }

              [(FlowAnalyticsEngine *)self clearAppEndpointsForUserWithID:v7];
            }
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleAppTrackingNotification:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"userAppTrackingUserID"];
  v5 = [v3 objectForKeyedSubscript:@"userAppTrackingState"];
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
          v51 = v3;
          v6 = [v4 unsignedIntValue];
          v49 = v5;
          self->appTrackingEnabled = [v5 BOOLValue];
          context = objc_autoreleasePoolPush();
          v48 = v6;
          v46 = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId = %d AND bundleName = %@", v6, &stru_2847966D8];
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
                v19 = [v18 bundleName];
                v20 = [v19 length];

                if (!v20)
                {
                  v21 = [v18 hasApp];
                  v22 = [v21 bundleName];

                  if (v22)
                  {
                    v23 = [v18 hasApp];
                    v24 = [v23 bundleName];

                    [v18 setBundleName:v24];
                    ++v13;
                    v25 = domainTrackingLogHandle;
                    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v26 = v25;
                      v27 = [v18 domain];
                      v28 = [v18 bundleName];
                      *buf = 134218499;
                      v60 = v13;
                      v61 = 2113;
                      v62 = v27;
                      v63 = 2113;
                      v64 = v28;
                      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "%lu: Updated old ADU's (domain: %{private}@) bundleName to %{private}@", buf, 0x20u);

                      v10 = v53;
                    }

                    if (__ROR8__(0x1CAC083126E978D5 * v13, 3) <= 0x4189374BC6A7EFuLL)
                    {
                      v54 = v13;
                      [(AnalyticsWorkspace *)self->super.workspace save];
                      v29 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
                      [v29 refreshAllObjects];
                      v30 = domainTrackingLogHandle;
                      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = v30;
                        v32 = [v18 domain];
                        v33 = [v18 bundleName];
                        *buf = 134218499;
                        v60 = v54;
                        v61 = 2113;
                        v62 = v32;
                        v63 = 2113;
                        v64 = v33;
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

          v3 = v51;
          if ([v10 count])
          {
            [(AnalyticsWorkspace *)self->super.workspace save];
            v34 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
            [v34 refreshAllObjects];
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

- (id)_repurposeAppEndpointRecords:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = v3;
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

                      v31 = [v29 name];
                      [v30 addObject:v31];
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

- (void)updateEffectiveUserId:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"UMSwitchToUserID"];
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

- (void)clearAppEndpoints:(id)a3
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

- (void)clearAppDomainUsage:(id)a3
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

- (id)_appExperienceForApp:(id)a3 forTime:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 hasAppExperience];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [v13 firstTimeStamp];
      [v14 timeIntervalSinceDate:v7];
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
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v18 = v13;

    if (v18)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v18 = [(ObjectAnalytics *)self->expspace createEntity];
  [v18 setFirstTimeStamp:v7];
  [v6 addHasAppExperienceObject:v18];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_performAppExperiencePeriodicTasksWithReply:(id)a3
{
  v8 = a3;
  v4 = [(FlowAnalyticsEngine *)self _pruneAppExperienceRecords];
  if (v8)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    v8[2](v8, v7, 0);
  }
}

- (void)performAppExperiencePeriodicTasksComplete:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = appExperienceLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
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
    v13 = v5;
    v8 = "Periodic app experience tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)performAppExperiencePeriodicActivityWithReply:(id)a3
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppExperiencePeriodicTasksWithReply:a3];
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

- (void)_algosScoreFor:(id)a3 score:(double)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(a3);
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412546;
    v23 = v6;
    v24 = 2048;
    v25 = a4;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Bundle: %@ score: %f", &v22, 0x16u);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  if (v6 != 0.0)
  {
    v9 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:*&v6 shouldFillMiss:0];
    v10 = v9;
    if (v9 && [v9 isApp])
    {
      v11 = v10;
      v12 = [(FlowAnalyticsEngine *)self _appExperienceForApp:v11 forTime:v8];
      v13 = v12;
      if (v12)
      {
        [v12 setAlgosSamples:{objc_msgSend(v12, "algosSamples") + 1}];
        [v13 algosScore];
        v15 = v14;
        [v13 setAlgosScore:{v14 + (a4 - v14) / objc_msgSend(v13, "algosSamples")}];
        v16 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          [v13 algosScore];
          v22 = 138413058;
          v23 = v6;
          v24 = 2048;
          v25 = v15;
          v26 = 2048;
          v27 = a4;
          v28 = 2048;
          v29 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Bundle %@ agg-value: %f, new value: %f, new agg-value: %f", &v22, 0x2Au);
        }

        [v13 setTimeStamp:v8];
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
        v25 = v6;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Either no entry (%@) or non-App entry for bundle %@", &v22, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLiveFlowPerfinScope:(id)a3 forTime:(id)a4 andTag:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v7 timeStamp];
  [v10 timeIntervalSinceDate:v9];
  v12 = v11;

  v13 = v12;
  if (v12 < 0)
  {
    v13 = -v13;
  }

  if (v13 >> 7 <= 0x2A2)
  {
    v15 = [v7 tag];
    v14 = [v15 isEqualToString:v8];
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
  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", v5, @"timeStamp", v3];

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

- (id)_flowFetchForName:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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
  v11 = [(NSMutableDictionary *)self->flowCache objectForKey:v4];
  v12 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v11;

  v13 = *(*(&buf + 1) + 40);
  if (!v13)
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"remoteID", v4];
    v16 = [(ObjectAnalytics *)self->fspace fetchEntitiesFreeForm:v15 sortDesc:0];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__FlowAnalyticsEngine__flowFetchForName___block_invoke_843;
    v34[3] = &unk_27898C848;
    v17 = v4;
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
    v20 = [MEMORY[0x277D6B590] entityName];
    v21 = [(ObjectAnalytics *)fspace createEntityForEntityName:v20];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;

    v23 = *(*(&buf + 1) + 40);
    if (v23)
    {
      [v23 setRemoteID:v17];
      v24 = [MEMORY[0x277CBEAA8] date];
      [*(*(&buf + 1) + 40) setFirstTimeStamp:v24];

      v25 = [MEMORY[0x277CBEAA8] distantPast];
      [*(*(&buf + 1) + 40) setTimeStamp:v25];

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

- (id)_parseEvent:(id)a3 withGeneration:(id *)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  fspace = self->fspace;
  v8 = [MEMORY[0x277D6B598] entityName];
  v9 = [(ObjectAnalytics *)fspace createTemporaryEntityForEntityName:v8];

  v72 = v6;
  [v6 keyEnumerator];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v76 = 0u;
  v10 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v10)
  {
    v11 = v10;
    v67 = a4;
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
      v20 = [v19 eventData];
      v21 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v78 = v12;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification for %@", buf, 0xCu);
      }

      v14 = [v19 eventQualifierStringForKey:{@"1", v67}];

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
          v31 = [v19 eventQualifiers];
          v32 = [v31 objectForKeyedSubscript:@"1"];
          if (v32)
          {
            v33 = " not";
          }

          else
          {
            v33 = "";
          }

          v34 = [v19 eventQualifiers];
          v35 = [v34 objectForKeyedSubscript:@"2"];
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
        v47 = v20;
        v48 = *(v20 + 4) & 0xF;
        v9 = v68;
        if (v48 == 15)
        {
          [v68 setTmpID:v14];
          v49 = v13;
          *v67 = v13;
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
        v56 = v20;
        v48 = *(v20 + 4) & 0xF;
        v9 = v68;
        if (v48 == 15)
        {
          [v68 setTmpID:v14];
          v57 = v13;
          *v67 = v13;
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

    v37 = v20;
    v38 = *(v20 + 4) & 3;
    v9 = v68;
    if (v38 == 3)
    {
      [v68 setTmpID:v14];
      v39 = v13;
      *v67 = v13;
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v68 setConnSuccesses:v40];

      v41 = [v68 connSuccesses];
      [v68 setConnAttempts:v41];

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
      v46 = [v68 usecsEstabTime];
      *buf = 138413058;
      v78 = v12;
      v79 = 2112;
      v80 = v14;
      v81 = 2112;
      v82 = v13;
      v83 = 2112;
      v84 = v46;
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

- (void)_archiveRecord:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 tmpID];
    *buf = 134218242;
    v92 = v4;
    v93 = 2112;
    v94 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: archiving flow record %p for %@", buf, 0x16u);
  }

  v9 = [v4 tmpID];
  v10 = [(FlowAnalyticsEngine *)self _flowFetchForName:v9];

  if (v10)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = v10;
    v11 = [v10 hasLivePerformance];
    v12 = [v11 countByEnumeratingWithState:&v86 objects:v90 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v86 + 1) + 8 * v15);
        v17 = [v4 tag];
        v18 = [(FlowAnalyticsEngine *)self _isLiveFlowPerfinScope:v16 forTime:v5 andTag:v17];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v86 objects:v90 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v19 = v16;

      v10 = v85;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_12:

      v10 = v85;
    }

    v19 = [(ObjectAnalytics *)self->lfpspace createEntity];
    v20 = [DateRounder roundToDayResolutionOnly:v5];
    [v19 setTimeStamp:v20];

    [v10 addHasLivePerformanceObject:v19];
    v21 = [v10 hasLivePerformance];
    v22 = [v21 count];

    if (v22 == 1)
    {
      v23 = [v19 timeStamp];
      [v10 setFirstTimeStamp:v23];
    }

LABEL_16:
    v24 = [v4 tag];
    [v19 setTag:v24];

    v25 = [v19 connSuccesses];
    [v25 doubleValue];
    v27 = v26;

    v28 = MEMORY[0x277CCABB0];
    v29 = [v4 connSuccesses];
    [v29 doubleValue];
    v31 = [v28 numberWithDouble:v27 + v30];
    [v19 setConnSuccesses:v31];

    v32 = [v19 connAttempts];
    [v32 doubleValue];
    v34 = v33;

    v35 = MEMORY[0x277CCABB0];
    v36 = [v4 connAttempts];
    [v36 doubleValue];
    v38 = [v35 numberWithDouble:v34 + v37];
    [v19 setConnAttempts:v38];

    v39 = [v19 usecsEstabTime];
    [v39 doubleValue];
    v41 = v40;

    v42 = MEMORY[0x277CCABB0];
    v43 = [v4 usecsEstabTime];
    [v43 doubleValue];
    v45 = [v42 numberWithDouble:v41 + v44];
    [v19 setUsecsEstabTime:v45];

    v46 = [v19 txPackets];
    [v46 doubleValue];
    v48 = v47;

    v49 = MEMORY[0x277CCABB0];
    v50 = [v4 txPackets];
    [v50 doubleValue];
    v52 = [v49 numberWithDouble:v48 + v51];
    [v19 setTxPackets:v52];

    v53 = [v19 txReTxPackets];
    [v53 doubleValue];
    v55 = v54;

    v56 = MEMORY[0x277CCABB0];
    v57 = [v4 txReTxPackets];
    [v57 doubleValue];
    v59 = [v56 numberWithDouble:v55 + v58];
    [v19 setTxReTxPackets:v59];

    v60 = [v19 txFailPackets];
    [v60 doubleValue];
    v62 = v61;

    v63 = MEMORY[0x277CCABB0];
    v64 = [v4 txFailPackets];
    [v64 doubleValue];
    v66 = [v63 numberWithDouble:v62 + v65];
    [v19 setTxFailPackets:v66];

    v67 = [v19 overallTime];
    [v67 doubleValue];
    v69 = v68;

    v70 = MEMORY[0x277CCABB0];
    v71 = [v4 overallTime];
    [v71 doubleValue];
    v73 = [v70 numberWithDouble:v69 + v72];
    [v19 setOverallTime:v73];

    v74 = [v19 timesThresholded];
    [v74 doubleValue];
    v76 = v75;

    v77 = MEMORY[0x277CCABB0];
    v78 = [v4 timesThresholded];
    [v78 doubleValue];
    v80 = [v77 numberWithDouble:v76 + v79];
    [v19 setTimesThresholded:v80];

    [(AnalyticsWorkspace *)self->super.workspace save];
  }

  else
  {
    v81 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v82 = v81;
      v83 = [v4 tmpID];
      *buf = 138412290;
      v92 = v83;
      _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_ERROR, "Failing to track usage for flow %@", buf, 0xCu);
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)_pruneFlowHistory
{
  v3 = [MEMORY[0x277CBEAA8] date];
  flowInstant = self->flowInstant;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke;
  v6[3] = &unk_27898B7F0;
  v7 = v3;
  v5 = v3;
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

- (void)_newFlowData:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification", buf, 2u);
  }

  v63 = [v62 userInfo];
  v75 = 0;
  v5 = [(FlowAnalyticsEngine *)self _parseEvent:v63 withGeneration:&v75];
  v60 = v75;
  if (v5)
  {
    v58 = [MEMORY[0x277CBEAA8] date];
    [v5 setTimeStamp:v58];
    v59 = [(NSMutableDictionary *)self->flowInstant objectForKeyedSubscript:v60];
    if (v59)
    {
      [(FlowAnalyticsEngine *)self _pruneFlowHistory];
      v61 = [v59 objectAtIndex:0];
      v6 = [v61 kind];
      v7 = [v6 shortValue] == 0;

      if (!v7)
      {
        v8 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          v10 = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = v10;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (1) no head-end for flow %@, discarding all its records", buf, 0xCu);
        }

        goto LABEL_50;
      }
    }

    else
    {
      v11 = [v5 kind];
      v12 = [v11 shortValue] == 1;

      if (v12)
      {
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          v15 = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = v15;
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
          v20 = [v17 tmpID];
          *v78 = 138412290;
          v79 = v20;
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

    v21 = [v5 kind];
    v22 = [v21 shortValue];

    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      v25 = [v5 tmpID];
      *buf = 67109378;
      *&buf[4] = v22;
      *&buf[8] = 2112;
      *&buf[10] = v25;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: receiving record kind %hd for %@", buf, 0x12u);
    }

    if (v22 == 2)
    {
      if (v61)
      {
        v40 = [v5 overallTime];
        [v61 setOverallTime:v40];

        v41 = [v5 txPackets];
        [v61 setTxPackets:v41];

        v42 = [v5 txReTxPackets];
        [v61 setTxReTxPackets:v42];

        v43 = [v5 txFailPackets];
        [v61 setTxFailPackets:v43];
      }

      else
      {
        v61 = v5;
        internal_symptom_create();
        v47 = [v61 tag];
        v48 = v47;
        v49 = [v47 UTF8String];

        strlen(v49);
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
      v50 = [(FlowAnalyticsEngine *)self flowWatchers];
      v51 = [v50 allValues];

      v52 = [v51 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v52)
      {
        v53 = *v65;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v65 != v53)
            {
              objc_enumerationMutation(v51);
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

          v52 = [v51 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v52);
      }
    }

    else if (v22 == 1)
    {
      [v59 addObject:v5];
      v29 = [v61 timesThresholded];
      [v29 doubleValue];
      v31 = v30;

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31 + 1.0];
      [v61 setTimesThresholded:v32];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v33 = [(FlowAnalyticsEngine *)self flowWatchers];
      v34 = [v33 allValues];

      v35 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v35)
      {
        v36 = *v69;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v69 != v36)
            {
              objc_enumerationMutation(v34);
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

          v35 = [v34 countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v35);
      }
    }

    else if (v22)
    {
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        v46 = [v5 tmpID];
        *buf = 67109378;
        *&buf[4] = v22;
        *&buf[8] = 2112;
        *&buf[10] = v46;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: unknown record kind %hd for %@", buf, 0x12u);
      }
    }

    else
    {
      [v59 addObject:v5];
      internal_symptom_create();
      v26 = [v5 tag];
      v27 = v26;
      v28 = [v26 UTF8String];

      strlen(v28);
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

- (void)_updateTetheringUsage:(BOOL)a3
{
  v4 = a3;
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
      if (v4)
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

    v39 = v4;
    v38 = self;
    v9 = 0;
    v10 = 0;
    v11 = 712;
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
          v3 = v15 - _updateTetheringUsage__carryIfindex[v9];
          if (v3 >= 1)
          {
            v16 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v64 = v9;
              *&v64[4] = 2048;
              *&v64[6] = v3;
              _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "tether: cell interface %d contributes %lld bytes", buf, 0x12u);
            }

            v10 += v3;
            goto LABEL_21;
          }

          v17 = analyticsLogHandle;
          if (v3 < 0)
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
              v23 = [(FlowAnalyticsEngine *)self cellRelay];
              BYTE2(v37) = 0;
              BYTE1(v37) = [v23 expensive];
              LOBYTE(v37) = 0;
              [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v22 wifiOut:0 cellIn:0 cellOut:v10 wiredIn:0 wiredOut:0 btIn:0 btOut:0 xIn:0 xOut:0 isJumboFlow:0 isExpensive:v37 closing:?];

              v24 = analyticsLogHandle;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v22 wwanIN];
                [v25 doubleValue];
                v27 = v26;
                ctShim = self->ctShim;
                if (ctShim)
                {
                  v11 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                  if (v11)
                  {
                    v29 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                    v30 = 1;
                  }

                  else
                  {
                    v30 = 0;
                    v29 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v30 = 0;
                  v29 = &unk_2847EF6C8;
                }

                *buf = 134218242;
                *v64 = v27;
                *&v64[8] = 2112;
                *&v64[10] = v29;
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
                v33 = v38->ctShim;
                if (v33)
                {
                  v3 = [(CoreTelephonyShim *)v38->ctShim currentSubscriberTag];
                  if (v3)
                  {
                    v34 = [(CoreTelephonyShim *)v38->ctShim currentSubscriberTag];
                    v35 = 1;
                  }

                  else
                  {
                    v35 = 0;
                    v34 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v35 = 0;
                  v34 = &unk_2847EF6C8;
                }

                *buf = 138412546;
                *v64 = @"misd";
                *&v64[8] = 2112;
                *&v64[10] = v34;
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

- (BOOL)_handlesProcEntity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6B548] entityName];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D6B518] entityName];
    if ([v3 isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = [MEMORY[0x277D6B558] entityName];
      if ([v3 isEqualToString:v7])
      {
        v5 = 1;
      }

      else
      {
        v8 = [MEMORY[0x277D6B568] entityName];
        if ([v3 isEqualToString:v8])
        {
          v5 = 1;
        }

        else
        {
          v9 = [MEMORY[0x277D6B578] entityName];
          if ([v3 isEqualToString:v9])
          {
            v5 = 1;
          }

          else
          {
            v10 = [MEMORY[0x277D6B570] entityName];
            if ([v3 isEqualToString:v10])
            {
              v5 = 1;
            }

            else
            {
              v11 = [MEMORY[0x277D6B588] entityName];
              if ([v3 isEqualToString:v11])
              {
                v5 = 1;
              }

              else
              {
                v12 = [MEMORY[0x277D6B560] entityName];
                v5 = [v3 isEqualToString:v12];
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)_handlesFlowEntity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6B590] entityName];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D6B598] entityName];
    v5 = [v3 isEqualToString:v6];
  }

  return v5;
}

- (BOOL)handlesEntity:(id)a3
{
  v4 = a3;
  v5 = [(FlowAnalyticsEngine *)self _handlesProcEntity:v4]|| [(FlowAnalyticsEngine *)self _handlesFlowEntity:v4];

  return v5;
}

- (BOOL)_requiresUserValidationPredicateForEntity:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D6B568] entityName];
  if ([v3 isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D6B570] entityName];
    v5 = [v3 isEqualToString:v6];
  }

  return v5;
}

- (void)_logBitmapOutcome:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
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
    v5 = v3;
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

- (void)getNetworkBitmapsWithNames:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (v14)
  {
    v15 = [(AnalyticsEngineCore *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke;
    v17[3] = &unk_27898C8E8;
    v17[4] = self;
    v18 = v12;
    v21 = a4;
    v22 = a5;
    v19 = v13;
    v20 = v14;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
    dispatch_async(v15, v16);
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

- (void)logOutcomeArray:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SystemProperties sharedInstance];
  v6 = [v5 internalBuild];

  if (v6)
  {
    v7 = [v4 count];
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
      v45 = v4;
      do
      {
        v15 = v11;
        v16 = objc_autoreleasePoolPush();
        v11 = [v4 objectAtIndexedSubscript:v10 + v12];

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

              v4 = v45;
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
    v43 = [v4 count];
    *buf = 134217984;
    v52 = v43;
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE end of outcome array (%lu entries)", buf, 0xCu);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)performQueryOnEntity:(id)a3 fetchRequestProperties:(id)a4 pred:(id)a5 sort:(id)a6 actions:(id)a7 service:(id)a8 connection:(id)a9 reply:(id)a10
{
  v102 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v61 = a4;
  v65 = a5;
  v62 = a6;
  v17 = a7;
  v63 = a8;
  v18 = a9;
  v64 = a10;
  v19 = [v18 processIdentifier];
  v20 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = pid_to_process_name(v19);
    v23 = v22;
    v24 = @"<unknown>";
    *buf = 138413826;
    if (v22)
    {
      v24 = v22;
    }

    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = v19;
    *&buf[22] = 2112;
    v96 = v16;
    *v97 = 2112;
    *&v97[2] = v65;
    *&v97[10] = 2112;
    *&v97[12] = v62;
    v98 = 2112;
    v99 = v17;
    v100 = 2112;
    v101 = v61;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE perform query for %@ (pid %lld) on %@ predicate %@ sort %@ actions %@ properties %@", buf, 0x48u);
  }

  if (v16)
  {
    v25 = [MEMORY[0x277D6B568] entityName];
    v26 = [v16 isEqualToString:v25];

    if (v26)
    {
      [(FlowAnalyticsEngine *)self submitNetworkDomainUsageToDateSPICallMetric];
    }

    v27 = [MEMORY[0x277D6B570] entityName];
    v28 = [v16 isEqualToString:v27];

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
        v64[2](v64, v36);
        goto LABEL_38;
      }
    }
  }

  if (v17)
  {
    v29 = [v17 objectForKeyedSubscript:@"refreshUsage"];
    v30 = v29 != 0;

    if (v30)
    {
      if (![v63 assertEntitlement:v18 entitlement:2 orWaiveOnIntent:v17])
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

    v32 = [v17 objectForKeyedSubscript:@"watchpointKey"];
    v33 = v32 == 0;

    if (!v33)
    {
      if ([v63 assertEntitlement:v18 entitlement:3 orWaiveOnIntent:v17])
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
      v64[2](v64, v36);
      goto LABEL_38;
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = 0;
LABEL_23:
  v36 = v65;
  if ([(FlowAnalyticsEngine *)self _requiresUserValidationPredicateForEntity:v16])
  {
    v37 = [v18 effectiveUserIdentifier];
    v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", v37];
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
      v67 = v16;
      v68 = self;
      v69 = v64;
      [(AnalyticsEngineCore *)self performQueryOnEntityCore:v67 fetchRequestProperties:v61 pred:v36 sort:v62 actions:v17 service:v63 reply:v66];

      goto LABEL_38;
    }

    v52 = [v17 objectForKey:@"watchpointTarget"];
    v53 = [v17 objectForKey:@"watchpointKey"];
    v54 = [v17 objectForKey:@"watchpointValue"];
    v55 = v54;
    if (v18 && v52 && v53 && v54)
    {
      v60 = [(ObjectAnalytics *)self->lfpspace getDescriptionForName:v16];
      v56 = [v60 attributesByName];
      v57 = [v56 objectForKeyedSubscript:v53];
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
        v76 = v16;
        v77 = v61;
        v36 = v36;
        v78 = v36;
        v79 = v62;
        v80 = v17;
        v81 = v63;
        v83 = v64;
        v82 = v18;
        v84 = buf;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 3221225472;
        v70[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2_905;
        v70[3] = &unk_27898C988;
        v73 = v83;
        v71 = v82;
        v72 = self;
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
    v51 = [v18 processIdentifier];
    *buf = 134217984;
    *&buf[4] = v51;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: in refresh codepath on behalf of pid %lld", buf, 0xCu);
  }

  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke;
  v86[3] = &unk_27898C938;
  v86[4] = self;
  v87 = v16;
  v88 = v61;
  v36 = v36;
  v89 = v36;
  v90 = v62;
  v91 = v17;
  v92 = v63;
  v93 = v64;
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

- (void)performThresholdingOn:(id)a3 forKey:(id)a4 andValue:(id)a5 connection:(id)a6 createdBlock:(id *)a7 hitBlock:(id)a8 errorBlock:(id)a9
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v47 = v15;
    v48 = 2112;
    v49 = v16;
    v50 = 2112;
    v51 = v17;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: entering watchpoint codepath with (target,key,value: %@/%@/%@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke;
  aBlock[3] = &unk_27898CA00;
  aBlock[4] = self;
  v34 = v15;
  v41 = v34;
  v22 = v16;
  v42 = v22;
  v23 = v17;
  v43 = v23;
  v24 = v19;
  v44 = v24;
  v25 = v20;
  v45 = v25;
  *a7 = _Block_copy(aBlock);
  v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v18];
  v27 = [(FlowAnalyticsEngine *)self flowWatchers];
  v28 = _Block_copy(*a7);
  [v27 setObject:v28 forKey:v26];

  objc_initWeak(&location, v18);
  objc_initWeak(&from, self);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_906;
  v35[3] = &unk_27898CA28;
  objc_copyWeak(&v36, &from);
  objc_copyWeak(&v37, &location);
  [v18 setInvalidationHandler:v35];
  v29 = analyticsLogHandle;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v18 description];
    v31 = [(FlowAnalyticsEngine *)self flowWatchers];
    v32 = [v31 count];
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

- (int)performQueryOnEntityFromCache:(id)a3 pred:(id)a4 altpred:(id *)a5 actions:(id)a6 found:(id *)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [v12 name];
  v16 = [v14 objectForKeyedSubscript:@"sweepUsage"];

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
    v18 = [v13 subpredicates];
    v19 = [v18 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v19)
    {
      v20 = v19;
      v48 = a7;
      v50 = a5;
      v21 = *v53;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v53 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(AnalyticsEngineCore *)self extractQueryStringFrom:*(*(&v52 + 1) + 8 * i) isGeneric:&v56];
          if (v23)
          {
            v17 = v23;
            goto LABEL_16;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_16:
      a7 = v48;
      a5 = v50;
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

    v17 = [(AnalyticsEngineCore *)self extractQueryStringFrom:v13 isGeneric:&v56];
  }

LABEL_19:
  if ([(FlowAnalyticsEngine *)self _handlesProcEntity:v15])
  {
    if (v17 || (v56 & 1) != 0)
    {
      v24 = [(AnalyticsEngineCore *)self safePredFrom:v13 forEntity:v12];
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

          v26 = [v14 objectForKeyedSubscript:@"nameChain"];

          if (v26)
          {
            v51 = a5;
            v27 = [MEMORY[0x277CBEB68] null];
            v28 = [v26 isEqual:v27];

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
              *v51 = v37;
              if ([(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:v12 target:v26 pred:v37 found:a7])
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
                  *v51 = v40;
                  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:v12 target:v47 pred:v40 found:a7];
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

        v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:v12 target:v17 pred:v24 found:a7];
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

  if (![(FlowAnalyticsEngine *)self _handlesFlowEntity:v15])
  {
    goto LABEL_42;
  }

  v31 = [v14 objectForKeyedSubscript:@"instantFlow"];

  if (!v31)
  {
    goto LABEL_42;
  }

  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromInstantFlowCache:v12 target:v17 pred:v13 found:a7];
LABEL_43:

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

- (int)_performQueryOnEntityFromProcCache:(id)a3 target:(id)a4 pred:(id)a5 found:(id *)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__FlowAnalyticsEngine__performQueryOnEntityFromProcCache_target_pred_found___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (_performQueryOnEntityFromProcCache_target_pred_found__once != -1)
  {
    dispatch_once(&_performQueryOnEntityFromProcCache_target_pred_found__once, block);
  }

  v13 = [(FlowAnalyticsEngine *)self _fetchFromProcCacheWithName:v11 ofType:1];
  if (v13)
  {
    v38 = v12;
    v39 = v11;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [v13 isApp];
    v17 = &_performQueryOnEntityFromProcCache_target_pred_found__appDesc;
    if (!v16)
    {
      v17 = &_performQueryOnEntityFromProcCache_target_pred_found__procDesc;
    }

    v40 = v10;
    [*v17 relationshipsWithDestinationEntity:{v10, a6}];
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
            v24 = [v23 name];
            [v14 addObject:v24];
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
            v31 = [v30 allObjects];
LABEL_24:
            v32 = v31;
            [v15 addObjectsFromArray:v31];

            goto LABEL_26;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [v30 array];
            goto LABEL_24;
          }

          [v15 addObject:v30];
LABEL_26:
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v27);
    }

    v12 = v38;
    *v37 = [v15 filteredArrayUsingPredicate:v38];

    v33 = 0;
    v11 = v39;
    v10 = v40;
  }

  else
  {
    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v53 = v11;
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

- (id)_attemptConvertingPluginNameToContainingAppName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->pluginToBundleCache objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: hotpath hit, converted %@ to %@", &v18, 0x16u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v4];
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412546;
      v19 = v4;
      v20 = 2048;
      v21 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: slowpath, converting %@ to plugin: %p", &v18, 0x16u);
    }

    if (v8)
    {
      v10 = [v8 containingBundle];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v18 = 134217984;
        v19 = v10;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: containing bundle: %p", &v18, 0xCu);
      }

      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = v10;
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          v15 = [v12 applicationIdentifier];
          v18 = 138412290;
          v19 = v15;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: plugin's containing appname: %@", &v18, 0xCu);
        }

        v6 = [v12 applicationIdentifier];
        if (v6)
        {
          [(NSMutableDictionary *)self->pluginToBundleCache setObject:v6 forKeyedSubscript:v4];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)_bundleBackgroundAudioCapable:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->audioBundleCache objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    LODWORD(v7) = [v5 BOOLValue];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = v4;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "audio background capability for %@: %d (source: cache)", &v17, 0x12u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 UIBackgroundModes];
      v7 = [v11 containsObject:@"audio"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      [(NSMutableDictionary *)self->audioBundleCache setObject:v12 forKeyedSubscript:v4];

      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412546;
        v18 = v4;
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
        v18 = v4;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "applicationProxyForIdentifier failed for %@", &v17, 0xCu);
      }

      LOBYTE(v7) = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int)_performQueryOnEntityFromInstantFlowCache:(id)a3 target:(id)a4 pred:(id)a5 found:(id *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  [(FlowAnalyticsEngine *)self _pruneFlowHistory];
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    flowInstant = self->flowInstant;
    v11 = v9;
    v24 = 138412546;
    v25 = v8;
    v26 = 2048;
    v27 = [(NSMutableDictionary *)flowInstant count];
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: looking for instant flow: %@, %lu on record", &v24, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  v13 = [(NSMutableDictionary *)self->flowInstant objectEnumerator];
  v14 = [v13 nextObject];
  if (v14)
  {
    v15 = v14;
    do
    {
      v16 = v15;
      v17 = [v16 firstObject];
      v18 = v17;
      if (!v8 || ([v17 tmpID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", v8), v19, v20))
      {
        [v12 addObjectsFromArray:v16];
      }

      v15 = [v13 nextObject];
    }

    while (v15);
  }

  v21 = v12;
  *a6 = v12;

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)createSnapshotFor:(id)a3 pred:(id)a4 actions:(id)a5 reply:(id)a6
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  v8 = a6;
  v9 = [v6 errorWithDomain:v7 code:45 userInfo:0];
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: netanalyticsdebug: flow: denied snapshot request (ENOTSUP)", v11, 2u);
  }

  v8[2](v8, 0, v9);
}

- (id)setOption:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = @"calendarUsageToggle";
  v7 = [v4 objectForKey:@"calendarUsageToggle"];
  if (!v7)
  {
    v6 = @"typicalUsageToggle";
    v8 = [v5 objectForKey:@"typicalUsageToggle"];
    if (v8)
    {
      v9 = [(FlowAnalyticsEngine *)self haveTypicalUsage];
      -[FlowAnalyticsEngine setHaveTypicalUsage:](self, "setHaveTypicalUsage:", [v8 BOOLValue]);
      goto LABEL_8;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [(FlowAnalyticsEngine *)self haveCalendar];
  -[FlowAnalyticsEngine setHaveCalendar:](self, "setHaveCalendar:", [v8 BOOLValue]);
LABEL_8:
  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v10 = [v11 dictionaryWithObjectsAndKeys:{v12, v6, 0}];

LABEL_9:

  return v10;
}

- (id)getOption:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"calendarUsageToggle"];

    if (v6)
    {
      v6 = [MEMORY[0x277CBEB38] dictionary];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveCalendar](self, "haveCalendar")}];
      [v6 setObject:v7 forKeyedSubscript:@"calendarUsageToggle"];
    }

    v8 = [v5 objectForKey:@"typicalUsageToggle"];

    if (v8)
    {
      if (!v6)
      {
        v6 = [MEMORY[0x277CBEB38] dictionary];
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveTypicalUsage](self, "haveTypicalUsage")}];
      [v6 setObject:v9 forKeyedSubscript:@"typicalUsageToggle"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)resetDataFor:(id)a3 nameKind:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ProcessAnalytics *)self->pspace processesWithNameInSet:v8 nameKind:v7];
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

- (void)identifierForUUID:(id)a3 queue:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    nstatManager = self->nstatManager;
    if (nstatManager)
    {
      v22 = 0;
      v12 = [(NWStatsManager *)nstatManager identifierForUUID:v8 derivation:&v22];
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
            if (!v9)
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
  if (!v9)
  {
LABEL_14:
    v10[2](v10, v13, v16, v15);
    goto LABEL_15;
  }

LABEL_8:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FlowAnalyticsEngine_identifierForUUID_queue_reply___block_invoke;
  block[3] = &unk_27898CA50;
  v21 = v10;
  v18 = v13;
  v19 = v16;
  v20 = v15;
  dispatch_async(v9, block);

LABEL_15:
}

- (void)_updateKnownCellularInterfaceIndexList:(int)a3 force:
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1 && (![v5 count] || a3))
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (a3)
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

- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = *(a1 + 256);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      [a1 _startMonitoringNetworkInterface:a2 usingThreshold:0x100000];
      v6 = *(a1 + 264);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      [v6 addObject:v7];

      v8 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 264);
        v13 = 67109378;
        v14 = a2;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Set threshold monitoring on interface index %d (total monitored interfaces: %@)", &v13, 0x12u);
      }

      *(a1 + 248) = a2;
      v10 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 248);
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