@interface WADeviceAnalyticsClient
+ (BOOL)isMigrationError:(id)a3;
+ (id)bandAsString:(signed __int16)a3;
+ (id)channelWidthAsString:(signed __int16)a3;
+ (id)ouiFromBssid:(id)a3;
+ (id)sharedDeviceAnalyticsClient;
+ (id)subBandAsString:(signed __int16)a3;
+ (id)timeSpanSelectorToString:(unint64_t)a3;
+ (id)timeSpanToString:(unint64_t)a3;
+ (signed)bandFromChannelFlags:(unsigned int)a3;
+ (signed)bandFromNSChannelFlags:(id)a3;
+ (signed)channelWidthFromChannelFlags:(unsigned int)a3;
+ (signed)convert32to16:(int)a3;
+ (signed)subBandFromBand:(signed __int16)a3 channel:(unint64_t)a4;
+ (void)addPersistentStoreRemoteChangeNotificationObserver:(id)a3 selector:(SEL)a4 coordinator:(id)a5;
+ (void)removePersistentStoreRemoteChangeNotificationObserver:(id)a3 coordinator:(id)a4;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getPolicyHandlersConfig;
- (BOOL)deleteStoreAndStartFreshWithError:(id *)a3;
- (BOOL)dhcpEventOnBssid:(id)a3 ssid:(id)a4 serverInfo:(id)a5 at:(id)a6 with:(id)a7 andDeferReclaimMem:(BOOL)a8;
- (BOOL)diagnosticEventAt:(id)a3 with:(id)a4 andDeferReclaimMem:(BOOL)a5;
- (BOOL)dumpDeploymentGraphJSONFileWithCompletion:(id)a3;
- (BOOL)dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion:(id)a3 batchSize:(unint64_t)a4 maxAge:(unint64_t)a5;
- (BOOL)dumpDeviceAnalyticsToFileWithCompletion:(id)a3;
- (BOOL)dumpDeviceAnalyticsToFileWithCompletion:(id)a3 fetchLimit:(unint64_t)a4 maxAge:(unint64_t)a5;
- (BOOL)dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion:(id)a3 batchSize:(unint64_t)a4 maxAge:(unint64_t)a5;
- (BOOL)faultEventOn:(id)a3 at:(id)a4 type:(id)a5 interface:(id)a6 andDeferReclaimMem:(BOOL)a7;
- (BOOL)geoTagEventOnBssid:(id)a3 ssid:(id)a4 lat:(double)a5 lon:(double)a6 at:(id)a7 andDeferReclaimMem:(BOOL)a8 andRunPostProcessing:(BOOL)a9;
- (BOOL)immediateProcessCachedFaultsAndDeferReclaimMem:(BOOL)a3;
- (BOOL)joinEventOnBssid:(id)a3 ssid:(id)a4 at:(id)a5 with:(id)a6 andDeferReclaimMem:(BOOL)a7 andRunPostProcessing:(BOOL)a8;
- (BOOL)leaveEventOnBssid:(id)a3 ssid:(id)a4 at:(id)a5 with:(id)a6 andDeferReclaimMem:(BOOL)a7;
- (BOOL)linkTestEventOn:(id)a3 at:(id)a4 with:(id)a5 andDeferReclaimMem:(BOOL)a6;
- (BOOL)loadStoreIfNeeded;
- (BOOL)lqmEvent:(id)a3 on:(id)a4 at:(id)a5 andDeferReclaimMem:(BOOL)a6;
- (BOOL)parsedBeaconInfoIsStored:(id)a3 ssid:(id)a4;
- (BOOL)performPrunePoliciesWithReasons:(id)a3 withError:(id *)a4;
- (BOOL)performPruneTestBSSes:(id)a3 networks:(id)a4 lans:(id)a5 withError:(id *)a6;
- (BOOL)processDeferredPoliciesWithReason:(id)a3;
- (BOOL)processDeferredPriorityPoliciesWithReason:(id)a3;
- (BOOL)rawAccessCanWrite;
- (BOOL)recoveryEventOnBssid:(id)a3 at:(id)a4 with:(id)a5 andDeferReclaimMem:(BOOL)a6;
- (BOOL)removeKnownNetworkEvent:(id)a3 at:(id)a4 andDeferReclaimMem:(BOOL)a5;
- (BOOL)roamEvent:(id)a3 at:(id)a4 andDeferReclaimMem:(BOOL)a5 andRunPostProcessing:(BOOL)a6 withError:(id *)a7;
- (BOOL)scanResultEventWith:(id)a3 ssid:(id)a4 whileOn:(id)a5 at:(id)a6 with:(id)a7 andDeferReclaimMem:(BOOL)a8;
- (BOOL)updateBSS:(id)a3 withParsedBeacon:(id)a4 andDeferReclaimMem:(BOOL)a5;
- (BOOL)updateNetwork:(id)a3 switchedFrom:(id)a4 at:(id)a5 andDeferReclaimMem:(BOOL)a6;
- (BOOL)updateRoamPoliciesForSourceBssid:(id)a3 andUpdateRoamCache:(BOOL)a4;
- (WADeviceAnalyticsClient)init;
- (id)adaptiveRoamingParamsForBSS:(id)a3;
- (id)analyticsFileWriter;
- (id)analyticsProcessor;
- (id)analyticsRawAccess;
- (id)analyticsReader;
- (id)apProfileForBssid:(id)a3;
- (id)bandsInNetwork:(id)a3 withError:(id *)a4;
- (id)bssidCountByBandInLAN:(id)a3 withError:(id *)a4;
- (id)copyAllStoredNetworkSsids;
- (id)copyGeoTagsForNetwork:(id)a3 location:(id)a4;
- (id)copyLocationsForNetwork:(id)a3;
- (id)dumpDeploymentGraphJSONFile;
- (id)dumpDeviceAnalyticsCSVsToFileWithBatchSize:(unint64_t)a3 maxAge:(unint64_t)a4;
- (id)dumpDeviceAnalyticsToFile;
- (id)dumpDeviceAnalyticsToFileWithFetchLimit:(unint64_t)a3 maxAge:(unint64_t)a4;
- (id)dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize:(unint64_t)a3 maxAge:(unint64_t)a4;
- (id)edgeParamsForBSS:(id)a3;
- (id)entities;
- (id)lanForBssid:(id)a3 withError:(id *)a4;
- (id)lanForSsid:(id)a3 withError:(id *)a4;
- (id)lansForSsid:(id)a3 withError:(id *)a4;
- (id)networkSsidsByTraits:(id)a3 withError:(id *)a4;
- (id)networksAvailableAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5;
- (id)networksInLan:(id)a3 withError:(id *)a4;
- (id)networksInSameLanAs:(id)a3 withError:(id *)a4;
- (id)networksInSameLanAsBssid:(id)a3 withError:(id *)a4;
- (id)performFetch:(id)a3 error:(id *)a4;
- (id)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4;
- (id)usageForLAN:(id)a3 withError:(id *)a4;
- (id)usageForNetwork:(id)a3 withError:(id *)a4;
- (id)usageOf:(id)a3 during:(unint64_t)a4 timeSpan:(unint64_t)a5 withError:(id *)a6;
- (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 withError:(id *)a6;
- (signed)deploymentCongestionForSSID:(id)a3 withError:(id *)a4;
- (signed)deploymentCoverageForSSID:(id)a3 withError:(id *)a4;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (unint64_t)countNetworksHavingBand:(signed __int16)a3 inLan:(id)a4 withError:(id *)a5;
- (unint64_t)countNetworksInSameLanAs:(id)a3 withError:(id *)a4;
- (unint64_t)countNetworksInSameLanAsBssid:(id)a3 withError:(id *)a4;
- (unint64_t)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5;
- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4;
- (unint64_t)performPruneTestEntity:(id)a3 since:(id)a4 withPredicate:(id)a5 withError:(id *)a6;
- (void)addPersistentStoreRemoteChangeNotificationObserver:(id)a3 selector:(SEL)a4;
- (void)dealloc;
- (void)performPruneBasedOnStoreSizeAndSaveWithReason:(id)a3;
- (void)processDatapathMetricStream:(id)a3 withDate:(id)a4;
- (void)processWiFiStats:(id)a3;
- (void)removePersistentStoreRemoteChangeNotificationObserver:(id)a3;
- (void)resetPolicyHandlersConfig;
- (void)setPolicyHandlersConfig:(id *)a3;
@end

@implementation WADeviceAnalyticsClient

- (id)analyticsReader
{
  v14 = *MEMORY[0x1E69E9840];
  analyticsReaderObj = self->_analyticsReaderObj;
  if (analyticsReaderObj)
  {
    goto LABEL_5;
  }

  if ([(WADeviceAnalyticsClient *)self loadStoreIfNeeded])
  {
    v4 = [[AnalyticsReader alloc] initWithPersistentContainer:self->_persistentContainer];
    v5 = self->_analyticsReaderObj;
    self->_analyticsReaderObj = v4;
  }

  analyticsReaderObj = self->_analyticsReaderObj;
  if (analyticsReaderObj)
  {
LABEL_5:
    v6 = analyticsReaderObj;
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[WADeviceAnalyticsClient analyticsReader]";
      v12 = 1024;
      v13 = 286;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:_analyticsReaderObj nil", &v10, 0x12u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)sharedDeviceAnalyticsClient
{
  v12 = *MEMORY[0x1E69E9840];
  if (!+[WAUtil isAnalyticsStoreAllowed])
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v2 = 0;
      goto LABEL_10;
    }

    v8 = 136446466;
    v9 = "+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]";
    v10 = 1024;
    v11 = 78;
    v4 = "%{public}s::%d:Use of the WiFi Analytics Store is disabled on this platform";
LABEL_8:
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, v4, &v8, 0x12u);
    goto LABEL_9;
  }

  if (!MKBUserUnlockedSinceBoot())
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446466;
      v9 = "+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]";
      v10 = 1024;
      v11 = 82;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Device has not been unlocked since boot", &v8, 0x12u);
    }

    v3 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v8 = 136446466;
    v9 = "+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]";
    v10 = 1024;
    v11 = 100;
    v4 = "%{public}s::%d:ERROR: Exiting with nil WADeviceAnalyticsClient";
    goto LABEL_8;
  }

  if (qword_1EDE5CB28 != -1)
  {
    dispatch_once(&qword_1EDE5CB28, &__block_literal_global_5);
  }

  v2 = _MergedGlobals_6;
