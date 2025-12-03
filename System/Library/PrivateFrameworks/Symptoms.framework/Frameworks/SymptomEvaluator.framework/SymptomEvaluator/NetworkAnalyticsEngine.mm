@interface NetworkAnalyticsEngine
+ (BOOL)getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted;
+ (BOOL)hasAnyNetworkAttachmenOnLOI:(int64_t)i;
+ (id)concurrentEpochs;
+ (id)fetchHashSaltFromJournalUsingImpoExpoService:(id)service;
+ (id)getNetworkExtensionStateRelay;
+ (id)hashPrimaryKey:(id)key;
+ (id)hashPrimaryKey:(id)key withSalt:(id)salt;
+ (id)mapNrFrequencyBandToString:(char)string;
+ (id)mapRadioTechnologyTypeToString:(unsigned __int8)string;
+ (id)queue;
+ (int)getLoadedLQMOn:(unsigned __int8)on;
+ (int64_t)mapLinkQuality:(int)quality;
+ (int64_t)mapPowerCost:(unsigned __int8)cost;
+ (int64_t)mapRadioTechnology:(unsigned __int8)technology;
+ (unsigned)_constructRxSignalExemptionsBitmapFromHint:(BOOL)hint reasons:(id)reasons;
+ (void)awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply;
+ (void)didReceiveProtocolSnapshot:(id)snapshot;
+ (void)performPersistentStoreHealthCheckWithReply:(id)reply;
+ (void)setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue;
- (BOOL)_appendJournalRecord:(id)record withPreamble:(id *)preamble;
- (BOOL)_determineIfThisIsWiFiFirstAttachment:(id)attachment;
- (BOOL)_flushAllJournalRecords;
- (BOOL)_getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted;
- (BOOL)_hashPrimaryKeyInPlace:(char *)place withSalt:(id)salt;
- (BOOL)_isKnowableSporadicForType:(unsigned __int8)type;
- (BOOL)_newCellTransferTimeEstimateRequired;
- (BOOL)_performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply;
- (BOOL)_populateInterfaceTimelineJournalRecord:(id *)record forInterface:(int64_t)interface fromDict:(id)dict;
- (BOOL)_populateLIMJournalRecord:(id *)record fromKernelDict:(id)dict;
- (BOOL)_populateLQMJournalRecord:(id *)record fromCellFingerprint:(BOOL)fingerprint key:(const char *)key atLOI:(int64_t)i ofInterfaceType:(int64_t)type lqm:(int)lqm isFaulty:(unsigned int)faulty;
- (BOOL)_recordOfActiveFatalSuspector:(int64_t)suspector;
- (BOOL)_shouldAcceptRouteSource:(__NStatSource *)source;
- (BOOL)handlesEntity:(id)entity;
- (NetworkAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue;
- (__NStatSource)_newDefRouteForInterface:(id)interface saFamily:(unsigned __int8)family;
- (id)_adviceToNSString:(int)string;
- (id)_concurrentEpochs;
- (id)_createNetworkAttachmentIdentifierExclusionList;
- (id)_hashPrimaryKey:(id)key withSalt:(id)salt;
- (id)_naIdentifierToMajor:(id)major;
- (id)_retrieveCellCarrierName;
- (id)_scoringDuty:(id)duty forType:(int)type withRetCode:(int *)code oldestTime:(id *)time;
- (id)_skimMemoryJournalFor:(unsigned __int8)for;
- (id)_tcsInfoDescription;
- (id)lastScoreExits;
- (id)timeOfDayPrecise;
- (int)_combinedDNSCountForEpoch:(id)epoch;
- (int)_generateAdviceForEpoch:(id)epoch relativeTo:(id)to;
- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found;
- (int64_t)_processCTCellInfo:(id)info;
- (int64_t)_retrieveCellId;
- (void)_armDOASuspector:(id)suspector;
- (void)_armFatalSuspector:(id)suspector isActive:(BOOL)active;
- (void)_armLowQDisconnectSuspector:(id)suspector;
- (void)_awaitEstimatedDataTransferTimeWithCallbackOnQueue:(id)queue completionBlock:(id)block;
- (void)_awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply;
- (void)_awdCaptureInstant:(id)instant replyQueue:(id)queue reply:(id)reply;
- (void)_captivityRedirects:(id)redirects;
- (void)_certError:(id)error;
- (void)_createJournalRecordOfType:(unsigned __int8)type forInterface:(int64_t)interface fromDict:(id)dict;
- (void)_dataStall:(id)stall;
- (void)_delayedKnownGoodNetworkAlert;
- (void)_disarmDOASuspector:(id)suspector;
- (void)_disarmFatalSuspector:(id)suspector withEventAt:(id)at by:(id)by;
- (void)_disarmLowQDisconnectSuspector:(id)suspector;
- (void)_dnsWithSymptoms:(id)symptoms;
- (void)_dumpStats;
- (void)_establishLqmBaselineOn:(BOOL)on interfaceName:(id)name lqmPtr:(int *)ptr;
- (void)_estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply;
- (void)_extractCellLinkFingerprintFrom:(__CFData *)from;
- (void)_fetchHashSaltFromJournal;
- (void)_getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
- (void)_handleRouteClosing:(__NStatSource *)closing;
- (void)_handleRouteData:(__NStatSource *)data;
- (void)_hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply;
- (void)_idleExitTransactionCheck;
- (void)_informKernelOfCellRrc:(int)rrc forInterface:(id)interface;
- (void)_informKernelOfLIMUplink:(BOOL)uplink downlink:(BOOL)downlink forInterface:(const char *)interface;
- (void)_initializeInternals;
- (void)_initializeWorkspace;
- (void)_layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
- (void)_observeNetworkFramework;
- (void)_processLIM:(id)m;
- (void)_processNWActivityMetrics;
- (void)_recoverFromSystemCriticalErrors;
- (void)_refreshLOIForInterfaceType:(unsigned __int8)type;
- (void)_refreshRouteMetrics;
- (void)_refreshRouteMetricsComplete;
- (void)_refreshRouteMetricsWithCallbackOnQueue:(id)queue completionBlock:(id)block;
- (void)_registerForLinkQualityNotifications:(id)notifications;
- (void)_registerForSIMStatusChangeNotification:(id)notification;
- (void)_relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset;
- (void)_relayCellThroughputAdvice:(unsigned int)advice;
- (void)_relayDataStallState:(unsigned int)state dnsFailureState:(unsigned int)failureState;
- (void)_relayRebufferState:(unsigned int)state;
- (void)_relayWiFiViability:(unsigned int)viability;
- (void)_removeOldRouteRecords;
- (void)_retrieveCellId:(id)id;
- (void)_retrieveDNSServersForEpoch:(id)epoch;
- (void)_retrieveICCID;
- (void)_scoringTrampoline;
- (void)_sendTrafficClassAndExtendedReportToBaseband;
- (void)_sendTrafficInfoFlags:(unsigned int)flags changeFlags:(unsigned int)changeFlags foreground:(BOOL)foreground;
- (void)_setScalarValueInNetworkAttachments:(id)attachments targetKeyPath:(id)path basedOn:(id)on matchingKeyPath:(id)keyPath matchValue:(id)value noMatchValue:(id)matchValue;
- (void)_setWiFiRSSIThresholds:(BOOL)thresholds;
- (void)_setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue;
- (void)_trackRealTimeLqmLastUpdatedOnInterfaceType:(unsigned __int8)type;
- (void)_trainModelAndScore:(BOOL)score;
- (void)_triggerDisconnectEdge:(id)edge;
- (void)_updateCombinedDNSCounts;
- (void)_updateICCID:(id)d;
- (void)_usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply;
- (void)_wifiKnownNetworksDeleted:(id)deleted;
- (void)abortRNFTestWithReply:(id)reply;
- (void)cellInfoChangedForSubscription:(id)subscription;
- (void)cellularDualSimStatusChangedTo:(int64_t)to;
- (void)clientTransactionsRelease;
- (void)countryCodeChangedForSubscription:(id)subscription;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)ctDataStatusChangedForSubscription:(id)subscription;
- (void)dealloc;
- (void)didReceiveProtocolSnapshot:(id)snapshot;
- (void)handleLQMChange;
- (void)handleRRCChange;
- (void)infoDataStallChangedForSubscription:(id)subscription;
- (void)infoDataTransferTimeChangedForSubscription:(id)subscription;
- (void)infoDataTransferTimeEnabledChangedForSubscription:(id)subscription;
- (void)infoHighThroughputStateChanged:(id)changed;
- (void)infoLinkPowerCostChangedForSubscription:(id)subscription;
- (void)infoLinkQualityFingeprintChangedForSubscription:(id)subscription;
- (void)infoLinkStateChangedForSubscription:(id)subscription;
- (void)infoTrafficClassChangedForSubscription:(id)subscription;
- (void)networkCodeChangedForSubscription:(id)subscription;
- (void)networkSlicingActiveChangedTo:(BOOL)to forSliceIndex:(unint64_t)index;
- (void)nonTerrestrialNetworkActiveChangedTo:(BOOL)to;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performPersistentStoreHealthCheckComplete:(id)complete error:(id)error;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0;
- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome;
- (void)processCellDataStallNotification:(id)notification;
- (void)processCellDataTransferTimeEnabledNotification:(id)notification;
- (void)processCellDataTransferTimeNotification:(id)notification;
- (void)processCellHighThroughputState:(id)state;
- (void)processCellLinkFingerprintNotification:(id)notification;
- (void)processCellLinkPowerCostNotification:(id)notification;
- (void)processCellLinkStateNotification:(id)notification;
- (void)processCellTrafficClassNotification:(id)notification;
- (void)proxyAnalyticsTrainAndScoreComplete:(id)complete error:(id)error;
- (void)proxyAnalyticsTrainAndScoreInterrupted;
- (void)ratSelectionChangedForSubscription:(id)subscription;
- (void)resetCellStatesForXCTests;
- (void)resetDataFor:(id)for nameKind:(id)kind;
- (void)scheduleWiFiAssistAnalyticsTask;
- (void)sendWifiAssistDataUsageMetric;
- (void)sendWifiAssistStateMetric;
- (void)setProhibitNetworkAgentsForNWParameters:(id)parameters;
- (void)shutdown;
- (void)signalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r;
- (void)startRNFTestWithConnection:(id)connection options:(id)options scenarioName:(id)name reply:(id)reply;
- (void)stewieActiveChangedTo:(BOOL)to;
- (void)stopRunningRNFTestWithReply:(id)reply;
- (void)wifiShim_BSSIDChangedForInterface:(id)interface;
- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid;
- (void)wifiShim_L2NewMetrics:(id)metrics forInterface:(id)interface;
- (void)wifiShim_L2TriggerDisconnectEdge:(BOOL)edge forInterface:(id)interface;
- (void)wifiShim_LQMAsystoleDetected:(double)detected;
- (void)wifiShim_NetworkForgottenWithSSID:(id)d;
@end

@implementation NetworkAnalyticsEngine

- (void)_sendTrafficClassAndExtendedReportToBaseband
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CFDataCreate(0, &tcsBwInfo, trafficClassStructureSize);
  v4 = scoringLogHandle;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _tcsInfoDescription = [(NetworkAnalyticsEngine *)selfCopy _tcsInfoDescription];
    v13 = 138412546;
    *v14 = _tcsInfoDescription;
    *&v14[8] = 2112;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Preparing to send %@ data %@", &v13, 0x16u);
  }

  dword_2814D2FE8 = 0;
  qword_2814D2FE0 = 0;
  objc_sync_exit(selfCopy);

  serverConnection = selfCopy->serverConnection;
  v7 = _CTServerConnectionSendEnhancedLinkQualityTrafficInfo();
  v8 = v7;
  v9 = HIDWORD(v7);
  if (HIDWORD(v7))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (!v10)
  {
    v11 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109376;
      *v14 = v8;
      *&v14[4] = 1024;
      *&v14[6] = v9;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Received error (%d, %d) while trying to send traffic and stall info", &v13, 0xEu);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_tcsInfoDescription
{
  if (trafficClassVersionInUse == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic and stall info active 0x%x changed 0x%x foreground %d stall %d rebuffer %d dns %d non-CM-info 0x%x chg ext 0x%x reserve 0x%x hightpt 0x%x", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, qword_2814D2FE0, HIDWORD(qword_2814D2FE0), dword_2814D2FE8, dword_2814D2FEC, dword_2814D2FF0, unk_2814D2FF4, dword_2814D2FF8];
  }

  else if (trafficClassVersionInUse == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic and stall info active 0x%x changed 0x%x foreground %d stall %d rebuffer %d dns %d", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, qword_2814D2FE0, HIDWORD(qword_2814D2FE0), dword_2814D2FE8, v7, v8, v9, v10];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic info active 0x%x changed 0x%x foreground %d", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, v4, v5, v6, v7, v8, v9, v10];
  }
  v2 = ;

  return v2;
}

- (void)_refreshRouteMetrics
{
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath", buf, 2u);
  }

  routeManager = self->routeManager;
  NStatManagerQueryAllSourcesUpdate();
}

uint64_t __46__NetworkAnalyticsEngine__refreshRouteMetrics__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath: queried all sources", v4, 2u);
  }

  return [*(a1 + 32) _refreshRouteMetricsComplete];
}

- (void)_refreshRouteMetricsComplete
{
  routeMetricsRefreshCompletionBlock = self->routeMetricsRefreshCompletionBlock;
  if (routeMetricsRefreshCompletionBlock)
  {
    routeMetricsRefreshCompletionBlock[2](routeMetricsRefreshCompletionBlock, a2);
    v4 = self->routeMetricsRefreshCompletionBlock;
    self->routeMetricsRefreshCompletionBlock = 0;
  }
}

- (id)lastScoreExits
{
  v10[4] = *MEMORY[0x277D85DE8];
  lastScoreExit = self->lastScoreExit;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->lastScoreExit[0]];
  v10[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[1]];
  v10[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[2]];
  v10[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[3]];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_hashPrimaryKeyInPlace:(char *)place withSalt:(id)salt
{
  v26 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  *len = 0;
  v6 = 0;
  if ([NetworkEpoch parsePrimaryKeyStr:place majorIDLengthInBytes:&len[1] minorIDLengthInBytes:len])
  {
    v6 = saltCopy != 0;
    if (saltCopy)
    {
      v7 = [saltCopy length];
      bytes = [saltCopy bytes];
      v9 = len[1];
      v10 = &place[len[1] + 1];
      if (v7 >= len[1])
      {
        v11 = len[1];
      }

      else
      {
        v11 = v7;
      }

      if (v11 >= 1)
      {
        v12 = bytes;
        placeCopy = place;
        do
        {
          v14 = *v12++;
          *placeCopy++ ^= v14;
          --v11;
        }

        while (v11);
      }

      v15 = len[0];
      if (v7 < len[0])
      {
        v15 = v7;
      }

      if (v15 >= 1)
      {
        v16 = v10;
        do
        {
          v17 = *bytes++;
          *v16++ ^= v17;
          --v15;
        }

        while (v15);
      }

      CC_SHA256(place, v9, md);
      CC_SHA256(v10, len[0], v24);
      v18 = 0;
      *place = 0u;
      *(place + 1) = 0u;
      *(place + 2) = 0u;
      *(place + 3) = 0u;
      placeCopy2 = place;
      do
      {
        snprintf(placeCopy2, 3uLL, "%02x", md[v18]);
        snprintf(placeCopy2 + 17, 3uLL, "%02x", v24[v18++]);
        placeCopy2 += 2;
      }

      while (v18 != 8);
      place[16] = 45;
      place[33] = 0;
    }

    else
    {
      v20 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *md = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "Hash salt is nil.", md, 2u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_hashPrimaryKey:(id)key withSalt:(id)salt
{
  v34 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  saltCopy = salt;
  if (!keyCopy)
  {
    v12 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "primaryKeyString is null.", buf, 2u);
    }

    goto LABEL_19;
  }

  if ([keyCopy length] > 0x40)
  {
LABEL_19:
    v21 = @"HASH-FAILED";
    goto LABEL_20;
  }

  v32 = 0u;
  v33 = 0u;
  *buf = 0u;
  v31 = 0u;
  uTF8String = [keyCopy UTF8String];
  v9 = uTF8String;
  if (uTF8String && *uTF8String)
  {
    buf[0] = *uTF8String;
    v10 = 1;
    while (v10 != 63)
    {
      v11 = uTF8String[v10];
      buf[v10++] = v11;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    HIBYTE(v33) = 0;
LABEL_17:
    if ([(NetworkAnalyticsEngine *)self _hashPrimaryKeyInPlace:buf withSalt:saltCopy])
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
LABEL_20:
      v20 = v21;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  fastestEncoding = [keyCopy fastestEncoding];
  v14 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_FAULT))
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = v14;
    v17 = [v15 localizedNameOfStringEncoding:fastestEncoding];
    v18 = v17;
    v19 = "<empty>";
    v24 = 138478339;
    v25 = keyCopy;
    if (!v9)
    {
      v19 = "NULL";
    }

    v26 = 2112;
    v27 = v17;
    v28 = 2080;
    v29 = v19;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_FAULT, "Non-nil primaryKeyString %{private}@ with encoding %@ has %s UTF-8 representation", &v24, 0x20u);
  }

  v20 = @"HASH-FAILED";
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)hashPrimaryKey:(id)key
{
  if (sharedInstance_3)
  {
    v4 = [sharedInstance_3 _hashPrimaryKey:key];
  }

  else
  {
    v4 = @"HASH-FAILED";
  }

  return v4;
}

+ (id)hashPrimaryKey:(id)key withSalt:(id)salt
{
  if (sharedInstance_3)
  {
    v5 = [sharedInstance_3 _hashPrimaryKey:key withSalt:salt];
  }

  else
  {
    v5 = @"HASH-FAILED";
  }

  return v5;
}

- (void)_createJournalRecordOfType:(unsigned __int8)type forInterface:(int64_t)interface fromDict:(id)dict
{
  typeCopy = type;
  v40 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  switch(typeCopy)
  {
    case 3:
      if (self->_isInternalBuild)
      {
        v19 = malloc_type_malloc(0x18uLL, 0x3AAA4AC2uLL);
        if (!v19)
        {
          [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
        }

        v10 = v19;
        if (![(NetworkAnalyticsEngine *)self _populateInterfaceTimelineJournalRecord:v19 forInterface:interface fromDict:dictCopy])
        {
          goto LABEL_23;
        }

        v17 = 24;
        goto LABEL_14;
      }

      break;
    case 2:
      v18 = malloc_type_malloc(0x70uLL, 0xE1D437F2uLL);
      if (!v18)
      {
        [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
      }

      v10 = v18;
      if (![(NetworkAnalyticsEngine *)self _populateLIMJournalRecord:v18 fromKernelDict:dictCopy])
      {
        goto LABEL_23;
      }

      v17 = 112;
      goto LABEL_14;
    case 1:
      v9 = malloc_type_malloc(0x58uLL, 0xBA478599uLL);
      if (!v9)
      {
        [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
      }

      v10 = v9;
      v34 = [dictCopy objectForKeyedSubscript:@"CellFingerprintTriggered"];
      bOOLValue = [v34 BOOLValue];
      v11 = [dictCopy objectForKeyedSubscript:@"PrimaryKey"];
      uTF8String = [v11 UTF8String];
      v32 = [dictCopy objectForKeyedSubscript:@"LOI"];
      integerValue = [v32 integerValue];
      v12 = [dictCopy objectForKeyedSubscript:@"InterfaceType"];
      integerValue2 = [v12 integerValue];
      v14 = [dictCopy objectForKeyedSubscript:@"LoadedLQM"];
      intValue = [v14 intValue];
      v16 = [dictCopy objectForKeyedSubscript:@"NetworkAttachmentFaulty"];
      LODWORD(v29) = [v16 unsignedIntValue];
      LOBYTE(integerValue2) = [(NetworkAnalyticsEngine *)self _populateLQMJournalRecord:v10 fromCellFingerprint:bOOLValue key:uTF8String atLOI:integerValue ofInterfaceType:integerValue2 lqm:intValue isFaulty:v29];

      if ((integerValue2 & 1) == 0)
      {
        goto LABEL_23;
      }

      v17 = 88;
LABEL_14:
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v17];
      v21 = [(NetworkAnalyticsEngine *)self _appendJournalRecord:v20 withPreamble:v10];
      v22 = netepochsLogHandle;
      if (v21)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v23 = v22;
          LODWORD(buf) = 67109634;
          HIDWORD(buf) = typeCopy;
          v36 = 2048;
          v37 = [v20 length];
          v38 = 2112;
          v39 = v20;
          v24 = "Appended a new journal record in memory, type: %d length: %lu record: %@";
          v25 = v23;
          v26 = OS_LOG_TYPE_DEBUG;
LABEL_21:
          _os_log_impl(&dword_23255B000, v25, v26, v24, &buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
        LODWORD(buf) = 67109634;
        HIDWORD(buf) = typeCopy;
        v36 = 2048;
        v37 = [v20 length];
        v38 = 2112;
        v39 = v20;
        v24 = "Failed to append a new journal record in memory, type: %d length: %lu record: %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
        goto LABEL_21;
      }

LABEL_23:
      free(v10);
      break;
    default:
      v27 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = typeCopy;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Unknown journal type %d", &buf, 8u);
      }

      break;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_populateLQMJournalRecord:(id *)record fromCellFingerprint:(BOOL)fingerprint key:(const char *)key atLOI:(int64_t)i ofInterfaceType:(int64_t)type lqm:(int)lqm isFaulty:(unsigned int)faulty
{
  v44 = *MEMORY[0x277D85DE8];
  if (!key || (v10 = *key) == 0)
  {
    v21 = netepochsLogHandle;
    v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      goto LABEL_24;
    }

    v23 = "<empty>";
    if (!key)
    {
      v23 = "NULL";
    }

    LODWORD(v42[0]) = 136315138;
    *(v42 + 4) = v23;
    v24 = "primaryKey is %s. Dropping the LQM journal record.";
    v25 = v42;
    v26 = v21;
    v27 = OS_LOG_TYPE_ERROR;
LABEL_14:
    v28 = 12;
LABEL_23:
    _os_log_impl(&dword_23255B000, v26, v27, v24, v25, v28);
    LOBYTE(v22) = 0;
    goto LABEL_24;
  }

  lqmCopy = lqm;
  iCopy = i;
  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  LOBYTE(v42[0]) = v10;
  v16 = 1;
  do
  {
    if (v16 == 63)
    {
      HIBYTE(v43) = 0;
      if (fingerprint)
      {
        goto LABEL_7;
      }

LABEL_16:
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v20 = v30;

      goto LABEL_17;
    }

    v17 = key[v16];
    *(v42 + v16++) = v17;
  }

  while (v17);
  if (!fingerprint)
  {
    goto LABEL_16;
  }

LABEL_7:
  v18 = prevCellFpTimeStamp;
  if (!prevCellFpTimeStamp)
  {
    v18 = currCellFpTimeStamp;
  }

  [v18 timeIntervalSince1970];
  v20 = v19;
LABEL_17:
  if (![(NetworkAnalyticsEngine *)self _hashPrimaryKeyInPlace:v42 withSalt:self->_hashSalt])
  {
    v32 = netepochsLogHandle;
    v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      goto LABEL_24;
    }

    LOWORD(v38) = 0;
    v24 = "Hashing of the primary key failed. Dropping the LQM journal record.";
    v25 = &v38;
    v26 = v32;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 2;
    goto LABEL_23;
  }

  v31 = netepochsLogHandle;
  v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if ((type - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (v22)
    {
      v38 = 136380931;
      typeCopy = key;
      v40 = 2081;
      v41 = v42;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "Populating a new LQM journal record for primaryKey = %{private}s (%{private}s)", &v38, 0x16u);
    }

    v34 = 0;
    *&record->var0.var0 = 0u;
    *&record->var1[56] = 0;
    *&record->var1[24] = 0u;
    *&record->var1[40] = 0u;
    *&record->var0.var5 = 0u;
    *&record->var1[8] = 0u;
    *&record->var0.var0 = 513;
    *&record->var0.var3 = v20;
    *(&record->var0.var1 + 2) = type;
    while (1)
    {
      v35 = *(v42 + v34);
      *(&record->var0.var5 + v34) = v35;
      if (!v35)
      {
        break;
      }

      if (++v34 == 63)
      {
        record->var1[55] = 0;
        break;
      }
    }

    record->var1[56] = iCopy;
    record->var1[57] = type;
    record->var1[58] = lqmCopy;
    v36 = +[NetworkStateRelay getStateRelayFor:](NetworkStateRelay, "getStateRelayFor:", [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterfaceType:type]);
    record->var1[60] = [v36 radioTechnology];
    record->var1[59] = faulty;

    LOBYTE(v22) = 1;
  }

  else if (v22)
  {
    v38 = 134217984;
    typeCopy = type;
    v24 = "Interface type %ld is neither cell nor wifi";
    v25 = &v38;
    v26 = v31;
    v27 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

LABEL_24:
  v33 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_populateLIMJournalRecord:(id *)record fromKernelDict:(id)dict
{
  v64 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:&unk_2847EF998];
  unsignedIntValue = [v7 unsignedIntValue];

  if (unsignedIntValue == 2)
  {
    v13 = 3;
    v14 = 1;
  }

  else
  {
    if (unsignedIntValue != 1)
    {
      if (unsignedIntValue)
      {
        goto LABEL_18;
      }

      v9 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v10 = "Interface type for LIM record not found in Kernel dict";
      v11 = v9;
      v12 = 2;
      goto LABEL_17;
    }

    v13 = 5;
    v14 = 2;
  }

  *&record->var6 = 0u;
  *&record->var8 = 0u;
  *&record->var2 = 0u;
  *&record->var4 = 0u;
  *&record->var0.var5 = 0u;
  *&record->var1[8] = 0u;
  *&record->var0.var0 = 0u;
  *&record->var0.var0 = 258;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  *&record->var0.var3 = v16;

  *(&record->var0.var1 + 2) = v14;
  if (v13 == 3)
  {
    netSignature = [dictCopy objectForKeyedSubscript:&unk_2847EF9B0];
    if (netSignature)
    {
LABEL_10:
      v20 = [netSignature length];
      v21 = netepochsLogHandle;
      if (v20 >= 0x19)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          *buf = 134218496;
          v59 = [netSignature length];
          v60 = 2048;
          v61 = 24;
          v62 = 2048;
          v63 = v13;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to read LIM raw signature: size (%lu) greater than allowed (%lu) for interface: %ld", buf, 0x20u);
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v59 = netSignature;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "limSignature in, journal stage: %@", buf, 0xCu);
      }

      memcpy(&record->var0.var5, [netSignature bytes], objc_msgSend(netSignature, "length"));
      v27 = [dictCopy objectForKeyedSubscript:&unk_2847EF9C8];
      *&record->var1[16] = [v27 unsignedLongLongValue];

      v28 = [dictCopy objectForKeyedSubscript:&unk_2847EF9E0];
      record->var2 = [v28 unsignedLongLongValue];

      v29 = [dictCopy objectForKeyedSubscript:&unk_2847EF9F8];
      record->var3 = [v29 unsignedLongLongValue];

      v30 = [dictCopy objectForKeyedSubscript:&unk_2847EFA10];
      record->var4 = [v30 unsignedLongLongValue];

      v31 = [dictCopy objectForKeyedSubscript:&unk_2847EFA28];
      record->var5 = [v31 unsignedLongLongValue];

      v32 = [dictCopy objectForKeyedSubscript:&unk_2847EFA40];
      record->var6 = [v32 unsignedLongLongValue];

      v33 = [dictCopy objectForKeyedSubscript:&unk_2847EFA58];
      record->var7 = [v33 unsignedLongLongValue];

      v34 = [dictCopy objectForKeyedSubscript:&unk_2847EFA70];
      record->var8 = [v34 unsignedLongLongValue];

      v35 = [dictCopy objectForKeyedSubscript:&unk_2847EFA88];
      LOBYTE(record->var9) = [v35 unsignedIntValue];

      v36 = [dictCopy objectForKeyedSubscript:&unk_2847EFAA0];
      BYTE1(record->var9) = [v36 unsignedIntValue];

      BYTE2(record->var9) = v14;
      v56[0] = @"limDLMaxBandwidthBps";
      v55 = [dictCopy objectForKeyedSubscript:&unk_2847EF9C8];
      v57[0] = v55;
      v56[1] = @"limULMaxBandwidthBps";
      v54 = [dictCopy objectForKeyedSubscript:&unk_2847EF9E0];
      v57[1] = v54;
      v56[2] = @"limPacketLossPercent";
      v53 = [dictCopy objectForKeyedSubscript:&unk_2847EF9F8];
      v57[2] = v53;
      v56[3] = @"limPacketOOOPercent";
      v52 = [dictCopy objectForKeyedSubscript:&unk_2847EFA10];
      v57[3] = v52;
      v56[4] = @"limRTTVarianceMilliseconds";
      v37 = [dictCopy objectForKeyedSubscript:&unk_2847EFA28];
      v57[4] = v37;
      v56[5] = @"limRTTMinMilliseconds";
      v38 = [dictCopy objectForKeyedSubscript:&unk_2847EFA40];
      v57[5] = v38;
      v56[6] = @"limRTTAvgMilliseconds";
      v39 = [dictCopy objectForKeyedSubscript:&unk_2847EFA58];
      v57[6] = v39;
      v56[7] = @"limConnTimeoutPercent";
      v40 = [dictCopy objectForKeyedSubscript:&unk_2847EFA70];
      v57[7] = v40;
      v56[8] = @"limDLDetected";
      v41 = [dictCopy objectForKeyedSubscript:&unk_2847EFA88];
      v57[8] = v41;
      v56[9] = @"limULDetected";
      v42 = [dictCopy objectForKeyedSubscript:&unk_2847EFAA0];
      v57[9] = v42;
      v56[10] = @"limInterfaceType";
      v43 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v57[10] = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:11];

      v45 = v44;
      v46 = AnalyticsSendEventLazy();
      v47 = netepochsLogHandle;
      if (v46)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v59 = v45;
          v48 = "Posted LIM kernel metric: %@";
          v49 = v47;
          v50 = OS_LOG_TYPE_DEFAULT;
          v51 = 12;
LABEL_27:
          _os_log_impl(&dword_23255B000, v49, v50, v48, buf, v51);
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v48 = "Failed to post LIM kernel metric";
        v49 = v47;
        v50 = OS_LOG_TYPE_ERROR;
        v51 = 2;
        goto LABEL_27;
      }

      v24 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v17 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
    durable = [v17 durable];
    netSignature = [durable netSignature];

    if (netSignature)
    {
      goto LABEL_10;
    }
  }

  v23 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v59 = v13;
    v10 = "Failed to read LIM raw signature for interface: %ld";
    v11 = v23;
    v12 = 12;
LABEL_17:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

LABEL_18:
  v24 = 0;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)_populateInterfaceTimelineJournalRecord:(id *)record forInterface:(int64_t)interface fromDict:(id)dict
{
  v29 = *MEMORY[0x277D85DE8];
  *&record->var0.var0 = 0;
  *&record->var0.var3 = 0;
  record->var0.var5 = 0;
  *&record->var0.var0 = 259;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  *&record->var0.var3 = (v8 * 1000.0);

  *(&record->var0.var1 + 1) |= 1u;
  *(&record->var0.var1 + 2) = interface;
  v9 = [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterfaceType:interface];
  v10 = [NetworkStateRelay getStateRelayFor:v9];
  v11 = v10;
  if (v9 == 3)
  {
    active = [v10 active];
    primary = [v11 primary];
    v20 = 0;
    if (primary)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v19 = v23 | active;
  }

  else if (v9 == 5)
  {
    active2 = [v10 active];
    if ([v11 primary])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | active2 | (4 * ([v11 radioTechnology] == 2));
    v15 = v14 | (8 * ([v11 radioTechnology] == 11));
    v16 = v15 | (16 * ([v11 radioTechnology] == 10));
    v17 = [v11 nrFrequencyBand] == 1;
    v18 = v16 | (32 * v17) | (([v11 nrFrequencyBand] == 2) << 6);
    v19 = v18 | ((cellHighThroughputState == 1) << 7);
    v20 = dword_2814D2FF8 & 3;
  }

  else
  {
    v24 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v27 = 134217984;
      interfaceCopy = interface;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_INFO, "Unhandled type: %ld", &v27, 0xCu);
    }

    v20 = 0;
    v19 = 0;
  }

  LOWORD(record->var0.var5) = v19 | (v20 << 8);
  HIWORD(record->var0.var5) = 0;
  *(&record->var0.var5 + 2) = 0;

  v25 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_appendJournalRecord:(id)record withPreamble:(id *)preamble
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (*(&preamble->var1 + 1))
  {
    v19 = self->memoryJournalRecords;
    objc_sync_enter(v19);
    [(NSMutableArray *)self->memoryJournalRecords addObject:recordCopy];
    if ([(NSMutableArray *)self->memoryJournalRecords count]>= 0x41)
    {
      [(NSMutableArray *)self->memoryJournalRecords removeObjectAtIndex:0];
    }

    objc_sync_exit(v19);
  }

  else
  {
    journalRecords = self->journalRecords;
    if (!journalRecords)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v9 = self->journalRecords;
      self->journalRecords = v8;

      journalRecords = self->journalRecords;
      if (!journalRecords)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    [(NSMutableData *)journalRecords appendData:recordCopy];
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->journalRecords;
      v12 = v10;
      v23 = 138478083;
      v24 = recordCopy;
      v25 = 2048;
      v26 = [(NSMutableData *)v11 length];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Appending a new journal record in memory, record = %{private}@, pending records = %lu bytes", &v23, 0x16u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    if (-[NSMutableData length](self->journalRecords, "length") >> 5 > 0x270 || ([date timeIntervalSinceDate:self->journalLastFlushed], v14 > 43200.0))
    {
      if (![(NetworkAnalyticsEngine *)self _flushAllJournalRecords])
      {
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->journalRecords;
          v17 = v15;
          v18 = [(NSMutableData *)v16 length];
          v23 = 134217984;
          v24 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Failed to flush journal records in the database, float is %lu bytes", &v23, 0xCu);
        }
      }
    }
  }

  v20 = 1;
LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)_flushAllJournalRecords
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([(NSMutableData *)self->journalRecords length])
  {
    v4 = [JournalTimeStamp getCurrentJournalNameUsingPrefix:@"AnalyticsMixedJournal"];
    ieService = self->ieService;
    v20 = 0;
    v6 = [(ImpoExpoService *)ieService exportItemUnderName:v4 lastUpdated:&v20 verificationBlock:&__block_literal_global_26];
    v7 = v20;
    if (v6)
    {
      [(NSMutableData *)v6 appendData:self->journalRecords];
    }

    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      journalRecords = self->journalRecords;
      v10 = v8;
      v11 = [(NSMutableData *)journalRecords length];
      *buf = 134218242;
      v22 = v11;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Flushing %lu bytes worth of journal records in %@", buf, 0x16u);
    }

    v12 = v6;
    if (!v6)
    {
      v12 = self->journalRecords;
    }

    v13 = [(ImpoExpoService *)self->ieService importItemUnderName:v4 item:v12];
    if (!v13)
    {
      v14 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v4;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Flushing internal failure in ImpoExpoService for %@", buf, 0xCu);
      }
    }

    v15 = self->journalRecords;
    self->journalRecords = 0;

    date = [MEMORY[0x277CBEAA8] date];
    journalLastFlushed = self->journalLastFlushed;
    self->journalLastFlushed = date;
  }

  else
  {
    v13 = 1;
  }

  objc_autoreleasePoolPop(v3);
  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __49__NetworkAnalyticsEngine__flushAllJournalRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_skimMemoryJournalFor:(unsigned __int8)for
{
  v5 = self->memoryJournalRecords;
  objc_sync_enter(v5);
  memoryJournalRecords = self->memoryJournalRecords;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NetworkAnalyticsEngine__skimMemoryJournalFor___block_invoke;
  v10[3] = &__block_descriptor_33_e23_B32__0__NSData_8Q16_B24l;
  forCopy = for;
  v7 = [(NSMutableArray *)memoryJournalRecords indexesOfObjectsPassingTest:v10];
  v8 = [(NSMutableArray *)self->memoryJournalRecords objectsAtIndexes:v7];

  objc_sync_exit(v5);

  return v8;
}

- (void)_getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke;
  v13[3] = &unk_27898B6A0;
  onCopy = on;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(queue, v13);
}

void __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(a1 + 56);
  switch(v3)
  {
    case 3:
      goto LABEL_4;
    case 7:
      [*(a1 + 32) _computeAndApplyLoadedLqmFrom:dword_2814D301C oldLqm:dword_2814D301C onInterfaceType:7 loadedLqmAuditRecords:v2];
      v5 = [NetworkAnalyticsEngine getLoadedLQMOn:*(a1 + 56)];
      break;
    case 5:
LABEL_4:
      v4 = [*(a1 + 32) _epochForInterfaceType:?];
      if (v4)
      {
        [*(a1 + 32) _computeAndApplyLoadedLqmFrom:*(&realTimeLqm + *(a1 + 56)) oldLqm:*(&realTimeLqm + *(a1 + 56)) onInterfaceType:*(a1 + 56) loadedLqmAuditRecords:v2];
        v5 = [NetworkAnalyticsEngine getLoadedLQMOn:*(a1 + 56)];
      }

      else
      {
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(a1 + 56);
          *buf = 67109120;
          v17 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Cannot get auditable loaded LQM on interface type %u as Epoch is nil", buf, 8u);
        }

        v5 = -2;
      }

      break;
    default:
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 56);
        *buf = 67109120;
        v17 = v7;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Cannot get auditable loaded LQM on interface type %u (unimplemented)", buf, 8u);
      }

      v5 = -2;
      break;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke_281;
    block[3] = &unk_27898D960;
    v14 = *(a1 + 48);
    v15 = v5;
    v13 = v2;
    dispatch_async(v10, block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_trackRealTimeLqmLastUpdatedOnInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v13 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5 * 1000.0;

  realTimeLqmLastUpdated[typeCopy] = v6;
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = typeCopy;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "realTimeLqm was last updated on interface type %ld at %f", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clientTransactionsRelease
{
  activeEpochTransaction = [(NetworkAnalyticsEngine *)self activeEpochTransaction];

  if (activeEpochTransaction)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "stop holding os_transaction", v5, 2u);
    }

    self->xpcShutdown = 1;
    [(NetworkAnalyticsEngine *)self setActiveEpochTransaction:0];
  }
}

