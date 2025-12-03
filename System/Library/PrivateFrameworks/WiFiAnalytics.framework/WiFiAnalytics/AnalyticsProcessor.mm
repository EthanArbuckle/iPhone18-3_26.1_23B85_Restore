@interface AnalyticsProcessor
+ (id)analyticsProcessorWithPersistentContainer:(id)container;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getPolicyHandlersConfig;
- (AnalyticsProcessor)initWithPersistentContainer:(id)container;
- (BOOL)ageOutAnalyticsWithError:(id *)error withReason:(id)reason;
- (BOOL)canRunPoliciesOnCurrentProcess;
- (BOOL)classifyTraitsForNetwork:(id)network withReason:(id)reason;
- (BOOL)classifyTraitsForNetworksWithReason:(id)reason;
- (BOOL)dhcpEventOnBssid:(id)bssid ssid:(id)ssid serverInfo:(id)info at:(id)at with:(id)with andResetMoc:(BOOL)moc;
- (BOOL)diagnosticEventAt:(id)at with:(id)with andResetMoc:(BOOL)moc;
- (BOOL)faultEventOn:(id)on at:(id)at with:(id)with andDeferSave:(BOOL)save andResetMoc:(BOOL)moc;
- (BOOL)geoTagEventOnBssid:(id)bssid ssid:(id)ssid lat:(double)lat lon:(double)lon at:(id)at andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing;
- (BOOL)initPolicyHandlers;
- (BOOL)joinEventOnBssid:(id)bssid ssid:(id)ssid at:(id)at with:(id)with andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing;
- (BOOL)leaveEventOnBssid:(id)bssid ssid:(id)ssid at:(id)at with:(id)with andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing;
- (BOOL)linkTestEventOn:(id)on at:(id)at with:(id)with andResetMoc:(BOOL)moc;
- (BOOL)lqmEvent:(id)event on:(id)on at:(id)at andReset:(BOOL)reset;
- (BOOL)networkDeploymentMetricCheckAndSubmitWithReason:(id)reason;
- (BOOL)poorCoverageAnalysisWithReason:(id)reason;
- (BOOL)processCachedFaultsAndResetCache:(id)cache andResetMoc:(BOOL)moc;
- (BOOL)processDeferredPoliciesWithReason:(id)reason;
- (BOOL)processDeferredPriorityPoliciesWithReason:(id)reason;
- (BOOL)recoveryEventOnBssid:(id)bssid at:(id)at with:(id)with andResetMoc:(BOOL)moc;
- (BOOL)removeKnownNetworkEvent:(id)event at:(id)at andResetMoc:(BOOL)moc;
- (BOOL)roamEvent:(id)event at:(id)at andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing withError:(id *)error;
- (BOOL)scanResultEventWith:(id)with ssid:(id)ssid whileOn:(id)on at:(id)at with:(id)a7 andResetMoc:(BOOL)moc;
- (BOOL)updateBSS:(id)s withParsedBeacon:(id)beacon andResetMoc:(BOOL)moc;
- (BOOL)updateNetwork:(id)network switchedFrom:(id)from at:(id)at andResetMoc:(BOOL)moc;
- (BOOL)updateNetwork:(id)network withDeploymentCoverage:(signed __int16)coverage andResetMoc:(BOOL)moc;
- (BOOL)updateRoamPoliciesForSourceBss:(id)bss andRoam:(id)roam withReason:(id)reason andRefDate:(id)date withError:(id *)error;
- (BOOL)updateRoamPoliciesForSourceBssAndRoamWithReason:(id)reason withError:(id *)error;
- (BOOL)updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache;
- (BOOL)updateUsagePoliciesWithReason:(id)reason;
- (id)fetchBSSesLastSeenAfterLastPolicyRunFor:(id)for withError:(id *)error;
- (id)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days;
- (unint64_t)performPrunePoliciesWithReasons:(id)reasons withError:(id *)error;
- (unint64_t)performPruneTestBSSes:(id)ses withError:(id *)error;
- (unint64_t)performPruneTestEntity:(id)entity since:(id)since withPredicate:(id)predicate withError:(id *)error;
- (void)_processMetricWiFiStats:(id)stats;
- (void)networkDeploymentMetricCheckAndSubmit:(id)submit withReason:(id)reason;
- (void)performPruneBasedOnStoreSizeAndSaveWithReason:(id)reason;
- (void)processDatapathMetricStream:(id)stream withDate:(id)date;
- (void)processMetricWiFiStats:(id)stats;
- (void)setPolicyHandlersConfig:(id *)config;
- (void)signalPotentialNewIORChannels;
- (void)storeMetricStreamFragment:(id)fragment withDate:(id)date;
@end

@implementation AnalyticsProcessor

+ (id)analyticsProcessorWithPersistentContainer:(id)container
{
  v15 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v4 = containerCopy;
  if (containerCopy)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AnalyticsProcessor_analyticsProcessorWithPersistentContainer___block_invoke;
    block[3] = &unk_1E830D880;
    v10 = containerCopy;
    if (qword_1EDE5CA90 != -1)
    {
      dispatch_once(&qword_1EDE5CA90, block);
    }

    v5 = _MergedGlobals_0;
    v6 = v10;
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v12 = "+[AnalyticsProcessor analyticsProcessorWithPersistentContainer:]";
      v13 = 1024;
      v14 = 92;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil container - bailing", buf, 0x12u);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

void __64__AnalyticsProcessor_analyticsProcessorWithPersistentContainer___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [[AnalyticsProcessor alloc] initWithPersistentContainer:*(a1 + 32)];
  v2 = _MergedGlobals_0;
  _MergedGlobals_0 = v1;

  if (!_MergedGlobals_0)
  {
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446466;
      v6 = "+[AnalyticsProcessor analyticsProcessorWithPersistentContainer:]_block_invoke";
      v7 = 1024;
      v8 = 99;
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_ERROR, "%{public}s::%d:AnalyticsProcessor failed to init -- Store unavailable to this process until reboot", &v5, 0x12u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (AnalyticsProcessor)initWithPersistentContainer:(id)container
{
  v23 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v18.receiver = self;
  v18.super_class = AnalyticsProcessor;
  v6 = [(AnalyticsProcessor *)&v18 init];
  if (v6)
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor init", "", buf, 2u);
    }

    objc_storeStrong(&v6->_persistentContainer, container);
    v8 = [AnalyticsStoreMOHandler sharedAnalyticsStoreMOHandlerWithContainer:containerCopy];
    managedObjectHandler = v6->_managedObjectHandler;
    v6->_managedObjectHandler = v8;

    if (v6->_managedObjectHandler)
    {
      if ([(AnalyticsProcessor *)v6 initPolicyHandlers])
      {
        v10 = objc_opt_new();
        cachedFaults = v6->_cachedFaults;
        v6->_cachedFaults = v10;

        p_super = WALogCategoryDeviceStoreHandle();
        if (os_signpost_enabled(p_super))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C8460000, p_super, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor init", "SUCCESS", buf, 2u);
        }

LABEL_8:

        goto LABEL_9;
      }

      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "[AnalyticsProcessor initWithPersistentContainer:]";
        v21 = 1024;
        v22 = 122;
        v16 = "%{public}s::%d:Error creating policy handlers";
        goto LABEL_14;
      }
    }

    else
    {
      v15 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "[AnalyticsProcessor initWithPersistentContainer:]";
        v21 = 1024;
        v22 = 119;
        v16 = "%{public}s::%d:Error getting sharedAnalyticsStoreMOHandler";
LABEL_14:
        _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
      }
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor init", "FAILURE", buf, 2u);
    }

    p_super = &v6->super;
    v6 = 0;
    goto LABEL_8;
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)initPolicyHandlers
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [[RoamPolicyStore alloc] initWithAnalyticsStore:self->_managedObjectHandler];
  roamPolicyHandler = self->_roamPolicyHandler;
  self->_roamPolicyHandler = v3;

  if (!self->_roamPolicyHandler)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 136446466;
    v16 = "[AnalyticsProcessor initPolicyHandlers]";
    v17 = 1024;
    v18 = 140;
    v14 = "%{public}s::%d:Error getting _roamPolicyHandler";
LABEL_12:
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_ERROR, v14, &v15, 0x12u);
    goto LABEL_13;
  }

  v5 = [[LinkChangePolicyHandler alloc] initWithAnalyticsStore:self->_managedObjectHandler];
  linkChangePolicyHandler = self->_linkChangePolicyHandler;
  self->_linkChangePolicyHandler = v5;

  if (!self->_linkChangePolicyHandler)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v15 = 136446466;
    v16 = "[AnalyticsProcessor initPolicyHandlers]";
    v17 = 1024;
    v18 = 143;
    v14 = "%{public}s::%d:Error getting _linkChangePolicyHandler";
    goto LABEL_12;
  }

  v7 = [[DeploymentMetricHandler alloc] initWithAnalyticsStore:self->_managedObjectHandler];
  deploymentMetricHandler = self->_deploymentMetricHandler;
  self->_deploymentMetricHandler = v7;

  if (!self->_deploymentMetricHandler)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446466;
      v16 = "[AnalyticsProcessor initPolicyHandlers]";
      v17 = 1024;
      v18 = 146;
      v14 = "%{public}s::%d:Error getting _deploymentMetricHandler";
      goto LABEL_12;
    }

LABEL_13:

    result = 0;
    goto LABEL_5;
  }

  v9 = [[UsagePoliciesHandler alloc] initWithPersistentContainer:self->_persistentContainer];
  usagePoliciesHandler = self->_usagePoliciesHandler;
  self->_usagePoliciesHandler = v9;

  [(AnalyticsProcessor *)self resetPolicyHandlersConfig];
  result = 1;
LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPolicyHandlersConfig:(id *)config
{
  v17 = *MEMORY[0x1E69E9840];
  if (config->var0 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AnalyticsProcessor *)self setTestDateDiffDays:?];
    v5 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136446722;
      v12 = "[AnalyticsProcessor setPolicyHandlersConfig:]";
      v13 = 1024;
      v14 = 163;
      v15 = 2048;
      testDateDiffDays = [(AnalyticsProcessor *)self testDateDiffDays];
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated testDateDiffDays to %lu days", &v11, 0x1Cu);
    }
  }

  if (config->var1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AnalyticsProcessor *)self setDeploymentMetricDiffDays:?];
    v6 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      deploymentMetricDiffDays = [(AnalyticsProcessor *)self deploymentMetricDiffDays];
      v11 = 136446722;
      v12 = "[AnalyticsProcessor setPolicyHandlersConfig:]";
      v13 = 1024;
      v14 = 167;
      v15 = 2048;
      testDateDiffDays = deploymentMetricDiffDays;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Updated deploymentMetricDiffDays to %lu days", &v11, 0x1Cu);
    }
  }

  if (config->var2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AnalyticsProcessor *)self setNumRoamSamples:?];
    v8 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      numRoamSamples = [(AnalyticsProcessor *)self numRoamSamples];
      v11 = 136446722;
      v12 = "[AnalyticsProcessor setPolicyHandlersConfig:]";
      v13 = 1024;
      v14 = 171;
      v15 = 2048;
      testDateDiffDays = numRoamSamples;
      _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Roam Samples %lu ", &v11, 0x1Cu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getPolicyHandlersConfig
{
  retstr->var0 = [(AnalyticsProcessor *)self testDateDiffDays];
  retstr->var1 = [(AnalyticsProcessor *)self deploymentMetricDiffDays];
  result = [(AnalyticsProcessor *)self numRoamSamples];
  retstr->var2 = result;
  return result;
}

- (BOOL)processCachedFaultsAndResetCache:(id)cache andResetMoc:(BOOL)moc
{
  mocCopy = moc;
  v40 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processCachedFaultsAndResetCache", "", buf, 2u);
  }

  cachedFaults = [(AnalyticsProcessor *)self cachedFaults];
  v9 = [cachedFaults count];

  if (!v9)
  {
    v14 = 1;
    if (!cacheCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v26 = mocCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  cachedFaults2 = [(AnalyticsProcessor *)self cachedFaults];
  v11 = [cachedFaults2 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    v14 = 1;
    obj = cachedFaults2;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        bssidForCachedFaults = [(AnalyticsProcessor *)self bssidForCachedFaults];
        eventDate = [v16 eventDate];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __67__AnalyticsProcessor_processCachedFaultsAndResetCache_andResetMoc___block_invoke;
        v28[3] = &unk_1E830D8A8;
        v28[4] = v16;
        LOBYTE(v16) = [(AnalyticsProcessor *)self faultEventOn:bssidForCachedFaults at:eventDate with:v28 andDeferSave:1 andResetMoc:0];

        v14 &= v16;
        if ((v16 & 1) == 0)
        {
          v25 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v34 = "[AnalyticsProcessor processCachedFaultsAndResetCache:andResetMoc:]";
            v35 = 1024;
            v36 = 205;
            _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to add fault into store - bailing", buf, 0x12u);
          }

          cachedFaults3 = obj;
          goto LABEL_15;
        }
      }

      cachedFaults2 = obj;
      v12 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:v26 withError:0];
  if (cacheCopy)
  {
LABEL_13:
    [(AnalyticsProcessor *)self setBssidForCachedFaults:cacheCopy];
  }

LABEL_14:
  cachedFaults3 = [(AnalyticsProcessor *)self cachedFaults];
  [cachedFaults3 removeAllObjects];
LABEL_15:

  v20 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = @"NO";
    v34 = "[AnalyticsProcessor processCachedFaultsAndResetCache:andResetMoc:]";
    *buf = 136446722;
    if (v14)
    {
      v21 = @"YES";
    }

    v35 = 1024;
    v36 = 215;
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning:%@", buf, 0x1Cu);
  }

  v22 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processCachedFaultsAndResetCache", "", buf, 2u);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

void __67__AnalyticsProcessor_processCachedFaultsAndResetCache_andResetMoc___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 type];
  [v4 setType:v5];

  v6 = [*(a1 + 32) interface];
  [v4 setInterface:v6];
}