LABEL_10:
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (WADeviceAnalyticsClient)init
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = WALogCategoryDefaultHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v21 = "[WADeviceAnalyticsClient init]";
    v22 = 1024;
    v23 = 106;
    v24 = 2080;
    v25 = "WiFiAnalytics-785.10 Oct 22 2025 21:37:20";
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:WADeviceAnalyticsClient version: %s", buf, 0x1Cu);
  }

  v19.receiver = self;
  v19.super_class = WADeviceAnalyticsClient;
  v4 = [(WADeviceAnalyticsClient *)&v19 init];
  if (v4)
  {
    v5 = v4;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.wifianalytics.deviceanalyticsclient", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    if (v5->_dispatchQueue)
    {
      v9 = WALogCategoryDefaultHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(WADeviceAnalyticsClient *)v5 dispatchQueue];
        *buf = 136446978;
        v21 = "[WADeviceAnalyticsClient init]";
        v22 = 1024;
        v23 = 115;
        v24 = 2048;
        v25 = v5;
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:WADeviceAnalyticsClient %p %@", buf, 0x26u);
      }

      v11 = [(WADeviceAnalyticsClient *)v5 dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__WADeviceAnalyticsClient_init__block_invoke;
      block[3] = &unk_1E830D880;
      v12 = v5;
      v18 = v12;
      dispatch_sync(v11, block);

      v5 = v18;
    }

    else
    {
      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v21 = "[WADeviceAnalyticsClient init]";
        v22 = 1024;
        v23 = 113;
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:_dispatchQueue nil", buf, 0x12u);
      }

      v16 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v21 = "[WADeviceAnalyticsClient init]";
        v22 = 1024;
        v23 = 141;
        _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to initialize WADeviceAnalyticsClient", buf, 0x12u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __54__WADeviceAnalyticsClient_sharedDeviceAnalyticsClient__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(WADeviceAnalyticsClient);
  v1 = _MergedGlobals_6;
  _MergedGlobals_6 = v0;

  v2 = _MergedGlobals_6;
  v3 = WALogCategoryDeviceStoreHandle();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446466;
      v10 = "+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]_block_invoke";
      v11 = 1024;
      v12 = 93;
      v5 = "%{public}s::%d:WADeviceAnalyticsClient successfully init";
      v6 = v4;
      v7 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_1C8460000, v6, v7, v5, &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v9 = 136446466;
    v10 = "+[WADeviceAnalyticsClient sharedDeviceAnalyticsClient]_block_invoke";
    v11 = 1024;
    v12 = 91;
    v5 = "%{public}s::%d:WADeviceAnalyticsClient failed to init";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __31__WADeviceAnalyticsClient_init__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = +[AnalyticsStoreDescriptor defaultModel];
  if (v3 && (+[AnalyticsStoreDescriptor storeDescriptor](AnalyticsStoreDescriptor, "storeDescriptor"), v4 = objc_claimAutoreleasedReturnValue(), [v4 storeDescription], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = +[AnalyticsStoreDescriptor defaultModelName];
    v7 = +[AnalyticsStoreDescriptor storeDescriptor];
    v8 = [v7 storeDescription];
    v9 = [WAPersistentContainer waPersistentContainerWithName:v6 managedObjectModel:v3 storeDescriptor:v8];
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    v12 = *(*(a1 + 32) + 32);
    v13 = WALogCategoryDeviceStoreHandle();
    v14 = v13;
    if (v12)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = +[AnalyticsStoreDescriptor defaultModelName];
        v16 = +[AnalyticsStoreDescriptor defaultModelURL];
        v24 = 136446978;
        v25 = "[WADeviceAnalyticsClient init]_block_invoke";
        v26 = 1024;
        v27 = 126;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Got a PersistentContainer for model name: %@ (%@) - Attempting to load store", &v24, 0x26u);
      }

      [*(a1 + 32) loadStoreIfNeeded];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = +[AnalyticsStoreDescriptor defaultModelName];
        v23 = +[AnalyticsStoreDescriptor defaultModelURL];
        v24 = 136446978;
        v25 = "[WADeviceAnalyticsClient init]_block_invoke";
        v26 = 1024;
        v27 = 129;
        v28 = 2112;
        v29 = v22;
        v30 = 2112;
        v31 = v23;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get a PersistentContainer for model name: %@ (%@)", &v24, 0x26u);
      }
    }
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = +[AnalyticsStoreDescriptor defaultModelURL];
      v19 = +[AnalyticsStoreDescriptor storeDescriptor];
      v20 = [v19 storeDescription];
      v24 = 136447234;
      v25 = "[WADeviceAnalyticsClient init]_block_invoke";
      v26 = 1024;
      v27 = 134;
      v28 = 2112;
      v29 = v3;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to get model url (%@ - %@) or AnalyticsStoreDescriptor (%@)", &v24, 0x30u);
    }
  }

  objc_autoreleasePoolPop(v2);
  v21 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  analyticsReaderObj = self->_analyticsReaderObj;
  self->_analyticsReaderObj = 0;

  analyticsFileWriterObj = self->_analyticsFileWriterObj;
  self->_analyticsFileWriterObj = 0;

  analyticsRawAccessObj = self->_analyticsRawAccessObj;
  self->_analyticsRawAccessObj = 0;

  v6.receiver = self;
  v6.super_class = WADeviceAnalyticsClient;
  [(WADeviceAnalyticsClient *)&v6 dealloc];
}

+ (BOOL)isMigrationError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = v4 == *MEMORY[0x1E696A250] && ([v3 code] == 134100 || objc_msgSend(v3, "code") == 134110 || objc_msgSend(v3, "code") == 134111 || objc_msgSend(v3, "code") == 134150 || objc_msgSend(v3, "code") == 134160 || objc_msgSend(v3, "code") == 134140);

  return v5;
}

- (BOOL)deleteStoreAndStartFreshWithError:(id *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [(WADeviceAnalyticsClient *)self persistentContainer];
  v6 = [v5 persistentStoreDescriptions];
  v7 = [v6 firstObject];

  v8 = [(WADeviceAnalyticsClient *)self persistentContainer];
  v9 = [v8 persistentStoreCoordinator];
  v10 = [v9 persistentStores];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v30 = 136446978;
    v31 = "[WADeviceAnalyticsClient deleteStoreAndStartFreshWithError:]";
    v32 = 1024;
    v33 = 167;
    v34 = 2048;
    v35 = [v10 count];
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%ld stores: %@", &v30, 0x26u);
  }

  if (!a3)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v30 = 136446466;
    v31 = "[WADeviceAnalyticsClient deleteStoreAndStartFreshWithError:]";
    v32 = 1024;
    v33 = 168;
    v23 = "%{public}s::%d:retErr input is required";
    v24 = v21;
    v25 = 18;
    goto LABEL_10;
  }

  if ([v10 count])
  {
    v12 = [(WADeviceAnalyticsClient *)self persistentContainer];
    v13 = [v12 persistentStoreCoordinator];
    v14 = [v10 firstObject];
    [v13 removePersistentStore:v14 error:a3];

    if (*a3)
    {
      v21 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      v29 = *a3;
      v30 = 136446722;
      v31 = "[WADeviceAnalyticsClient deleteStoreAndStartFreshWithError:]";
      v32 = 1024;
      v33 = 172;
      v34 = 2112;
      v35 = v29;
      v23 = "%{public}s::%d:The store needs migration and the attempted migration failed. We attempted to remove the store from the container and failed: %@";
LABEL_9:
      v24 = v21;
      v25 = 28;
LABEL_10:
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_FAULT, v23, &v30, v25);
      goto LABEL_11;
    }
  }

  v15 = [(WADeviceAnalyticsClient *)self persistentContainer];
  v16 = [v15 persistentStoreCoordinator];
  v17 = [v7 URL];
  v18 = [v7 type];
  [v16 destroyPersistentStoreAtURL:v17 withType:v18 options:0 error:a3];

  v19 = *a3;
  v20 = WALogCategoryDeviceStoreHandle();
  v21 = v20;
  if (v19)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
LABEL_11:
      v26 = 0;
      goto LABEL_15;
    }

    v22 = *a3;
    v30 = 136446722;
    v31 = "[WADeviceAnalyticsClient deleteStoreAndStartFreshWithError:]";
    v32 = 1024;
    v33 = 179;
    v34 = 2112;
    v35 = v22;
    v23 = "%{public}s::%d:The store needs migration and the attempted migration failed. We attempted to delete the existing store and failed: %@";
    goto LABEL_9;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v30 = 136446466;
    v31 = "[WADeviceAnalyticsClient deleteStoreAndStartFreshWithError:]";
    v32 = 1024;
    v33 = 182;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:The store needs migration and the attempted migration failed. We deleted the existing store and will load an empty one", &v30, 0x12u);
  }

  v26 = 1;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)loadStoreIfNeeded
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke;
  v15[3] = &unk_1E830D880;
  v15[4] = self;
  v3 = MEMORY[0x1CCA780B0](v15, a2);
  label = dispatch_queue_get_label(0);
  v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v6 = dispatch_queue_get_label(v5);

  if (label && v6 && !strcmp(label, v6))
  {
    if (v3)
    {
      v3[2](v3);
    }
  }

  else
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke_86;
    v13 = &unk_1E830F000;
    v14 = v3;
    dispatch_sync(v7, &v10);
  }

  v8 = [(WADeviceAnalyticsClient *)self storeLoaded:v10];

  return v8;
}

void __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) storeLoaded] & 1) == 0)
  {
    v2 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v27 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
      v28 = 1024;
      v29 = 197;
      _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Attempting to load the store", buf, 0x12u);
    }

    if (+[WAUtil isKeyBagUnlocked])
    {
      if (([*(a1 + 32) storeLoaded] & 1) == 0)
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v4 = MEMORY[0x1E69E9820];
        *&v3 = 136446978;
        v18 = v3;
        do
        {
          v5 = *(a1 + 32);
          v6 = *(v5 + 32);
          v19[0] = v4;
          v19[1] = 3221225472;
          v19[2] = __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke_57;
          v19[3] = &unk_1E830EFD8;
          v19[4] = v5;
          v19[5] = &v20;
          [v6 loadPersistentStoresWithCompletionHandler:{v19, v18}];
          v7 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = [*(a1 + 32) storeLoaded];
            v9 = [*(a1 + 32) storeLoadError];
            v10 = v9;
            *buf = v18;
            v11 = @"NO";
            if (v8)
            {
              v11 = @"YES";
            }

            v27 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
            v28 = 1024;
            v29 = 253;
            v30 = 2112;
            v31 = v11;
            v32 = 2112;
            v33 = v9;
            _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:StoreLoaded: %@ %@", buf, 0x26u);
          }
        }

        while ((v21[3] & 1) != 0);
        _Block_object_dispose(&v20, 8);
      }

      if ([*(a1 + 32) storeLoaded] && objc_msgSend(*(a1 + 32), "pendingPriorityBGTask"))
      {
        v12 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v27 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
          v28 = 1024;
          v29 = 258;
          _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Store loaded and pending priority tasks", buf, 0x12u);
        }

        [*(a1 + 32) processDeferredPriorityPoliciesWithReason:@"PendingWABackgroundTaskManagerAfterUnlock"];
      }
    }

    else
    {
      v13 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
        v28 = 1024;
        v29 = 262;
        _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Device is locked", buf, 0x12u);
      }

      v14 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A588];
      v25 = @"WAErrorCodeKeyBagLocked";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9016 userInfo:v15];
      [*(a1 + 32) setStoreLoadError:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke_57(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setStoreLoadError:v6];
  v7 = *(a1 + 32);
  if (!v6)
  {
    [v7 setStoreLoaded:1];
    [*(a1 + 32) setStoreLoadError:0];
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      goto LABEL_6;
    }

    *buf = 136446722;
    v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
    v38 = 1024;
    v39 = 215;
    v40 = 2112;
    v41 = v5;
    v9 = "%{public}s::%d:store loaded and ready to use: %@";
    v10 = v8;
    v11 = 28;
LABEL_4:
    _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    goto LABEL_5;
  }

  [v7 setStoreLoaded:0];
  v13 = [v6 domain];
  if (v13 == *MEMORY[0x1E696A250] && [v6 code] == 256)
  {
    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"NSSQLiteErrorDomain"];
    v16 = [&unk_1F483E1D0 isEqualToNumber:v15];

    if (v16)
    {
      v17 = WALogCategoryDeviceStoreHandle();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        goto LABEL_6;
      }

      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v18 = @"after deleting store ";
      }

      else
      {
        v18 = &stru_1F481C4A0;
      }

      *buf = 136447234;
      v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
      v38 = 1024;
      v39 = 222;
      v40 = 2112;
      v41 = v5;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v6;
      v19 = "%{public}s::%d:Unable to load persistent store:%@ %@error:%@ -- device is likely locked. Retry later";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v23 = *(a1 + 32);
  if (([objc_opt_class() isMigrationError:v6] & 1) == 0)
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v34 = @"after deleting store ";
    }

    else
    {
      v34 = &stru_1F481C4A0;
    }

    *buf = 136447234;
    v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
    v38 = 1024;
    v39 = 225;
    v40 = 2112;
    v41 = v5;
    v42 = 2112;
    v43 = v34;
    v44 = 2112;
    v45 = v6;
    v19 = "%{public}s::%d:Unable to load persistent store:%@ %@error:%@";
    v20 = v17;
    v21 = OS_LOG_TYPE_FAULT;
LABEL_15:
    v22 = 48;
LABEL_16:
    _os_log_impl(&dword_1C8460000, v20, v21, v19, buf, v22);
    goto LABEL_17;
  }

  v24 = [*(a1 + 32) persistentContainer];
  v25 = [v24 persistentStoreDescriptions];
  v26 = [v25 firstObject];
  v27 = [v26 shouldMigrateStoreAutomatically];

  if ((v27 & 1) == 0)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 136446466;
    v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
    v38 = 1024;
    v39 = 229;
    v9 = "%{public}s::%d:The store needs migration. Wait for the process in charge of migration to migrate the store";
    v10 = v8;
    v11 = 18;
    goto LABEL_4;
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v28 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
      v38 = 1024;
      v39 = 246;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_1C8460000, v28, OS_LOG_TYPE_FAULT, "%{public}s::%d:The store needs migration and the attempted migration failed. We attempted to delete the existing store and reload and that also failed: %@", buf, 0x1Cu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v29 = +[WAUtil canDeleteStore];
    v17 = WALogCategoryDeviceStoreHandle();
    v30 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v29)
    {
      if (!v30)
      {
        goto LABEL_17;
      }

      *buf = 136446466;
      v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
      v38 = 1024;
      v39 = 239;
      v19 = "%{public}s::%d:The store needs migration and the attempted migration failed. Deleting the existing store is forbidden thru UserDefaults.";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 18;
      goto LABEL_16;
    }

    if (v30)
    {
      *buf = 136446466;
      v37 = "[WADeviceAnalyticsClient loadStoreIfNeeded]_block_invoke";
      v38 = 1024;
      v39 = 241;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:The store needs migration and the attempted migration failed. Deleting the existing store and starting fresh", buf, 0x12u);
    }

    v31 = *(a1 + 32);
    v35 = 0;
    v32 = [v31 deleteStoreAndStartFreshWithError:&v35];
    v33 = v35;
    *(*(*(a1 + 40) + 8) + 24) = v32;
    [*(a1 + 32) setStoreLoadError:v33];
  }

LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
}

void __44__WADeviceAnalyticsClient_loadStoreIfNeeded__block_invoke_86(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (id)analyticsProcessor
{
  v22 = *MEMORY[0x1E69E9840];
  analyticsProcessorObj = self->_analyticsProcessorObj;
  if (analyticsProcessorObj)
  {
    goto LABEL_14;
  }

  if ([(WADeviceAnalyticsClient *)self loadStoreIfNeeded])
  {
    v4 = [AnalyticsProcessor analyticsProcessorWithPersistentContainer:self->_persistentContainer];
    v5 = self->_analyticsProcessorObj;
    self->_analyticsProcessorObj = v4;

    v6 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v7 = @"YES";
    v8 = self->_analyticsProcessorObj;
    v17 = "[WADeviceAnalyticsClient analyticsProcessor]";
    v16 = 136446722;
    if (!v8)
    {
      v7 = @"NO";
    }

    v18 = 1024;
    v19 = 299;
    v20 = 2112;
    v21 = v7;
    v9 = "%{public}s::%d:Store Loaded, AnalyticsProcessor is ready to use: %@";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 28;
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v16 = 136446466;
    v17 = "[WADeviceAnalyticsClient analyticsProcessor]";
    v18 = 1024;
    v19 = 301;
    v9 = "%{public}s::%d:Unable to load the store";
    v10 = v6;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 18;
  }

  _os_log_impl(&dword_1C8460000, v10, v11, v9, &v16, v12);
LABEL_10:

  analyticsProcessorObj = self->_analyticsProcessorObj;
  if (!analyticsProcessorObj)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446466;
      v17 = "[WADeviceAnalyticsClient analyticsProcessor]";
      v18 = 1024;
      v19 = 306;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to initialize AnalyticsProcessor", &v16, 0x12u);
    }

    analyticsProcessorObj = self->_analyticsProcessorObj;
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return analyticsProcessorObj;
}

- (id)analyticsFileWriter
{
  v14 = *MEMORY[0x1E69E9840];
  analyticsFileWriterObj = self->_analyticsFileWriterObj;
  if (analyticsFileWriterObj)
  {
    goto LABEL_5;
  }

  if ([(WADeviceAnalyticsClient *)self loadStoreIfNeeded])
  {
    v4 = [[AnalyticsStoreFileWriter alloc] initWithPersistentContainer:self->_persistentContainer];
    v5 = self->_analyticsFileWriterObj;
    self->_analyticsFileWriterObj = v4;
  }

  analyticsFileWriterObj = self->_analyticsFileWriterObj;
  if (analyticsFileWriterObj)
  {
LABEL_5:
    v6 = analyticsFileWriterObj;
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446466;
      v11 = "[WADeviceAnalyticsClient analyticsFileWriter]";
      v12 = 1024;
      v13 = 321;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:_analyticsFileWriterObj nil", &v10, 0x12u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)analyticsRawAccess
{
  v13 = *MEMORY[0x1E69E9840];
  analyticsRawAccessObj = self->_analyticsRawAccessObj;
  if (!analyticsRawAccessObj)
  {
    if ([(WADeviceAnalyticsClient *)self loadStoreIfNeeded])
    {
      v4 = [WAAnalyticsAccess accessWithPersistentContainer:self->_persistentContainer];
      v5 = self->_analyticsRawAccessObj;
      self->_analyticsRawAccessObj = v4;
    }

    analyticsRawAccessObj = self->_analyticsRawAccessObj;
    if (!analyticsRawAccessObj)
    {
      v8 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446466;
        v10 = "[WADeviceAnalyticsClient analyticsRawAccess]";
        v11 = 1024;
        v12 = 337;
        _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:_analyticsRawAccessObj nil", &v9, 0x12u);
      }

      analyticsRawAccessObj = self->_analyticsRawAccessObj;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return analyticsRawAccessObj;
}

- (id)adaptiveRoamingParamsForBSS:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  if (v4)
  {
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__WADeviceAnalyticsClient_adaptiveRoamingParamsForBSS___block_invoke;
    block[3] = &unk_1E830E5F0;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v5, block);
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "[WADeviceAnalyticsClient adaptiveRoamingParamsForBSS:]";
      v21 = 1024;
      v22 = 350;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __55__WADeviceAnalyticsClient_adaptiveRoamingParamsForBSS___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [v3 adaptiveRoamingParamsForBSS:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)edgeParamsForBSS:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  if (v4)
  {
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__WADeviceAnalyticsClient_edgeParamsForBSS___block_invoke;
    block[3] = &unk_1E830DAF8;
    v11 = v4;
    v12 = self;
    v13 = &v14;
    dispatch_sync(v5, block);

    v6 = v11;
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v21 = "[WADeviceAnalyticsClient edgeParamsForBSS:]";
      v22 = 1024;
      v23 = 360;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __44__WADeviceAnalyticsClient_edgeParamsForBSS___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [BSSMO formattedMACAddressNotation:*(a1 + 32) as:6];
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(a1 + 40) cachedEdgeParams];
    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v1 = [*(a1 + 40) latestBssid];
      v8 = [v7 stringWithFormat:@", we cached params for %@", v1];
    }

    else
    {
      v8 = @", we have no cached params";
    }

    *buf = 136446978;
    v26 = "[WADeviceAnalyticsClient edgeParamsForBSS:]_block_invoke";
    v27 = 1024;
    v28 = 364;
    v29 = 2112;
    v30 = v4;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Request for %@%@", buf, 0x26u);
    if (v6)
    {
    }
  }

  v9 = [*(a1 + 40) latestBssid];
  if ([v9 isEqualToString:v4])
  {
    v10 = [*(a1 + 40) cachedEdgeParams];

    if (v10)
    {
      v11 = [*(a1 + 40) cachedEdgeParams];
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v26 = "[WADeviceAnalyticsClient edgeParamsForBSS:]_block_invoke";
        v27 = 1024;
        v28 = 367;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning cached results", buf, 0x12u);
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
  }

  v15 = [*(a1 + 40) analyticsReader];
  v16 = [v15 edgeParametersForBSS:v4];
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v19 = [*(a1 + 40) latestBssid];
    if (!v19 || (v20 = v19, [*(a1 + 40) latestBssid], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v4), v21, v20, v22))
    {
      [*(a1 + 40) setCachedEdgeParams:*(*(*(a1 + 48) + 8) + 40)];
      [*(a1 + 40) setLatestBssid:v4];
      v14 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 40) latestBssid];
        *buf = 136446722;
        v26 = "[WADeviceAnalyticsClient edgeParamsForBSS:]_block_invoke";
        v27 = 1024;
        v28 = 377;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Caching edgeParams for %@", buf, 0x1Cu);
      }

      goto LABEL_18;
    }
  }

LABEL_19:

  objc_autoreleasePoolPop(v3);
  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)parsedBeaconInfoIsStored:(id)a3 ssid:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (!v6)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "[WADeviceAnalyticsClient parsedBeaconInfoIsStored:ssid:]";
      v24 = 1024;
      v25 = 386;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "[WADeviceAnalyticsClient parsedBeaconInfoIsStored:ssid:]";
      v24 = 1024;
      v25 = 387;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

LABEL_7:

    goto LABEL_4;
  }

  v9 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__WADeviceAnalyticsClient_parsedBeaconInfoIsStored_ssid___block_invoke;
  v14[3] = &unk_1E830E8C0;
  v17 = &v18;
  v14[4] = self;
  v15 = v6;
  v16 = v8;
  dispatch_sync(v9, v14);

LABEL_4:
  v10 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

void __57__WADeviceAnalyticsClient_parsedBeaconInfoIsStored_ssid___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  *(*(*(a1 + 56) + 8) + 24) = [v3 parsedBeaconInfoIsStored:*(a1 + 40) ssid:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (id)apProfileForBssid:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  if (v4)
  {
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__WADeviceAnalyticsClient_apProfileForBssid___block_invoke;
    block[3] = &unk_1E830E5F0;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v5, block);
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "[WADeviceAnalyticsClient apProfileForBssid:]";
      v21 = 1024;
      v22 = 397;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __45__WADeviceAnalyticsClient_apProfileForBssid___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [v3 apProfileForBssid:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (id)lanForBssid:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__WADeviceAnalyticsClient_lanForBssid_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient lanForBssid:withError:]";
      v36 = 1024;
      v37 = 408;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __49__WADeviceAnalyticsClient_lanForBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 lanForBssid:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)bandsInNetwork:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__WADeviceAnalyticsClient_bandsInNetwork_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient bandsInNetwork:withError:]";
      v36 = 1024;
      v37 = 422;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __52__WADeviceAnalyticsClient_bandsInNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 bandsInNetwork:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)isNetworkWithinRangeOfLocation:(id)a3 range:(double)a4 location:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!v8)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WADeviceAnalyticsClient isNetworkWithinRangeOfLocation:range:location:]";
      v27 = 1024;
      v28 = 433;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!v9)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v26 = "[WADeviceAnalyticsClient isNetworkWithinRangeOfLocation:range:location:]";
      v27 = 1024;
      v28 = 434;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
    }

LABEL_7:

    goto LABEL_4;
  }

  v11 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WADeviceAnalyticsClient_isNetworkWithinRangeOfLocation_range_location___block_invoke;
  block[3] = &unk_1E830F028;
  block[4] = self;
  v17 = v8;
  v20 = a4;
  v18 = v10;
  v19 = &v21;
  dispatch_sync(v11, block);

LABEL_4:
  v12 = v22[3];
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __73__WADeviceAnalyticsClient_isNetworkWithinRangeOfLocation_range_location___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [v3 isNetworkWithinRangeOfLocation:*(a1 + 40) range:*(a1 + 48) location:&v7 count:*(a1 + 64)];

  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  if (v7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = v6;
  objc_autoreleasePoolPop(v2);
}

- (id)copyGeoTagsForNetwork:(id)a3 location:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  if (!v6)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "[WADeviceAnalyticsClient copyGeoTagsForNetwork:location:]";
      v26 = 1024;
      v27 = 453;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    goto LABEL_7;
  }

  if (!v7)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "[WADeviceAnalyticsClient copyGeoTagsForNetwork:location:]";
      v26 = 1024;
      v27 = 454;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:location nil", buf, 0x12u);
    }

LABEL_7:

    goto LABEL_4;
  }

  v9 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__WADeviceAnalyticsClient_copyGeoTagsForNetwork_location___block_invoke;
  v14[3] = &unk_1E830F050;
  v14[4] = self;
  v15 = v8;
  v16 = v6;
  v17 = &v18;
  dispatch_sync(v9, v14);