- (void)shutdown
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "network analytics engine: saving context for %p", &v5, 0xCu);
  }

  [(NetworkAnalyticsEngine *)self _flushAllJournalRecords];
  [(AnalyticsWorkspace *)self->super.workspace save];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveCellCarrierName
{
  v15 = *MEMORY[0x277D85DE8];
  serverConnection = self->serverConnection;
  v3 = _CTServerConnectionCopyProviderNameUsingCarrierBundle();
  v4 = v3;
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v12 = v4;
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyProviderNameUsingCarrierBundle returned with error(%d, %d)", buf, 0xEu);
    }
  }

  v8 = 0;
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)_retrieveCellId
{
  v12 = *MEMORY[0x277D85DE8];
  serverConnection = self->serverConnection;
  v4 = _CTServerConnectionCellMonitorCopyCellInfo();
  v5 = v4;
  v6 = HIDWORD(v4);
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v11[0] = v5;
    LOWORD(v11[1]) = 1024;
    *(&v11[1] + 2) = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCellMonitorCopyCellInfo failed with error(%d, %d)", buf, 0xEu);
  }

  [(NetworkAnalyticsEngine *)self _setRadioTechnology:0 forInterfaceType:5];
  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_retrieveCellId:(id)id
{
  idCopy = id;
  v5 = +[CoreTelephonyShim sharedInstance];
  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__NetworkAnalyticsEngine__retrieveCellId___block_invoke;
  v8[3] = &unk_27898D988;
  v8[4] = self;
  v9 = idCopy;
  v7 = idCopy;
  [v5 copyCellInfoOnQueue:queue completion:v8];
}

void __42__NetworkAnalyticsEngine__retrieveCellId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "[CoreTelephonyClient copyCellInfo:completion:] failed with error %@", &v9, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) _processCTCellInfo:v5];
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (int64_t)_processCTCellInfo:(id)info
{
  v32 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke;
  aBlock[3] = &unk_27898D9B0;
  aBlock[4] = &v22;
  aBlock[5] = &v18;
  aBlock[6] = v26;
  v5 = _Block_copy(aBlock);
  legacyInfo = [infoCopy legacyInfo];
  if (!legacyInfo)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke_329;
    v15[3] = &unk_27898D9D8;
    v16 = v5;
    [legacyInfo enumerateObjectsUsingBlock:v15];
    v7 = v16;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = legacyInfo;
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
    v9 = v8;
    if (v8 && [v8 isEqualToString:*MEMORY[0x277CC3890]])
    {
      (*(v5 + 2))(v5, v7);
    }
  }

  else
  {
LABEL_9:
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v29 = v11;
      v30 = 2112;
      v31 = legacyInfo;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected object of class %@ returned as legacyInfo: %@", buf, 0x16u);
    }
  }

LABEL_11:

  [(NetworkAnalyticsEngine *)self _setRadioTechnology:*(v19 + 24) forInterfaceType:5];
  v12 = v23[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(v26, 8);

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3878]];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Finding RAT and cell id from cellDict: %@", &v18, 0xCu);
  }

  if (v4)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CC38D0]])
    {
      v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3918]];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = 0;
          [v6 getBytes:&v18 range:{13, 3}];
          *(*(a1[4] + 8) + 24) = v18;
          *(*(a1[5] + 8) + 24) = 6;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:*MEMORY[0x277CC38C8]])
    {
      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3868]];
      if (!v7)
      {
        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      *(*(a1[4] + 8) + 24) = [v7 intValue];
      v9 = *(a1[5] + 8);
      v10 = 5;
LABEL_15:
      *(v9 + 24) = v10;
LABEL_9:

      goto LABEL_10;
    }

    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3870]];
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    Type = CFNumberGetType(v7);
    if (Type == kCFNumberSInt32Type)
    {
      v12 = (*(a1[6] + 8) + 24);
      v13 = v7;
      v14 = kCFNumberSInt32Type;
    }

    else
    {
      if (Type == kCFNumberSInt64Type)
      {
        CFNumberGetValue(v7, kCFNumberSInt64Type, (*(a1[4] + 8) + 24));
LABEL_24:
        if ([v4 isEqualToString:*MEMORY[0x277CC38E8]])
        {
          v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3898]];
          if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v15 intValue] > 0)
          {
            v16 = 10;
          }

          else
          {
            v16 = 2;
          }

          *(*(a1[5] + 8) + 24) = v16;

          goto LABEL_9;
        }

        if ([v4 isEqualToString:*MEMORY[0x277CC38F0]])
        {
          v9 = *(a1[5] + 8);
          v10 = 11;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC38E0]])
        {
          v9 = *(a1[5] + 8);
          v10 = 3;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC3900]])
        {
          v9 = *(a1[5] + 8);
          v10 = 4;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC38D8]])
        {
          v9 = *(a1[5] + 8);
          v10 = 7;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC3908]])
        {
          v9 = *(a1[5] + 8);
          v10 = 8;
        }

        else
        {
          v17 = [v4 isEqualToString:*MEMORY[0x277CC38F8]];
          v9 = *(a1[5] + 8);
          if (v17)
          {
            v10 = 9;
          }

          else
          {
            v10 = 1;
          }
        }

        goto LABEL_15;
      }

      v12 = (*(a1[6] + 8) + 24);
      v13 = v7;
      v14 = kCFNumberIntType;
    }

    CFNumberGetValue(v13, v14, v12);
    *(*(a1[4] + 8) + 24) = *(*(a1[6] + 8) + 24);
    goto LABEL_24;
  }

LABEL_10:

  v8 = *MEMORY[0x277D85DE8];
}

void __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke_329(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
    v9 = v8;
    if (v8 && [v8 isEqualToString:*MEMORY[0x277CC3890]])
    {
      (*(*(a1 + 32) + 16))();
      *a4 = 1;
    }
  }

  else
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Unexpected object of class %@ found in legacyInfo array: %@", &v15, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __83__NetworkAnalyticsEngine__cellNetworkChangeForInterface_roamingEvent_subscription___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 >= 1 && *(*(*(a1 + 48) + 8) + 40))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lld", *(*(*(a1 + 48) + 8) + 40), a2];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412803;
      v17 = v8;
      v18 = 2113;
      v19 = v9;
      v20 = 2048;
      v21 = a2;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unable to construct primary key on %@, carrier name = %{private}@, cell id = %lld", buf, 0x20u);
    }
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = *(a1 + 64);
    *buf = 138412803;
    v17 = v11;
    v18 = 2113;
    v19 = v12;
    v20 = 1024;
    LODWORD(v21) = v13;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Cell network changed: interface-name %@ primary-key %{private}@ roaming %d", buf, 0x1Cu);
  }

  result = [*(a1 + 40) _primaryKeyChange:*(*(*(a1 + 56) + 8) + 40) interfaceName:*(a1 + 32) interfaceType:5 roamingEvent:*(a1 + 64)];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_retrieveICCID
{
  v15 = *MEMORY[0x277D85DE8];
  serverConnection = self->serverConnection;
  v4 = _CTServerConnectionCopySIMIdentity();
  v5 = v4;
  v6 = HIDWORD(v4);
  if (HIDWORD(v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7)
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "_CTServerConnectionCopySIMIdentity returned with error(%d, %d)", buf, 0xEu);
    }
  }

  v9 = 0;
  [(NetworkAnalyticsEngine *)self _updateICCID:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateICCID:(id)d
{
  dCopy = d;
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NetworkAnalyticsEngine__updateICCID___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __39__NetworkAnalyticsEngine__updateICCID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 448)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 448), *(a1 + 32));
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 40) + 448);
      *buf = 138477827;
      v12 = v3;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Current data SIM ICCID changed to %{private}@", buf, 0xCu);
    }

    v9 = @"ICCID";
    v4 = *(*(a1 + 40) + 448);
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB68] null];
    }

    v10 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    if (!v4)
    {
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"kNotificationCurrentICCIDChange" object:*(a1 + 40) userInfo:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processCellLinkStateNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = notificationCopy;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB link state notification payload = %@", &v14, 0xCu);
      }

      v21.location = 1;
      v21.length = 1;
      CFDataGetBytes(notificationCopy, v21, &cellStateChangeBitmask);
      if (cellStateChangeBitmask)
      {
        v6 = 1;
        v22.location = 2;
        v22.length = 1;
        CFDataGetBytes(notificationCopy, v22, &cellLqmState);
        if ([(NetworkAnalyticsEngine *)self _getCellInternetStatus])
        {
          goto LABEL_10;
        }

        v13 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = notificationCopy;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "eLQM: Not consuming LQM as cell Internet is down: payload = %@", &v14, 0xCu);
        }
      }

      v6 = 0;
LABEL_10:
      if ((cellStateChangeBitmask & 2) != 0 && [(NetworkAnalyticsEngine *)self _getCellInternetStatus])
      {
        v10 = 1;
        v23.location = 3;
        v23.length = 1;
        CFDataGetBytes(notificationCopy, v23, &cellRrcState);
      }

      else
      {
        v10 = 0;
      }

      if ((cellStateChangeBitmask & 4) != 0)
      {
        v24.location = 4;
        v24.length = 1;
        CFDataGetBytes(notificationCopy, v24, &cellInterfaceState);
      }

      else if ((v6 | v10) != 1)
      {
LABEL_20:
        if (v10)
        {
          [(NetworkAnalyticsEngine *)self handleRRCChange];
        }

        if (v6)
        {
          [(NetworkAnalyticsEngine *)self handleLQMChange];
        }

        goto LABEL_24;
      }

      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138413058;
        v15 = notificationCopy;
        v16 = 1024;
        *v17 = cellLqmState;
        *&v17[4] = 1024;
        *&v17[6] = cellRrcState;
        v18 = 1024;
        v19 = cellInterfaceState;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "eLQM: Updated cell states (payload = %@): (LQM = %d, RRC = %d, INTF = %d)", &v14, 0x1Eu);
      }

      goto LABEL_20;
    }
  }

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v14 = 134218242;
    v15 = notificationCopy;
    v16 = 2112;
    *v17 = objc_opt_class();
    v9 = *v17;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "eLQM: Received BB link state notification payload %p or unexpected class %@", &v14, 0x16u);
  }

LABEL_24:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processCellLinkFingerprintNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = notificationCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB link fingerprint notification payload = %@", buf, 0xCu);
    }

    objc_storeStrong(&prevCellFpTimeStamp, currCellFpTimeStamp);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = currCellFpTimeStamp;
    currCellFpTimeStamp = date;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], notificationCopy);
    queue = [(AnalyticsEngineCore *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__NetworkAnalyticsEngine_processCellLinkFingerprintNotification___block_invoke;
    v13[3] = &unk_27898DA28;
    v13[4] = self;
    v13[5] = buf;
    dispatch_async(queue, v13);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      *buf = 134218242;
      *&buf[4] = notificationCopy;
      *&buf[12] = 2112;
      *&buf[14] = objc_opt_class();
      v11 = *&buf[14];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "eLQM: Received BB link fingerprint notification payload %p or unexpected class %@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __65__NetworkAnalyticsEngine_processCellLinkFingerprintNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _extractCellLinkFingerprintFrom:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)processCellTrafficClassNotification:(id)notification
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v24 = notificationCopy;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB traffic class enable/disable notification: payload = %@", buf, 0xCu);
      }

      Length = CFDataGetLength(notificationCopy);
      if (Length == 8)
      {
        *buffer = 0;
        v27.location = 4;
        v27.length = 4;
        CFDataGetBytes(notificationCopy, v27, buffer);
        cellTrafficClassState = *buffer != 0;
        v7 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
LABEL_14:
          v21 = @"State";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:cellTrafficClassState != 0];
          v22 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

          v17 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v24 = @"kNotificationCellTrafficClassReportCapable";
            *&v24[8] = 1024;
            LODWORD(v25) = cellTrafficClassState;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "eLQM: Posting SF notification with label = %@, cellTrafficClassState = %d", buf, 0x12u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"kNotificationCellTrafficClassReportCapable" object:self userInfo:v16];

          goto LABEL_17;
        }

        *buf = 67109376;
        *v24 = *buffer;
        *&v24[4] = 1024;
        *&v24[6] = cellTrafficClassState;
        v8 = "eLQM: Payload size is 8, second word %d, cellTrafficClassState %d";
        v9 = v7;
      }

      else
      {
        v13 = Length;
        if (Length < 2)
        {
          goto LABEL_14;
        }

        v28.location = 1;
        v28.length = 1;
        CFDataGetBytes(notificationCopy, v28, &cellTrafficClassState);
        v14 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = 67109376;
        *v24 = v13;
        *&v24[4] = 1024;
        *&v24[6] = cellTrafficClassState;
        v8 = "eLQM: Payload size is %d, cellTrafficClassState %d";
        v9 = v14;
      }

      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, v8, buf, 0xEu);
      goto LABEL_14;
    }
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    *buf = 134218242;
    *v24 = notificationCopy;
    *&v24[8] = 2112;
    v25 = objc_opt_class();
    v12 = v25;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "eLQM: Received BB traffic class enable/disable notification payload %p or unexpected class %@", buf, 0x16u);
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)processCellDataStallNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v17 = notificationCopy;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB data stall enable/disable notification: payload = %@", buf, 0xCu);
      }

      Length = CFDataGetLength(notificationCopy);
      if (Length == 8)
      {
        *buffer = 0;
        v20.location = 4;
        v20.length = 4;
        CFDataGetBytes(notificationCopy, v20, buffer);
        cellDataStallState = *buffer != 0;
        v6 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = 67109376;
        *v17 = *buffer;
        *&v17[4] = 1024;
        *&v17[6] = cellDataStallState;
        v7 = "eLQM: Payload size is 8, second word %d, cellDataStallState %d";
        v8 = v6;
      }

      else
      {
        v12 = Length;
        if (Length < 2 || (v21.location = 1, v21.length = 1, CFDataGetBytes(notificationCopy, v21, &cellDataStallState), v13 = netepochsLogHandle, !os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO)))
        {
LABEL_14:
          if (trafficClassVersionInUse == 1)
          {
            trafficClassVersionInUse = 2;
            tcsBwInfo = 2;
            trafficClassStructureSize = 28;
          }

          goto LABEL_16;
        }

        *buf = 67109376;
        *v17 = v12;
        *&v17[4] = 1024;
        *&v17[6] = cellDataStallState;
        v7 = "eLQM: Payload size is %d, cellDataStallState %d";
        v8 = v13;
      }

      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, v7, buf, 0xEu);
      goto LABEL_14;
    }
  }

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    *buf = 134218242;
    *v17 = notificationCopy;
    *&v17[8] = 2112;
    v18 = objc_opt_class();
    v11 = v18;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "eLQM: Received BB data stall enable/disable notification payload %p or unexpected class %@", buf, 0x16u);
  }

LABEL_16:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processCellHighThroughputState:(id)state
{
  v18[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = cellHighThroughputState;
  if ([stateCopy unsignedShortValue] == v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 67109120;
      LODWORD(v14) = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "eLQM: Ignoring duplicate high throughput notification of value %d", &v13, 8u);
    }
  }

  else
  {
    cellHighThroughputState = [stateCopy unsignedShortValue];
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 67109120;
      LODWORD(v14) = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "eLQM: Processing BB high throughput enable/disable notification: high throughput state = %d", &v13, 8u);
    }

    trafficClassVersionInUse = 3;
    tcsBwInfo = 3;
    trafficClassStructureSize = 44;
    if (cellHighThroughputState != 1)
    {
      dword_2814D2FF8 = 0;
    }

    v17 = @"State";
    v8 = [MEMORY[0x277CCABB0] numberWithShort:cellHighThroughputState];
    v18[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];

    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = @"kNotificationCellThroughputAdvisoryCapable";
      v15 = 1024;
      v16 = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "eLQM: Posting throughput advisory  notification with label = %@, cellHighThroughputState = %d", &v13, 0x12u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kNotificationCellThroughputAdvisoryCapable" object:self userInfo:v9];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)processCellDataTransferTimeNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21.location = 3;
      v21.length = 1;
      CFDataGetBytes(notificationCopy, v21, &cellEstTransferTimeConfidence);
      v22.location = 4;
      v22.length = 4;
      CFDataGetBytes(notificationCopy, v22, &cellPayloadInfoULKB);
      v23.location = 8;
      v23.length = 4;
      CFDataGetBytes(notificationCopy, v23, &cellPayloadInfoDLKB);
      v24.location = 12;
      v24.length = 4;
      CFDataGetBytes(notificationCopy, v24, &cellEstTransferTimeULSecs);
      v25.location = 16;
      v25.length = 4;
      CFDataGetBytes(notificationCopy, v25, &cellEstTransferTimeDLSecs);
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138413570;
        v11 = notificationCopy;
        v12 = 1024;
        *v13 = cellPayloadInfoULKB;
        *&v13[4] = 1024;
        *&v13[6] = cellPayloadInfoDLKB;
        v14 = 1024;
        v15 = cellEstTransferTimeULSecs;
        v16 = 1024;
        v17 = cellEstTransferTimeDLSecs;
        v18 = 1024;
        v19 = cellEstTransferTimeConfidence;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB data transfer time notification: payload = %@, UL/DL = (%u, %u) KB, transfer time = (%u, %u) sec, confidence = %u", &v10, 0x2Au);
      }

      queue = [(AnalyticsEngineCore *)self queue];
      dispatch_async(queue, &__block_literal_global_351);
      goto LABEL_8;
    }
  }

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    queue = v7;
    v10 = 134218242;
    v11 = notificationCopy;
    v12 = 2112;
    *v13 = objc_opt_class();
    v8 = *v13;
    _os_log_impl(&dword_23255B000, queue, OS_LOG_TYPE_ERROR, "eLQM: Received BB data transfer time notification payload %p or unexpected class %@", &v10, 0x16u);

LABEL_8:
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __66__NetworkAnalyticsEngine_processCellDataTransferTimeNotification___block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  if (cellEstTransferTimeCompletionBlock)
  {
    v0 = _Block_copy(cellEstTransferTimeCompletionBlock);
    v1 = cellEstTransferTimeCompletionBlock;
    cellEstTransferTimeCompletionBlock = 0;

    v2 = cellEstTransferTimeRequestTimeStamp;
    cellEstTransferTimeRequestTimeStamp = 0;

    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = _Block_copy(v0);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Invoking completion block %p", &v8, 0xCu);
    }

    v0[2](v0);
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "eLQM: Couldn't invoke completion block", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processCellDataTransferTimeEnabledNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = notificationCopy;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB dynamic support for transfer time notification: payload = %@", &v9, 0xCu);
    }

    v14.location = 1;
    v14.length = 1;
    CFDataGetBytes(notificationCopy, v14, cellEstTransferTimeSupportedStatus);
  }

  else
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v9 = 134218242;
      v10 = notificationCopy;
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "eLQM: Received BB data transfer time enabled notification payload %p or unexpected class %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processCellLinkPowerCostNotification:(id)notification
{
  v21 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = notificationCopy;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost: payload = %@", buf, 0xCu);
    }

    *buffer = 0;
    if (CFDataGetLength(notificationCopy) < 3)
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        Length = CFDataGetLength(notificationCopy);
        *buf = 134217984;
        v18 = Length;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost, but not enough data in it (%ld bytes)", buf, 0xCu);
      }
    }

    else
    {
      v22.location = 1;
      v22.length = 1;
      CFDataGetBytes(notificationCopy, v22, buffer);
      v23.location = 2;
      v23.length = 1;
      CFDataGetBytes(notificationCopy, v23, &buffer[1]);
      v5 = [NetworkStateRelay getStateRelayFor:5];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        objc_sync_enter(v7);
        [v7 setPowerCostDL:buffer[1]];
        [v7 setPowerCostUL:buffer[0]];
        objc_sync_exit(v7);
      }

      else
      {
        v14 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost, but no engine to process it", buf, 2u);
        }
      }
    }
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      *buf = 134218242;
      v18 = notificationCopy;
      v19 = 2112;
      v20 = objc_opt_class();
      v10 = v20;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "eLQM: Received BB power cost notification payload %p or unexpected class %@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRRCChange
{
  v26[3] = *MEMORY[0x277D85DE8];
  v25[0] = @"State";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:cellRrcState != 0];
  v26[0] = v3;
  v25[1] = @"Detail";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:cellStateChangeBitmask == 7];
  v26[1] = v4;
  v25[2] = @"StateChangeTimestamp";
  v5 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v26[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v18 = @"kNotificationCellLinkStateChange";
    v19 = 1024;
    v20 = cellRrcState;
    v21 = 1024;
    v22 = cellStateChangeBitmask;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "eLQM: Posting RRC change notification with label = %@, state = %d, bitmask = %d, info = %@", buf, 0x22u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kNotificationCellLinkStateChange" object:self userInfo:v8];

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NetworkAnalyticsEngine_handleRRCChange__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);

  v12 = [NetworkStateRelay getStateRelayFor:5];
  [v12 setCellRrcConnected:cellRrcState != 0];
  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (cellRrcState)
    {
      v14 = "connected";
    }

    else
    {
      v14 = "idle";
    }

    *buf = 136315138;
    v18 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "cellRrcConnected updated to %s", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleLQMChange
{
  v3 = dword_2814D3014;
  dword_2814D3014 = cellLqmState;
  [(NetworkAnalyticsEngine *)self _trackRealTimeLqmLastUpdatedOnInterfaceType:5];
  queue = [(AnalyticsEngineCore *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NetworkAnalyticsEngine_handleLQMChange__block_invoke;
  v5[3] = &unk_27898D8C8;
  v5[4] = self;
  v7 = 5;
  v6 = v3;
  dispatch_async(queue, v5);
}

void __41__NetworkAnalyticsEngine_handleLQMChange__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:5];
  if (v2)
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 44);
      v5 = *(a1 + 40);
      v10 = 134218496;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = cellLqmState;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM upon eLQM notification on interface type %ld, LQM(old/new) = (%d/%d)", &v10, 0x18u);
    }

    [*(a1 + 32) _computeAndApplyLoadedLqmFrom:cellLqmState oldLqm:*(a1 + 40) onInterfaceType:*(a1 + 44)];
  }

  else
  {
    pendedLqm[*(a1 + 44)] = *(a1 + 40);
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 44);
      v8 = *(a1 + 40);
      v10 = 134218496;
      v11 = v7;
      v12 = 1024;
      v13 = v8;
      v14 = 1024;
      v15 = cellLqmState;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Epoch is nil upon eLQM notification, defer computing loaded LQM on interface type %ld, LQM(pended/new) = (%d/%d)", &v10, 0x18u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetCellStatesForXCTests
{
  cellLqmState = 0;
  cellRrcState = 0;
  cellInterfaceState = 0;
  cellTrafficClassState = 0;
  cellEstTransferTimeSupportedStatus[0] = 0;
  v2 = prevCellFpTimeStamp;
  prevCellFpTimeStamp = 0;

  v3 = currCellFpTimeStamp;
  currCellFpTimeStamp = 0;

  v4 = [NetworkStateRelay getStateRelayFor:5];
  [v4 setPowerCostUL:255];
  [v4 setPowerCostDL:255];
}

- (void)_retrieveDNSServersForEpoch:(id)epoch
{
  v38 = *MEMORY[0x277D85DE8];
  epochCopy = epoch;
  interfaceName = [epochCopy interfaceName];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = interfaceName;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Determine if %@ has DNS server", buf, 0xCu);
  }

  v6 = dns_configuration_copy();
  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v35 = interfaceName;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "learning DNS servers for %@ from dns_config", buf, 0xCu);
    }

    selfCopy = self;
    hasDNS = [epochCopy hasDNS];
    [hasDNS removeAllObjects];

    if (*(v6 + 12) < 1)
    {
      v31 = 0;
    }

    else
    {
      v10 = 0;
      v31 = 0;
      do
      {
        v11 = *(*(v6 + 16) + 8 * v10);
        if (v11)
        {
          if (*(v11 + 88))
          {
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v11 + 88)];
            v13 = [interfaceName isEqualToString:v12];

            if (v13)
            {
              v14 = *(v11 + 8);
              if (v14 >= 1)
              {
                for (i = 0; i < v14; ++i)
                {
                  v16 = *(*(v11 + 12) + 8 * i);
                  if (v16)
                  {
                    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v16 length:*v16];
                    v33 = 0;
                    v18 = validateSockAddrToString(v17, 0, &v33);
                    v19 = v33;

                    if (v18 && [(__CFString *)v19 length])
                    {
                      hasDNS2 = [epochCopy hasDNS];
                      [hasDNS2 addObject:v19];

                      LOBYTE(hasDNS2) = is_directly_reachable_address(v16);
                      v21 = netepochsLogHandle;
                      v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
                      if (hasDNS2)
                      {
                        if (v22)
                        {
                          *buf = 138412547;
                          v35 = interfaceName;
                          v36 = 2113;
                          v37 = v19;
                          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "learning that %@ has DNS server over local route: %{private}@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        if (v22)
                        {
                          *buf = 138412547;
                          v35 = interfaceName;
                          v36 = 2113;
                          v37 = v19;
                          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "learning that %@ has DNS server over default route: %{private}@", buf, 0x16u);
                        }

                        v31 = 1;
                      }
                    }

                    v14 = *(v11 + 8);
                  }
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v10 < *(v6 + 12));
    }

    hasDNS3 = [epochCopy hasDNS];
    v24 = [hasDNS3 count];

    if (v24)
    {
      if ([epochCopy oncell])
      {
        v25 = 5;
      }

      else
      {
        v25 = 3;
      }

      v26 = [NetworkStateRelay getStateRelayFor:v25];
      [v26 setDnsOut:0];
      if (v31)
      {
        [v26 setInternetDnsOut:0];
      }
    }

    [epochCopy setHasInternetDNS:v31 & 1];
    [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
    v27 = +[NDFCoreShim sharedInstance];
    hasDNS4 = [epochCopy hasDNS];
    [v27 noteDNSConfigurationWithServers:hasDNS4 forWiFi:{objc_msgSend(epochCopy, "oncell") ^ 1}];

    dns_configuration_free();
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "dns_config is NULL", buf, 2u);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_refreshLOIForInterfaceType:(unsigned __int8)type
{
  v5 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:?];
  if (v5)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__NetworkAnalyticsEngine__refreshLOIForInterfaceType___block_invoke;
    v7[3] = &__block_descriptor_33_e8_v16__0q8l;
    typeCopy = type;
    [v5 refreshLOIOnQueue:queue reply:v7];
  }
}

void __54__NetworkAnalyticsEngine__refreshLOIForInterfaceType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [NetworkStateRelay getStateRelayFor:*(a1 + 32)];
  [v3 setLoi:a2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898D090;
  selfCopy = self;
  contextCopy = context;
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, block);
}

void __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v125 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:@"path"])
  {
    v2 = *(a1 + 64);
    if ((v2 - 6) <= 0xFFFFFFFA)
    {
      v3 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 64);
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        *buf = 134218498;
        v118 = v4;
        v119 = 2112;
        v120 = v5;
        v121 = 2112;
        v122 = v6;
        _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Unexpected context %p, object %@, change %@", buf, 0x20u);
      }

      goto LABEL_33;
    }

    v10 = *(a1 + 40);
    v100 = v10;
    if (v10 && ([v10 path], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 status];
      v99 = v12;
      if (v13 == 1)
      {
        v14 = [v12 interface];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 interfaceName];
          v17 = [v15 interfaceIndex];
          v18 = [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterface:v15];
          v19 = [v12 isConstrained];
          v97 = [v12 isExpensive];
          LODWORD(v98) = [v12 supportsIPv4];
          HIDWORD(v98) = [v12 supportsIPv6];
          v20 = v17;
        }

        else
        {
          v97 = 0;
          v19 = 0;
          v98 = 0;
          v18 = 0;
          v16 = 0;
          v20 = -1;
        }

        v21 = 1;
LABEL_19:
        v22 = netepochsLogHandle;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(off_27898DEF0 + (((v2 << 32) - 0x100000000) >> 29));
          if (v21 > 3)
          {
            v24 = @"NWPath-value-unknown";
          }

          else
          {
            v24 = off_27898DF18[v21];
          }

          *buf = 138413058;
          v118 = v23;
          v119 = 2112;
          v120 = v24;
          v121 = 2112;
          v122 = v16;
          v123 = 1024;
          v124 = v20;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "NWPath: %@  %@   interfaceName %@ index %d", buf, 0x26u);
        }

        v103 = [NetworkStateRelay getStateRelayFor:5];
        v102 = [NetworkStateRelay getStateRelayFor:3];
        v25 = [NetworkStateRelay getStateRelayFor:2];
        v26 = [NetworkStateRelay getStateRelayFor:7];
        v27 = v26;
        v101 = v26;
        if (v2 == 3 && v21 != 1)
        {
          [v25 setActive:0];
          v115 = @"State";
          v116 = MEMORY[0x277CBEC28];
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v29 = [MEMORY[0x277CCAB98] defaultCenter];
          [v29 postNotificationName:@"kNotificationNewConnectivityEpochWired" object:*(a1 + 56) userInfo:v28];

          dword_2814D3008 = -2;
          dword_2814D302C = -2;
          dword_2814D304C = -2;
          v30 = v25;
LABEL_30:
          [v30 setLinkQuality:4294967294];
LABEL_31:

          v32 = v16;
LABEL_32:

          goto LABEL_33;
        }

        if (v2 == 4 && v21 != 1)
        {
          [v26 setInterfaceName:0];
          [v27 setActive:0];
          v113 = @"State";
          v114 = MEMORY[0x277CBEC28];
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          [v31 postNotificationName:@"kNotificationNewConnectivityEpochCompanionLink" object:*(a1 + 56) userInfo:v28];

          dword_2814D301C = -2;
          dword_2814D3040 = -2;
          dword_2814D3060 = -2;
          v30 = v27;
          goto LABEL_30;
        }

        v32 = v16;
        if (!v21)
        {
          goto LABEL_32;
        }

        if (v2 > 2)
        {
          if (v2 != 3)
          {
            if (v2 == 4)
            {
              v34 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v118 = v16;
                _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "companion link interface change to %@", buf, 0xCu);
              }

              [v101 setInterfaceName:v16];
              [v101 setInterfaceIndex:v20];
              [v101 setConstrained:v19];
              [v101 setExpensive:v97];
              [v101 setSupportsIPv4:v98];
              [v101 setSupportsIPv6:HIDWORD(v98)];
              [v101 setActive:1];
              v109 = @"State";
              v110 = MEMORY[0x277CBEC38];
              v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
              v36 = [MEMORY[0x277CCAB98] defaultCenter];
              [v36 postNotificationName:@"kNotificationNewConnectivityEpochCompanionLink" object:*(a1 + 56) userInfo:v35];

              valuePtr = -1;
              if (v16)
              {
                v37 = *MEMORY[0x277CE16B0];
                NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], v16, *MEMORY[0x277CE16B0]);
                if (NetworkInterfaceEntity)
                {
                  v39 = NetworkInterfaceEntity;
                  v40 = SCDynamicStoreCopyValue(_SCDynamicStore, NetworkInterfaceEntity);
                  v41 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v118 = v40;
                    v119 = 2112;
                    v120 = v39;
                    _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
                  }

                  CFRelease(v39);
                  if (v40)
                  {
                    v42 = CFGetTypeID(v40);
                    if (v42 == CFDictionaryGetTypeID())
                    {
                      Value = CFDictionaryGetValue(v40, v37);
                      if (Value)
                      {
                        v44 = Value;
                        v45 = CFGetTypeID(Value);
                        if (v45 == CFNumberGetTypeID())
                        {
                          CFNumberGetValue(v44, kCFNumberIntType, &valuePtr);
                        }
                      }
                    }

                    CFRelease(v40);
                  }

                  goto LABEL_101;
                }

                v82 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v118 = v16;
                  v119 = 2112;
                  v120 = v37;
                  v75 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
                  v76 = v82;
                  v77 = OS_LOG_TYPE_DEFAULT;
                  v78 = 22;
                  goto LABEL_100;
                }
              }

              else
              {
                v74 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v75 = "retrieve_lqm_for_interface is called with nil ifName";
                  v76 = v74;
                  v77 = OS_LOG_TYPE_ERROR;
                  v78 = 2;
LABEL_100:
                  _os_log_impl(&dword_23255B000, v76, v77, v75, buf, v78);
                }
              }

LABEL_101:
              dword_2814D301C = valuePtr;
              dword_2814D3040 = valuePtr;
              dword_2814D3060 = valuePtr;
              v81 = v101;
LABEL_102:
              [v81 setLinkQuality:?];

              goto LABEL_32;
            }

            if (v18 <= 2)
            {
              if (v18)
              {
                if (v18 != 2)
                {
LABEL_109:
                  v87 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v118 = v16;
                    v119 = 2048;
                    v120 = v18;
                    _os_log_impl(&dword_23255B000, v87, OS_LOG_TYPE_DEFAULT, "primary interface change to %@, type %ld", buf, 0x16u);
                  }

                  v88 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:v18];
                  if (v18 == 7)
                  {
                    v107[0] = @"Detail";
                    v89 = [MEMORY[0x277CCABB0] numberWithInteger:v88];
                    v107[1] = @"kNotificationNewConnectivityEpochCompanionLink";
                    v108[0] = v89;
                    v108[1] = MEMORY[0x277CBEC38];
                    v90 = MEMORY[0x277CBEAC0];
                    v91 = v108;
                    v92 = v107;
                    v93 = 2;
                  }

                  else
                  {
                    v105 = @"Detail";
                    v89 = [MEMORY[0x277CCABB0] numberWithInteger:v88];
                    v106 = v89;
                    v90 = MEMORY[0x277CBEAC0];
                    v91 = &v106;
                    v92 = &v105;
                    v93 = 1;
                  }

                  v28 = [v90 dictionaryWithObjects:v91 forKeys:v92 count:v93];

                  v94 = runningRNFTurbo;
                  if (v94 != +[CellFallbackHandler turboRNF])
                  {
                    __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(a1);
                  }

                  v95 = [MEMORY[0x277CCAB98] defaultCenter];
                  [v95 postNotificationName:@"kNotificationNewPrimaryInterface" object:*(a1 + 56) userInfo:v28];

                  v96 = [MEMORY[0x277CCAB98] defaultCenter];
                  [v96 postNotificationName:@"stateRelay" object:*(a1 + 56) userInfo:0];

                  goto LABEL_31;
                }

                [v103 setPrimary:0];
                [v102 setPrimary:0];
                v67 = v25;
                v68 = 1;
                goto LABEL_107;
              }

              [v103 setPrimary:0];
              v83 = v102;
              v84 = 0;
            }

            else
            {
              if (v18 != 3)
              {
                if (v18 != 7)
                {
                  if (v18 == 5)
                  {
                    [v103 setPrimary:1];
                    [v102 setPrimary:0];
                    [v25 setPrimary:0];
                    [v101 setPrimary:0];
                    v57 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = *(a1 + 56);
                      v59 = v57;
                      v60 = [v58 _getCellInternetStatus];
                      v61 = "";
                      if (!v60)
                      {
                        v61 = "not ";
                      }

                      *buf = 136315394;
                      v118 = v61;
                      v119 = 2112;
                      v120 = v16;
                      _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEFAULT, "Cellular Internet is %sactive on %@", buf, 0x16u);
                    }
                  }

                  goto LABEL_109;
                }

                [v103 setPrimary:0];
                [v102 setPrimary:0];
                [v25 setPrimary:0];
                v85 = v101;
                v86 = 1;
                goto LABEL_108;
              }

              [v103 setPrimary:0];
              v83 = v102;
              v84 = 1;
            }

            [v83 setPrimary:v84];
            v67 = v25;
            v68 = 0;
LABEL_107:
            [v67 setPrimary:v68];
            v85 = v101;
            v86 = 0;
LABEL_108:
            [v85 setPrimary:v86];
            goto LABEL_109;
          }

          v46 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v118 = v16;
            _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEFAULT, "wired interface change to %@", buf, 0xCu);
          }

          [v25 setInterfaceName:v16];
          [v25 setInterfaceIndex:v20];
          [v25 setConstrained:v19];
          [v25 setExpensive:v97];
          [v25 setSupportsIPv4:v98];
          [v25 setSupportsIPv6:HIDWORD(v98)];
          [v25 setActive:1];
          v111 = @"State";
          v112 = MEMORY[0x277CBEC38];
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v47 = [MEMORY[0x277CCAB98] defaultCenter];
          [v47 postNotificationName:@"kNotificationNewConnectivityEpochWired" object:*(a1 + 56) userInfo:v35];

          valuePtr = -1;
          if (v16)
          {
            v48 = *MEMORY[0x277CE16B0];
            v49 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], v16, *MEMORY[0x277CE16B0]);
            if (v49)
            {
              v50 = v49;
              v51 = SCDynamicStoreCopyValue(_SCDynamicStore, v49);
              v52 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v118 = v51;
                v119 = 2112;
                v120 = v50;
                _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
              }

              CFRelease(v50);
              if (v51)
              {
                v53 = CFGetTypeID(v51);
                if (v53 == CFDictionaryGetTypeID())
                {
                  v54 = CFDictionaryGetValue(v51, v48);
                  if (v54)
                  {
                    v55 = v54;
                    v56 = CFGetTypeID(v54);
                    if (v56 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v55, kCFNumberIntType, &valuePtr);
                    }
                  }
                }

                CFRelease(v51);
              }

              goto LABEL_94;
            }

            v79 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v118 = v16;
              v119 = 2112;
              v120 = v48;
              v70 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
              v71 = v79;
              v72 = OS_LOG_TYPE_DEFAULT;
              v73 = 22;
              goto LABEL_93;
            }
          }

          else
          {
            v69 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v70 = "retrieve_lqm_for_interface is called with nil ifName";
              v71 = v69;
              v72 = OS_LOG_TYPE_ERROR;
              v73 = 2;
LABEL_93:
              _os_log_impl(&dword_23255B000, v71, v72, v70, buf, v73);
            }
          }

LABEL_94:
          if (valuePtr == -1)
          {
            v80 = 100;
          }

          else
          {
            v80 = valuePtr;
          }

          dword_2814D3008 = v80;
          dword_2814D302C = v80;
          dword_2814D304C = v80;
          v81 = v25;
          goto LABEL_102;
        }

        if (v2 == 1)
        {
          [v102 setInterfaceName:v16];
          [v102 setInterfaceIndex:v20];
          [v102 setConstrained:v19];
          [v102 setExpensive:v97];
          [v102 setSupportsIPv4:v98];
          [v102 setSupportsIPv6:HIDWORD(v98)];
          [v102 setNoCostAdvantage:{objc_msgSend(v102, "expensive") ^ objc_msgSend(v103, "expensive") ^ 1}];
          [*(a1 + 56) _wifiNetworkChange:v16];
          goto LABEL_32;
        }

        [v103 setInterfaceName:v16];
        [v103 setInterfaceIndex:v20];
        [v103 setConstrained:v19];
        [v103 setExpensive:v97];
        [v103 setSupportsIPv4:v98];
        [v103 setSupportsIPv6:HIDWORD(v98)];
        [v102 setNoCostAdvantage:{objc_msgSend(v102, "expensive") ^ objc_msgSend(v103, "expensive") ^ 1}];
        v62 = [*(a1 + 56) _epochForInterfaceType:5];
        v63 = [*(a1 + 56) _getCellInternetPDPContext];
        v64 = v63;
        if (v16 && v63 && -[__CFString isEqualToString:](v16, "isEqualToString:", v63) && [*(a1 + 56) _getCellInternetStatus])
        {
          if (!v62)
          {
            v65 = *(a1 + 56);
            v66 = v16;
LABEL_82:
            [v65 _cellNetworkChangeForInterface:v66 roamingEvent:0];
          }
        }

        else if (v62)
        {
          v65 = *(a1 + 56);
          v66 = 0;
          goto LABEL_82;
        }

        goto LABEL_32;
      }

      v21 = v13;
      v97 = 0;
      v19 = 0;
      v98 = 0;
      v18 = 0;
      v16 = 0;
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v97 = 0;
      v19 = 0;
      v18 = 0;
      v16 = 0;
      v21 = 0;
    }

    v20 = -1;
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"autoBugCaptureEnabled"])
  {
    v7 = [*(a1 + 48) objectForKey:*MEMORY[0x277CCA2F0]];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *(*(a1 + 56) + 385) = [v7 BOOLValue];
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 56) + 385);
          *buf = 67109120;
          LODWORD(v118) = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Observed value for autoBugCaptureEnabled is %d", buf, 8u);
        }
      }
    }
  }

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
}