- (BOOL)joinEventOnBssid:(id)bssid ssid:(id)ssid at:(id)at with:(id)with andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing
{
  bssidCopy = bssid;
  ssidCopy = ssid;
  atCopy = at;
  withCopy = with;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  processingCopy = processing;
  v18 = [BSSMO formattedMACAddressNotation:bssidCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __85__AnalyticsProcessor_joinEventOnBssid_ssid_at_with_andResetMoc_andRunPostProcessing___block_invoke;
  v26[3] = &unk_1E830D8D0;
  v26[4] = self;
  v20 = v18;
  v27 = v20;
  v21 = ssidCopy;
  v28 = v21;
  v22 = atCopy;
  v29 = v22;
  v23 = withCopy;
  v30 = v23;
  v31 = v34;
  v32 = &v36;
  mocCopy = moc;
  [viewContext performBlockAndWait:v26];

  v24 = *(v37 + 24);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(&v36, 8);

  return v24;
}

void __85__AnalyticsProcessor_joinEventOnBssid_ssid_at_with_andResetMoc_andRunPostProcessing___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processCachedFaultsAndResetCache:*(a1 + 40) andResetMoc:0];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor joinEventOnBssid:ssid:", "", v24, 2u);
  }

  if (*(a1 + 40) && *(a1 + 48) && *(a1 + 56))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = +[WADeviceAnalyticsJoinRecord entity];
    v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 56)];

    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 136446722;
      *&v24[4] = "[AnalyticsProcessor joinEventOnBssid:ssid:at:with:andResetMoc:andRunPostProcessing:]_block_invoke";
      *&v24[12] = 1024;
      *&v24[14] = 239;
      *&v24[18] = 2048;
      *&v24[20] = v6;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:newJoinRecord: %p", v24, 0x1Cu);
    }

    (*(*(a1 + 64) + 16))();
    if (+[WAUtil isWiFiFragmentSamplingEnabled])
    {
      v8 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = +[WAUtil isWiFiFragmentSamplingEnabled];
        *v24 = 136446978;
        *&v24[12] = 1024;
        v10 = @"wifi fragment sampling enabled";
        *&v24[4] = "[AnalyticsProcessor joinEventOnBssid:ssid:at:with:andResetMoc:andRunPostProcessing:]_block_invoke";
        *&v24[14] = 245;
        if (!v9)
        {
          v10 = &stru_1F481C4A0;
        }

        *&v24[18] = 2112;
        *&v24[20] = v10;
        v25 = 2112;
        v26 = &stru_1F481C4A0;
        _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:%@ %@ --> enabling immediate policies", v24, 0x26u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }

    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = 0;
    }

    *(*(*(a1 + 80) + 8) + 24) = [EventJoinNetwork processRecord:v6 bssid:*(a1 + 40) ssid:*(a1 + 48) withPersistentContainer:*(*(a1 + 32) + 8) andRunPostprocessing:v11, *v24, *&v24[16]];
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 136446722;
      *&v24[4] = "[AnalyticsProcessor joinEventOnBssid:ssid:at:with:andResetMoc:andRunPostProcessing:]_block_invoke";
      *&v24[12] = 1024;
      *&v24[14] = 255;
      *&v24[18] = 2112;
      *&v24[20] = v6;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added %@", v24, 0x1Cu);
    }

    v13 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 88) withError:0];
    v14 = *(*(a1 + 80) + 8);
    if (v13)
    {
      v15 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 24) = v15 & 1;
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v16))
    {
      if (*(*(*(a1 + 80) + 8) + 24))
      {
        v17 = @"SUCCESSFUL";
      }

      else
      {
        v17 = @"FAILED";
      }

      *v24 = 138412290;
      *&v24[4] = v17;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor joinEventOnBssid:ssid:", "%@", v24, 0xCu);
    }
  }

  else
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      *v24 = 136447234;
      *&v24[4] = "[AnalyticsProcessor joinEventOnBssid:ssid:at:with:andResetMoc:andRunPostProcessing:]_block_invoke";
      *&v24[12] = 1024;
      *&v24[14] = 236;
      *&v24[18] = 2112;
      *&v24[20] = v20;
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: bssid(%@) ssid(%@) eventDate(%@)", v24, 0x30u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v6))
    {
      if (*(*(*(a1 + 80) + 8) + 24))
      {
        v23 = @"SUCCESSFUL";
      }

      else
      {
        v23 = @"FAILED";
      }

      *v24 = 138412290;
      *&v24[4] = v23;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor joinEventOnBssid:ssid:", "%@", v24, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)leaveEventOnBssid:(id)bssid ssid:(id)ssid at:(id)at with:(id)with andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing
{
  bssidCopy = bssid;
  ssidCopy = ssid;
  atCopy = at;
  withCopy = with;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v17 = [BSSMO formattedMACAddressNotation:bssidCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __86__AnalyticsProcessor_leaveEventOnBssid_ssid_at_with_andResetMoc_andRunPostProcessing___block_invoke;
  v25[3] = &unk_1E830D8F8;
  v25[4] = self;
  v19 = v17;
  v26 = v19;
  v20 = ssidCopy;
  v27 = v20;
  v21 = atCopy;
  v28 = v21;
  v22 = withCopy;
  v29 = v22;
  v30 = &v32;
  mocCopy = moc;
  [viewContext performBlockAndWait:v25];

  v23 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v23;
}

void __86__AnalyticsProcessor_leaveEventOnBssid_ssid_at_with_andResetMoc_andRunPostProcessing___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) processCachedFaultsAndResetCache:0 andResetMoc:0];
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor leaveEventOnBssid:ssid:", "", &v18, 2u);
  }

  if (*(a1 + 40) && *(a1 + 48) && *(a1 + 56))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = +[WADeviceAnalyticsLeaveRecord entity];
    v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
    *(*(*(a1 + 72) + 8) + 24) = [EventLeaveNetwork processRecord:v6 bssid:*(a1 + 40) ssid:*(a1 + 48) withPersistentContainer:*(*(a1 + 32) + 8) andRunPostprocessing:?];
    v7 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 80) withError:0];
    v8 = *(*(a1 + 72) + 8);
    if (v7)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 24) = v9 & 1;
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v10))
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v11 = @"SUCCESSFUL";
      }

      else
      {
        v11 = @"FAILED";
      }

      v18 = 138412290;
      v19 = v11;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor leaveEventOnBssid:ssid:", "%@", &v18, 0xCu);
    }
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v18 = 136447234;
      v19 = "[AnalyticsProcessor leaveEventOnBssid:ssid:at:with:andResetMoc:andRunPostProcessing:]_block_invoke";
      v20 = 1024;
      v21 = 287;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: bssid(%@) ssid(%@) eventDate(%@)", &v18, 0x30u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v6))
    {
      if (*(*(*(a1 + 72) + 8) + 24))
      {
        v17 = @"SUCCESSFUL";
      }

      else
      {
        v17 = @"FAILED";
      }

      v18 = 138412290;
      v19 = v17;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor leaveEventOnBssid:ssid:", "%@", &v18, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)dhcpEventOnBssid:(id)bssid ssid:(id)ssid serverInfo:(id)info at:(id)at with:(id)with andResetMoc:(BOOL)moc
{
  bssidCopy = bssid;
  ssidCopy = ssid;
  infoCopy = info;
  atCopy = at;
  withCopy = with;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v19 = [BSSMO formattedMACAddressNotation:bssidCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __75__AnalyticsProcessor_dhcpEventOnBssid_ssid_serverInfo_at_with_andResetMoc___block_invoke;
  v28[3] = &unk_1E830D9C0;
  v21 = v19;
  v29 = v21;
  v22 = ssidCopy;
  v30 = v22;
  v23 = atCopy;
  v31 = v23;
  selfCopy = self;
  v24 = withCopy;
  v34 = v24;
  v35 = &v37;
  v25 = infoCopy;
  v33 = v25;
  mocCopy = moc;
  [viewContext performBlockAndWait:v28];

  v26 = *(v38 + 24);
  _Block_object_dispose(&v37, 8);

  return v26;
}

void __75__AnalyticsProcessor_dhcpEventOnBssid_ssid_serverInfo_at_with_andResetMoc___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor dhcpEventOnBssid:ssid:serverInfo:", "", &v11, 2u);
  }

  v4 = [EventDHCP mostRecentJoinOn:*(a1 + 32) ssid:*(a1 + 40) before:*(a1 + 48) withPersistentContainer:*(*(a1 + 56) + 8)];
  (*(*(a1 + 72) + 16))();
  *(*(*(a1 + 80) + 8) + 24) = [EventDHCP processEvent:v4 dhcpServerInfo:*(a1 + 64) onBSS:*(a1 + 32) andNetwork:*(a1 + 40) withPersistentContainer:*(*(a1 + 56) + 8)];
  v5 = [*(a1 + 56) managedObjectContextSaveThenReset:*(a1 + 88) withError:0];
  v6 = *(*(a1 + 80) + 8);
  if (v5)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7 & 1;
  v8 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v8))
  {
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      v9 = @"SUCCESSFUL";
    }

    else
    {
      v9 = @"FAILED";
    }

    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor dhcpEventOnBssid:ssid:serverInfo:", "%@", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)roamEvent:(id)event at:(id)at andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing withError:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  atCopy = at;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  if (eventCopy)
  {
    viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__AnalyticsProcessor_roamEvent_at_andResetMoc_andRunPostProcessing_withError___block_invoke;
    v19[3] = &unk_1E830D920;
    v22 = &v32;
    v19[4] = self;
    v20 = eventCopy;
    v23 = &v26;
    v21 = atCopy;
    processingCopy = processing;
    mocCopy = moc;
    [viewContext performBlockAndWait:v19];

    if (error)
    {
      *error = v27[5];
    }
  }

  else
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "[AnalyticsProcessor roamEvent:at:andResetMoc:andRunPostProcessing:withError:]";
      v38 = 1024;
      v39 = 342;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:nil RoamEvent, bailing", buf, 0x12u);
    }
  }

  v15 = *(v33 + 24);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void __78__AnalyticsProcessor_roamEvent_at_andResetMoc_andRunPostProcessing_withError___block_invoke(uint64_t a1)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor roamEvent:at: processCachedFaultsAndResetCache", "", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) targetBssid];
  *(*(*(a1 + 56) + 8) + 24) = [v4 processCachedFaultsAndResetCache:v5 andResetMoc:0];

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v6 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A588];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to add cached faults to the Store"];
    v50[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v9 = [v6 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v8];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v46 = "[AnalyticsProcessor roamEvent:at:andResetMoc:andRunPostProcessing:withError:]_block_invoke";
      v47 = 1024;
      v48 = 349;
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, "%{public}s::%d:unable to add cached faults to the Store", buf, 0x12u);
    }
  }

  v13 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v13))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v14 = @"SUCCESSFUL";
    }

    else
    {
      v14 = @"FAILED";
    }

    *buf = 138412290;
    v46 = v14;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor roamEvent:at: processCachedFaultsAndResetCache", "%@", buf, 0xCu);
  }

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor roamEvent:at:", "", buf, 2u);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(*(a1 + 32) + 8);
  if (*(a1 + 72))
  {
    v19 = *(a1 + 32);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(*(a1 + 64) + 8);
  obj = *(v20 + 40);
  v21 = [v16 processEventAt:v17 withPersistentContainer:v18 andRunPostprocessing:v19 withError:&obj];
  objc_storeStrong((v20 + 40), obj);
  v22 = *(*(a1 + 56) + 8);
  if (v21)
  {
    v23 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
  }

  *(v22 + 24) = v23 & 1;
  v24 = *(a1 + 64);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && !*(*(v24 + 8) + 40))
  {
    v25 = MEMORY[0x1E696ABC0];
    v43 = *MEMORY[0x1E696A588];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"processing RoamEvent failed"];
    v44 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v28 = [v25 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9043 userInfo:v27];
    v29 = *(*(a1 + 64) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v46 = "[AnalyticsProcessor roamEvent:at:andResetMoc:andRunPostProcessing:withError:]_block_invoke";
      v47 = 1024;
      v48 = 358;
      _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_FAULT, "%{public}s::%d:processing RoamEvent failed", buf, 0x12u);
    }

    v24 = *(a1 + 64);
  }

  v32 = *(a1 + 32);
  v33 = *(a1 + 73);
  v34 = *(v24 + 8);
  v41 = *(v34 + 40);
  v35 = [v32 managedObjectContextSaveThenReset:v33 withError:&v41];
  objc_storeStrong((v34 + 40), v41);
  v36 = *(*(a1 + 56) + 8);
  if (v35)
  {
    v37 = *(v36 + 24);
  }

  else
  {
    v37 = 0;
  }

  *(v36 + 24) = v37 & 1;
  v38 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v38))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v39 = @"SUCCESSFUL";
    }

    else
    {
      v39 = @"FAILED";
    }

    *buf = 138412290;
    v46 = v39;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor roamEvent:at:", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v40 = *MEMORY[0x1E69E9840];
}

- (BOOL)recoveryEventOnBssid:(id)bssid at:(id)at with:(id)with andResetMoc:(BOOL)moc
{
  bssidCopy = bssid;
  atCopy = at;
  withCopy = with;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v13 = [BSSMO formattedMACAddressNotation:bssidCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__AnalyticsProcessor_recoveryEventOnBssid_at_with_andResetMoc___block_invoke;
  v20[3] = &unk_1E830D948;
  v15 = atCopy;
  v21 = v15;
  selfCopy = self;
  v16 = withCopy;
  v24 = v16;
  v17 = v13;
  v23 = v17;
  v25 = &v27;
  mocCopy = moc;
  [viewContext performBlockAndWait:v20];

  v18 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __63__AnalyticsProcessor_recoveryEventOnBssid_at_with_andResetMoc___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v27) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor recoveryEventOnBssid", "", &v27, 2u);
  }

  if (!*(a1 + 32))
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v22 = *(a1 + 32);
      v27 = 136446722;
      v28 = "[AnalyticsProcessor recoveryEventOnBssid:at:with:andResetMoc:]_block_invoke";
      v29 = 1024;
      v30 = 383;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: eventDate(%@)", &v27, 0x1Cu);
    }

    goto LABEL_26;
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = +[WADeviceAnalyticsRecoveryRecord entity];
  v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 32)];

  if (!v6)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v23 = +[WADeviceAnalyticsRecoveryRecord entity];
      v24 = [v23 name];
      v27 = 136446722;
      v28 = "[AnalyticsProcessor recoveryEventOnBssid:at:with:andResetMoc:]_block_invoke";
      v29 = 1024;
      v30 = 386;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create new %@ record", &v27, 0x1Cu);
    }

LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  (*(*(a1 + 56) + 16))();
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [*(*(a1 + 40) + 8) bssForBssid:v7 prefetchProperties:&unk_1F483E398 withError:0];
    if (v8)
    {
      v9 = v8;
      [v6 setBss:v8];
      v10 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v6 date];
        v12 = [v9 bssid];
        v13 = [v9 network];
        v14 = [v13 ssid];
        v27 = 136447234;
        v28 = "[AnalyticsProcessor recoveryEventOnBssid:at:with:andResetMoc:]_block_invoke";
        v29 = 1024;
        v30 = 395;
        v31 = 2112;
        v32 = v11;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added Recovery at [%@] to BSS[%@][%@]", &v27, 0x30u);
      }

      goto LABEL_11;
    }

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v26 = *(a1 + 48);
      v27 = 136446722;
      v28 = "[AnalyticsProcessor recoveryEventOnBssid:at:with:andResetMoc:]_block_invoke";
      v29 = 1024;
      v30 = 392;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain BSSMO for %@", &v27, 0x1Cu);
    }