LABEL_4:
  v10 = v19[5];
  _Block_object_dispose(&v18, 8);

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __58__WADeviceAnalyticsClient_copyGeoTagsForNetwork_location___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) locationForCachedGeoTags];
  [v3 distanceFromLocation:*(a1 + 40)];
  v5 = v4;

  v6 = [*(a1 + 32) latestNetwork];
  if ([v6 isEqualToString:*(a1 + 48)] && v5 == 0.0)
  {
    v7 = [*(a1 + 32) cachedGeoTagsForNetwork];

    if (v7)
    {
      v8 = [*(a1 + 32) cachedGeoTagsForNetwork];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v25 = 136446466;
        v26 = "[WADeviceAnalyticsClient copyGeoTagsForNetwork:location:]_block_invoke";
        v27 = 1024;
        v28 = 460;
        v12 = "%{public}s::%d:returning cached results";
LABEL_12:
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, v12, &v25, 0x12u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = [*(a1 + 32) latestNetwork];
    v17 = [*(a1 + 32) locationForCachedGeoTags];
    v25 = 136447490;
    v26 = "[WADeviceAnalyticsClient copyGeoTagsForNetwork:location:]_block_invoke";
    v27 = 1024;
    v28 = 462;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Request for %@ at %@ - Cached %@ %@", &v25, 0x3Au);
  }

  v18 = [*(a1 + 32) analyticsReader];
  v19 = [v18 copyGeoTagsForNetwork:*(a1 + 48) location:*(a1 + 40)];
  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = [*(a1 + 32) latestNetwork];
  v23 = [v22 isEqualToString:*(a1 + 48)];

  if (v23)
  {
    [*(a1 + 32) setCachedGeoTagsForNetwork:*(*(*(a1 + 56) + 8) + 40)];
    [*(a1 + 32) setLocationForCachedGeoTags:*(a1 + 40)];
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v25 = 136446466;
      v26 = "[WADeviceAnalyticsClient copyGeoTagsForNetwork:location:]_block_invoke";
      v27 = 1024;
      v28 = 468;
      v12 = "%{public}s::%d:Caching cachedGeoTagsForNetwork";
      goto LABEL_12;
    }

LABEL_13:
  }

  objc_autoreleasePoolPop(v2);
  v24 = *MEMORY[0x1E69E9840];
}

- (id)usageForNetwork:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__WADeviceAnalyticsClient_usageForNetwork_withError___block_invoke;
    v14[3] = &unk_1E830DB20;
    v16 = &v24;
    v14[4] = self;
    v15 = v6;
    v17 = &v18;
    dispatch_sync(v7, v14);

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v33 = "[WADeviceAnalyticsClient usageForNetwork:withError:]";
    v34 = 1024;
    v35 = 481;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
  }

  if (a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a4 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];

LABEL_3:
    *a4 = v19[5];
  }

LABEL_4:
  v8 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __53__WADeviceAnalyticsClient_usageForNetwork_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 usageForNetwork:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)copyLocationsForNetwork:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  if (v4)
  {
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__WADeviceAnalyticsClient_copyLocationsForNetwork___block_invoke;
    block[3] = &unk_1E830E5F0;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v5, block);
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "[WADeviceAnalyticsClient copyLocationsForNetwork:]";
      v21 = 1024;
      v22 = 494;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }
  }

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __51__WADeviceAnalyticsClient_copyLocationsForNetwork___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [v3 copyLocationsForNetwork:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)countNetworksInSameLanAs:(id)a3 withError:(id *)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(WADeviceAnalyticsClient *)self networksInSameLanAs:a3 withError:a4];
  }

  else
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[WADeviceAnalyticsClient countNetworksInSameLanAs:withError:]";
      v15 = 1024;
      v16 = 504;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    if (v4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A588];
      v12 = @"WAErrorCodeInvalidInput";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *v4 = [v9 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v10];

      v4 = 0;
    }
  }

  v5 = [v4 count];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)countNetworksInSameLanAsBssid:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__WADeviceAnalyticsClient_countNetworksInSameLanAsBssid_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[WADeviceAnalyticsClient countNetworksInSameLanAsBssid:withError:]";
      v34 = 1024;
      v35 = 515;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[3];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __67__WADeviceAnalyticsClient_countNetworksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 countNetworksInSameLanAsBssid:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)networksInSameLanAs:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__WADeviceAnalyticsClient_networksInSameLanAs_withError___block_invoke;
    v16[3] = &unk_1E830F078;
    v16[4] = self;
    v17 = v6;
    v18 = &v26;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient networksInSameLanAs:withError:]";
      v36 = 1024;
      v37 = 527;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __57__WADeviceAnalyticsClient_networksInSameLanAs_withError___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) latestNetwork];
  if ([v3 isEqualToString:*(a1 + 40)])
  {
    v4 = [*(a1 + 32) cachedNetworksInSameLanAsLatestSsid];

    if (v4)
    {
      v5 = [*(a1 + 32) cachedNetworksInSameLanAsLatestSsid];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = [*(a1 + 32) cachedNetworksInSameLanAsLatestSsidError];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(*(*(a1 + 56) + 8) + 40);
        if (v13)
        {
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(with error: %@)", v13];
        }

        else
        {
          v14 = &stru_1F481C4A0;
        }

        v22 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 136447234;
        v26 = "[WADeviceAnalyticsClient networksInSameLanAs:withError:]_block_invoke";
        v27 = 1024;
        v28 = 536;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:networksInSameLanAs:%@ returning cached results %@: %@", buf, 0x30u);
        if (v13)
        {
        }
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v15 = [*(a1 + 32) analyticsReader];
  v16 = *(a1 + 40);
  v17 = *(*(a1 + 56) + 8);
  obj = *(v17 + 40);
  v18 = [v15 networksInSameLansAsSsid:v16 withError:&obj];
  objc_storeStrong((v17 + 40), obj);
  v19 = *(*(a1 + 48) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = [*(a1 + 32) latestNetwork];
  LODWORD(v17) = [v21 isEqualToString:*(a1 + 40)];

  if (v17)
  {
    [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsid:*(*(*(a1 + 48) + 8) + 40)];
    [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsidError:*(*(*(a1 + 56) + 8) + 40)];
  }

LABEL_13:
  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x1E69E9840];
}

- (id)networksInSameLanAsBssid:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__WADeviceAnalyticsClient_networksInSameLanAsBssid_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient networksInSameLanAsBssid:withError:]";
      v36 = 1024;
      v37 = 554;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:bssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __62__WADeviceAnalyticsClient_networksInSameLanAsBssid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networksInSameLanAsBssid:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)lanForSsid:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__WADeviceAnalyticsClient_lanForSsid_withError___block_invoke;
    v16[3] = &unk_1E830F078;
    v16[4] = self;
    v17 = v6;
    v18 = &v20;
    v19 = &v26;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient lanForSsid:withError:]";
      v36 = 1024;
      v37 = 566;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __48__WADeviceAnalyticsClient_lanForSsid_withError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v3 lansForSsid:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  if ([v6 count] >= 2)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = *(a1 + 40);
      *buf = 136446722;
      v21 = "[WADeviceAnalyticsClient lanForSsid:withError:]_block_invoke";
      v22 = 1024;
      v23 = 571;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "%{public}s::%d:LAN for ssid:%@ returned more than one entry", buf, 0x1Cu);
    }

    v13 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A588];
    v19 = @"WAErrorCodeStore_MultiLANInNetwork";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = [v13 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9041 userInfo:v9];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v7 = [v6 firstObject];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (id)lansForSsid:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __49__WADeviceAnalyticsClient_lansForSsid_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient lansForSsid:withError:]";
      v36 = 1024;
      v37 = 586;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __49__WADeviceAnalyticsClient_lansForSsid_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 lansForSsid:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (signed)deploymentCoverageForSSID:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__WADeviceAnalyticsClient_deploymentCoverageForSSID_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[WADeviceAnalyticsClient deploymentCoverageForSSID:withError:]";
      v34 = 1024;
      v35 = 600;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = *(v27 + 12);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __63__WADeviceAnalyticsClient_deploymentCoverageForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 deploymentCoverageForSSID:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;

  objc_autoreleasePoolPop(v2);
}

- (signed)deploymentCongestionForSSID:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__WADeviceAnalyticsClient_deploymentCongestionForSSID_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v33 = "[WADeviceAnalyticsClient deploymentCongestionForSSID:withError:]";
      v34 = 1024;
      v35 = 613;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = *(v27 + 12);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void __65__WADeviceAnalyticsClient_deploymentCongestionForSSID_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 deploymentCongestionForSSID:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)networksAvailableAtLocation:(id)a3 withinDistance:(double)a4 inBand:(unsigned int)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __77__WADeviceAnalyticsClient_networksAvailableAtLocation_withinDistance_inBand___block_invoke;
    v17 = &unk_1E830F0A0;
    v18 = self;
    v19 = v8;
    v20 = a4;
    v21 = a5;
    dispatch_sync(v9, &v14);
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v23 = "[WADeviceAnalyticsClient networksAvailableAtLocation:withinDistance:inBand:]";
      v24 = 1024;
      v25 = 635;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:ssid nil", buf, 0x12u);
    }
  }

  v10 = [(WADeviceAnalyticsClient *)self cachedNetworksAtLocation:v14];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __77__WADeviceAnalyticsClient_networksAvailableAtLocation_withinDistance_inBand___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) locationForCachedNetworksAtLocation];
  [v3 distanceFromLocation:*(a1 + 40)];
  v5 = v4;

  if (v5 == 0.0 || (v6 = *(a1 + 48), [*(a1 + 32) distanceForCachedNetworksAtLocation], v6 == v7) || (v8 = *(a1 + 56), v8 == objc_msgSend(*(a1 + 32), "bandForCachedNetworksAtLocation")))
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v14 = 136446466;
    v15 = "[WADeviceAnalyticsClient networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
    v16 = 1024;
    v17 = 641;
    v12 = "%{public}s::%d:returning cached results";
    goto LABEL_6;
  }

  v9 = [*(a1 + 32) analyticsReader];
  v10 = [v9 networksAvailableAtLocation:*(a1 + 40) withinDistance:*(a1 + 56) inBand:*(a1 + 48)];
  [*(a1 + 32) setCachedNetworksAtLocation:v10];

  [*(a1 + 32) setLocationForCachedNetworksAtLocation:*(a1 + 40)];
  [*(a1 + 32) setDistanceForCachedNetworksAtLocation:*(a1 + 48)];
  [*(a1 + 32) setBandForCachedNetworksAtLocation:*(a1 + 56)];
  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136446466;
    v15 = "[WADeviceAnalyticsClient networksAvailableAtLocation:withinDistance:inBand:]_block_invoke";
    v16 = 1024;
    v17 = 647;
    v12 = "%{public}s::%d:Caching cachedNetworksAtLocation";
LABEL_6:
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, v12, &v14, 0x12u);
  }

LABEL_7:

  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (id)networkSsidsByTraits:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if ([v6 count])
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__WADeviceAnalyticsClient_networkSsidsByTraits_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient networkSsidsByTraits:withError:]";
      v36 = 1024;
      v37 = 659;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:traitsOfInterest empty", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __58__WADeviceAnalyticsClient_networkSsidsByTraits_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 40)];
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkSsidsByTraits:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)copyAllStoredNetworkSsids
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v3 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__WADeviceAnalyticsClient_copyAllStoredNetworkSsids__block_invoke;
  v6[3] = &unk_1E830EE78;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__WADeviceAnalyticsClient_copyAllStoredNetworkSsids__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = [v3 copyAllStoredNetworkSsids];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)networkCountForLAN:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__WADeviceAnalyticsClient_networkCountForLAN_withError___block_invoke;
  v11[3] = &unk_1E830DB20;
  v13 = &v21;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = v22[3];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __56__WADeviceAnalyticsClient_networkCountForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networkCountForLAN:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)networksInLan:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__WADeviceAnalyticsClient_networksInLan_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient networksInLan:withError:]";
      v36 = 1024;
      v37 = 700;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __51__WADeviceAnalyticsClient_networksInLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 networksInLan:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)bssidCountByBandInLAN:(id)a3 withError:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__WADeviceAnalyticsClient_bssidCountByBandInLAN_withError___block_invoke;
    v16[3] = &unk_1E830DB20;
    v18 = &v26;
    v16[4] = self;
    v17 = v6;
    v19 = &v20;
    dispatch_sync(v7, v16);
  }

  else
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v35 = "[WADeviceAnalyticsClient bssidCountByBandInLAN:withError:]";
      v36 = 1024;
      v37 = 713;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    v12 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];
    v15 = v21[5];
    v21[5] = v14;
  }

  if (a4)
  {
    *a4 = v21[5];
  }

  v8 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __59__WADeviceAnalyticsClient_bssidCountByBandInLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 bssidCountByBandInLAN:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (unint64_t)countNetworksHavingBand:(signed __int16)a3 inLan:(id)a4 withError:(id *)a5
{
  v6 = a3;
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__7;
  v32 = __Block_byref_object_dispose__7;
  v33 = 0;
  if (v8)
  {
    if (v6 >= 3)
    {
      v18 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v41 = "[WADeviceAnalyticsClient countNetworksHavingBand:inLan:withError:]";
        v42 = 1024;
        v43 = 728;
        v44 = 1024;
        v45 = v6;
        _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:invalid band (%d)", buf, 0x18u);
      }

      v19 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39 = @"WAErrorCodeInvalidInput";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v21 = [v19 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v20];
      v22 = v29[5];
      v29[5] = v21;
    }

    else
    {
      v9 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__WADeviceAnalyticsClient_countNetworksHavingBand_inLan_withError___block_invoke;
      block[3] = &unk_1E830F0C8;
      v25 = &v34;
      block[4] = self;
      v27 = v6;
      v24 = v8;
      v26 = &v28;
      dispatch_sync(v9, block);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "[WADeviceAnalyticsClient countNetworksHavingBand:inLan:withError:]";
      v42 = 1024;
      v43 = 727;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
    }

    v14 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A588];
    v47[0] = @"WAErrorCodeInvalidInput";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v15];
    v17 = v29[5];
    v29[5] = v16;
  }

  if (a5)
  {
    *a5 = v29[5];
  }

  v10 = v35[3];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void __67__WADeviceAnalyticsClient_countNetworksHavingBand_inLan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v3 countNetworksHavingBand:v4 inLan:v5 withError:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7;

  objc_autoreleasePoolPop(v2);
}