- (void)infoLinkStateChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkState"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NetworkAnalyticsEngine_infoLinkStateChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoLinkQualityFingeprintChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkQualityFingerprint"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__NetworkAnalyticsEngine_infoLinkQualityFingeprintChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoTrafficClassChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"trafficClass"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NetworkAnalyticsEngine_infoTrafficClassChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataTransferTimeChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataTransferTime"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__NetworkAnalyticsEngine_infoDataTransferTimeChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataTransferTimeEnabledChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataTransferTimeEnabled"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__NetworkAnalyticsEngine_infoDataTransferTimeEnabledChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoLinkPowerCostChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkPowerCost"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NetworkAnalyticsEngine_infoLinkPowerCostChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataStallChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataStall"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NetworkAnalyticsEngine_infoDataStallChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoHighThroughputStateChanged:(id)changed
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [changed copy];
    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__NetworkAnalyticsEngine_infoHighThroughputStateChanged___block_invoke;
    v7[3] = &unk_27898A7D0;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async(notificationQueueWithElevatedPriority, v7);
  }
}

- (void)ctDataStatusChangedForSubscription:(id)subscription
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [subscription copy];
  v4 = [v3 objectForKeyedSubscript:@"ctDataStatus"];
  v5 = v4;
  if (v4)
  {
    if ([v4 newRadioMmWaveDataBearer])
    {
      v6 = cellNRFrequencyBand == 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if ([v5 newRadioSub6DataBearer])
      {
        v7 = cellNRFrequencyBand == 1;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (([v5 newRadioSub6DataBearer] & 1) != 0 || (objc_msgSend(v5, "newRadioMmWaveDataBearer") & 1) != 0 || !cellNRFrequencyBand)
        {
          goto LABEL_21;
        }

        v9 = 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 2;
    }

    cellNRFrequencyBand = v9;
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = cellNRFrequencyBand;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "NR frequency band set to %d", v13, 8u);
    }

    v11 = [NetworkStateRelay getStateRelayFor:5];
    [v11 setNrFrequencyBand:cellNRFrequencyBand];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CT data status is nil, cannot set NR frequency band", v13, 2u);
    }
  }

LABEL_21:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ratSelectionChangedForSubscription:(id)subscription
{
  v14 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v13 = subscriptionCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "RAT selection changed notification with subscription: %{private}@", buf, 0xCu);
  }

  v6 = [subscriptionCopy copy];
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine_ratSelectionChangedForSubscription___block_invoke;
  block[3] = &unk_27898A0C8;
  v11 = v6;
  v8 = v6;
  dispatch_async(queue, block);

  v9 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsEngine_ratSelectionChangedForSubscription___block_invoke(uint64_t a1)
{
  v6 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ratSelectionMask"];
  [v6 setRatSelectionMask:v2];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ratSelectionIsNR"];
  [v6 setRatSelectionIsNR:{objc_msgSend(v3, "BOOLValue")}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"currentRATSelection"];
  [v6 setRatSelectionCurrent:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"preferredRATSelection"];
  [v6 setRatSelectionPreferred:v5];
}

- (void)cellInfoChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NetworkAnalyticsEngine_cellInfoChangedForSubscription___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__NetworkAnalyticsEngine_cellInfoChangedForSubscription___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getCellInternetStatus];
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 interfaceName];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) _getCellInternetPDPContext];
  v7 = v6;
  if (v5 && v6 && [v5 isEqualToString:v6] && v2)
  {
    [*(a1 + 32) _cellNetworkChangeForInterface:v5 roamingEvent:1 subscription:*(a1 + 40)];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v5;
      v19 = 1024;
      v20 = v2;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring CT cell info change notification on interfaceName %@, cell Internet status: %d", &v17, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"isCurrentDataSubscription"];
    v11 = v10;
    if (v10 && [v10 BOOLValue])
    {
      v12 = [*(a1 + 40) objectForKeyedSubscript:@"ctCellInfo"];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 legacyInfo];
        [v4 updateCellInfo:v14];
      }

      else
      {
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Expected to find CTCellInfo but received nil", &v17, 2u);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cellularDualSimStatusChangedTo:(int64_t)to
{
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NetworkAnalyticsEngine_cellularDualSimStatusChangedTo___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = to;
  dispatch_async(queue, block);
}

void __57__NetworkAnalyticsEngine_cellularDualSimStatusChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  [v2 setCellDualSimStatus:*(a1 + 32)];
}

- (void)networkCodeChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"userDataPreferred"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Dual-SIM telemetry NAE: networkCodeChangedForSubscription on the user data preferred SIM.", buf, 2u);
      }
    }

    else
    {
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__NetworkAnalyticsEngine_networkCodeChangedForSubscription___block_invoke;
      block[3] = &unk_27898A0C8;
      v11 = v5;
      dispatch_async(queue, block);
    }
  }
}

void __60__NetworkAnalyticsEngine_networkCodeChangedForSubscription___block_invoke(uint64_t a1)
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"mobileNetworkCode"];
  [v3 setCellNonPreferredMNC:{objc_msgSend(v2, "intValue")}];
}

- (void)countryCodeChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"userDataPreferred"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Dual-SIM telemetry NAE: countryCodeChangedForSubscription on the user data preferred SIM.", buf, 2u);
      }
    }

    else
    {
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__NetworkAnalyticsEngine_countryCodeChangedForSubscription___block_invoke;
      block[3] = &unk_27898A0C8;
      v11 = v5;
      dispatch_async(queue, block);
    }
  }
}

void __60__NetworkAnalyticsEngine_countryCodeChangedForSubscription___block_invoke(uint64_t a1)
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"mobileCountryCode"];
  [v3 setCellNonPreferredMCC:{objc_msgSend(v2, "intValue")}];
}

- (void)signalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r
{
  v24 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  pCopy = p;
  rCopy = r;
  if (changedCopy)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v19 = changedCopy;
      v20 = 2112;
      v21 = pCopy;
      v22 = 2112;
      v23 = rCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Received signal strength changed notification, new signal strength: %@, RSRP: %@, SNR: %@", buf, 0x20u);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NetworkAnalyticsEngine_signalStrengthChanged_cellularRSRP_cellularSNR___block_invoke;
    block[3] = &unk_27898A328;
    v15 = changedCopy;
    v16 = pCopy;
    v17 = rCopy;
    dispatch_async(queue, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __73__NetworkAnalyticsEngine_signalStrengthChanged_cellularRSRP_cellularSNR___block_invoke(void *a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    [v2 updateSignalStrength:a1[4]];
    v4 = a1[5];
    if (v4)
    {
      [v6 setCellRSRP:{objc_msgSend(v4, "intValue")}];
    }

    v2 = a1[6];
    v3 = v6;
    if (v2)
    {
      [v2 doubleValue];
      v2 = [v6 setCellSNR:?];
      v3 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)networkSlicingActiveChangedTo:(BOOL)to forSliceIndex:(unint64_t)index
{
  toCopy = to;
  v16 = *MEMORY[0x277D85DE8];
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    indexCopy = index;
    v14 = 1024;
    v15 = toCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Received network slicing active changed notification, new status for slice %lu: %{BOOL}d", buf, 0x12u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NetworkAnalyticsEngine_networkSlicingActiveChangedTo_forSliceIndex___block_invoke;
  v10[3] = &__block_descriptor_41_e5_v8__0l;
  v10[4] = index;
  v11 = toCopy;
  dispatch_async(queue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __70__NetworkAnalyticsEngine_networkSlicingActiveChangedTo_forSliceIndex___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setNetworkSlicingStateAtIndex:*(a1 + 32) to:*(a1 + 40)];
    v2 = v3;
  }
}

- (void)nonTerrestrialNetworkActiveChangedTo:(BOOL)to
{
  toCopy = to;
  v12 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v11 = toCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received GF active changed notification, new status: %{BOOL}d", buf, 8u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NetworkAnalyticsEngine_nonTerrestrialNetworkActiveChangedTo___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v9 = toCopy;
  dispatch_async(queue, block);

  v7 = *MEMORY[0x277D85DE8];
}

void __63__NetworkAnalyticsEngine_nonTerrestrialNetworkActiveChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setIsNonTerrestrialNetworkActive:*(a1 + 32)];
    v2 = v3;
  }
}

- (void)stewieActiveChangedTo:(BOOL)to
{
  toCopy = to;
  v12 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v11 = toCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received satellite active changed notification, new status: %{BOOL}d", buf, 8u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NetworkAnalyticsEngine_stewieActiveChangedTo___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v9 = toCopy;
  dispatch_async(queue, block);

  v7 = *MEMORY[0x277D85DE8];
}

void __48__NetworkAnalyticsEngine_stewieActiveChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setIsStewieActive:*(a1 + 32)];
    v2 = v3;
  }
}

- (void)setProhibitNetworkAgentsForNWParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"VPN"];
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AOVPN"];
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];
}

- (void)_observeNetworkFramework
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v3 setRequiredInterfaceType:1];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v3];
  v4 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v3];
  wifiPathEvaluator = self->wifiPathEvaluator;
  self->wifiPathEvaluator = v4;

  v6 = self->wifiPathEvaluator;
  if (v6)
  {
    [(NWPathEvaluator *)v6 addObserver:self forKeyPath:@"path" options:5 context:1];
  }

  v7 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v7 setRequiredInterfaceType:2];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v7];
  v8 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v7];
  cellPathEvaluator = self->cellPathEvaluator;
  self->cellPathEvaluator = v8;

  v10 = self->cellPathEvaluator;
  if (v10)
  {
    [(NWPathEvaluator *)v10 addObserver:self forKeyPath:@"path" options:5 context:2];
  }

  v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v11 setRequiredInterfaceType:3];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v11];
  v12 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v11];
  etherPathEvaluator = self->etherPathEvaluator;
  self->etherPathEvaluator = v12;

  v14 = self->etherPathEvaluator;
  if (v14)
  {
    [(NWPathEvaluator *)v14 addObserver:self forKeyPath:@"path" options:5 context:3];
  }

  v15 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v15];
  v16 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v15];
  primaryPathEvaluator = self->primaryPathEvaluator;
  self->primaryPathEvaluator = v16;

  v18 = self->primaryPathEvaluator;
  if (v18)
  {
    [(NWPathEvaluator *)v18 addObserver:self forKeyPath:@"path" options:5 context:5];
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->cellPathEvaluator;
    v21 = self->wifiPathEvaluator;
    v22 = self->etherPathEvaluator;
    companionPathEvaluator = self->companionPathEvaluator;
    v24 = self->primaryPathEvaluator;
    v26 = 134219008;
    v27 = v20;
    v28 = 2048;
    v29 = v21;
    v30 = 2048;
    v31 = v22;
    v32 = 2048;
    v33 = companionPathEvaluator;
    v34 = 2048;
    v35 = v24;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "PathEvaluators: cell %p wifi %p ether %p companion link %p primary %p", &v26, 0x34u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (NetworkAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue
{
  v33 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  paramsCopy = params;
  queueCopy = queue;
  if (!queueCopy)
  {
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = SFGetStandardQueue(3);
    queueCopy = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.nets.queue", v12, v13);
  }

  v30.receiver = self;
  v30.super_class = NetworkAnalyticsEngine;
  v14 = [(AnalyticsEngineCore *)&v30 initWithWorkspace:0 params:paramsCopy queue:queueCopy];
  if (v14)
  {
    v15 = objc_alloc_init(NWActivityHelper);
    nwActivityHelper = v14->_nwActivityHelper;
    v14->_nwActivityHelper = v15;

    date = [MEMORY[0x277CBEAA8] date];
    objc_storeStrong(&score_last, date);
    objc_storeStrong(&prune_last, date);
    objc_storeStrong(&sharedInstance_3, v14);
    isHelper = [(AnalyticsEngineCore *)v14 isHelper];
    v19 = netepochsLogHandle;
    v20 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (isHelper)
    {
      if (v20)
      {
        *buf = 134217984;
        v32 = sharedInstance_3;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NAE allocates shared instance for helper %p", buf, 0xCu);
      }

      queue = [(AnalyticsEngineCore *)v14 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__NetworkAnalyticsEngine_initWithWorkspace_params_queue___block_invoke;
      block[3] = &unk_27898A0C8;
      v22 = &v29;
      v29 = v14;
      dispatch_async(queue, block);
    }

    else
    {
      if (v20)
      {
        *buf = 134217984;
        v32 = sharedInstance_3;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NAE allocates shared instance %p", buf, 0xCu);
      }

      queue = [(AnalyticsEngineCore *)v14 queue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __57__NetworkAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_389;
      v26[3] = &unk_27898A0C8;
      v22 = &v27;
      v27 = v14;
      v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v26);
      dispatch_async(queue, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->trafficObserver];
  [defaultCenter removeObserver:self->dnsObserver];
  [defaultCenter removeObserver:self->tdObserver];
  v4 = +[CoreTelephonyShim sharedInstance];
  [v4 removeDelegate:self];

  v5 = +[CoreTelephonyShim sharedInstance];
  [v5 unregisterSignalStrengthChangedWithDelegate:self];

  [defaultCenter removeObserver:self->dataStallObserver];
  [defaultCenter removeObserver:self->captivityRedirectsObserver];
  [defaultCenter removeObserver:self->certErrorObserver];
  [defaultCenter removeObserver:self->limObserver];
  [(SystemSettingsRelay *)self->systemSettingsRelay removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
  [(WiFiShim *)self->_wifiShim removeDelegate:self];
  [(ProxyAnalytics *)self->_proxyAnalytics setDelegate:0];

  v6.receiver = self;
  v6.super_class = NetworkAnalyticsEngine;
  [(AnalyticsEngineCore *)&v6 dealloc];
}

- (void)_initializeWorkspace
{
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  symptomEvaluatorDatabaseContainerPath = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v7 = [v6 copy];
  if (v7)
  {
    [(AnalyticsEngineCore *)self setWorkspace:v7];
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to allocate workspace for net analytics", buf, 2u);
    }

    v9 = +[AWDAgent defaultInstance];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3402 userInfo:0];
    [v9 postMetricForSignificantEventWithName:@"AnalyticsWorkspaceAllocationFailure" errorContext:3 error:v10 status:0];
  }

  v11 = [NetworkAnalyticsModel alloc];
  workspace = self->super.workspace;
  queue = [(AnalyticsEngineCore *)self queue];
  v14 = [(NetworkAnalyticsModel *)v11 initWithJournalName:@"AnalyticsJournal" workspace:workspace queue:queue];
  model = self->model;
  self->model = v14;

  if (!self->model)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = 0;
    v21 = "failed to allocate model";
    v22 = &v24;
LABEL_13:
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
    goto LABEL_14;
  }

  v16 = self->super.workspace;
  queue2 = [(AnalyticsEngineCore *)self queue];
  v18 = [ImpoExpoService impoExpoServiceInWorkspace:v16 andQueue:queue2];
  ieService = self->ieService;
  self->ieService = v18;

  if (!self->ieService)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v23 = 0;
    v21 = "failed to allocate impo/expo service";
    v22 = &v23;
    goto LABEL_13;
  }

  [(NetworkAnalyticsEngine *)self _fetchHashSaltFromJournal];
LABEL_14:
}

- (void)_initializeInternals
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = qos_class_self();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NAE _initializeInternals: QoS %s", &buf, 0xCu);
  }

  [(NetworkAnalyticsEngine *)self _initializeWorkspace];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  activeEpochs = self->activeEpochs;
  self->activeEpochs = v6;

  if (self->activeEpochs)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v9 = *MEMORY[0x277CBECE8];
    self->routeManager = NStatManagerCreate();

    if (self->routeManager)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
      liveDefaultRoutes = self->liveDefaultRoutes;
      self->liveDefaultRoutes = v10;

      if (self->liveDefaultRoutes)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
        snapshots = self->snapshots;
        self->snapshots = v12;

        if (self->snapshots)
        {
          v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
          v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v16 = SFGetStandardQueue(6);
          v17 = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.nets.priority.queue", v15, v16);
          notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
          self->notificationQueueWithElevatedPriority = v17;

          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_405;
          v81[3] = &unk_27898A0C8;
          v81[4] = self;
          if (_initializeInternals_pred != -1)
          {
            dispatch_once(&_initializeInternals_pred, v81);
          }

          resync_tether_state(_SCDynamicStore);
          [(NetworkAnalyticsEngine *)self _observeNetworkFramework];
          v19 = +[SystemSettingsRelay defaultRelay];
          systemSettingsRelay = self->systemSettingsRelay;
          self->systemSettingsRelay = v19;

          v21 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "Fetching IP configuration for all active en* interfaces", &buf, 2u);
          }

          queue2 = [(AnalyticsEngineCore *)self queue];
          dispatch_async(queue2, &__block_literal_global_419);

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2;
          v80[3] = &unk_27898A690;
          v80[4] = self;
          v24 = [defaultCenter addObserverForName:@"kNotificationDNSsymptoms" object:0 queue:0 usingBlock:v80];
          dnsObserver = self->dnsObserver;
          self->dnsObserver = v24;

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4;
          v79[3] = &unk_27898A690;
          v79[4] = self;
          v26 = [defaultCenter addObserverForName:@"kNotificationTriggerDisconnectThreshold" object:0 queue:0 usingBlock:v79];
          tdObserver = self->tdObserver;
          self->tdObserver = v26;

          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_425;
          v78[3] = &unk_27898A690;
          v78[4] = self;
          v28 = [defaultCenter addObserverForName:@"kNotificationDataStall" object:0 queue:0 usingBlock:v78];
          dataStallObserver = self->dataStallObserver;
          self->dataStallObserver = v28;

          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4_427;
          v77[3] = &unk_27898A690;
          v77[4] = self;
          v30 = [defaultCenter addObserverForName:@"kNotificationCaptivityRedirects" object:0 queue:0 usingBlock:v77];
          captivityRedirectsObserver = self->captivityRedirectsObserver;
          self->captivityRedirectsObserver = v30;

          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_6;
          v76[3] = &unk_27898A690;
          v76[4] = self;
          v32 = [defaultCenter addObserverForName:@"kNotificationCertError" object:0 queue:0 usingBlock:v76];
          certErrorObserver = self->certErrorObserver;
          self->certErrorObserver = v32;

          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_8;
          v75[3] = &unk_27898A690;
          v75[4] = self;
          v34 = [defaultCenter addObserverForName:@"kNotificationKernelNewLIMRecord" object:0 queue:0 usingBlock:v75];
          limObserver = self->limObserver;
          self->limObserver = v34;

          [(SystemSettingsRelay *)self->systemSettingsRelay addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];
          v36 = [NetworkExtensionStateRelay alloc];
          queue3 = [(AnalyticsEngineCore *)self queue];
          v38 = [(NetworkExtensionStateRelay *)v36 initWithQueue:queue3];
          neStateRelay = self->_neStateRelay;
          self->_neStateRelay = v38;

          *&self->lastScoreExit[1] = 0x100000001;
          v40 = +[SystemProperties sharedInstance];
          self->_isInternalBuild = [v40 internalBuild];

          if (self->_isInternalBuild)
          {
            v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
            memoryJournalRecords = self->memoryJournalRecords;
            self->memoryJournalRecords = v41;
          }

          signal(30, 1);
          queue4 = [(AnalyticsEngineCore *)self queue];
          v44 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, queue4);
          v45 = _initializeInternals_sigusr1;
          _initializeInternals_sigusr1 = v44;

          if (_initializeInternals_sigusr1)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_10;
            handler[3] = &unk_27898A0C8;
            handler[4] = self;
            dispatch_source_set_event_handler(_initializeInternals_sigusr1, handler);
            dispatch_resume(_initializeInternals_sigusr1);
          }

          signal(29, 1);
          v46 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, MEMORY[0x277D85CD0]);
          v47 = _initializeInternals_siginfo;
          _initializeInternals_siginfo = v46;

          if (_initializeInternals_siginfo)
          {
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_434;
            v73[3] = &unk_27898A0C8;
            v73[4] = self;
            dispatch_source_set_event_handler(_initializeInternals_siginfo, v73);
            dispatch_resume(_initializeInternals_siginfo);
          }

          location[1] = MEMORY[0x277D85DD0];
          location[2] = 3221225472;
          location[3] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_435;
          location[4] = &unk_27898A820;
          location[5] = self;
          v48 = MEMORY[0x277D85CD0];
          os_state_add_handler();

          objc_initWeak(location, self);
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_437;
          v70[3] = &unk_27898C3B0;
          objc_copyWeak(&v71, location);
          [(AnalyticsWorkspace *)self->super.workspace setResetCompletionBlock:v70];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v85 = 0x2020000000;
          v86 = 0;
          queue5 = [(AnalyticsEngineCore *)self queue];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_442;
          v68[3] = &unk_27898DAB0;
          objc_copyWeak(&v69, location);
          v68[4] = self;
          v68[5] = &buf;
          [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.Daily" queue:queue5 activity:v68];

          v50 = +[SystemProperties sharedInstance];
          basebandCapability = [v50 basebandCapability];

          if (basebandCapability)
          {
            self->cellSPIType = 1;
            if (!self->serverConnection)
            {
              v52 = +[CoreTelephonyShim sharedInstance];
              self->serverConnection = [v52 ctServerConnection];
            }

            [(NetworkAnalyticsEngine *)self _updateCellInternetStatus:0xFFFFFFFFLL pdpContext:0xFFFFFFFFLL];
          }

          [(NetworkAnalyticsEngine *)self setDelegateToProxyAnalytics:1];
          v53 = [NetworkStateRelay getStateRelayFor:5];
          [v53 setCellSPIType:self->cellSPIType];
          v54 = +[WiFiShim sharedInstance];
          wifiShim = self->_wifiShim;
          self->_wifiShim = v54;

          [(WiFiShim *)self->_wifiShim addDelegate:self];
          queue6 = [(AnalyticsEngineCore *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_449;
          block[3] = &unk_27898A0C8;
          block[4] = self;
          dispatch_async(queue6, block);

          shared_prefs_store = get_shared_prefs_store();
          if (shared_prefs_store)
          {
            v66[0] = MEMORY[0x277D85DD0];
            v66[1] = 3221225472;
            v66[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_451;
            v66[3] = &unk_27898A0A0;
            v66[4] = self;
            prefs_add_client(shared_prefs_store, "rnf_rssi_extra_descent_factor", v66);
          }

          queue7 = [(AnalyticsEngineCore *)self queue];
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_453;
          v65[3] = &unk_27898A0C8;
          v65[4] = self;
          dispatch_async(queue7, v65);

          [(NetworkAnalyticsEngine *)self scheduleWiFiAssistAnalyticsTask];
          [defaultCenter postNotificationName:@"stateRelay" object:self userInfo:0];
          v59 = measureLaunchXPCHandle();
          if (os_signpost_enabled(v59))
          {
            *v64 = 0;
            _os_signpost_emit_with_name_impl(&dword_23255B000, v59, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkAnalyticsEngineInitialized", "NetworkAnalyticsEngine completed initialization", v64, 2u);
          }

          markMeasurement(2, 11);
          submitAllMeasurementsToCA();
          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          v82 = @"ObjectKey";
          selfCopy = self;
          v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v82 count:1];
          [defaultCenter2 postNotificationName:@"kNotificationOfCompletedInitialization" object:self userInfo:v61];

          objc_destroyWeak(&v69);
          _Block_object_dispose(&buf, 8);
          objc_destroyWeak(&v71);
          objc_destroyWeak(location);
        }
      }
    }

    else
    {
      v62 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_ERROR, "failed to allocate routeManager", &buf, 2u);
      }
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke()
{
  v0 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "new routing source added", v1, 2u);
  }
}

uint64_t __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_405(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  _SCDynamicStore = SCDynamicStoreCreate(0, @"com.apple.symptoms.analytics", config_callback, &v16);
  objc_storeStrong(&_SCDynamicStoreCaller, *(a1 + 32));
  SCDynamicStoreSetDispatchQueue(_SCDynamicStore, *(*(a1 + 32) + 336));
  v2 = *MEMORY[0x277CBECE8];
  v3 = *MEMORY[0x277CE1648];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"(en)[^/]+", *MEMORY[0x277CE1688]);
  v5 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v2, v3, @"(en)[^/]+", *MEMORY[0x277CE1690]);
  v6 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v8 = CFArrayCreateMutable(v2, 0, v6);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, v3, *MEMORY[0x277CE1678]);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v2, v3, @"(en|pdp_ip|ipsec|utun)[^/]+", *MEMORY[0x277CE16B0]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFArrayAppendValue(v8, NetworkInterfaceEntity);
  CFArrayAppendValue(v8, v5);
  CFArrayAppendValue(v8, v10);
  if (NetworkGlobalEntity)
  {
    CFRelease(NetworkGlobalEntity);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v11 = SCDynamicStoreSetNotificationKeys(_SCDynamicStore, Mutable, v8);
  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "succeeded";
    *buf = 136315650;
    if (!v11)
    {
      v13 = "failed";
    }

    v18 = v13;
    v19 = 2112;
    v20 = Mutable;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "SCDynamicStore registration %s to monitor changes in keys: %@ and patterns: %@", buf, 0x20u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  result = SCDynamicStoreAddWatchedKey();
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_417()
{
  v60[2] = *MEMORY[0x277D85DE8];
  v0 = _SCDynamicStore;
  v1 = +[SystemSettingsRelay defaultRelay];
  v2 = [v1 ndfEnabled];

  v3 = netepochsLogHandle;
  if ((v2 & 1) == 0)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "NDF is disabled, not fetching IP configuration", buf, 2u);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "interfaceName is nil, fetching IP configuration for all en* interfaces", buf, 2u);
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CE1648];
  v6 = *MEMORY[0x277CE1688];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"(en)[^/]+", *MEMORY[0x277CE1688]);
  v47 = *MEMORY[0x277CE1690];
  v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v5, @"(en)[^/]+", *MEMORY[0x277CE1690]);
  v9 = v8;
  if (NetworkInterfaceEntity)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v57 = NetworkInterfaceEntity;
      v58 = 2112;
      v59 = v9;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Found IPv4/IPv6 SCDynamicStore keys (%@/%@) to be nil", buf, 0x16u);
    }

    goto LABEL_49;
  }

  v60[0] = NetworkInterfaceEntity;
  v60[1] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

  if (![(__CFString *)v12 count])
  {
    v39 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "PatternList is empty, not fetching IP configuration", buf, 2u);
    }

    goto LABEL_48;
  }

  v13 = SCDynamicStoreCopyMultiple(v0, 0, v12);
  if (![(__CFDictionary *)v13 count])
  {
    goto LABEL_45;
  }

  v41 = v13;
  v42 = v12;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v13;
  v15 = [(__CFDictionary *)v14 countByEnumeratingWithState:&v48 objects:buf count:16];
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = v15;
  v17 = *v49;
  v44 = *MEMORY[0x277CE1728];
  v43 = *MEMORY[0x277CE1758];
  p_info = TCPProgressProbe.info;
  v45 = v6;
  do
  {
    v19 = 0;
    v46 = v16;
    do
    {
      if (*v49 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v48 + 1) + 8 * v19);
      v21 = [(__CFDictionary *)v14 objectForKeyedSubscript:v20, v41, v42];

      if (v21)
      {
        v22 = [(__CFDictionary *)v14 objectForKeyedSubscript:v20];
        v23 = [v20 containsString:v6];
        v24 = [v20 containsString:v47];
        if ((v23 & 1) != 0 || v24)
        {
          v29 = v17;
          v30 = [p_info + 371 interfaceNameFromKey:v20];
          if (v30)
          {
            v31 = v30;
            if ([p_info + 371 interfaceIsDirectLink:v30])
            {
              v32 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v52 = 138412290;
                v53 = v31;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Interface %@ is a DirectLink interface, ignoring its IP configuration", v52, 0xCu);
              }
            }

            else
            {
              v34 = +[NDFCoreShim sharedInstance];
              [v34 noteInterfaceOfInterest:v31 isRemoved:0];

              v35 = v44;
              if (!v23)
              {
                v35 = v43;
              }

              v36 = v35;
              v37 = [v22 objectForKeyedSubscript:v36];
              v38 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
              {
                *v52 = 138412547;
                v53 = v31;
                v54 = 2113;
                v55 = v37;
                _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "IP configuration for %@ = %{private}@", v52, 0x16u);
              }

              v6 = v45;
            }

            p_info = (TCPProgressProbe + 32);
            v17 = v29;
            v16 = v46;
          }

          else
          {
            v33 = netepochsLogHandle;
            v16 = v46;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v52 = 138412290;
              v53 = v20;
              v26 = v33;
              v27 = "Extracted interfaceName from key %@ is nil";
LABEL_34:
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, v27, v52, 0xCu);
            }
          }
        }

        else
        {
          v25 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v52 = 138412290;
            v53 = v20;
            v26 = v25;
            v27 = "Received callback for unexpected key %@, expecting IPv4 or IPv6";
            goto LABEL_34;
          }
        }

        goto LABEL_42;
      }

      v28 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v52 = 138412290;
        v53 = v20;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "No IP configuration obtained for key %@", v52, 0xCu);
      }

LABEL_42:
      ++v19;
    }

    while (v16 != v19);
    v16 = [(__CFDictionary *)v14 countByEnumeratingWithState:&v48 objects:buf count:16];
  }

  while (v16);
LABEL_44:

  v13 = v41;
  v12 = v42;
LABEL_45:

LABEL_48:
  NetworkInterfaceEntity = v12;
LABEL_49:

LABEL_50:
  v40 = *MEMORY[0x277D85DE8];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_423];
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_424;
  v8[3] = &unk_27898A7D0;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(v5, v7);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventData];
  if (v6)
  {
    v7 = v6;
    if ((~*(v6 + 4) & 3) == 0)
    {
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v7 + 24);
        v9 = *(v7 + 32);
        v11 = v8;
        v12 = [v5 seqNo];
        v13 = [MEMORY[0x277CBEAA8] date];
        v14 = [v5 creationTimeStamp];
        [v13 timeIntervalSinceDate:v14];
        v21 = 138413315;
        v22 = v4;
        v23 = 2048;
        v24 = v12;
        v25 = 1024;
        v26 = v10;
        v27 = 2049;
        v28 = v9;
        v29 = 2048;
        v30 = v15;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: received triggerDisconnectThreshold notification for %@ [#%llu], edge: %d, target bssid: %{private}llx, propagation delay: %f", &v21, 0x30u);
      }

      v16 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v18 = qos_class_self();
        v19 = qos_string(v18);
        v21 = 136315138;
        v22 = v19;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "trigger-disconnect: triggerDisconnectThreshold notification: QoS %s", &v21, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_425(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_426;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4_427(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_5_428;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_7;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_9;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) _flushAllJournalRecords];
  if ([*(a1 + 32) delegateToProxyAnalytics])
  {
    v2 = objc_opt_new();
    [*(a1 + 32) setProxyAnalytics:v2];

    v3 = *(a1 + 32);
    v4 = [v3 proxyAnalytics];
    [v4 setDelegate:v3];

    [*(a1 + 32) setRemoveOldRecordsNow:1];
    v5 = [*(a1 + 32) proxyAnalytics];
    [v5 trainModelAndScore:1 lastScoreDate:score_last];
  }

  else
  {
    [*(a1 + 32) _performPeriodicTasks:1];
  }

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
  }

  [*(*(a1 + 32) + 400) purgeOldNWActivityMetrics];
  v7 = +[NWActivityHandler sharedInstance];
  [v7 enableDBWrites];

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", v9, 2u);
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_437(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: invalidating local caches", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [WeakRetained[18] allValues];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * v7++) unloadDurableState];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [WeakRetained _concurrentEpochs];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) unloadDurableState];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v23 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_442(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    [WeakRetained setRemoveOldRecordsNow:1];
    [v3 _flushAllJournalRecords];
    v4 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 156);
      v5 = *(*(a1 + 32) + 160);
      *buf = 67109376;
      v19 = v6;
      v20 = 1024;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "scoring: about to start, last scored with exit codes: %d %d", buf, 0xEu);
    }

    if ([v3 delegateToProxyAnalytics])
    {
      v7 = [v3 proxyAnalytics];

      if (!v7)
      {
        v8 = objc_opt_new();
        [v3 setProxyAnalytics:v8];

        v9 = [v3 proxyAnalytics];
        [v9 setDelegate:v3];
      }

      v10 = [v3 proxyAnalytics];
      [v10 trainModelAndScore:1 lastScoreDate:score_last];
    }

    else
    {
      [v3 _performPeriodicTasks:1];
      if ([v3 removeOldRecordsNow])
      {
        [v3 _removeOldRouteRecords];
        [v3 setRemoveOldRecordsNow:0];
      }
    }

    v11 = [v3 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_447;
    v16[3] = &unk_27898A0C8;
    v17 = v3;
    [(PeriodicMaintenanceActivity *)WeeklyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.WeeklyStoreCheck" queue:v11 activity:v16];

    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
    }

    [*(*(a1 + 32) + 400) purgeOldNWActivityMetrics];
    v13 = +[NWActivityHandler sharedInstance];
    [v13 enableDBWrites];

    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_447(uint64_t a1)
{
  v2 = [*(a1 + 32) proxyAnalytics];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setProxyAnalytics:v3];

    v4 = *(a1 + 32);
    v5 = [v4 proxyAnalytics];
    [v5 setDelegate:v4];
  }

  v6 = [*(a1 + 32) proxyAnalytics];
  [v6 performPersistentStoreHealthCheck];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_449(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:3];
  [v2 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_451(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = rnfLogHandle;
    v12 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
    if (value < 0)
    {
      if (!v12)
      {
        goto LABEL_12;
      }

      v14 = *(*(a1 + 32) + 440);
      v16 = 134218240;
      v17 = value;
      v18 = 2048;
      v19 = v14;
      v7 = "Got negative value for rnf_rssi_extra_descent_factor (%lld). Maintaining current value (%llu)";
      v8 = v11;
      v9 = 22;
      goto LABEL_5;
    }

    if (v12)
    {
      v13 = *(*(a1 + 32) + 440);
      v16 = 134218240;
      v17 = v13;
      v18 = 2048;
      v19 = value;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Set new value for rnf_rssi_extra_descent_factor (was/is): %lld/%lld", &v16, 0x16u);
    }

    *(*(a1 + 32) + 440) = value;
  }

  else
  {
    *(*(a1 + 32) + 440) = 0;
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v7 = "Got a nil value or wrong type for rnf_rssi_extra_descent_factor. Setting to default value (0)";
      v8 = v6;
      v9 = 2;
LABEL_5:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_processNWActivityMetrics
{
  if ([(NetworkAnalyticsEngine *)self delegateToProxyAnalytics])
  {
    proxyAnalytics = [(NetworkAnalyticsEngine *)self proxyAnalytics];

    if (!proxyAnalytics)
    {
      v4 = objc_opt_new();
      [(NetworkAnalyticsEngine *)self setProxyAnalytics:v4];

      proxyAnalytics2 = [(NetworkAnalyticsEngine *)self proxyAnalytics];
      [proxyAnalytics2 setDelegate:self];
    }

    proxyAnalytics3 = [(NetworkAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics3 trainModelAndScore:0 lastScoreDate:score_last];
  }

  else
  {
    [(NetworkAnalyticsEngine *)self _performPeriodicTasks:0];
  }

  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
  }

  [(NWActivityHelper *)self->_nwActivityHelper purgeOldNWActivityMetrics];
  v8 = +[NWActivityHandler sharedInstance];
  [v8 enableDBWrites];

  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", v10, 2u);
  }
}

- (void)_fetchHashSaltFromJournal
{
  v3 = [NetworkAnalyticsEngine fetchHashSaltFromJournalUsingImpoExpoService:self->ieService];
  hashSalt = self->_hashSalt;
  self->_hashSalt = v3;

  MEMORY[0x2821F96F8](v3, hashSalt);
}

+ (id)fetchHashSaltFromJournalUsingImpoExpoService:(id)service
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = serviceCopy;
  if (serviceCopy)
  {
    v9 = 0;
    v5 = [serviceCopy exportItemUnderName:@"SymptomHashSalt" lastUpdated:&v9 verificationBlock:&__block_literal_global_455];
    if (!v5)
    {
      arc4random_buf(__buf, 0x20uLL);
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:__buf length:32];
      [v4 importItemUnderName:@"SymptomHashSalt" item:v5];
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *__buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "impoExpoService is nil", __buf, 2u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __71__NetworkAnalyticsEngine_fetchHashSaltFromJournalUsingImpoExpoService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_dumpStats
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218240;
    v20 = netatt_epochs;
    v21 = 2048;
    v22 = *&netatt_roamed;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Distinct epochs = %llu, incl. %llu from roaming", &v19, 0x16u);
  }

  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218240;
    v20 = notif_reqs;
    v21 = 2048;
    v22 = *&notif_posted;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Evaluated known-good notif %llu times, %llu times was cleared to send", &v19, 0x16u);
  }

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = score_counts;
    v7 = score_last;
    v8 = v5;
    [v7 timeIntervalSinceNow];
    v10 = self->lastScoreExit[1];
    v9 = self->lastScoreExit[2];
    v19 = 134218752;
    v20 = v6;
    v21 = 2048;
    v22 = -v11;
    v23 = 1024;
    v24 = v10;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Scored attachms %llu times, not since %f secs, last exit codes were: %d %d", &v19, 0x22u);
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = prune_counts;
    v14 = prune_last;
    v15 = v12;
    [v14 timeIntervalSinceNow];
    v19 = 134218240;
    v20 = v13;
    v21 = 2048;
    v22 = -v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Pruned old perf records %llu times, not since %f secs", &v19, 0x16u);
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = active_probes;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "No backhaul resulted in %llu active probes", &v19, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_wifiKnownNetworksDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  primaryKey = [v5 primaryKey];
  v12 = 0;
  [NetworkEpoch parsePrimaryKey:primaryKey majorID:&v12 minorID:0];
  v8 = v12;

  if (([v6 deleteNetworkAttachmentsWhenDone] & 1) != 0 || !objc_msgSend(v8, "length"))
  {
    goto LABEL_6;
  }

  [v6 setDeleteNetworkAttachmentsWhenDone:1];
  v9 = MEMORY[0x277CBEB98];
  primaryKey2 = [v6 primaryKey];
  v11 = [v9 setWithObject:primaryKey2];

LABEL_7:
  [NetworkEpoch resetDataForSSIDs:deletedCopy exceptFor:v11 inWorkspace:self->super.workspace];
}

+ (void)setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue
{
  if (sharedInstance_3)
  {
    queue = [sharedInstance_3 queue];
    dispatch_async(queue, &__block_literal_global_458);
  }

  else
  {
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "No NAE shared instance yet, not setting up CT BB registration via CTShim", buf, 2u);
    }
  }
}