LABEL_27:

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v18 = WALogCategoryDeviceStoreHandle();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_21;
    }

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v25 = @"SUCCESSFUL";
    }

    else
    {
      v25 = @"FAILED";
    }

    v27 = 138412290;
    v28 = v25;
    goto LABEL_20;
  }

  v9 = WALogCategoryDeviceStoreHandle();
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_12;
  }

  v10 = [v6 date];
  v27 = 136446722;
  v28 = "[AnalyticsProcessor recoveryEventOnBssid:at:with:andResetMoc:]_block_invoke";
  v29 = 1024;
  v30 = 397;
  v31 = 2112;
  v32 = v10;
  _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Added Recovery at [%@]", &v27, 0x1Cu);
LABEL_11:

LABEL_12:
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v15 = [*(a1 + 40) managedObjectContextSaveThenReset:*(a1 + 72) withError:0];
  v16 = *(*(a1 + 64) + 8);
  if (v15)
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 24) = v17 & 1;
  v18 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v18))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v19 = @"SUCCESSFUL";
    }

    else
    {
      v19 = @"FAILED";
    }

    v27 = 138412290;
    v28 = v19;
LABEL_20:
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor recoveryEventOnBssid", "%@", &v27, 0xCu);
  }

LABEL_21:

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)removeKnownNetworkEvent:(id)event at:(id)at andResetMoc:(BOOL)moc
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  atCopy = at;
  v8 = atCopy;
  if (!eventCopy)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v14 = 136446722;
      v15 = "[AnalyticsProcessor removeKnownNetworkEvent:at:andResetMoc:]";
      v16 = 1024;
      v17 = 417;
      v18 = 2112;
      v19 = 0;
      v13 = "%{public}s::%d:missing required parameter: ssid(%@)";
LABEL_9:
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_FAULT, v13, &v14, 0x1Cu);
    }

LABEL_10:

    v9 = 0;
    goto LABEL_4;
  }

  if (!atCopy)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v14 = 136446722;
      v15 = "[AnalyticsProcessor removeKnownNetworkEvent:at:andResetMoc:]";
      v16 = 1024;
      v17 = 418;
      v18 = 2112;
      v19 = 0;
      v13 = "%{public}s::%d:missing required parameter: eventDate(%@)";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v9 = 1;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)updateNetwork:(id)network switchedFrom:(id)from at:(id)at andResetMoc:(BOOL)moc
{
  v37 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  fromCopy = from;
  atCopy = at;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!networkCopy)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v30 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]";
    v31 = 1024;
    v32 = 432;
    v33 = 2112;
    v34 = 0;
    v19 = "%{public}s::%d:missing required parameter: ssid(%@)";
LABEL_15:
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, v19, buf, 0x1Cu);
    goto LABEL_16;
  }

  if (!fromCopy)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136446722;
    v30 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]";
    v31 = 1024;
    v32 = 433;
    v33 = 2112;
    v34 = 0;
    v19 = "%{public}s::%d:missing required parameter: prevSsid(%@)";
    goto LABEL_15;
  }

  v13 = WALogCategoryDeviceStoreHandle();
  v14 = v13;
  if (!atCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v30 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]";
      v31 = 1024;
      v32 = 434;
      v33 = 2112;
      v34 = 0;
      v19 = "%{public}s::%d:missing required parameter: eventDate(%@)";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v30 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]";
    v31 = 1024;
    v32 = 436;
    v33 = 2112;
    v34 = networkCopy;
    v35 = 2112;
    v36 = fromCopy;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:SSID: %@ prevSsid: %@", buf, 0x26u);
  }

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__AnalyticsProcessor_updateNetwork_switchedFrom_at_andResetMoc___block_invoke;
  v20[3] = &unk_1E830D970;
  v20[4] = self;
  v21 = networkCopy;
  v22 = fromCopy;
  v23 = &v25;
  mocCopy = moc;
  [viewContext performBlockAndWait:v20];

  if (+[WAUtil isWiFiFragmentSamplingEnabled])
  {
    [(AnalyticsProcessor *)self signalPotentialNewIORChannels];
  }

LABEL_8:
  v16 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  v17 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

void __64__AnalyticsProcessor_updateNetwork_switchedFrom_at_andResetMoc___block_invoke(uint64_t a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateNetwork:switchedFrom:", "", &v28, 2u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = +[NetworkMO entity];
  v42 = @"ssid";
  v43[0] = *(a1 + 40);
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v7 = [v4 uniqueObjectFor:v5 withConstraints:v6 allowCreate:0 prefetchProperties:&unk_1F483E3B0];

  v8 = *(*(a1 + 32) + 8);
  v9 = +[NetworkMO entity];
  v10 = *(a1 + 48);
  v40 = @"ssid";
  v41 = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v12 = [v8 uniqueObjectFor:v9 withConstraints:v11 allowCreate:0 prefetchProperties:&unk_1F483E3C8];

  if (!v7)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v28 = 136446722;
      v29 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]_block_invoke";
      v30 = 1024;
      v31 = 444;
      v32 = 2112;
      v33 = v25;
LABEL_21:
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network not found for %@", &v28, 0x1Cu);
    }

LABEL_22:

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v21 = WALogCategoryDeviceStoreHandle();
    if (!os_signpost_enabled(v21))
    {
      goto LABEL_16;
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v27 = @"SUCCESSFUL";
    }

    else
    {
      v27 = @"FAILED";
    }

    v28 = 138412290;
    v29 = v27;
    goto LABEL_15;
  }

  if (!v12)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 48);
      v28 = 136446722;
      v29 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]_block_invoke";
      v30 = 1024;
      v31 = 445;
      v32 = 2112;
      v33 = v26;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  [v12 setSwitchedAwayFromCount:{objc_msgSend(v12, "switchedAwayFromCount") + 1}];
  [v7 setSwitchedToCount:{objc_msgSend(v7, "switchedToCount") + 1}];
  v13 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 40);
    v15 = [v7 switchedToCount];
    v16 = *(a1 + 48);
    v17 = [v12 switchedAwayFromCount];
    v28 = 136447490;
    v29 = "[AnalyticsProcessor updateNetwork:switchedFrom:at:andResetMoc:]_block_invoke";
    v30 = 1024;
    v31 = 450;
    v32 = 2112;
    v33 = v14;
    v34 = 2048;
    v35 = v15;
    v36 = 2112;
    v37 = v16;
    v38 = 2048;
    v39 = v17;
    _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:SSID: %@ switchedTo: %lu SSID: %@ switchedAway: %lu", &v28, 0x3Au);
  }

  v18 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 64) withError:0];
  v19 = *(*(a1 + 56) + 8);
  if (v18)
  {
    v20 = *(v19 + 24);
  }

  else
  {
    v20 = 0;
  }

  *(v19 + 24) = v20 & 1;
  v21 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v21))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v22 = @"SUCCESSFUL";
    }

    else
    {
      v22 = @"FAILED";
    }

    v28 = 138412290;
    v29 = v22;
LABEL_15:
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v21, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateNetwork:switchedFrom:", "%@", &v28, 0xCu);
  }

LABEL_16:

  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)geoTagEventOnBssid:(id)bssid ssid:(id)ssid lat:(double)lat lon:(double)lon at:(id)at andResetMoc:(BOOL)moc andRunPostProcessing:(BOOL)processing
{
  bssidCopy = bssid;
  ssidCopy = ssid;
  atCopy = at;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__AnalyticsProcessor_geoTagEventOnBssid_ssid_lat_lon_at_andResetMoc_andRunPostProcessing___block_invoke;
  v24[3] = &unk_1E830D998;
  v29 = &v33;
  v19 = atCopy;
  v25 = v19;
  v20 = bssidCopy;
  v26 = v20;
  v21 = ssidCopy;
  latCopy = lat;
  lonCopy = lon;
  v27 = v21;
  selfCopy = self;
  mocCopy = moc;
  [viewContext performBlockAndWait:v24];

  v22 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return v22;
}

void __90__AnalyticsProcessor_geoTagEventOnBssid_ssid_lat_lon_at_andResetMoc_andRunPostProcessing___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor geoTagEventOnBssid:ssid:", "", &v10, 2u);
  }

  *(*(*(a1 + 64) + 8) + 24) = [EventGeoTag processGeoTagEventAt:*(a1 + 32) bssid:*(a1 + 40) ssid:*(a1 + 48) lat:*(*(a1 + 56) + 8) lon:0 withPersistentContainer:*(a1 + 72) andRunPostprocessing:*(a1 + 80)];
  v4 = [*(a1 + 56) managedObjectContextSaveThenReset:*(a1 + 88) withError:0];
  v5 = *(*(a1 + 64) + 8);
  if (v4)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 24) = v6 & 1;
  v7 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v7))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v8 = @"SUCCESSFUL";
    }

    else
    {
      v8 = @"FAILED";
    }

    v10 = 138412290;
    v11 = v8;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor geoTagEventOnBssid:ssid:", "%@", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateBSS:(id)s withParsedBeacon:(id)beacon andResetMoc:(BOOL)moc
{
  v30 = *MEMORY[0x1E69E9840];
  sCopy = s;
  beaconCopy = beacon;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (sCopy)
  {
    viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__AnalyticsProcessor_updateBSS_withParsedBeacon_andResetMoc___block_invoke;
    v15[3] = &unk_1E830D970;
    v15[4] = self;
    v16 = sCopy;
    v17 = beaconCopy;
    v18 = &v20;
    mocCopy = moc;
    [viewContext performBlockAndWait:v15];
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v25 = "[AnalyticsProcessor updateBSS:withParsedBeacon:andResetMoc:]";
      v26 = 1024;
      v27 = 497;
      v28 = 2112;
      v29 = 0;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: bssid(%@)", buf, 0x1Cu);
    }
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void __61__AnalyticsProcessor_updateBSS_withParsedBeacon_andResetMoc___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updatedBSS:withParsedBeacon:", "", &v21, 2u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = +[BSSMO entity];
  v6 = *(a1 + 40);
  v27 = @"bssid";
  v28[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v8 = [v4 uniqueObjectFor:v5 withConstraints:v7 allowCreate:0 prefetchProperties:&unk_1F483E3E0];

  if (v8)
  {
    v9 = [v8 parsedBeacon];
    v10 = [v9 isEqualToDictionary:*(a1 + 48)];

    if ((v10 & 1) == 0)
    {
      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v21 = 136446722;
        v22 = "[AnalyticsProcessor updateBSS:withParsedBeacon:andResetMoc:]_block_invoke";
        v23 = 1024;
        v24 = 507;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Updating parsed beacon for %@", &v21, 0x1Cu);
      }

      [v8 setParsedBeacon:*(a1 + 48)];
    }

    v13 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 64) withError:0];
    v14 = *(*(a1 + 56) + 8);
    if (v13)
    {
      v15 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 24) = v15 & 1;
  }

  else
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = 136446722;
      v22 = "[AnalyticsProcessor updateBSS:withParsedBeacon:andResetMoc:]_block_invoke";
      v23 = 1024;
      v24 = 504;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:BSS for %@ not found", &v21, 0x1Cu);
    }
  }

  v16 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v16))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v17 = @"SUCCESSFUL";
    }

    else
    {
      v17 = @"FAILED";
    }

    v21 = 138412290;
    v22 = v17;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updatedBSS:withParsedBeacon:", "%@", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)scanResultEventWith:(id)with ssid:(id)ssid whileOn:(id)on at:(id)at with:(id)a7 andResetMoc:(BOOL)moc
{
  withCopy = with;
  ssidCopy = ssid;
  onCopy = on;
  atCopy = at;
  v18 = a7;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v19 = [BSSMO formattedMACAddressNotation:withCopy as:6];

  v20 = [BSSMO formattedMACAddressNotation:onCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __75__AnalyticsProcessor_scanResultEventWith_ssid_whileOn_at_with_andResetMoc___block_invoke;
  v29[3] = &unk_1E830D9C0;
  v22 = v19;
  v30 = v22;
  v23 = atCopy;
  v31 = v23;
  selfCopy = self;
  v24 = ssidCopy;
  v33 = v24;
  v25 = v18;
  v35 = v25;
  v26 = v20;
  v34 = v26;
  v36 = &v38;
  mocCopy = moc;
  [viewContext performBlockAndWait:v29];

  v27 = *(v39 + 24);
  _Block_object_dispose(&v38, 8);

  return v27;
}

void __75__AnalyticsProcessor_scanResultEventWith_ssid_whileOn_at_with_andResetMoc___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor scanEventOnBssid:ssid:", "", buf, 2u);
  }

  if (!*(a1 + 32) || !*(a1 + 40))
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      *buf = 136446978;
      v40 = "[AnalyticsProcessor scanResultEventWith:ssid:whileOn:at:with:andResetMoc:]_block_invoke";
      v41 = 1024;
      v42 = 536;
      v43 = 2112;
      v44 = v34;
      v45 = 2112;
      *v46 = v35;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: seenBssid(%@) eventDate(%@)", buf, 0x26u);
    }

LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v4 = *(*(a1 + 48) + 8);
  v38[1] = 0;
  v5 = [v4 bssForBssid:? prefetchProperties:? withError:?];
  v6 = 0;
  if (!v6 && v5)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = [v5 network];
      v9 = [v8 ssid];
      v10 = [v7 isEqualToString:v9];

      if (v10)
      {
        v11 = *(*(a1 + 48) + 8);
        v12 = +[WADeviceAnalyticsScanRecord entity];
        v13 = [v11 newDatedEventObjectFor:v12 withDate:*(a1 + 40)];

        (*(*(a1 + 72) + 16))();
        [v13 setResult:v5];
        [v5 setMostRecentChannel:[v13 channel]];
        [v5 setMostRecentBand:[v13 band]];
        v14 = *(a1 + 64);
        if (v14)
        {
          v15 = *(*(a1 + 48) + 8);
          v38[0] = 0;
          v16 = [v15 bssForBssid:v14 prefetchProperties:0 withError:v38];
          v6 = v38[0];
          if (v6 || !v16)
          {
            v37 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v40 = "[AnalyticsProcessor scanResultEventWith:ssid:whileOn:at:with:andResetMoc:]_block_invoke";
              v41 = 1024;
              v42 = 551;
              v43 = 2112;
              v44 = v6;
              _os_log_impl(&dword_1C8460000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ - bailing", buf, 0x1Cu);
            }

            goto LABEL_16;
          }

          [v13 setOrigin:v16];
        }

        v17 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 64);
          v19 = [v13 originRssi];
          v20 = *(a1 + 32);
          v21 = [v13 channel];
          v22 = [v13 resultRssi];
          *buf = 136447746;
          v40 = "[AnalyticsProcessor scanResultEventWith:ssid:whileOn:at:with:andResetMoc:]_block_invoke";
          v41 = 1024;
          v42 = 555;
          v43 = 2112;
          v44 = v18;
          v45 = 1024;
          *v46 = v19;
          *&v46[4] = 2112;
          *&v46[6] = v20;
          *&v46[14] = 1024;
          *&v46[16] = v21;
          v47 = 1024;
          v48 = v22;
          _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEBUG, "%{public}s::%d:while on %@ (rssi %d) seen neighbor %@(chan: %d rssi %d)", buf, 0x38u);
        }

        *(*(*(a1 + 80) + 8) + 24) = 1;
        v6 = 0;