- (id)usageForLAN:(id)a3 withError:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  if (v6)
  {
    v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__WADeviceAnalyticsClient_usageForLAN_withError___block_invoke;
    v14[3] = &unk_1E830DB20;
    v16 = &v24;
    v14[4] = self;
    v15 = v6;
    v17 = &v18;
    dispatch_sync(v7, v14);

    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v33 = "[WADeviceAnalyticsClient usageForLAN:withError:]";
    v34 = 1024;
    v35 = 740;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:dhcpServerInfo nil", buf, 0x12u);
  }

  if (a4)
  {
    v12 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"WAErrorCodeInvalidInput";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a4 = [v12 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v13];

LABEL_3:
    *a4 = v19[5];
  }

LABEL_4:
  v8 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __49__WADeviceAnalyticsClient_usageForLAN_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  v6 = [v3 usageForLAN:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  objc_autoreleasePoolPop(v2);
}

- (id)usageOf:(id)a3 during:(unint64_t)a4 timeSpan:(unint64_t)a5 withError:(id *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__7;
  v36 = __Block_byref_object_dispose__7;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  if (v10)
  {
    v11 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__WADeviceAnalyticsClient_usageOf_during_timeSpan_withError___block_invoke;
    v20[3] = &unk_1E830F0F0;
    v22 = &v32;
    v20[4] = self;
    v24 = a4;
    v25 = a5;
    v21 = v10;
    v23 = &v26;
    dispatch_sync(v11, v20);
  }

  else
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v41 = "[WADeviceAnalyticsClient usageOf:during:timeSpan:withError:]";
      v42 = 1024;
      v43 = 764;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:dimensions nil", buf, 0x12u);
    }

    v16 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A588];
    v39 = @"WAErrorCodeInvalidInput";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v17];
    v19 = v27[5];
    v27[5] = v18;
  }

  if (a6)
  {
    *a6 = v27[5];
  }

  v12 = v33[5];
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __61__WADeviceAnalyticsClient_usageOf_during_timeSpan_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v3 usageOf:v4 during:v5 timeSpan:v6 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_autoreleasePoolPop(v2);
}

- (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 withError:(id *)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  if (v10)
  {
    v12 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __61__WADeviceAnalyticsClient_usageOf_timeSpan_around_withError___block_invoke;
    v21[3] = &unk_1E830F118;
    v24 = &v33;
    v21[4] = self;
    v22 = v10;
    v26 = a4;
    v23 = v11;
    v25 = &v27;
    dispatch_sync(v12, v21);
  }

  else
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v42 = "[WADeviceAnalyticsClient usageOf:timeSpan:around:withError:]";
      v43 = 1024;
      v44 = 777;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_ERROR, "%{public}s::%d:dimensions nil", buf, 0x12u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v40 = @"WAErrorCodeInvalidInput";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v18];
    v20 = v28[5];
    v28[5] = v19;
  }

  if (a6)
  {
    *a6 = v28[5];
  }

  v13 = v34[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void __61__WADeviceAnalyticsClient_usageOf_timeSpan_around_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsReader];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v3 usageOf:v4 timeSpan:v6 around:v5 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)joinEventOnBssid:(id)a3 ssid:(id)a4 at:(id)a5 with:(id)a6 andDeferReclaimMem:(BOOL)a7 andRunPostProcessing:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v18 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__WADeviceAnalyticsClient_joinEventOnBssid_ssid_at_with_andDeferReclaimMem_andRunPostProcessing___block_invoke;
  block[3] = &unk_1E830F140;
  block[4] = self;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = &v32;
  v30 = a7;
  v31 = a8;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  dispatch_sync(v18, block);

  LOBYTE(self) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);
  return self;
}

void __97__WADeviceAnalyticsClient_joinEventOnBssid_ssid_at_with_andDeferReclaimMem_andRunPostProcessing___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 72) + 8) + 24) = [v3 joinEventOnBssid:*(a1 + 40) ssid:*(a1 + 48) at:*(a1 + 56) with:*(a1 + 64) andResetMoc:(*(a1 + 80) & 1) == 0 andRunPostProcessing:*(a1 + 81)];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v14 = 136446722;
    v15 = "[WADeviceAnalyticsClient joinEventOnBssid:ssid:at:with:andDeferReclaimMem:andRunPostProcessing:]_block_invoke";
    v16 = 1024;
    v17 = 799;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedEdgeParams. Current bssid: %@", &v14, 0x1Cu);
  }

  [*(a1 + 32) setCachedEdgeParams:0];
  v6 = [*(a1 + 32) latestNetwork];
  v7 = [v6 isEqualToString:*(a1 + 48)];

  if ((v7 & 1) == 0)
  {
    v8 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      v14 = 136446722;
      v15 = "[WADeviceAnalyticsClient joinEventOnBssid:ssid:at:with:andDeferReclaimMem:andRunPostProcessing:]_block_invoke";
      v16 = 1024;
      v17 = 803;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedGeoTags. Current network: %@", &v14, 0x1Cu);
    }

    [*(a1 + 32) setCachedGeoTagsForNetwork:0];
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v14 = 136446722;
      v15 = "[WADeviceAnalyticsClient joinEventOnBssid:ssid:at:with:andDeferReclaimMem:andRunPostProcessing:]_block_invoke";
      v16 = 1024;
      v17 = 806;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedNetworksInSameLanAsLatestSsid and related Error. Current network: %@", &v14, 0x1Cu);
    }

    [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsid:0];
    [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsidError:0];
  }

  v12 = [BSSMO formattedMACAddressNotation:*(a1 + 40) as:6];
  [*(a1 + 32) setLatestBssid:v12];

  [*(a1 + 32) setLatestNetwork:*(a1 + 48)];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)leaveEventOnBssid:(id)a3 ssid:(id)a4 at:(id)a5 with:(id)a6 andDeferReclaimMem:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v16 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WADeviceAnalyticsClient_leaveEventOnBssid_ssid_at_with_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F168;
  block[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = &v29;
  v28 = a7;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_sync(v16, block);

  LOBYTE(v14) = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return v14;
}

void __77__WADeviceAnalyticsClient_leaveEventOnBssid_ssid_at_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 72) + 8) + 24) = [v3 leaveEventOnBssid:*(a1 + 40) ssid:*(a1 + 48) at:*(a1 + 56) with:*(a1 + 64) andResetMoc:(*(a1 + 80) & 1) == 0 andRunPostProcessing:0];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[WADeviceAnalyticsClient leaveEventOnBssid:ssid:at:with:andDeferReclaimMem:]_block_invoke";
    v8 = 1024;
    v9 = 824;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedEdgeParams and current bssid", &v6, 0x12u);
  }

  [*(a1 + 32) setLatestBssid:0];
  [*(a1 + 32) setCachedEdgeParams:0];
  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)dhcpEventOnBssid:(id)a3 ssid:(id)a4 serverInfo:(id)a5 at:(id)a6 with:(id)a7 andDeferReclaimMem:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v19 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__WADeviceAnalyticsClient_dhcpEventOnBssid_ssid_serverInfo_at_with_andDeferReclaimMem___block_invoke;
  v26[3] = &unk_1E830F190;
  v31 = v18;
  v32 = &v34;
  v26[4] = self;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v33 = a8;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_sync(v19, v26);

  LOBYTE(v19) = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v19;
}

void __87__WADeviceAnalyticsClient_dhcpEventOnBssid_ssid_serverInfo_at_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 80) + 8) + 24) = [v3 dhcpEventOnBssid:*(a1 + 40) ssid:*(a1 + 48) serverInfo:*(a1 + 56) at:*(a1 + 64) with:*(a1 + 72) andResetMoc:(*(a1 + 88) & 1) == 0];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 136446722;
    v8 = "[WADeviceAnalyticsClient dhcpEventOnBssid:ssid:serverInfo:at:with:andDeferReclaimMem:]_block_invoke";
    v9 = 1024;
    v10 = 837;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedNetworksInSameLanAsLatestSsid and related Error. Current network: %@", &v7, 0x1Cu);
  }

  [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsid:0];
  [*(a1 + 32) setCachedNetworksInSameLanAsLatestSsidError:0];
  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)recoveryEventOnBssid:(id)a3 at:(id)a4 with:(id)a5 andDeferReclaimMem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__WADeviceAnalyticsClient_recoveryEventOnBssid_at_with_andDeferReclaimMem___block_invoke;
  v18[3] = &unk_1E830F1B8;
  v21 = v12;
  v22 = &v24;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

void __75__WADeviceAnalyticsClient_recoveryEventOnBssid_at_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 64) + 8) + 24) = [v3 recoveryEventOnBssid:*(a1 + 40) at:*(a1 + 48) with:*(a1 + 56) andResetMoc:(*(a1 + 72) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)removeKnownNetworkEvent:(id)a3 at:(id)a4 andDeferReclaimMem:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WADeviceAnalyticsClient_removeKnownNetworkEvent_at_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F1E0;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  LOBYTE(self) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return self;
}

void __73__WADeviceAnalyticsClient_removeKnownNetworkEvent_at_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 56) + 8) + 24) = [v3 removeKnownNetworkEvent:*(a1 + 40) at:*(a1 + 48) andResetMoc:(*(a1 + 64) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)updateNetwork:(id)a3 switchedFrom:(id)a4 at:(id)a5 andDeferReclaimMem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__WADeviceAnalyticsClient_updateNetwork_switchedFrom_at_andDeferReclaimMem___block_invoke;
  v18[3] = &unk_1E830DA38;
  v21 = v12;
  v22 = &v24;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

void __76__WADeviceAnalyticsClient_updateNetwork_switchedFrom_at_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 64) + 8) + 24) = [v3 updateNetwork:*(a1 + 40) switchedFrom:*(a1 + 48) at:*(a1 + 56) andResetMoc:(*(a1 + 72) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)roamEvent:(id)a3 at:(id)a4 andDeferReclaimMem:(BOOL)a5 andRunPostProcessing:(BOOL)a6 withError:(id *)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  if (v12)
  {
    v14 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __90__WADeviceAnalyticsClient_roamEvent_at_andDeferReclaimMem_andRunPostProcessing_withError___block_invoke;
    v19[3] = &unk_1E830F208;
    v22 = &v32;
    v19[4] = self;
    v20 = v12;
    v24 = a5;
    v25 = a6;
    v21 = v13;
    v23 = &v26;
    dispatch_sync(v14, v19);
  }

  else
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "[WADeviceAnalyticsClient roamEvent:at:andDeferReclaimMem:andRunPostProcessing:withError:]";
      v38 = 1024;
      v39 = 876;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil RoamEvent, bailing", buf, 0x12u);
    }
  }

  if (a7)
  {
    *a7 = v27[5];
  }

  v15 = *(v33 + 24);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void __90__WADeviceAnalyticsClient_roamEvent_at_andDeferReclaimMem_andRunPostProcessing_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v3 roamEvent:v4 at:v5 andResetMoc:(v6 & 1) == 0 andRunPostProcessing:v7 withError:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v9;

  v10 = [*(a1 + 40) targetBssid];
  v11 = [BSSMO formattedMACAddressNotation:v10 as:6];
  [*(a1 + 32) setLatestBssid:v11];

  [*(a1 + 32) setCachedEdgeParams:0];
  objc_autoreleasePoolPop(v2);
}