- (void)_setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue
{
  *&v53[5] = *MEMORY[0x277D85DE8];
  v3 = +[CoreTelephonyShim sharedInstance];
  [v3 addDelegate:self];
  [v3 registerSignalStrengthChangedWithDelegate:self];
  queue = [(AnalyticsEngineCore *)self queue];
  block = MEMORY[0x277D85DD0];
  v46 = 3221225472;
  v47 = __92__NetworkAnalyticsEngine__setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue__block_invoke;
  v48 = &unk_27898A0C8;
  v5 = v3;
  v49 = v5;
  dispatch_async(queue, &block);

  if (self->serverConnection || (v6 = [v5 ctServerConnection], (self->serverConnection = v6) != 0))
  {
    cf = 0;
    v7 = *MEMORY[0x277CC3BB8];
    v8 = _CTServerConnectionRegisterForNotification();
    v9 = v8;
    v10 = HIDWORD(v8);
    v11 = netepochsLogHandle;
    if (HIDWORD(v8))
    {
      v12 = 0;
    }

    else
    {
      v12 = v8 == 0;
    }

    if (v12)
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v13 = "eLQM: Registered with CT for eLQM supported metrics notification";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 2;
    }

    else
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 67109376;
      v53[0] = v9;
      LOWORD(v53[1]) = 1024;
      *(&v53[1] + 2) = v10;
      v13 = "eLQM: Failed to register with CT for eLQM supported metrics notification, error = (%d, %d)";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 14;
    }

    _os_log_impl(&dword_23255B000, v14, v15, v13, buf, v16);
LABEL_12:
    serverConnection = self->serverConnection;
    SupportedEnhancedLinkQualityMetric = _CTServerConnectionGetSupportedEnhancedLinkQualityMetric();
    v19 = SupportedEnhancedLinkQualityMetric;
    v20 = HIDWORD(SupportedEnhancedLinkQualityMetric);
    if (HIDWORD(SupportedEnhancedLinkQualityMetric))
    {
      v21 = 0;
    }

    else
    {
      v21 = SupportedEnhancedLinkQualityMetric == 0;
    }

    v22 = v21;
    if (v21)
    {
      v23 = 0;
      v24 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v53 = v23;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "eLQM: Received payload with eLQM supported metrics %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _registerForLinkQualityNotifications:v23, 0, block, v46, v47, v48];
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v25 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v53[0] = v19;
        LOWORD(v53[1]) = 1024;
        *(&v53[1] + 2) = v20;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "eLQM: Delay registering for eLQM/legacy notifications until CT payload arrives, error = (%d, %d)", buf, 0xEu);
      }
    }

    v50 = @"State";
    v27 = [MEMORY[0x277CCABB0] numberWithBool:{v22, cf}];
    v51 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kNotificationCellLinkStateReportCapable" object:self userInfo:v28];

    v30 = self->serverConnection;
    v31 = *MEMORY[0x277CC3CB0];
    v32 = _CTServerConnectionRegisterForNotification();
    v33 = v32;
    v34 = HIDWORD(v32);
    v35 = netepochsLogHandle;
    if (HIDWORD(v32) || v32)
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v53[0] = v33;
        LOWORD(v53[1]) = 1024;
        *(&v53[1] + 2) = v34;
        v36 = "Failed to register for cell Internet data status notification, error = (%d, %d)";
        v37 = v35;
        v38 = OS_LOG_TYPE_ERROR;
        v39 = 14;
        goto LABEL_33;
      }
    }

    else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v36 = "Registered for cell Internet data status notification";
      v37 = v35;
      v38 = OS_LOG_TYPE_DEFAULT;
      v39 = 2;
LABEL_33:
      _os_log_impl(&dword_23255B000, v37, v38, v36, buf, v39);
    }

    [(NetworkAnalyticsEngine *)self _registerForSIMStatusChangeNotification:v5];
    [v5 updateCurrentRatSelection];

    goto LABEL_35;
  }

  v41 = +[SystemProperties sharedInstance];
  isSymptomsdHelper = [v41 isSymptomsdHelper];

  if ((isSymptomsdHelper & 1) == 0)
  {
    v43 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Failed to establish connection with CoreTelephony", buf, 2u);
    }

    [(NetworkAnalyticsEngine *)self _recoverFromSystemCriticalErrors];
  }

LABEL_35:

  v40 = *MEMORY[0x277D85DE8];
}

void __92__NetworkAnalyticsEngine__setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Updating networkSlicingStates after delegate registration", v7, 2u);
  }

  v3 = [*(a1 + 32) getNetworkSlicingStates];
  v4 = [NetworkStateRelay getStateRelayFor:5];
  if (v4 && [v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v4 setNetworkSlicingStateAtIndex:v5 to:{objc_msgSend(v6, "BOOLValue")}];

      ++v5;
    }

    while (v5 < [v3 count]);
  }
}

- (void)_registerForSIMStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[SystemProperties sharedInstance];
  dualSIMCapability = [v5 dualSIMCapability];

  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO);
  if (dualSIMCapability)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "SIM: Dual SIM capable or modern device, updating subscribers", buf, 2u);
    }

    if (dualSIMCapability == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_461;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v15 = v9;
    dispatch_async(queue, block);

    [notificationCopy updateSubscribers];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "registerForSIMStatusChange: Dual SIM capability unknown, retrying later", buf, 2u);
    }

    queue2 = [(AnalyticsEngineCore *)self queue];
    dispatch_async(queue2, &__block_literal_global_460);

    v12 = dispatch_time(0, 5000000000);
    queue3 = [(AnalyticsEngineCore *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_2;
    v16[3] = &unk_27898A7D0;
    v16[4] = self;
    v17 = notificationCopy;
    dispatch_after(v12, queue3, v16);
  }
}

void __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke()
{
  v0 = [NetworkStateRelay getStateRelayFor:5];
  [v0 setCellDualSimStatus:0];
}

void __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_461(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  [v2 setCellDualSimStatus:*(a1 + 32)];
}

- (void)_registerForLinkQualityNotifications:(id)notifications
{
  *&v26[5] = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [notificationsCopy objectForKeyedSubscript:*MEMORY[0x277CC3BC0]];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v5 intValue] != 1)
  {
    self->cellSPIType = 2;
    serverConnection = self->serverConnection;
    v14 = *MEMORY[0x277CC39A0];
    v15 = _CTServerConnectionRegisterForNotification();
    v16 = v15;
    v17 = HIDWORD(v15);
    v10 = netepochsLogHandle;
    if (HIDWORD(v15))
    {
      v18 = 0;
    }

    else
    {
      v18 = v15 == 0;
    }

    if (!v18)
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v25 = 67109376;
      v26[0] = v16;
      LOWORD(v26[1]) = 1024;
      *(&v26[1] + 2) = v17;
      v12 = "(Fallback) Failed to register for CT legacy notifications, error = (%d, %d)";
      goto LABEL_16;
    }

    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v25) = 0;
    v12 = "(Fallback) Registered for CT legacy notifications";
LABEL_19:
    v19 = v10;
    v20 = OS_LOG_TYPE_DEFAULT;
    v21 = 2;
    goto LABEL_20;
  }

  self->cellSPIType = 3;
  v6 = self->serverConnection;
  v7 = _CTServerConnectionRegisterSupportedEnhancedLinkQualityMetric();
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = netepochsLogHandle;
  if (HIDWORD(v7))
  {
    v11 = 0;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (!v11)
  {
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v25 = 67109376;
    v26[0] = v8;
    LOWORD(v26[1]) = 1024;
    *(&v26[1] + 2) = v9;
    v12 = "eLQM: Failed to register for BB eLQM supported metrics, error = (%d, %d)";
LABEL_16:
    v19 = v10;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 14;
LABEL_20:
    _os_log_impl(&dword_23255B000, v19, v20, v12, &v25, v21);
    goto LABEL_21;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    v12 = "eLQM: Registered for BB eLQM supported metrics";
    goto LABEL_19;
  }

LABEL_21:
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellSPIType = self->cellSPIType;
    v25 = 134217984;
    *v26 = cellSPIType;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Cell SPI Type identified as: %lu", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

id __56__NetworkAnalyticsEngine_sendWiFiAssistUsage_cellUsage___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"rnfDataUsage";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  v7[1] = @"cellDataUsage";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)sendWifiAssistDataUsageMetric
{
  v3 = objc_alloc(MEMORY[0x277D6B540]);
  workspace = self->super.workspace;
  entityName = [MEMORY[0x277D6B518] entityName];
  v33 = [v3 initWithWorkspace:workspace entityName:entityName withCache:0];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K != nil && %K.length > 0) && (%K > 0 || %K > 0)", @"hasProcess.bundleName", @"hasProcess.bundleName", @"wwanIN", @"wwanOUT"];
  v7 = functionOnKeyDescriptor();
  v8 = functionOnKeyDescriptor();
  v9 = functionOnKeyDescriptor();
  v10 = functionOnKeyDescriptor();
  v11 = objc_alloc_init(MEMORY[0x277D6B510]);
  [v11 addAggregateProperty:v7];
  [v11 addAggregateProperty:v8];
  [v11 addAggregateProperty:v9];
  [v11 addAggregateProperty:v10];
  LOBYTE(v26) = 0;
  v12 = [v33 fetchEntityDictionariesWithProperties:MEMORY[0x277CBEBF8] fetchRequestProperties:v11 predicate:v6 sortDescriptors:0 limit:0 offset:0 includeObjectID:v26];
  v13 = v12;
  if (v12 && [v12 count])
  {
    v31 = v6;
    selfCopy = self;
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v14 objectForKeyedSubscript:@"rnfInTotal"];
    integerValue = [v15 integerValue];
    v16 = [v14 objectForKeyedSubscript:@"rnfOutTotal"];
    integerValue2 = [v16 integerValue];

    v17 = [v14 objectForKeyedSubscript:@"cellInTotal"];
    integerValue3 = [v17 integerValue];
    v18 = [v14 objectForKeyedSubscript:@"cellOutTotal"];
    integerValue4 = [v18 integerValue];

    v20 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.CoreAnalytics"];
    v21 = v20;
    if (v20)
    {
      v22 = integerValue2 + integerValue;
      v30 = integerValue4 + integerValue3;
      v23 = [v20 objectForKey:@"rnfDataUsage"];

      if (v23)
      {
        v24 = v22 - [v21 integerForKey:@"rnfDataUsage"];
      }

      else
      {
        v24 = 0;
      }

      [v21 setInteger:v22 forKey:@"rnfDataUsage"];
      v25 = [v21 objectForKey:@"cellDataUsage"];

      if (v25)
      {
        v25 = (v30 - [v21 integerForKey:@"cellDataUsage"]);
      }

      [v21 setInteger:? forKey:?];
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    [(NetworkAnalyticsEngine *)selfCopy sendWiFiAssistUsage:v24 cellUsage:v25];

    v6 = v31;
  }
}

id __55__NetworkAnalyticsEngine_sendWiFiAssistState_eligible___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"rnfEligible";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v7[1] = @"rnfEnabled";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)sendWifiAssistStateMetric
{
  v10 = +[CoreTelephonyShim sharedInstance];
  getCurrentSIMStatus = [v10 getCurrentSIMStatus];
  v4 = getCurrentSIMStatus;
  if (getCurrentSIMStatus)
  {
    v5 = [getCurrentSIMStatus isEqualToString:*MEMORY[0x277CC3F00]];
    v6 = +[SystemSettingsRelay defaultRelay];
    v7 = v6;
    if (v5 && ([v6 airplaneModeSwitchEnabled] & 1) == 0 && (objc_msgSend(v7, "cellDataSwitchEnabled") & 1) != 0)
    {
      getCurrentDataStatus = [v10 getCurrentDataStatus];
      v9 = getCurrentDataStatus;
      if (getCurrentDataStatus && [getCurrentDataStatus attached])
      {
        -[NetworkAnalyticsEngine sendWiFiAssistState:eligible:](self, "sendWiFiAssistState:eligible:", [v7 rnfEnabled], objc_msgSend(v9, "cellularDataPossible"));
      }
    }

    else
    {
      -[NetworkAnalyticsEngine sendWiFiAssistState:eligible:](self, "sendWiFiAssistState:eligible:", [v7 rnfEnabled], 0);
    }
  }
}

- (void)scheduleWiFiAssistAnalyticsTask
{
  objc_initWeak(&location, self);
  queue = [(AnalyticsEngineCore *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NetworkAnalyticsEngine_scheduleWiFiAssistAnalyticsTask__block_invoke;
  v4[3] = &unk_27898C3B0;
  objc_copyWeak(&v5, &location);
  [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.Daily.MetricReporting" queue:queue activity:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__NetworkAnalyticsEngine_scheduleWiFiAssistAnalyticsTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained sendWifiAssistStateMetric];
    [v2 sendWifiAssistDataUsageMetric];
    WeakRetained = v2;
  }
}

- (void)_extractCellLinkFingerprintFrom:(__CFData *)from
{
  v69[6] = *MEMORY[0x277D85DE8];
  if (!from)
  {
    v40 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 0;
    v41 = "eLQM: link fingerprint payload is nil";
    v42 = v40;
    v43 = 2;
LABEL_39:
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
    goto LABEL_40;
  }

  fromCopy = from;
  Length = CFDataGetLength(from);
  if (Length != 224)
  {
    v44 = Length;
    v45 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    *buf = 134217984;
    *v59 = v44;
    v41 = "eLQM: Dropping unexpected link fingerprint payload, length = %ld bytes";
    v42 = v45;
    v43 = 12;
    goto LABEL_39;
  }

  selfCopy = self;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v57 = 0;
  v10 = &unk_2814D3218;
  v11 = &unk_2814D3228;
  v12 = &unk_2814D3ABC;
  v13 = &unk_2814D3ACC;
  v48 = fromCopy;
  do
  {
    v54 = v11;
    v14 = &currCellFp + 44 * v7;
    v55 = (&prevCellFp + 44 * v7);
    v56 = v14;
    *v55 = *v14;
    v70.location = v6 + 4;
    v70.length = 4;
    CFDataGetBytes(fromCopy, v70, v14);
    if (!v7)
    {
      v15 = *(v56 + 1);
      LODWORD(v57) = *(v56 + 1);
      HIDWORD(v57) = v55[1];
    }

    v16 = 0;
    for (i = 0; i != 16; i += 4)
    {
      *&v10[i] = *&v12[i];
      v71.location = v6 + i + 8;
      v71.length = 4;
      CFDataGetBytes(fromCopy, v71, &v12[i]);
      if (!v7)
      {
        v18 = *&v10[i];
        if (v18 <= HIDWORD(v57))
        {
          v19 = HIDWORD(v57);
        }

        else
        {
          v19 = *&v10[i];
        }

        if (v18 > HIDWORD(v57))
        {
          v8 = v16;
        }

        v20 = *&v12[i];
        v21 = v57;
        v22 = v20 > v57;
        if (v20 > v57)
        {
          v21 = *&v12[i];
        }

        v57 = __PAIR64__(v19, v21);
        if (v22)
        {
          v9 = v16;
        }
      }

      ++v16;
    }

    v53 = v9;
    for (j = 0; j != 16; j += 4)
    {
      *&v54[j] = *&v13[j];
      v72.location = v6 + j + 24;
      v72.length = 4;
      CFDataGetBytes(fromCopy, v72, &v13[j]);
    }

    v49 = v10;
    v52 = v7;
    if (!v7)
    {
      v24 = *&v56[4 * v9 + 20];
      if (v24 != v55[v8 + 5])
      {
        v25 = [(NetworkAnalyticsEngine *)selfCopy _epochForInterfaceType:5];
        v26 = v25;
        if (v25)
        {
          getMatchingRTLocationOfInterestType = [v25 getMatchingRTLocationOfInterestType];
        }

        else
        {
          getMatchingRTLocationOfInterestType = -1;
        }

        v68[0] = @"PrimaryKey";
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CELLULAR-RECORD"];
        v69[0] = v27;
        v69[1] = &unk_2847EFAD0;
        v68[1] = @"InterfaceType";
        v68[2] = @"LoadedLQM";
        v28 = [MEMORY[0x277CCABB0] numberWithInt:v24];
        v69[2] = v28;
        v68[3] = @"LOI";
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:getMatchingRTLocationOfInterestType];
        v69[3] = v29;
        v69[4] = &unk_2847EFAE8;
        v68[4] = @"NetworkAttachmentFaulty";
        v68[5] = @"CellFingerprintTriggered";
        v69[5] = MEMORY[0x277CBEC38];
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:6];

        [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:1 forInterface:2 fromDict:v30];
      }
    }

    v51 = v8;
    v55[9] = *(v56 + 9);
    v73.location = v6 + 40;
    v73.length = 4;
    CFDataGetBytes(fromCopy, v73, v56 + 36);
    v55[10] = *(v56 + 10);
    v74.location = v6 + 44;
    v74.length = 4;
    CFDataGetBytes(fromCopy, v74, v56 + 40);
    v31 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"(");
    v32 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"(");
    v33 = -16;
    do
    {
      v34 = &v13[v33];
      if (v33 == -4)
      {
        v35 = ")";
      }

      else
      {
        v35 = ", ";
      }

      [v31 appendFormat:@"%d%s", *v34, v35];
      [v32 appendFormat:@"%d%s", v34[4], v35];
      v33 += 4;
    }

    while (v33);
    v36 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *v56;
      v38 = *(v56 + 9);
      v39 = *(v56 + 10);
      *buf = 67110403;
      *v59 = v52;
      *&v59[4] = 1025;
      *&v59[6] = v37;
      v60 = 2112;
      v61 = v31;
      v62 = 2112;
      v63 = v32;
      v64 = 1024;
      v65 = v38;
      v66 = 1024;
      v67 = v39;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "eLQM: Link fingerprint for Cell %d: Cell Id = %{private}d, Duration = %@, LQM = %@, Throughput(UL, DL) = (%d, %d) Kbps", buf, 0x2Eu);
    }

    v7 = v52 + 1;
    fromCopy = v48;
    v10 = v49 + 44;
    v12 += 44;
    v6 += 44;
    v11 = v54 + 44;
    v13 += 44;
    v8 = v51;
    v9 = v53;
  }

  while (v52 != 4);
LABEL_40:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_recoverFromSystemCriticalErrors
{
  if (!self->serverConnection)
  {
    block[9] = v2;
    block[10] = v3;
    v4 = maxRetryCountCTConnectionSetup--;
    if (v4 < 2)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to set up CoreTelephony and Baseband channels, zero retries left, giving up", v9, 2u);
      }
    }

    else
    {
      v6 = dispatch_time(0, 5000000000);
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__NetworkAnalyticsEngine__recoverFromSystemCriticalErrors__block_invoke;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      dispatch_after(v6, queue, block);
    }
  }
}

uint64_t __58__NetworkAnalyticsEngine__recoverFromSystemCriticalErrors__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = maxRetryCountCTConnectionSetup;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Retrying to set up CoreTelephony and Baseband channels, retries left = %d", v5, 8u);
  }

  result = [*(a1 + 32) _setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_adviceToNSString:(int)string
{
  if (string > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27898DF38[string];
  }

  return v4;
}

- (int)_generateAdviceForEpoch:(id)epoch relativeTo:(id)to
{
  *&v30[5] = *MEMORY[0x277D85DE8];
  epochCopy = epoch;
  toCopy = to;
  if (!epochCopy)
  {
    v10 = 3;
    goto LABEL_22;
  }

  fatal = [epochCopy fatal];
  isRunning = [fatal isRunning];

  if (isRunning)
  {
    v10 = 4;
    goto LABEL_22;
  }

  if (!toCopy)
  {
    oncell = [epochCopy oncell];
    v14 = 1;
    if (oncell)
    {
      v14 = 2;
    }

    v15 = self->lastScoreExit[v14];
    durable = [epochCopy durable];
    if (([durable isKnownGood] & 1) != 0 || v15 == 1)
    {
      lowq = [epochCopy lowq];
      if (![lowq isRunning])
      {
        lowLqm = [epochCopy lowLqm];
        isRunning2 = [lowLqm isRunning];

        if (isRunning2)
        {
          v10 = 5;
        }

        else
        {
          v10 = 7;
        }

        goto LABEL_22;
      }
    }

    v10 = 5;
    goto LABEL_22;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:toCopy];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:v11];
    if (v12)
    {
      v10 = [epochCopy compareToSnapshot:v12];
    }

    else
    {
      v19 = netepochsLogHandle;
      v10 = 0;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        uUIDString = [v11 UUIDString];
        v29 = 138412290;
        *v30 = uUIDString;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "relative key %@ not found", &v29, 0xCu);

        v10 = 0;
      }
    }
  }

  else
  {
    v18 = netepochsLogHandle;
    v10 = 0;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138412290;
      *v30 = toCopy;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "invalid relative key %@", &v29, 0xCu);
      v10 = 0;
    }
  }

LABEL_22:
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v29 = 67109378;
    v30[0] = v10;
    LOWORD(v30[1]) = 2112;
    *(&v30[1] + 2) = epochCopy;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Generated advice %d for epoch %@", &v29, 0x12u);
  }

  if (epochCopy)
  {
    if ([epochCopy oncell])
    {
      v23 = 5;
    }

    else
    {
      v23 = 3;
    }

    v24 = [NetworkStateRelay getStateRelayFor:v23];
    [v24 setStuckDefRoute:v10 == 4];
    [v24 setAdvisory:v10];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_informKernelOfCellRrc:(int)rrc forInterface:(id)interface
{
  v26 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v24 = 0u;
  v25 = 0u;
  uTF8String = [interfaceCopy UTF8String];
  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (uTF8String)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(uTF8String + v9);
        *(&v24 + v9) = v10;
        if (!v10)
        {
          break;
        }

        if (++v9 == 15)
        {
          HIBYTE(v24) = 0;
          break;
        }
      }

      LOBYTE(v25) = 1;
      BYTE1(v25) = rrc;
      v11 = ioctl(v7, 0xC02069A9uLL, &v24);
      v12 = netepochsLogHandle;
      if (v11)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          rrcCopy3 = rrc;
          v22 = 2080;
          v23 = uTF8String;
          v13 = "RRC ioctl failure to notify kernel of change to %d interface %s";
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_16:
          v18 = 18;
          goto LABEL_17;
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        rrcCopy3 = rrc;
        v22 = 2080;
        v23 = uTF8String;
        v13 = "RRC ioctl sets %d for interface %s";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        rrcCopy3 = rrc;
        v13 = "ifName is NULL, not notifying kernel of RRC change to %d";
        v14 = v17;
        v15 = OS_LOG_TYPE_ERROR;
        v18 = 8;
LABEL_17:
        _os_log_impl(&dword_23255B000, v14, v15, v13, buf, v18);
      }
    }

    close(v8);
    goto LABEL_19;
  }

  v16 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Unable to open a socket for RRC ioctl to kernel", buf, 2u);
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_informKernelOfLIMUplink:(BOOL)uplink downlink:(BOOL)downlink forInterface:(const char *)interface
{
  downlinkCopy = downlink;
  uplinkCopy = uplink;
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v8 = socket(2, 2, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (interface)
    {
      v10 = 0;
      while (1)
      {
        v11 = interface[v10];
        *(&v38 + v10) = v11;
        if (!v11)
        {
          break;
        }

        if (++v10 == 15)
        {
          HIBYTE(v38) = 0;
          break;
        }
      }

      if (uplinkCopy && downlinkCopy)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if (!uplinkCopy && downlinkCopy)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12;
      }

      if (!uplinkCopy || downlinkCopy)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1;
      }

      LODWORD(v39) = v14;
      v15 = ioctl(v8, 0xC02069BFuLL, &v38);
      v16 = netepochsLogHandle;
      if (v15)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
          v18 = *__error();
          *buf = 67110146;
          v29 = v14;
          v30 = 1024;
          v31 = uplinkCopy;
          v32 = 1024;
          v33 = downlinkCopy;
          v34 = 2080;
          interfaceCopy2 = interface;
          v36 = 1024;
          v37 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "ioctl failure to notify kernel of overall LIM state %u with UL/DL (%d/%d) on interface %s, errno %d", buf, 0x24u);
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v29 = v14;
        v30 = 1024;
        v31 = uplinkCopy;
        v32 = 1024;
        v33 = downlinkCopy;
        v34 = 2080;
        interfaceCopy2 = interface;
        v23 = "ioctl sets overall LIM state %u with UL/DL (%d/%d) for interface %s";
        v24 = v16;
        v25 = OS_LOG_TYPE_DEFAULT;
        v26 = 30;
        goto LABEL_25;
      }
    }

    else
    {
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v29 = uplinkCopy;
        v30 = 1024;
        v31 = downlinkCopy;
        v23 = "interfaceName is NULL, not notifying kernel of LIM UL/DL (%d/%d)";
        v24 = v22;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 14;
LABEL_25:
        _os_log_impl(&dword_23255B000, v24, v25, v23, buf, v26);
      }
    }

LABEL_26:
    close(v9);
    goto LABEL_27;
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v20 = v19;
    v21 = *__error();
    *buf = 67109120;
    v29 = v21;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Unable to open a socket for LIM ioctl to kernel, errno %d", buf, 8u);
  }

LABEL_27:
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldAcceptRouteSource:(__NStatSource *)source
{
  v44 = *MEMORY[0x277D85DE8];
  liveDefaultRoutes = self->liveDefaultRoutes;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v7 = [(NSMutableDictionary *)liveDefaultRoutes objectForKeyedSubscript:v6];

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    sourceCopy3 = source;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "description callback for route source %p gives epoch %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = MEMORY[0x238386E90](source);
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      sourceCopy3 = source;
      v40 = 2113;
      v41 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "route source %p description callback has snapshot %{private}@", buf, 0x16u);
    }

    gateway = [v9 gateway];
    oncell = [v7 oncell];
    if (oncell)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

    v14 = [NetworkStateRelay getStateRelayFor:v13];
    v35 = 0;
    v36[0] = 0;
    v37 = 0;
    v36[1] = 0;
    if (!gateway || [gateway length] > 0x1C)
    {
      goto LABEL_33;
    }

    [gateway getBytes:&v35 length:{objc_msgSend(gateway, "length")}];
    v15 = v35;
    if ([gateway length] < v15)
    {
      LOBYTE(v35) = [gateway length];
    }

    memset(v31, 0, 46);
    if (BYTE1(v35) == 2)
    {
      v16 = &v35 + 4;
    }

    else
    {
      if (BYTE1(v35) != 30)
      {
        goto LABEL_24;
      }

      v16 = v36;
    }

    inet_ntop(BYTE1(v35), v16, v31, 0x2Eu);
    v33 = v31;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
    if (v17)
    {
      v32[0] = v14;
      v32[1] = v32;
      v18 = v17;
      hasGW = [v7 hasGW];
      v34 = v18;
      [hasGW addObject:v18];

      v20 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        primaryKey = [v7 primaryKey];
        hasGW2 = [v7 hasGW];
        *buf = 134218499;
        sourceCopy3 = source;
        v40 = 2113;
        v41 = primaryKey;
        v42 = 2113;
        v43 = hasGW2;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "new default route %p for %{private}@ has gw set to %{private}@", buf, 0x20u);
      }

      v14 = v32[0];
      if (v32[0])
      {
        v24 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v13];
        v25 = netepochsLogHandle;
        v26 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v24 == v7)
        {
          if (v26)
          {
            v28 = "Wi-Fi";
            *buf = 136381187;
            sourceCopy3 = v33;
            if (oncell)
            {
              v28 = "Cellular";
            }

            v40 = 2080;
            v41 = v28;
            v42 = 2048;
            v43 = v14;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Adding a default gateway %{private}s to %s state relay at %p", buf, 0x20u);
          }

          [v14 addDefaultGateway:v34];
        }

        else if (v26)
        {
          *buf = 136380675;
          sourceCopy3 = v33;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Received a default gateway %{private}s from stale epoch", buf, 0xCu);
        }
      }

      v27 = v34;
      goto LABEL_32;
    }

LABEL_24:
    v27 = 0;
LABEL_32:

LABEL_33:
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_handleRouteData:(__NStatSource *)data
{
  v38 = *MEMORY[0x277D85DE8];
  liveDefaultRoutes = self->liveDefaultRoutes;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v7 = [(NSMutableDictionary *)liveDefaultRoutes objectForKeyedSubscript:v6];

  v8 = MEMORY[0x238386E90](data);
  if (!v8)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    dataCopy5 = data;
    v21 = "No snapshot available for route source %p";
    v22 = v20;
    v23 = OS_LOG_TYPE_ERROR;
LABEL_17:
    _os_log_impl(&dword_23255B000, v22, v23, v21, buf, 0xCu);
    goto LABEL_18;
  }

  if (!v7)
  {
    v28 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    dataCopy5 = data;
    v21 = "default route %p counts block, no active epoch";
    v22 = v28;
    v23 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  if ([v7 hasCountDownActive:@"tickerDOA"] && (objc_msgSend(v7, "partial"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    connectSuccesses = [v8 connectSuccesses];
    v11 = connectSuccesses;
    partial = [v7 partial];
    [partial connSuccesses];
    v14 = v13;

    [v8 rttMinimum];
    v16 = v15;
    v17 = connectSuccesses;
    v18 = netepochsLogHandle;
    v19 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v14 >= v17 || v16 == 0.0)
    {
      if (v19)
      {
        *buf = 134218752;
        dataCopy5 = data;
        v34 = 2048;
        *v35 = v11;
        *&v35[8] = 2048;
        *&v35[10] = v14;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "default route %p counts block, connSucc=%llu, prevSucc=%f, rttMin=%f", buf, 0x2Au);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 134218752;
        dataCopy5 = data;
        v34 = 2048;
        *v35 = v11;
        *&v35[8] = 2048;
        *&v35[10] = v14;
        v36 = 2048;
        v37 = v16;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "disarming DOA ticker in default route %p counts block, connSucc=%llu, prevSucc=%f, rttMin=%f", buf, 0x2Au);
      }

      [(NetworkAnalyticsEngine *)self _disarmDOASuspector:v7];
    }
  }

  else
  {
    v24 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      v26 = [v7 hasCountDownActive:@"tickerDOA"];
      partial2 = [v7 partial];
      *buf = 134218496;
      dataCopy5 = data;
      v34 = 1024;
      *v35 = v26;
      *&v35[4] = 2048;
      *&v35[6] = partial2;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "default route %p counts block, either no DOA ticker (%d) or no partial (%p)", buf, 0x1Cu);
    }
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __43__NetworkAnalyticsEngine__handleRouteData___block_invoke;
  v30[3] = &unk_27898DAF8;
  v30[4] = self;
  v31 = v7;
  [v31 updateMetrics:v8 source:data wasProgress:v30];

LABEL_18:
  v29 = *MEMORY[0x277D85DE8];
}

void __43__NetworkAnalyticsEngine__handleRouteData___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = @"tickerFatal";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "defusing ticker %@ having seen route progress since %@", &v11, 0x16u);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v7 primaryKey];
    [v8 _disarmFatalSuspector:v7 withEventAt:v5 by:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleRouteClosing:(__NStatSource *)closing
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v6 = [(NSMutableDictionary *)self->liveDefaultRoutes objectForKeyedSubscript:v5];
  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v11 = 134218752;
      closingCopy2 = closing;
      v13 = 2048;
      v14 = v6;
      v15 = 2048;
      defRoute4 = [v6 defRoute4];
      v17 = 2048;
      defRoute6 = [v6 defRoute6];
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "default route %p is closing, epoch %p with v4 route %p, v6 route %p", &v11, 0x2Au);
    }

    if ([v6 defRoute4] == closing)
    {
      [v6 setDefRoute4:0];
    }

    if ([v6 defRoute6] == closing)
    {
      [v6 setDefRoute6:0];
    }

    [(NSMutableDictionary *)self->liveDefaultRoutes removeObjectForKey:v5];
  }

  else if (v8)
  {
    v11 = 134217984;
    closingCopy2 = closing;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "default route %p is closing with no associated epoch", &v11, 0xCu);
  }

  if (closing)
  {
    CFRelease(closing);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (__NStatSource)_newDefRouteForInterface:(id)interface saFamily:(unsigned __int8)family
{
  familyCopy = family;
  v24 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v7 = if_nametoindex([interfaceCopy UTF8String]);
  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  routeManager = self->routeManager;
  RouteSource = NStatManagerCreateRouteSource();
  if (!RouteSource)
  {
    v13 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v17 = interfaceCopy;
      v18 = 1024;
      v19 = familyCopy;
      v20 = 1024;
      LODWORD(v21) = v8;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Failed to create default route on %@, family = %d, index = %d", buf, 0x18u);
    }

    goto LABEL_7;
  }

  v11 = RouteSource;
  NStatSourceSetEventsBlock();
  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v17 = interfaceCopy;
    v18 = 1024;
    v19 = familyCopy;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Created default route on %@, family = %d, src = %p, index = %d", buf, 0x22u);
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void __60__NetworkAnalyticsEngine__newDefRouteForInterface_saFamily___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  if (a3 == 2)
  {
    [*(a1 + 32) _handleRouteClosing:a2];
  }

  else if (a3 == 1)
  {
    if (([*(a1 + 32) _shouldAcceptRouteSource:a2] & 1) == 0)
    {
      NStatSourceRemove();
    }
  }

  else if (a3)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = a3;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unknown  NetworkStatistics event %d", v9, 8u);
    }
  }

  else
  {
    [*(a1 + 32) _handleRouteData:a2];
  }

  objc_autoreleasePoolPop(v6);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveProtocolSnapshot:(id)snapshot
{
  v51 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([snapshotCopy hasNonLocalDestination])
    {
      [snapshotCopy flowDuration];
      v6 = v5;
      v7 = 0.0;
      v8 = 0.0;
      if ([snapshotCopy rxCellularBytes] > 0xA00000 && v6 > 0.0)
      {
        v9 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v10 = v9;
          *buf = 134218496;
          sourceIdentifier = [snapshotCopy sourceIdentifier];
          v47 = 2048;
          rxCellularBytes = [snapshotCopy rxCellularBytes];
          v49 = 2048;
          v50 = v6;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NAE receive snapshot %lld a cell flow with %llu downloaded bytes, duration is %f", buf, 0x20u);
        }

        v8 = [snapshotCopy rxCellularBytes] / v6;
      }

      if ([snapshotCopy rxWiFiBytes] > 0xA00000 && v6 > 0.0)
      {
        v11 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          sourceIdentifier2 = [snapshotCopy sourceIdentifier];
          rxWiFiBytes = [snapshotCopy rxWiFiBytes];
          *buf = 134218496;
          sourceIdentifier = sourceIdentifier2;
          v47 = 2048;
          rxCellularBytes = rxWiFiBytes;
          v49 = 2048;
          v50 = v6;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "NAE receive snapshot %lld a wifi flow with %llu downloaded bytes, duration is %f", buf, 0x20u);
        }

        v7 = [snapshotCopy rxWiFiBytes] / v6;
      }

      objc_opt_class();
      objc_opt_isKindOfClass();
      if (([snapshotCopy connProbeFailed] & 1) == 0)
      {
        if ([snapshotCopy interfaceWiFi])
        {
          v15 = [snapshotCopy txWiFiBytes] && objc_msgSend(snapshotCopy, "rxWiFiBytes") > 0x1000;
          if (v7 > 0.0 || v15)
          {
            v16 = objc_alloc(MEMORY[0x277CBEAA8]);
            flowStartTimestamp = [snapshotCopy flowStartTimestamp];
            v18 = [v16 initWithTimeInterval:flowStartTimestamp sinceDate:0.0];

            v19 = objc_alloc(MEMORY[0x277CCACA8]);
            sourceIdentifier3 = [snapshotCopy sourceIdentifier];
            attributedEntity = [snapshotCopy attributedEntity];
            rxWiFiBytes2 = [snapshotCopy rxWiFiBytes];
            [snapshotCopy flowDuration];
            v24 = [v19 initWithFormat:@"flow %lld for %@, WiFi rxbytes %lld duration %.3f seconds", sourceIdentifier3, attributedEntity, rxWiFiBytes2, v23];

            queue = [(AnalyticsEngineCore *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke;
            block[3] = &unk_27898DB48;
            v43 = v7;
            block[4] = self;
            v41 = v24;
            v44 = v15;
            v42 = v18;
            v26 = v18;
            v27 = v24;
            dispatch_async(queue, block);
          }
        }

        if (v8 > 0.0)
        {
          v28 = MEMORY[0x277CCACA8];
          sourceIdentifier4 = [snapshotCopy sourceIdentifier];
          attributedEntity2 = [snapshotCopy attributedEntity];
          rxCellularBytes2 = [snapshotCopy rxCellularBytes];
          [snapshotCopy flowDuration];
          v33 = [v28 stringWithFormat:@"flow %lld for %@, cell rxbytes %lld duration %.3f seconds", sourceIdentifier4, attributedEntity2, rxCellularBytes2, v32];

          queue2 = [(AnalyticsEngineCore *)self queue];
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke_550;
          v37[3] = &unk_27898BFA0;
          v39 = v8;
          v37[4] = self;
          v38 = v33;
          v35 = v33;
          dispatch_async(queue2, v37);
        }
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:3];
  v3 = v2;
  if (v2 && ([v2 defRoute4] || objc_msgSend(v3, "defRoute6")))
  {
    if (*(a1 + 56) > 0.0)
    {
      v4 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 56);
        v6 = *(a1 + 40);
        v7 = v4;
        [v3 topDownlRate];
        v16 = 134218499;
        v17 = v5;
        v18 = 2113;
        v19 = v6;
        v20 = 2048;
        v21 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "wifi download rate of %.0f Bps reported from %{private}@, epoch's top is %.0f Bps", &v16, 0x20u);
      }

      v9 = [v3 partial];

      if (v9)
      {
        v10 = [v3 partial];
        [v10 topDownloadRate];
        v12 = v11;

        if (v12 < *(a1 + 56))
        {
          v12 = *(a1 + 56);
        }

        v13 = [v3 partial];
        [v13 setTopDownloadRate:v12];
      }

      [v3 topDownlRate];
      if (v14 < *(a1 + 56))
      {
        v14 = *(a1 + 56);
      }

      [v3 setTopDownlRate:v14];
    }

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) _disarmFatalSuspector:v3 withEventAt:*(a1 + 48) by:*(a1 + 40)];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke_550(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:5];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 partial];

    if (v4)
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v8 = v5;
        [v3 topDownlRate];
        v16 = 134218499;
        v17 = v6;
        v18 = 2113;
        v19 = v7;
        v20 = 2048;
        v21 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "cell download rate of %.0f Bps reported from %{private}@, epoch's top is %.0f Bps", &v16, 0x20u);
      }

      v10 = [v3 partial];
      [v10 topDownloadRate];
      v12 = v11;

      if (v12 < *(a1 + 48))
      {
        v12 = *(a1 + 48);
      }

      v13 = [v3 partial];
      [v13 setTopDownloadRate:v12];

      [v3 topDownlRate];
      if (v14 < *(a1 + 48))
      {
        v14 = *(a1 + 48);
      }

      [v3 setTopDownlRate:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)didReceiveProtocolSnapshot:(id)snapshot
{
  if (sharedInstance_3)
  {
    [sharedInstance_3 didReceiveProtocolSnapshot:snapshot];
  }
}