LABEL_16:
        v5 = v13;
        goto LABEL_21;
      }
    }

    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 56);
      v26 = [v5 network];
      v27 = [v26 ssid];
      *buf = 136447234;
      v40 = "[AnalyticsProcessor scanResultEventWith:ssid:whileOn:at:with:andResetMoc:]_block_invoke";
      v41 = 1024;
      v42 = 540;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      *v46 = v25;
      *&v46[8] = 2112;
      *&v46[10] = v27;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_ERROR, "%{public}s::%d:seen BSS[%@] SSID[%@] does not match SSID in Store [%@] - bailing ", buf, 0x30u);
    }

    goto LABEL_20;
  }

  v36 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v40 = "[AnalyticsProcessor scanResultEventWith:ssid:whileOn:at:with:andResetMoc:]_block_invoke";
    v41 = 1024;
    v42 = 539;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_1C8460000, v36, OS_LOG_TYPE_ERROR, "%{public}s::%d:%@ - bailing", buf, 0x1Cu);
  }

LABEL_21:
  v28 = [*(a1 + 48) managedObjectContextSaveThenReset:*(a1 + 88) withError:0];
  v29 = *(*(a1 + 80) + 8);
  if (v28)
  {
    v30 = *(v29 + 24);
  }

  else
  {
    v30 = 0;
  }

  *(v29 + 24) = v30 & 1;
  v31 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v31))
  {
    if (*(*(*(a1 + 80) + 8) + 24))
    {
      v32 = @"SUCCESSFUL";
    }

    else
    {
      v32 = @"FAILED";
    }

    *buf = 138412290;
    v40 = v32;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor scanEventOnBssid:ssid:", "%@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)faultEventOn:(id)on at:(id)at with:(id)with andDeferSave:(BOOL)save andResetMoc:(BOOL)moc
{
  onCopy = on;
  atCopy = at;
  withCopy = with;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v15 = [BSSMO formattedMACAddressNotation:onCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __68__AnalyticsProcessor_faultEventOn_at_with_andDeferSave_andResetMoc___block_invoke;
  v22[3] = &unk_1E830D9E8;
  v17 = atCopy;
  v23 = v17;
  selfCopy = self;
  v18 = withCopy;
  v26 = v18;
  v19 = v15;
  v25 = v19;
  v27 = &v30;
  saveCopy = save;
  mocCopy = moc;
  [viewContext performBlockAndWait:v22];

  v20 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return v20;
}

void __68__AnalyticsProcessor_faultEventOn_at_with_andDeferSave_andResetMoc___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v43) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor faultEventOn:", "", &v43, 2u);
  }

  if (*(a1 + 32))
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = +[WADeviceAnalyticsFaultRecord entity];
    v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 32)];

    if (v6)
    {
      (*(*(a1 + 56) + 16))();
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      v9 = *(v8 + 8);
      if (v7)
      {
        v10 = [*(v8 + 8) bssForBssid:v7 prefetchProperties:&unk_1F483E410 withError:0];
        if (!v10)
        {
          v33 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            v42 = *(a1 + 48);
            v43 = 136446722;
            v44 = "[AnalyticsProcessor faultEventOn:at:with:andDeferSave:andResetMoc:]_block_invoke";
            v45 = 1024;
            v46 = 615;
            v47 = 2112;
            v48 = v42;
            _os_log_impl(&dword_1C8460000, v33, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain BSSMO for %@", &v43, 0x1Cu);
          }

          goto LABEL_20;
        }

        v11 = v10;
        [v6 setBss:v10];
        v12 = [v11 network];
        [v6 setNetwork:v12];

        v13 = [v11 lan];
        [v6 setLan:v13];
      }

      else
      {
        v14 = +[WADeviceAnalyticsJoinRecord entity];
        v11 = [v9 mostRecentDatedEvent:v14 before:*(a1 + 32) withPrefetchedProperties:&unk_1F483E428 withError:0];

        v15 = *(*(a1 + 40) + 8);
        v16 = +[WADeviceAnalyticsLeaveRecord entity];
        v13 = [v15 mostRecentDatedEvent:v16 before:*(a1 + 32) withPrefetchedProperties:0 withError:0];

        if (v11)
        {
          if (!v13 || ([v11 date], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "date"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compare:", v18), v18, v17, v19 == 1))
          {
            v20 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = [v11 bss];
              v43 = 136446722;
              v44 = "[AnalyticsProcessor faultEventOn:at:with:andDeferSave:andResetMoc:]_block_invoke";
              v45 = 1024;
              v46 = 630;
              v47 = 2112;
              v48 = v21;
              _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Associating Fault to mostRecentJoin's bss:%@", &v43, 0x1Cu);
            }

            v22 = [v11 bss];
            [v6 setBss:v22];

            v23 = [v11 bss];
            v24 = [v23 network];
            [v6 setNetwork:v24];

            v25 = [v11 bss];
            v26 = [v25 lan];
            [v6 setLan:v26];
          }
        }
      }

      v27 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v6 type];
        v29 = [v6 date];
        v30 = [v6 bss];
        v31 = [v6 network];
        v32 = [v6 lan];
        v43 = 136447746;
        v44 = "[AnalyticsProcessor faultEventOn:at:with:andDeferSave:andResetMoc:]_block_invoke";
        v45 = 1024;
        v46 = 638;
        v47 = 2112;
        v48 = v28;
        v49 = 2112;
        v50 = v29;
        v51 = 2112;
        v52 = v30;
        v53 = 2112;
        v54 = v31;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added Fault %@ at [%@] to BSS[%@][%@][%@]", &v43, 0x44u);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v33 = [*(a1 + 40) persistentContainer];
      v34 = [v33 managedObjectContextSave:*(a1 + 72) reset:*(a1 + 73) release:*(a1 + 73) withError:0];
      v35 = *(*(a1 + 64) + 8);
      if (v34)
      {
        v36 = *(v35 + 24);
      }

      else
      {
        v36 = 0;
      }

      *(v35 + 24) = v36 & 1;
LABEL_20:

      goto LABEL_21;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v33 = +[WADeviceAnalyticsFaultRecord entity];
      v41 = [v33 name];
      v43 = 136446722;
      v44 = "[AnalyticsProcessor faultEventOn:at:with:andDeferSave:andResetMoc:]_block_invoke";
      v45 = 1024;
      v46 = 609;
      v47 = 2112;
      v48 = v41;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create new %@ record", &v43, 0x1Cu);

      goto LABEL_20;
    }
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v40 = *(a1 + 32);
      v43 = 136446722;
      v44 = "[AnalyticsProcessor faultEventOn:at:with:andDeferSave:andResetMoc:]_block_invoke";
      v45 = 1024;
      v46 = 606;
      v47 = 2112;
      v48 = v40;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: eventDate(%@)", &v43, 0x1Cu);
    }
  }

LABEL_21:

  v37 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v37))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v38 = @"SUCCESSFUL";
    }

    else
    {
      v38 = @"FAILED";
    }

    v43 = 138412290;
    v44 = v38;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v37, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor faultEventOn:", "%@", &v43, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v39 = *MEMORY[0x1E69E9840];
}

- (BOOL)linkTestEventOn:(id)on at:(id)at with:(id)with andResetMoc:(BOOL)moc
{
  onCopy = on;
  atCopy = at;
  withCopy = with;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v13 = [BSSMO formattedMACAddressNotation:onCopy as:6];

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__AnalyticsProcessor_linkTestEventOn_at_with_andResetMoc___block_invoke;
  v20[3] = &unk_1E830D948;
  v15 = atCopy;
  v21 = v15;
  selfCopy = self;
  v16 = withCopy;
  v24 = v16;
  v17 = v13;
  v23 = v17;
  v25 = &v27;
  mocCopy = moc;
  [viewContext performBlockAndWait:v20];

  v18 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v18;
}

void __58__AnalyticsProcessor_linkTestEventOn_at_with_andResetMoc___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor linkTestEventOn:", "", &v21, 2u);
  }

  if (*(a1 + 32))
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = +[WADeviceAnalyticsLinkTestRecord entity];
    v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 32)];

    if (v6)
    {
      (*(*(a1 + 56) + 16))();
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = [*(*(a1 + 40) + 8) bssForBSSID:v7 allowCreate:0 prefetchProperties:0 withError:0];
        if (v8)
        {
          v9 = v8;
          v10 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 136446466;
            v22 = "[AnalyticsProcessor linkTestEventOn:at:with:andResetMoc:]_block_invoke";
            v23 = 1024;
            v24 = 677;
            _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Associating LinkTest to BSS", &v21, 0x12u);
          }

          [v6 setBss:v9];
LABEL_15:

          *(*(*(a1 + 64) + 8) + 24) = 1;
          v12 = [*(a1 + 40) managedObjectContextSaveThenReset:*(a1 + 72) withError:0];
          v13 = *(*(a1 + 64) + 8);
          if (v12)
          {
            v14 = *(v13 + 24);
          }

          else
          {
            v14 = 0;
          }

          *(v13 + 24) = v14 & 1;
          goto LABEL_19;
        }
      }

      else
      {
        v11 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v21 = 136446466;
          v22 = "[AnalyticsProcessor linkTestEventOn:at:with:andResetMoc:]_block_invoke";
          v23 = 1024;
          v24 = 673;
          _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Insufficient info to associate recovery to bss, leaving unlinked", &v21, 0x12u);
        }
      }

      v9 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136446466;
        v22 = "[AnalyticsProcessor linkTestEventOn:at:with:andResetMoc:]_block_invoke";
        v23 = 1024;
        v24 = 680;
        _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:No bssMo found", &v21, 0x12u);
      }

      goto LABEL_15;
    }

    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v19 = +[WADeviceAnalyticsLinkTestRecord entity];
      v20 = [v19 name];
      v21 = 136446722;
      v22 = "[AnalyticsProcessor linkTestEventOn:at:with:andResetMoc:]_block_invoke";
      v23 = 1024;
      v24 = 666;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create new %@ record", &v21, 0x1Cu);
    }
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 32);
      v21 = 136446722;
      v22 = "[AnalyticsProcessor linkTestEventOn:at:with:andResetMoc:]_block_invoke";
      v23 = 1024;
      v24 = 663;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: eventDate(%@)", &v21, 0x1Cu);
    }
  }

LABEL_19:

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v15))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v16 = @"SUCCESSFUL";
    }

    else
    {
      v16 = @"FAILED";
    }

    v21 = 138412290;
    v22 = v16;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor linkTestEventOn:", "%@", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)diagnosticEventAt:(id)at with:(id)with andResetMoc:(BOOL)moc
{
  atCopy = at;
  withCopy = with;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__AnalyticsProcessor_diagnosticEventAt_with_andResetMoc___block_invoke;
  v15[3] = &unk_1E830DA10;
  v11 = atCopy;
  v16 = v11;
  selfCopy = self;
  v12 = withCopy;
  v18 = v12;
  v19 = &v21;
  mocCopy = moc;
  [viewContext performBlockAndWait:v15];

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __57__AnalyticsProcessor_diagnosticEventAt_with_andResetMoc___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor diagnosticEvent", "", &v16, 2u);
  }

  if (*(a1 + 32))
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = +[WADeviceAnalyticsDiagnosticStateRecord entity];
    v6 = [v4 newDatedEventObjectFor:v5 withDate:*(a1 + 32)];

    if (v6)
    {
      (*(*(a1 + 48) + 16))();
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v7 = [*(a1 + 40) managedObjectContextSaveThenReset:*(a1 + 64) withError:0];
      v8 = *(*(a1 + 56) + 8);
      if (v7)
      {
        v9 = *(v8 + 24);
      }

      else
      {
        v9 = 0;
      }

      *(v8 + 24) = v9 & 1;
    }

    else
    {
      v6 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v14 = +[WADeviceAnalyticsDiagnosticStateRecord entity];
        v15 = [v14 name];
        v16 = 136446722;
        v17 = "[AnalyticsProcessor diagnosticEventAt:with:andResetMoc:]_block_invoke";
        v18 = 1024;
        v19 = 707;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to create new %@ record", &v16, 0x1Cu);
      }
    }
  }

  else
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v13 = *(a1 + 32);
      v16 = 136446722;
      v17 = "[AnalyticsProcessor diagnosticEventAt:with:andResetMoc:]_block_invoke";
      v18 = 1024;
      v19 = 704;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: eventDate(%@)", &v16, 0x1Cu);
    }
  }

  v10 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v10))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v11 = @"SUCCESSFUL";
    }

    else
    {
      v11 = @"FAILED";
    }

    v16 = 138412290;
    v17 = v11;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor diagnosticEvent", "%@", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)lqmEvent:(id)event on:(id)on at:(id)at andReset:(BOOL)reset
{
  v35 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  onCopy = on;
  atCopy = at;
  v13 = atCopy;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!eventCopy)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v30 = "[AnalyticsProcessor lqmEvent:on:at:andReset:]";
      v31 = 1024;
      v32 = 730;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: lqm(%@)", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  if (!onCopy)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v30 = "[AnalyticsProcessor lqmEvent:on:at:andReset:]";
      v31 = 1024;
      v32 = 731;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: bssid(%@)", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  if (!atCopy)
  {
    v18 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v30 = "[AnalyticsProcessor lqmEvent:on:at:andReset:]";
      v31 = 1024;
      v32 = 732;
      v33 = 2112;
      v34 = 0;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: eventDate(%@)", buf, 0x1Cu);
    }

LABEL_14:

    goto LABEL_5;
  }

  viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__AnalyticsProcessor_lqmEvent_on_at_andReset___block_invoke;
  v19[3] = &unk_1E830DA38;
  v23 = &v25;
  v19[4] = self;
  v20 = eventCopy;
  v21 = onCopy;
  v22 = v13;
  resetCopy = reset;
  [viewContext performBlockAndWait:v19];

LABEL_5:
  v15 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