- (BOOL)geoTagEventOnBssid:(id)a3 ssid:(id)a4 lat:(double)a5 lon:(double)a6 at:(id)a7 andDeferReclaimMem:(BOOL)a8 andRunPostProcessing:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v19 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __102__WADeviceAnalyticsClient_geoTagEventOnBssid_ssid_lat_lon_at_andDeferReclaimMem_andRunPostProcessing___block_invoke;
  v24[3] = &unk_1E830F230;
  v27 = v18;
  v28 = &v33;
  v24[4] = self;
  v25 = v16;
  v29 = a5;
  v30 = a6;
  v26 = v17;
  v31 = a8;
  v32 = a9;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  dispatch_sync(v19, v24);

  LOBYTE(v17) = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v17;
}

void __102__WADeviceAnalyticsClient_geoTagEventOnBssid_ssid_lat_lon_at_andDeferReclaimMem_andRunPostProcessing___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 64) + 8) + 24) = [v3 geoTagEventOnBssid:*(a1 + 40) ssid:*(a1 + 48) lat:*(a1 + 56) lon:(*(a1 + 88) & 1) == 0 at:*(a1 + 89) andResetMoc:*(a1 + 72) andRunPostProcessing:*(a1 + 80)];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WADeviceAnalyticsClient geoTagEventOnBssid:ssid:lat:lon:at:andDeferReclaimMem:andRunPostProcessing:]_block_invoke";
    v9 = 1024;
    v10 = 901;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedGeoTags", &v7, 0x12u);
  }

  [*(a1 + 32) setCachedGeoTagsForNetwork:0];
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[WADeviceAnalyticsClient geoTagEventOnBssid:ssid:lat:lon:at:andDeferReclaimMem:andRunPostProcessing:]_block_invoke";
    v9 = 1024;
    v10 = 904;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Resetting cachedNetworksAtLocation", &v7, 0x12u);
  }

  [*(a1 + 32) setCachedNetworksAtLocation:0];
  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateBSS:(id)a3 withParsedBeacon:(id)a4 andDeferReclaimMem:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WADeviceAnalyticsClient_updateBSS_withParsedBeacon_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F1E0;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  LOBYTE(self) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return self;
}

void __73__WADeviceAnalyticsClient_updateBSS_withParsedBeacon_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 56) + 8) + 24) = [v3 updateBSS:*(a1 + 40) withParsedBeacon:*(a1 + 48) andResetMoc:(*(a1 + 64) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)scanResultEventWith:(id)a3 ssid:(id)a4 whileOn:(id)a5 at:(id)a6 with:(id)a7 andDeferReclaimMem:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v19 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WADeviceAnalyticsClient_scanResultEventWith_ssid_whileOn_at_with_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F168;
  block[4] = self;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = &v32;
  v31 = a8;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  dispatch_sync(v19, block);

  LOBYTE(v17) = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v17;
}

void __87__WADeviceAnalyticsClient_scanResultEventWith_ssid_whileOn_at_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 72) + 8) + 24) = [v3 scanResultEventWith:*(a1 + 40) ssid:*(a1 + 40) whileOn:*(a1 + 48) at:*(a1 + 56) with:*(a1 + 64) andResetMoc:(*(a1 + 80) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)faultEventOn:(id)a3 at:(id)a4 type:(id)a5 interface:(id)a6 andDeferReclaimMem:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v16 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WADeviceAnalyticsClient_faultEventOn_at_type_interface_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F258;
  block[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = &v29;
  v28 = a7;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_sync(v16, block);

  LOBYTE(v14) = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return v14;
}

void __77__WADeviceAnalyticsClient_faultEventOn_at_type_interface_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 72) + 8) + 24) = [v3 faultEventOn:*(a1 + 40) at:*(a1 + 48) type:*(a1 + 56) interface:*(a1 + 64) andResetMoc:(*(a1 + 80) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)immediateProcessCachedFaultsAndDeferReclaimMem:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WADeviceAnalyticsClient_immediateProcessCachedFaultsAndDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F280;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __74__WADeviceAnalyticsClient_immediateProcessCachedFaultsAndDeferReclaimMem___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 40) + 8) + 24) = [v3 processCachedFaultsAndResetCache:0 andResetMoc:(*(a1 + 48) & 1) == 0];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v7 = 136446722;
    v8 = "[WADeviceAnalyticsClient immediateProcessCachedFaultsAndDeferReclaimMem:]_block_invoke";
    v9 = 1024;
    v10 = 940;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning:%@", &v7, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)linkTestEventOn:(id)a3 at:(id)a4 with:(id)a5 andDeferReclaimMem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__WADeviceAnalyticsClient_linkTestEventOn_at_with_andDeferReclaimMem___block_invoke;
  v18[3] = &unk_1E830F1B8;
  v21 = v12;
  v22 = &v24;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

void __70__WADeviceAnalyticsClient_linkTestEventOn_at_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 64) + 8) + 24) = [v3 linkTestEventOn:*(a1 + 40) at:*(a1 + 48) with:*(a1 + 56) andResetMoc:(*(a1 + 72) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)diagnosticEventAt:(id)a3 with:(id)a4 andDeferReclaimMem:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WADeviceAnalyticsClient_diagnosticEventAt_with_andDeferReclaimMem___block_invoke;
  block[3] = &unk_1E830F2A8;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, block);

  LOBYTE(self) = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return self;
}

void __69__WADeviceAnalyticsClient_diagnosticEventAt_with_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 56) + 8) + 24) = [v3 diagnosticEventAt:*(a1 + 40) with:*(a1 + 48) andResetMoc:(*(a1 + 64) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)lqmEvent:(id)a3 on:(id)a4 at:(id)a5 andDeferReclaimMem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__WADeviceAnalyticsClient_lqmEvent_on_at_andDeferReclaimMem___block_invoke;
  v18[3] = &unk_1E830DA38;
  v21 = v12;
  v22 = &v24;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

void __61__WADeviceAnalyticsClient_lqmEvent_on_at_andDeferReclaimMem___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 64) + 8) + 24) = [v3 lqmEvent:*(a1 + 40) on:*(a1 + 48) at:*(a1 + 56) andReset:(*(a1 + 72) & 1) == 0];

  objc_autoreleasePoolPop(v2);
}

- (void)processWiFiStats:(id)a3
{
  v4 = a3;
  v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__WADeviceAnalyticsClient_processWiFiStats___block_invoke;
  v7[3] = &unk_1E830DB70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __44__WADeviceAnalyticsClient_processWiFiStats___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  [v3 processMetricWiFiStats:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)processDatapathMetricStream:(id)a3 withDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WADeviceAnalyticsClient_processDatapathMetricStream_withDate___block_invoke;
  block[3] = &unk_1E830EC20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __64__WADeviceAnalyticsClient_processDatapathMetricStream_withDate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  [v3 processDatapathMetricStream:*(a1 + 40) withDate:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (id)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)a3 maxAgeInDays:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__WADeviceAnalyticsClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays___block_invoke;
  v11[3] = &unk_1E830F2D0;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __90__WADeviceAnalyticsClient_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  v4 = [v3 updateRoamPoliciesAndSummarizeAnalyticsForNetwork:*(a1 + 40) maxAgeInDays:*(a1 + 56)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  objc_autoreleasePoolPop(v2);
}

- (void)setPolicyHandlersConfig:(id *)a3
{
  v4 = [(WADeviceAnalyticsClient *)self analyticsProcessor];
  v5 = *a3;
  [v4 setPolicyHandlersConfig:&v5];
}

- (void)resetPolicyHandlersConfig
{
  v2 = [(WADeviceAnalyticsClient *)self analyticsProcessor];
  [v2 resetPolicyHandlersConfig];
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getPolicyHandlersConfig
{
  v4 = [(WADeviceAnalyticsClient *)self analyticsProcessor];
  if (v4)
  {
    v6 = v4;
    [v4 getPolicyHandlersConfig];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (BOOL)updateRoamPoliciesForSourceBssid:(id)a3 andUpdateRoamCache:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__WADeviceAnalyticsClient_updateRoamPoliciesForSourceBssid_andUpdateRoamCache___block_invoke;
  v10[3] = &unk_1E830F2F8;
  v14 = a4;
  v12 = self;
  v13 = &v15;
  v11 = v6;
  v8 = v6;
  dispatch_sync(dispatchQueue, v10);

  LOBYTE(self) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return self;
}

void __79__WADeviceAnalyticsClient_updateRoamPoliciesForSourceBssid_andUpdateRoamCache___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v8 = 136446978;
    v9 = "[WADeviceAnalyticsClient updateRoamPoliciesForSourceBssid:andUpdateRoamCache:]_block_invoke";
    v10 = 1024;
    v11 = 1083;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling AnalyticsProcessor updateRoamPoliciesForSourceBssid:%@ andUpdateRoamCache:%@", &v8, 0x26u);
  }

  v6 = [*(a1 + 40) analyticsProcessor];
  *(*(*(a1 + 48) + 8) + 24) = [v6 updateRoamPoliciesForSourceBssid:*(a1 + 32) andUpdateRoamCache:*(a1 + 56)];

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)processDeferredPriorityPoliciesWithReason:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__WADeviceAnalyticsClient_processDeferredPriorityPoliciesWithReason___block_invoke;
  v15[3] = &unk_1E830F320;
  v15[4] = self;
  v17 = &v18;
  v5 = v4;
  v16 = v5;
  v6 = MEMORY[0x1CCA780B0](v15);
  label = dispatch_queue_get_label(0);
  v8 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v9 = dispatch_queue_get_label(v8);

  if (label && v9 && !strcmp(label, v9))
  {
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__WADeviceAnalyticsClient_processDeferredPriorityPoliciesWithReason___block_invoke_110;
    v13[3] = &unk_1E830F000;
    v14 = v6;
    dispatch_sync(v10, v13);
  }

  v11 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __69__WADeviceAnalyticsClient_processDeferredPriorityPoliciesWithReason___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) analyticsProcessor];

  if (v2)
  {
    v3 = [*(a1 + 32) analyticsProcessor];
    *(*(*(a1 + 48) + 8) + 24) = [v3 processDeferredPriorityPoliciesWithReason:*(a1 + 40)];

    [*(a1 + 32) setPendingPriorityBGTask:0];
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[WADeviceAnalyticsClient processDeferredPriorityPoliciesWithReason:]_block_invoke";
      v9 = 1024;
      v10 = 1100;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Processed deferred priority policies, pendingPriorityTask = FALSE", &v7, 0x12u);
    }
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136446466;
      v8 = "[WADeviceAnalyticsClient processDeferredPriorityPoliciesWithReason:]_block_invoke";
      v9 = 1024;
      v10 = 1095;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Unable to access the store, pendingPriorityTask = TRUE", &v7, 0x12u);
    }

    [*(a1 + 32) setPendingPriorityBGTask:1];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __69__WADeviceAnalyticsClient_processDeferredPriorityPoliciesWithReason___block_invoke_110(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)processDeferredPoliciesWithReason:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__WADeviceAnalyticsClient_processDeferredPoliciesWithReason___block_invoke;
  block[3] = &unk_1E830E5F0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);

  LOBYTE(dispatchQueue) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dispatchQueue;
}