- (void)_dnsWithSymptoms:(id)symptoms
{
  v108 = *MEMORY[0x277D85DE8];
  userInfo = [symptoms userInfo];
  keyEnumerator = [userInfo keyEnumerator];
  v88 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v90 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = keyEnumerator;
  v6 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v87 = userInfo;
    v8 = 0;
    v9 = *v94;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v94 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v93 + 1) + 8 * v10);

        v12 = [userInfo objectForKeyedSubscript:v8];
        v13 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_NO_REPLIES"];
        v14 = [v8 isEqualToString:v13];

        v15 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESUMED_RESPONDING"];
        v16 = [v8 isEqualToString:v15];

        if ((v14 & 1) != 0 || v16)
        {
          v91 = v12;
          eventQualifiers = [v12 eventQualifiers];
          v18 = [eventQualifiers objectForKeyedSubscript:@"1"];
          v92 = 0;
          v19 = validateSockAddrToString(v18, 0, &v92);
          v20 = v92;

          v21 = v88;
          if (v88)
          {
            if (v19)
            {
              if ([(__CFString *)v20 length])
              {
                hasDNS = [v88 hasDNS];
                v23 = [hasDNS member:v20];

                if (v23)
                {
                  v33 = selfCopy;
                  if (v14)
                  {
                    impDNS = [v88 impDNS];
                    [impDNS addObject:v20];

                    v35 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v36 = v35;
                      impDNS2 = [v88 impDNS];
                      v38 = [impDNS2 count];
                      hasDNS2 = [v88 hasDNS];
                      v40 = [hasDNS2 count];
                      impDNS3 = [v88 impDNS];
                      hasDNS3 = [v88 hasDNS];
                      *buf = 138478851;
                      v98 = v20;
                      v99 = 2048;
                      v100 = v38;
                      v101 = 2048;
                      v102 = v40;
                      v103 = 2113;
                      v104 = impDNS3;
                      v105 = 2113;
                      v106 = hasDNS3;
                      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, server %{private}@, not responding. %lu/%lu are out: %{private}@/%{private}@", buf, 0x34u);

                      v33 = selfCopy;
                      v21 = v88;
                    }

                    v43 = +[NDFCoreShim sharedInstance];
                    [v43 dnsServer:v20 isResponding:0];

                    [(NetworkAnalyticsEngine *)v33 _updateCombinedDNSCounts];
                    hasDNS4 = [v21 hasDNS];
                    v45 = [hasDNS4 count];
                    impDNS4 = [v21 impDNS];
                    v47 = [impDNS4 count];

                    v31 = v45 == v47;
                    userInfo = v87;
                    if (v31)
                    {
                      internal_symptom_create();
                      internal_symptom_send();
                      v48 = [NetworkStateRelay getStateRelayFor:3];
                      [v48 setDnsOut:1];
                      if ([v88 hasInternetDNS])
                      {
                        [v48 setInternetDnsOut:1];
                      }

                      v49 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        v50 = v49;
                        hasDNS5 = [v88 hasDNS];
                        v52 = [hasDNS5 count];
                        *buf = 134217984;
                        v98 = v52;
                        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, all out (%lu)", buf, 0xCu);
                      }

                      [(NetworkAnalyticsEngine *)v33 _armFatalSuspector:v88 isActive:0];
                      v53 = +[NDFCoreShim sharedInstance];
                      impDNS5 = [v88 impDNS];
                      [v53 noteDNSAllOutWithServers:impDNS5];
                    }
                  }

                  else
                  {
                    v61 = objc_alloc(MEMORY[0x277CBEB58]);
                    impDNS6 = [v88 impDNS];
                    v63 = [v61 initWithSet:impDNS6];

                    [v63 removeObject:v20];
                    v64 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = v64;
                      v66 = [v63 count];
                      hasDNS6 = [v88 hasDNS];
                      v68 = [hasDNS6 count];
                      hasDNS7 = [v88 hasDNS];
                      *buf = 138478851;
                      v98 = v20;
                      v99 = 2048;
                      v100 = v66;
                      v101 = 2048;
                      v102 = v68;
                      v103 = 2113;
                      v104 = v63;
                      v105 = 2113;
                      v106 = hasDNS7;
                      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, server %{private}@, resumed responding. %lu/%lu are out: %{private}@/%{private}@", buf, 0x34u);

                      v21 = v88;
                    }

                    v70 = +[NDFCoreShim sharedInstance];
                    [v70 dnsServer:v20 isResponding:1];

                    hasDNS8 = [v21 hasDNS];
                    v72 = [hasDNS8 count];
                    impDNS7 = [v21 impDNS];
                    v74 = v21;
                    v75 = [impDNS7 count];

                    if (v72 == v75)
                    {
                      hasGW = [v74 hasGW];
                      hasDNS9 = [v74 hasDNS];
                      v78 = [hasGW isSubsetOfSet:hasDNS9];

                      v79 = netepochsLogHandle;
                      v80 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
                      userInfo = v87;
                      if (v78)
                      {
                        if (v80)
                        {
                          *buf = 0;
                          _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEFAULT, "passing on DNS service resume because it's from default gateway", buf, 2u);
                        }
                      }

                      else
                      {
                        if (v80)
                        {
                          *buf = 138412290;
                          v98 = @"tickerFatal";
                          _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEFAULT, "defusing ticker %@ having seen DNS progress", buf, 0xCu);
                        }

                        date = [MEMORY[0x277CBEAA8] date];
                        [(NetworkAnalyticsEngine *)selfCopy _disarmFatalSuspector:v88 withEventAt:date by:v20];
                      }

                      v83 = [NetworkStateRelay getStateRelayFor:3];
                      [v83 setDnsOut:0];
                      if ([v88 hasInternetDNS])
                      {
                        [v83 setInternetDnsOut:0];
                      }

                      impDNS8 = [v88 impDNS];
                      [impDNS8 removeObject:v20];

                      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                      internal_symptom_create();
                      internal_symptom_send();
                    }

                    else
                    {
                      impDNS9 = [v74 impDNS];
                      [impDNS9 removeObject:v20];

                      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                      userInfo = v87;
                    }
                  }

                  goto LABEL_50;
                }
              }
            }
          }

          if (v90)
          {
            if (v20)
            {
              hasDNS10 = [v90 hasDNS];
              v25 = [hasDNS10 member:v20];

              if (v25)
              {
                if (v14)
                {
                  impDNS10 = [v90 impDNS];
                  [impDNS10 addObject:v20];

                  [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                  hasDNS11 = [v90 hasDNS];
                  v28 = [hasDNS11 count];
                  impDNS11 = [v90 impDNS];
                  v30 = [impDNS11 count];

                  v31 = v28 == v30;
                  userInfo = v87;
                  if (v31)
                  {
                    v32 = [NetworkStateRelay getStateRelayFor:5];
                    [v32 setDnsOut:1];
                  }
                }

                else
                {
                  hasDNS12 = [v90 hasDNS];
                  v56 = [hasDNS12 count];
                  impDNS12 = [v90 impDNS];
                  v58 = [impDNS12 count];

                  if (v56 == v58)
                  {
                    v59 = [NetworkStateRelay getStateRelayFor:5];
                    [v59 setDnsOut:0];
                  }

                  impDNS13 = [v90 impDNS];
                  [impDNS13 removeObject:v20];

                  [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                  userInfo = v87;
                }

LABEL_50:

                goto LABEL_51;
              }
            }
          }

          userInfo = v87;
          v12 = v91;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_51:
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)_triggerDisconnectEdge:(id)edge
{
  v104 = *MEMORY[0x277D85DE8];
  edgeCopy = edge;
  v5 = &rnfLogHandle;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = qos_class_self();
    *buf = 136315138;
    v92 = qos_string(v8);
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "trigger-disconnect: _triggerDisconnectEdge: QoS %s", buf, 0xCu);
  }

  userInfo = [edgeCopy userInfo];
  keyEnumerator = [userInfo keyEnumerator];
  v10 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = keyEnumerator;
  v84 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
  if (!v84)
  {
    goto LABEL_41;
  }

  v12 = 0;
  v83 = *v88;
  *&v11 = 134218240;
  v76 = v11;
  v77 = edgeCopy;
  v78 = v10;
  while (2)
  {
    for (i = 0; i != v84; ++i)
    {
      v14 = v12;
      if (*v88 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v87 + 1) + 8 * i);

      v15 = [userInfo objectForKeyedSubscript:v12];
      eventData = [v15 eventData];
      if (!eventData || (~*(eventData + 4) & 3) != 0)
      {
        v71 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v72 = v12;
          v73 = v71;
          uTF8String = [v12 UTF8String];
          *buf = 136315138;
          v92 = uTF8String;
          _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_ERROR, "TD: ManagedEvent for %s lacks the expected qualifiers. Skip processing", buf, 0xCu);
        }

        edgeCopy = v77;
        goto LABEL_40;
      }

      v17 = *(eventData + 24);
      v18 = *(eventData + 32);
      v19 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v12;
        v86 = v12;
        log = v19;
        uTF8String2 = [v12 UTF8String];
        v21 = v18;
        seqNo = [v15 seqNo];
        primaryKey = [v10 primaryKey];
        v24 = v5;
        selfCopy = self;
        uTF8String3 = [primaryKey UTF8String];
        [MEMORY[0x277CBEAA8] date];
        v82 = i;
        v28 = v27 = v15;
        creationTimeStamp = [v27 creationTimeStamp];
        [v28 timeIntervalSinceDate:creationTimeStamp];
        *buf = 136316419;
        v92 = uTF8String2;
        v93 = 2048;
        v94 = seqNo;
        v18 = v21;
        v95 = 1024;
        v96 = v17;
        v97 = 2049;
        v98 = v21;
        v99 = 2081;
        v100 = uTF8String3;
        self = selfCopy;
        v5 = v24;
        v101 = 2048;
        v102 = v30;
        _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: received RSSI notification for %s [#%llu], edge: %d, target bssid: %{private}llx, incumbent: %{private}s, propagation delay: %fs", buf, 0x3Au);

        v12 = v86;
        v10 = v78;

        v15 = v27;
        i = v82;
      }

      if (v17 == 1)
      {
        self->pendedRssiEdgeTarget = v18;
        creationTimeStamp2 = [v15 creationTimeStamp];
        pendedRssiEdge = self->pendedRssiEdge;
        self->pendedRssiEdge = creationTimeStamp2;

        if (v10)
        {
          primaryKey2 = [v10 primaryKey];
          v50 = v18;
          v51 = primaryKey2;
          has_bssid = primary_key_has_bssid(primaryKey2, v50);

          if (has_bssid)
          {
            lowq = [v10 lowq];
            [lowq start];

            [(NetworkAnalyticsEngine *)self _armLowQDisconnectSuspector:v10];
            [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:v10];
            creationTimeStamp3 = [v15 creationTimeStamp];
            [WiFiTriggerHandler triggerAllowedByRSSI:1 receiptTimestamp:creationTimeStamp3];

            goto LABEL_34;
          }
        }

        v62 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v60 = v62;
          v61 = "trigger-disconnect: mismatched start-lowq notification, pending it";
LABEL_28:
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 2u);
        }
      }

      else
      {
        if (!v17)
        {
          v31 = v18;
          v32 = i;
          v33 = self->pendedRssiEdge;
          self->pendedRssiEdge = 0;

          self->pendedRssiEdgeTarget = 0;
          v34 = v15;
          creationTimeStamp4 = [v15 creationTimeStamp];
          [WiFiTriggerHandler triggerAllowedByRSSI:0 receiptTimestamp:creationTimeStamp4];

          if (!v10 || ([v10 primaryKey], v36 = objc_claimAutoreleasedReturnValue(), v37 = primary_key_has_bssid(v36, v31), v36, !v37))
          {
            v59 = *v5;
            v15 = v34;
            i = v32;
            if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_34;
            }

            *buf = 0;
            v60 = v59;
            v61 = "trigger-disconnect: mismatched stop-lowq notification, tossing it";
            goto LABEL_28;
          }

          lowq2 = [v10 lowq];
          [lowq2 currentRun];
          if (v39 > 300.0)
          {

            v15 = v34;
          }

          else
          {
            lowq3 = [v10 lowq];
            [lowq3 currentRun];
            v42 = v41;
            [v10 overall];
            v44 = v43 = v10;
            [v44 currentRun];
            v46 = [StopWatch nearlyEqualRun:v42 toRun:v45 fudgeFactor:2.0];

            v10 = v43;
            v15 = v34;
            if (!v46)
            {
LABEL_33:
              lowq4 = [v10 lowq];
              [lowq4 stop];

              [(NetworkAnalyticsEngine *)self _disarmLowQDisconnectSuspector:v10];
              [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:v10];
              i = v32;
              goto LABEL_34;
            }
          }

          v63 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
            lowq5 = [v10 lowq];
            [lowq5 currentRun];
            v67 = v66;
            overall = [v10 overall];
            [overall currentRun];
            *buf = v76;
            v92 = v67;
            v93 = 2048;
            v94 = v69;
            _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "RSSI ok level restored after %f down-time or the whole epoch stay (%f) prompts evaluating known-good notification", buf, 0x16u);

            v15 = v34;
          }

          [(NetworkAnalyticsEngine *)self _delayedKnownGoodNetworkAlert];
          goto LABEL_33;
        }

        v55 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v56 = v12;
          v57 = v55;
          uTF8String4 = [v12 UTF8String];
          *buf = 136315394;
          v92 = uTF8String4;
          v93 = 1024;
          LODWORD(v94) = v17;
          _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_ERROR, "trigger-disconnect: received RSSI notification for %s with invalid edge: %d", buf, 0x12u);
        }
      }

LABEL_34:
    }

    edgeCopy = v77;
    v84 = [obj countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v84)
    {
      continue;
    }

    break;
  }

LABEL_40:

LABEL_41:
  v75 = *MEMORY[0x277D85DE8];
}

- (void)_dataStall:(id)stall
{
  v37 = *MEMORY[0x277D85DE8];
  userInfo = [stall userInfo];
  [userInfo keyEnumerator];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v29;
    *&v5 = 138478083;
    v25 = v5;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);

        v11 = [userInfo objectForKeyedSubscript:v7];
        v12 = *([v11 eventData] + 24);
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v12];
          if ([v13 type] == 1)
          {
            v14 = 3;
            goto LABEL_13;
          }

          if ([v13 type] != 2)
          {
            goto LABEL_17;
          }

          v14 = 5;
LABEL_13:
          v16 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v14, v25];
          if (v16)
          {
            v17 = v16;
            v18 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v19 = v18;
              primaryKey = [v17 primaryKey];
              *buf = v25;
              v33 = primaryKey;
              v34 = 2048;
              v35 = v17;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Data stall reported on epoch %{private}@, %p", buf, 0x16u);
            }

            [v17 reportDataStall];
          }

          else
          {
LABEL_17:
            v21 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v22 = v21;
              type = [v13 type];
              *buf = 134217984;
              v33 = type;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Data stall reported on unidentified epoch on interface type %ld, dropping", buf, 0xCu);
            }
          }

          goto LABEL_20;
        }

        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Did not receive an interface index from DATA_STALL symptom", buf, 2u);
        }

LABEL_20:
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (!v6)
      {

        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_captivityRedirects:(id)redirects
{
  v28 = *MEMORY[0x277D85DE8];
  userInfo = [redirects userInfo];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [userInfo countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v20;
    *&v6 = 138478083;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v20 != v9)
        {
          objc_enumerationMutation(userInfo);
        }

        v8 = *(*(&v19 + 1) + 8 * i);

        v12 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
        v13 = netepochsLogHandle;
        v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            v15 = v13;
            primaryKey = [v12 primaryKey];
            *buf = v18;
            v24 = primaryKey;
            v25 = 2048;
            v26 = v12;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Captivity redirect reported on epoch %{private}@, %p", buf, 0x16u);
          }

          [v12 reportCaptivityRedirect];
        }

        else if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Captivity redirect reported on unidentified epoch, dropping", buf, 2u);
        }
      }

      v7 = [userInfo countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_certError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  userInfo = [error userInfo];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [userInfo countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v20;
    *&v6 = 138478083;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v20 != v9)
        {
          objc_enumerationMutation(userInfo);
        }

        v8 = *(*(&v19 + 1) + 8 * i);

        v12 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
        v13 = netepochsLogHandle;
        v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            v15 = v13;
            primaryKey = [v12 primaryKey];
            *buf = v18;
            v24 = primaryKey;
            v25 = 2048;
            v26 = v12;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Cert error reported on epoch %{private}@, %p", buf, 0x16u);
          }

          [v12 reportCertError];
        }

        else if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Cert error reported on unidentified epoch, dropping", buf, 2u);
        }
      }

      v7 = [userInfo countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_processLIM:(id)m
{
  v10 = *MEMORY[0x277D85DE8];
  userInfo = [m userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kKernelLIMRecord"];
  if (v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "LIM record passed from kernel: %@", &v8, 0xCu);
    }

    [(NetworkAnalyticsEngine *)self _createJournalRecordOfType:2 forInterface:0 fromDict:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)wifiShim_NetworkForgottenWithSSID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NetworkAnalyticsEngine_wifiShim_NetworkForgottenWithSSID___block_invoke;
    v7[3] = &unk_27898A7D0;
    v8 = dCopy;
    selfCopy = self;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Got nil SSID", buf, 2u);
    }
  }
}

void __60__NetworkAnalyticsEngine_wifiShim_NetworkForgottenWithSSID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v9 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Deleting known Wi-Fi Network %{private}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v4 _wifiKnownNetworksDeleted:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)wifiShim_BSSIDChangedForInterface:(id)interface
{
  interfaceCopy = interface;
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NetworkAnalyticsEngine_wifiShim_BSSIDChangedForInterface___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = interfaceCopy;
  v6 = interfaceCopy;
  dispatch_async(queue, v7);
}

- (void)wifiShim_L2NewMetrics:(id)metrics forInterface:(id)interface
{
  v121 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  interfaceCopy = interface;
  v6 = [NetworkStateRelay getStateRelayFor:3];
  v70 = [metricsCopy objectForKeyedSubscript:@"RSSI"];
  v79 = [metricsCopy objectForKeyedSubscript:@"SNR"];
  v78 = [metricsCopy objectForKeyedSubscript:@"CCA"];
  v73 = [metricsCopy objectForKeyedSubscript:@"TXFAIL"];
  v72 = [metricsCopy objectForKeyedSubscript:@"TXRETRANS"];
  v71 = [metricsCopy objectForKeyedSubscript:@"TXFRAMES"];
  v76 = [metricsCopy objectForKeyedSubscript:@"TXRATE"];
  v75 = [metricsCopy objectForKeyedSubscript:@"RXRATE"];
  if (v70 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v70 intValue];
    if (intValue > 0xFFFFFF9B)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(intValue) = 0;
  }

  v8 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    LODWORD(v88) = intValue;
    WORD2(v88) = 2112;
    *(&v88 + 6) = v70;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Out of range RSSI value %d (%@), using old one", buf, 0x12u);
  }

  intValue = [v6 lastReportedRxSignalStrength];
LABEL_9:
  v80 = [metricsCopy objectForKeyedSubscript:@"PER_CORE_RSSI"];
  if (v80 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v80 count] == 2)
  {
    v9 = [v80 objectAtIndexedSubscript:0];
    intValue2 = [v9 intValue];

    v11 = [v80 objectAtIndexedSubscript:1];
    intValue3 = [v11 intValue];

    if (intValue2 <= 0xFFFFFF9B)
    {
      v13 = 0;
    }

    else
    {
      v13 = intValue2;
    }

    v66 = v13;
    if (intValue3 <= 0xFFFFFF9B)
    {
      v14 = 0;
    }

    else
    {
      v14 = intValue3;
    }
  }

  else
  {
    v14 = -1;
    v66 = -1;
  }

  v64 = v14;
  if (kRSSISignalAlertThreshold)
  {
    v15 = -74;
  }

  else
  {
    v15 = -75;
  }

  v74 = intValue;
  if (intValue > v15)
  {
    goto LABEL_46;
  }

  if (v66 < 0 && (v64 & 0x80000000) != 0)
  {
    v16 = v66;
    if (v66 <= v64)
    {
      v16 = v64;
    }

    if (intValue < v16)
    {
      v16 = intValue;
    }
  }

  else
  {
    if ((v66 & 0x80000000) == 0)
    {
      v74 = intValue;
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    v16 = v66;
    if (v66 >= v64)
    {
      v16 = v64;
    }

    if (intValue < v16)
    {
      v16 = intValue;
    }
  }

  v74 = v16;
LABEL_37:
  lastReportedRxSignalStrength = [v6 lastReportedRxSignalStrength];
  if (kRSSISignalAlertThreshold)
  {
    v15 = -74;
  }

  else
  {
    v15 = -75;
  }

  if (lastReportedRxSignalStrength > v15)
  {
    if ([(SystemSettingsRelay *)self->systemSettingsRelay rnfEnabled])
    {
      memset_pattern16(wifiShim_L2NewMetrics_forInterface__rssiSamples, &unk_232816E00, 0x20uLL);
      wifiShim_L2NewMetrics_forInterface__rssiLastIndex = 0;
      queue = [(AnalyticsEngineCore *)self queue];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke;
      v84[3] = &unk_27898A7A8;
      v84[4] = self;
      v19 = &v85;
      v85 = interfaceCopy;
      v86 = intValue;
      v20 = v84;
      goto LABEL_52;
    }

    if (kRSSISignalAlertThreshold)
    {
      v15 = -74;
    }

    else
    {
      v15 = -75;
    }
  }

LABEL_46:
  if (intValue <= v15)
  {
    goto LABEL_53;
  }

  lastReportedRxSignalStrength2 = [v6 lastReportedRxSignalStrength];
  v22 = kRSSISignalAlertThreshold ? -74 : -75;
  if (lastReportedRxSignalStrength2 > v22)
  {
    goto LABEL_53;
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke_595;
  block[3] = &unk_27898A7A8;
  block[4] = self;
  v19 = &v82;
  v82 = interfaceCopy;
  v83 = intValue;
  v20 = block;
LABEL_52:
  dispatch_async(queue, v20);

LABEL_53:
  v23 = wifiShim_L2NewMetrics_forInterface__rssiLastIndex++;
  wifiShim_L2NewMetrics_forInterface__rssiSamples[v23 & 7] = v74;
  if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue4 = [v79 intValue];
  }

  else
  {
    intValue4 = 0;
  }

  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue5 = [v78 intValue];
  }

  else
  {
    intValue5 = 0;
  }

  v77 = [metricsCopy objectForKeyedSubscript:@"CCA_STATS"];
  if (v77 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = v77;
    v25 = [v24 objectForKeyedSubscript:@"CCA_SELF_WAKE"];
    intValue6 = [v25 intValue];

    v26 = [v24 objectForKeyedSubscript:@"CCA_SELF_TOTAL"];
    intValue7 = [v26 intValue];

    v27 = [v24 objectForKeyedSubscript:@"CCA_OTHER_WAKE"];
    intValue8 = [v27 intValue];

    v28 = [v24 objectForKeyedSubscript:@"CCA_OTHER_TOTAL"];
    intValue9 = [v28 intValue];

    v29 = [v24 objectForKeyedSubscript:@"CCA_INTERFERENCE_WAKE"];
    intValue10 = [v29 intValue];

    v30 = [v24 objectForKeyedSubscript:@"CCA_INTERFERENCE_TOTAL"];

    intValue11 = [v30 intValue];
  }

  else
  {
    intValue11 = -1;
    intValue10 = -1;
    intValue9 = -1;
    intValue8 = -1;
    intValue7 = -1;
    intValue6 = -1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v73 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue2 = [v72 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue3 = [v71 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue3 = 0;
  }

  v34 = 0.0;
  v35 = 0.0;
  if (v76)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v76 doubleValue];
      v35 = v36;
    }
  }

  if (v75)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v75 doubleValue];
      v34 = v37;
    }
  }

  v38 = v6;
  objc_sync_enter(v38);
  [v38 setLqmAsystole:0];
  [v38 setL2MetricsCount:{objc_msgSend(v38, "l2MetricsCount") + 1}];
  if ([v38 rxSignalThresholded])
  {
    if (kMinimumRSSISignalUp)
    {
      v39 = -75;
    }

    else
    {
      v39 = -77;
    }

    v40 = intValue <= v39;
  }

  else
  {
    if (kMinimumRSSISignalDown)
    {
      v41 = -77;
    }

    else
    {
      v41 = -80;
    }

    v40 = v74 <= v41;
  }

  v42 = v40;
  [v38 setTxRate:v35];
  [v38 setRxRate:v34];
  [v38 setRxSignalFullBars:intValue > -71];
  [v38 setRxSignalThresholded:v42];
  v43 = 0;
  if (unsignedLongLongValue3 >= 3 && unsignedLongLongValue2 > 2 * unsignedLongLongValue3)
  {
    v43 = (unsignedLongLongValue / unsignedLongLongValue3) > 0.1;
  }

  v44 = rnfLogHandle;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    txThresholded = [v38 txThresholded];
    *buf = 138417154;
    *&v88 = interfaceCopy;
    WORD4(v88) = 1024;
    *(&v88 + 10) = intValue;
    HIWORD(v88) = 1024;
    *v89 = v66;
    *&v89[4] = 1024;
    *v90 = v64;
    *&v90[4] = 1024;
    *&v90[6] = v74;
    v91 = 1024;
    v92 = intValue4;
    v93 = 1024;
    v94 = intValue6;
    v95 = 1024;
    v96 = intValue7;
    v97 = 1024;
    v98 = intValue8;
    v99 = 1024;
    v100 = intValue9;
    v101 = 1024;
    v102 = intValue10;
    v103 = 1024;
    v104 = intValue11;
    v105 = 1024;
    v106 = intValue5;
    v107 = 2048;
    v108 = unsignedLongLongValue3;
    v109 = 2048;
    v110 = unsignedLongLongValue2;
    v111 = 2048;
    v112 = unsignedLongLongValue;
    v113 = 1024;
    v114 = txThresholded;
    v115 = 1024;
    v116 = v43;
    v117 = 2048;
    v118 = v35;
    v119 = 2048;
    v120 = v34;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "L2 Metrics on %@: rssi: %d [%d,%d] -> %d, snr: %d (cca [wake/total] self/other/intf): [%d,%d]/[%d,%d]/[%d,%d]/%d (txFrames/txReTx/txFail): %llu/%llu/%llu -> (was/is) %d/%d, txRate: %.1f, rxRate: %.1f", buf, 0x92u);
  }

  [v38 setTxThresholded:v43];
  [v38 updateSNR:intValue4 RSSI:intValue];
  [v38 setLastReportedL2TxFail:unsignedLongLongValue];
  [v38 setLastReportedL2TxRetry:unsignedLongLongValue2];
  [v38 setLastReportedL2TxFrames:unsignedLongLongValue3];
  objc_sync_exit(v38);

  if (self->_wifiShimFastLQMUpdates && self->rnfRssiExtraDescentFactor + 3 <= wifiShim_L2NewMetrics_forInterface__rssiSamples[wifiShim_L2NewMetrics_forInterface__rssiLastIndex & 7 ^ 4] - wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex - 1) & 7])
  {
    v46 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v47 = wifiShim_L2NewMetrics_forInterface__rssiSamples[wifiShim_L2NewMetrics_forInterface__rssiLastIndex & 7 ^ 4];
      v48 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 5) & 7];
      v49 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 6) & 7];
      v50 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex - 1) & 7];
      rnfRssiExtraDescentFactor = self->rnfRssiExtraDescentFactor;
      *buf = 67110144;
      LODWORD(v88) = v47;
      WORD2(v88) = 1024;
      *(&v88 + 6) = v48;
      WORD5(v88) = 1024;
      HIDWORD(v88) = v49;
      *v89 = 1024;
      *&v89[2] = v50;
      *v90 = 2048;
      *&v90[2] = rnfRssiExtraDescentFactor;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "L2 Metrics History (old...last): %d,%d,%d,%d. Extra descent factor: %lld\n", buf, 0x24u);
    }

    v52 = wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 6;
    v53 = 1;
    do
    {
      v54 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(v52 - 7) & 7];
      v55 = wifiShim_L2NewMetrics_forInterface__rssiSamples[v52 & 7];
      v56 = v54 >= v55 || v53++ >= 3;
      --v52;
    }

    while (!v56);
    if (v54 < v55)
    {
      [CellFallbackHandler requestBoost:2];
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 384) = [*(*(a1 + 32) + 360) fastLQMUpdates];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (*(*(a1 + 32) + 384))
    {
      v4 = "fast";
    }

    else
    {
      v4 = "slow";
    }

    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2080;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "L2 Metrics on: %@, LQM callback interval: %s (rssi=%d)", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke_595(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 384) = [*(*(a1 + 32) + 360) fastLQMUpdates];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (*(*(a1 + 32) + 384))
    {
      v4 = "fast";
    }

    else
    {
      v4 = "slow";
    }

    v5 = *(a1 + 48);
    v7 = 138412802;
    v8 = v3;
    v9 = 2080;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "L2 Metrics on: %@, LQM callback interval: %s (rssi=%d)", &v7, 0x1Cu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)wifiShim_L2TriggerDisconnectEdge:(BOOL)edge forInterface:(id)interface
{
  edgeCopy = edge;
  v25 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = "FALSE";
    if (edgeCopy)
    {
      v7 = "TRUE";
    }

    *buf = 138412546;
    v22 = interfaceCopy;
    v23 = 2080;
    v24 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "L2 TriggerDisconnect on ifname %@: edge in: %s", buf, 0x16u);
  }

  if (edgeCopy)
  {
    v8 = [NetworkStateRelay getStateRelayFor:3];
    objc_sync_enter(v8);
    if ([v8 l2MetricsCount])
    {
      if (([v8 rxSignalThresholded] & 1) == 0)
      {
        v9 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = interfaceCopy;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "L2 TriggerDisconnect on ifname %@: raises rxSignalThresholded", buf, 0xCu);
        }
      }

      [v8 setRxSignalThresholded:1];
    }

    else
    {
      v10 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Received TriggerDisconnect event before receiving any L2 metrics on %@, not raising rxSignalThresholded", buf, 0xCu);
      }

      v11 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"TriggerDisconnect without L2 Metrics" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:0];
        if (interfaceCopy)
        {
          v14 = interfaceCopy;
        }

        else
        {
          v14 = @"unknown";
        }

        v18 = *MEMORY[0x277D6B100];
        v19 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v20 = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [v12 snapshotWithSignature:v13 duration:v16 events:0 payload:0 actions:&__block_literal_global_630 reply:0.0];
      }
    }

    objc_sync_exit(v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __72__NetworkAnalyticsEngine_wifiShim_L2TriggerDisconnectEdge_forInterface___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v2;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "TriggerDisconnect without L2 Metrics ABC case response: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid
{
  disableCopy = disable;
  bssidCopy = bssid;
  v8 = bssidCopy;
  if (disableCopy && bssidCopy && ([MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", disableCopy, bssidCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__NetworkAnalyticsEngine_wifiShim_InfraAdminDisable_bssid___block_invoke;
    block[3] = &unk_27898A7D0;
    block[4] = self;
    v16 = v10;
    v12 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Admin disable reported on unidentifiable epoch, dropping", buf, 2u);
    }
  }
}

void __59__NetworkAnalyticsEngine_wifiShim_InfraAdminDisable_bssid___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:3];
  v3 = [v2 primaryKey];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [v2 primaryKey];
      *buf = 138478083;
      v29 = v7;
      v30 = 2048;
      v31 = v2;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Admin disable reported on epoch %{private}@, %p", buf, 0x16u);
    }

    v8 = v2;
  }

  else
  {
    [*(*(a1 + 32) + 144) allValues];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v26 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 primaryKey];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v18 = v17;
              v19 = [v14 primaryKey];
              *buf = 138478083;
              v29 = v19;
              v30 = 2048;
              v31 = v14;
              _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Admin disable reported on recovered epoch %{private}@, %p", buf, 0x16u);
            }

            v8 = v14;
            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_17:
  }

  if (v8)
  {
    [v8 reportAdminDisable];
  }

  else
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138477827;
      v29 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Admin disable reported on lost epoch for %{private}@, dropping", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)wifiShim_LQMAsystoleDetected:(double)detected
{
  obj = [NetworkStateRelay getStateRelayFor:3, detected];
  objc_sync_enter(obj);
  [obj setLqmAsystole:1];
  v3 = +[AWDAgent defaultInstance];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:4001 userInfo:0];
  [v3 postMetricForSignificantEventWithName:@"WiFiLQMFailure" errorContext:3 error:v4 status:0];

  objc_sync_exit(obj);
}