void __46__AnalyticsProcessor_lqmEvent_on_at_andReset___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v3))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateUsage:UsageWeeklyMO", "", &v17, 2u);
  }

  v4 = [*(a1 + 32) persistentContainer];
  v5 = +[UsageWeeklyMO entity];
  *(*(*(a1 + 64) + 8) + 24) = [v4 updateUsage:v5 with:*(a1 + 40) on:*(a1 + 48) at:*(a1 + 56)];

  v6 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v6))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v7 = @"SUCCESSFUL";
    }

    else
    {
      v7 = @"FAILED";
    }

    v17 = 138412290;
    v18 = v7;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateUsage:UsageWeeklyMO", "%@", &v17, 0xCu);
  }

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateUsage:UsageMonthlyMO", "", &v17, 2u);
  }

  v9 = [*(a1 + 32) persistentContainer];
  v10 = +[UsageMonthlyMO entity];
  *(*(*(a1 + 64) + 8) + 24) = [v9 updateUsage:v10 with:*(a1 + 40) on:*(a1 + 48) at:*(a1 + 56)];

  v11 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v11))
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v12 = @"SUCCESSFUL";
    }

    else
    {
      v12 = @"FAILED";
    }

    v17 = 138412290;
    v18 = v12;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateUsage:UsageMonthlyMO", "%@", &v17, 0xCu);
  }

  v13 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 72) withError:0];
  v14 = *(*(a1 + 64) + 8);
  if (v13)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15 & 1;
  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateNetwork:(id)network withDeploymentCoverage:(signed __int16)coverage andResetMoc:(BOOL)moc
{
  coverageCopy = coverage;
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = v9;
  if (networkCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = WADeploymentCoverageToString(coverageCopy);
      *buf = 136447234;
      v26 = "[AnalyticsProcessor updateNetwork:withDeploymentCoverage:andResetMoc:]";
      v27 = 1024;
      v28 = 756;
      v29 = 2112;
      v30 = networkCopy;
      v31 = 2112;
      v32 = v11;
      v33 = 2048;
      v34 = coverageCopy;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:SSID: %@ deploymentCoverage: %@ (%lu)", buf, 0x30u);
    }

    viewContext = [(WAPersistentContainer *)self->_persistentContainer viewContext];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__AnalyticsProcessor_updateNetwork_withDeploymentCoverage_andResetMoc___block_invoke;
    v16[3] = &unk_1E830DA60;
    v16[4] = self;
    v19 = coverageCopy;
    v17 = networkCopy;
    v18 = &v21;
    mocCopy = moc;
    [viewContext performBlockAndWait:v16];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v26 = "[AnalyticsProcessor updateNetwork:withDeploymentCoverage:andResetMoc:]";
      v27 = 1024;
      v28 = 754;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "%{public}s::%d:missing required parameter: ssid(%@)", buf, 0x1Cu);
    }
  }

  v13 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __71__AnalyticsProcessor_updateNetwork_withDeploymentCoverage_andResetMoc___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateNetwork:withDeploymentCoverage:", "", &v17, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = +[NetworkMO entity];
  v5 = *(a1 + 40);
  v23 = @"ssid";
  v24[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v7 = [v3 uniqueObjectFor:v4 withConstraints:v6 allowCreate:0 prefetchProperties:&unk_1F483E440];

  if (v7)
  {
    [v7 setCoverageDetermination:*(a1 + 56)];
    v8 = [*(a1 + 32) managedObjectContextSaveThenReset:*(a1 + 58) withError:0];
    v9 = *(*(a1 + 48) + 8);
    if (v8)
    {
      v10 = *(v9 + 24);
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 24) = v10 & 1;
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v11))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v12 = @"SUCCESSFUL";
      }

      else
      {
        v12 = @"FAILED";
      }

      v17 = 138412290;
      v18 = v12;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor updateNetwork:withDeploymentCoverage:", "%@", &v17, 0xCu);
    }
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v17 = 136446722;
      v18 = "[AnalyticsProcessor updateNetwork:withDeploymentCoverage:andResetMoc:]_block_invoke";
      v19 = 1024;
      v20 = 765;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Network not found for %@", &v17, 0x1Cu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v11))
    {
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v16 = @"SUCCESSFUL";
      }

      else
      {
        v16 = @"FAILED";
      }

      v17 = 138412290;
      v18 = v16;
      goto LABEL_12;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)processMetricWiFiStats:(id)stats
{
  v15 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[AnalyticsProcessor processMetricWiFiStats:]";
    v11 = 1024;
    v12 = 788;
    v13 = 2080;
    v14 = "[AnalyticsProcessor processMetricWiFiStats:]";
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%s", buf, 0x1Cu);
  }

  managedObjectHandler = [(AnalyticsProcessor *)self managedObjectHandler];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AnalyticsProcessor_processMetricWiFiStats___block_invoke;
  v8[3] = &unk_1E830DA88;
  v8[4] = self;
  [managedObjectHandler performBlockOnManagedObjectContext:statsCopy block:v8];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_processMetricWiFiStats:(id)stats
{
  v39 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processMetricWiFiStats", "", buf, 2u);
  }

  if (statsCopy)
  {
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    managedObjectHandler = [(AnalyticsProcessor *)self managedObjectHandler];
    managedObjectContext = [managedObjectHandler managedObjectContext];
    v8 = [WiFiStatMO generateInstance:managedObjectContext];

    entity = [v8 entity];
    attributesByName = [entity attributesByName];
    allKeys = [attributesByName allKeys];

    v12 = [statsCopy valueForKey:@"date"];

    if (v12)
    {
      [statsCopy valueForKey:@"date"];
    }

    else
    {
      [MEMORY[0x1E695DF00] date];
    }
    v13 = ;
    [v8 setDate:v13];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = statsCopy;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ([allKeys containsObject:v19])
          {
            v20 = [v14 objectForKeyedSubscript:v19];
            [v8 setValue:v20 forKey:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    v21 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v21, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processMetricWiFiStats saveMoc", "", buf, 2u);
    }

    managedObjectHandler2 = [(AnalyticsProcessor *)selfCopy managedObjectHandler];
    [managedObjectHandler2 managedObjectContextSave:1 reset:1 release:1 withError:0];

    v23 = WALogCategoryDeviceStoreHandle();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C8460000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processMetricWiFiStats saveMoc", "", buf, 2u);
    }

    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v36 = "[AnalyticsProcessor _processMetricWiFiStats:]";
      v37 = 1024;
      v38 = 828;
      _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Exiting", buf, 0x12u);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v27 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v36 = "[AnalyticsProcessor _processMetricWiFiStats:]";
      v37 = 1024;
      v38 = 798;
      _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, "%{public}s::%d:bad metricData", buf, 0x12u);
    }
  }

  v25 = WALogCategoryDeviceStoreHandle();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8460000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AnalyticsProcessor processMetricWiFiStats", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)canRunPoliciesOnCurrentProcess
{
  v2 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
  v3 = v2;
  v4 = @"wifianalyticsd";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v8 = [processName isEqualToString:v5];

  return v8;
}

- (BOOL)updateRoamPoliciesForSourceBssid:(id)bssid andUpdateRoamCache:(BOOL)cache
{
  cacheCopy = cache;
  v40 = *MEMORY[0x1E69E9840];
  bssidCopy = bssid;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (bssidCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
    v9 = v8;
    v10 = @"wifianalyticsd";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v14 = [processName isEqualToString:v11];

    v15 = WALogCategoryDeviceStoreHandle();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = @"NO";
        v33 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssid:andUpdateRoamCache:]";
        v34 = 1024;
        v35 = 856;
        *buf = 136446978;
        if (cacheCopy)
        {
          v17 = @"YES";
        }

        v36 = 2112;
        v37 = bssidCopy;
        v38 = 2112;
        v39 = v17;
        _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateRoamPoliciesForSourceBssid:(%@)andUpdateRoamCache:(%@) on current process", buf, 0x26u);
      }

      persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
      viewContext = [persistentContainer viewContext];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __74__AnalyticsProcessor_updateRoamPoliciesForSourceBssid_andUpdateRoamCache___block_invoke;
      v24[3] = &unk_1E830DAB0;
      v24[4] = self;
      v27 = cacheCopy;
      v25 = bssidCopy;
      v26 = &v28;
      [viewContext performBlockAndWait:v24];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v33 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssid:andUpdateRoamCache:]";
        v34 = 1024;
        v35 = 854;
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v23 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v33 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssid:andUpdateRoamCache:]";
      v34 = 1024;
      v35 = 850;
      _os_log_impl(&dword_1C8460000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:nil bssid", buf, 0x12u);
    }

    v11 = 0;
  }

  v20 = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

void __74__AnalyticsProcessor_updateRoamPoliciesForSourceBssid_andUpdateRoamCache___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistentContainer];
  v3 = [v2 bssForBssid:*(a1 + 40) prefetchProperties:0 withError:0];

  if (v3)
  {
    if (*(a1 + 56) == 1)
    {
      v4 = [*(a1 + 32) persistentContainer];
      v5 = [v4 mostRecentRoamsFromBSS:v3 withPrefetchedProperties:&unk_1F483E458 limit:1];
    }

    else
    {
      v5 = 0;
    }

    if ([v5 count])
    {
      v6 = *(a1 + 32);
      v7 = [v5 firstObject];
      *(*(*(a1 + 48) + 8) + 24) = [v6 updateRoamPoliciesForSourceBss:v3 andRoam:v7 withReason:@"immediate processing of Roam Record via XPC"];
    }
  }

  else
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = 136446722;
      v12 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssid:andUpdateRoamCache:]_block_invoke";
      v13 = 1024;
      v14 = 862;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:record for bssid %@ not found", &v11, 0x1Cu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)signalPotentialNewIORChannels
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess])
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136446466;
      v10 = "[AnalyticsProcessor signalPotentialNewIORChannels]";
      v11 = 1024;
      v12 = 882;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function not expected to be called on process in charge of policies - bailing", &v9, 0x12u);
    }
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136446466;
      v10 = "[AnalyticsProcessor signalPotentialNewIORChannels]";
      v11 = 1024;
      v12 = 886;
      _os_log_impl(&dword_1C8460000, v3, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling signalPotentialNewIORChannels: thru WAClient", &v9, 0x12u);
    }

    v4 = +[WAClient sharedClient];
    v5 = v4;
    if (v4)
    {
      [v4 signalPotentialNewIORChannelsAndReply:&__block_literal_global_0];
    }

    else
    {
      v8 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = 136446466;
        v10 = "[AnalyticsProcessor signalPotentialNewIORChannels]";
        v11 = 1024;
        v12 = 888;
        _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to get WAClient", &v9, 0x12u);
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __51__AnalyticsProcessor_signalPotentialNewIORChannels__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[AnalyticsProcessor signalPotentialNewIORChannels]_block_invoke";
      v8 = 1024;
      v9 = 891;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to send signalPotentialNewIORChannels: XPC to wifianalyticsd: %@", &v6, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)fetchBSSesLastSeenAfterLastPolicyRunFor:(id)for withError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v7 = objc_opt_new();
  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  v28 = 0;
  v9 = [persistentContainer mostRecentPolicy:forCopy withError:&v28];
  v10 = v28;

  if (v9)
  {
    [v9 date];
  }

  else
  {
    [(AnalyticsProcessor *)self defaultQueryFrom];
  }
  v11 = ;
  if (!v10)
  {
    errorCopy = error;
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v31 = "[AnalyticsProcessor fetchBSSesLastSeenAfterLastPolicyRunFor:withError:]";
      v32 = 1024;
      v33 = 911;
      v34 = 2112;
      v35 = forCopy;
      v36 = 2112;
      v37 = v9;
    }

    v26 = forCopy;

    persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
    v14 = +[BSSMO entity];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"lastSeen > %@", v11];
    v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastSeen" ascending:0];
    v29 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    v27 = 0;
    v18 = [persistentContainer2 fetchObjects:v14 withPredicate:v15 withSorting:v17 withPrefetchedProperties:0 withLimit:0 withError:&v27];
    v10 = v27;
    [v7 setBssesToProcess:v18];

    [v7 setQueryFrom:v11];
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      queryFrom = [v7 queryFrom];
      bssesToProcess = [v7 bssesToProcess];
      *buf = 136446978;
      v31 = "[AnalyticsProcessor fetchBSSesLastSeenAfterLastPolicyRunFor:withError:]";
      v32 = 1024;
      v33 = 919;
      v34 = 2112;
      v35 = queryFrom;
      v36 = 2112;
      v37 = bssesToProcess;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:BSSes last seen after %@: %@", buf, 0x26u);
    }

    error = errorCopy;
    forCopy = v26;
  }

  if (error)
  {
    v22 = v10;
    *error = v10;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)poorCoverageAnalysisWithReason:(id)reason
{
  reasonCopy = reason;
  if (_os_feature_enabled_impl())
  {
    v5 = [WADeploymentAnalyzer alloc];
    persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
    v7 = [(WADeploymentAnalyzer *)v5 initWithPersistentContainer:persistentContainer];
    v13 = 0;
    [(WADeploymentAnalyzer *)v7 updateHomeNetworksForDeploymentIssuesWithReason:reasonCopy withError:&v13];
    v8 = v13;

    v12 = v8;
    [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:&v12];
    v9 = v12;

    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)processDeferredPriorityPoliciesWithReason:(id)reason
{
  v29 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
  v6 = v5;
  v7 = @"wifianalyticsd";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v11 = [processName isEqualToString:v8];

  if (v11)
  {
    persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
    viewContext = [persistentContainer viewContext];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__AnalyticsProcessor_processDeferredPriorityPoliciesWithReason___block_invoke;
    v18[3] = &unk_1E830DAF8;
    v18[4] = self;
    v19 = reasonCopy;
    v20 = &v21;
    [viewContext performBlockAndWait:v18];
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v26 = "[AnalyticsProcessor processDeferredPriorityPoliciesWithReason:]";
      v27 = 1024;
      v28 = 947;
      _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_FAULT, "%{public}s::%d:Only the processInChargeOfDataProcessingForPolicies can run this function", buf, 0x12u);
    }
  }

  v14 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