void __61__WADeviceAnalyticsClient_processDeferredPoliciesWithReason___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  *(*(*(a1 + 48) + 8) + 24) = [v3 processDeferredPoliciesWithReason:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (void)performPruneBasedOnStoreSizeAndSaveWithReason:(id)a3
{
  v4 = a3;
  v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__WADeviceAnalyticsClient_performPruneBasedOnStoreSizeAndSaveWithReason___block_invoke;
  v7[3] = &unk_1E830DB70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __73__WADeviceAnalyticsClient_performPruneBasedOnStoreSizeAndSaveWithReason___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  [v3 performPruneBasedOnStoreSizeAndSaveWithReason:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

- (BOOL)performPruneTestBSSes:(id)a3 networks:(id)a4 lans:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__7;
  v30 = __Block_byref_object_dispose__7;
  v31 = 0;
  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__WADeviceAnalyticsClient_performPruneTestBSSes_networks_lans_withError___block_invoke;
  v19[3] = &unk_1E830F348;
  v14 = v10;
  v20 = v14;
  v15 = v11;
  v21 = v15;
  v22 = self;
  v24 = &v26;
  v16 = v12;
  v23 = v16;
  v25 = &v32;
  dispatch_sync(v13, v19);

  if (a6)
  {
    *a6 = v27[5];
  }

  v17 = *(v33 + 24);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  return v17;
}

void __73__WADeviceAnalyticsClient_performPruneTestBSSes_networks_lans_withError___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 32)];
  if (!*(a1 + 40))
  {
    goto LABEL_3;
  }

  v4 = [*(a1 + 48) persistentContainer];
  v5 = +[BSSMO entity];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"network.ssid IN %@", *(a1 + 40)];
  v7 = v2;
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v4 fetchDistinctPropertiesIn:v5 withPredicate:v6 withSorting:0 withPrefetchedProperties:&unk_1F483E608 withLimit:0 withError:&obj];
  objc_storeStrong((v8 + 40), obj);
  v10 = [v9 valueForKey:@"bssid"];
  [v3 addObjectsFromArray:v10];

  v2 = v7;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 40);
      v33 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 136446978;
      v44 = "[WADeviceAnalyticsClient performPruneTestBSSes:networks:lans:withError:]_block_invoke";
      v45 = 1024;
      v46 = 1145;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v33;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch all BSSes in Networks %@: %@", buf, 0x26u);
    }
  }

  else
  {
LABEL_3:
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = v3;
      v34 = v2;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v37 + 1) + 8 * i);
            v19 = [*(a1 + 48) persistentContainer];
            v20 = *(*(a1 + 64) + 8);
            v36 = *(v20 + 40);
            v21 = [v19 lanFor:v18 prefetchProperties:0 withError:&v36];
            objc_storeStrong((v20 + 40), v36);

            v22 = *(*(*(a1 + 64) + 8) + 40);
            if (v22 && [v22 code] != 9040)
            {
              v29 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = *(a1 + 40);
                v31 = *(*(*(a1 + 64) + 8) + 40);
                *buf = 136446978;
                v44 = "[WADeviceAnalyticsClient performPruneTestBSSes:networks:lans:withError:]_block_invoke";
                v45 = 1024;
                v46 = 1150;
                v47 = 2112;
                v48 = v30;
                v49 = 2112;
                v50 = v31;
                _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:unable to fetch all BSSes in Networks %@: %@", buf, 0x26u);
              }

              v2 = v34;
              v3 = v12;
              goto LABEL_17;
            }

            v23 = [v21 bsses];
            v24 = [v23 valueForKey:@"bssid"];
            [v12 unionSet:v24];
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v2 = v34;
      v3 = v12;
    }

    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v44 = "[WADeviceAnalyticsClient performPruneTestBSSes:networks:lans:withError:]_block_invoke";
      v45 = 1024;
      v46 = 1156;
      v47 = 2080;
      v48 = "[WADeviceAnalyticsClient performPruneTestBSSes:networks:lans:withError:]_block_invoke";
      v49 = 2112;
      v50 = v3;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s - Pruning %@", buf, 0x26u);
    }

    v13 = [*(a1 + 48) analyticsProcessor];
    v26 = [v3 allObjects];
    v27 = *(*(a1 + 64) + 8);
    v35 = *(v27 + 40);
    [v13 performPruneTestBSSes:v26 withError:&v35];
    objc_storeStrong((v27 + 40), v35);
  }

LABEL_17:

  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 64) + 8) + 40) == 0;
  objc_autoreleasePoolPop(v2);
  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)performPrunePoliciesWithReasons:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__WADeviceAnalyticsClient_performPrunePoliciesWithReasons_withError___block_invoke;
  v11[3] = &unk_1E830F078;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __69__WADeviceAnalyticsClient_performPrunePoliciesWithReasons_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  [v3 performPrunePoliciesWithReasons:v4 withError:&obj];
  objc_storeStrong((v5 + 40), obj);

  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 40) == 0;
  objc_autoreleasePoolPop(v2);
}

- (unint64_t)performPruneTestEntity:(id)a3 since:(id)a4 withPredicate:(id)a5 withError:(id *)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__7;
  v33 = __Block_byref_object_dispose__7;
  v34 = 0;
  if (!v10)
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "[WADeviceAnalyticsClient performPruneTestEntity:since:withPredicate:withError:]";
      v45 = 1024;
      v46 = 1184;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:entity nil", buf, 0x12u);
    }

    if (!a6)
    {
      goto LABEL_5;
    }

    v18 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A588];
    v42 = @"WAErrorCodeInvalidInput";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
LABEL_14:
    *a6 = v20;

    goto LABEL_4;
  }

  if (!v11)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v44 = "[WADeviceAnalyticsClient performPruneTestEntity:since:withPredicate:withError:]";
      v45 = 1024;
      v46 = 1185;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:startDate nil", buf, 0x12u);
    }

    if (!a6)
    {
      goto LABEL_5;
    }

    v22 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A588];
    v40 = @"WAErrorCodeInvalidInput";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v20 = [v22 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v19];
    goto LABEL_14;
  }

  v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__WADeviceAnalyticsClient_performPruneTestEntity_since_withPredicate_withError___block_invoke;
  v23[3] = &unk_1E830F348;
  v27 = &v35;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v28 = &v29;
  dispatch_sync(v13, v23);

  if (a6)
  {
LABEL_4:
    *a6 = v30[5];
  }

LABEL_5:
  v14 = v36[3];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __80__WADeviceAnalyticsClient_performPruneTestEntity_since_withPredicate_withError___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsProcessor];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 72) + 8);
  obj = *(v7 + 40);
  v8 = [v3 performPruneTestEntity:v4 since:v5 withPredicate:v6 withError:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v8;

  objc_autoreleasePoolPop(v2);
}

- (BOOL)dumpDeviceAnalyticsToFileWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v5)
  {
    v6 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithCompletion___block_invoke;
    v10[3] = &unk_1E830F370;
    v10[4] = self;
    v11 = v4;
    dispatch_async(v6, v10);
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsToFileWithCompletion:]";
      v14 = 1024;
      v15 = 1202;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to instantiate AnalyticsStoreFileWriter", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

void __67__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsFileWriter];
  v4 = [v3 writeAnalyticsStoreToFile];

  v5 = *(a1 + 40);
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithString:v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] string];
  }
  v6 = ;
  (*(v5 + 16))(v5, v6);

  objc_autoreleasePoolPop(v2);
}

- (BOOL)dumpDeviceAnalyticsToFileWithCompletion:(id)a3 fetchLimit:(unint64_t)a4 maxAge:(unint64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsToFileWithCompletion:fetchLimit:maxAge:]";
      v21 = 1024;
      v22 = 1220;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is 0", buf, 0x12u);
    }

    goto LABEL_8;
  }

  v9 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (!v9)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_4;
  }

  v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithCompletion_fetchLimit_maxAge___block_invoke;
  v15[3] = &unk_1E830F398;
  v17 = a5;
  v18 = a4;
  v15[4] = self;
  v16 = v8;
  dispatch_async(v10, v15);

  v11 = 1;
LABEL_4:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void __85__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithCompletion_fetchLimit_maxAge___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v11 = 136446978;
    v12 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsToFileWithCompletion:fetchLimit:maxAge:]_block_invoke";
    v13 = 1024;
    v14 = 1224;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu fetchLimit:%lu", &v11, 0x26u);
  }

  v6 = [*(a1 + 32) analyticsFileWriter];
  v7 = [v6 batchedWriteAnalyticsStoreToFile:*(a1 + 56) maxAge:*(a1 + 48)];

  v8 = *(a1 + 40);
  if (v7)
  {
    [MEMORY[0x1E696AEC0] stringWithString:v7];
  }

  else
  {
    [MEMORY[0x1E696AEC0] string];
  }
  v9 = ;
  (*(v8 + 16))(v8, v9);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion:(id)a3 batchSize:(unint64_t)a4 maxAge:(unint64_t)a5
{
  v8 = a3;
  v9 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v9)
  {
    v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion_batchSize_maxAge___block_invoke;
    v12[3] = &unk_1E830F398;
    v14 = a5;
    v15 = a4;
    v12[4] = self;
    v13 = v8;
    dispatch_async(v10, v12);
  }

  return v9 != 0;
}

void __98__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion_batchSize_maxAge___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v11 = 136446978;
    v12 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsUsingBatchSizeToFileWithCompletion:batchSize:maxAge:]_block_invoke";
    v13 = 1024;
    v14 = 1243;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu batchSize:%lu", &v11, 0x26u);
  }

  v6 = [*(a1 + 32) analyticsFileWriter];
  v7 = [v6 batchedWriteAnalyticsStoreToFileWithBatchSize:*(a1 + 56) maxAge:*(a1 + 48)];

  v8 = *(a1 + 40);
  if (v7)
  {
    [MEMORY[0x1E696AEC0] stringWithString:v7];
  }

  else
  {
    [MEMORY[0x1E696AEC0] string];
  }
  v9 = ;
  (*(v8 + 16))(v8, v9);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion:(id)a3 batchSize:(unint64_t)a4 maxAge:(unint64_t)a5
{
  v8 = a3;
  v9 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v9)
  {
    v10 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __102__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion_batchSize_maxAge___block_invoke;
    v12[3] = &unk_1E830F398;
    v14 = a5;
    v15 = a4;
    v12[4] = self;
    v13 = v8;
    dispatch_async(v10, v12);
  }

  return v9 != 0;
}

void __102__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion_batchSize_maxAge___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v11 = 136446978;
    v12 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsCSVsUsingBatchSizeToFileWithCompletion:batchSize:maxAge:]_block_invoke";
    v13 = 1024;
    v14 = 1262;
    v15 = 2048;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu batchSize:%lu", &v11, 0x26u);
  }

  v6 = [*(a1 + 32) analyticsFileWriter];
  v7 = [v6 batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:*(a1 + 56) maxAge:*(a1 + 48)];

  v8 = *(a1 + 40);
  if (v7)
  {
    [MEMORY[0x1E695DEC8] arrayWithArray:v7];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v9 = ;
  (*(v8 + 16))(v8, v9);

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)dumpDeploymentGraphJSONFileWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v5)
  {
    v6 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFileWithCompletion___block_invoke;
    v8[3] = &unk_1E830F370;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v6, v8);
  }

  return v5 != 0;
}

void __69__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFileWithCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) analyticsFileWriter];
  v4 = [v3 writeDeploymentGraphToFile];

  v5 = *(a1 + 40);
  if (v4)
  {
    [MEMORY[0x1E696AEC0] stringWithString:v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] string];
  }
  v6 = ;
  (*(v5 + 16))(v5, v6);

  objc_autoreleasePoolPop(v2);
}

- (id)dumpDeviceAnalyticsToFile
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v3 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v3)
  {
    label = dispatch_queue_get_label(0);
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v6 = dispatch_queue_get_label(v5);

    if (label && v6 && !strcmp(label, v6))
    {
      v11[6] = MEMORY[0x1E69E9820];
      v11[7] = 3221225472;
      v11[8] = __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke;
      v11[9] = &unk_1E830EE78;
      v11[10] = self;
      v11[11] = &v12;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_2;
      v11[3] = &unk_1E830EE78;
      v11[4] = self;
      v11[5] = &v12;
      __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_2(v11);
    }

    else
    {
      v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_3;
      v10[3] = &unk_1E830EE78;
      v10[4] = self;
      v10[5] = &v12;
      dispatch_sync(v7, v10);
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeAnalyticsStoreToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeAnalyticsStoreToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4[6] = MEMORY[0x1E69E9820];
  v4[7] = 3221225472;
  v4[8] = __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_4;
  v4[9] = &unk_1E830EE78;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_5;
  v4[3] = &unk_1E830EE78;
  v4[4] = v5;
  v4[5] = v3;
  __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_5(v4);
  objc_autoreleasePoolPop(v2);
}

void __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeAnalyticsStoreToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFile__block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeAnalyticsStoreToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dumpDeviceAnalyticsToFileWithFetchLimit:(unint64_t)a3 maxAge:(unint64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  if (a3)
  {
    v7 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];
    v8 = v7 == 0;

    if (!v8)
    {
      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v27 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsToFileWithFetchLimit:maxAge:]";
        v28 = 1024;
        v29 = 1311;
        v30 = 2048;
        v31 = a4;
        v32 = 2048;
        v33 = a3;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu fetchLimit:%lu", buf, 0x26u);
      }

      label = dispatch_queue_get_label(0);
      v11 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      v12 = dispatch_queue_get_label(v11);

      if (label && v12 && !strcmp(label, v12))
      {
        v19[8] = MEMORY[0x1E69E9820];
        v19[9] = 3221225472;
        v19[10] = __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke;
        v19[11] = &unk_1E830F3C0;
        v19[12] = self;
        v19[13] = &v20;
        v19[14] = a3;
        v19[15] = a4;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_2;
        v19[3] = &unk_1E830F3C0;
        v19[4] = self;
        v19[5] = &v20;
        v19[6] = a3;
        v19[7] = a4;
        __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_2(v19);
      }

      else
      {
        v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_3;
        v18[3] = &unk_1E830F3C0;
        v18[4] = self;
        v18[5] = &v20;
        v18[6] = a3;
        v18[7] = a4;
        dispatch_sync(v13, v18);
      }
    }
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsToFileWithFetchLimit:maxAge:]";
      v28 = 1024;
      v29 = 1309;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetchLimit is 0", buf, 0x12u);
    }
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFile:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFile:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_3(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v5[8] = MEMORY[0x1E69E9820];
  v5[9] = 3221225472;
  v5[10] = __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_4;
  v5[11] = &unk_1E830F3C0;
  v3 = a1[5];
  v6 = a1[4];
  v7 = v3;
  v4 = a1[7];
  v8 = a1[6];
  v9 = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_5;
  v5[3] = &unk_1E830F3C0;
  v5[4] = v6;
  v5[5] = v3;
  v5[6] = v8;
  v5[7] = v4;
  __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_5(v5);
  objc_autoreleasePoolPop(v2);
}