- (void)startRNFTestWithConnection:(id)connection options:(id)options scenarioName:(id)name reply:(id)reply
{
  v196[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  optionsCopy = options;
  nameCopy = name;
  replyCopy = reply;
  v181[0] = 0;
  v181[1] = v181;
  v181[2] = 0x2020000000;
  v181[3] = 0;
  v175 = 0;
  v176 = &v175;
  v177 = 0x3032000000;
  v178 = __Block_byref_object_copy__9;
  v179 = __Block_byref_object_dispose__9;
  v180 = 0;
  v116 = connectionCopy;
  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  if (self->_isInternalBuild)
  {
    v122 = [NetworkStateRelay getStateRelayFor:3];
    v118 = [NetworkStateRelay getStateRelayFor:5];
    if ([v122 active])
    {
      if ([v118 active])
      {
        selfCopy = self;
        v11 = netepochsLogHandle;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          timeOfDayPrecise = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
          *buf = 138412802;
          *&buf[4] = timeOfDayPrecise;
          *&buf[12] = 2112;
          *&buf[14] = nameCopy;
          *&buf[22] = 2112;
          v190 = optionsCopy;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) scenario name: %@ and test parameters is %@", buf, 0x20u);
        }

        [(WiFiShim *)self->_wifiShim removeDelegate:self];
        v131 = [optionsCopy objectForKeyedSubscript:@"interfaceName"];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v187 = @"kAppStateKeyForegroundActivityState";
        v188 = MEMORY[0x277CBEC38];
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        [defaultCenter postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v14];

        +[CellFallbackHandler startRunningRNFTest];
        runningRNFTest = 1;
        v114 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
        queue = dispatch_queue_create("com.apple.symptoms.rnftest.queue", v114);
        v117 = [optionsCopy objectForKeyedSubscript:@"scenarios"];
        if ([nameCopy length] && (objc_msgSend(v117, "objectForKeyedSubscript:", nameCopy), (v121 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting RNF Test for the '%@' scenario", nameCopy];
          [remoteObjectProxy sendRNFTestStatusInformation:nameCopy];
        }

        else
        {
          v39 = MEMORY[0x277CCACA8];
          timeOfDayPrecise2 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
          v41 = [nameCopy length];
          v42 = @"the specified scenario couldn't be found.";
          if (!v41)
          {
            v42 = @"no scenario was specified.";
          }

          v43 = [v39 stringWithFormat:@"RNFTest: (%@) Starting RNF Test for the 'walk-out' scenario because %@", timeOfDayPrecise2, v42];
          v44 = v176[5];
          v176[5] = v43;

          v45 = netepochsLogHandle;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String = [v176[5] UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
          }

          [remoteObjectProxy sendRNFTestStatusInformation:v176[5]];
          v121 = [v117 objectForKeyedSubscript:@"walk-out"];
        }

        v123 = +[CellFallbackHandler sharedInstance];
        obja = [v121 objectForKeyedSubscript:@"expectedAdvisories"];
        v47 = [obja count];
        if (v47 < 1)
        {
          v50 = 0;
        }

        else
        {
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = [obja objectAtIndexedSubscript:v48];

            v51 = [v50 objectForKeyedSubscript:@"timeIndex"];
            integerValue = [v51 integerValue];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v53 = [v50 objectForKeyedSubscript:@"advisory"];
            integerValue2 = [v53 integerValue];

            v190 = integerValue2;
            v174[0] = 0;
            v174[1] = v174;
            v174[2] = 0x2020000000;
            v55 = [v50 objectForKeyedSubscript:@"timeIndexLeeway"];
            integerValue3 = [v55 integerValue];

            v174[3] = integerValue3;
            v172[0] = 0;
            v172[1] = v172;
            v172[2] = 0x2020000000;
            v173 = v47 == 1;
            v57 = dispatch_time(0, 1000000 * integerValue);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke;
            block[3] = &unk_27898DBE8;
            v167 = v181;
            v162 = v123;
            v163 = selfCopy;
            v168 = &v175;
            v169 = buf;
            v164 = remoteObjectProxy;
            v170 = v172;
            v166 = replyCopy;
            v171 = v174;
            v165 = queue;
            dispatch_after(v57, v165, block);

            _Block_object_dispose(v172, 8);
            _Block_object_dispose(v174, 8);
            _Block_object_dispose(buf, 8);
            ++v48;
            v49 = v50;
            --v47;
          }

          while (v47);
        }

        v115 = v50;
        v58 = [v121 objectForKeyedSubscript:@"l2Metrics"];

        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        objb = v58;
        v59 = 0;
        v60 = [objb countByEnumeratingWithState:&v157 objects:v186 count:16];
        if (v60)
        {
          v61 = *v158;
          v62 = MEMORY[0x277D85DD0];
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v158 != v61)
              {
                objc_enumerationMutation(objb);
              }

              v64 = *(*(&v157 + 1) + 8 * i);
              v65 = [v64 objectForKeyedSubscript:@"timeIndex"];
              integerValue4 = [v65 integerValue];

              if (integerValue4 > v59)
              {
                v59 = integerValue4;
              }

              v67 = dispatch_time(0, 1000000 * integerValue4);
              v155[0] = v62;
              v155[1] = 3221225472;
              v155[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_710;
              v155[3] = &unk_27898A328;
              v155[4] = selfCopy;
              v155[5] = v64;
              v156 = v131;
              dispatch_after(v67, queue, v155);
            }

            v60 = [objb countByEnumeratingWithState:&v157 objects:v186 count:16];
          }

          while (v60);
        }

        v68 = +[NLCRunner sharedInstance];
        rnfTestNLCRunner = selfCopy->rnfTestNLCRunner;
        selfCopy->rnfTestNLCRunner = v68;

        [selfCopy->rnfTestNLCRunner setInterfaceName:v131];
        selfCopy->nlcRuleScheduled = 0;
        v70 = [v121 objectForKeyedSubscript:@"dns"];

        selfCopy->nlcRuleScheduled |= [v70 count] != 0;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        objc = v70;
        v71 = [objc countByEnumeratingWithState:&v151 objects:v185 count:16];
        if (v71)
        {
          v72 = *v152;
          v73 = MEMORY[0x277D85DD0];
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v152 != v72)
              {
                objc_enumerationMutation(objc);
              }

              v75 = *(*(&v151 + 1) + 8 * j);
              v76 = [v75 objectForKeyedSubscript:@"timeIndex"];
              integerValue5 = [v76 integerValue];

              if (integerValue5 > v59)
              {
                v59 = integerValue5;
              }

              v78 = dispatch_time(0, 1000000 * integerValue5);
              v150[0] = v73;
              v150[1] = 3221225472;
              v150[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_718;
              v150[3] = &unk_27898A7D0;
              v150[4] = v75;
              v150[5] = selfCopy;
              dispatch_after(v78, queue, v150);
            }

            v71 = [objc countByEnumeratingWithState:&v151 objects:v185 count:16];
          }

          while (v71);
        }

        v79 = [v121 objectForKeyedSubscript:@"txPER"];

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v80 = v79;
        v81 = [v80 countByEnumeratingWithState:&v146 objects:v184 count:16];
        if (v81)
        {
          v82 = *v147;
          do
          {
            for (k = 0; k != v81; ++k)
            {
              if (*v147 != v82)
              {
                objc_enumerationMutation(v80);
              }

              v84 = [*(*(&v146 + 1) + 8 * k) objectForKeyedSubscript:@"timeIndex"];
              integerValue6 = [v84 integerValue];

              if (integerValue6 > v59)
              {
                v59 = integerValue6;
              }

              v86 = dispatch_time(0, 1000000 * integerValue6);
              dispatch_after(v86, queue, &__block_literal_global_727);
            }

            v81 = [v80 countByEnumeratingWithState:&v146 objects:v184 count:16];
          }

          while (v81);
        }

        v87 = [v121 objectForKeyedSubscript:@"txLossRate"];

        selfCopy->nlcRuleScheduled |= [v87 count] != 0;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        objd = v87;
        v88 = [objd countByEnumeratingWithState:&v142 objects:v183 count:16];
        if (v88)
        {
          v89 = *v143;
          v90 = MEMORY[0x277D85DD0];
          do
          {
            for (m = 0; m != v88; ++m)
            {
              if (*v143 != v89)
              {
                objc_enumerationMutation(objd);
              }

              v92 = *(*(&v142 + 1) + 8 * m);
              v93 = [v92 objectForKeyedSubscript:@"timeIndex"];
              integerValue7 = [v93 integerValue];

              if (integerValue7 > v59)
              {
                v59 = integerValue7;
              }

              v95 = dispatch_time(0, 1000000 * integerValue7);
              v141[0] = v90;
              v141[1] = 3221225472;
              v141[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_3;
              v141[3] = &unk_27898A7D0;
              v141[4] = v92;
              v141[5] = selfCopy;
              dispatch_after(v95, queue, v141);
            }

            v88 = [objd countByEnumeratingWithState:&v142 objects:v183 count:16];
          }

          while (v88);
        }

        v96 = [v121 objectForKeyedSubscript:@"rxLossRate"];

        selfCopy->nlcRuleScheduled |= [v96 count] != 0;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        obj = v96;
        v97 = [obj countByEnumeratingWithState:&v137 objects:v182 count:16];
        if (v97)
        {
          v98 = *v138;
          v99 = MEMORY[0x277D85DD0];
          do
          {
            for (n = 0; n != v97; ++n)
            {
              if (*v138 != v98)
              {
                objc_enumerationMutation(obj);
              }

              v101 = *(*(&v137 + 1) + 8 * n);
              v102 = [v101 objectForKeyedSubscript:@"timeIndex"];
              integerValue8 = [v102 integerValue];

              if (integerValue8 > v59)
              {
                v59 = integerValue8;
              }

              v104 = dispatch_time(0, 1000000 * integerValue8);
              v136[0] = v99;
              v136[1] = 3221225472;
              v136[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_734;
              v136[3] = &unk_27898A7D0;
              v136[4] = v101;
              v136[5] = selfCopy;
              dispatch_after(v104, queue, v136);
            }

            v97 = [obj countByEnumeratingWithState:&v137 objects:v182 count:16];
          }

          while (v97);
        }

        if (selfCopy->nlcRuleScheduled)
        {
          [selfCopy->rnfTestNLCRunner engage];
        }

        v105 = [v121 objectForKeyedSubscript:@"timeout"];
        integerValue9 = [v105 integerValue];

        if (integerValue9 <= v59 + 10000)
        {
          integerValue9 = v59 + 10000;
        }

        v107 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
        rnfTestTimeoutTimer = selfCopy->rnfTestTimeoutTimer;
        selfCopy->rnfTestTimeoutTimer = v107;

        v109 = selfCopy->rnfTestTimeoutTimer;
        v110 = dispatch_time(0, 1000000 * integerValue9);
        dispatch_source_set_timer(v109, v110, 0xFFFFFFFFFFFFFFFFLL, 0);
        v111 = selfCopy->rnfTestTimeoutTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_738;
        handler[3] = &unk_27898A0C8;
        handler[4] = selfCopy;
        dispatch_source_set_event_handler(v111, handler);
        v112 = selfCopy->rnfTestTimeoutTimer;
        v134[0] = MEMORY[0x277D85DD0];
        v134[1] = 3221225472;
        v134[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2_739;
        v134[3] = &unk_27898A848;
        v134[4] = selfCopy;
        v134[5] = &v175;
        dispatch_source_set_cancel_handler(v112, v134);
        dispatch_resume(selfCopy->rnfTestTimeoutTimer);
        goto LABEL_79;
      }

      v31 = MEMORY[0x277CCACA8];
      timeOfDayPrecise3 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
      v33 = [v31 stringWithFormat:@"RNFTest: (%@) RNF Test requires an active Cellular connection", timeOfDayPrecise3];
      v34 = v176[5];
      v176[5] = v33;

      v35 = netepochsLogHandle;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String2 = [v176[5] UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String2;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      [remoteObjectProxy sendRNFTestStatusInformation:v176[5]];
      v191 = @"rnfTestResult";
      v192 = MEMORY[0x277CBEC28];
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(replyCopy + 2))(replyCopy, v37, v38);
      v114 = v37;
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      timeOfDayPrecise4 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
      v25 = [v23 stringWithFormat:@"RNFTest: (%@) RNF Test requires an active Wi-Fi connection", timeOfDayPrecise4];
      v26 = v176[5];
      v176[5] = v25;

      v27 = netepochsLogHandle;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String3 = [v176[5] UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String3;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      [remoteObjectProxy sendRNFTestStatusInformation:v176[5]];
      v193 = @"rnfTestResult";
      v194 = MEMORY[0x277CBEC28];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(replyCopy + 2))(replyCopy, v29, v30);
      v114 = v29;
    }

    v115 = 0;
    v123 = 0;
    v121 = 0;
    v117 = 0;
    queue = 0;
    obj = 0;
    v131 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v16 = MEMORY[0x277CCACA8];
  timeOfDayPrecise5 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
  v18 = [v16 stringWithFormat:@"RNFTest: (%@) RNF Test is not supported on non-internal builds", timeOfDayPrecise5];
  v19 = v176[5];
  v176[5] = v18;

  v20 = netepochsLogHandle;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String4 = [v176[5] UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String4;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [remoteObjectProxy sendRNFTestStatusInformation:v176[5]];
  v195 = @"rnfTestResult";
  v196[0] = MEMORY[0x277CBEC28];
  v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:&v195 count:1];
  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(replyCopy + 2))(replyCopy, v122, v22);
  v117 = 0;
  v115 = 0;
  v123 = 0;
  v121 = 0;
  queue = 0;
  obj = 0;
  v131 = 0;

LABEL_80:
  _Block_object_dispose(&v175, 8);

  _Block_object_dispose(v181, 8);
  v113 = *MEMORY[0x277D85DE8];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke(uint64_t a1)
{
  v81[1] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) fallbackAdvice];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 40) timeOfDayPrecise];
  v4 = *(*(*(a1 + 72) + 8) + 24);
  v5 = [v2 stringWithFormat:@"RNFTest: (%@) Comparing currentAdviceLevel (%ld) against expected level (%ld)", v3, v4, *(*(*(a1 + 88) + 8) + 24)];
  v6 = *(*(a1 + 80) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 80) + 8) + 40);
    v10 = v9;
    v11 = v8;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = [v9 UTF8String];
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
  if (*(*(*(a1 + 72) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [*(a1 + 40) timeOfDayPrecise];
    v14 = *(*(*(a1 + 72) + 8) + 24);
    v15 = [v12 stringWithFormat:@"RNFTest: (%@) Matched currentAdviceLevel (%ld) to expected level (%ld)", v13, v14, *(*(*(a1 + 88) + 8) + 24)];
    v16 = *(*(a1 + 80) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(*(a1 + 80) + 8) + 40);
      v20 = v19;
      v21 = v18;
      v22 = [v19 UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
    }

    [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v23 = MEMORY[0x277CCACA8];
      v24 = [*(a1 + 40) timeOfDayPrecise];
      v25 = [v23 stringWithFormat:@"RNFTest: (%@) Final test was successful (1)", v24];
      v26 = *(*(a1 + 80) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(*(*(a1 + 80) + 8) + 40);
        v30 = v29;
        v31 = v28;
        v32 = [v29 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v32;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
      }

      [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
      v33 = *(a1 + 64);
      if (v33)
      {
        v80 = @"rnfTestResult";
        v81[0] = MEMORY[0x277CBEC38];
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:&v80 count:1];
        (*(v33 + 16))(v33, v34, 0);
      }
    }
  }

  else if (*(*(*(a1 + 104) + 8) + 24))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x3032000000;
    v77 = __Block_byref_object_copy__9;
    v78 = __Block_byref_object_dispose__9;
    v79 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 56));
    v35 = netepochsLogHandle;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(a1 + 40) timeOfDayPrecise];
      *v71 = 138412290;
      v72 = v36;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) About to start observing kNotificationFallbackRecommendation", v71, 0xCu);
    }

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_689;
    v64[3] = &unk_27898DB98;
    v38 = *(a1 + 56);
    v67 = *(a1 + 72);
    v68 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
    v57 = *(a1 + 40);
    v39 = v57.i64[1];
    v40 = *(a1 + 96);
    p_buf = &buf;
    v70 = v40;
    v41 = *(a1 + 64);
    v42.i64[0] = v38;
    v42.i64[1] = v41;
    v43 = vzip2q_s64(v57, v42);
    v42.i64[1] = v57.i64[0];
    v66 = v43;
    v65 = v42;
    v44 = [v37 addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:v64];
    v45 = *(a1 + 40);
    v46 = *(v45 + 408);
    *(v45 + 408) = v44;

    v47 = netepochsLogHandle;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [*(a1 + 40) timeOfDayPrecise];
      v49 = *(*(*(a1 + 88) + 8) + 24);
      *v71 = 138412546;
      v72 = v48;
      v73 = 2048;
      v74 = v49;
      _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) About to wait for expected advisory (%ld)", v71, 0x16u);
    }

    v50 = *(*(&buf + 1) + 40);
    if (v50)
    {
      v51 = dispatch_time(0, 1000000 * *(*(*(a1 + 104) + 8) + 24));
      dispatch_source_set_timer(v50, v51, 0xFFFFFFFFFFFFFFFFLL, 0);
      v52 = *(*(&buf + 1) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_699;
      handler[3] = &unk_27898DBC0;
      v53 = *(a1 + 48);
      handler[4] = *(a1 + 40);
      v62 = *(a1 + 80);
      v60 = v53;
      v61 = *(a1 + 64);
      v63 = &buf;
      dispatch_source_set_event_handler(v52, handler);
      v54 = *(*(&buf + 1) + 40);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_703;
      v58[3] = &unk_27898A848;
      v55 = *(a1 + 80);
      v58[4] = *(a1 + 40);
      v58[5] = v55;
      dispatch_source_set_cancel_handler(v54, v58);
      dispatch_resume(*(*(&buf + 1) + 40));
    }

    _Block_object_dispose(&buf, 8);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_689(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2;
  block[3] = &unk_27898DB70;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v11 = v6;
  v15 = *(a1 + 88);
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v5, block);
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"detail"];
  *(*(*(a1 + 64) + 8) + 24) = [v3 integerValue];

  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 timeOfDayPrecise];
    v8 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 138412546;
    v50 = v7;
    v51 = 2048;
    v52 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) Received advice level change %ld", buf, 0x16u);
  }

  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = *(*(*(a1 + 72) + 8) + 24);
  v11 = MEMORY[0x277CCACA8];
  v12 = [*(a1 + 40) timeOfDayPrecise];
  v13 = v12;
  v14 = *(*(*(a1 + 64) + 8) + 24);
  v15 = *(*(*(a1 + 72) + 8) + 24);
  if (v9 == v10)
  {
    v16 = [v11 stringWithFormat:@"RNFTest: (%@) Matched new currentAdviceLevel (%ld) to expected level (%ld)", v12, *(*(*(a1 + 64) + 8) + 24), v15];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 80) + 8) + 40);
      v21 = v20;
      v22 = v19;
      v23 = [v20 UTF8String];
      *buf = 136315138;
      v50 = v23;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
    v24 = *(*(*(a1 + 88) + 8) + 40);
    if (v24)
    {
      dispatch_source_cancel(v24);
      v25 = *(*(a1 + 88) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;
    }

    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v27 = MEMORY[0x277CCACA8];
      v28 = [*(a1 + 40) timeOfDayPrecise];
      v29 = [v27 stringWithFormat:@"RNFTest: (%@) Final test was successful (2)", v28];
      v30 = *(*(a1 + 80) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;

      v32 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(*(*(a1 + 80) + 8) + 40);
        v34 = v33;
        v35 = v32;
        v36 = [v33 UTF8String];
        *buf = 136315138;
        v50 = v36;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
      v37 = *(a1 + 56);
      if (v37)
      {
        v47 = @"rnfTestResult";
        v48 = MEMORY[0x277CBEC38];
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        (*(v37 + 16))(v37, v38, 0);
LABEL_15:
      }
    }
  }

  else
  {
    v39 = [v11 stringWithFormat:@"RNFTest: (%@) This new advice level (%ld) is not the level we're looking for (%ld)", v12, *(*(*(a1 + 64) + 8) + 24), v15];
    v40 = *(*(a1 + 80) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v39;

    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(*(*(a1 + 80) + 8) + 40);
      v44 = v43;
      v38 = v42;
      v45 = [v43 UTF8String];
      *buf = 136315138;
      v50 = v45;
      _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      goto LABEL_15;
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_699(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Timed out waiting for expected advisory (%ld)", v3, *(*(*(a1 + 64) + 8) + 24)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v23 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [*(a1 + 40) sendRNFTestStatusInformation:*(*(*(a1 + 56) + 8) + 40)];
  if (*(*(a1 + 32) + 408))
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:*(*(a1 + 32) + 408)];

    v12 = *(a1 + 32);
    v13 = *(v12 + 408);
    *(v12 + 408) = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v20 = @"rnfTestResult";
    v21 = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v14 + 16))(v14, v15, v16);
  }

  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;

  v19 = *MEMORY[0x277D85DE8];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_703(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Canceled adviceWaitingTimer", v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v16 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 408))
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:*(*(a1 + 32) + 408)];

    v12 = *(a1 + 32);
    v13 = *(v12 + 408);
    *(v12 + 408) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_710(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 timeOfDayPrecise];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"l2Metric"];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) Sending l2NewMetric %@", &v10, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) objectForKeyedSubscript:@"l2Metric"];
  [v7 wifiShim_L2NewMetrics:v8 forInterface:*(a1 + 48)];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_718(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"dnsOut"];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 40) + 424);
  if (v3)
  {

    return [v4 disableDNS];
  }

  else
  {

    return [v4 enableDNS];
  }
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"txLossRate"];
  [v2 floatValue];
  v4 = v3;

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Setting Uplink TxLossRate to %f", &v9, 0xCu);
  }

  *&v6 = v4;
  result = [*(*(a1 + 40) + 424) setUplinkPacketLossRate:v6];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_734(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"rxLossRate"];
  [v2 floatValue];
  v4 = v3;

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Setting Uplink RxLossRate to %f", &v9, 0xCu);
  }

  *&v6 = v4;
  result = [*(*(a1 + 40) + 424) setDownlinkPacketLossRate:v6];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_738(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  *(v2 + 416) = 0;

  v4 = *(a1 + 32);

  return [v4 stopRunningRNFTestWithReply:0];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2_739(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Canceled rnfTestTimeoutTimer", v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v13 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)abortRNFTestWithReply:(id)reply
{
  replyCopy = reply;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "RNFTest: Abort RNFTest", v8, 2u);
  }

  rnfTestTimeoutTimer = self->rnfTestTimeoutTimer;
  if (rnfTestTimeoutTimer)
  {
    dispatch_source_cancel(rnfTestTimeoutTimer);
    v7 = self->rnfTestTimeoutTimer;
    self->rnfTestTimeoutTimer = 0;
  }

  [(NetworkAnalyticsEngine *)self stopRunningRNFTestWithReply:replyCopy];
}

- (void)stopRunningRNFTestWithReply:(id)reply
{
  v18[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = replyCopy;
  if (runningRNFTest == 1)
  {
    if (self->nlcRuleScheduled)
    {
      [self->rnfTestNLCRunner disengage];
    }

    rnfTestNLCRunner = self->rnfTestNLCRunner;
    self->rnfTestNLCRunner = 0;

    [CellFallbackHandler stopRunningRNFTestWithReply:v5];
    runningRNFTest = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = @"kAppStateKeyForegroundActivityState";
    v18[0] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [defaultCenter postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v8];

    [(WiFiShim *)self->_wifiShim addDelegate:self];
  }

  else if (replyCopy)
  {
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = @"RNFTest: RNF Test Abort called when not running an RNFTest";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v13[0] = @"rnfTestResult";
    v13[1] = @"SymptomAnalyticsServiceReason";
    v14[0] = MEMORY[0x277CBEC28];
    v14[1] = @"RNFTest: RNF Test Abort called when not running an RNFTest";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (v5)[2](v5, v10, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)timeOfDayPrecise
{
  v7 = *MEMORY[0x277D85DE8];
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  if (!gettimeofday(&v5, 0))
  {
    snprintf(__str, 0x40uLL, "%ld.%d", v5.tv_sec, v5.tv_usec);
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_setWiFiRSSIThresholds:(BOOL)thresholds
{
  thresholdsCopy = thresholds;
  v9 = *MEMORY[0x277D85DE8];
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "dis";
    if (thresholdsCopy)
    {
      v5 = "en";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "turbo_rnf (RSSI levels) is %sabled", &v7, 0xCu);
  }

  kMinimumRSSISignalDown = thresholdsCopy;
  kMinimumRSSISignalUp = thresholdsCopy;
  kRSSISignalAlertThreshold = thresholdsCopy;
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_determineIfThisIsWiFiFirstAttachment:(id)attachment
{
  v55 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v5 = [(NetworkAnalyticsEngine *)self _naIdentifierToMajor:attachmentCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
    v7 = [v6 networkAttachmentsWithMajorID:v5];
    v8 = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      context = v8;
      v36 = v6;
      v37 = attachmentCopy;
      v38 = v9;
      v12 = 0;
      v13 = *v44;
      v34 = *v44;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v43 + 1) + 8 * v14);
          identifier = [v16 identifier];
          v12 = [(NetworkAnalyticsEngine *)self _naIdentifierToMajor:identifier];

          if ([v12 isEqualToString:v5])
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            hasDefaultRoute = [v16 hasDefaultRoute];
            v19 = [hasDefaultRoute countByEnumeratingWithState:&v39 objects:v53 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v40;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v40 != v21)
                  {
                    objc_enumerationMutation(hasDefaultRoute);
                  }

                  [*(*(&v39 + 1) + 8 * i) epochs];
                  v24 = (v23 + 0.0);
                  if (v24)
                  {
                    v29 = netepochsLogHandle;
                    v9 = v38;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = v29;
                      v31 = [v38 count];
                      *buf = 67109632;
                      v48 = 0;
                      v49 = 2048;
                      v50 = v31;
                      v51 = 2048;
                      v52 = v24;
                      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "firstAttachment (%d) matched Wi-Fi NA count %lu, epoch count %lu", buf, 0x1Cu);
                    }

                    objc_autoreleasePoolPop(context);
                    v26 = 0;
                    v6 = v36;
                    attachmentCopy = v37;
                    goto LABEL_25;
                  }
                }

                v20 = [hasDefaultRoute countByEnumeratingWithState:&v39 objects:v53 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v9 = v38;
            v13 = v34;
          }

          ++v14;
          v15 = v12;
        }

        while (v14 != v11);
        v11 = [v9 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v11);

      v6 = v36;
      attachmentCopy = v37;
      v8 = context;
    }

    objc_autoreleasePoolPop(v8);
    v25 = netepochsLogHandle;
    v26 = 1;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v25;
      v28 = [v9 count];
      *buf = 67109632;
      v48 = 1;
      v49 = 2048;
      v50 = v28;
      v51 = 2048;
      v52 = 0;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "firstAttachment (%d) matched Wi-Fi NA count %lu, epoch count %lu", buf, 0x1Cu);
    }

LABEL_25:
  }

  else
  {
    v26 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_establishLqmBaselineOn:(BOOL)on interfaceName:(id)name lqmPtr:(int *)ptr
{
  onCopy = on;
  *&v32[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = nameCopy;
  if (onCopy && self->cellSPIType == 3)
  {
    if (self->serverConnection)
    {
      v10 = 100;
    }

    else
    {
      v10 = -1;
    }

    goto LABEL_22;
  }

  valuePtr = -1;
  if (!nameCopy)
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "retrieve_lqm_for_interface is called with nil ifName";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 2;
LABEL_20:
      _os_log_impl(&dword_23255B000, v22, v23, v21, buf, v24);
    }

LABEL_21:
    v10 = -1;
    goto LABEL_22;
  }

  v11 = *MEMORY[0x277CE16B0];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], nameCopy, *MEMORY[0x277CE16B0]);
  if (!NetworkInterfaceEntity)
  {
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v31 = v9;
      *&v31[8] = 2112;
      *v32 = v11;
      v21 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
      v22 = v25;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = NetworkInterfaceEntity;
  v14 = SCDynamicStoreCopyValue(_SCDynamicStore, NetworkInterfaceEntity);
  v15 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v31 = v14;
    *&v31[8] = 2112;
    *v32 = v13;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
  }

  CFRelease(v13);
  if (!v14)
  {
    goto LABEL_21;
  }

  v16 = CFGetTypeID(v14);
  if (v16 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(v14, v11);
    if (Value)
    {
      v18 = Value;
      v19 = CFGetTypeID(Value);
      if (v19 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
      }
    }
  }

  CFRelease(v14);
  v10 = valuePtr;
LABEL_22:
  *ptr = v10;
  v26 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v31 = dword_2814D300C;
    *&v31[4] = 1024;
    *&v31[6] = dword_2814D3014;
    v32[0] = 2112;
    *&v32[1] = v9;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "LQM baseline (re)established: LQM = (%d, %d) interface = %@", buf, 0x18u);
  }

  if (onCopy)
  {
    v27 = 5;
  }

  else
  {
    v27 = 3;
  }

  [(NetworkAnalyticsEngine *)self _trackRealTimeLqmLastUpdatedOnInterfaceType:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_idleExitTransactionCheck
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    activeEpochs = self->activeEpochs;
    lastEpochRemoved = self->lastEpochRemoved;
    v6 = v3;
    activeEpochTransaction = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    *buf = 138412802;
    *&buf[4] = activeEpochs;
    *&buf[12] = 2048;
    *&buf[14] = lastEpochRemoved;
    *&buf[22] = 1024;
    v29 = activeEpochTransaction != 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Enter, epochs %@, lastEpochRemoved %p   holding os_transaction %d", buf, 0x1Cu);
  }

  v8 = [(NSMutableDictionary *)self->activeEpochs count];
  v9 = self->lastEpochRemoved;
  if (v8)
  {
    self->lastEpochRemoved = 0;

    activeEpochTransaction2 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    if (activeEpochTransaction2)
    {
    }

    else if (!self->xpcShutdown)
    {
      v19 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "start holding os_transaction (com.apple.symptomsd.active_network_epoch)", buf, 2u);
      }

      v20 = os_transaction_create();
      [(NetworkAnalyticsEngine *)self setActiveEpochTransaction:v20];
    }
  }

  else if (!v9)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v12 = self->lastEpochRemoved;
    self->lastEpochRemoved = date;

    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->lastEpochRemoved;
      *buf = 134218242;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Set last epoch removed to %p %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    activeEpochTransaction3 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    v16 = activeEpochTransaction3 != 0;

    LOBYTE(v29) = v16;
    if (*(*&buf[8] + 24) == 1)
    {
      v17 = dispatch_time(0, 10000000000);
      queue = [(AnalyticsEngineCore *)self queue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke;
      v27[3] = &unk_27898A848;
      v27[4] = self;
      v27[5] = buf;
      dispatch_after(v17, queue, v27);
    }

    _Block_object_dispose(buf, 8);
  }

  v21 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->activeEpochs;
    v23 = self->lastEpochRemoved;
    v24 = v21;
    activeEpochTransaction4 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    *buf = 138412802;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    *&buf[22] = 1024;
    v29 = activeEpochTransaction4 != 0;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Exit, epochs %@, lastEpochRemoved %p   holding os_transaction %d", buf, 0x1Cu);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void *__51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeEpochTransaction];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 134218240;
    v14 = v4;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Check after last epoch removal, value %p, exit holding os_transaction %d", buf, 0x12u);
  }

  result = *(*(a1 + 32) + 176);
  if (result)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      result = [result timeIntervalSinceNow];
      v8 = v7;
      if (v7 < -8.0)
      {
        v9 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v14 = -v8;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Start workspace save after delay of %f", buf, 0xCu);
        }

        [*(a1 + 32) _flushAllJournalRecords];
        [*(*(a1 + 32) + 8) save];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_762;
        v11[3] = &unk_27898DA28;
        v12 = *(a1 + 32);
        result = [FlowAnalyticsEngine workspaceSaveWithCallback:v11];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_762(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_2;
  v3[3] = &unk_27898A848;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeEpochTransaction];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v10 = 134218240;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Finished workspace save, value %p, holding os_transaction %d", &v10, 0x12u);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v6 = *(*(a1 + 32) + 176);
    if (v6)
    {
      [v6 timeIntervalSinceNow];
      if (v7 < -8.0)
      {
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "stop holding os_transaction", &v10, 2u);
        }

        [*(a1 + 32) setActiveEpochTransaction:0];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_concurrentEpochs
{
  v3 = self->activeEpochs;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->activeEpochs allValues];
  objc_sync_exit(v3);

  return allValues;
}

- (void)_armDOASuspector:(id)suspector
{
  v28 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    interfaceName = [suspectorCopy interfaceName];
    primaryKey = [suspectorCopy primaryKey];
    *buf = 138413059;
    v21 = interfaceName;
    v22 = 2113;
    v23 = primaryKey;
    v24 = 2048;
    defRoute4 = [suspectorCopy defRoute4];
    v26 = 2048;
    defRoute6 = [suspectorCopy defRoute6];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Arming DOA suspector on %@, primary key = %{private}@, src4 = %p, src6 = %p", buf, 0x2Au);
  }

  date = [MEMORY[0x277CBEAA8] date];
  queue = [(AnalyticsEngineCore *)self queue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke;
  v18[3] = &unk_27898A0C8;
  v19 = suspectorCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_2;
  v15[3] = &unk_27898A7D0;
  v11 = v19;
  v16 = v11;
  selfCopy = self;
  v12 = [v11 createCountDown:@"tickerDOA" atTime:date nextTick:4000000000 ticksTotal:7 onQueue:queue withIterationBlock:v18 completionBlock:v15];

  if ((v12 & 1) == 0)
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = @"tickerDOA";
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "failed to start ticker %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) defRoute4])
  {
    MEMORY[0x238386EA0]([*(a1 + 32) defRoute4]);
  }

  result = [*(a1 + 32) defRoute6];
  if (result)
  {
    [*(a1 + 32) defRoute6];

    JUMPOUT(0x238386EA0);
  }

  return result;
}

void __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fatal];
  v3 = [v2 isRunning];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) partial];
    [v4 connAttempts];
    v6 = v5;

    v7 = netepochsLogHandle;
    v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v6 == 0.0)
    {
      if (v8)
      {
        v13 = *(a1 + 32);
        v14 = v7;
        v15 = [v13 primaryKey];
        *buf = 138412547;
        v21 = @"tickerDOA";
        v22 = 2113;
        v23 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED and VOIDED on %{private}@, fatal time not accruing", buf, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = v7;
        v11 = [v9 primaryKey];
        *buf = 138412547;
        v21 = @"tickerDOA";
        v22 = 2113;
        v23 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED on %{private}@, fatal time accruing", buf, 0x16u);
      }

      v12 = [*(a1 + 32) fatal];
      [v12 start];

      [*(a1 + 40) _updateAdviceForEpoch:*(a1 + 32)];
    }
  }

  v16 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_763;
  block[3] = &unk_27898A0C8;
  v19 = *(a1 + 32);
  dispatch_async(v16, block);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_disarmDOASuspector:(id)suspector
{
  v19 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  [suspectorCopy countDownStop:@"tickerDOA" eventTimeStamp:0];
  fatal = [suspectorCopy fatal];
  isRunning = [fatal isRunning];

  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (isRunning)
  {
    if (v8)
    {
      v9 = v7;
      primaryKey = [suspectorCopy primaryKey];
      v15 = 138412547;
      v16 = @"tickerDOA";
      v17 = 2113;
      v18 = primaryKey;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal was running, will stop", &v15, 0x16u);
    }

    fatal2 = [suspectorCopy fatal];
    [fatal2 stop];

    [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:suspectorCopy];
  }

  else if (v8)
  {
    v12 = v7;
    primaryKey2 = [suspectorCopy primaryKey];
    v15 = 138412547;
    v16 = @"tickerDOA";
    v17 = 2113;
    v18 = primaryKey2;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal wasn't running, no change", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_recordOfActiveFatalSuspector:(int64_t)suspector
{
  v22 = *MEMORY[0x277D85DE8];
  if (suspector != 1)
  {
    if (suspector == 2)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v4 = _recordOfActiveFatalSuspector__falsePositivesSlot++;
      _recordOfActiveFatalSuspector__lastFalsePositives[v4 & 1] = v5;
LABEL_4:
      LOBYTE(v6) = 1;
      goto LABEL_16;
    }

    v15 = netepochsLogHandle;
    v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      goto LABEL_16;
    }

    v18 = 134217984;
    suspectorCopy = suspector;
    v11 = "unknown action: %ld";
    v12 = v15;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 12;
LABEL_15:
    _os_log_impl(&dword_23255B000, v12, v13, v11, &v18, v14);
    LOBYTE(v6) = 0;
    goto LABEL_16;
  }

  LOBYTE(v6) = 1;
  if (*_recordOfActiveFatalSuspector__lastFalsePositives != 0.0 && *&qword_27DDA1A60 != 0.0)
  {
    if (*_recordOfActiveFatalSuspector__lastFalsePositives >= *&qword_27DDA1A60)
    {
      v7 = qword_27DDA1A60;
    }

    else
    {
      v7 = _recordOfActiveFatalSuspector__lastFalsePositives[0];
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9 = v8;
    if (v8 - *&v7 >= 3600.0)
    {
      goto LABEL_4;
    }

    v10 = netepochsLogHandle;
    v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_16;
    }

    v18 = 134218240;
    suspectorCopy = v7;
    v20 = 2048;
    v21 = v9;
    v11 = "ticker check, too many false positives in the range: %f vs. now (%f)";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 22;
    goto LABEL_15;
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_armFatalSuspector:(id)suspector isActive:(BOOL)active
{
  activeCopy = active;
  v38 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  fatal = [suspectorCopy fatal];
  if ([fatal isRunning])
  {

    goto LABEL_4;
  }

  oncell = [suspectorCopy oncell];

  if ((oncell & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    date = [MEMORY[0x277CBEAA8] date];
    if (activeCopy)
    {
      if (![(NetworkAnalyticsEngine *)self _recordOfActiveFatalSuspector:1])
      {
        v13 = 0;
        goto LABEL_14;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke;
      aBlock[3] = &unk_27898C418;
      aBlock[4] = self;
      v28 = suspectorCopy;
      v29 = buf;
      v13 = _Block_copy(aBlock);

      if (!v13)
      {
LABEL_14:
        v16 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          if (activeCopy)
          {
            v17 = "";
          }

          else
          {
            v17 = "not ";
          }

          v18 = v16;
          v19 = _Block_copy(v13);
          *v30 = 138412802;
          v31 = @"tickerFatal";
          v32 = 2080;
          v33 = v17;
          v34 = 2048;
          v35 = v19;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "failed to start ticker %@, %sactive, active probe: %p", v30, 0x20u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_772;
    v21[3] = &unk_27898DC60;
    v26 = activeCopy;
    v22 = suspectorCopy;
    v25 = buf;
    v13 = v13;
    selfCopy = self;
    v24 = v13;
    v15 = [v22 createCountDown:@"tickerFatal" atTime:date nextTick:4000000000 ticksTotal:7 onQueue:queue withIterationBlock:v13 completionBlock:v21];

    if (v15)
    {
LABEL_19:

      _Block_object_dispose(buf, 8);
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_4:
  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    fatal2 = [suspectorCopy fatal];
    *buf = 138412802;
    *&buf[4] = @"tickerFatal";
    *&buf[12] = 1024;
    *&buf[14] = [fatal2 isRunning];
    *&buf[18] = 1024;
    *&buf[20] = [suspectorCopy oncell];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "failed to start ticker %@, fatal running: %d, cell: %d", buf, 0x18u);
  }

LABEL_20:

  v20 = *MEMORY[0x277D85DE8];
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v2 = [TCPConnectionProbe alloc];
  v3 = [*(a1 + 32) queue];
  v16 = [(TestProbe *)v2 initWithQueue:v3];

  ++active_probes;
  v4 = v12[5];
  v5 = [*(a1 + 40) interfaceName];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_2;
  v8[3] = &unk_27898DC38;
  v8[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  v10 = &v11;
  [v4 testConection:@"www.apple.com" port:80 timeout:v5 interfaceName:v8 reply:3.0];

  _Block_object_dispose(&v11, 8);
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (a3 == 1)
  {
    if (v6)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check iter, connected!", &v13, 2u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v7 = a1[4];
    v8 = a1[5];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v7 _disarmFatalSuspector:v8 withEventAt:v9 by:@"active probe"];
  }

  else if (v6)
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check iter, event: %lu", &v13, 0xCu);
  }

  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_772(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 primaryKey];
    v6 = [*(a1 + 32) fatal];
    v7 = [v6 isRunning];
    v8 = "not ";
    if (v7)
    {
      v9 = "";
    }

    else
    {
      v9 = "not ";
    }

    v10 = *(*(*(a1 + 56) + 8) + 24);
    if (*(a1 + 64))
    {
      v8 = "";
    }

    *buf = 138413315;
    v19 = @"tickerFatal";
    v20 = 2113;
    v21 = v5;
    v22 = 2080;
    v23 = v9;
    v24 = 2080;
    v25 = v8;
    v26 = 1024;
    v27 = v10;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED on %{private}@, fatal %srunning, fatal time accruing, %sactive, active outcome %d", buf, 0x30u);
  }

  v11 = [*(a1 + 32) fatal];
  if ([v11 isRunning])
  {
    goto LABEL_9;
  }

  if (*(a1 + 64) != 1)
  {

LABEL_15:
    v13 = [*(a1 + 32) fatal];
    [v13 start];

    [*(a1 + 40) _updateAdviceForEpoch:*(a1 + 32)];
    goto LABEL_16;
  }

  if (*(a1 + 48))
  {
    v12 = *(*(*(a1 + 56) + 8) + 24);

    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_9:

LABEL_16:
  if (*(a1 + 48) && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) _recordOfActiveFatalSuspector:2];
  }

  v14 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_773;
  block[3] = &unk_27898A0C8;
  v17 = *(a1 + 32);
  dispatch_async(v14, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_disarmFatalSuspector:(id)suspector withEventAt:(id)at by:(id)by
{
  v34 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  atCopy = at;
  byCopy = by;
  if ([suspectorCopy countDownStop:@"tickerFatal" eventTimeStamp:atCopy])
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      primaryKey = [suspectorCopy primaryKey];
      fatal = [suspectorCopy fatal];
      if ([fatal isRunning])
      {
        v15 = "";
      }

      else
      {
        v15 = "not ";
      }

      v16 = [byCopy description];
      v26 = 138413059;
      v27 = @"tickerFatal";
      v28 = 2113;
      v29 = primaryKey;
      v30 = 2080;
      v31 = v15;
      v32 = 2113;
      v33 = v16;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal %srunning, event by: %{private}@", &v26, 0x2Au);
    }
  }

  else
  {
    fatal2 = [suspectorCopy fatal];
    if ([fatal2 isRunning])
    {
      fatal3 = [suspectorCopy fatal];
      v19 = [fatal3 wasRunningBefore:atCopy];

      if (v19)
      {
        v20 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          primaryKey2 = [suspectorCopy primaryKey];
          v23 = [byCopy description];
          v26 = 138412803;
          v27 = @"tickerFatal";
          v28 = 2113;
          v29 = primaryKey2;
          v30 = 2113;
          v31 = v23;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "ticker check %@, fatal HALTED on %{private}@, event by: %{private}@", &v26, 0x20u);
        }

        fatal4 = [suspectorCopy fatal];
        [fatal4 stop];

        [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:suspectorCopy];
      }
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_armLowQDisconnectSuspector:(id)suspector
{
  v17 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  date = [MEMORY[0x277CBEAA8] date];
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke;
  v13[3] = &unk_27898A0C8;
  v14 = suspectorCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_2;
  v11[3] = &unk_27898A7D0;
  v11[4] = self;
  v7 = v14;
  v12 = v7;
  v8 = [v7 createCountDown:@"tickerLowQ" atTime:date nextTick:3000000000 ticksTotal:20 onQueue:queue withIterationBlock:v13 completionBlock:v11];

  if ((v8 & 1) == 0)
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = @"tickerLowQ";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "failed to start ticker %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lowq];
  if ([v2 isRunning])
  {
    v3 = [*(a1 + 32) defRoute4];

    if (v3)
    {
      MEMORY[0x238386EA0]([*(a1 + 32) defRoute4]);
    }
  }

  else
  {
  }

  v5 = [*(a1 + 32) lowq];
  if ([v5 isRunning])
  {
    v4 = [*(a1 + 32) defRoute6];

    if (v4)
    {
      [*(a1 + 32) defRoute6];

      JUMPOUT(0x238386EA0);
    }
  }

  else
  {
  }
}

void __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_3;
  block[3] = &unk_27898A0C8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)_disarmLowQDisconnectSuspector:(id)suspector
{
  v12 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  [suspectorCopy countDownStop:@"tickerLowQ" eventTimeStamp:0];
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    primaryKey = [suspectorCopy primaryKey];
    v8 = 138412547;
    v9 = @"tickerLowQ";
    v10 = 2113;
    v11 = primaryKey;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check %@ HALTED on %{private}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_scoringTrampoline
{
  v79 = *MEMORY[0x277D85DE8];
  if (([(AnalyticsWorkspace *)self->super.workspace persistent]& 1) != 0)
  {
    v65 = objc_autoreleasePoolPush();
    v73 = 0;
    date = [MEMORY[0x277CBEAA8] date];
    v3 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
    entityName = [MEMORY[0x277D6B5A8] entityName];
    v64 = v3;
    v5 = [v3 getDescriptionForName:entityName];

    v6 = objc_alloc_init(MEMORY[0x277CBE428]);
    v63 = v5;
    [v6 setEntity:v5];
    [v6 setReturnsObjectsAsFaults:0];
    [v6 setIncludesSubentities:1];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v72 = 0;
    v61 = v6;
    v8 = [mainObjectContext executeFetchRequest:v6 error:&v72];
    v60 = v72;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v68 objects:v78 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v69;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v69 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v68 + 1) + 8 * i);
          kind = [v16 kind];
          intValue = [kind intValue];

          v19 = v9;
          if (intValue != 1)
          {
            kind2 = [v16 kind];
            intValue2 = [kind2 intValue];

            v19 = v10;
            if (intValue2 != 2)
            {
              continue;
            }
          }

          [v19 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v68 objects:v78 count:16];
      }

      while (v13);
    }

    if (!v9)
    {
      v26 = 0;
LABEL_36:
      if (v10)
      {
        v45 = objc_autoreleasePoolPush();
        v66 = 0;
        v46 = [(NetworkAnalyticsEngine *)self _scoringDuty:v10 forType:2 withRetCode:&v73 oldestTime:&v66];
        contexta = v66;

        v47 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v77) = v73;
          _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "scoring Cell: completed with return %d", buf, 8u);
        }

        v48 = v73;
        self->lastScoreExit[2] = v73;
        if (!v48)
        {
          v49 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v77 = v46;
            _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_INFO, "KnownGood state for Cell will be set, excluding these keys: %@", buf, 0xCu);
          }

          [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v10 targetKeyPath:@"isKnownGood" basedOn:v46 matchingKeyPath:@"identifier" matchValue:MEMORY[0x277CBEC28] noMatchValue:MEMORY[0x277CBEC38]];
        }

        objc_autoreleasePoolPop(v45);
      }

      else
      {
        contexta = 0;
        v46 = v26;
      }

      v50 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = lowInternetModeScoresDL;
        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_INFO, "LIM state for IPv4 DL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetDL" basedOn:lowInternetModeScoresDL matchingKeyPath:@"netSignature" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v51 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = lowInternetModeScoresUL;
        _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_INFO, "LIM state for IPv4 UL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetUL" basedOn:lowInternetModeScoresUL matchingKeyPath:@"netSignature" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v52 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = lowInternetModeScoresDL;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "LIM state for IPv6 DL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetDL" basedOn:lowInternetModeScoresDL matchingKeyPath:@"netSignatureV6" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v53 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = lowInternetModeScoresUL;
        _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_INFO, "LIM state for IPv6 UL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetUL" basedOn:lowInternetModeScoresUL matchingKeyPath:@"netSignatureV6" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      [(AnalyticsWorkspace *)self->super.workspace save];
      ++score_counts;
      [(NetworkAnalyticsEngine *)self _dumpStats];
      v54 = score_last;
      score_last = date;
      v55 = date;

      objc_autoreleasePoolPop(v65);
      goto LABEL_54;
    }

    context = objc_autoreleasePoolPush();
    v67 = 0;
    v22 = [(NetworkAnalyticsEngine *)self _scoringDuty:v9 forType:1 withRetCode:&v73 oldestTime:&v67];
    v57 = v67;
    v23 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v77) = v73;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "scoring WiFi: completed with return %d", buf, 8u);
    }

    v24 = v73;
    self->lastScoreExit[1] = v73;
    if (!v24)
    {
      v25 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = v22;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "KnownGood state for WiFi will be set, excluding these keys: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v9 targetKeyPath:@"isKnownGood" basedOn:v22 matchingKeyPath:@"identifier" matchValue:MEMORY[0x277CBEC28] noMatchValue:MEMORY[0x277CBEC38]];
    }

    v26 = [(NetworkAnalyticsEngine *)self _determineSporadicForType:1 withRetCode:&v73];

    v27 = scoringLogHandle;
    if (v73)
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v77) = v73;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Sporadic for WiFi cannot be set, resetting, cause %d", buf, 8u);
      }

      v28 = MEMORY[0x277CBEC28];
      selfCopy2 = self;
      v30 = v9;
      v31 = 0;
      v32 = MEMORY[0x277CBEC28];
    }

    else
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v26;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Sporadic for WiFi set for identifiers: %@", buf, 0xCu);
      }

      v28 = MEMORY[0x277CBEC38];
      v32 = MEMORY[0x277CBEC28];
      selfCopy2 = self;
      v30 = v9;
      v31 = v26;
    }

    [(NetworkAnalyticsEngine *)selfCopy2 _setScalarValueInNetworkAttachments:v30 targetKeyPath:@"isKnownSporadic" basedOn:v31 matchingKeyPath:@"identifier" matchValue:v28 noMatchValue:v32];
    v74[0] = @"sporadicCount";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    v74[1] = @"sporadicRetCode";
    v75[0] = v34;
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v73];
    v75[1] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];

    workspace = self->super.workspace;
    queue = [(AnalyticsEngineCore *)self queue];
    v39 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

    v40 = [v39 archiveAndImportItemUnderName:@"WiFiSporadicReport" item:v36];
    v41 = scoringLogHandle;
    if (v40)
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v77 = v36;
        v42 = "Scoring sporadic: finalized with record %@";
        v43 = v41;
        v44 = OS_LOG_TYPE_DEBUG;