uint64_t __64__AnalyticsProcessor_processDeferredPriorityPoliciesWithReason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) poorCoverageAnalysisWithReason:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)updateRoamPoliciesForSourceBssAndRoamWithReason:(id)reason withError:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v52 = 0;
  v6 = [(AnalyticsProcessor *)self fetchBSSesLastSeenAfterLastPolicyRunFor:@"updateRoamPoliciesForSourceBss:andRoam:" withError:&v52];
  v7 = v52;
  if (v7)
  {
    v8 = v7;
    v28 = 0;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v51 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  obj = [v6 bssesToProcess];
  v34 = [obj countByEnumeratingWithState:&v48 objects:v67 count:16];
  v8 = 0;
  if (v34)
  {
    v36 = *v49;
    errorCopy = error;
    v37 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v9;
        v10 = *(*(&v48 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
        v12 = +[RoamMO entity];
        queryFrom = [v6 queryFrom];
        v14 = [RoamMO successfulRoamsOutOf:v10 since:queryFrom];
        v15 = +[WAPersistentContainer sortByOlderDateFirst];
        v66 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        v47 = v8;
        v17 = [persistentContainer fetchObjects:v12 withPredicate:v14 withSorting:v16 withPrefetchedProperties:&unk_1F483E470 withLimit:1 withError:&v47];
        v39 = v47;

        v18 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446978;
          v54 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssAndRoamWithReason:withError:]";
          v55 = 1024;
          v56 = 983;
          v57 = 2112;
          v58 = v10;
          v59 = 2112;
          v60 = v17;
          _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Latest successful roam from %@: %@", buf, 0x26u);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v43 objects:v65 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          v8 = v39;
          while (2)
          {
            v23 = 0;
            v24 = v8;
            do
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v43 + 1) + 8 * v23);
              v26 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446978;
                v54 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssAndRoamWithReason:withError:]";
                v55 = 1024;
                v56 = 986;
                v57 = 2112;
                v58 = v10;
                v59 = 2112;
                v60 = v25;
                _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateRoamPoliciesForSourceBss:%@ andRoam:%@", buf, 0x26u);
              }

              v42 = v24;
              v27 = [(AnalyticsProcessor *)self updateRoamPoliciesForSourceBss:v10 andRoam:v25 withReason:reasonCopy withError:&v42];
              v8 = v42;

              if (!v27)
              {
                v29 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136447490;
                  v54 = "[AnalyticsProcessor updateRoamPoliciesForSourceBssAndRoamWithReason:withError:]";
                  v55 = 1024;
                  v56 = 988;
                  v57 = 2112;
                  v58 = v10;
                  v59 = 2112;
                  v60 = v25;
                  v61 = 2112;
                  v62 = reasonCopy;
                  v63 = 2112;
                  v64 = v8;
                  _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_ERROR, "%{public}s::%d:updateRoamPoliciesForSourceBss:%@ andRoam:%@ withReason:%@ FAILED %@ - bailing", buf, 0x3Au);
                }

                objc_autoreleasePoolPop(context);
                v28 = 0;
                error = errorCopy;
                v6 = v37;
                goto LABEL_28;
              }

              ++v23;
              v24 = v8;
            }

            while (v21 != v23);
            v21 = [v19 countByEnumeratingWithState:&v43 objects:v65 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v8 = v39;
        }

        objc_autoreleasePoolPop(context);
        v6 = v37;
        v9 = v38 + 1;
      }

      while (v38 + 1 != v34);
      v28 = 1;
      error = errorCopy;
      v34 = [obj countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v34);
  }

  else
  {
    v28 = 1;
  }

LABEL_28:

  if (error)
  {
LABEL_29:
    v30 = v8;
    *error = v8;
  }

LABEL_30:

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)networkDeploymentMetricCheckAndSubmitWithReason:(id)reason
{
  v30 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v22 = 0;
  v5 = [(AnalyticsProcessor *)self fetchBSSesLastSeenAfterLastPolicyRunFor:@"networkDeploymentMetricCheckAndSubmit:" withError:&v22];
  v6 = v22;
  if (v6)
  {
    bssesToProcess = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(bssesToProcess, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "[AnalyticsProcessor networkDeploymentMetricCheckAndSubmitWithReason:]";
      v26 = 1024;
      v27 = 1004;
      v28 = 2112;
      v29 = @"networkDeploymentMetricCheckAndSubmit:";
      _os_log_impl(&dword_1C8460000, bssesToProcess, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch BSSes last seen after last policy run for %@", buf, 0x1Cu);
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    bssesToProcess = [v5 bssesToProcess];
    v8 = [bssesToProcess countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = v5;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(bssesToProcess);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            bssid = [v12 bssid];
            *buf = 136446722;
            v25 = "[AnalyticsProcessor networkDeploymentMetricCheckAndSubmitWithReason:]";
            v26 = 1024;
            v27 = 1007;
            v28 = 2112;
            v29 = bssid;
            _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Calling networkDeploymentMetricCheckAndSubmit:%@", buf, 0x1Cu);
          }

          [(AnalyticsProcessor *)self networkDeploymentMetricCheckAndSubmit:v12 withReason:reasonCopy];
        }

        v9 = [bssesToProcess countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
      v6 = 0;
      v5 = v17;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

- (BOOL)classifyTraitsForNetworksWithReason:(id)reason
{
  v58 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  v43 = 0;
  v5 = [persistentContainer mostRecentPolicy:@"classifyTraitsForNetwork:distanceFilter:" withError:&v43];
  v6 = v43;

  if (v5)
  {
    [v5 date];
  }

  else
  {
    [(AnalyticsProcessor *)self defaultQueryFrom];
  }
  v7 = ;
  if (v6)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v45 = "[AnalyticsProcessor classifyTraitsForNetworksWithReason:]";
      v46 = 1024;
      v47 = 1027;
      v48 = 2112;
      v49 = @"classifyTraitsForNetwork:distanceFilter:";
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:Failed to fetch most recent policy run for %@", buf, 0x1Cu);
    }

    v10 = 0;
    v30 = 1;
  }

  else
  {
    persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
    v9 = +[NetworkMO entity];
    v42 = 0;
    v10 = [persistentContainer2 fetchObjects:v9 withPredicate:0 withSorting:0 withPrefetchedProperties:0 withLimit:0 withError:&v42];
    v6 = v42;

    if (v6)
    {
      v30 = 1;
      goto LABEL_25;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v10;
    v6 = [v11 countByEnumeratingWithState:&v38 objects:v57 count:16];
    if (v6)
    {
      selfCopy = self;
      obj = v11;
      v34 = v5;
      v12 = *v39;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = [(__CFString *)v14 bss];
          v16 = +[BSSMO propertyForAging];
          v17 = [WAPersistentContainer sortByNewestDateFirstOnProperty:v16];
          v56 = v17;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
          v19 = [v15 sortedArrayUsingDescriptors:v18];

          firstObject = [v19 firstObject];
          lastSeen = [firstObject lastSeen];
          [lastSeen timeIntervalSinceReferenceDate];
          v23 = v22;
          [v7 timeIntervalSinceReferenceDate];
          v25 = v24;

          if (v23 >= v25)
          {
            if (![(AnalyticsProcessor *)selfCopy classifyTraitsForNetwork:v14 withReason:reasonCopy])
            {
              v31 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v45 = "[AnalyticsProcessor classifyTraitsForNetworksWithReason:]";
                v46 = 1024;
                v47 = 1061;
                v48 = 2112;
                v49 = v14;
                v50 = 2112;
                v51 = reasonCopy;
                _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_ERROR, "%{public}s::%d:classifyTraitsForNetwork:%@ withReason:%@ FAILED - bailing", buf, 0x26u);
              }

              v6 = 0;
              v30 = 0;
              goto LABEL_23;
            }
          }

          else
          {
            v26 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              firstObject2 = [v19 firstObject];
              lastSeen2 = [firstObject2 lastSeen];
              firstObject3 = [v19 firstObject];
              *buf = 136447490;
              v45 = "[AnalyticsProcessor classifyTraitsForNetworksWithReason:]";
              v46 = 1024;
              v47 = 1056;
              v48 = 2112;
              v49 = v14;
              v50 = 2112;
              v51 = lastSeen2;
              v52 = 2112;
              v53 = firstObject3;
              v54 = 2112;
              v55 = v7;
              _os_log_impl(&dword_1C8460000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@ most recently seen at %@ (%@) earlier than lastClassifyTrains run (%@) -- skipping", buf, 0x3Au);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v38 objects:v57 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v30 = 1;
LABEL_23:
      v11 = obj;
      v10 = obj;
      v5 = v34;
    }

    else
    {
      v30 = 1;
      v10 = v11;
    }
  }

LABEL_25:
  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)processDeferredPoliciesWithReason:(id)reason
{
  v74 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__0;
  v66 = __Block_byref_object_dispose__0;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v5 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
  v6 = v5;
  v7 = @"wifianalyticsd";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  v11 = [processName isEqualToString:v8];

  if ((v11 & 1) == 0)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 136446466;
    v69 = "[AnalyticsProcessor processDeferredPoliciesWithReason:]";
    v70 = 1024;
    v71 = 1075;
    v34 = "%{public}s::%d:Only the processInChargeOfDataProcessingForPolicies can run this function";
    v35 = v30;
    v36 = OS_LOG_TYPE_FAULT;
    v37 = 18;
LABEL_11:
    _os_log_impl(&dword_1C8460000, v35, v36, v34, buf, v37);
    goto LABEL_6;
  }

  v12 = v63;
  v55 = v63[5];
  v13 = [(AnalyticsProcessor *)self ageOutAnalyticsWithError:&v55 withReason:reasonCopy];
  objc_storeStrong(v12 + 5, v55);
  *(v59 + 24) = v13;
  if (!v13)
  {
    v30 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v38 = v63[5];
    *buf = 136446722;
    v69 = "[AnalyticsProcessor processDeferredPoliciesWithReason:]";
    v70 = 1024;
    v71 = 1079;
    v72 = 2112;
    v73 = v38;
    v34 = "%{public}s::%d:Unable to age out analytics, bailing. %@";
    v35 = v30;
    v36 = OS_LOG_TYPE_ERROR;
    v37 = 28;
    goto LABEL_11;
  }

  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  viewContext = [persistentContainer viewContext];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke;
  v51[3] = &unk_1E830DB20;
  v53 = v56;
  v51[4] = self;
  v16 = reasonCopy;
  v52 = v16;
  v54 = &v58;
  [viewContext performBlockAndWait:v51];

  date = [MEMORY[0x1E695DF00] date];
  [(AnalyticsProcessor *)self setRefDate:date];

  refDate = [(AnalyticsProcessor *)self refDate];
  v19 = [refDate dateByAddingTimeInterval:-86400.0];
  [(AnalyticsProcessor *)self setDefaultQueryFrom:v19];

  persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
  viewContext2 = [persistentContainer2 viewContext];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke_2;
  v46[3] = &unk_1E830DB48;
  v48 = v56;
  v46[4] = self;
  v22 = v16;
  v47 = v22;
  v49 = &v62;
  v50 = &v58;
  [viewContext2 performBlockAndWait:v46];

  persistentContainer3 = [(AnalyticsProcessor *)self persistentContainer];
  viewContext3 = [persistentContainer3 viewContext];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke_3;
  v42[3] = &unk_1E830DB20;
  v44 = v56;
  v42[4] = self;
  v25 = v22;
  v43 = v25;
  v45 = &v58;
  [viewContext3 performBlockAndWait:v42];

  persistentContainer4 = [(AnalyticsProcessor *)self persistentContainer];
  viewContext4 = [persistentContainer4 viewContext];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke_4;
  v40[3] = &unk_1E830DB70;
  v40[4] = self;
  v41 = v25;
  [viewContext4 performBlockAndWait:v40];

  v28 = v63;
  v39 = v63[5];
  [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:1 withError:&v39];
  v29 = v39;
  v30 = v28[5];
  v28[5] = v29;
LABEL_6:

  v31 = *(v59 + 24);
  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  v32 = *MEMORY[0x1E69E9840];
  return v31 & 1;
}

uint64_t __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) updateUsagePoliciesWithReason:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v3 = *(*(a1 + 56) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 24) = v4 & 1;
  return result;
}

void __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 updateRoamPoliciesForSourceBssAndRoamWithReason:v3 withError:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
  v6 = *(*(a1 + 64) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7 & 1;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 32) managedObjectContextSaveThenReset:1 withError:0];
  }
}

uint64_t __56__AnalyticsProcessor_processDeferredPoliciesWithReason___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) classifyTraitsForNetworksWithReason:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  v3 = *(*(a1 + 56) + 8);
  if (*(v3 + 24) == 1)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 24) = v4 & 1;
  return result;
}

- (BOOL)updateUsagePoliciesWithReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  canRunPoliciesOnCurrentProcess = [(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess];
  v6 = WALogCategoryDeviceStoreHandle();
  v7 = v6;
  if (canRunPoliciesOnCurrentProcess)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v20 = "[AnalyticsProcessor updateUsagePoliciesWithReason:]";
      v21 = 1024;
      v22 = 1129;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateTopUsedNetworksWithReason: on current process", buf, 0x12u);
    }

    usagePoliciesHandler = [(AnalyticsProcessor *)self usagePoliciesHandler];
    v9 = [usagePoliciesHandler updateTopUsedByUsageWithReason:reasonCopy];

    usagePoliciesHandler2 = [(AnalyticsProcessor *)self usagePoliciesHandler];
    v11 = [usagePoliciesHandler2 updateBandsInUniqueMOsWithReason:reasonCopy] & v9;

    v18 = 0;
    [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:&v18];
    v7 = v18;
    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v13 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
      v14 = v13;
      v15 = @"wifianalyticsd";
      *buf = 136446722;
      v20 = "[AnalyticsProcessor updateUsagePoliciesWithReason:]";
      if (v13)
      {
        v15 = v13;
      }

      v21 = 1024;
      v22 = 1135;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function is not expected to run on processes else than %@", buf, 0x1Cu);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)updateRoamPoliciesForSourceBss:(id)bss andRoam:(id)roam withReason:(id)reason andRefDate:(id)date withError:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  bssCopy = bss;
  roamCopy = roam;
  reasonCopy = reason;
  dateCopy = date;
  bssid = [bssCopy bssid];
  if (bssid)
  {
    v67 = reasonCopy;
    if ([(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess])
    {
      v16 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        bssid2 = [bssCopy bssid];
        *buf = 136446722;
        v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
        v80 = 1024;
        v81 = 1158;
        v82 = 2112;
        v83 = bssid2;
        _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling buildRoamPoliciesForSourceBSS:%@ on current process", buf, 0x1Cu);
      }

      context = objc_autoreleasePoolPush();
      roamPolicyHandler = [(AnalyticsProcessor *)self roamPolicyHandler];
      numRoamSamples = self->_numRoamSamples;
      v75 = 0;
      v20 = [roamPolicyHandler buildRoamPoliciesForSourceBSS:bssCopy numRoamSamples:numRoamSamples withError:&v75];
      v21 = v75;

      if (!roamCopy || !v20)
      {
        v24 = v21;
LABEL_24:
        persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
        v46 = +[PoliciesRoamingMO entity];
        v66 = dateCopy;
        if (dateCopy)
        {
          v47 = [persistentContainer newDatedEventObjectFor:v46 withDate:dateCopy];
        }

        else
        {
          date = [MEMORY[0x1E695DF00] date];
          v47 = [persistentContainer newDatedEventObjectFor:v46 withDate:date];
        }

        [v47 setPolicyType:@"updateRoamPoliciesForSourceBss:andRoam:"];
        [v47 setReasonForRunning:v67];
        [v47 setOutcome:v24 == 0];
        persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
        v72 = v21;
        [v47 setBSSto:bssCopy orBssid:bssid onContainer:persistentContainer2 withError:&v72];
        v50 = v72;

        if (roamCopy && !v50)
        {
          v71 = 0;
          [v47 setRoamto:roamCopy withError:&v71];
          v50 = v71;
        }

        v51 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          policyType = [v47 policyType];
          date2 = [v47 date];
          v54 = [v47 bss];
          [v47 roam];
          v64 = bssCopy;
          v55 = roamCopy;
          v57 = v56 = bssid;
          *buf = 136447746;
          v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
          v80 = 1024;
          v81 = 1187;
          v82 = 2112;
          v83 = policyType;
          v84 = 2112;
          v85 = date2;
          v86 = 2112;
          v87 = v54;
          v88 = 2112;
          v89 = v57;
          v90 = 2112;
          v91 = v50;
          _os_log_impl(&dword_1C8460000, v51, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@) with %@ and %@ - %@", buf, 0x44u);

          bssid = v56;
          roamCopy = v55;
          bssCopy = v64;
        }

        v70 = v50;
        [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:&v70];
        v36 = v70;

        objc_autoreleasePoolPop(context);
        dateCopy = v66;
        reasonCopy = v67;
        goto LABEL_33;
      }

      roamPolicyHandler2 = [(AnalyticsProcessor *)self roamPolicyHandler];
      v23 = self->_numRoamSamples;
      v74 = v21;
      [roamPolicyHandler2 buildRoamCacheInfoForBss:bssCopy numRoamSamples:v23 withError:&v74];
      v24 = v74;

      neighborCache = [roamCopy neighborCache];

      if (neighborCache)
      {
        roamPolicyHandler3 = [(AnalyticsProcessor *)self roamPolicyHandler];
        v27 = [roamPolicyHandler3 monitorDeploymentChangesAfterRoam:roamCopy];
        network = [bssCopy network];
        [network setDidDeploymentChange:v27];
      }

      network2 = [bssCopy network];
      didDeploymentChange = [network2 didDeploymentChange];

      v31 = WALogCategoryDeviceStoreHandle();
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
      if (didDeploymentChange)
      {
        if (v32)
        {
          *buf = 136446466;
          v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
          v80 = 1024;
          v81 = 1170;
          v33 = "%{public}s::%d:Deployment Changed, Reset Adaptive Roaming State Machine";
LABEL_22:
          _os_log_impl(&dword_1C8460000, v31, OS_LOG_TYPE_DEBUG, v33, buf, 0x12u);
        }
      }

      else if (v32)
      {
        *buf = 136446466;
        v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
        v80 = 1024;
        v81 = 1172;
        v33 = "%{public}s::%d:Deployment remained intact";
        goto LABEL_22;
      }

      v73 = v24;
      [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:&v73];
      v21 = v73;

      goto LABEL_24;
    }

    v34 = objc_autoreleasePoolPush();
    v69 = 0;
    v35 = [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:&v69];
    v36 = v69;
    v37 = WALogCategoryDeviceStoreHandle();
    v38 = v37;
    if (v35)
    {
      v39 = bssid;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
        v80 = 1024;
        v81 = 1200;
        _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling updateRoamPoliciesForSourceBssidupdateRoamPoliciesForSourceBssid: thru WAClient", buf, 0x12u);
      }

      v40 = dateCopy;

      v41 = +[WAClient sharedClient];
      if (v41)
      {
        bssid3 = [bssCopy bssid];
        v43 = [bssid3 copy];
        [v41 updateRoamPoliciesForSourceBssid:v43 andUpdateRoamCache:roamCopy != 0 andReply:&__block_literal_global_251];

        v44 = v36;
      }

      else
      {
        v62 = MEMORY[0x1E696ABC0];
        v76 = *MEMORY[0x1E696A588];
        v77 = @"Unable to get WAClient";
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v44 = [v62 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9003 userInfo:v63];

        bssid3 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(bssid3, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
          v80 = 1024;
          v81 = 1204;
          _os_log_impl(&dword_1C8460000, bssid3, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to get WAClient", buf, 0x12u);
        }
      }

      objc_autoreleasePoolPop(v34);
      v36 = v44;
      dateCopy = v40;
      bssid = v39;
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
        v80 = 1024;
        v81 = 1198;
        _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to save the MOC - won't call updateRoamPoliciesForSourceBssid: thru WAClient", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v34);
    }

    reasonCopy = v67;
  }

  else
  {
    v61 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v79 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]";
      v80 = 1024;
      v81 = 1154;
      v82 = 2112;
      v83 = bssCopy;
      _os_log_impl(&dword_1C8460000, v61, OS_LOG_TYPE_FAULT, "%{public}s::%d:nil bssMO.bssid: %@", buf, 0x1Cu);
    }

    v36 = 0;
  }

LABEL_33:
  if (error)
  {
    v58 = v36;
    *error = v36;
  }

  v59 = *MEMORY[0x1E69E9840];
  return v36 == 0;
}

void __93__AnalyticsProcessor_updateRoamPoliciesForSourceBss_andRoam_withReason_andRefDate_withError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "[AnalyticsProcessor updateRoamPoliciesForSourceBss:andRoam:withReason:andRefDate:withError:]_block_invoke";
      v8 = 1024;
      v9 = 1209;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_ERROR, "%{public}s::%d:Unable to send updateRoamPoliciesForSourceBssid: XPC to wifianalyticsd: %@", &v6, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)networkDeploymentMetricCheckAndSubmit:(id)submit withReason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  submitCopy = submit;
  reasonCopy = reason;
  canRunPoliciesOnCurrentProcess = [(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess];
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = v9;
  if (canRunPoliciesOnCurrentProcess)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v26 = 136446466;
      v27 = "[AnalyticsProcessor networkDeploymentMetricCheckAndSubmit:withReason:]";
      v28 = 1024;
      v29 = 1226;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling networkDeploymentMetricCheckAndSubmit:interval: on current process", &v26, 0x12u);
    }

    v11 = objc_autoreleasePoolPush();
    deploymentMetricHandler = [(AnalyticsProcessor *)self deploymentMetricHandler];
    [deploymentMetricHandler networkDeploymentMetricCheckAndSubmit:submitCopy interval:{-[AnalyticsProcessor deploymentMetricDiffDays](self, "deploymentMetricDiffDays")}];

    persistentContainer = self->_persistentContainer;
    v14 = +[PoliciesNetworkDeploymentMetricMO entity];
    refDate = [(AnalyticsProcessor *)self refDate];
    if (refDate)
    {
      v16 = [(WAPersistentContainer *)persistentContainer newDatedEventObjectFor:v14 withDate:refDate];
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v16 = [(WAPersistentContainer *)persistentContainer newDatedEventObjectFor:v14 withDate:date];
    }

    [v16 setPolicyType:@"networkDeploymentMetricCheckAndSubmit:"];
    [v16 setReasonForRunning:reasonCopy];
    [v16 setBss:submitCopy];
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      policyType = [v16 policyType];
      date2 = [v16 date];
      v24 = [v16 bss];
      v26 = 136447234;
      v27 = "[AnalyticsProcessor networkDeploymentMetricCheckAndSubmit:withReason:]";
      v28 = 1024;
      v29 = 1233;
      v30 = 2112;
      v31 = policyType;
      v32 = 2112;
      v33 = date2;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@) with %@", &v26, 0x30u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v17 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
      v18 = v17;
      v19 = @"wifianalyticsd";
      v26 = 136446722;
      v27 = "[AnalyticsProcessor networkDeploymentMetricCheckAndSubmit:withReason:]";
      if (v17)
      {
        v19 = v17;
      }

      v28 = 1024;
      v29 = 1236;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function is not expected to run on processes else than %@", &v26, 0x1Cu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)classifyTraitsForNetwork:(id)network withReason:(id)reason
{
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  reasonCopy = reason;
  canRunPoliciesOnCurrentProcess = [(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess];
  v9 = WALogCategoryDeviceStoreHandle();
  v10 = v9;
  if (canRunPoliciesOnCurrentProcess)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v25 = 136446722;
      v26 = "[AnalyticsProcessor classifyTraitsForNetwork:withReason:]";
      v27 = 1024;
      v28 = 1248;
      v29 = 2080;
      v30 = "[AnalyticsProcessor classifyTraitsForNetwork:withReason:]";
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Calling %s on current process", &v25, 0x1Cu);
    }

    v11 = objc_autoreleasePoolPush();
    v10 = [networkCopy classifyTraitsWithDistanceFilter:self->_persistentContainer container:4000.0];
    persistentContainer = self->_persistentContainer;
    v13 = +[PoliciesNetworkTraitsMO entity];
    date = [MEMORY[0x1E695DF00] date];
    v15 = [(WAPersistentContainer *)persistentContainer newDatedEventObjectFor:v13 withDate:date];

    [v15 setPolicyType:@"classifyTraitsForNetwork:distanceFilter:"];
    [v15 setOutcome:v10];
    [v15 setReasonForRunning:reasonCopy];
    [v15 setNetwork:networkCopy];
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      policyType = [v15 policyType];
      date2 = [v15 date];
      network = [v15 network];
      v25 = 136447234;
      v26 = "[AnalyticsProcessor classifyTraitsForNetwork:withReason:]";
      v27 = 1024;
      v28 = 1257;
      v29 = 2112;
      v30 = policyType;
      v31 = 2112;
      v32 = date2;
      v33 = 2112;
      v34 = network;
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@) for %@", &v25, 0x30u);
    }

    [(AnalyticsProcessor *)self managedObjectContextSaveThenReset:0 withError:0];
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v20 = +[WAUtil customProcessInChargeOfDataProcessingForPolicies];
      v21 = v20;
      v22 = @"wifianalyticsd";
      v25 = 136446722;
      v26 = "[AnalyticsProcessor classifyTraitsForNetwork:withReason:]";
      if (v20)
      {
        v22 = v20;
      }

      v27 = 1024;
      v28 = 1262;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function is not expected to run on processes else than %@", &v25, 0x1Cu);
    }

    LOBYTE(v10) = 1;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)updateRoamPoliciesAndSummarizeAnalyticsForNetwork:(id)network maxAgeInDays:(unint64_t)days
{
  v29 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  if ([(AnalyticsProcessor *)self canRunPoliciesOnCurrentProcess])
  {
    v6 = objc_autoreleasePoolPush();
    *v25 = 0;
    *&v25[8] = v25;
    *&v25[16] = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = objc_opt_new();
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v20 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]";
      v21 = 1024;
      v22 = 1274;
      v23 = 2112;
      v24 = networkCopy;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:%@", buf, 0x1Cu);
    }

    if (networkCopy)
    {
      managedObjectHandler = [(AnalyticsProcessor *)self managedObjectHandler];
      managedObjectContext = [managedObjectHandler managedObjectContext];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __85__AnalyticsProcessor_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays___block_invoke;
      v16[3] = &unk_1E830DAF8;
      v16[4] = self;
      v17 = networkCopy;
      v18 = v25;
      [managedObjectContext performBlockAndWait:v16];
    }

    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(*&v25[8] + 40);
      *buf = 136446722;
      v20 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]";
      v21 = 1024;
      v22 = 1313;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning:%@", buf, 0x1Cu);
    }

    v12 = *(*&v25[8] + 40);
    _Block_object_dispose(v25, 8);

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *v25 = 136446466;
      *&v25[4] = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]";
      *&v25[12] = 1024;
      *&v25[14] = 1317;
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