void __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFile:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __74__WADeviceAnalyticsClient_dumpDeviceAnalyticsToFileWithFetchLimit_maxAge___block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFile:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize:(unint64_t)a3 maxAge:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v7 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v26 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize:maxAge:]";
      v27 = 1024;
      v28 = 1323;
      v29 = 2048;
      v30 = a4;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu batchSize:%lu", buf, 0x26u);
    }

    label = dispatch_queue_get_label(0);
    v11 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v12 = dispatch_queue_get_label(v11);

    if (label && v12 && !strcmp(label, v12))
    {
      v18[8] = MEMORY[0x1E69E9820];
      v18[9] = 3221225472;
      v18[10] = __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke;
      v18[11] = &unk_1E830F3C0;
      v18[12] = self;
      v18[13] = &v19;
      v18[14] = a3;
      v18[15] = a4;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_2;
      v18[3] = &unk_1E830F3C0;
      v18[4] = self;
      v18[5] = &v19;
      v18[6] = a3;
      v18[7] = a4;
      __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_2(v18);
    }

    else
    {
      v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_3;
      v17[3] = &unk_1E830F3C0;
      v17[4] = self;
      v17[5] = &v19;
      v17[6] = a3;
      v17[7] = a4;
      dispatch_sync(v13, v17);
    }
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFileWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFileWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_3(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v5[8] = MEMORY[0x1E69E9820];
  v5[9] = 3221225472;
  v5[10] = __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_4;
  v5[11] = &unk_1E830F3C0;
  v3 = a1[5];
  v6 = a1[4];
  v7 = v3;
  v4 = a1[7];
  v8 = a1[6];
  v9 = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_5;
  v5[3] = &unk_1E830F3C0;
  v5[4] = v6;
  v5[5] = v3;
  v5[6] = v8;
  v5[7] = v4;
  __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_5(v5);
  objc_autoreleasePoolPop(v2);
}

void __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFileWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __87__WADeviceAnalyticsClient_dumpDeviceAnalyticsUsingBatchSizeToFileWithBatchSize_maxAge___block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToFileWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dumpDeviceAnalyticsCSVsToFileWithBatchSize:(unint64_t)a3 maxAge:(unint64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v7 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];
  v8 = v7 == 0;

  if (!v8)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v26 = "[WADeviceAnalyticsClient dumpDeviceAnalyticsCSVsToFileWithBatchSize:maxAge:]";
      v27 = 1024;
      v28 = 1336;
      v29 = 2048;
      v30 = a4;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:maxAge:%lu batchSize:%lu", buf, 0x26u);
    }

    label = dispatch_queue_get_label(0);
    v11 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v12 = dispatch_queue_get_label(v11);

    if (label && v12 && !strcmp(label, v12))
    {
      v18[8] = MEMORY[0x1E69E9820];
      v18[9] = 3221225472;
      v18[10] = __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke;
      v18[11] = &unk_1E830F3C0;
      v18[12] = self;
      v18[13] = &v19;
      v18[14] = a3;
      v18[15] = a4;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_2;
      v18[3] = &unk_1E830F3C0;
      v18[4] = self;
      v18[5] = &v19;
      v18[6] = a3;
      v18[7] = a4;
      __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_2(v18);
    }

    else
    {
      v13 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_3;
      v17[3] = &unk_1E830F3C0;
      v17[4] = self;
      v17[5] = &v19;
      v17[6] = a3;
      v17[7] = a4;
      dispatch_sync(v13, v17);
    }
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_3(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v5[8] = MEMORY[0x1E69E9820];
  v5[9] = 3221225472;
  v5[10] = __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_4;
  v5[11] = &unk_1E830F3C0;
  v3 = a1[5];
  v6 = a1[4];
  v7 = v3;
  v4 = a1[7];
  v8 = a1[6];
  v9 = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_5;
  v5[3] = &unk_1E830F3C0;
  v5[4] = v6;
  v5[5] = v3;
  v5[6] = v8;
  v5[7] = v4;
  __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_5(v5);
  objc_autoreleasePoolPop(v2);
}

void __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __77__WADeviceAnalyticsClient_dumpDeviceAnalyticsCSVsToFileWithBatchSize_maxAge___block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 batchedWriteAnalyticsStoreToCSVFilesWithBatchSize:*(a1 + 48) maxAge:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dumpDeploymentGraphJSONFile
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v3 = [(WADeviceAnalyticsClient *)self analyticsFileWriter];

  if (v3)
  {
    label = dispatch_queue_get_label(0);
    v5 = [(WADeviceAnalyticsClient *)self dispatchQueue];
    v6 = dispatch_queue_get_label(v5);

    if (label && v6 && !strcmp(label, v6))
    {
      v11[6] = MEMORY[0x1E69E9820];
      v11[7] = 3221225472;
      v11[8] = __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke;
      v11[9] = &unk_1E830EE78;
      v11[10] = self;
      v11[11] = &v12;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_2;
      v11[3] = &unk_1E830EE78;
      v11[4] = self;
      v11[5] = &v12;
      __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_2(v11);
    }

    else
    {
      v7 = [(WADeviceAnalyticsClient *)self dispatchQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_3;
      v10[3] = &unk_1E830EE78;
      v10[4] = self;
      v10[5] = &v12;
      dispatch_sync(v7, v10);
    }
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeDeploymentGraphToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeDeploymentGraphToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4[6] = MEMORY[0x1E69E9820];
  v4[7] = 3221225472;
  v4[8] = __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_4;
  v4[9] = &unk_1E830EE78;
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_5;
  v4[3] = &unk_1E830EE78;
  v4[4] = v5;
  v4[5] = v3;
  __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_5(v4);
  objc_autoreleasePoolPop(v2);
}

void __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_4(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeDeploymentGraphToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__WADeviceAnalyticsClient_dumpDeploymentGraphJSONFile__block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsFileWriter];
  v2 = [v5 writeDeploymentGraphToFile];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)entities
{
  v2 = [(NSPersistentContainer *)self->_persistentContainer managedObjectModel];
  v3 = [v2 entities];

  return v3;
}

- (id)performFetch:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WADeviceAnalyticsClient *)self analyticsRawAccess];
  v8 = [v7 performFetchWithBlockAndWait:v6 error:a4];

  return v8;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WADeviceAnalyticsClient *)self analyticsRawAccess];
  v8 = [v7 countForFetchRequestWithBlockAndWait:v6 error:a4];

  return v8;
}

- (BOOL)rawAccessCanWrite
{
  v2 = [(WADeviceAnalyticsClient *)self analyticsRawAccess];
  v3 = [v2 canWrite];

  return v3;
}

- (void)addPersistentStoreRemoteChangeNotificationObserver:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  [v7 addPersistentStoreRemoteChangeNotificationObserver:v6 selector:a4 coordinator:v8];
}

- (void)removePersistentStoreRemoteChangeNotificationObserver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  [v5 removePersistentStoreRemoteChangeNotificationObserver:v4 coordinator:v6];
}

+ (void)addPersistentStoreRemoteChangeNotificationObserver:(id)a3 selector:(SEL)a4 coordinator:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136446978;
    v13 = "+[WADeviceAnalyticsClient addPersistentStoreRemoteChangeNotificationObserver:selector:coordinator:]";
    v14 = 1024;
    v15 = 1393;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Adding %@ as observer of NSPersistentStoreRemoteChangeNotification from %@", &v12, 0x26u);
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:v7 selector:a4 name:*MEMORY[0x1E695D420] object:v8];

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)removePersistentStoreRemoteChangeNotificationObserver:(id)a3 coordinator:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446978;
    v11 = "+[WADeviceAnalyticsClient removePersistentStoreRemoteChangeNotificationObserver:coordinator:]";
    v12 = 1024;
    v13 = 1400;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Removing %@ as observer of NSPersistentStoreRemoteChangeNotification from %@", &v10, 0x26u);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:v5 name:*MEMORY[0x1E695D420] object:v6];

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)ouiFromBssid:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [BSSMO formattedMACAddressNotation:v3 as:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (signed)convert32to16:(int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (a3 != a3)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446978;
      v9 = "+[WADeviceAnalyticsClient convert32to16:]";
      v10 = 1024;
      v11 = 1418;
      v12 = 1024;
      v13 = a3;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:the value stored in input (%d) is larger than what we can store in 16 bits (%d). DB schema update required.", &v8, 0x1Eu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)bandAsString:(signed __int16)a3
{
  if (a3 > 2)
  {
    return @"N/A";
  }

  else
  {
    return off_1E830F3E0[a3];
  }
}

+ (signed)bandFromChannelFlags:(unsigned int)a3
{
  if ((a3 & 0x2000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = -1;
  }

  if ((a3 & 0x10) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 & 8) != 0)
  {
    return 0;
  }

  return v4;
}

+ (signed)bandFromNSChannelFlags:(id)a3
{
  v3 = a3;
  if (([v3 unsignedLongValue] & 8) != 0)
  {
    v4 = 0;
  }

  else if (([v3 unsignedLongValue] & 0x10) != 0)
  {
    v4 = 1;
  }

  else if (([v3 unsignedLongValue] & 0x2000) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (signed)channelWidthFromChannelFlags:(unsigned int)a3
{
  if ((a3 & 0x800) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = -1;
  }

  if ((a3 & 0x400) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 & 4) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ((a3 & 2) != 0)
  {
    return 0;
  }

  return v5;
}

+ (id)channelWidthAsString:(signed __int16)a3
{
  if (a3 > 3)
  {
    return @"N/A";
  }

  else
  {
    return off_1E830F3F8[a3];
  }
}

+ (signed)subBandFromBand:(signed __int16)a3 channel:(unint64_t)a4
{
  if (!a3)
  {
    return 1;
  }

  if (a3 == 1 && a4 < 0x31)
  {
    return 2;
  }

  if (a3 == 1 && a4 < 0x45)
  {
    return 3;
  }

  if (a3 == 1 && a4 < 0x5D)
  {
    return 4;
  }

  if (a3 == 1 && a4 < 0x91)
  {
    return 5;
  }

  if (a3 == 1 && a4 < 0xA6)
  {
    return 6;
  }

  if (a3 == 1 && a4 < 0xB2)
  {
    return 7;
  }

  if (a3 == 2 && a4 < 0x5E)
  {
    return 8;
  }

  if (a3 == 2 && a4 < 0x72)
  {
    return 9;
  }

  if (a3 == 2 && a4 < 0xB6)
  {
    return 10;
  }

  if (a4 < 0xEA && a3 == 2)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

+ (id)subBandAsString:(signed __int16)a3
{
  if ((a3 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E830F418[(a3 - 1)];
  }
}

+ (id)timeSpanToString:(unint64_t)a3
{
  v3 = @"FIXME";
  if (a3 == 3)
  {
    v3 = @"Monthly";
  }

  if (a3 == 2)
  {
    return @"Weekly";
  }

  else
  {
    return v3;
  }
}

+ (id)timeSpanSelectorToString:(unint64_t)a3
{
  v3 = @"FIXME";
  if (a3 == 1)
  {
    v3 = @"LatestComplete";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Current";
  }
}

@end