LABEL_34:
        _os_log_impl(&dword_23255B000, v43, v44, v42, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v77 = v36;
      v42 = "Scoring sporadic: failed to write record %@";
      v43 = v41;
      v44 = OS_LOG_TYPE_ERROR;
      goto LABEL_34;
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_36;
  }

  v33 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "Workspace is non-persistent, no data for scoring.", buf, 2u);
  }

LABEL_54:
  v56 = *MEMORY[0x277D85DE8];
}

- (id)_naIdentifierToMajor:(id)major
{
  v31 = *MEMORY[0x277D85DE8];
  majorCopy = major;
  v4 = majorCopy;
  if (!majorCopy)
  {
    v16 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v27 = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Got nil NetworkAttachment identifier, returning", v27, 2u);
    }

    goto LABEL_14;
  }

  v20 = 0;
  v29 = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  uTF8String = [majorCopy UTF8String];
  v6 = uTF8String;
  if (!uTF8String || !*uTF8String)
  {
    fastestEncoding = [v4 fastestEncoding];
    v10 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_FAULT))
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = v10;
      v13 = [v11 localizedNameOfStringEncoding:fastestEncoding];
      v14 = v13;
      v15 = "<empty>";
      *buf = 138478339;
      v22 = v4;
      if (!v6)
      {
        v15 = "NULL";
      }

      v23 = 2112;
      v24 = v13;
      v25 = 2080;
      v26 = v15;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_FAULT, "Non-nil identifier %{private}@ with encoding %@ has %s UTF-8 representation", buf, 0x20u);
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v27[0] = *uTF8String;
  v7 = 1;
  while (v7 != 63)
  {
    v8 = uTF8String[v7];
    v27[v7++] = v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  HIBYTE(v30) = 0;
LABEL_19:
  v17 = 0;
  if ([NetworkEpoch parsePrimaryKeyStr:v27 majorIDLengthInBytes:&v20 + 4 minorIDLengthInBytes:&v20]&& SHIDWORD(v20) <= 63)
  {
    v27[SHIDWORD(v20)] = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v27];
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_isKnowableSporadicForType:(unsigned __int8)type
{
  v32 = *MEMORY[0x277D85DE8];
  if (type == 3)
  {
    workspace = self->super.workspace;
    queue = [(AnalyticsEngineCore *)self queue];
    v6 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

    v27 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__NetworkAnalyticsEngine__isKnowableSporadicForType___block_invoke;
    v25[3] = &__block_descriptor_33_e8_B16__0_8l;
    v26 = 3;
    v7 = [v6 exportAndUnarchiveItemUnderName:@"WiFiSporadicReport" lastUpdated:&v27 verificationBlock:v25];
    v8 = v27;
    v9 = scoringLogHandle;
    v10 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        *buf = 67109634;
        *v29 = 3;
        *&v29[4] = 2112;
        *&v29[6] = v8;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Sporadic record for type %hhu last updated on %@ is: %@", buf, 0x1Cu);
      }

      v11 = [v7 objectForKeyedSubscript:@"sporadicRetCode"];
      v12 = [v11 integerValue] == 0;
    }

    else
    {
      if (v10)
      {
        *buf = 67109120;
        *v29 = 3;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Sporadic record for type %hhu not found", buf, 8u);
      }

      v15 = objc_autoreleasePoolPush();
      v16 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d AND %K == %@", @"kind", 1, @"isKnownSporadic", MEMORY[0x277CBEC38]];
      v18 = [v16 fetchEntitiesFreeForm:v17 sortDesc:0];
      v19 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v18 count];
        *buf = 134218240;
        *v29 = v21;
        *&v29[8] = 1024;
        *&v29[10] = 3;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Found %lu sporadic NAs for interface type %hhu", buf, 0x12u);
      }

      v22 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        *v29 = 3;
        *&v29[4] = 2112;
        *&v29[6] = v18;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Sporadic NAs for interface type %hhu: %@", buf, 0x12u);
      }

      v12 = [v18 count] != 0;

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    typeCopy = type;
    v14 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v29 = typeCopy;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Interface type %d always sporadic un-knowable", buf, 8u);
    }

    v12 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __53__NetworkAnalyticsEngine__isKnowableSporadicForType___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 count] == 2 && (objc_msgSend(v4, "objectForKeyedSubscript:", @"sporadicRetCode"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v6 = objc_opt_isKindOfClass(), v5, (v6 & 1) != 0))
    {
      v7 = [v4 objectForKeyedSubscript:@"sporadicCount"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v10 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v17 = 138412802;
    v18 = v12;
    v19 = 1024;
    v20 = v13;
    v21 = 2112;
    v22 = v3;
    v14 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Sporadic record of type %@ for interface %hhu failed validation: %@", &v17, 0x1Cu);
  }

  v9 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_setScalarValueInNetworkAttachments:(id)attachments targetKeyPath:(id)path basedOn:(id)on matchingKeyPath:(id)keyPath matchValue:(id)value noMatchValue:(id)matchValue
{
  attachmentsCopy = attachments;
  pathCopy = path;
  onCopy = on;
  keyPathCopy = keyPath;
  valueCopy = value;
  matchValueCopy = matchValue;
  v19 = objc_autoreleasePoolPush();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__NetworkAnalyticsEngine__setScalarValueInNetworkAttachments_targetKeyPath_basedOn_matchingKeyPath_matchValue_noMatchValue___block_invoke;
  v25[3] = &unk_27898DCA8;
  v20 = keyPathCopy;
  v26 = v20;
  v21 = onCopy;
  v27 = v21;
  v22 = valueCopy;
  v28 = v22;
  v23 = pathCopy;
  v29 = v23;
  v24 = matchValueCopy;
  v30 = v24;
  [attachmentsCopy enumerateObjectsUsingBlock:v25];

  objc_autoreleasePoolPop(v19);
}

void __124__NetworkAnalyticsEngine__setScalarValueInNetworkAttachments_targetKeyPath_basedOn_matchingKeyPath_matchValue_noMatchValue___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) member:v4];

  v6 = scoringLogHandle;
  v7 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      v11 = v6;
      v12 = [v3 identifier];
      v20 = 138413314;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Set state to %@ for: %@, attribute: %@, matchingKey: %@, in attachment: %@", &v20, 0x34u);
    }

    v13 = 48;
  }

  else
  {
    if (v7)
    {
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      v16 = *(a1 + 32);
      v17 = v6;
      v18 = [v3 identifier];
      v20 = 138413314;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v4;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Set state to %@ for: %@, attribute: %@, matchingKey: %@, in attachment: %@", &v20, 0x34u);
    }

    v13 = 64;
  }

  [v3 setValue:*(a1 + v13) forKey:*(a1 + 56)];

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_scoringDuty:(id)duty forType:(int)type withRetCode:(int *)code oldestTime:(id *)time
{
  v140 = *MEMORY[0x277D85DE8];
  dutyCopy = duty;
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(dutyCopy, "count")}];
  v9 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "scoring: start", buf, 2u);
  }

  v111 = v8;
  date = [MEMORY[0x277CBEAA8] date];
  v10 = +[NetworkEpoch coalescingFactor];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = dutyCopy;
  v114 = [obj countByEnumeratingWithState:&v125 objects:v139 count:16];
  v11 = 0;
  if (v114)
  {
    v113 = *v126;
    v12 = v10;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v114; i = v58 + 1)
      {
        if (*v126 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v116 = i;
        v16 = *(*(&v125 + 1) + 8 * i);
        v17 = objc_alloc_init(Score);
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v115 = v16;
        hasDefaultRoute = [v16 hasDefaultRoute];
        v19 = [hasDefaultRoute countByEnumeratingWithState:&v121 objects:v138 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v122;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v122 != v21)
              {
                objc_enumerationMutation(hasDefaultRoute);
              }

              v23 = *(*(&v121 + 1) + 8 * j);
              timeStamp = [v23 timeStamp];
              [date timeIntervalSinceDate:timeStamp];
              v26 = (v25 / v12);

              v27 = 3;
              if (v26 < 3)
              {
                v27 = v26;
              }

              v28 = kWeights[v27];
              if (type == 2)
              {
                [v23 lowLqmStay];
                v30 = v29;
                [v23 overallStay];
                if (v30 >= v31)
                {
                  v30 = v31;
                }

                [(Score *)v17 handicapStay];
                [(Score *)v17 setHandicapStay:v32 + v28 * v30];
                [v23 lqmTransitionCount];
                v34 = v33;
                [(Score *)v17 lqmTransitionCount];
                [(Score *)v17 setLqmTransitionCount:v34 + v35];
              }

              else
              {
                [v23 lowqStay];
                v37 = v36;
                [v23 faultyStay];
                v39 = v37 + v38;
                [v23 overallStay];
                if (v39 >= v40)
                {
                  v39 = v40;
                }

                [(Score *)v17 handicapStay];
                [(Score *)v17 setHandicapStay:v41 + v28 * v39];
              }

              [v23 overallStay];
              v43 = v42;
              [(Score *)v17 overallStay];
              [(Score *)v17 setOverallStay:v44 + v28 * v43];
              [v23 epochs];
              v46 = v45;
              [(Score *)v17 epochs];
              [(Score *)v17 setEpochs:v46 + v47];
              timeStamp2 = [v23 timeStamp];
              v49 = timeStamp2;
              if (v11)
              {
                v50 = [v11 earlierDate:timeStamp2];

                v11 = v50;
              }

              else
              {
                v11 = timeStamp2;
              }
            }

            v20 = [hasDefaultRoute countByEnumeratingWithState:&v121 objects:v138 count:16];
          }

          while (v20);
        }

        *buf = 0;
        v120 = 0.0;
        [(Score *)v17 epochs];
        v51 = 0.0;
        v52 = 0.0;
        if (v53 > 1.0)
        {
          hasDefaultRoute2 = [v115 hasDefaultRoute];
          combinedStats(hasDefaultRoute2, buf, &v120);

          v52 = *buf;
          v51 = v120;
        }

        v55 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v52];
        [v115 setOverallStayMean:v55];

        v56 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v51];
        [v115 setOverallStayVar:v56];

        [(Score *)v17 epochs];
        if (v57 >= 10.0)
        {
          [(Score *)v17 overallStay];
          v58 = v116;
          if (v59 >= 90.0)
          {
            [(Score *)v17 overallStay];
            if (v60 == 0.0)
            {
              v66 = 0.0;
            }

            else
            {
              [(Score *)v17 overallStay];
              v62 = v61;
              [(Score *)v17 handicapStay];
              v64 = (v62 - v63) * 100.0;
              [(Score *)v17 overallStay];
              v66 = llround(v64 / v65);
            }

            [(Score *)v17 setUpPct:v66];
            [(Score *)v17 upPct];
            v68 = v67;
            if (type == 2)
            {
              [(Score *)v17 lqmTransitionCount];
              v13 = v13 + v69;
            }

            v14 = v14 + v68;
            identifier = [v115 identifier];
            [v111 setObject:v17 forKeyedSubscript:identifier];
          }
        }

        else
        {
          v58 = v116;
        }
      }

      v114 = [obj countByEnumeratingWithState:&v125 objects:v139 count:16];
    }

    while (v114);
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  v71 = v111;
  if ([v111 count] < 3)
  {
    v96 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v97 = v96;
      v98 = [v111 count];
      *buf = 134217984;
      *&buf[4] = v98;
      _os_log_impl(&dword_23255B000, v97, OS_LOG_TYPE_DEBUG, "scoring: known networks need more significant entries than: %lu", buf, 0xCu);
    }

    v99 = 0;
    v100 = 1;
    codeCopy2 = code;
    timeCopy2 = time;
    goto LABEL_66;
  }

  v72 = v14 / [v111 count];
  v73 = [v111 count];
  v74 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218243;
    *&buf[4] = v72;
    v130 = 2113;
    v131 = v111;
    _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_DEBUG, "scoring: known networks up mean: %f, all roll: %{private}@", buf, 0x16u);
  }

  v75 = v73;
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __70__NetworkAnalyticsEngine__scoringDuty_forType_withRetCode_oldestTime___block_invoke;
  v118[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v119 = type == 2;
  v76 = [v111 keysSortedByValueUsingComparator:v118];
  v77 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v76;
    _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEBUG, "scoring: known networks uptime roll: %{private}@", buf, 0xCu);
  }

  v78 = v13 / v75;
  v79 = [v76 count];
  v80 = ([v76 count] & 1) + (v79 >> 1);
  v81 = [v76 count] >> 1;
  while (1)
  {
    v82 = [v76 objectAtIndexedSubscript:v80];
    v83 = [v111 objectForKeyedSubscript:v82];
    [v83 upPct];
    if (type == 2)
    {
      break;
    }

    if (v84 <= v72)
    {
      goto LABEL_62;
    }

    v94 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v87 = v94;
      [v83 upPct];
      *buf = 138478339;
      *&buf[4] = v82;
      v130 = 2048;
      v131 = v95;
      v132 = 2048;
      v133 = v72;
      v91 = v87;
      v92 = "scoring: (WiFi) suppress %{private}@ from reliab roll, after median, upPct = %f (mean = %f)";
      v93 = 32;
      goto LABEL_56;
    }

LABEL_57:
    ++v80;
    --v81;

    if (!v81)
    {
      goto LABEL_63;
    }
  }

  if (v84 > v72 || ([v83 lqmTransitionCount], v85 <= v78))
  {
    v86 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v87 = v86;
      [v83 upPct];
      v89 = v88;
      [v83 lqmTransitionCount];
      *buf = 138478851;
      *&buf[4] = v82;
      v130 = 2048;
      v131 = v89;
      v132 = 2048;
      v133 = v72;
      v134 = 2048;
      v135 = v90;
      v136 = 2048;
      v137 = v78;
      v91 = v87;
      v92 = "scoring: (cell) suppress %{private}@ from reliab roll, after median, upPct = %f (mean = %f), LQM trans = %f (mean = %f)";
      v93 = 52;
LABEL_56:
      _os_log_impl(&dword_23255B000, v91, OS_LOG_TYPE_DEBUG, v92, buf, v93);

      goto LABEL_57;
    }

    goto LABEL_57;
  }

LABEL_62:

LABEL_63:
  v103 = objc_alloc(MEMORY[0x277CBEB98]);
  v104 = [v76 subarrayWithRange:{v80, v81}];
  v99 = [v103 initWithArray:v104];

  v105 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v99;
    _os_log_impl(&dword_23255B000, v105, OS_LOG_TYPE_DEBUG, "scoring: known networks skim bottom: %{private}@", buf, 0xCu);
  }

  v100 = 0;
  codeCopy2 = code;
  timeCopy2 = time;
  v71 = v111;
LABEL_66:
  [v71 removeAllObjects];

  if (codeCopy2)
  {
    *codeCopy2 = v100;
  }

  if (timeCopy2)
  {
    v106 = v11;
    *timeCopy2 = v11;
  }

  v107 = *MEMORY[0x277D85DE8];

  return v99;
}

uint64_t __70__NetworkAnalyticsEngine__scoringDuty_forType_withRetCode_oldestTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  [v7 upPct];
  v10 = v9;
  [v8 upPct];
  if (v10 == v11)
  {
    [v7 overallStay];
    v13 = v12;
    [v8 overallStay];
    v15 = -1;
    if (v13 <= v14)
    {
      v15 = 1;
    }

    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (*(a1 + 32) == 1 && v13 == v14)
    {
      [v7 lqmTransitionCount];
      v18 = v17;
      [v8 lqmTransitionCount];
      v20 = -1;
      if (v18 > v19)
      {
        v20 = 1;
      }

      if (v18 == v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = v20;
      }
    }
  }

  else
  {
    [v7 upPct];
    v22 = v21;
    [v8 upPct];
    if (v22 <= v23)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }
  }

  return v16;
}

- (void)_delayedKnownGoodNetworkAlert
{
  ++notif_reqs;
  v3 = dispatch_time(0, 20000000000);
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NetworkAnalyticsEngine__delayedKnownGoodNetworkAlert__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

void __55__NetworkAnalyticsEngine__delayedKnownGoodNetworkAlert__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) _epochForInterfaceType:3];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 156);
    v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
    if (v7 != 1)
    {
      v1 = [v4 durable];
      if (![v1 isKnownGood])
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 32);
    }

    if (*(v6 + 184))
    {
      [v3 timeIntervalSinceDate:?];
      if (v10 <= 300.0)
      {
LABEL_12:
        if (v7 == 1)
        {
LABEL_17:
          v13 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(*(a1 + 32) + 156);
            v15 = v13;
            v16 = [v5 durable];
            v17 = [v16 isKnownGood];
            v18 = v8;
            v19 = v17;
            [v3 timeIntervalSinceDate:*(*(a1 + 32) + v18[362])];
            v21 = v20;
            v22 = [v5 fatal];
            v23 = [v22 isRunning];
            v24 = [v5 lowq];
            v28[0] = 67110400;
            v28[1] = v14;
            v29 = 1024;
            v30 = v19;
            v31 = 2048;
            v32 = v21;
            v33 = 1024;
            v34 = v23;
            v35 = 1024;
            v36 = [v24 isRunning];
            v37 = 1024;
            v38 = [v5 hasTypicalShortStay];
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "KnownGood evaluation failed, notification withheld (codes: %d, %d, %f, %d, %d, %d)", v28, 0x2Au);
          }

          goto LABEL_19;
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    v11 = [v5 fatal];
    if ([v11 isRunning])
    {

      goto LABEL_12;
    }

    v12 = [v5 lowq];
    if ([v12 isRunning])
    {

      v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
      if (v7 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v26 = [v5 hasTypicalShortStay];

    if (v7 != 1)
    {
    }

    v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
    if (v26)
    {
      goto LABEL_17;
    }

    v27 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "KnownGood evaluation passed and it's called a KnownGood; symptom posted", v28, 2u);
    }

    internal_symptom_create();
    internal_symptom_send();
    ++notif_posted;
    [v5 setKnownGoodNotified:1];
    objc_storeStrong((*(a1 + 32) + 184), v3);
  }

  else
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "no current network to evaluate for KnownGood", v28, 2u);
    }
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_removeOldRouteRecords
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  _createNetworkAttachmentIdentifierExclusionList = [(NetworkAnalyticsEngine *)self _createNetworkAttachmentIdentifierExclusionList];
  if ([NetworkEpoch pruneDataOlderThan:v6 exceptFor:_createNetworkAttachmentIdentifierExclusionList inWorkspace:self->super.workspace])
  {
    ++prune_counts;
    date = [MEMORY[0x277CBEAA8] date];
    v5 = prune_last;
    prune_last = date;
  }
}

- (BOOL)handlesEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B5A8] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B5A0] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (void)_refreshRouteMetricsWithCallbackOnQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v8 = blockCopy;
  v9 = ++_refreshRouteMetricsWithCallbackOnQueue_completionBlock__debugCount;
  if (queueCopy && blockCopy)
  {
    v10 = _Block_copy(self->routeMetricsRefreshCompletionBlock);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke;
    v17 = &unk_27898C468;
    v19 = v10;
    v18 = queueCopy;
    v21 = v9;
    v20 = v8;
    v11 = v10;
    v12 = _Block_copy(&v14);
    routeMetricsRefreshCompletionBlock = self->routeMetricsRefreshCompletionBlock;
    self->routeMetricsRefreshCompletionBlock = v12;
  }

  [(NetworkAnalyticsEngine *)self _refreshRouteMetrics:v14];
}

void __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke_2;
  block[3] = &unk_27898DCF0;
  v4 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = v4;
  v6 = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = v2;
    v6 = _Block_copy(v3);
    v7 = a1[4];
    v10 = 134218496;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Invoking block #%llu (%p) on queue %p", &v10, 0x20u);
  }

  result = (*(a1[5] + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0
{
  v80 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  serviceCopy = service;
  connectionCopy = connection;
  replyCopy = reply;
  processIdentifier = [connectionCopy processIdentifier];
  v23 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = pid_to_process_name(processIdentifier);
    v26 = v25;
    *buf = 138413570;
    v27 = @"<unknown>";
    if (v25)
    {
      v27 = v25;
    }

    v69 = v27;
    v70 = 2048;
    v71 = processIdentifier;
    v72 = 2112;
    v73 = entityCopy;
    v74 = 2112;
    v75 = predCopy;
    v76 = 2112;
    v77 = sortCopy;
    v78 = 2112;
    v79 = actionsCopy;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: NAE perform query for %@ (pid %lld) on %@ predicate %@ sort %@ actions %@", buf, 0x3Eu);
  }

  allValues = [actionsCopy allValues];
  if ([allValues containsObject:@"sweepUsage"] && objc_msgSend(allValues, "containsObject:", @"historical"))
  {
    v29 = pid_to_process_name([connectionCopy processIdentifier]);
    if ([(__CFString *)v29 length]&& ![(NetworkAnalyticsEngine *)self processIsAuthorizedForHistoricalSweeps:v29])
    {
      v30 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = v29;
        v33 = v31;
        processIdentifier2 = [connectionCopy processIdentifier];
        *buf = 138412546;
        v69 = v32;
        v70 = 1024;
        LODWORD(v71) = processIdentifier2;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "Historical Sweep request from %@ (%d) is not authorized.", buf, 0x12u);

        v29 = v32;
      }

      predicateFormat = [predCopy predicateFormat];
      v36 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      if (v36)
      {
        v54 = v36;
        v53 = [v36 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228] subType:@"Unauthorized Historical Sweep" subtypeContext:entityCopy detectedProcess:v29 triggerThresholdValues:0];
        v66[0] = predicateFormat;
        v37 = *MEMORY[0x277D6B148];
        v65[0] = @"predicate";
        v65[1] = v37;
        v52 = v29;
        v38 = MEMORY[0x277CCABB0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v48 = [v38 numberWithDouble:?];
        v66[1] = v48;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v67 = v39;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
        v40 = v51 = predicateFormat;
        [v54 snapshotWithSignature:v53 duration:v40 events:0 payload:0 actions:&__block_literal_global_814 reply:0.0];

        predicateFormat = v51;
        v29 = v52;

        v36 = v54;
      }
    }
  }

  if (actionsCopy && ([actionsCopy objectForKey:@"refreshUsage"], v41 = objc_claimAutoreleasedReturnValue(), v41, v41) && objc_msgSend(serviceCopy, "assertEntitlement:entitlement:orWaiveOnIntent:", connectionCopy, 2, actionsCopy))
  {
    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: refresh authorized", buf, 2u);
    }

    v43 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      processIdentifier3 = [connectionCopy processIdentifier];
      *buf = 134217984;
      v69 = processIdentifier3;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath on behalf of pid %lld", buf, 0xCu);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __113__NetworkAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_815;
    v57[3] = &unk_27898C938;
    v57[4] = self;
    v58 = entityCopy;
    v46 = propertiesCopy;
    v59 = propertiesCopy;
    v60 = predCopy;
    v61 = sortCopy;
    v62 = actionsCopy;
    v63 = serviceCopy;
    v64 = replyCopy;
    [(NetworkAnalyticsEngine *)self _refreshRouteMetricsWithCallbackOnQueue:queue completionBlock:v57];
  }

  else
  {
    v46 = propertiesCopy;
    [(AnalyticsEngineCore *)self performQueryOnEntityCore:entityCopy fetchRequestProperties:propertiesCopy pred:predCopy sort:sortCopy actions:actionsCopy service:serviceCopy reply:replyCopy];
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __113__NetworkAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: Unauthorized Sweep Snapshot response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply
{
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke;
  block[3] = &unk_27898DD18;
  onCopy = on;
  block[4] = self;
  v11 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, block);

  return 1;
}

void __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v12 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics _performNetAttachmentQueryOn %ld", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke_819;
  v8[3] = &unk_27898DD18;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v9 = v6;
  [v4 _refreshRouteMetricsWithCallbackOnQueue:v5 completionBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke_819(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 48)];
  v3 = v2;
  if (v2 && ([v2 partial], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 partial];
    v6 = [v5 entity];
    v7 = [v6 attributesByName];
    v8 = [v7 allKeys];

    v9 = [v3 partial];
    v10 = [v9 dictionaryWithValuesForKeys:v8];

    v11 = *(a1 + 40);
    v15[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    v13 = *(a1 + 40);
    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v13 + 16))(v13, v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (int)_combinedDNSCountForEpoch:(id)epoch
{
  if (!epoch)
  {
    return -1;
  }

  epochCopy = epoch;
  hasDNS = [epochCopy hasDNS];
  v5 = [hasDNS count];
  impDNS = [epochCopy impDNS];

  v7 = v5 | ([impDNS count] << 16);
  return v7;
}

- (void)_updateCombinedDNSCounts
{
  v3 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  self->combinedWifiDNSCounts = [(NetworkAnalyticsEngine *)self _combinedDNSCountForEpoch:v3];

  v4 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
  self->combinedCellDNSCounts = [(NetworkAnalyticsEngine *)self _combinedDNSCountForEpoch:v4];
}

- (BOOL)_getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted
{
  v15 = *MEMORY[0x277D85DE8];
  if (on == 3)
  {
    v8 = &OBJC_IVAR___NetworkAnalyticsEngine_combinedWifiDNSCounts;
  }

  else
  {
    onCopy = on;
    if (on != 5)
    {
      v12 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 67109120;
        v14[1] = onCopy;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Can't get DNS counts for interface type %u", v14, 8u);
      }

      goto LABEL_12;
    }

    v8 = &OBJC_IVAR___NetworkAnalyticsEngine_combinedCellDNSCounts;
  }

  v9 = *(&self->super.super.isa + *v8);
  if ((v9 & 0x80000000) == 0)
  {
    if (total)
    {
      *total = v9;
    }

    if (!impacted)
    {
      result = 1;
      goto LABEL_17;
    }

    v10 = HIWORD(v9);
    result = 1;
    goto LABEL_16;
  }

LABEL_12:
  if (total)
  {
    *total = 0;
  }

  result = 0;
  if (impacted)
  {
    v10 = 0;
LABEL_16:
    *impacted = v10;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke;
  block[3] = &unk_27898DD68;
  anyCopy = any;
  onCopy = on;
  builtinCopy = builtin;
  block[4] = self;
  v20 = queueCopy;
  v21 = replyCopy;
  iCopy = i;
  v17 = replyCopy;
  v18 = queueCopy;
  dispatch_async(queue, block);
}

void __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [NetworkStateRelay getStateRelayFor:*(a1 + 65)];
    v3 = [v2 active];
  }

  else
  {
    if (*(a1 + 66) != 1)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 65)];
    v2 = v4;
    if (!v4)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = [v4 matchesLOI:*(a1 + 56)];
  }

  v5 = v3;
LABEL_7:

LABEL_9:
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke_2;
  v7[3] = &unk_27898DD40;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v6, v7);
}

- (void)_layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke;
  v13[3] = &unk_27898B6A0;
  onCopy = on;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(queue, v13);
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 interfaceName];
    v5 = if_nametoindex([v4 UTF8String]);

    v6 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_2;
    block[3] = &unk_27898DDB8;
    v7 = &v13;
    v8 = v6;
    v13 = v8;
    v16 = v5;
    v17 = *(a1 + 56);
    v14 = v3;
    v15 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_823;
    v10[3] = &unk_27898C670;
    v7 = &v11;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v9, v10);
  }
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v2 = *MEMORY[0x277CBECE8];
  v3 = *(a1 + 32);
  v26 = NStatManagerCreate();
  if (v24[3])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v4 = *(a1 + 56);
    InterfaceSource = NStatManagerCreateInterfaceSource();
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 60);
      v7 = [*(a1 + 40) interfaceName];
      v8 = *(a1 + 56);
      v9 = v20[3];
      *buf = 134218754;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      v31 = 1024;
      v32 = v8;
      v33 = 2048;
      v34 = v9;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Looking for L2 metrics for type: %ld, ifName: %@, ifIndex: %d, src: %p", buf, 0x26u);
    }

    v10 = v24[3];
    if (v20[3])
    {
      v18 = *(a1 + 60);
      v17 = *(a1 + 56);
      v16 = *(a1 + 48);
      NStatManagerQueryAllSourcesUpdate();
      v11 = v16;
    }

    else
    {
      v13 = v24[3];
      NStatManagerDestroy();
      v14 = v24[3];
      if (v14)
      {
        CFRelease(v14);
        v24[3] = 0;
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v23, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_3()
{
  v0 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "new interface source added", v1, 2u);
  }
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_822(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = NStatSourceCopyProperties();
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 60);
    v6 = *(a1 + 56);
    v12 = 134218498;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Fetching L2 metrics for type: %ld, ifIndex: %d, Metrics: %@", &v12, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *(*(*(a1 + 40) + 8) + 24);
  NStatSourceRemove();
  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v9 = *(*(*(a1 + 48) + 8) + 24);
  NStatManagerDestroy();
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if (v10)
  {
    CFRelease(v10);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_823(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply
{
  infoCopy = info;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke;
  block[3] = &unk_27898DDE0;
  onCopy = on;
  block[4] = self;
  v18 = infoCopy;
  v19 = queueCopy;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = queueCopy;
  v16 = infoCopy;
  dispatch_async(queue, block);
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (cellEstTransferTimeSupportedStatus[0] == 1 && *(a1 + 64) == 5)
  {
    if (![*(a1 + 32) _getCellInternetStatus])
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_3;
      v36[3] = &unk_27898C670;
      v31 = *(a1 + 48);
      v37 = *(a1 + 56);
      dispatch_async(v31, v36);
      v5 = v37;
      goto LABEL_12;
    }

    v2 = [*(a1 + 40) objectForKey:@"kPayloadInfoULKB"];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = &unk_2847EFAE8;
    }

    v5 = v4;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 longLongValue] < 0 || objc_msgSend(v5, "longLongValue") > 0xFFFFFFFFLL)
    {
      v8 = 0;
      v6 = 0;
      v7 = 34;
    }

    else
    {
      v6 = [v5 unsignedIntValue];
      v7 = 0;
      v8 = 1;
    }

    v11 = [*(a1 + 40) objectForKey:@"kPayloadInfoDLKB"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &unk_2847EFAE8;
    }

    v14 = v13;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 longLongValue] < 0 || objc_msgSend(v14, "longLongValue") > 0xFFFFFFFFLL)
    {
      v7 = 34;
    }

    else
    {
      v15 = [v14 unsignedIntValue];
      if (v8)
      {
        v16 = v15;
        if ([*(a1 + 32) _newCellTransferTimeEstimateRequired])
        {
          *bytes = 2;
          v43 = v6;
          v44 = v16;
          v17 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
          v18 = *(*(a1 + 32) + 312);
          v19 = _CTServerConnectionSendEnhancedLinkQualityTrafficInfo();
          v20 = v19;
          v21 = HIDWORD(v19);
          if (HIDWORD(v19))
          {
            v22 = 0;
          }

          else
          {
            v22 = v19 == 0;
          }

          v23 = v22;
          if (v17)
          {
            CFRelease(v17);
          }

          if (!v23)
          {
            v32 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v49 = v20;
              v50 = 1024;
              v51 = v21;
              _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "eLQM: Failed to send payload size info to Baseband, error = (%d, %d)", buf, 0xEu);
            }

            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_824;
            v40[3] = &unk_27898C670;
            v33 = *(a1 + 48);
            v41 = *(a1 + 56);
            dispatch_async(v33, v40);
            v29 = v41;
            goto LABEL_36;
          }

          v24 = [MEMORY[0x277CBEAA8] date];
          v25 = cellEstTransferTimeRequestTimeStamp;
          cellEstTransferTimeRequestTimeStamp = v24;

          v26 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v49 = cellRrcState;
            v50 = 1024;
            v51 = v6;
            v52 = 1024;
            v53 = v16;
            _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "eLQM: Payload info sent to Baseband for transfer time estimates, RRC = %d, UL/DL = (%u, %u) KB", buf, 0x14u);
          }
        }

        v27 = *(a1 + 32);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2_825;
        v38[3] = &unk_27898C670;
        v28 = *(a1 + 48);
        v39 = *(a1 + 56);
        [v27 _awaitEstimatedDataTransferTimeWithCallbackOnQueue:v28 completionBlock:v38];
        v29 = v39;
LABEL_36:

        goto LABEL_12;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v47 = v7;
    v30 = *(a1 + 48);
    v46 = *(a1 + 56);
    dispatch_async(v30, block);
    v29 = v46;
    goto LABEL_36;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_4;
  v34[3] = &unk_27898C670;
  v9 = *(a1 + 48);
  v35 = *(a1 + 56);
  dispatch_async(v9, v34);
  v5 = v35;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(a1 + 40) userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_824(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:4 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2_825(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"kEstTransferTimeULSecs";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeULSecs];
  v8[0] = v2;
  v7[1] = @"kEstTransferTimeDLSecs";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeDLSecs];
  v8[1] = v3;
  v7[2] = @"kEstTransferTimeConfidence";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeConfidence];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke;
  block[3] = &unk_27898DE30;
  forCopy = for;
  block[4] = self;
  v16 = queueCopy;
  v17 = replyCopy;
  iCopy = i;
  v13 = replyCopy;
  v14 = queueCopy;
  dispatch_async(queue, block);
}