void __85__AnalyticsProcessor_updateRoamPoliciesAndSummarizeAnalyticsForNetwork_maxAgeInDays___block_invoke(uint64_t a1)
{
  v1 = a1;
  v99[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = +[NetworkMO entity];
  v4 = *(v1 + 40);
  v98 = @"ssid";
  v99[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  v6 = [v2 uniqueObjectFor:v3 withConstraints:v5 allowCreate:0 prefetchProperties:0];

  if (v6)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v7 = [v6 bss];
    v69 = [v7 countByEnumeratingWithState:&v80 objects:v97 count:16];
    if (v69)
    {
      v66 = v6;
      v67 = *v81;
      v8 = 0x1E696A000uLL;
      v75 = v1;
      v68 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v81 != v67)
          {
            objc_enumerationMutation(v7);
          }

          v72 = v9;
          v10 = *(*(&v80 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [*(v1 + 32) roamPolicyHandler];
          [v11 buildRoamPoliciesForSourceBSS:v10 numRoamSamples:*(*(v1 + 32) + 80) withError:0];

          v12 = [RoamPolicyStore neighborChannelsOf:v10];
          v13 = [v12 allObjects];

          v14 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v10 bssid];
            v16 = *(v1 + 40);
            v17 = [v10 roamTriggerRssi];
            *buf = 136447234;
            v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
            v86 = 1024;
            v87 = 1286;
            v88 = 2112;
            v89 = v15;
            v90 = 2112;
            v91 = v16;
            v92 = 2048;
            v93 = v17;
            _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:triggerRssi for bssid[%@] ssid[%@] : %ld", buf, 0x30u);
          }

          v18 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v10 bssid];
            v20 = *(v1 + 40);
            v21 = [v10 neighborBSSIDs];
            *buf = 136447234;
            v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
            v86 = 1024;
            v87 = 1287;
            v88 = 2112;
            v89 = v19;
            v90 = 2112;
            v91 = v20;
            v92 = 2112;
            v93 = v21;
            _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborBSSIDs for bssid[%@] ssid[%@] : %@", buf, 0x30u);

            v1 = v75;
          }

          v22 = WALogCategoryDeviceStoreHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v10 bssid];
            v24 = *(v1 + 40);
            *buf = 136447234;
            v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
            v86 = 1024;
            v87 = 1288;
            v88 = 2112;
            v89 = v23;
            v90 = 2112;
            v91 = v24;
            v92 = 2112;
            v93 = v13;
            _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_DEBUG, "%{public}s::%d:neighborChannels for bssid[%@] ssid[%@] :%@", buf, 0x30u);
          }

          v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "roamTriggerRssi")}];
          v26 = *(*(*(v1 + 48) + 8) + 40);
          v27 = v1;
          v28 = *(v8 + 3776);
          v29 = [v10 bssid];
          v30 = [v28 stringWithFormat:@"%@.triggerRSSI", v29];
          [v26 setObject:v25 forKeyedSubscript:v30];

          v31 = [v10 neighborBSSIDs];
          v32 = [v31 componentsJoinedByString:{@", "}];

          if (v32)
          {
            v33 = [v10 neighborBSSIDs];
            v34 = [v33 componentsJoinedByString:{@", "}];
            v35 = *(*(*(v27 + 48) + 8) + 40);
            v36 = *(v8 + 3776);
            v37 = [v10 bssid];
            v38 = [v36 stringWithFormat:@"%@.neighborBSSIDs", v37];
            [v35 setObject:v34 forKeyedSubscript:v38];
          }

          v39 = [v13 componentsJoinedByString:{@", "}];

          if (v39)
          {
            v40 = [v13 componentsJoinedByString:{@", "}];
            v41 = *(*(*(v75 + 48) + 8) + 40);
            v42 = *(v8 + 3776);
            v43 = [v10 bssid];
            v44 = [v42 stringWithFormat:@"%@.neighborChannels", v43];
            [v41 setObject:v40 forKeyedSubscript:v44];
          }

          v70 = v13;
          v45 = WALogCategoryDeviceStoreHandle();
          v1 = v75;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
            v86 = 1024;
            v87 = 1298;
            _os_log_impl(&dword_1C8460000, v45, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Checking for Faults", buf, 0x12u);
          }

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v46 = v10;
          obj = [v10 faults];
          v47 = [obj countByEnumeratingWithState:&v76 objects:v96 count:16];
          if (v47)
          {
            v48 = v47;
            LODWORD(v49) = 0;
            v74 = *v77;
            do
            {
              v50 = 0;
              v49 = v49;
              do
              {
                if (*v77 != v74)
                {
                  objc_enumerationMutation(obj);
                }

                v51 = *(*(&v76 + 1) + 8 * v50);
                v52 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                {
                  v53 = [v46 bssid];
                  v54 = *(v75 + 40);
                  v55 = [v51 type];
                  v56 = [v51 date];
                  *buf = 136447490;
                  v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
                  v86 = 1024;
                  v87 = 1301;
                  v88 = 2112;
                  v89 = v53;
                  v90 = 2112;
                  v91 = v54;
                  v1 = v75;
                  v92 = 2112;
                  v93 = v55;
                  v94 = 2112;
                  v95 = v56;
                  _os_log_impl(&dword_1C8460000, v52, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Fault ssid[%@] bssid[%@] : %@ at date %@", buf, 0x3Au);
                }

                v57 = [v51 date];
                v58 = *(*(*(v1 + 48) + 8) + 40);
                v59 = MEMORY[0x1E696AEC0];
                v60 = [v46 bssid];
                v61 = [v51 type];
                v62 = [v59 stringWithFormat:@"%@.fault[%lu].%@", v60, v49, v61];
                [v58 setObject:v57 forKeyedSubscript:v62];

                ++v49;
                ++v50;
              }

              while (v48 != v50);
              v48 = [obj countByEnumeratingWithState:&v76 objects:v96 count:16];
            }

            while (v48);
          }

          objc_autoreleasePoolPop(context);
          v9 = v72 + 1;
          v7 = v68;
          v8 = 0x1E696A000;
        }

        while (v72 + 1 != v69);
        v69 = [v68 countByEnumeratingWithState:&v80 objects:v97 count:16];
      }

      while (v69);
      v6 = v66;
    }
  }

  else
  {
    v7 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v65 = *(v1 + 40);
      *buf = 136446722;
      v85 = "[AnalyticsProcessor updateRoamPoliciesAndSummarizeAnalyticsForNetwork:maxAgeInDays:]_block_invoke";
      v86 = 1024;
      v87 = 1278;
      v88 = 2112;
      v89 = v65;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Could not find network for %@", buf, 0x1Cu);
    }
  }

  v63 = [*(v1 + 32) managedObjectHandler];
  [v63 managedObjectContextSave:1 reset:1 release:1 withError:0];

  v64 = *MEMORY[0x1E69E9840];
}

- (void)processDatapathMetricStream:(id)stream withDate:(id)date
{
  streamCopy = stream;
  dateCopy = date;
  managedObjectHandler = [(AnalyticsProcessor *)self managedObjectHandler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AnalyticsProcessor_processDatapathMetricStream_withDate___block_invoke;
  v10[3] = &unk_1E830DB98;
  v11 = streamCopy;
  selfCopy = self;
  v9 = streamCopy;
  [managedObjectHandler performBlockOnManagedObjectContextForNSData:v9 withDate:dateCopy block:v10];
}

uint64_t __59__AnalyticsProcessor_processDatapathMetricStream_withDate___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 32);
  if (v4)
  {
    return [*(result + 40) storeMetricStreamFragment:v4 withDate:a3];
  }

  return result;
}

- (void)storeMetricStreamFragment:(id)fragment withDate:(id)date
{
  v38 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  fragmentCopy = fragment;
  managedObjectHandler = [(AnalyticsProcessor *)self managedObjectHandler];
  managedObjectContext = [managedObjectHandler managedObjectContext];
  v10 = [MetricEntryMO metricEntryCount:500 moc:managedObjectContext];

  v11 = v10 + 1;
  if (v10 + 1 >= 0x169)
  {
    v12 = v10 - 359;
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v31 = "[AnalyticsProcessor storeMetricStreamFragment:withDate:]";
      v32 = 1024;
      v33 = 1339;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_DEBUG, "%{public}s::%d:metricEntryCount is %lu, deleting %lu", buf, 0x26u);
    }

    v14 = objc_alloc(MEMORY[0x1E695D5E0]);
    v15 = +[MetricEntryMO entity];
    name = [v15 name];
    v17 = [v14 initWithEntityName:name];

    v18 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:1];
    v29 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v17 setSortDescriptors:v19];

    [v17 setFetchLimit:v12];
    v20 = +[MetricEntryMO entity];
    name2 = [v20 name];
    managedObjectHandler2 = [(AnalyticsProcessor *)self managedObjectHandler];
    managedObjectContext2 = [managedObjectHandler2 managedObjectContext];
    [AnalyticsStoreProxy batchDelete:name2 withPredicate:0 withFetchRequest:v17 moc:managedObjectContext2];
  }

  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  v25 = +[MetricEntryMO entity];
  v26 = [persistentContainer newDatedEventObjectFor:v25 withDate:dateCopy];

  [v26 setEventMessage:fragmentCopy];
  managedObjectHandler3 = [(AnalyticsProcessor *)self managedObjectHandler];
  [managedObjectHandler3 managedObjectContextSave:1 reset:1 release:1 withError:0];

  v28 = *MEMORY[0x1E69E9840];
}

- (BOOL)ageOutAnalyticsWithError:(id *)error withReason:(id)reason
{
  reasonCopy = reason;
  v7 = objc_autoreleasePoolPush();
  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  v19 = 0;
  v9 = [persistentContainer ageOutAnalyticsWithReason:reasonCopy withError:&v19];
  v10 = v19;

  persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
  viewContext = [persistentContainer2 viewContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__AnalyticsProcessor_ageOutAnalyticsWithError_withReason___block_invoke;
  v16[3] = &unk_1E830DBC0;
  v16[4] = self;
  v13 = reasonCopy;
  v17 = v13;
  v18 = v9;
  [viewContext performBlockAndWait:v16];

  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  return v9;
}

void __58__AnalyticsProcessor_ageOutAnalyticsWithError_withReason___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = +[PoliciesMO entity];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [v2 newDatedEventObjectFor:v3 withDate:v4];

  [v5 setPolicyType:@"ageOutAnalytics:"];
  [v5 setReasonForRunning:*(a1 + 40)];
  [v5 setOutcome:*(a1 + 48)];
  [*(a1 + 32) managedObjectContextSaveThenReset:1 withError:0];
  v6 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 policyType];
    v8 = [v5 date];
    v10 = 136446978;
    v11 = "[AnalyticsProcessor ageOutAnalyticsWithError:withReason:]_block_invoke";
    v12 = 1024;
    v13 = 1380;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@)", &v10, 0x26u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performPruneBasedOnStoreSizeAndSaveWithReason:(id)reason
{
  v16 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[AnalyticsProcessor performPruneBasedOnStoreSizeAndSaveWithReason:]";
    v14 = 1024;
    v15 = 1390;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:performPruneBasedOnStoreSizeAndSave", buf, 0x12u);
  }

  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  viewContext = [persistentContainer viewContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AnalyticsProcessor_performPruneBasedOnStoreSizeAndSaveWithReason___block_invoke;
  v10[3] = &unk_1E830DB70;
  v10[4] = self;
  v11 = reasonCopy;
  v8 = reasonCopy;
  [viewContext performBlockAndWait:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __68__AnalyticsProcessor_performPruneBasedOnStoreSizeAndSaveWithReason___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistentContainer];
  v3 = [v2 performPruneBasedOnStoreSize];

  v4 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v35 = "[AnalyticsProcessor performPruneBasedOnStoreSizeAndSaveWithReason:]_block_invoke";
    v36 = 1024;
    v37 = 1394;
    v38 = 2112;
    v39 = v3;
    _os_log_impl(&dword_1C8460000, v4, OS_LOG_TYPE_DEBUG, "%{public}s::%d:storeSizeInfo: %@", buf, 0x1Cu);
  }

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"policyType = %@ AND needsPruning == TRUE", @"performPruneBasedOnStoreSize"];
  v6 = [*(a1 + 32) persistentContainer];
  v7 = [v6 mostRecentPolicyFilteredBy:v5 withError:0];

  v8 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 date];
    *buf = 136446722;
    v35 = "[AnalyticsProcessor performPruneBasedOnStoreSizeAndSaveWithReason:]_block_invoke";
    v36 = 1024;
    v37 = 1398;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1C8460000, v8, OS_LOG_TYPE_DEBUG, "%{public}s::%d:MostRecentPrune: %@", buf, 0x1Cu);
  }

  v10 = [*(a1 + 32) persistentContainer];
  v11 = +[PoliciesPruningMO entity];
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [v10 newDatedEventObjectFor:v11 withDate:v12];

  v14 = [v13 date];
  v15 = [v7 date];
  [v14 timeIntervalSinceDate:v15];
  v17 = v16;

  [v13 setPolicyType:@"performPruneBasedOnStoreSize"];
  [v13 setReasonForRunning:*(a1 + 40)];
  [v13 setOutcome:{objc_msgSend(v3, "noError")}];
  v18 = [v3 currentSize];
  [v13 setCurrentSize:{objc_msgSend(v18, "longLongValue")}];

  [v13 setLimit:{objc_msgSend(v3, "limit")}];
  [v13 setNeedsPruning:{objc_msgSend(v3, "storeNeedsPruning")}];
  v19 = [v7 date];

  if (v19)
  {
    [v13 setTimeSinceLastPruning:v17];
  }

  [*(a1 + 32) managedObjectContextSaveThenReset:0 withError:0];
  v20 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v13 policyType];
    v22 = [v13 date];
    *buf = 136446978;
    v35 = "[AnalyticsProcessor performPruneBasedOnStoreSizeAndSaveWithReason:]_block_invoke";
    v36 = 1024;
    v37 = 1414;
    v38 = 2112;
    v39 = v21;
    v40 = 2112;
    v41 = v22;
    _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Stored Policy (%@) run at (%@)", buf, 0x26u);
  }

  v23 = objc_opt_new();
  v24 = [MEMORY[0x1E696AE30] processInfo];
  v25 = [v24 processName];
  [v23 setObject:v25 forKeyedSubscript:@"process"];

  [v23 setObject:*(a1 + 40) forKeyedSubscript:@"reason"];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "noError")}];
  [v23 setObject:v26 forKeyedSubscript:@"noError"];

  v27 = [v3 currentSize];
  [v23 setObject:v27 forKeyedSubscript:@"size"];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "limit")}];
  [v23 setObject:v28 forKeyedSubscript:@"limit"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "storeNeedsPruning")}];
  [v23 setObject:v29 forKeyedSubscript:@"needsPruning"];

  v30 = [v7 date];
  if (v30)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:v17];
    [v23 setObject:v31 forKeyedSubscript:@"timeSinceLastPruning"];
  }

  else
  {
    [v23 setObject:0 forKeyedSubscript:@"timeSinceLastPruning"];
  }

  v32 = +[WAClient sharedClient];
  [v32 submitWiFiAnalytics:@"com.apple.wifi.store.size" data:v23];

  v33 = *MEMORY[0x1E69E9840];
}

- (unint64_t)performPruneTestBSSes:(id)ses withError:(id *)error
{
  sesCopy = ses;
  if (!+[WAUtil isInternalInstall])
  {
    v9 = 0;
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
  v18 = 0;
  v8 = [persistentContainer batchDeleteBSSList:sesCopy withError:&v18];
  v9 = v18;

  if (!v9)
  {
    persistentContainer2 = [(AnalyticsProcessor *)self persistentContainer];
    v17 = 0;
    v11 = [persistentContainer2 batchDeleteEntitiesWithNilBssWithError:&v17];
    v9 = v17;
    v8 += v11;

    if (!v9)
    {
      persistentContainer3 = [(AnalyticsProcessor *)self persistentContainer];
      v16 = 0;
      v13 = [persistentContainer3 batchDeleteUsageRecordsHavingBSSInList:sesCopy withError:&v16];
      v9 = v16;
      v8 += v13;
    }
  }

  if (error)
  {
LABEL_6:
    v14 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (unint64_t)performPruneTestEntity:(id)entity since:(id)since withPredicate:(id)predicate withError:(id *)error
{
  entityCopy = entity;
  sinceCopy = since;
  predicateCopy = predicate;
  if (+[WAUtil isInternalInstall])
  {
    persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
    v14 = [persistentContainer batchDelete:entityCopy newerThanDate:sinceCopy andPredicate:predicateCopy withError:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)performPrunePoliciesWithReasons:(id)reasons withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  reasonsCopy = reasons;
  if (!+[WAUtil isInternalInstall])
  {
    v17 = 0;
    v18 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  errorCopy = error;
  context = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = reasonsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        context = [MEMORY[0x1E696AE18] predicateWithFormat:@"policyType = %@", *(*(&v25 + 1) + 8 * v12), context];
        [v7 addObject:context];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    persistentContainer = [(AnalyticsProcessor *)self persistentContainer];
    v15 = +[PoliciesMO entity];
    v16 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];
    v24 = 0;
    v17 = [persistentContainer batchDelete:v15 where:v16 withError:&v24];
    v18 = v24;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  error = errorCopy;

  objc_autoreleasePoolPop(context);
  if (errorCopy)
  {
LABEL_12:
    v19 = v18;
    *error = v18;
  }

LABEL_13:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

@end