void __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke(uint64_t a1)
{
  v183[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = v6 == 3 || v6 == 5;
  v134 = v3;
  v131 = a1;
  v132 = v2;
  v130 = v4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    goto LABEL_51;
  }

  v8 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:*(*(a1 + 32) + 8) withCache:0];
  v9 = 1;
  if (*(a1 + 64) != 3)
  {
    v9 = 2;
  }

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %d", v9];
  v11 = *(a1 + 56);
  if (!v11)
  {
    v12 = 260;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v12 = 261;
LABEL_12:
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attrs == %d", v12];
    v15 = MEMORY[0x277CCA920];
    v127 = v14;
    v128 = v10;
    v183[0] = v10;
    v183[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    v129 = v8;
    v126 = v17;
    v18 = [v8 fetchEntitiesFreeForm:v17 sortDesc:0];
    v166 = 0;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v162 objects:v178 count:16];
    v133 = v18;
    if (v19)
    {
      v20 = v19;
      v136 = *v163;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v163 != v136)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v162 + 1) + 8 * i);
          v23 = [v22 identifier];

          if (v23)
          {
            v24 = [v22 identifier];
            v25 = [v24 UTF8String];

            if (v25 && *v25)
            {
              v26 = 0;
              v181 = 0u;
              v182 = 0u;
              *v179 = 0u;
              v180 = 0u;
              while (1)
              {
                v27 = v25[v26];
                v179[v26] = v27;
                if (!v27)
                {
                  break;
                }

                if (++v26 == 63)
                {
                  HIBYTE(v182) = 0;
                  break;
                }
              }

              if ([NetworkEpoch parsePrimaryKeyStr:v179 majorIDLengthInBytes:&v166 + 4 minorIDLengthInBytes:&v166]&& SHIDWORD(v166) <= 63)
              {
                v179[SHIDWORD(v166)] = 0;
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v179];
                v29 = [v3 objectForKeyedSubscript:v28];
                if (!v29)
                {
                  v29 = objc_alloc_init(Score);
                  [v3 setObject:v29 forKeyedSubscript:v28];
                }

                v160 = 0u;
                v161 = 0u;
                v158 = 0u;
                v159 = 0u;
                v30 = [v22 hasDefaultRoute];
                v31 = [v30 countByEnumeratingWithState:&v158 objects:v171 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v159;
                  do
                  {
                    for (j = 0; j != v32; ++j)
                    {
                      if (*v159 != v33)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v35 = *(*(&v158 + 1) + 8 * j);
                      [v35 overallStay];
                      v37 = v36;
                      [(Score *)v29 overallStay];
                      [(Score *)v29 setOverallStay:v37 + v38];
                      [v35 epochs];
                      v40 = v39;
                      [(Score *)v29 epochs];
                      [(Score *)v29 setEpochs:v40 + v41];
                      [v35 connSuccesses];
                      v43 = v42;
                      [(Score *)v29 connSuccesses];
                      [(Score *)v29 setConnSuccesses:v43 + v44];
                    }

                    v32 = [v30 countByEnumeratingWithState:&v158 objects:v171 count:16];
                  }

                  while (v32);
                }

                v18 = v133;
                v3 = v134;
              }

              else
              {
                v54 = rnfLogHandle;
                if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v55 = v54;
                  v56 = [v22 identifier];
                  *buf = 138477827;
                  v173 = v56;
                  _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "NOI Scoped query, failed to parse: %{private}@", buf, 0xCu);
                }
              }
            }

            else
            {
              v45 = [v22 identifier];
              v46 = [v45 fastestEncoding];

              v47 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_FAULT))
              {
                v48 = v47;
                v49 = [v22 identifier];
                v50 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:v46];
                v51 = v50;
                *buf = 138478339;
                v52 = "<empty>";
                if (!v25)
                {
                  v52 = "NULL";
                }

                v173 = v49;
                v174 = 2112;
                v175 = v50;
                v176 = 2080;
                v177 = v52;
                _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_FAULT, "Non-nil identifier %{private}@ with encoding %@ has %s UTF-8 representation", buf, 0x20u);
              }
            }
          }

          else
          {
            v53 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v173 = v22;
              _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "NetworkAttachment %{private}@ has nil identifier, skipping", buf, 0xCu);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v162 objects:v178 count:16];
      }

      while (v20);
    }

    v57 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v173 = v3;
      _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_INFO, "NOI Scoped query: %@", buf, 0xCu);
    }

    v13 = 0;
    a1 = v131;
    v2 = v132;
    v8 = v129;
    v5 = v130;
    v10 = v128;
    goto LABEL_50;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
LABEL_50:

LABEL_51:
  v58 = [v3 count];
  if (v58 < 2)
  {
    if (v58 == 1)
    {
      v79 = [v3 mutableCopy];

      v80 = [v79 allKeys];
      v81 = [v80 objectAtIndexedSubscript:0];

      [v79 setObject:&unk_2847EFE20 forKeyedSubscript:v81];
      v5 = v79;
    }
  }

  else
  {
    v135 = v13;
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v59 = v3;
    v60 = [v59 countByEnumeratingWithState:&v154 objects:v170 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v137 = *v155;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v155 != v137)
          {
            objc_enumerationMutation(v59);
          }

          v69 = [v59 objectForKeyedSubscript:*(*(&v154 + 1) + 8 * k)];
          [v69 epochs];
          if (v70 <= v67)
          {
            v70 = v67;
          }

          v67 = v70;
          [v69 epochs];
          v72 = v64;
          if (v71 <= v64)
          {
            v72 = v71;
          }

          if (v64)
          {
            v71 = v72;
          }

          v64 = v71;
          [v69 overallStay];
          if (v73 <= v66)
          {
            v73 = v66;
          }

          v66 = v73;
          [v69 overallStay];
          v75 = v63;
          if (v74 <= v63)
          {
            v75 = v74;
          }

          if (v63)
          {
            v74 = v75;
          }

          v63 = v74;
          [v69 connSuccesses];
          if (v76 <= v65)
          {
            v76 = v65;
          }

          v65 = v76;
          [v69 connSuccesses];
          v78 = v62;
          if (v77 <= v62)
          {
            v78 = v77;
          }

          if (v62)
          {
            v77 = v78;
          }

          v62 = v77;
        }

        v61 = [v59 countByEnumeratingWithState:&v154 objects:v170 count:16];
      }

      while (v61);
    }

    else
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
    }

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v82 = v59;
    v83 = [v82 countByEnumeratingWithState:&v150 objects:v169 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = (v66 - v63);
      v86 = (v67 - v64);
      v87 = *v151;
      do
      {
        for (m = 0; m != v84; ++m)
        {
          if (*v151 != v87)
          {
            objc_enumerationMutation(v82);
          }

          v89 = [v82 objectForKeyedSubscript:*(*(&v150 + 1) + 8 * m)];
          [v89 overallStay];
          [v89 setOverallStay:(v90 - v63) / v85];
          [v89 epochs];
          [v89 setEpochs:(v91 - v64) / v86];
          [v89 connSuccesses];
          [v89 setConnSuccesses:(v92 - v62) / (v65 - v62)];
        }

        v84 = [v82 countByEnumeratingWithState:&v150 objects:v169 count:16];
      }

      while (v84);
    }

    v93 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v179 = 138412290;
      *&v179[4] = v82;
      _os_log_impl(&dword_23255B000, v93, OS_LOG_TYPE_DEBUG, "NOI Scoped query, normalized: %@", v179, 0xCu);
    }

    v148 = 0u;
    v149 = 0u;
    v147 = 0u;
    v146 = 0u;
    v94 = v82;
    v95 = [v94 countByEnumeratingWithState:&v146 objects:v168 count:16];
    v5 = v130;
    if (v95)
    {
      v96 = v95;
      v97 = *v147;
      v98 = 0.0;
      do
      {
        for (n = 0; n != v96; ++n)
        {
          if (*v147 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v100 = *(*(&v146 + 1) + 8 * n);
          v101 = [v94 objectForKeyedSubscript:v100];
          [v101 overallStay];
          v103 = v102 * v102;
          [v101 epochs];
          v105 = v103 + v104 * v104;
          [v101 connSuccesses];
          v107 = sqrt(v105 + v106 * v106);
          v108 = [MEMORY[0x277CCABB0] numberWithDouble:v107];
          [v130 setObject:v108 forKeyedSubscript:v100];

          v98 = v98 + v107;
        }

        v96 = [v94 countByEnumeratingWithState:&v146 objects:v168 count:16];
      }

      while (v96);
    }

    else
    {
      v98 = 0.0;
    }

    v109 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v179 = 138412290;
      *&v179[4] = v130;
      _os_log_impl(&dword_23255B000, v109, OS_LOG_TYPE_DEBUG, "NOI Scoped query, euclidean norms: %@", v179, 0xCu);
    }

    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v110 = [v130 allKeys];
    v111 = [v110 countByEnumeratingWithState:&v142 objects:v167 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v143;
      do
      {
        for (ii = 0; ii != v112; ++ii)
        {
          if (*v143 != v113)
          {
            objc_enumerationMutation(v110);
          }

          v115 = *(*(&v142 + 1) + 8 * ii);
          v116 = [v130 objectForKeyedSubscript:v115];
          [v116 doubleValue];
          v118 = v117;

          v119 = [MEMORY[0x277CCABB0] numberWithDouble:v118 / v98];
          [v130 setObject:v119 forKeyedSubscript:v115];
        }

        v112 = [v110 countByEnumeratingWithState:&v142 objects:v167 count:16];
      }

      while (v112);
    }

    v120 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v179 = 138412290;
      *&v179[4] = v130;
      _os_log_impl(&dword_23255B000, v120, OS_LOG_TYPE_DEBUG, "NOI Scoped query, softmax: %@", v179, 0xCu);
    }

    a1 = v131;
    v2 = v132;
    v3 = v134;
    v13 = v135;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke_833;
  block[3] = &unk_27898DE08;
  v139 = v13;
  v121 = *(a1 + 40);
  v122 = *(a1 + 48);
  v140 = v5;
  v141 = v122;
  v123 = v5;
  v124 = v13;
  dispatch_async(v121, block);

  objc_autoreleasePoolPop(v2);
  v125 = *MEMORY[0x277D85DE8];
}

uint64_t __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke_833(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (BOOL)_newCellTransferTimeEstimateRequired
{
  if (!cellEstTransferTimeRequestTimeStamp)
  {
    return 1;
  }

  [cellEstTransferTimeRequestTimeStamp timeIntervalSinceNow];
  if (v2 <= -1.0)
  {
    return 1;
  }

  v3 = netepochsLogHandle;
  v4 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v4)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "amortise throughput estimate", v6, 2u);
    return 0;
  }

  return result;
}

- (void)_awaitEstimatedDataTransferTimeWithCallbackOnQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v7 = _Block_copy(cellEstTransferTimeCompletionBlock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke;
  aBlock[3] = &unk_27898DE58;
  v14 = queueCopy;
  v15 = v7;
  v16 = blockCopy;
  v8 = blockCopy;
  v9 = queueCopy;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  v12 = cellEstTransferTimeCompletionBlock;
  cellEstTransferTimeCompletionBlock = v11;
}

void __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke_2;
  block[3] = &unk_27898C670;
  v5 = *(a1 + 48);
  dispatch_async(v3, block);
}

+ (BOOL)hasAnyNetworkAttachmenOnLOI:(int64_t)i
{
  v28 = *MEMORY[0x277D85DE8];
  +[NetworkAnalyticsEngine concurrentEpochs];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([v9 oncell])
        {
          v10 = 5;
        }

        else
        {
          v10 = 3;
        }

        v11 = [NetworkStateRelay getStateRelayFor:v10];
        if ([v11 loi] == i)
        {
          v14 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            primaryKey = [v9 primaryKey];
            *buf = 134218243;
            iCopy2 = i;
            v25 = 2113;
            v26 = primaryKey;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "LOI %ld match for %{private}@", buf, 0x16u);
          }

          v13 = 1;
          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    iCopy2 = i;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "No match for LOI %ld", buf, 0xCu);
  }

  v13 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted
{
  if ((on == 5 || on == 3) && sharedInstance_3)
  {
    return [sharedInstance_3 _getDNSCountsOn:? total:? impacted:?];
  }

  else
  {
    return 0;
  }
}

+ (id)getNetworkExtensionStateRelay
{
  _getNetworkExtensionStateRelay = sharedInstance_3;
  if (sharedInstance_3)
  {
    _getNetworkExtensionStateRelay = [sharedInstance_3 _getNetworkExtensionStateRelay];
    v2 = vars8;
  }

  return _getNetworkExtensionStateRelay;
}

+ (int)getLoadedLQMOn:(unsigned __int8)on
{
  onCopy = on;
  *&v13[5] = *MEMORY[0x277D85DE8];
  if (on <= 7u && ((1 << on) & 0xAC) != 0)
  {
    v4 = (&loadedLqm + 4 * on);
    v5 = *v4;
    v6 = v4[8];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 134217984;
      *v13 = onCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Unexpected network type: %ld", &v12, 0xCu);
    }

    v7 = -2;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 67109376;
    v13[0] = v7;
    LOWORD(v13[1]) = 2048;
    *(&v13[1] + 2) = onCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Returning loaded LQM = %d for %ld", &v12, 0x12u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)concurrentEpochs
{
  _concurrentEpochs = sharedInstance_3;
  if (sharedInstance_3)
  {
    _concurrentEpochs = [sharedInstance_3 _concurrentEpochs];
    v2 = vars8;
  }

  return _concurrentEpochs;
}

+ (int64_t)mapLinkQuality:(int)quality
{
  v11 = *MEMORY[0x277D85DE8];
  if (quality <= 19)
  {
    if (quality >= 0xFFFFFFFE || quality == 10)
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }

LABEL_10:
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218240;
      selfCopy = self;
      v9 = 2048;
      v10 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "%p unexpected link quality indicator: %ld", &v7, 0x16u);
    }

    goto LABEL_12;
  }

  switch(quality)
  {
    case 20:
      result = 20;
      break;
    case 100:
      result = 100;
      break;
    case 50:
      result = 50;
      break;
    default:
      goto LABEL_10;
  }

LABEL_13:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)mapPowerCost:(unsigned __int8)cost
{
  v12 = *MEMORY[0x277D85DE8];
  if ((cost + 1) >= 4u)
  {
    costCopy = cost;
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 134218240;
      selfCopy = self;
      v10 = 1024;
      v11 = costCopy;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "%p unexpected power cost indicator from baseband: %hhu, defaulting to unknown", &v8, 0x12u);
    }

    result = 0;
  }

  else
  {
    result = (cost + 1);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)mapRadioTechnology:(unsigned __int8)technology
{
  technologyCopy = technology;
  v12 = *MEMORY[0x277D85DE8];
  result = 3;
  if (technology > 127)
  {
    if ((technology - 128) >= 7)
    {
      if (technology != 135)
      {
        if (technology == 136)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_15:
      result = 2;
      goto LABEL_9;
    }

LABEL_8:
    result = 1;
    goto LABEL_9;
  }

  if (technology > 0xBu)
  {
    goto LABEL_12;
  }

  if (((1 << technology) & 0x3FA) != 0)
  {
    goto LABEL_8;
  }

  if (((1 << technology) & 0xC00) != 0)
  {
    goto LABEL_9;
  }

  if (technology == 2)
  {
    goto LABEL_15;
  }

LABEL_12:
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 2048;
    v11 = technologyCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "%p unexpected radio technology from baseband: %ld, defaulting to unknown", &v8, 0x16u);
  }

  result = 0;
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)mapRadioTechnologyTypeToString:(unsigned __int8)string
{
  v3 = @"Unknown";
  if (string > 63)
  {
    if (string <= 130)
    {
      v4 = @"802.11a";
      v12 = @"802.11b";
      v13 = @"802.11g";
      if (string != 130)
      {
        v13 = @"Unknown";
      }

      if (string != 129)
      {
        v12 = v13;
      }

      if (string != 128)
      {
        v4 = v12;
      }

      if (string == 65)
      {
        v3 = @"GF";
      }

      if (string == 64)
      {
        v3 = @"Satellite";
      }

      v7 = string <= 127;
    }

    else
    {
      v4 = @"802.11ac";
      v8 = @"802.11ax";
      v9 = @"802.11be";
      if (string != 136)
      {
        v9 = @"Unknown";
      }

      if (string != 135)
      {
        v8 = v9;
      }

      if (string != 134)
      {
        v4 = v8;
      }

      if (string == 133)
      {
        v3 = @"802.11gTurbo";
      }

      if (string == 132)
      {
        v3 = @"802.11aTurbo";
      }

      if (string == 131)
      {
        v3 = @"802.11n";
      }

      v7 = string <= 133;
    }
  }

  else if (string <= 5)
  {
    v4 = @"GSM";
    v10 = @"UTRAN";
    v11 = @"CDMA1x";
    if (string != 5)
    {
      v11 = @"Unknown";
    }

    if (string != 4)
    {
      v10 = v11;
    }

    if (string != 3)
    {
      v4 = v10;
    }

    if (string == 2)
    {
      v3 = @"LTE";
    }

    if (string == 1)
    {
      v3 = @"Others";
    }

    v7 = string <= 2;
  }

  else
  {
    v4 = @"UMTS";
    v5 = @"NRDual";
    v6 = @"NR";
    if (string != 11)
    {
      v6 = @"Unknown";
    }

    if (string != 10)
    {
      v5 = v6;
    }

    if (string != 9)
    {
      v4 = v5;
    }

    if (string == 8)
    {
      v3 = @"TDSCDMA";
    }

    if (string == 7)
    {
      v3 = @"CDMAHybrid";
    }

    if (string == 6)
    {
      v3 = @"CDMAEVDO";
    }

    v7 = string <= 8;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)mapNrFrequencyBandToString:(char)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898DF90[string];
  }
}

void __77__NetworkAnalyticsEngine_estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __75__NetworkAnalyticsEngine_usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_sendTrafficInfoFlags:(unsigned int)flags changeFlags:(unsigned int)changeFlags foreground:(BOOL)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dword_2814D2FD4 = flags;
  dword_2814D2FD8 = changeFlags;
  dword_2814D2FDC = foregroundCopy;
  objc_sync_exit(selfCopy);

  if (cellTrafficClassState == 1)
  {
    v9 = sharedInstance_3;

    [v9 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayDataStallState:(unsigned int)state dnsFailureState:(unsigned int)failureState
{
  if (cellDataStallState == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    LODWORD(qword_2814D2FE0) = state;
    dword_2814D2FE8 = failureState;
    objc_sync_exit(selfCopy);

    v8 = sharedInstance_3;

    [v8 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayRebufferState:(unsigned int)state
{
  if (cellDataStallState == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    HIDWORD(qword_2814D2FE0) = state;
    objc_sync_exit(selfCopy);

    v6 = sharedInstance_3;

    [v6 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayCellThroughputAdvice:(unsigned int)advice
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 67109120;
    HIDWORD(v10) = advice;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "_relayCellThroughputAdvice called with 0x%x", &v10, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentThroughputFlags = currentThroughputFlags & 0xFFFFFFFC | advice & 3;
  tcsThroughputAdviceSet = 1;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v10) = 0;
    v8 = "_relayCellThroughputAdvice skip notification, currently disabled";
LABEL_10:
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 2u);
    goto LABEL_11;
  }

  if (tcsWiFiViabilitySet != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v10) = 0;
    v8 = "_relayCellThroughputAdvice skip notification, waiting on tcsWiFiViabilitySet";
    goto LABEL_10;
  }

  dword_2814D2FF8 = currentThroughputFlags;
  dword_2814D2FD8 = 0;
  [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
LABEL_11:
  [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:3 forInterface:2 fromDict:0, v10, v11];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset
{
  resetCopy = reset;
  v23 = *MEMORY[0x277D85DE8];
  v11 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109888;
    v16[1] = status;
    v17 = 2048;
    throughputCopy = throughput;
    v19 = 2048;
    txThroughputCopy = txThroughput;
    v21 = 1024;
    v22 = resetCopy;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "_relayAudioVideoStatus:rxThroughputKbps:txThroughputKbps: called with OP %u, RX %.4f, TX %.4f, reset %d", v16, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dword_2814D2FEC = (throughput * 1000.0) & 0xFFFFFF | (status << 24);
  dword_2814D2FD8 = 0;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState == 1)
  {
    [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
  }

  else
  {
    v13 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "_relayAudioVideoRXThroughputKbps:TXThroughputKbps: skip notification, currently disabled", v16, 2u);
    }
  }

  if (resetCopy)
  {
    v14 = selfCopy;
    objc_sync_enter(v14);
    dword_2814D2FEC = 0;
    objc_sync_exit(v14);
  }

  [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:3 forInterface:2 fromDict:0];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_relayWiFiViability:(unsigned int)viability
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = viability;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "_relayWiFiViability called with 0x%x", v10, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentThroughputFlags = currentThroughputFlags & 0xFFFFFFE3 | (4 * ((viability >> 2) & 7));
  tcsWiFiViabilitySet = 1;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v10[0]) = 0;
    v8 = "_relayWiFiViability skip notification, currently disabled";
LABEL_10:
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, v10, 2u);
    goto LABEL_11;
  }

  if (tcsThroughputAdviceSet != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v10[0]) = 0;
    v8 = "_relayWiFiViability skip notification, waiting on tcsThroughputAdviceSet";
    goto LABEL_10;
  }

  dword_2814D2FF8 = currentThroughputFlags;
  dword_2814D2FD8 = 0;
  [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)queue
{
  queue = sharedInstance_3;
  if (sharedInstance_3)
  {
    queue = [sharedInstance_3 queue];
    v2 = vars8;
  }

  return queue;
}

+ (unsigned)_constructRxSignalExemptionsBitmapFromHint:(BOOL)hint reasons:(id)reasons
{
  hintCopy = hint;
  reasonsCopy = reasons;
  v6 = reasonsCopy;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (hintCopy && [reasonsCopy count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NetworkAnalyticsEngine__constructRxSignalExemptionsBitmapFromHint_reasons___block_invoke;
    v9[3] = &unk_27898DE80;
    v9[4] = &v10;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __77__NetworkAnalyticsEngine__constructRxSignalExemptionsBitmapFromHint_reasons___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 integerValue];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 4;
      goto LABEL_12;
    }

    if (v4 == 3)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 8;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 1;
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 2;
LABEL_12:
      *(v5 + 24) = v6;
      goto LABEL_13;
    }
  }

  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v10 = 134217984;
    v11 = [v3 integerValue];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Unrecognized reason from Wi-Fi: %ld", &v10, 0xCu);
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
}

- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found
{
  v52 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  predCopy = pred;
  actionsCopy = actions;
  v46 = 0;
  v14 = [actionsCopy objectForKey:@"sweepUsage"];

  if (v14)
  {
LABEL_2:
    v15 = 1;
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [(AnalyticsEngineCore *)self extractQueryStringFrom:predCopy isGeneric:&v46];
      if (v24)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: only 1-result string queries are first tried on the memory cache, giving up", buf, 2u);
    }

    goto LABEL_2;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  subpredicates = [predCopy subpredicates];
  v19 = [subpredicates countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(subpredicates);
        }

        v23 = [(AnalyticsEngineCore *)self extractQueryStringFrom:*(*(&v42 + 1) + 8 * i) isGeneric:&v46];
        if (v23)
        {
          v24 = v23;
          goto LABEL_19;
        }
      }

      v20 = [subpredicates countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v24 = 0;
LABEL_19:

  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_20:
  v26 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v50 = v24;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl found key: %ld", buf, 0xCu);
  }

  if (([v24 isEqualToString:@"currentWiFi"] & 1) != 0 || objc_msgSend(v24, "isEqualToString:", @"currentCell"))
  {
    if ([v24 isEqualToString:@"currentWiFi"])
    {
      v27 = 3;
    }

    else
    {
      v27 = 5;
    }

    v28 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v27];
    v29 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v28;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: cache hit in NetFlow %@", buf, 0xCu);
    }

    if (v28)
    {
      name = [cacheCopy name];
      entityName = [MEMORY[0x277D6B5A8] entityName];
      v32 = [name isEqualToString:entityName];

      if (v32)
      {
        v48 = v28;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
        *found = v15 = 0;
LABEL_43:

        goto LABEL_44;
      }

      name2 = [cacheCopy name];
      entityName2 = [MEMORY[0x277D6B5A0] entityName];
      v35 = [name2 isEqualToString:entityName2];

      if (v35)
      {
        v36 = [actionsCopy objectForKey:@"instant"];

        if (v36)
        {
          partial = [v28 partial];
          v38 = partial;
          if (partial)
          {
            v47 = partial;
            partial = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
            v15 = 0;
          }

          else
          {
            v15 = 2;
          }

          *found = partial;
        }

        else
        {
          durable = [v28 durable];
          v38 = durable;
          if (durable)
          {
            hasDefaultRoute = [durable hasDefaultRoute];
            *found = [hasDefaultRoute allObjects];

            v15 = 0;
          }

          else
          {
            *found = 0;
            v15 = 2;
          }
        }

        goto LABEL_43;
      }
    }

    *found = 0;
    v15 = 2;
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:
  v41 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v50) = v15;
    _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: returning cache code %d", buf, 8u);
  }

LABEL_3:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  v64 = *MEMORY[0x277D85DE8];
  forCopy = for;
  predCopy = pred;
  actionsCopy = actions;
  replyCopy = reply;
  v14 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: received snapshot request", buf, 2u);
  }

  v15 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:self->super.workspace entityName:forCopy withCache:0];
  v16 = [v15 getDescriptionForName:forCopy];
  if (!v16)
  {
    v43 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = forCopy;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: failed request for entityName:%@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v17 = v16;
  v60 = 0;
  v18 = [(NetworkAnalyticsEngine *)self performQueryOnEntityFromCache:v16 pred:predCopy altpred:0 actions:actionsCopy found:&v60];
  v19 = v60;
  v20 = v19;
  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (v21 || [v19 count] != 1)
  {
    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: snapshot request failed: no target", buf, 2u);
    }

LABEL_26:
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    replyCopy[2](replyCopy, 0, v41);
    goto LABEL_27;
  }

  v51 = v17;
  v52 = v15;
  v53 = replyCopy;
  v54 = predCopy;
  v55 = forCopy;
  v50 = v20;
  v49 = [v20 objectAtIndexedSubscript:0];
  v22 = [v49 copy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v22 setUuid:uUID];
  v47 = uUID;
  v48 = v22;
  [(NSMutableDictionary *)self->snapshots setObject:v22 forKeyedSubscript:uUID];
  allValues = [(NSMutableDictionary *)self->snapshots allValues];
  v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v46 = allValues;
  v25 = [NetworkEpoch snapshotsIn:allValues olderThan:?];
  v26 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v28 = [v25 count];
    *buf = 134217984;
    v63 = v28;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: found %lu old entries", buf, 0xCu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v56 + 1) + 8 * i);
        snapshots = self->snapshots;
        uuid = [v34 uuid];
        [(NSMutableDictionary *)snapshots removeObjectForKey:uuid];

        v37 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          uuid2 = [v34 uuid];
          uUIDString = [uuid2 UUIDString];
          *buf = 138412290;
          v63 = uUIDString;
          _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: remove entry for uuid: %@", buf, 0xCu);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v31);
  }

  replyCopy = v53;
  (v53)[2](v53, v47, 0);

  predCopy = v54;
  forCopy = v55;
  v41 = v52;
LABEL_27:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome
{
  v44 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  actionsCopy = actions;
  outcomeCopy = outcome;
  v11 = [actionsCopy objectForKeyedSubscript:@"composeAdvisory"];

  if (v11)
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = processingCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: compute advisory score over %@", buf, 0xCu);
    }

    v13 = @"advisoryNotReady";
    if ([processingCopy count] == 1)
    {
      v14 = [processingCopy objectAtIndexedSubscript:0];
    }

    else
    {
      v14 = 0;
    }

    v15 = [actionsCopy objectForKeyedSubscript:@"withGeneration"];
    v16 = [(NetworkAnalyticsEngine *)self _adviceToNSString:[(NetworkAnalyticsEngine *)self _generateAdviceForEpoch:v14 relativeTo:v15]];

    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v16;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: returning advisory score: %@", buf, 0xCu);
    }

    if (performQueryPostProcessing_actions_processOutcome__once != -1)
    {
      [NetworkAnalyticsEngine performQueryPostProcessing:actions:processOutcome:];
    }

    durable = [v14 durable];
    v19 = 0x277CBE000;
    if (durable)
    {
      v20 = durable;
      v39 = v15;
      durable2 = [v14 durable];
      kind = [durable2 kind];
      if ([kind shortValue] == 1)
      {
        v37 = outcomeCopy;
        v38 = processingCopy;
        v23 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
        durable3 = [v14 durable];
        kind2 = [durable3 kind];
        v26 = [v23 objectForKeyedSubscript:kind2];
        v27 = [v26 isEqualToString:v16];

        if (v27)
        {
          v28 = 0;
          outcomeCopy = v37;
          processingCopy = v38;
          v15 = v39;
LABEL_21:
          v19 = 0x277CBE000uLL;
          goto LABEL_22;
        }

        v29 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
        durable4 = [v14 durable];
        kind3 = [durable4 kind];
        [v29 setObject:v16 forKeyedSubscript:kind3];

        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCABB0] numberWithShort:1];
        v34 = [v32 dictionaryWithObjectsAndKeys:{v16, @"advisoryKey", v33, @"Network Type", 0}];

        outcomeCopy = v37;
        v15 = v39;
        if (!v34)
        {
          v28 = 0;
          processingCopy = v38;
          goto LABEL_21;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__NetworkAnalyticsEngine_performQueryPostProcessing_actions_processOutcome___block_invoke_2;
        block[3] = &unk_27898A0C8;
        v28 = v34;
        v41 = v28;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v20 = v41;
        processingCopy = v38;
        v19 = 0x277CBE000;
      }

      else
      {

        v28 = 0;
        v15 = v39;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_22:
    v35 = [*(v19 + 2752) dictionaryWithObjectsAndKeys:{v16, @"advisoryKey", 0}];
    [outcomeCopy addObject:v35];
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __76__NetworkAnalyticsEngine_performQueryPostProcessing_actions_processOutcome___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v1 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
  performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_createNetworkAttachmentIdentifierExclusionList
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  v4 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v5 = v4;
  if (v4)
  {
    primaryKey = [v4 primaryKey];
    [v3 addObject:primaryKey];
  }

  v7 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];

  if (v7)
  {
    primaryKey2 = [v7 primaryKey];
    [v3 addObject:primaryKey2];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->liveDefaultRoutes allValues];
  v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        primaryKey3 = [*(*(&v17 + 1) + 8 * i) primaryKey];
        [v3 addObject:primaryKey3];
      }

      v11 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)resetDataFor:(id)for nameKind:(id)kind
{
  forCopy = for;
  kindCopy = kind;
  if (forCopy && [forCopy count])
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:forCopy];
  }

  else
  {
    [(ImpoExpoService *)self->ieService deleteItemsWithPrefix:@"SymptomHashSalt"];
    +[NetworkAnalyticsModel resetModel];
    v7 = 0;
  }

  _createNetworkAttachmentIdentifierExclusionList = [(NetworkAnalyticsEngine *)self _createNetworkAttachmentIdentifierExclusionList];
  [NetworkEpoch resetDataFor:v7 exceptFor:_createNetworkAttachmentIdentifierExclusionList inWorkspace:self->super.workspace];
}

- (void)_awdCaptureInstant:(id)instant replyQueue:(id)queue reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  instantCopy = instant;
  queueCopy = queue;
  replyCopy = reply;
  v11 = instantCopy;
  if ([v11 networkType] == 2)
  {
    v12 = 5;
  }

  else
  {
    if ([v11 networkType] != 1)
    {
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        *buf = 67109120;
        *&buf[4] = [v11 networkType];
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "AWDAgent: Using fallback handler for network type %d", buf, 8u);
      }

      [v11 setNetworkType:1];
    }

    v12 = 3;
  }

  v15 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v12];
  partial = [v15 partial];
  if (!partial)
  {
    goto LABEL_17;
  }

  *buf = 0;
  v36 = buf;
  v37 = 0x2020000000;
  defRoute4 = [v15 defRoute4];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  defRoute6 = [v15 defRoute6];
  v17 = *(v36 + 3);
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = v32[3];
  if (v18)
  {
    CFRetain(v18);
  }

  if (!*(v36 + 3) && !v32[3])
  {
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(buf, 8);
LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_2;
    block[3] = &unk_27898DD40;
    v21 = replyCopy;
    v22 = 0;
    dispatch_async(queueCopy, block);

    goto LABEL_18;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke;
  v23[3] = &unk_27898DEA8;
  v24 = v11;
  v25 = partial;
  v26 = v15;
  v29 = buf;
  v30 = &v31;
  v27 = queueCopy;
  v28 = replyCopy;
  [(NetworkAnalyticsEngine *)self _performNetAttachmentQueryOn:v12 reply:v23];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);
LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

void __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) bytesIn];
  [*(a1 + 32) setBytesIn:v2];
  [*(a1 + 40) bytesOut];
  [*(a1 + 32) setBytesOut:v3];
  [*(a1 + 40) connAttempts];
  [*(a1 + 32) setConnAttempts:v4];
  [*(a1 + 40) connSuccesses];
  [*(a1 + 32) setConnSuccess:v5];
  [*(a1 + 40) packetsIn];
  [*(a1 + 32) setPacketsIn:v6];
  [*(a1 + 40) packetsOut];
  [*(a1 + 32) setPacketsOut:v7];
  [*(a1 + 40) rttMin];
  if (v8 < 1.79769313e308)
  {
    [*(a1 + 32) setRttMinUsecs:(v8 * 1000000.0)];
  }

  v9 = [*(a1 + 48) hasDNS];
  [*(a1 + 32) setDnsServers:{objc_msgSend(v9, "count")}];

  v10 = [*(a1 + 48) impDNS];
  [*(a1 + 32) setPenalizedDnsServers:{objc_msgSend(v10, "count")}];

  v11 = [*(a1 + 48) fatal];
  [*(a1 + 32) setHasInternetConn:{objc_msgSend(v11, "isRunning") ^ 1}];

  v12 = [*(a1 + 48) fatal];
  [v12 currentRun];
  [*(a1 + 32) setCumulInternetOutageSecs:v13];

  v14 = *(*(*(a1 + 72) + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v15 = *(*(*(a1 + 80) + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v16 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138412290;
    v23 = v17;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "AWDAgent: real instant query outcome: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_922;
  block[3] = &unk_27898C670;
  v18 = *(a1 + 56);
  v21 = *(a1 + 64);
  dispatch_async(v18, block);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "AWDAgent: no epoch/lrp", v5, 2u);
  }

  v3 = *(a1 + 40);
  return (*(*(a1 + 32) + 16))();
}

- (void)_awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply
{
  inCopy = in;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v16 = inCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = inCopy;
  dispatch_async(queue, v15);
}

void __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke(uint64_t *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = *MEMORY[0x277D85DE8];

    [v3 _awdCaptureInstant:v4 replyQueue:v5 reply:v6];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      *buf = 134217984;
      v15 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "AWDAgent: unrecognized payload %p", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke_925;
    block[3] = &unk_27898C670;
    v10 = a1[6];
    v13 = a1[7];
    dispatch_async(v10, block);

    v11 = *MEMORY[0x277D85DE8];
  }
}

+ (void)awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply
{
  inCopy = in;
  queueCopy = queue;
  replyCopy = reply;
  if (sharedInstance_3)
  {
    [sharedInstance_3 _awdCaptureIn:inCopy replyQueue:queueCopy reply:replyCopy];
  }

  else
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "awdCaptureIn: reply NO, no sharedInstance", v11, 2u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)_trainModelAndScore:(BOOL)score
{
  scoreCopy = score;
  [(NetworkAnalyticsModel *)self->model trainModel];
  if (scoreCopy)
  {

    [(NetworkAnalyticsEngine *)self _scoringTrampoline];
  }
}

- (void)proxyAnalyticsTrainAndScoreInterrupted
{
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreInterrupted__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreInterrupted__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Connection to helper was interrupted.", buf, 2u);
  }

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Removing old records", v5, 2u);
  }

  [*(a1 + 32) _removeOldRouteRecords];
  [*(a1 + 32) setRemoveOldRecordsNow:0];
  [*(*(a1 + 32) + 8) save];
  [*(*(a1 + 32) + 8) reset];
  v4 = [NetworkStateRelay getStateRelayFor:3];
  [v4 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];
}

- (void)proxyAnalyticsTrainAndScoreComplete:(id)complete error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v8 = netepochsLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138412290;
      v16 = localizedDescription;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "proxyAnalyticsTrainAndScoreComplete: error:%@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "proxyAnalyticsTrainAndScoreComplete with success", buf, 2u);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke;
    v13[3] = &unk_27898A7D0;
    v13[4] = self;
    v14 = completeCopy;
    dispatch_async(queue, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 352) processProxyTrain];
  v3 = *(*(a1 + 32) + 156);
  v2 = *(*(a1 + 32) + 160);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"lastScoreExits"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke_2;
  v13[3] = &unk_27898DED0;
  v13[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v13];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 32) + 156);
    *buf = 67109376;
    v15 = v3;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "lastScoreExit[NWInterfaceTypeWiFi] was %d and is now %d", buf, 0xEu);
  }

  v7 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1 + 32) + 160);
    *buf = 67109376;
    v15 = v2;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "lastScoreExit[NWInterfaceTypeCellular] was %d and is now %d", buf, 0xEu);
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"lastScoreDate"];
  objc_storeStrong(&score_last, v9);
  if ([*(a1 + 32) removeOldRecordsNow])
  {
    [*(a1 + 32) _removeOldRouteRecords];
    [*(a1 + 32) setRemoveOldRecordsNow:0];
  }

  [*(*(a1 + 32) + 8) save];
  [*(*(a1 + 32) + 8) reset];
  v10 = +[NWActivityHandler sharedInstance];
  [v10 enableDBWrites];

  v11 = [NetworkStateRelay getStateRelayFor:3];
  [v11 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 intValue];
  *(*(a1 + 32) + 152 + 4 * a3) = result;
  if (a3 == 3)
  {
    *a4 = 1;
  }

  return result;
}

- (void)performPersistentStoreHealthCheckComplete:(id)complete error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: performPersistentStoreHealthCheckCompleted with error:%@", buf, 0xCu);
    }

    +[AnalyticsLaunchpad leaveBreadcrumbForIntegrityCheck];
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "WARNING: Will terminate symptomsd to allow for PersistentStore recovery ***", buf, 2u);
    }

    exit(0);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)performPersistentStoreHealthCheckWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = replyCopy;
  if (sharedInstance_3)
  {
    v5 = objc_alloc(MEMORY[0x277D6B500]);
    v6 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v6 symptomEvaluatorDatabaseContainerPath];
    v8 = [v5 initWorkspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

    if (!v8)
    {
      if (v4)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
        (v4)[2](v4, 0, v14);
      }

      goto LABEL_17;
    }

    [v8 setForceIntegrityCheck:1];
    persistentStoreCoordinator = [v8 persistentStoreCoordinator];
    integrityCheckFailed = [v8 integrityCheckFailed];
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"A-OK";
      if (integrityCheckFailed)
      {
        v12 = @"corrupted";
      }

      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Completed integrity check in the helper. PersistentStore is %@", buf, 0xCu);
    }

    if (integrityCheckFailed)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:259 userInfo:0];
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      if (!v4)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{integrityCheckFailed, @"integrityCheckFailed"}];
    v19 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    (v4)[2](v4, v16, v13);

    goto LABEL_16;
  }

  if (replyCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    (v4)[2](v4, 0, v8);
LABEL_17:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_createJournalRecordOfType:(char *)a1 forInterface:fromDict:.cold.1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict allocator failed", v4, v5, v6, v7, 0);
  }

  *a1 = 0;
  asprintf(a1, "strict allocator failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

uint64_t __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(uint64_t a1)
{
  v2 = +[CellFallbackHandler turboRNF];
  runningRNFTurbo = v2;
  return [*(a1 + 56) _setWiFiRSSIThresholds:v2];
}

@end