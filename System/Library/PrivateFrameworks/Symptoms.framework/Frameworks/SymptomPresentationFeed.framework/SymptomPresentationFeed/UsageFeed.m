@interface UsageFeed
- (BOOL)_rollUsageValuesFromDict:(id)a3 toDict:(id)a4 forKey:(id)a5 subscriberTag:(unsigned int)a6;
- (BOOL)algosScoreToDateWithOptionsFor:(id)a3 nameKind:(id)a4 startTime:(id)a5 options:(id)a6 reply:(id)a7;
- (BOOL)getNetworkDomainsOptions:(id)a3 reply:(id)a4;
- (BOOL)getUsageOption:(id)a3 reply:(id)a4;
- (BOOL)identifierForUUID:(id)a3 reply:(id)a4;
- (BOOL)networkBitmapsToDateWithOptionsFor:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7;
- (BOOL)networkDomainsToDateWithOptionsFor:(id)a3 nameKind:(id)a4 domainType:(unsigned __int16)a5 startTime:(id)a6 options:(id)a7 fetchProperties:(id)a8 reply:(id)a9;
- (BOOL)networkDomainsToDateWithOptionsFor:(id)a3 nameKind:(id)a4 domainType:(unsigned __int16)a5 startTime:(id)a6 options:(id)a7 reply:(id)a8;
- (BOOL)performNetworkDomainsActionWithOptions:(id)a3 reply:(id)a4;
- (BOOL)resetUsageDataFor:(id)a3 nameKind:(id)a4 reply:(id)a5;
- (BOOL)setNetworkDomainsOptions:(id)a3 reply:(id)a4;
- (BOOL)setUsageOption:(id)a3 reply:(id)a4;
- (BOOL)typicalUsageFor:(id)a3 nameKind:(id)a4 intervalKind:(unsigned int)a5 reply:(id)a6;
- (BOOL)usageToDateFor:(id)a3 nameKind:(id)a4 reply:(id)a5;
- (BOOL)usageToDateWithOptionsFor:(id)a3 nameKind:(id)a4 options:(id)a5 reply:(id)a6;
- (UsageFeed)initWithWorkspace:(id)a3;
- (id)_calendarUsagePresentation:(id)a3 nameKind:(id)a4 source:(id)a5;
- (id)_composeLiveUsagePredicateWithNames:(id)a3 kind:(id)a4 isProcNameKey:(BOOL)a5 isSweep:(BOOL *)a6;
- (id)_composePredicateLineWithName:(id)a3 keyPath:(id)a4 isSweep:(BOOL *)a5 wantGeneric:(BOOL)a6 gotGeneric:(BOOL *)a7;
- (id)_getUsageKeyWithProcess:(id)a3 bundleID:(id)a4 extension:(id)a5 isProcNameKey:(BOOL)a6 showExtension:(BOOL)a7;
- (id)_typicalUsagePresentation:(id)a3 nameKind:(id)a4 source:(id)a5;
- (id)_usagePresentationWithProcess:(id)a3 bundleID:(id)a4 extension:(id)a5 source:(double *)a6 since:(id)a7;
- (id)createEndpointEntryFrom:(id)a3 withKey:(id)a4 showDetails:(BOOL)a5;
- (id)groupRecordsByBundleId:(id)a3;
- (id)networkDomainInitiatedTypeString:(unsigned int)a3;
- (uint64_t)_batchFetchLimitForDatabase;
- (void)__networkDomainsQueryDomains:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 accumulatedResults:(id)a8 aggregateProperty:(id)a9 predicate:(id)a10 altAggregateProperty:(id)a11 altPredicate:(id)a12 ipAggregateProperty:(id)a13 replyProcessBlock:(id)a14 callbackBlock:(id)a15;
- (void)__networkDomainsQuerySecondLevelViewDomains:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 viewPredicate:(id)a8 callbackBlock:(id)a9;
- (void)__networkDomainsQueryWebsites:(id)a3 entityName:(id)a4 verificationContext:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 viewPredicate:(id)a8 callbackBlock:(id)a9;
- (void)_batchFetchCallbackWithResults:(id)a3 logPrefix:(const char *)a4 entityName:(id)a5 pred:(id)a6 service:(id)a7 limit:(unint64_t)a8 offset:(unint64_t)a9 container:(id)a10 actions:(id)a11 reply:(id)a12;
- (void)_legacyNetworkDomainsQueryOnService:(id)a3 entityName:(id)a4 pred:(id)a5 limit:(unint64_t)a6 actions:(id)a7 options:(id)a8 postProcessingBlock:(id)a9;
- (void)_networkDomainsQueryViewTypeApp:(id)a3 entityName:(id)a4 limit:(unint64_t)a5 actions:(id)a6 callbackBlock:(id)a7;
- (void)_networkDomainsQueryViewTypeAppDomains:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9;
- (void)_networkDomainsQueryViewTypeAppDomainsOtherContent:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9;
- (void)_networkDomainsQueryViewTypeAppWebsites:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 verificationContext:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9;
- (void)_networkDomainsQueryViewTypeDomain:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_networkDomainsQueryViewTypeDomainApps:(id)a3 entityName:(id)a4 domain:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_networkDomainsQueryViewTypeDomainWebsites:(id)a3 entityName:(id)a4 domain:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_networkDomainsQueryViewTypeWebsite:(id)a3 entityName:(id)a4 verificationContext:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_networkDomainsQueryViewTypeWebsiteApps:(id)a3 entityName:(id)a4 website:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_networkDomainsQueryViewTypeWebsiteDomains:(id)a3 entityName:(id)a4 website:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9;
- (void)_networkDomainsQueryViewTypeWebsiteHits:(id)a3 entityName:(id)a4 website:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8;
- (void)_performNetDomainsQueryOnService:(id)a3 entityName:(id)a4 fetchProps:(id)a5 pred:(id)a6 sort:(id)a7 actions:(id)a8 queryTimer:(id)a9 replyProcessBlock:(id)a10 accumulatedResults:(id)a11 callbackBlock:(id)a12;
- (void)_processLiveUsageWithPredicate:(id)a3 attributesBlock:(id)a4 outcomeBlock:(id)a5;
- (void)_processLiveUsageWithUsages:(id)a3 attributesBlock:(id)a4 outcomeBlock:(id)a5;
- (void)_rollValuesFrom:(id)a3 toDict:(id)a4;
- (void)_triggerAutoBugCaptureForSubType:(id)a3 subtypeContext:(id)a4 events:(id)a5 replyBlock:(id)a6;
- (void)clearLoggingCounters;
- (void)dealloc;
- (void)displayLoggingCounters:(id)a3;
@end

@implementation UsageFeed

- (void)clearLoggingCounters
{
  self->numAppended = 0;
  *&self->numRolledCellCounts = 0u;
  *&self->lastSubscriberTag = 0u;
}

- (uint64_t)_batchFetchLimitForDatabase
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.symptomframework.usagefeed"];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 valueForKey:@"db_records_fetch_limit"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 unsignedIntegerValue];
        v5 = usageLogHandle();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134217984;
          v9 = v4;
          _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "++ Overriding database fetch limit to %ld", &v8, 0xCu);
        }
      }

      else
      {
        v4 = 150;
      }
    }

    else
    {
      v4 = 150;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (UsageFeed)initWithWorkspace:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = usageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> initWithWorkspace:%@", buf, 0xCu);
  }

  v13.receiver = self;
  v13.super_class = UsageFeed;
  v6 = [(UsageFeed *)&v13 init];
  if (v6)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = [MEMORY[0x1E69D5130] defaultWorkspace];
    }

    workspace = v6->workspace;
    v6->workspace = v7;

    v9 = [objc_alloc(MEMORY[0x1E69D5198]) initWithWorkspace:v6->workspace withCache:0];
    handleAnalytics = v6->handleAnalytics;
    v6->handleAnalytics = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v3 = usageLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> dealloc", buf, 2u);
  }

  self->_delegate = 0;
  v4.receiver = self;
  v4.super_class = UsageFeed;
  [(UsageFeed *)&v4 dealloc];
}

- (void)_triggerAutoBugCaptureForSubType:(id)a3 subtypeContext:(id)a4 events:(id)a5 replyBlock:(id)a6
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v12 processName];

  v14 = objc_alloc_init(MEMORY[0x1E69D4F80]);
  v15 = v14;
  if (v14)
  {
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = &stru_1F483F350;
    }

    v17 = [v14 signatureWithDomain:*MEMORY[0x1E69D4FC0] type:*MEMORY[0x1E69D50F8] subType:v18 subtypeContext:v9 detectedProcess:v16 triggerThresholdValues:0];
    [v15 snapshotWithSignature:v17 delay:v10 events:0 payload:0 actions:v11 reply:0.0];
  }
}

- (void)displayLoggingCounters:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = usageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastSubscriberTag = self->lastSubscriberTag;
    lastSkippedTag = self->lastSkippedTag;
    numUnrolledCellCounts = self->numUnrolledCellCounts;
    numRolledCellCounts = self->numRolledCellCounts;
    numNewlyCreated = self->numNewlyCreated;
    numAppended = self->numAppended;
    v13 = 138413826;
    v14 = v4;
    v15 = 1024;
    v16 = lastSubscriberTag;
    v17 = 1024;
    v18 = lastSkippedTag;
    v19 = 2048;
    v20 = numUnrolledCellCounts;
    v21 = 2048;
    v22 = numRolledCellCounts;
    v23 = 2048;
    v24 = numNewlyCreated;
    v25 = 2048;
    v26 = numAppended;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_INFO, "%@:  cell tag %u last skipped %u  counts: skipped %zu unskipped %zu  created %zu appended %zu", &v13, 0x40u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_rollUsageValuesFromDict:(id)a3 toDict:(id)a4 forKey:(id)a5 subscriberTag:(unsigned int)a6
{
  v115 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = [v10 valueForKey:@"wifiIN"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    v91 = 0.0;
    v16 = 0;
    if (v15)
    {
      [v14 doubleValue];
    }

    v78 = v16;

    v17 = [v10 valueForKey:@"wifiOUT"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v91 = v18;
    }

    v19 = [v10 valueForKey:@"tag"];
    v20 = v19;
    if (!a6 || v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v20 unsignedIntValue]== a6)
    {
      v21 = [v10 valueForKey:{@"wwanIN", v78}];
      objc_opt_class();
      v83 = 0.0;
      v22 = 0.0;
      if (objc_opt_isKindOfClass())
      {
        [v21 doubleValue];
        v22 = v23;
      }

      v24 = [v10 valueForKey:@"wwanOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v24 doubleValue];
        v83 = v25;
      }

      v81 = 0.0;
      v85 = 0.0;
      v82 = 0.0;
      v86 = 0.0;
      v80 = 0.0;
      v84 = 0.0;
      if ((isKindOfClass & 1) == 0)
      {
        v26 = [v10 valueForKey:@"wwanIN_exp"];
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        v86 = 0.0;
        v28 = 0.0;
        if (v27)
        {
          [v26 doubleValue];
        }

        v82 = v28;

        v29 = [v10 valueForKey:@"wwanOUT_exp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v29 doubleValue];
          v86 = v30;
        }

        v31 = [v10 valueForKey:@"xIN"];
        objc_opt_class();
        v32 = objc_opt_isKindOfClass();
        v85 = 0.0;
        v33 = 0.0;
        if (v32)
        {
          [v31 doubleValue];
        }

        v81 = v33;

        v34 = [v10 valueForKey:@"xOUT"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v34 doubleValue];
          v85 = v35;
        }

        v36 = [v10 valueForKey:@"xIN_exp"];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();
        v84 = 0.0;
        v38 = 0.0;
        if (v37)
        {
          [v36 doubleValue];
        }

        v80 = v38;

        v39 = [v10 valueForKey:@"xOUT_exp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v39 doubleValue];
          v84 = v40;
        }
      }

      ++self->numRolledCellCounts;
    }

    else
    {
      ++self->numUnrolledCellCounts;
      v22 = 0.0;
      v83 = 0.0;
      self->lastSkippedTag = [v20 unsignedIntValue];
      v81 = 0.0;
      v85 = 0.0;
      v82 = 0.0;
      v86 = 0.0;
      v80 = 0.0;
      v84 = 0.0;
    }

    v89 = 0.0;
    self->lastSubscriberTag = a6;
    v93 = 0.0;
    v87 = 0.0;
    v42 = 0.0;
    v90 = 0.0;
    v94 = 0.0;
    v88 = 0.0;
    v92 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if ((isKindOfClass & 1) == 0)
    {
      v45 = [v10 valueForKey:@"wifiIN_exp"];
      objc_opt_class();
      v46 = objc_opt_isKindOfClass();
      v94 = 0.0;
      v47 = 0.0;
      if (v46)
      {
        [v45 doubleValue];
      }

      v90 = v47;

      v48 = [v10 valueForKey:@"wifiOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v48 doubleValue];
        v94 = v49;
      }

      v50 = [v10 valueForKey:@"wiredIN"];
      objc_opt_class();
      v51 = objc_opt_isKindOfClass();
      v93 = 0.0;
      v52 = 0.0;
      if (v51)
      {
        [v50 doubleValue];
      }

      v89 = v52;

      v53 = [v10 valueForKey:@"wiredOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v53 doubleValue];
        v93 = v54;
      }

      v55 = [v10 valueForKey:@"wiredIN_exp"];
      objc_opt_class();
      v56 = objc_opt_isKindOfClass();
      v92 = 0.0;
      v57 = 0.0;
      if (v56)
      {
        [v55 doubleValue];
      }

      v88 = v57;

      v58 = [v10 valueForKey:@"wiredOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v58 doubleValue];
        v92 = v59;
      }

      v60 = [v10 valueForKey:@"btIN"];
      objc_opt_class();
      v61 = objc_opt_isKindOfClass();
      v62 = 0.0;
      if (v61)
      {
        [v60 doubleValue];
      }

      v87 = v62;

      v63 = [v10 valueForKey:@"btOUT"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v63 doubleValue];
        v42 = v64;
      }

      v65 = [v10 valueForKey:@"btIN_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v65 doubleValue];
        v43 = v66;
      }

      v67 = [v10 valueForKey:@"btOUT_exp"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v67 doubleValue];
        v44 = v68;
      }
    }

    v69 = [v11 objectForKey:v12];
    v70 = v69;
    v41 = v69 == 0;
    if (v69)
    {
      v71 = [v69 bytes];
      v72.f64[0] = v79;
      v72.f64[1] = v91;
      *v71 = vaddq_f64(v72, *v71);
      *(v71 + 16) = v22 + *(v71 + 16);
      v73.f64[0] = v83;
      v72.f64[0] = v94;
      v72.f64[1] = v82;
      *(v71 + 72) = vaddq_f64(v72, *(v71 + 72));
      v73.f64[1] = v89;
      *(v71 + 24) = vaddq_f64(v73, *(v71 + 24));
      v73.f64[0] = v86;
      v73.f64[1] = v88;
      *(v71 + 88) = vaddq_f64(v73, *(v71 + 88));
      v74 = v43 + *(v71 + 144);
      *(v71 + 136) = v42 + *(v71 + 136);
      *(v71 + 144) = v74;
      *(v71 + 152) = v44 + *(v71 + 152);
      v72.f64[0] = v93;
      v72.f64[1] = v81;
      *(v71 + 40) = vaddq_f64(v72, *(v71 + 40));
      v72.f64[0] = v92;
      v72.f64[1] = v80;
      *(v71 + 104) = vaddq_f64(v72, *(v71 + 104));
      v73.f64[0] = v85;
      v73.f64[1] = v90;
      *(v71 + 56) = vaddq_f64(v73, *(v71 + 56));
      v73.f64[0] = v84;
      v73.f64[1] = v87;
      *(v71 + 120) = vaddq_f64(v73, *(v71 + 120));
      ++self->numAppended;
    }

    else
    {
      *buf = v79;
      v96 = v91;
      v103 = v90;
      v104 = v94;
      v97 = v22;
      v98 = v83;
      v105 = v82;
      v106 = v86;
      v99 = v89;
      v100 = v93;
      v107 = v88;
      v108 = v92;
      v111 = v87;
      v112 = v42;
      v113 = v43;
      v114 = v44;
      v101 = v81;
      v102 = v85;
      v109 = v80;
      v110 = v84;
      v75 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:160];
      [v11 setObject:v75 forKey:v12];

      ++self->numNewlyCreated;
    }
  }

  else
  {
    v20 = usageLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C85F9000, v20, OS_LOG_TYPE_ERROR, "Usage key cannot be nil", buf, 2u);
    }

    v41 = 0;
  }

  v76 = *MEMORY[0x1E69E9840];
  return v41;
}

- (void)_rollValuesFrom:(id)a3 toDict:(id)a4
{
  v29 = a3;
  v6 = a4;
  v7 = [v29 hasProcess];
  v8 = [v7 bundleName];
  v9 = [v29 hasProcess];
  v10 = v9;
  if (v8)
  {
    [v9 bundleName];
  }

  else
  {
    [v9 procName];
  }
  v11 = ;

  if (v11)
  {
    v12 = [v6 objectForKey:v11];
    if (!v12)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF90]);
      v14 = [v29 hasProcess];
      v28 = [v14 procName];
      v27 = [v29 hasProcess];
      v15 = [v27 bundleName];
      if (v15)
      {
        v16 = [v29 hasProcess];
        v17 = [v16 bundleName];
      }

      else
      {
        v17 = [MEMORY[0x1E695DFB0] null];
        v16 = v17;
      }

      v23 = [v29 hasProcess];
      v24 = [v23 bundleName];
      if (v24)
      {
        v12 = [v13 initWithObjectsAndKeys:{v28, @"procName", v17, @"bundleName", 0}];
      }

      else
      {
        [MEMORY[0x1E695DFB0] null];
        v25 = v26 = v14;
        v12 = [v13 initWithObjectsAndKeys:{v28, @"procName", v17, v25, 0}];

        v14 = v26;
      }

      if (v15)
      {
      }

      [v6 setObject:v12 forKey:v11];
    }

    [(UsageFeed *)self _rollUsageValuesFromDict:v29 toDict:v12 forKey:@"data" subscriberTag:0];
  }

  else
  {
    v12 = [v29 wifiIN];
    v18 = [v29 wifiOUT];
    v19 = [v29 wwanIN];
    v20 = [v29 wwanOUT];
    v21 = [v29 wiredIN];
    v22 = [v29 wiredOUT];
    NSLog(&cfstr_UnableToRollUp.isa, v12, v18, v19, v20, v21, v22);
  }
}

- (id)_composePredicateLineWithName:(id)a3 keyPath:(id)a4 isSweep:(BOOL *)a5 wantGeneric:(BOOL)a6 gotGeneric:(BOOL *)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = [v11 count];
  *a5 = 0;
  *a7 = 0;
  if (v11 && v13)
  {
    v14 = MEMORY[0x1E696AE18];
    if (v13 == 1)
    {
      if (v8)
      {
        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == $targetname", v12];
        *a7 = 1;
      }

      else
      {
        v16 = [v11 anyObject];
        v15 = [v14 predicateWithFormat:@"%K == %@", v12, v16];
      }
    }

    else
    {
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v12, v11];
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v12];
    *a5 = 1;
  }

  return v15;
}

- (id)_composeLiveUsagePredicateWithNames:(id)a3 kind:(id)a4 isProcNameKey:(BOOL)a5 isSweep:(BOOL *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasProcess.%@", a4];
  if (v9 && [v9 count])
  {
    if (v7)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasProcess.%@", @"bundleName"];
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K IN %@) OR (%K IN %@)", v10, v9, v11, v9];
    }

    else
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v10, v9];
    }

    v13 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", v10];
    v13 = 1;
  }

  *a6 = v13;

  return v12;
}

- (id)_usagePresentationWithProcess:(id)a3 bundleID:(id)a4 extension:(id)a5 source:(double *)a6 since:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v29 = MEMORY[0x1E695DF20];
  if (v11)
  {
    v36 = @"procName";
    v37 = v11;
    if (v12)
    {
LABEL_3:
      v34 = @"bundleName";
      v35 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v37 = [MEMORY[0x1E695DFB0] null];
    v36 = [MEMORY[0x1E695DFB0] null];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v35 = [MEMORY[0x1E695DFB0] null];
  v34 = [MEMORY[0x1E695DFB0] null];
LABEL_6:
  v31 = v12;
  v48 = v14;
  v28 = v13;
  if (v13)
  {
    v32 = @"extensionName";
    v33 = v13;
  }

  else
  {
    v33 = [MEMORY[0x1E695DFB0] null];
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:*a6];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:a6[1]];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:a6[8]];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:a6[9]];
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:a6[16]];
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:a6[17]];
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:a6[2]];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:a6[3]];
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:a6[10]];
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:a6[11]];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:a6[4]];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:a6[5]];
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:a6[12]];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:a6[13]];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:a6[6]];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:a6[7]];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:a6[14]];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:a6[15]];
  v30 = [v29 dictionaryWithObjectsAndKeys:{v37, v36, v35, v34, v33, v32, v27, @"wifiInBytes", v26, @"wifiOutBytes", v47, @"wifiExpInBytes", v46, @"wifiExpOutBytes", v45, @"btInBytes", v44, @"btOutBytes", v43, @"wwanInBytes", v25, @"wwanOutBytes", v42, @"wwanExpInBytes", v41, @"wwanExpOutBytes", v40, @"wiredInBytes", v39, @"wiredOutBytes", v38, @"wiredExpInBytes", v15, @"wiredExpOutBytes", v24, @"awdlInBytes", v16, @"awdlOutBytes", v17, @"awdlExpInBytes", v18, @"awdlExpOutBytes", v19, @"expensiveInBytes", v23, @"expensiveOutBytes", v20, @"expensiveExpInBytes", v21, @"expensiveExpOutBytes", v48, @"sinceTime", 0}];

  if (!v28)
  {
  }

  if (v31)
  {
    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_13;
    }
  }

LABEL_13:

  return v30;
}

- (id)_getUsageKeyWithProcess:(id)a3 bundleID:(id)a4 extension:(id)a5 isProcNameKey:(BOOL)a6 showExtension:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (!v8)
  {
    v15 = v12;
  }

  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v8)
  {
    v16 = v11;
  }

  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17;

  return v17;
}

- (void)_processLiveUsageWithUsages:(id)a3 attributesBlock:(id)a4 outcomeBlock:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  obj = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    v20 = v8;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"hasProcess.procName"];
          v16 = [v14 objectForKeyedSubscript:@"hasProcess.bundleName"];
          v17 = [v14 objectForKeyedSubscript:@"hasProcess.extensionName"];
          v18 = [v14 objectForKeyedSubscript:@"hasProcess.firstTimeStamp"];
          v7[2](v7, v14, v15, v16, v17, v18);
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    v9 = v20;
    v20[2](v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_processLiveUsageWithPredicate:(id)a3 attributesBlock:(id)a4 outcomeBlock:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9 && v10)
  {
    v31 = v10;
    v12 = objc_alloc(MEMORY[0x1E69D5150]);
    workspace = self->workspace;
    v14 = [MEMORY[0x1E69D5140] entityName];
    v15 = [v12 initWithWorkspace:workspace entityName:v14 withCache:0];

    v30 = v15;
    v32 = v8;
    v16 = [v15 fetchEntitiesFreeForm:v8 sortDesc:0];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v33 = *v35;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v33)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [v20 hasProcess];
          v22 = [v21 procName];

          v23 = [v20 hasProcess];
          v24 = [v23 bundleName];

          v25 = [v20 hasProcess];
          v26 = [v25 extensionName];

          v27 = [v20 hasProcess];
          v28 = [v27 firstTimeStamp];

          v9[2](v9, v16, v22, v24, v26, v28);
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v18);
    }

    v11 = v31;
    v31[2](v31);

    v8 = v32;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)_typicalUsagePresentation:(id)a3 nameKind:(id)a4 source:(id)a5
{
  v28 = MEMORY[0x1E695DF20];
  v7 = a5;
  v27 = a4;
  v26 = a3;
  v25 = [v7 valueForKey:@"wifiIN"];
  v24 = [v7 valueForKey:@"wifiIN_mean"];
  v23 = [v7 valueForKey:@"wifiIN_var"];
  v22 = [v7 valueForKey:@"wifiOUT"];
  v51 = [v7 valueForKey:@"wifiOUT_mean"];
  v21 = [v7 valueForKey:@"wifiOUT_var"];
  v50 = [v7 valueForKey:@"btIN"];
  v20 = [v7 valueForKey:@"btOUT"];
  v49 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v45 = [v7 valueForKey:@"wiredIN"];
  v44 = [v7 valueForKey:@"wiredIN_mean"];
  v43 = [v7 valueForKey:@"wiredIN_var"];
  v42 = [v7 valueForKey:@"wiredOUT"];
  v41 = [v7 valueForKey:@"wiredOUT_mean"];
  v40 = [v7 valueForKey:@"wiredOUT_var"];
  v39 = [v7 valueForKey:@"wwanIN"];
  v38 = [v7 valueForKey:@"wwanIN_mean"];
  v37 = [v7 valueForKey:@"wwanIN_var"];
  v36 = [v7 valueForKey:@"wwanOUT"];
  v35 = [v7 valueForKey:@"wwanOUT_mean"];
  v34 = [v7 valueForKey:@"wwanOUT_var"];
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v17 = [v7 valueForKey:@"firstTimeStamp"];
  v14 = [v7 valueForKey:@"timeStamp"];
  v13 = [v7 valueForKey:@"wifiSampleCount"];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v11 = [v7 valueForKey:@"wiredSampleCount"];
  v10 = [v7 valueForKey:@"wwanSampleCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v29 = [v28 dictionaryWithObjectsAndKeys:{v26, v27, v25, @"wifiInBytes", v24, @"wifiInBytesMean", v23, @"wifiInBytesVar", v22, @"wifiOutBytes", v51, @"wifiOutBytesMean", v21, @"wifiOutBytesVar", v50, @"btInBytes", v20, @"btOutBytes", v49, @"wiredInBytes", v19, @"wiredInBytesMean", v48, @"wiredInBytesVar", v18, @"wiredOutBytes", v47, @"wiredOutBytesMean", v46, @"wiredOutBytesVar", v45, @"awdlInBytes", v44, @"awdlInBytesMean", v43, @"awdlInBytesVar", v42, @"awdlOutBytes", v41, @"awdlOutBytesMean", v40, @"awdlOutBytesVar", v39, @"wwanInBytes", v38, @"wwanInBytesMean", v37, @"wwanInBytesVar", v36, @"wwanOutBytes", v35, @"wwanOutBytesMean", v34, @"wwanOutBytesVar", v33, @"expensiveInBytes", v32, @"expensiveInBytesMean", v31, @"expensiveInBytesVar", v30}];

  return v29;
}

- (id)_calendarUsagePresentation:(id)a3 nameKind:(id)a4 source:(id)a5
{
  v20 = MEMORY[0x1E695DF20];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v19 = [v7 valueForKey:@"timeOfDaySlot"];
  v18 = [v7 valueForKey:@"dayOfWeek"];
  v10 = [v7 valueForKey:@"tier1"];
  v17 = [v7 valueForKey:@"tier2"];
  v11 = [v7 valueForKey:@"tier3"];
  v12 = [v7 valueForKey:@"tier4"];
  v13 = [v7 valueForKey:@"firstTimeStamp"];
  v14 = [v7 valueForKey:@"timeStamp"];

  v15 = [v20 dictionaryWithObjectsAndKeys:{v9, v8, v19, @"daySlot", v18, @"weekSlot", v10, @"tier1", v17, @"tier2", v11, @"tier3", v12, @"tier4", v13, @"sinceTime", v14, @"lastTime", 0}];

  return v15;
}

- (void)_batchFetchCallbackWithResults:(id)a3 logPrefix:(const char *)a4 entityName:(id)a5 pred:(id)a6 service:(id)a7 limit:(unint64_t)a8 offset:(unint64_t)a9 container:(id)a10 actions:(id)a11 reply:(id)a12
{
  v50 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v31 = a11;
  v22 = a12;
  if (v17)
  {
    [v21 addObjectsFromArray:v17];
  }

  else
  {
    v23 = usageLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v43 = a4;
      v44 = 2112;
      v45 = v18;
      _os_log_impl(&dword_1C85F9000, v23, OS_LOG_TYPE_DEFAULT, "%s: [%@] Received nil results array for the callback", buf, 0x16u);
    }
  }

  if ([v17 count] >= a8)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a9 + a8];
    [v31 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69D52A8]];

    v27 = usageLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v17 count];
      *buf = 136315906;
      v43 = a4;
      v44 = 2112;
      v45 = v18;
      v46 = 2048;
      v47 = v28;
      v48 = 2048;
      v49 = a9 + a8;
      _os_log_impl(&dword_1C85F9000, v27, OS_LOG_TYPE_DEFAULT, "%s: [%@] Fetched records in this batch %lu, starting next batch from offset %lu", buf, 0x2Au);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __115__UsageFeed__batchFetchCallbackWithResults_logPrefix_entityName_pred_service_limit_offset_container_actions_reply___block_invoke;
    v32[3] = &unk_1E83193C8;
    v32[4] = self;
    v39 = a4;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v40 = a8;
    v41 = a9 + a8;
    v36 = v21;
    v37 = v31;
    v38 = v22;
    [v35 performQueryOnEntity:v33 pred:v34 sort:0 actions:v37 reply:v32];
  }

  else
  {
    v24 = usageLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v17 count];
      *buf = 136315650;
      v43 = a4;
      v44 = 2112;
      v45 = v18;
      v46 = 2048;
      v47 = v25;
      _os_log_impl(&dword_1C85F9000, v24, OS_LOG_TYPE_DEFAULT, "%s: [%@] Fetched records in last batch %lu, no more fetches left", buf, 0x20u);
    }

    if (v22)
    {
      (*(v22 + 2))(v22, v21, 0);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __80__UsageFeed_prepProcessDataFractionWithTag_andMetadata_from_until_pollInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = usageLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "delegate callback newFeedProcessData:", v8, 2u);
      }

      v7 = [*(a1 + 32) delegate];
      [v7 performSelector:sel_newFeedProcessData_ withObject:*(a1 + 32)];
    }
  }
}

- (BOOL)networkBitmapsToDateWithOptionsFor:(id)a3 startTime:(unint64_t)a4 endTime:(unint64_t)a5 options:(id)a6 reply:(id)a7
{
  v39 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = usageLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = MEMORY[0x1CCA78840](v14);
    *buf = 138413314;
    v30 = v12;
    v31 = 2048;
    v32 = a4;
    v33 = 2048;
    v34 = a5;
    v35 = 2112;
    v36 = v13;
    v37 = 2048;
    v38 = v16;
    _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "> networkBitmapsToDateWithOptionsFor:%@ startTime:%llu endTime:%llu options:%@ reply:%p", buf, 0x34u);
  }

  if (v14)
  {
    if (a4 == -1 || a5 > a4 && a5 - a4 > 7)
    {
      v17 = [(AnalyticsWorkspace *)self->workspace connection];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke;
      v27[3] = &unk_1E8318D20;
      v18 = v14;
      v28 = v18;
      v19 = [v17 remoteObjectProxyWithErrorHandler:v27];

      v20 = v19 != 0;
      if (v19)
      {
        v21 = usageLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v30 = v12;
          v31 = 2048;
          v32 = a4;
          v33 = 2048;
          v34 = a5;
          v35 = 2112;
          v36 = v13;
          _os_log_impl(&dword_1C85F9000, v21, OS_LOG_TYPE_DEBUG, "getNetworkBitmapsWithNames:%@ startTime:%llu endTime:%llu options:%@", buf, 0x2Au);
        }

        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke_406;
        v25[3] = &unk_1E8318D98;
        v26 = v18;
        [v19 getNetworkBitmapsWithNames:v12 startTime:a4 endTime:a5 options:v13 reply:v25];
      }

      v22 = v28;
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      (*(v14 + 2))(v14, 0, v22);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

void __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for networkBitmapsToDateWithOptionsFor:startTime:endTime:options:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __80__UsageFeed_networkBitmapsToDateWithOptionsFor_startTime_endTime_options_reply___block_invoke_406(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = usageLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "getNetworkBitmapsWithNames:startTime:endTime:options:reply: received callback with error:%@ outcome:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)usageToDateFor:(id)a3 nameKind:(id)a4 reply:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = usageLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](v10);
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> usageToDateFor:%@ nameKind:%@ reply:%p", &v16, 0x20u);
  }

  v13 = [(UsageFeed *)self usageToDateWithOptionsFor:v8 nameKind:v9 options:0 reply:v10];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)usageToDateWithOptionsFor:(id)a3 nameKind:(id)a4 options:(id)a5 reply:(id)a6
{
  v117 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = usageLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = MEMORY[0x1CCA78840](v13);
    *buf = 138413058;
    v110 = v10;
    v111 = 2112;
    v112 = v11;
    v113 = 2112;
    v114 = v12;
    v115 = 2048;
    v116 = v15;
    _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "> usageToDateWithOptionsFor:%@ nameKind:%@ options:%@ reply:%p", buf, 0x2Au);
  }

  v16 = [v11 isEqualToString:@"procName"];
  v17 = [v11 isEqualToString:@"bundleName"];
  if ((v16 & 1) != 0 || v17)
  {
    v108 = 0;
    v19 = [(UsageFeed *)self _composeLiveUsagePredicateWithNames:v10 kind:v11 isProcNameKey:v16 isSweep:&v108];
    v18 = v19 != 0;
    if (!v19)
    {
LABEL_36:

      goto LABEL_37;
    }

    [(UsageFeed *)self clearLoggingCounters];
    v72 = v13;
    v73 = v10;
    v70 = v12;
    v68 = v19;
    if (v12)
    {
      v20 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69D53A8]];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 BOOLValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69D53B0]];
      v24 = v23;
      if (v23)
      {
        v65 = [v23 unsignedIntValue];
      }

      else
      {
        v65 = 0;
      }

      v25 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69D5298]];
      v26 = v25;
      if (v25)
      {
        v63 = [v25 BOOLValue];
      }

      else
      {
        v63 = 0;
      }
    }

    else
    {
      v65 = 0;
      v63 = 0;
      v22 = 0;
    }

    v67 = v18;
    v74 = objc_alloc(MEMORY[0x1E695DF90]);
    v27 = MEMORY[0x1E69D5208];
    v28 = v108;
    v29 = MEMORY[0x1E69D53B8];
    if (v108 == 1)
    {
      v30 = *MEMORY[0x1E69D53B8];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      if ((v108 & 1) == 0)
      {
        v31 = [MEMORY[0x1E695DFB0] null];
        v32 = 0;
        goto LABEL_24;
      }
    }

    v31 = *v29;
    v32 = 1;
LABEL_24:
    v33 = *v27;
    if (v22)
    {
      v69 = [v74 initWithObjectsAndKeys:{v33, @"hasProcess.firstTimeStamp", v33, @"hasProcess.procName", v33, @"hasProcess.bundleName", v33, @"hasProcess.extensionName", v30, v31, *MEMORY[0x1E69D53A8], *MEMORY[0x1E69D53A8], 0}];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      v35 = [MEMORY[0x1E695DFB0] null];
      v69 = [v74 initWithObjectsAndKeys:{v33, @"hasProcess.firstTimeStamp", v33, @"hasProcess.procName", v33, @"hasProcess.bundleName", v33, @"hasProcess.extensionName", v30, v31, v34, v35, 0}];
    }

    if ((v32 & 1) == 0)
    {
    }

    v71 = v11;
    if ((v28 & 1) == 0)
    {
    }

    v36 = [(AnalyticsWorkspace *)self->workspace connection];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke;
    v106[3] = &unk_1E8318D20;
    v37 = v72;
    v107 = v37;
    v75 = [v36 remoteObjectProxyWithErrorHandler:v106];

    v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_408;
    v95[3] = &unk_1E8319410;
    v95[4] = self;
    v104 = v16;
    v105 = v63;
    v96 = v73;
    v97 = v11;
    v12 = v70;
    v98 = v70;
    v42 = v38;
    v99 = v42;
    v103 = v65;
    v43 = v41;
    v100 = v43;
    v44 = v39;
    v101 = v44;
    v45 = v40;
    v102 = v45;
    v46 = MEMORY[0x1CCA78840](v95);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_446;
    v86[3] = &unk_1E8319460;
    v66 = v42;
    v87 = v66;
    v88 = self;
    v47 = self;
    v93 = v16;
    v48 = v44;
    v89 = v48;
    v94 = v63;
    v49 = v45;
    v90 = v49;
    v50 = v43;
    v91 = v50;
    v92 = v37;
    v51 = MEMORY[0x1CCA78840](v86);
    v64 = v48;
    if (v75)
    {
      v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
      LimitFor = [(UsageFeed *)v47 _batchFetchLimitForDatabase];
      v56 = [MEMORY[0x1E69D5140] entityName];
      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:LimitFor];
      [v69 setObject:v57 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      [v69 setObject:v58 forKeyedSubscript:*MEMORY[0x1E69D52A8]];

      v59 = usageLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v110 = v68;
        v111 = 2112;
        v112 = v69;
        _os_log_impl(&dword_1C85F9000, v59, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:LiveUsage pred:%@ sort:nil actions:%@", buf, 0x16u);
      }

      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_449;
      v76[3] = &unk_1E83194B0;
      v76[4] = v47;
      v77 = v56;
      v78 = v68;
      v84 = LimitFor;
      v85 = 0;
      v79 = v75;
      v80 = v62;
      v81 = v69;
      v82 = v46;
      v83 = v51;
      v60 = v62;
      v61 = v56;
      [v79 performQueryOnEntity:v61 pred:v78 sort:0 actions:v81 reply:v76];

      v19 = v68;
      v10 = v73;
      v12 = v70;
    }

    else
    {
      v52 = usageLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C85F9000, v52, OS_LOG_TYPE_DEBUG, "nil XPC service (local query)", buf, 2u);
      }

      [(UsageFeed *)v47 displayLoggingCounters:@"usageToDateWithOptionsFor: service was nil"];
      v19 = v68;
      [(UsageFeed *)v47 _processLiveUsageWithPredicate:v68 attributesBlock:v46 outcomeBlock:v51];
      v10 = v73;
    }

    v11 = v71;
    v13 = v72;
    v18 = v67;

    goto LABEL_36;
  }

  v18 = 0;
LABEL_37:

  v53 = *MEMORY[0x1E69E9840];
  return v18;
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for usageToDateWithOptionsFor:nameKind:kind:options:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_408(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [*(a1 + 32) _getUsageKeyWithProcess:v12 bundleID:v13 extension:v14 isProcNameKey:*(a1 + 100) showExtension:*(a1 + 101)];
  if (!v16)
  {
    v20 = usageLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 100);
      v22 = *(a1 + 101);
      v23 = *(a1 + 40);
      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      *buf = 138479619;
      v57 = v12;
      v58 = 2113;
      v59 = v13;
      v60 = 2113;
      v61 = v14;
      v62 = 1024;
      v63 = v21;
      v64 = 1024;
      v65 = v22;
      v66 = 2113;
      v67 = v23;
      v68 = 2112;
      v69 = v24;
      v70 = 2112;
      v71 = v25;
      _os_log_impl(&dword_1C85F9000, v20, OS_LOG_TYPE_ERROR, "Usage key should not be nil: process=%{private}@, bundleID=%{private}@, extension=%{private}@, isProcNameKey=%d, showExtension=%d (names=%{private}@, kind=%@, opt=%@)", buf, 0x4Au);
    }

    v53[0] = @"process";
    v26 = v12;
    if (!v12)
    {
      v26 = [MEMORY[0x1E695DFB0] null];
    }

    v44 = v26;
    v54[0] = v26;
    v53[1] = @"bundleID";
    v27 = v13;
    if (!v13)
    {
      v27 = [MEMORY[0x1E695DFB0] null];
    }

    v43 = v27;
    v54[1] = v27;
    v53[2] = @"extension";
    v28 = v14;
    if (!v14)
    {
      v28 = [MEMORY[0x1E695DFB0] null];
    }

    v47 = v15;
    v42 = v28;
    v54[2] = v28;
    v53[3] = @"isProcNameKey";
    v46 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 100)];
    v54[3] = v46;
    v53[4] = @"showExtension";
    v45 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 101)];
    v54[4] = v45;
    v53[5] = @"SPI parameters";
    v51[0] = @"names";
    v29 = [*(a1 + 40) allObjects];
    v30 = v29;
    if (!v29)
    {
      v29 = [MEMORY[0x1E695DFB0] null];
    }

    v48 = v13;
    v41 = v29;
    v52[0] = v29;
    v51[1] = @"kind";
    v31 = *(a1 + 48);
    v32 = v31;
    if (!v31)
    {
      v32 = [MEMORY[0x1E695DFB0] null];
    }

    v49 = v12;
    v50 = v11;
    v39 = v32;
    v52[1] = v32;
    v51[2] = @"options";
    v33 = *(a1 + 56);
    v34 = v33;
    if (!v33)
    {
      v34 = [MEMORY[0x1E695DFB0] null];
    }

    v52[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:{3, v39}];
    v54[5] = v35;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:6];
    v55 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];

    if (!v33)
    {
    }

    v12 = v49;
    if (!v31)
    {
    }

    v13 = v48;
    if (!v30)
    {
    }

    v15 = v47;
    if (v14)
    {
      if (v48)
      {
        goto LABEL_34;
      }
    }

    else
    {

      if (v48)
      {
LABEL_34:
        if (v49)
        {
LABEL_35:
          [*(a1 + 32) _triggerAutoBugCaptureForSubType:@"Network usage key is nil" subtypeContext:@"usageToDateWithOptionsFor" events:v37 replyBlock:&__block_literal_global_1];

          v11 = v50;
          goto LABEL_36;
        }

LABEL_39:

        goto LABEL_35;
      }
    }

    if (v49)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  [*(a1 + 32) _rollUsageValuesFromDict:v11 toDict:*(a1 + 64) forKey:v16 subscriberTag:*(a1 + 96)];
  if (v15)
  {
    v17 = [*(a1 + 72) objectForKeyedSubscript:v16];

    if (!v17)
    {
      [*(a1 + 72) setObject:v15 forKeyedSubscript:v16];
    }
  }

  if (v13)
  {
    v18 = [*(a1 + 80) objectForKeyedSubscript:v16];

    if (!v18)
    {
      [*(a1 + 80) setObject:v13 forKeyedSubscript:v16];
    }
  }

  if (v14)
  {
    if (*(a1 + 101))
    {
      v19 = [*(a1 + 88) objectForKeyedSubscript:v16];

      if (!v19)
      {
        [*(a1 + 88) setObject:v14 forKeyedSubscript:v16];
      }
    }
  }

LABEL_36:

  v38 = *MEMORY[0x1E69E9840];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_443(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEFAULT, "Usage key is nil. ABC response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_446(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2;
  v10[3] = &unk_1E8319438;
  v14 = *(a1 + 80);
  v9 = *(a1 + 40);
  v4 = *(&v9 + 1);
  v15 = *(a1 + 81);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = v2;
  v8 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v10];
  (*(*(a1 + 72) + 16))();
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = [a3 bytes];
  if (*(a1 + 72))
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) objectForKeyedSubscript:?];
  v9 = *(a1 + 73);
  if (v9 == 1)
  {
    v10 = [*(a1 + 48) objectForKeyedSubscript:v13];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 56) objectForKeyedSubscript:v13];
  v12 = [v7 _usagePresentationWithProcess:v6 bundleID:v8 extension:v10 source:v5 since:v11];

  if (v9)
  {
  }

  [*(a1 + 64) addObject:v12];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_449(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2_451;
  v12[3] = &unk_1E8319488;
  v12[4] = v3;
  v13 = v9;
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  [v3 _batchFetchCallbackWithResults:a2 logPrefix:"Usage" entityName:v4 pred:v5 service:v6 limit:v7 offset:v8 container:v13 actions:v10 reply:v12];
}

void __62__UsageFeed_usageToDateWithOptionsFor_nameKind_options_reply___block_invoke_2_451(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    v7 = [v3 count];
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with %lu usages:%@", &v6, 0x16u);
  }

  [*(a1 + 32) displayLoggingCounters:@"usageToDateWithOptionsFor: service non-nil"];
  [*(a1 + 32) _processLiveUsageWithUsages:*(a1 + 40) attributesBlock:*(a1 + 48) outcomeBlock:*(a1 + 56)];

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)typicalUsageFor:(id)a3 nameKind:(id)a4 intervalKind:(unsigned int)a5 reply:(id)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = usageLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = MEMORY[0x1CCA78840](v12);
    *buf = 138413058;
    v81 = v10;
    v82 = 2112;
    v83 = v11;
    v84 = 1024;
    v85 = a5;
    v86 = 2048;
    v87 = v14;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "> typicalUsageFor:%@ nameKind:%@ intervalKind:%d reply:%p", buf, 0x26u);
  }

  v78 = 0;
  v15 = [v11 isEqualToString:@"bundleName"];
  v16 = 0;
  if (!a5 && v15)
  {
    [(UsageFeed *)self clearLoggingCounters];
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    if (v10)
    {
      v18 = [v10 count] == 1;
    }

    else
    {
      v18 = 0;
    }

    v77 = 0;
    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %lu", @"intervalType", 0];
    v20 = [(UsageFeed *)self _composePredicateLineWithName:v10 keyPath:@"hasApp.bundleName" isSweep:&v78 wantGeneric:v18 gotGeneric:&v77];
    v21 = v20;
    if (v19)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    v16 = !v22;
    if (v22)
    {
LABEL_43:

      goto LABEL_44;
    }

    v63 = v16;
    v65 = v11;
    v68 = v10;
    v62 = v19;
    [v17 addObject:v19];
    v61 = v21;
    [v17 addObject:v21];
    v64 = v17;
    v66 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v17];
    v23 = MEMORY[0x1E69D5208];
    v59 = MEMORY[0x1E695DF20];
    v24 = v78;
    v25 = MEMORY[0x1E69D53B8];
    v67 = v12;
    if (v78 == 1)
    {
      v26 = *MEMORY[0x1E69D53B8];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      if ((v78 & 1) == 0)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
        v28 = 0;
        goto LABEL_20;
      }
    }

    v27 = *v25;
    v28 = 1;
LABEL_20:
    v29 = *v23;
    v10 = v68;
    if (v77 == 1)
    {
      [v68 anyObject];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v30 = ;
    v31 = v30;
    if (v77 == 1)
    {
      v32 = [v59 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", v26, v27, v30, *MEMORY[0x1E69D5360], 0}];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      v32 = [v59 dictionaryWithObjectsAndKeys:{v29, @"hasApp.bundleName", v26, v27, v31, v33, 0}];
    }

    if ((v28 & 1) == 0)
    {
    }

    if ((v24 & 1) == 0)
    {
    }

    v34 = [(AnalyticsWorkspace *)self->workspace connection];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke;
    v75[3] = &unk_1E8318D20;
    v12 = v67;
    v35 = v67;
    v76 = v35;
    v36 = [v34 remoteObjectProxyWithErrorHandler:v75];

    if (v36)
    {
      v37 = usageLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v81 = v32;
        _os_log_impl(&dword_1C85F9000, v37, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:AppTypicalUsage pred:pred sort:nil actions:%@", buf, 0xCu);
      }

      v38 = [MEMORY[0x1E69D5178] entityName];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke_470;
      v73[3] = &unk_1E8318AC8;
      v73[4] = self;
      v74 = v35;
      v39 = v66;
      [v36 performQueryOnEntity:v38 pred:v66 sort:0 actions:v32 reply:v73];

      v17 = v64;
      v11 = v65;
      v16 = v63;
      v21 = v61;
      v19 = v62;
    }

    else
    {
      v58 = v35;
      v60 = v32;
      v40 = objc_alloc(MEMORY[0x1E69D5150]);
      workspace = self->workspace;
      v42 = [MEMORY[0x1E69D5178] entityName];
      v43 = [v40 initWithWorkspace:workspace entityName:v42 withCache:0];

      v57 = v43;
      v44 = [v43 fetchEntitiesFreeForm:v66 sortDesc:0];
      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v46 = v44;
      v47 = [v46 countByEnumeratingWithState:&v69 objects:v79 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v70;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v70 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v69 + 1) + 8 * i);
            v52 = [v51 hasApp];
            v53 = [v52 bundleName];
            v54 = [(UsageFeed *)self _typicalUsagePresentation:v53 nameKind:@"bundleName" source:v51];

            [v45 addObject:v54];
          }

          v48 = [v46 countByEnumeratingWithState:&v69 objects:v79 count:16];
        }

        while (v48);
      }

      [(UsageFeed *)self displayLoggingCounters:@"typicalUsageFor: service is nil"];
      v58[2](v58, v45);

      v12 = v67;
      v10 = v68;
      v17 = v64;
      v11 = v65;
      v16 = v63;
      v21 = v61;
      v19 = v62;
      v39 = v66;
      v36 = 0;
      v32 = v60;
    }

    goto LABEL_43;
  }

LABEL_44:

  v55 = *MEMORY[0x1E69E9840];
  return v16;
}

void __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for typicalUsageFor:nameKind:intervalKind:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __57__UsageFeed_typicalUsageFor_nameKind_intervalKind_reply___block_invoke_470(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              if ([v14 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v15 != 0)
              {
                v17 = [v7 objectForKey:v14];
                v18 = [*(a1 + 32) _typicalUsagePresentation:v17 nameKind:@"bundleName" source:v7];
                [v21 addObject:v18];

                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }

LABEL_20:
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) displayLoggingCounters:@"typicalUsageFor: service non-nil"];
  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for calendarUsageFor:nameKind:dayResolution:daySlot:weekSlot:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_482(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v72 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v51 = *v65;
    v46 = v5;
    v47 = a1;
    v45 = v6;
    do
    {
      v9 = 0;
      v48 = v8;
      do
      {
        if (*v65 != v51)
        {
          objc_enumerationMutation(v6);
        }

        v52 = v9;
        v10 = *(*(&v64 + 1) + 8 * v9);
        v11 = [v10 allKeys];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = v11;
        v12 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v61;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v61 != v14)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v60 + 1) + 8 * i);
              if ([v16 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v17 != 0)
              {
                v19 = [v10 objectForKeyedSubscript:v16];
                v20 = v19;
                if (*(a1 + 64))
                {
                  v21 = [*(a1 + 48) _calendarUsagePresentation:v19 nameKind:@"bundleName" source:v10];
                  [v5 addObject:v21];
                }

                else
                {
                  v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v23 = [v10 objectForKeyedSubscript:@"timeOfDaySlot"];
                  v21 = [v22 initWithFormat:@"%@, %d", v20, objc_msgSend(v23, "unsignedShortValue")];

                  v24 = [*(a1 + 32) objectForKey:v21];
                  if (v24)
                  {
                    v25 = v24;
                    v49 = v21;
                    v50 = v20;
                    v58 = 0u;
                    v59 = 0u;
                    v56 = 0u;
                    v57 = 0u;
                    v26 = *(a1 + 40);
                    v27 = [v26 countByEnumeratingWithState:&v56 objects:v68 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v57;
                      do
                      {
                        for (j = 0; j != v28; ++j)
                        {
                          if (*v57 != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v56 + 1) + 8 * j);
                          v32 = [v25 objectForKeyedSubscript:v31];
                          v33 = [v32 unsignedIntValue];

                          v34 = [v10 objectForKeyedSubscript:v31];
                          v35 = [v34 unsignedIntValue];

                          v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v35 + v33)];
                          [v25 setObject:v36 forKeyedSubscript:v31];
                        }

                        v28 = [v26 countByEnumeratingWithState:&v56 objects:v68 count:16];
                      }

                      while (v28);
                    }

                    v37 = [v10 objectForKeyedSubscript:@"firstTimeStamp"];
                    v38 = [v25 objectForKeyedSubscript:@"firstTimeStamp"];
                    v39 = [v37 earlierDate:v38];

                    v40 = [v10 objectForKeyedSubscript:@"timeStamp"];
                    v41 = [v25 objectForKeyedSubscript:@"timeStamp"];
                    v42 = [v40 laterDate:v41];

                    [v25 setObject:v39 forKeyedSubscript:@"firstTimeStamp"];
                    [v25 setObject:v42 forKeyedSubscript:@"timeStamp"];

                    v5 = v46;
                    a1 = v47;
                    v6 = v45;
                    v8 = v48;
                    v21 = v49;
                    v20 = v50;
                  }

                  else
                  {
                    [*(a1 + 32) setObject:v10 forKeyedSubscript:v21];
                  }
                }

                goto LABEL_34;
              }
            }

            v13 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_34:

        v9 = v52 + 1;
      }

      while (v52 + 1 != v8);
      v8 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v8);
  }

  if (!*(a1 + 64))
  {
    v43 = *(a1 + 32);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_486;
    v54[3] = &unk_1E8318BB8;
    v54[4] = *(a1 + 48);
    v55 = v5;
    [v43 enumerateKeysAndObjectsUsingBlock:v54];
  }

  (*(*(a1 + 56) + 16))();

  v44 = *MEMORY[0x1E69E9840];
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_486(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 componentsSeparatedByString:{@", "}];
  v8 = [v6 objectAtIndex:0];

  v7 = [*(a1 + 32) _calendarUsagePresentation:v8 nameKind:@"bundleName" source:v5];

  [*(a1 + 40) addObject:v7];
}

void __76__UsageFeed_calendarUsageFor_nameKind_dayResolution_daySlot_weekSlot_reply___block_invoke_490(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 componentsSeparatedByString:{@", "}];
  v8 = [v6 objectAtIndex:0];

  v7 = [*(a1 + 32) _calendarUsagePresentation:v8 nameKind:@"bundleName" source:v5];

  [*(a1 + 40) addObject:v7];
}

- (BOOL)algosScoreToDateWithOptionsFor:(id)a3 nameKind:(id)a4 startTime:(id)a5 options:(id)a6 reply:(id)a7
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = usageLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = MEMORY[0x1CCA78840](v16);
    *buf = 138413314;
    v49 = v12;
    v50 = 2112;
    v51 = v13;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "> algosScoreToDateWithOptionsFor:%@ nameKind:%@ startTime:%@ options:%@ reply:%p", buf, 0x34u);
  }

  if (v16 && [v13 isEqualToString:@"bundleName"])
  {
    v47 = 0;
    if (v12)
    {
      v19 = [v12 count] == 1;
    }

    else
    {
      v19 = 0;
    }

    v46 = 0;
    v21 = [(UsageFeed *)self _composePredicateLineWithName:v12 keyPath:@"hasApp.bundleName" isSweep:&v47 wantGeneric:v19 gotGeneric:&v46];
    if (!v21)
    {
      v20 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v41 = v21;
    v22 = MEMORY[0x1E69D5208];
    v39 = MEMORY[0x1E695DF20];
    v23 = MEMORY[0x1E69D53B8];
    v37 = v47;
    if (v47 == 1)
    {
      v38 = *MEMORY[0x1E69D53B8];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      if ((v47 & 1) == 0)
      {
        v24 = [MEMORY[0x1E695DFB0] null];
        v36 = 0;
        goto LABEL_16;
      }
    }

    v24 = *v23;
    v36 = 1;
LABEL_16:
    v25 = *v22;
    if (v46 == 1)
    {
      [v12 anyObject];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v26 = ;
    v27 = v26;
    if (v46 == 1)
    {
      v40 = [v39 dictionaryWithObjectsAndKeys:{v25, @"hasApp.bundleName", v38, v24, v26, *MEMORY[0x1E69D5360], 0}];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      v40 = [v39 dictionaryWithObjectsAndKeys:{v25, @"hasApp.bundleName", v38, v24, v27, v28, 0}];
    }

    if ((v36 & 1) == 0)
    {
    }

    if ((v37 & 1) == 0)
    {
    }

    v29 = [(AnalyticsWorkspace *)self->workspace connection];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke;
    v44[3] = &unk_1E8318D20;
    v30 = v16;
    v45 = v30;
    v31 = [v29 remoteObjectProxyWithErrorHandler:v44];

    v20 = v31 != 0;
    if (v31)
    {
      v32 = usageLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v49 = v41;
        v50 = 2112;
        v51 = v40;
        _os_log_impl(&dword_1C85F9000, v32, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:AppExperience pred:%@ sort:nil actions:%@", buf, 0x16u);
      }

      v33 = [MEMORY[0x1E69D5170] entityName];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke_492;
      v42[3] = &unk_1E8319500;
      v43 = v30;
      [v31 performQueryOnEntity:v33 pred:v41 sort:0 actions:v40 reply:v42];
    }

    v21 = v41;
    goto LABEL_31;
  }

  v20 = 0;
LABEL_32:

  v34 = *MEMORY[0x1E69E9840];
  return v20;
}

void __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for algosScoreToDateWithOptionsFor:nameKind:startTime:options:reply: %@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

void __77__UsageFeed_algosScoreToDateWithOptionsFor_nameKind_startTime_options_reply___block_invoke_492(uint64_t a1, void *a2)
{
  v26 = a1;
  v44 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = usageLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v43 = v2;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v2;
  v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v30)
  {
    v29 = *v37;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v4;
        v5 = *(*(&v36 + 1) + 8 * v4);
        v6 = [v5 allKeys];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v33;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v33 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v32 + 1) + 8 * i);
              if ([v12 rangeOfString:@"bundleName"] != 0x7FFFFFFFFFFFFFFFLL && v13 != 0)
              {
                v15 = [v5 objectForKeyedSubscript:@"firstTimeStamp"];
                if (v15)
                {
                  v16 = v15;
                  v17 = [v5 objectForKeyedSubscript:@"timeStamp"];

                  if (v17)
                  {
                    v18 = [v5 objectForKey:v12];
                    v19 = [v28 objectForKeyedSubscript:v18];
                    v20 = [v5 mutableCopy];
                    v21 = [v5 objectForKey:@"hasApp.bundleName"];
                    [v20 setObject:v21 forKey:@"bundleName"];

                    [v20 removeObjectForKey:@"hasApp.bundleName"];
                    v22 = [v5 objectForKey:@"firstTimeStamp"];
                    [v20 setObject:v22 forKey:@"sinceTime"];

                    [v20 removeObjectForKey:@"firstTimeStamp"];
                    v23 = [v5 objectForKey:@"timeStamp"];
                    [v20 setObject:v23 forKey:@"lastTime"];

                    [v20 removeObjectForKey:@"timeStamp"];
                    if (v19)
                    {
                      [v19 addObject:v20];
                    }

                    else
                    {
                      v24 = objc_opt_new();
                      [v24 addObject:v20];
                      [v28 setObject:v24 forKeyedSubscript:v18];
                    }

                    goto LABEL_26;
                  }
                }
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_26:

        v4 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v30);
  }

  (*(*(v26 + 32) + 16))();
  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)setUsageOption:(id)a3 reply:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setUsageOption:%@ reply:%p", buf, 0x16u);
  }

  v10 = [(AnalyticsWorkspace *)self->workspace connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__UsageFeed_setUsageOption_reply___block_invoke;
  v19[3] = &unk_1E8318D20;
  v11 = v7;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v19];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    v14 = usageLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "setOption:%@ inScopes:%@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__UsageFeed_setUsageOption_reply___block_invoke_493;
    v17[3] = &unk_1E8319528;
    v18 = v11;
    [v12 setOption:v6 inScopes:v13 reply:v17];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

void __34__UsageFeed_setUsageOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setUsageOption:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __34__UsageFeed_setUsageOption_reply___block_invoke_493(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "setOption:inScopes:reply: received callback with before:%@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)getUsageOption:(id)a3 reply:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v22 = v6;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getUsageOption:%@ reply:%p", buf, 0x16u);
  }

  v10 = [(AnalyticsWorkspace *)self->workspace connection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __34__UsageFeed_getUsageOption_reply___block_invoke;
  v19[3] = &unk_1E8318D20;
  v11 = v7;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v19];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    v14 = usageLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v6;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1C85F9000, v14, OS_LOG_TYPE_DEBUG, "getOption:%@ inScopes:%@", buf, 0x16u);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __34__UsageFeed_getUsageOption_reply___block_invoke_494;
    v17[3] = &unk_1E8319528;
    v18 = v11;
    [v12 getOption:v6 inScopes:v13 reply:v17];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

void __34__UsageFeed_getUsageOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getUsageOption:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __34__UsageFeed_getUsageOption_reply___block_invoke_494(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "getOption:inScopes:reply: received callback with current:%@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)resetUsageDataFor:(id)a3 nameKind:(id)a4 reply:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = usageLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](v10);
    *buf = 138478339;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> resetUsageDataFor:%{private}@ nameKind:%@ reply:%p", buf, 0x20u);
  }

  v13 = [(AnalyticsWorkspace *)self->workspace connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke;
  v23[3] = &unk_1E8318D20;
  v14 = v10;
  v24 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v23];

  if (v15)
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53C0], 0}];
    v17 = [v8 allObjects];
    v18 = usageLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v26 = v17;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1C85F9000, v18, OS_LOG_TYPE_DEBUG, "resetDataFor:%@ nameKind:%@ inScopes:%@", buf, 0x20u);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke_495;
    v21[3] = &unk_1E8318D70;
    v22 = v14;
    [v15 resetDataFor:v17 nameKind:v9 inScopes:v16 reply:v21];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15 != 0;
}

void __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for resetUsageDataFor:nameKind:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __46__UsageFeed_resetUsageDataFor_nameKind_reply___block_invoke_495(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "resetDataFor:nameKind:inScopes:reply: received callback with result:%{BOOL}d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)identifierForUUID:(id)a3 reply:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v23 = v6;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> identifierForUUID:%@ reply:%p", buf, 0x16u);
  }

  v10 = [(AnalyticsWorkspace *)self->workspace connection];

  if (v10)
  {
    v11 = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __37__UsageFeed_identifierForUUID_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v12 = v7;
    v21 = v12;
    v13 = [v11 remoteObjectProxyWithErrorHandler:v20];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = usageLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v23 = v6;
        _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "identifierForUUID:%@", buf, 0xCu);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __37__UsageFeed_identifierForUUID_reply___block_invoke_497;
      v18[3] = &unk_1E8319550;
      v19 = v12;
      [v13 identifierForUUID:v6 reply:v18];
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __37__UsageFeed_identifierForUUID_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __37__UsageFeed_identifierForUUID_reply___block_invoke_497(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = usageLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "identifierForUUID:reply: received callback with error:%@ name:%@ kind:%@", &v12, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_performNetDomainsQueryOnService:(id)a3 entityName:(id)a4 fetchProps:(id)a5 pred:(id)a6 sort:(id)a7 actions:(id)a8 queryTimer:(id)a9 replyProcessBlock:(id)a10 accumulatedResults:(id)a11 callbackBlock:(id)a12
{
  v63 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v37 = a10;
  v22 = a11;
  v23 = a12;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__1;
  v51[4] = __Block_byref_object_dispose__1;
  v52 = MEMORY[0x1CCA78840]();
  v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v25 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke;
  handler[3] = &unk_1E8319578;
  v26 = v24;
  v47 = v26;
  v27 = v17;
  v48 = v27;
  v28 = v19;
  v49 = v28;
  v50 = v51;
  dispatch_source_set_event_handler(v26, handler);
  v29 = usageLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v54 = v26;
    _os_log_impl(&dword_1C85F9000, v29, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
  }

  dispatch_activate(v26);
  v30 = usageLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413314;
    v54 = v27;
    v55 = 2112;
    v56 = v18;
    v57 = 2112;
    v58 = v28;
    v59 = 2112;
    v60 = v20;
    v61 = 2112;
    v62 = v21;
    _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:%@ fetchRequestProperties:%@ pred:%@ sort:%@ actions:%@", buf, 0x34u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke_576;
  v39[3] = &unk_1E83195A0;
  v31 = v26;
  v40 = v31;
  v32 = v27;
  v41 = v32;
  v33 = v22;
  v42 = v33;
  v34 = v37;
  v43 = v34;
  v35 = v23;
  v44 = v35;
  v45 = v51;
  [v38 performQueryOnEntity:v32 fetchRequestProperties:v18 pred:v28 sort:v20 actions:v21 reply:v39];

  _Block_object_dispose(v51, 8);
  v36 = *MEMORY[0x1E69E9840];
}

void __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v14 = 134217984;
    v15 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v14, 0xCu);
  }

  dispatch_source_cancel(*(a1 + 32));
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) description];
    v7 = v6;
    v8 = &stru_1F483F350;
    if (v6)
    {
      v8 = v6;
    }

    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v14, 0x16u);
  }

  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v9)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v9 + 16))(v9, MEMORY[0x1E695E0F8], v10, 0);

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __164__UsageFeed_NetworkDomains___performNetDomainsQueryOnService_entityName_fetchProps_pred_sort_actions_queryTimer_replyProcessBlock_accumulatedResults_callbackBlock___block_invoke_576(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_source_testcancel(*(a1 + 32));
  v5 = usageLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v22 = v8;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Deactivating timer %p", buf, 0xCu);
    }

    dispatch_source_cancel(*(a1 + 32));
    v9 = usageLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:fetchRequestProperties:pred:sort:actions:reply: received callback with results:%@", buf, 0xCu);
    }

    v10 = v3;
    v11 = *(a1 + 48);
    v5 = v10;
    if (v11)
    {
      [v11 addObjectsFromArray:v10];
      v5 = *(a1 + 48);
    }

    v12 = *(a1 + 56);
    if (!v12 || (*(v12 + 16))(v12, *(a1 + 32), v10, *(a1 + 48), *(a1 + 64)))
    {
      if (!v5)
      {
        v5 = MEMORY[0x1E695E0F0];
      }

      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject count](v5, "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], v5)}];
      v20[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:2];

      v15 = *(*(*(a1 + 72) + 8) + 40);
      if (v15)
      {
        (*(v15 + 16))(v15, v14, 0, 0);
        v16 = *(*(a1 + 72) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = 0;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)networkDomainsToDateWithOptionsFor:(id)a3 nameKind:(id)a4 domainType:(unsigned __int16)a5 startTime:(id)a6 options:(id)a7 fetchProperties:(id)a8 reply:(id)a9
{
  v82 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v45 = a4;
  v46 = a6;
  v14 = a7;
  v50 = a8;
  v15 = a9;
  v16 = usageLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = MEMORY[0x1CCA78840](v15);
    *buf = 138412802;
    v73 = v14;
    v74 = 2112;
    v75 = v50;
    v76 = 2048;
    v77 = v17;
    _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "> networkDomainsToDateWithOptionsFor:nameKind:domainType:startTime: options:%@ fetchProperties:%@ reply:%p", buf, 0x20u);
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__577;
  v70 = __Block_byref_object_dispose__578;
  v71 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke;
  v63[3] = &unk_1E83195C8;
  v65 = &v66;
  v47 = v15;
  v64 = v47;
  v18 = MEMORY[0x1CCA78840](v63);
  v19 = [(AnalyticsWorkspace *)self->workspace connection];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_580;
  v61[3] = &unk_1E8318D20;
  v20 = v18;
  v62 = v20;
  v21 = [v19 remoteObjectProxyWithErrorHandler:v61];

  if (v21)
  {
    v22 = [MEMORY[0x1E69D5160] entityName];
    v23 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D53B8], 0}];
    v24 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5248]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v24;
    }

    else
    {
      v49 = 0;
    }

    v25 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5240]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v25;
    }

    else
    {
      v48 = 0;
    }

    v26 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5238]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v24;
      v28 = v26;
      v29 = [v28 integerValue];

      v24 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithInteger:v29];
    [v23 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    v43 = v24;

    v59[0] = 0;
    v59[1] = v59;
    v59[2] = 0x3032000000;
    v59[3] = __Block_byref_object_copy__1;
    v59[4] = __Block_byref_object_dispose__1;
    v60 = MEMORY[0x1CCA78840](v20);
    v31 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v32 = v67[5];
    v67[5] = v31;

    v33 = v67[5];
    v34 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v33, v34, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v35 = v67[5];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_583;
    handler[3] = &unk_1E83195F0;
    v57 = &v66;
    v36 = v22;
    v56 = v36;
    v58 = v59;
    dispatch_source_set_event_handler(v35, handler);
    v37 = usageLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = v67[5];
      *buf = 134217984;
      v73 = v38;
      _os_log_impl(&dword_1C85F9000, v37, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
    }

    dispatch_activate(v67[5]);
    v39 = usageLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v73 = v36;
      v74 = 2112;
      v75 = v50;
      v76 = 2112;
      v77 = v48;
      v78 = 2112;
      v79 = v49;
      v80 = 2112;
      v81 = v23;
      _os_log_impl(&dword_1C85F9000, v39, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:%@ fetchRequestProperties:%@ pred:%@ sort:%@ actions:%@", buf, 0x34u);
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_584;
    v51[3] = &unk_1E8319618;
    v53 = &v66;
    v40 = v36;
    v52 = v40;
    v54 = v59;
    [v21 performQueryOnEntity:v40 fetchRequestProperties:v50 pred:v48 sort:v49 actions:v23 reply:v51];

    _Block_object_dispose(v59, 8);
  }

  _Block_object_dispose(&v66, 8);
  v41 = *MEMORY[0x1E69E9840];
  return v21 != 0;
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = usageLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEFAULT, "AppDomainUsage: Forcing callback due to error %@", &v13, 0xCu);
    }
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  if (v11 && !dispatch_source_testcancel(*(v10 + 40)))
  {
    dispatch_source_cancel(v11);
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_580(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA78840](*(a1 + 32));
  v5 = usageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "AppDomainUsage: Remote proxy error %@", &v9, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v4)[2](v4, v6, v7, 1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_583(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v11, 0xCu);
  }

  dispatch_source_cancel(*(*(a1[5] + 8) + 40));
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = &stru_1F483F350;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v11, 0x16u);
  }

  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v6 + 16))(v6, MEMORY[0x1E695E0F8], v7, 0);

    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __124__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_fetchProperties_reply___block_invoke_584(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1[5] + 8) + 40);
  if (dispatch_source_testcancel(v4))
  {
    v5 = usageLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[4];
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v7 = usageLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:fetchRequestProperties:pred:sort:actions:reply: received callback with outcome:%@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], v3)}];
    v14[1] = v8;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:2];

    v9 = *(*(a1[6] + 8) + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, v5, 0, 0);
      v10 = *(a1[6] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)networkDomainsToDateWithOptionsFor:(id)a3 nameKind:(id)a4 domainType:(unsigned __int16)a5 startTime:(id)a6 options:(id)a7 reply:(id)a8
{
  v78 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v56 = a6;
  v14 = a7;
  v15 = a8;
  v16 = usageLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = MEMORY[0x1CCA78840](v15);
    *buf = 138413314;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v76 = v56;
    *v77 = 2112;
    *&v77[2] = v14;
    *&v77[10] = 2048;
    *&v77[12] = v17;
    _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "> networkDomainsToDateWithOptionsFor:%@ nameKind:%@ domainType: startTime:%@ options:%@ reply:%p", buf, 0x34u);
  }

  if (v15 && [v13 isEqualToString:@"bundleName"])
  {
    v70 = 0;
    v54 = [(UsageFeed *)self _composePredicateLineWithName:v12 keyPath:@"bundleName" isSweep:&v70 + 1 wantGeneric:0 gotGeneric:&v70];
    if (!v54)
    {
      v19 = 0;
LABEL_80:

      goto LABEL_81;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v76 = __Block_byref_object_copy__577;
    *v77 = __Block_byref_object_dispose__578;
    *&v77[8] = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v69 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__1;
    v66 = __Block_byref_object_dispose__1;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke;
    v58[3] = &unk_1E8319640;
    v60 = buf;
    v61 = v68;
    v59 = v15;
    v67 = MEMORY[0x1CCA78840](v58);
    v18 = [(AnalyticsWorkspace *)self->workspace connection];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke_587;
    v57[3] = &unk_1E8319668;
    v57[4] = &v62;
    v53 = [v18 remoteObjectProxyWithErrorHandler:v57];

    v19 = v53 != 0;
    if (!v53)
    {
LABEL_79:

      _Block_object_dispose(&v62, 8);
      _Block_object_dispose(v68, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_80;
    }

    v43 = [MEMORY[0x1E69D5160] entityName];
    v20 = HIBYTE(v70);
    v21 = MEMORY[0x1E69D53B8];
    v49 = MEMORY[0x1E695DF90];
    if (HIBYTE(v70) == 1)
    {
      v51 = *MEMORY[0x1E69D53B8];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      if ((v70 & 0x100) == 0)
      {
        v22 = [MEMORY[0x1E695DFB0] null];
        v47 = 0;
LABEL_14:
        if (v70 == 1)
        {
          [v12 anyObject];
        }

        else
        {
          [MEMORY[0x1E695DFB0] null];
        }
        v23 = ;
        v24 = v70;
        if (v70 == 1)
        {
          v25 = *MEMORY[0x1E69D5360];
        }

        else
        {
          v25 = [MEMORY[0x1E695DFB0] null];
        }

        v42 = [v49 dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5208], @"bundleName", v51, v22, v23, v25, 0}];
        if ((v24 & 1) == 0)
        {
        }

        v19 = 1;
        if ((v47 & 1) == 0)
        {
        }

        if ((v20 & 1) == 0)
        {
        }

        v52 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5258]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v52;
          v27 = [v26 integerValue];
        }

        else
        {
          v27 = 0;
        }

        v28 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5238]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
          v41 = [v29 integerValue];
        }

        else
        {
          v41 = 0;
        }

        v50 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5220]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v50;
        }

        else
        {
          v40 = 0;
        }

        v48 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5230]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v38 = v48;
        }

        else
        {
          v38 = 0;
        }

        v46 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5260]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = v46;
        }

        else
        {
          v39 = 0;
        }

        v45 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5228]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v45 integerValue];
        }

        else
        {
          v30 = 3;
        }

        v44 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69D5250]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v44 integerValue];
        }

        else
        {
          v31 = 0;
        }

        v32 = usageLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *v71 = 134218240;
          v72 = v27;
          v73 = 2048;
          v74 = v41;
          _os_log_impl(&dword_1C85F9000, v32, OS_LOG_TYPE_INFO, "Processing request for view type: %ld with limit: %ld", v71, 0x16u);
        }

        if (v27 > 5)
        {
          if (v27 <= 8)
          {
            if (v27 == 6)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppDomainsOtherContent:v53 entityName:v43 bundleIdentifier:v40 unnamedDomainsOption:v31 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            else if (v27 == 7)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteHits:v53 entityName:v43 website:v39 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            else
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteDomains:v53 entityName:v43 website:v39 unnamedDomainsOption:v31 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            goto LABEL_78;
          }

          switch(v27)
          {
            case 9:
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsiteApps:v53 entityName:v43 website:v39 limit:v41 actions:v42 callbackBlock:v63[5]];
              goto LABEL_78;
            case 10:
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomainApps:v53 entityName:v43 domain:v38 limit:v41 actions:v42 callbackBlock:v63[5]];
              goto LABEL_78;
            case 11:
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomainWebsites:v53 entityName:v43 domain:v38 limit:v41 actions:v42 callbackBlock:v63[5]];
              goto LABEL_78;
          }
        }

        else
        {
          if (v27 > 2)
          {
            if (v27 == 3)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeDomain:v53 entityName:v43 unnamedDomainsOption:v31 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            else if (v27 == 4)
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppDomains:v53 entityName:v43 bundleIdentifier:v40 unnamedDomainsOption:v31 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            else
            {
              [(UsageFeed *)self _networkDomainsQueryViewTypeAppWebsites:v53 entityName:v43 bundleIdentifier:v40 verificationContext:v30 limit:v41 actions:v42 callbackBlock:v63[5]];
            }

            goto LABEL_78;
          }

          switch(v27)
          {
            case 0:
              [(UsageFeed *)self _legacyNetworkDomainsQueryOnService:v53 entityName:v43 pred:v54 limit:150 actions:v42 options:v14 postProcessingBlock:v63[5]];
              goto LABEL_78;
            case 1:
              [(UsageFeed *)self _networkDomainsQueryViewTypeApp:v53 entityName:v43 limit:v41 actions:v42 callbackBlock:v63[5]];
              goto LABEL_78;
            case 2:
              [(UsageFeed *)self _networkDomainsQueryViewTypeWebsite:v53 entityName:v43 verificationContext:v30 limit:v41 actions:v42 callbackBlock:v63[5]];
LABEL_78:

              goto LABEL_79;
          }
        }

        v33 = usageLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *v71 = 134217984;
          v72 = v27;
          _os_log_impl(&dword_1C85F9000, v33, OS_LOG_TYPE_ERROR, "Currently unable to process view type: %ld", v71, 0xCu);
        }

        v34 = v63[5];
        if (v34)
        {
          (*(v34 + 16))(v34, 0, 0, 0);
          v35 = v63[5];
          v63[5] = 0;
        }

        goto LABEL_78;
      }
    }

    v22 = *v21;
    v47 = 1;
    goto LABEL_14;
  }

  v19 = 0;
LABEL_81:

  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

void __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke(void *a1, void *a2, void *a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    v9 = usageLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEFAULT, "AppDomainUsage: Forcing callback due to error %@", &v19, 0xCu);
    }
  }

  v10 = *(*(a1[5] + 8) + 40);
  if (v10 && !dispatch_source_testcancel(v10))
  {
    v11 = usageLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(*(a1[5] + 8) + 40);
      v19 = 134217984;
      v20 = v12;
      _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Disabling active timer in callback (%p)", &v19, 0xCu);
    }

    dispatch_source_cancel(*(*(a1[5] + 8) + 40));
  }

  v13 = usageLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = "YES";
    if (!*(*(a1[6] + 8) + 24))
    {
      v14 = "NO";
    }

    v15 = *(*(a1[5] + 8) + 40);
    v19 = 136315394;
    v20 = v14;
    v21 = 2048;
    v22 = v15;
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Callback block already called: %s (%p)", &v19, 0x16u);
  }

  v16 = *(a1[6] + 8);
  if (*(v16 + 24))
  {
    v17 = usageLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_INFO, "AppDomainUsage: Ignoring duplicate callback", &v19, 2u);
    }
  }

  else
  {
    *(v16 + 24) = 1;
    (*(a1[4] + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __108__UsageFeed_NetworkDomains__networkDomainsToDateWithOptionsFor_nameKind_domainType_startTime_options_reply___block_invoke_587(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA78840](*(*(*(a1 + 32) + 8) + 40));
  v5 = usageLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "AppDomainUsage: Remote proxy error %@", &v9, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v4)[2](v4, v6, v7, 1);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_networkDomainsQueryViewTypeApp:(id)a3 entityName:(id)a4 limit:(unint64_t)a5 actions:(id)a6 callbackBlock:(id)a7
{
  v41[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v30 = a7;
  v32 = countOfDistinctKeyDescriptor();
  v14 = entityKeyPathForNameDescriptor();
  v15 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v15 addAggregateProperty:v32];
  [v15 addAggregateProperty:v14];
  [v15 addGroupByProperty:@"bundleName"];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleName != NULL"];
  v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  v17 = MEMORY[0x1E696AB28];
  v41[0] = v16;
  v41[1] = v31;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v28 = [v17 andPredicateWithSubpredicates:v18];

  v19 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"count" ascending:0];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v13 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke;
  v33[3] = &unk_1E8319740;
  v39 = v12;
  v40 = a5;
  v34 = v14;
  v35 = v16;
  v36 = v13;
  v37 = self;
  v38 = v11;
  v21 = v12;
  v22 = v11;
  v23 = v13;
  v24 = v16;
  v25 = v14;
  v26 = MEMORY[0x1CCA78840](v33);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v22 entityName:v21 fetchProps:v15 pred:v28 sort:v19 actions:v23 queryTimer:0 replyProcessBlock:v26 accumulatedResults:0 callbackBlock:v30];

  v27 = *MEMORY[0x1E69E9840];
}

BOOL __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v46[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = [v9 count];
  v12 = *(a1 + 80) - 1;
  if (v12 >= v11)
  {
    v37 = *(a1 + 80) - 1;
    v38 = v11;
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v9];
    v14 = entityConstValueForNameDescriptor();
    v15 = objc_alloc_init(MEMORY[0x1E69D5138]);
    v36 = v14;
    v16 = v14;
    v17 = v13;
    [v15 addAggregateProperty:v16];
    [v15 addAggregateProperty:*(a1 + 32)];
    [v15 addGroupByProperty:@"bundleName"];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_623;
    v43[3] = &unk_1E83196F0;
    v19 = v18;
    v44 = v19;
    [v17 enumerateObjectsUsingBlock:v43];
    if ([v19 count])
    {
      v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (bundleName IN %@)", v19];
    }

    else
    {
      v20 = 0;
    }

    v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 2];
    v22 = *(a1 + 40);
    v39 = v10;
    v40 = v8;
    v35 = v21;
    if (v20)
    {
      v46[0] = *(a1 + 40);
      v46[1] = v21;
      v46[2] = v20;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v46;
      v25 = 3;
    }

    else
    {
      v45[0] = *(a1 + 40);
      v45[1] = v21;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v45;
      v25 = 2;
    }

    v26 = [v23 arrayWithObjects:v24 count:v25];
    v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v26];
    v28 = *(a1 + 80);
    if (v28)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v28 - objc_msgSend(v9, "count")}];
      [*(a1 + 48) setObject:v29 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_2;
    v41[3] = &unk_1E8319718;
    v42 = v17;
    v30 = v17;
    v31 = MEMORY[0x1CCA78840](v41);
    v10 = v39;
    [*(a1 + 56) _performNetDomainsQueryOnService:*(a1 + 64) entityName:*(a1 + 72) fetchProps:v15 pred:v27 sort:0 actions:*(a1 + 48) queryTimer:v40 replyProcessBlock:v31 accumulatedResults:0 callbackBlock:v39];

    v8 = v40;
    v12 = v37;
    v11 = v38;
  }

  v32 = v12 < v11;

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_623(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"bundleName"];
  [v2 addObject:v3];
}

uint64_t __100__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeApp_entityName_limit_actions_callbackBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = usageLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1C85F9000, v9, OS_LOG_TYPE_DEBUG, "Adding additional entries %@ to %@", buf, 0x16u);
  }

  [*(a1 + 32) addObjectsFromArray:v7];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count", *MEMORY[0x1E69D5268], *MEMORY[0x1E69D5270], *(a1 + 32))}];
  v16[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:2];

  if (v8)
  {
    (*(v8 + 2))(v8, v12, 0, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)__networkDomainsQueryWebsites:(id)a3 entityName:(id)a4 verificationContext:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 viewPredicate:(id)a8 callbackBlock:(id)a9
{
  v33[2] = *MEMORY[0x1E69E9840];
  v32 = a8;
  v13 = a9;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = countOfDistinctKeyDescriptor();
  v18 = *MEMORY[0x1E69D5280];
  v19 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  v31 = v17;
  [v20 addAggregateProperty:v17];
  [v20 addAggregateProperty:v19];
  [v20 addGroupByProperty:@"context"];
  [v20 addFetchProperty:@"context"];
  v21 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v18 ascending:0];
  v22 = (*(predicateForVerificationContext + 2))(predicateForVerificationContext, a5, v20);
  v23 = v22;
  if (v22)
  {
    v24 = MEMORY[0x1E696AB28];
    v33[0] = v32;
    v33[1] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];
  }

  else
  {
    v26 = v32;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v14 setObject:v27 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:v16 entityName:v15 fetchProps:v20 pred:v26 sort:v21 actions:v14 queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:v13];
  v28 = *MEMORY[0x1E69E9840];
}

- (void)_networkDomainsQueryViewTypeWebsite:(id)a3 entityName:(id)a4 verificationContext:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v14 = MEMORY[0x1E696AE18];
  v15 = a8;
  v16 = a7;
  v17 = a4;
  v18 = a3;
  v19 = [v14 predicateWithFormat:@"kind == %d AND context != ''", 2];
  [(UsageFeed *)self __networkDomainsQueryWebsites:v18 entityName:v17 verificationContext:a5 limit:a6 actions:v16 viewPredicate:v19 callbackBlock:v15];
}

- (void)__networkDomainsQueryDomains:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 accumulatedResults:(id)a8 aggregateProperty:(id)a9 predicate:(id)a10 altAggregateProperty:(id)a11 altPredicate:(id)a12 ipAggregateProperty:(id)a13 replyProcessBlock:(id)a14 callbackBlock:(id)a15
{
  v72[2] = *MEMORY[0x1E69E9840];
  v50 = a3;
  v48 = a4;
  v18 = a7;
  v58 = a8;
  v19 = a10;
  v54 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = MEMORY[0x1E69D5138];
  v55 = a15;
  v24 = a9;
  v25 = objc_alloc_init(v23);
  [v25 addAggregateProperty:v24];

  if (v21)
  {
    [v25 addAggregateProperty:v21];
  }

  else
  {
    [v25 addGroupByProperty:@"domain"];
    [v25 addFetchProperty:@"domain"];
  }

  [v25 addGroupByProperty:@"domainOwner"];
  [v25 addFetchProperty:@"domainOwner"];
  [v25 addGroupByProperty:@"domainType"];
  v45 = v25;
  [v25 addFetchProperty:@"domainType"];
  v43 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"count" ascending:0];
  v26 = (*(predicateForUnnamedDomains + 2))(predicateForUnnamedDomains, a5);
  v27 = v26;
  if (v26)
  {
    v28 = MEMORY[0x1E696AB28];
    v72[0] = v19;
    v72[1] = v26;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v47 = [v28 andPredicateWithSubpredicates:v29];
  }

  else
  {
    v47 = v19;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v18 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v57 = v19;
  if (v58)
  {
    v31 = v58;
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v32 = v31;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke;
  v59[3] = &unk_1E8319808;
  v60 = v31;
  v61 = v54;
  v62 = v21;
  v63 = v27;
  v70 = v22;
  v71 = a6;
  v64 = v20;
  v65 = v18;
  v66 = self;
  v67 = v50;
  v33 = v21;
  v34 = v20;
  v68 = v48;
  v69 = v43;
  v42 = v43;
  v35 = v48;
  v36 = v50;
  v37 = v18;
  v53 = v22;
  v51 = v34;
  v49 = v27;
  v44 = v33;
  v38 = v54;
  v39 = v32;
  v40 = MEMORY[0x1CCA78840](v59);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v36 entityName:v35 fetchProps:v45 pred:v47 sort:v42 actions:v37 queryTimer:0 replyProcessBlock:v40 accumulatedResults:0 callbackBlock:v55];

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v67[3] = *MEMORY[0x1E69E9840];
  v35 = a2;
  v9 = a3;
  v36 = a4;
  v38 = a5;
  [*(a1 + 32) addObjectsFromArray:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v10 addAggregateProperty:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [v10 addAggregateProperty:?];
  }

  else
  {
    [v10 addGroupByProperty:@"domain"];
    [v10 addFetchProperty:@"domain"];
  }

  [v10 addGroupByProperty:@"domainOwner"];
  [v10 addFetchProperty:@"domainOwner"];
  [v10 addGroupByProperty:@"domainType"];
  [v10 addFetchProperty:@"domainType"];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2;
  v63[3] = &unk_1E83196F0;
  v12 = v11;
  v64 = v12;
  v37 = v9;
  [v9 enumerateObjectsUsingBlock:v63];
  if ([v12 count] && (objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"(domain IN %@)", v12), (v40 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = MEMORY[0x1E696AB28];
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    if (v14)
    {
      v67[0] = *(a1 + 64);
      v67[1] = v40;
      v67[2] = v14;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
    }

    else
    {
      v66[0] = *(a1 + 64);
      v66[1] = v40;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    }
    v16 = ;
    v39 = [v13 andPredicateWithSubpredicates:v16];
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      v18 = MEMORY[0x1E696AB28];
      v65[0] = *(a1 + 64);
      v65[1] = v17;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
      v39 = [v18 andPredicateWithSubpredicates:v19];
    }

    else
    {
      v39 = *(a1 + 64);
    }

    v40 = 0;
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_3;
  v54[3] = &unk_1E8319768;
  v55 = *(a1 + 32);
  v56 = *(a1 + 112);
  v62 = MEMORY[0x1CCA78840](v54);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_4;
  v41[3] = &unk_1E83197E0;
  v20 = *(a1 + 32);
  v21 = *(a1 + 120);
  v42 = v20;
  v53 = v21;
  v43 = *(a1 + 56);
  v44 = *(a1 + 64);
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v45 = v22;
  v46 = v23;
  v47 = *(a1 + 88);
  v48 = *(a1 + 96);
  v24 = v10;
  v49 = v24;
  v50 = *(a1 + 104);
  v52 = &v57;
  v51 = *(a1 + 112);
  v25 = MEMORY[0x1CCA78840](v41);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = *(a1 + 72);
  v31 = [v37 count];
  v32 = v25;
  if (!v31)
  {
    v32 = v58[5];
  }

  [v26 _performNetDomainsQueryOnService:v27 entityName:v28 fetchProps:v24 pred:v39 sort:v29 actions:v30 queryTimer:v35 replyProcessBlock:v32 accumulatedResults:v36 callbackBlock:v38];

  _Block_object_dispose(&v57, 8);
  v33 = *MEMORY[0x1E69E9840];
  return 0;
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  [*(a1 + 32) addObjectsFromArray:v9];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v9, *(a1 + 32), v10);
  }

  else
  {
    v12 = [*(a1 + 32) sortedArrayUsingComparator:countDescSortComparator];
    v13 = *MEMORY[0x1E69D5270];
    v18[0] = *MEMORY[0x1E69D5268];
    v18[1] = v13;
    v19[0] = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
    v19[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

    if (v10)
    {
      (*(v10 + 2))(v10, v15, 0, 0);
    }

    v10 = v12;
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v55 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [v8 mutableCopy];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = usageLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v68 = [v8 count];
    _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "Processing %ld overlapping domains", buf, 0xCu);
  }

  v14 = *(a1 + 32);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_651;
  v58[3] = &unk_1E83197B8;
  v15 = v10;
  v59 = v15;
  v16 = v11;
  v60 = v16;
  v17 = v12;
  v61 = v17;
  [v14 enumerateObjectsUsingBlock:v58];
  if ([v17 count])
  {
    v18 = usageLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v68 = v19;
      _os_log_impl(&dword_1C85F9000, v18, OS_LOG_TYPE_DEBUG, "Current results: %@", buf, 0xCu);
    }

    v20 = usageLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v68 = v17;
      _os_log_impl(&dword_1C85F9000, v20, OS_LOG_TYPE_DEBUG, "Removing modified results: %@", buf, 0xCu);
    }

    v21 = *(a1 + 32);
    v22 = [v17 allObjects];
    [v21 removeObjectsInArray:v22];

    v23 = usageLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v68 = v24;
      _os_log_impl(&dword_1C85F9000, v23, OS_LOG_TYPE_DEBUG, "Removed (new) total results: %@", buf, 0xCu);
    }
  }

  if ([v16 count])
  {
    v25 = usageLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v68 = v16;
      _os_log_impl(&dword_1C85F9000, v25, OS_LOG_TYPE_DEBUG, "Adding modified domains: %@", buf, 0xCu);
    }

    [*(a1 + 32) addObjectsFromArray:v16];
    v26 = usageLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v68 = v27;
      _os_log_impl(&dword_1C85F9000, v26, OS_LOG_TYPE_DEBUG, "Added (new) total results: %@", buf, 0xCu);
    }
  }

  if (*(a1 + 120) - 1 >= [*(a1 + 32) count])
  {
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v31 = *(a1 + 32);
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_654;
    v56[3] = &unk_1E83196F0;
    v32 = v30;
    v57 = v32;
    [v31 enumerateObjectsUsingBlock:v56];
    v54 = v15;
    if ([v32 count] && (objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"NOT (domain IN %@)", v32), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = v33;
      v35 = MEMORY[0x1E696AB28];
      v36 = *(a1 + 40);
      v37 = *(a1 + 48);
      if (v36)
      {
        v66[0] = *(a1 + 48);
        v66[1] = v33;
        v66[2] = v36;
        v38 = MEMORY[0x1E695DEC8];
        v39 = v66;
        v40 = 3;
      }

      else
      {
        v65[0] = *(a1 + 48);
        v65[1] = v33;
        v38 = MEMORY[0x1E695DEC8];
        v39 = v65;
        v40 = 2;
      }

      v49 = [v38 arrayWithObjects:v39 count:v40];
      v44 = [v35 andPredicateWithSubpredicates:v49];
    }

    else
    {
      v41 = *(a1 + 40);
      if (v41)
      {
        v42 = MEMORY[0x1E696AB28];
        v64[0] = *(a1 + 48);
        v64[1] = v41;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
        v44 = [v42 andPredicateWithSubpredicates:v43];
      }

      else
      {
        v44 = *(a1 + 48);
      }

      v34 = 0;
    }

    v50 = *(a1 + 120);
    if (v50)
    {
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v50 - objc_msgSend(*(a1 + 32), "count")}];
      [*(a1 + 56) setObject:v51 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    }

    v29 = v55;
    [*(a1 + 64) _performNetDomainsQueryOnService:*(a1 + 72) entityName:*(a1 + 80) fetchProps:*(a1 + 88) pred:v44 sort:*(a1 + 96) actions:*(a1 + 56) queryTimer:v55 replyProcessBlock:*(*(*(a1 + 112) + 8) + 40) accumulatedResults:0 callbackBlock:v9];

    v15 = v54;
  }

  else
  {
    v28 = *(a1 + 104);
    if (v28)
    {
      v29 = v55;
      (*(v28 + 16))(v28, v55, v8, *(a1 + 32), v9);
    }

    else
    {
      v45 = [*(a1 + 32) sortedArrayUsingComparator:countDescSortComparator];
      v46 = *MEMORY[0x1E69D5270];
      v62[0] = *MEMORY[0x1E69D5268];
      v62[1] = v46;
      v63[0] = v45;
      v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v45, "count")}];
      v63[1] = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];

      if (v9)
      {
        (*(v9 + 2))(v9, v48, 0, 0);
      }

      v9 = v45;
      v29 = v55;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return 0;
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_651(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (![a1[4] count])
  {
    *a4 = 1;
  }

  v7 = [v6 objectForKeyedSubscript:@"domain"];
  v8 = [v6 objectForKeyedSubscript:@"domainOwner"];
  v9 = [v6 objectForKeyedSubscript:@"domainType"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = -1;
  v10 = a1[4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2_652;
  v15[3] = &unk_1E8319790;
  v11 = v7;
  v16 = v11;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v6;
  v19 = v14;
  v20 = a1[5];
  v21 = a1[6];
  v22 = &v23;
  [v10 enumerateObjectsUsingBlock:v15];
  if ((v24[3] & 0x8000000000000000) == 0)
  {
    [a1[4] removeObjectAtIndex:?];
  }

  _Block_object_dispose(&v23, 8);
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_2_652(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"domain"];
  v9 = [v7 objectForKeyedSubscript:@"domainOwner"];
  v10 = [v7 objectForKeyedSubscript:@"domainType"];
  if ([*(a1 + 32) isEqualToString:v8] && objc_msgSend(*(a1 + 40), "isEqualToString:", v9) && objc_msgSend(*(a1 + 48), "isEqual:", v10))
  {
    v16 = [*(a1 + 56) objectForKeyedSubscript:@"count"];
    v15 = [v7 objectForKeyedSubscript:@"count"];
    v11 = usageLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 1024;
      v22 = [v10 intValue];
      v23 = 2048;
      v24 = [v16 integerValue];
      v25 = 2048;
      v26 = [v15 integerValue];
      _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_INFO, "Found overlapping domain %@ (%@) <%d> [%ld + %ld]", buf, 0x30u);
    }

    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 56)];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "integerValue") + objc_msgSend(v16, "integerValue")}];
    [v12 setObject:v13 forKeyedSubscript:@"count"];

    [*(a1 + 64) addObject:v12];
    [*(a1 + 72) addObject:*(a1 + 56)];
    [*(a1 + 72) addObject:v7];
    *(*(*(a1 + 80) + 8) + 24) = a3;
    *a4 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __237__UsageFeed_NetworkDomains____networkDomainsQueryDomains_entityName_unnamedDomainsOption_limit_actions_accumulatedResults_aggregateProperty_predicate_altAggregateProperty_altPredicate_ipAggregateProperty_replyProcessBlock_callbackBlock___block_invoke_654(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

- (void)_networkDomainsQueryViewTypeDomain:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v13 = a3;
  v14 = a4;
  v37 = a7;
  v40 = a8;
  v15 = countOfDistinctKeyDescriptor();
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  v17 = countOfDistinctKeyDescriptor();
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d AND context != ''", 2];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke;
  v54[3] = &unk_1E8319830;
  v54[4] = self;
  v19 = v13;
  v55 = v19;
  v20 = v14;
  v56 = v20;
  v62 = a6;
  v21 = v37;
  v57 = v21;
  v22 = v15;
  v58 = v22;
  v23 = v16;
  v59 = v23;
  v24 = v17;
  v60 = v24;
  v25 = v18;
  v61 = v25;
  v26 = MEMORY[0x1CCA78840](v54);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_2;
  v42[3] = &unk_1E8319858;
  v43 = v23;
  v44 = v25;
  v38 = self;
  v45 = self;
  v46 = v19;
  v52 = a5;
  v53 = a6;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v24;
  v27 = v26;
  v51 = v27;
  v36 = v24;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = v25;
  v33 = v23;
  v34 = MEMORY[0x1CCA78840](v42);
  if (a6 || a5 == 1)
  {
    v35 = MEMORY[0x1CCA78840]();
  }

  else
  {
    v35 = 0;
  }

  [(UsageFeed *)v38 __networkDomainsQueryDomains:v31 entityName:v30 unnamedDomainsOption:a5 limit:a6 actions:v29 accumulatedResults:v39 aggregateProperty:v36 predicate:v32 altAggregateProperty:v28 altPredicate:v33 ipAggregateProperty:0 replyProcessBlock:v35 callbackBlock:v40];
}

uint64_t __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = *MEMORY[0x1E69D5288];
  v8 = a5;
  v9 = a4;
  v10 = entityConstValueForNameDescriptor();
  [*(a1 + 32) __networkDomainsQueryDomains:*(a1 + 40) entityName:*(a1 + 48) unnamedDomainsOption:3 limit:*(a1 + 96) actions:*(a1 + 56) accumulatedResults:v9 aggregateProperty:*(a1 + 64) predicate:*(a1 + 72) altAggregateProperty:*(a1 + 80) altPredicate:*(a1 + 88) ipAggregateProperty:v10 replyProcessBlock:0 callbackBlock:v8];

  return 0;
}

uint64_t __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_3;
  v25[3] = &unk_1E83196F0;
  v10 = v9;
  v26 = v10;
  [v7 enumerateObjectsUsingBlock:v25];
  if ([v10 count])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (domain IN %@)", v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (v11)
  {
    v14 = MEMORY[0x1E696AB28];
    v28[0] = *(a1 + 32);
    v28[1] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    v17 = MEMORY[0x1E696AB28];
    v27[0] = *(a1 + 40);
    v27[1] = v11;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];

    v12 = v16;
    v13 = v19;
  }

  v20 = *(a1 + 112);
  v21 = *(a1 + 72);
  if (*(a1 + 104) == 1)
  {
    v22 = *(a1 + 96);
  }

  else
  {
    v22 = 0;
  }

  [*(a1 + 48) __networkDomainsQueryDomains:*(a1 + 56) entityName:*(a1 + 64) unnamedDomainsOption:*(a1 + 80) limit:v12 actions:*(a1 + 88) accumulatedResults:v13 aggregateProperty:0 predicate:v22 altAggregateProperty:v8 altPredicate:? ipAggregateProperty:? replyProcessBlock:? callbackBlock:?];

  v23 = *MEMORY[0x1E69E9840];
  return 0;
}

void __124__UsageFeed_NetworkDomains___networkDomainsQueryViewTypeDomain_entityName_unnamedDomainsOption_limit_actions_callbackBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKeyedSubscript:@"domain"];
  [v2 addObject:v3];
}

- (void)__networkDomainsQuerySecondLevelViewDomains:(id)a3 entityName:(id)a4 unnamedDomainsOption:(int64_t)a5 limit:(unint64_t)a6 actions:(id)a7 viewPredicate:(id)a8 callbackBlock:(id)a9
{
  v62[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v47 = a4;
  v15 = a7;
  v16 = a8;
  v17 = *MEMORY[0x1E69D5280];
  v50 = a9;
  v18 = functionOnKeyDescriptor();
  v19 = *MEMORY[0x1E69D5210];
  v20 = functionOnKeyDescriptor();
  v21 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v21 addAggregateProperty:v18];
  [v21 addAggregateProperty:v20];
  [v21 addGroupByProperty:@"domain"];
  [v21 addFetchProperty:@"domain"];
  [v21 addGroupByProperty:@"domainOwner"];
  [v21 addFetchProperty:@"domainOwner"];
  [v21 addGroupByProperty:@"domainType"];
  [v21 addFetchProperty:@"domainType"];
  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v17 ascending:0];
  v23 = (*(predicateForUnnamedDomains + 2))(predicateForUnnamedDomains, a5);
  v46 = v23;
  if (v23)
  {
    v44 = MEMORY[0x1E696AB28];
    v62[0] = v16;
    v62[1] = v23;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v24 = v22;
    v25 = v20;
    v26 = v15;
    v27 = v18;
    v28 = v16;
    v29 = a5;
    v30 = a6;
    v32 = v31 = v14;
    v45 = [v44 andPredicateWithSubpredicates:v32];

    v14 = v31;
    a6 = v30;
    a5 = v29;
    v16 = v28;
    v18 = v27;
    v15 = v26;
    v20 = v25;
    v22 = v24;
  }

  else
  {
    v45 = v16;
  }

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v15 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __147__UsageFeed_NetworkDomains____networkDomainsQuerySecondLevelViewDomains_entityName_unnamedDomainsOption_limit_actions_viewPredicate_callbackBlock___block_invoke;
  v51[3] = &unk_1E8319880;
  v52 = v18;
  v53 = v20;
  v54 = v16;
  v55 = self;
  v56 = v14;
  v57 = v47;
  v58 = v22;
  v59 = v15;
  v60 = v34;
  v61 = a5;
  v35 = v34;
  v36 = v15;
  v37 = v22;
  v38 = v47;
  v39 = v14;
  v48 = v16;
  v43 = v20;
  v40 = v18;
  v41 = MEMORY[0x1CCA78840](v51);
  [(UsageFeed *)self _performNetDomainsQueryOnService:v39 entityName:v38 fetchProps:v21 pred:v45 sort:v37 actions:v36 queryTimer:0 replyProcessBlock:v41 accumulatedResults:v35 callbackBlock:v50];

  v42 = *MEMORY[0x1E69E9840];
}

BOOL __147__UsageFeed_NetworkDomains____networkDomainsQuerySecondLevelViewDomains_entityName_unnamedDomainsOption_limit_actions_viewPredicate_callbackBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 104);
  if (v5 == 1)
  {
    v7 = *MEMORY[0x1E69D5288];
    v8 = a5;
    v9 = entityConstValueForNameDescriptor();
    v10 = objc_alloc_init(MEMORY[0x1E69D5138]);
    [v10 addAggregateProperty:*(a1 + 32)];
    [v10 addAggregateProperty:*(a1 + 40)];
    [v10 addAggregateProperty:v9];
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainClassification == %d", 2];
    v12 = MEMORY[0x1E696AB28];
    v17[0] = *(a1 + 48);
    v17[1] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [v12 andPredicateWithSubpredicates:v13];

    [*(a1 + 56) _performNetDomainsQueryOnService:*(a1 + 64) entityName:*(a1 + 72) fetchProps:v10 pred:v14 sort:*(a1 + 80) actions:*(a1 + 88) queryTimer:0 replyProcessBlock:0 accumulatedResults:*(a1 + 96) callbackBlock:v8];
  }

  result = v5 != 1;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_networkDomainsQueryViewTypeAppDomains:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9
{
  v16 = MEMORY[0x1E696AE18];
  v17 = a9;
  v18 = a8;
  v19 = a4;
  v20 = a3;
  v21 = [v16 predicateWithFormat:@"kind == %d AND bundleName == %@", 1, a5];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:v20 entityName:v19 unnamedDomainsOption:a6 limit:a7 actions:v18 viewPredicate:v21 callbackBlock:v17];
}

- (void)_networkDomainsQueryViewTypeAppWebsites:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 verificationContext:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9
{
  v16 = MEMORY[0x1E696AE18];
  v17 = a9;
  v18 = a8;
  v19 = a4;
  v20 = a3;
  v21 = [v16 predicateWithFormat:@"kind == %d AND context != '' AND bundleName == %@", 2, a5];
  [(UsageFeed *)self __networkDomainsQueryWebsites:v20 entityName:v19 verificationContext:a6 limit:a7 actions:v18 viewPredicate:v21 callbackBlock:v17];
}

- (void)_networkDomainsQueryViewTypeAppDomainsOtherContent:(id)a3 entityName:(id)a4 bundleIdentifier:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9
{
  v16 = MEMORY[0x1E696AE18];
  v17 = a9;
  v18 = a8;
  v19 = a4;
  v20 = a3;
  v21 = [v16 predicateWithFormat:@"context == '' AND kind == %d AND bundleName == %@", 2, a5];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:v20 entityName:v19 unnamedDomainsOption:a6 limit:a7 actions:v18 viewPredicate:v21 callbackBlock:v17];
}

- (void)_networkDomainsQueryViewTypeWebsiteHits:(id)a3 entityName:(id)a4 website:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v14 = *MEMORY[0x1E69D5280];
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v24 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v24];
  [v20 addGroupByProperty:@"context"];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"*.%@", v17];
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"context == %@ AND (domain == %@ OR domain LIKE %@)", v17, v17, v21];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v16 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:v19 entityName:v18 fetchProps:v20 pred:v22 sort:0 actions:v16 queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:v15];
}

- (void)_networkDomainsQueryViewTypeWebsiteDomains:(id)a3 entityName:(id)a4 website:(id)a5 unnamedDomainsOption:(int64_t)a6 limit:(unint64_t)a7 actions:(id)a8 callbackBlock:(id)a9
{
  v16 = MEMORY[0x1E696AE18];
  v17 = a9;
  v18 = a8;
  v19 = a4;
  v20 = a3;
  v21 = [v16 predicateWithFormat:@"context == %@", a5];
  [(UsageFeed *)self __networkDomainsQuerySecondLevelViewDomains:v20 entityName:v19 unnamedDomainsOption:a6 limit:a7 actions:v18 viewPredicate:v21 callbackBlock:v17];
}

- (void)_networkDomainsQueryViewTypeWebsiteApps:(id)a3 entityName:(id)a4 website:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v12 = *MEMORY[0x1E69D5218];
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v27 = functionOnKeyDescriptor();
  v18 = *MEMORY[0x1E69D5210];
  v19 = functionOnKeyDescriptor();
  v20 = entityKeyPathForNameDescriptor();
  v21 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v21 addAggregateProperty:v27];
  [v21 addAggregateProperty:v20];
  [v21 addAggregateProperty:v19];
  [v21 addGroupByProperty:@"bundleName"];
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"context == %@ AND bundleName != NULL", v15];

  v23 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v12 ascending:0];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:v17 entityName:v16 fetchProps:v21 pred:v22 sort:v23 actions:v14 queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:v13];
}

- (void)_networkDomainsQueryViewTypeDomainApps:(id)a3 entityName:(id)a4 domain:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v13 = *MEMORY[0x1E69D5210];
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v25 = functionOnKeyDescriptor();
  v19 = entityKeyPathForNameDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v25];
  [v20 addAggregateProperty:v19];
  [v20 addGroupByProperty:@"bundleName"];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ AND bundleName != NULL AND kind == %d", v16, 1];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v13 ascending:0];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v15 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:v18 entityName:v17 fetchProps:v20 pred:v21 sort:v22 actions:v15 queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:v14];
}

- (void)_networkDomainsQueryViewTypeDomainWebsites:(id)a3 entityName:(id)a4 domain:(id)a5 limit:(unint64_t)a6 actions:(id)a7 callbackBlock:(id)a8
{
  v14 = *MEMORY[0x1E69D5210];
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v24 = functionOnKeyDescriptor();
  v20 = objc_alloc_init(MEMORY[0x1E69D5138]);
  [v20 addAggregateProperty:v24];
  [v20 addGroupByProperty:@"context"];
  [v20 addFetchProperty:@"context"];
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domain == %@ AND context != '' AND kind == %d", v17, 2];

  v22 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:v14 ascending:0];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v16 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  [(UsageFeed *)self _performNetDomainsQueryOnService:v19 entityName:v18 fetchProps:v20 pred:v21 sort:v22 actions:v16 queryTimer:0 replyProcessBlock:0 accumulatedResults:0 callbackBlock:v15];
}

- (void)_legacyNetworkDomainsQueryOnService:(id)a3 entityName:(id)a4 pred:(id)a5 limit:(unint64_t)a6 actions:(id)a7 options:(id)a8 postProcessingBlock:(id)a9
{
  v70 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v39 = a8;
  v18 = a9;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__577;
  v62 = __Block_byref_object_dispose__578;
  v63 = 0;
  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__1;
  v56[4] = __Block_byref_object_dispose__1;
  v57 = MEMORY[0x1CCA78840](v18);
  v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
  v21 = v59[5];
  v59[5] = v20;

  v22 = v59[5];
  v23 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v24 = v59[5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke;
  handler[3] = &unk_1E83195F0;
  v54 = &v58;
  v25 = v15;
  v53 = v25;
  v55 = v56;
  dispatch_source_set_event_handler(v24, handler);
  v26 = usageLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = v59[5];
    *buf = 134217984;
    v65 = v27;
    _os_log_impl(&dword_1C85F9000, v26, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Activating timer %p", buf, 0xCu);
  }

  dispatch_activate(v59[5]);
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  [v17 setObject:v28 forKeyedSubscript:*MEMORY[0x1E69D52A0]];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  [v17 setObject:v29 forKeyedSubscript:*MEMORY[0x1E69D52A8]];

  v30 = usageLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v65 = v25;
    v66 = 2048;
    v67 = a6;
    v68 = 2048;
    v69 = 0;
    _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEFAULT, "%@: Will fetch %lu records per batch, starting first batch from offset %lu", buf, 0x20u);
  }

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_691;
  v40[3] = &unk_1E83198F8;
  v48 = &v58;
  v31 = v25;
  v41 = v31;
  v42 = self;
  v32 = v16;
  v43 = v32;
  v33 = v38;
  v44 = v33;
  v50 = a6;
  v51 = 0;
  v34 = v19;
  v45 = v34;
  v35 = v17;
  v46 = v35;
  v36 = v39;
  v47 = v36;
  v49 = v56;
  [v33 performQueryOnEntity:v31 pred:v32 sort:0 actions:v35 reply:v40];

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v58, 8);

  v37 = *MEMORY[0x1E69E9840];
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = usageLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1[5] + 8) + 40);
    v11 = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEBUG, "AppDomainUsage: Cancelling timer %p after firing", &v11, 0xCu);
  }

  dispatch_source_cancel(*(*(a1[5] + 8) + 40));
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = a1[4];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = &stru_1F483F350;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "%@: Timed out while waiting for XPC response. %@", &v11, 0x16u);
  }

  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v6 + 16))(v6, MEMORY[0x1E695E0F8], v7, 0);

    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_691(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 88) + 8) + 40);
  if (dispatch_source_testcancel(v4))
  {
    v5 = usageLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "%@: Timeout timer already fired; will not process XPC reply for performance", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v19 = *(a1 + 48);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_693;
    v20[3] = &unk_1E83198D0;
    v14 = v7;
    v15 = *(a1 + 40);
    v21 = v14;
    v22 = v15;
    v23 = *(a1 + 80);
    v24 = *(a1 + 72);
    v25 = *(a1 + 56);
    v16 = *(a1 + 48);
    v17 = *(a1 + 96);
    v26 = v16;
    v27 = v17;
    [v8 _batchFetchCallbackWithResults:v3 logPrefix:"AppDomainUsage" entityName:v14 pred:v19 service:v9 limit:v10 offset:v11 container:v12 actions:v13 reply:v20];

    v5 = v21;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_693(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v5 = usageLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v25 = v6;
      v26 = 2048;
      v27 = [v3 count];
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "%@: All batch fetches complete, records fetched %lu", buf, 0x16u);
    }

    v7 = [*(a1 + 40) groupRecordsByBundleId:v3];

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69D5278]];
      if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [v9 BOOLValue];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 56) setObject:&unk_1F4841BD8 forKeyedSubscript:*MEMORY[0x1E69D52A8]];
    [*(a1 + 56) setObject:&unk_1F4841BD8 forKeyedSubscript:*MEMORY[0x1E69D52A0]];
    v14 = *(a1 + 64);
    v15 = [MEMORY[0x1E69D5168] entityName];
    v16 = *(a1 + 72);
    v17 = *(a1 + 56);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_695;
    v20[3] = &unk_1E83198A8;
    v20[4] = *(a1 + 40);
    v23 = v10;
    v4 = v7;
    v18 = *(a1 + 80);
    v21 = v4;
    v22 = v18;
    [v14 performQueryOnEntity:v15 pred:v16 sort:0 actions:v17 reply:v20];
  }

  else
  {
    v11 = *(*(*(a1 + 80) + 8) + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v4, 0, 0);
      v12 = *(*(a1 + 80) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __123__UsageFeed_NetworkDomains___legacyNetworkDomainsQueryOnService_entityName_pred_limit_actions_options_postProcessingBlock___block_invoke_695(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (obj)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v24)
    {
      v3 = @"bundleName";
      v23 = *v33;
      do
      {
        v4 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v4;
          v5 = *(*(&v32 + 1) + 8 * v4);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v27 = [v5 allKeys];
          v6 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v29;
            v26 = v5;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v29 != v8)
                {
                  objc_enumerationMutation(v27);
                }

                v10 = *(*(&v28 + 1) + 8 * i);
                if ([v10 containsString:v3])
                {
                  v11 = [*(a1 + 32) createEndpointEntryFrom:v5 withKey:@"UnresolvedEndpoints" showDetails:*(a1 + 56)];
                  v12 = [*(a1 + 32) createEndpointEntryFrom:v5 withKey:@"ResolvedEndpoints" showDetails:*(a1 + 56)];
                  v13 = [v5 objectForKeyedSubscript:v10];
                  v14 = [*(a1 + 40) objectForKeyedSubscript:v13];
                  v15 = v14;
                  if (v14)
                  {
                    [v14 addObject:v11];
                    [v15 addObject:v12];
                  }

                  else
                  {
                    v16 = v3;
                    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    [v17 addObject:v11];
                    [v17 addObject:v12];
                    [*(a1 + 40) setObject:v17 forKeyedSubscript:v13];

                    v3 = v16;
                    v5 = v26;
                  }
                }
              }

              v7 = [v27 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v7);
          }

          v4 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v24);
    }
  }

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, *(a1 + 40), 0, 0);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)setNetworkDomainsOptions:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v25 = v6;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setNetworkDomainsOptions:%@ reply:%p", buf, 0x16u);
  }

  if (v7)
  {
    v10 = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = v7;
    v21 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      v13 = [MEMORY[0x1E695DFB0] null];
      v23 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v15 = usageLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "setOption:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke_702;
      v18[3] = &unk_1E8319528;
      v19 = v11;
      [v12 setOption:v6 inScopes:v14 reply:v18];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

void __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setNetworkDomainsOptions:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __60__UsageFeed_NetworkDomains__setNetworkDomainsOptions_reply___block_invoke_702(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "setOption:inScopes:reply: received callback with before:%@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)getNetworkDomainsOptions:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v25 = v6;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getNetworkDomainsOptions:%@ reply:%p", buf, 0x16u);
  }

  if (v7)
  {
    v10 = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = v7;
    v21 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      v13 = [MEMORY[0x1E695DFB0] null];
      v23 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v15 = usageLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "getOption:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke_703;
      v18[3] = &unk_1E8319528;
      v19 = v11;
      [v12 getOption:v6 inScopes:v14 reply:v18];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

void __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getNetworkDomainsOptions:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __60__UsageFeed_NetworkDomains__getNetworkDomainsOptions_reply___block_invoke_703(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "getOption:inScopes:reply: received callback with current:%@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)performNetworkDomainsActionWithOptions:(id)a3 reply:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = usageLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](v7);
    *buf = 138412546;
    v25 = v6;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> performNetworkDomainsActionWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (v7)
  {
    v10 = [(AnalyticsWorkspace *)self->workspace connection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke;
    v20[3] = &unk_1E8318D20;
    v11 = v7;
    v21 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v20];

    if (v12)
    {
      v22 = *MEMORY[0x1E69D5388];
      v13 = [MEMORY[0x1E695DFB0] null];
      v23 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

      v15 = usageLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "performActionWithOptions:%@ inScopes:%@", buf, 0x16u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke_704;
      v18[3] = &unk_1E8318D98;
      v19 = v11;
      [v12 performActionWithOptions:v6 inScopes:v14 reply:v18];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7 != 0;
}

void __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = usageLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for performNetworkDomainsActionWithOptions:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __74__UsageFeed_NetworkDomains__performNetworkDomainsActionWithOptions_reply___block_invoke_704(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = usageLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "performActionWithOptions:inScopes:reply: received callback with error:%@, outcome:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (id)createEndpointEntryFrom:(id)a3 withKey:(id)a4 showDetails:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (v7 && v8)
  {
    [v9 setObject:v8 forKeyedSubscript:@"domain"];
    v11 = [v7 objectForKeyedSubscript:v8];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v5)
        {
          [v10 setObject:v11 forKeyedSubscript:@"hits"];
        }

        else
        {
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
          [v10 setObject:v12 forKeyedSubscript:@"hits"];
        }
      }
    }

    v13 = [v7 objectForKeyedSubscript:@"hasApp.bundleName"];
    [v10 setObject:v13 forKeyedSubscript:@"bundleID"];

    v14 = [v7 objectForKeyedSubscript:@"timeStamp"];
    [v10 setObject:v14 forKeyedSubscript:@"timeStamp"];

    v15 = [v7 objectForKeyedSubscript:@"firstTimeStamp"];
    [v10 setObject:v15 forKeyedSubscript:@"firstTimeStamp"];

    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"domainOwner"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"context"];
    [v10 setObject:&unk_1F4841BD8 forKeyedSubscript:@"contextVerificationType"];
    [v10 setObject:&unk_1F4841BD8 forKeyedSubscript:@"domainClassification"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"domainType"];
    [v10 setObject:&stru_1F483F350 forKeyedSubscript:@"initiatedType"];
  }

  return v10;
}

- (id)networkDomainInitiatedTypeString:(unsigned int)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"NonAppInitiated";
  }

  if (a3 == 1)
  {
    return @"AppInitiated";
  }

  else
  {
    return v3;
  }
}

- (id)groupRecordsByBundleId:(id)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v3;
  v65 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
  if (v65)
  {
    v64 = *v107;
    v67 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v107 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v66 = v5;
        v6 = *(*(&v106 + 1) + 8 * v5);
        v7 = [v6 allKeys];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v74 = [v7 countByEnumeratingWithState:&v102 objects:v113 count:16];
        v8 = 0;
        if (v74)
        {
          v73 = *v103;
          v68 = v7;
          do
          {
            v9 = 0;
            do
            {
              if (*v103 != v73)
              {
                v10 = v9;
                objc_enumerationMutation(v7);
                v9 = v10;
              }

              v75 = v9;
              v11 = *(*(&v102 + 1) + 8 * v9);
              if ([v11 containsString:@"bundleName"])
              {
                v12 = [v6 objectForKey:v11];

                v8 = v12;
                v13 = [v4 objectForKeyedSubscript:v12];
                v71 = v13;
                if (!v13)
                {
                  v47 = objc_opt_new();
                  v48 = v8;
                  v49 = [v6 mutableCopy];
                  [v47 addObject:v49];

                  v8 = v48;
                  [v4 setObject:v47 forKeyedSubscript:v48];
                  goto LABEL_47;
                }

                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v14 = v13;
                v78 = [v14 countByEnumeratingWithState:&v98 objects:v112 count:16];
                if (!v78)
                {

                  goto LABEL_46;
                }

                v69 = v12;
                v70 = 0;
                v76 = *v99;
                v77 = v14;
                while (2)
                {
                  v15 = 0;
LABEL_16:
                  if (*v99 != v76)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v16 = *(*(&v98 + 1) + 8 * v15);
                  v82 = [v16 objectForKeyedSubscript:@"domain"];
                  v88 = [v6 objectForKeyedSubscript:@"domain"];
                  v17 = [v16 objectForKeyedSubscript:@"kind"];
                  v18 = [v17 unsignedIntegerValue];

                  v19 = [v6 objectForKeyedSubscript:@"kind"];
                  v20 = [v19 unsignedIntegerValue];

                  v21 = [v16 objectForKeyedSubscript:@"domainType"];
                  v81 = [v21 unsignedIntegerValue];

                  v22 = [v6 objectForKeyedSubscript:@"domainType"];
                  v23 = [v22 unsignedIntegerValue];

                  v86 = [v16 objectForKeyedSubscript:@"context"];
                  v84 = [v6 objectForKeyedSubscript:@"context"];
                  [v16 objectForKeyedSubscript:@"contextVerificationType"];
                  v25 = v24 = v6;
                  v80 = [v25 integerValue];

                  v26 = [v24 objectForKeyedSubscript:@"contextVerificationType"];
                  v79 = [v26 integerValue];

                  v27 = [v16 objectForKeyedSubscript:@"domainClassification"];
                  v28 = [v27 integerValue];

                  v6 = v24;
                  v29 = [v24 objectForKeyedSubscript:@"domainClassification"];
                  v30 = [v29 integerValue];

                  if (v18 == v20)
                  {
                    v31 = 1;
                    v33 = v84;
                    v32 = v86;
                    if (v81 != v23)
                    {
                      v14 = v77;
                      v34 = v82;
                      v35 = v88;
                      goto LABEL_37;
                    }

                    v34 = v82;
                    v35 = v88;
                    if (!v88 || !v82 || ![v82 isEqualToString:v88] || !v84 || !v86 || !objc_msgSend(v86, "isEqualToString:", v84) || v80 != v79)
                    {
                      v14 = v77;
                      goto LABEL_37;
                    }

                    v36 = v28 == v30;
                    v14 = v77;
                    if (!v36)
                    {
LABEL_37:

                      if (!v31)
                      {
                        goto LABEL_42;
                      }

                      if (v78 == ++v15)
                      {
                        v46 = [v14 countByEnumeratingWithState:&v98 objects:v112 count:16];
                        v78 = v46;
                        if (!v46)
                        {
LABEL_42:

                          v4 = v67;
                          v7 = v68;
                          v8 = v69;
                          if (v70)
                          {
LABEL_48:

                            goto LABEL_49;
                          }

LABEL_46:
                          v47 = [v6 mutableCopy];
                          [v14 addObject:v47];
LABEL_47:

                          goto LABEL_48;
                        }

                        continue;
                      }

                      goto LABEL_16;
                    }

                    v37 = [v16 objectForKeyedSubscript:@"hits"];
                    v38 = [v37 unsignedIntegerValue];

                    v39 = [v6 objectForKeyedSubscript:@"hits"];
                    v40 = [v39 unsignedIntegerValue];

                    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40 + v38];
                    [v16 setObject:v41 forKeyedSubscript:@"hits"];

                    v42 = [v16 objectForKeyedSubscript:@"firstTimeStamp"];
                    v43 = [v6 objectForKeyedSubscript:@"firstTimeStamp"];
                    if ([v43 compare:v42] == -1)
                    {
                      [v16 setObject:v43 forKeyedSubscript:@"firstTimeStamp"];
                    }

                    v44 = [v16 objectForKeyedSubscript:@"timeStamp"];
                    v45 = [v6 objectForKeyedSubscript:@"timeStamp"];
                    if ([v45 compare:v44] == 1)
                    {
                      [v16 setObject:v45 forKeyedSubscript:@"timeStamp"];
                    }

                    v31 = 0;
                    v70 = 1;
                  }

                  else
                  {
                    v31 = 1;
                    v14 = v77;
                    v34 = v82;
                  }

                  break;
                }

                v32 = v86;
                v35 = v88;
                v33 = v84;
                goto LABEL_37;
              }

LABEL_49:
              v9 = v75 + 1;
            }

            while (v75 + 1 != v74);
            v74 = [v7 countByEnumeratingWithState:&v102 objects:v113 count:16];
          }

          while (v74);
        }

        v5 = v66 + 1;
      }

      while (v66 + 1 != v65);
      v65 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    }

    while (v65);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v50 = v4;
  v87 = [v50 countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (v87)
  {
    v83 = *v95;
    v85 = v50;
    do
    {
      v51 = 0;
      do
      {
        if (*v95 != v83)
        {
          objc_enumerationMutation(v50);
        }

        v89 = v51;
        v52 = *(*(&v94 + 1) + 8 * v51);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v53 = [v50 objectForKeyedSubscript:v52];
        v54 = [v53 countByEnumeratingWithState:&v90 objects:v110 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v91;
          do
          {
            for (i = 0; i != v55; ++i)
            {
              if (*v91 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v90 + 1) + 8 * i);
              v59 = [v58 objectForKeyedSubscript:@"kind"];
              v60 = -[UsageFeed networkDomainInitiatedTypeString:](self, "networkDomainInitiatedTypeString:", [v59 unsignedIntValue]);

              [v58 setObject:0 forKeyedSubscript:@"kind"];
              [v58 setObject:v60 forKeyedSubscript:@"initiatedType"];
              [v58 setObject:v52 forKeyedSubscript:@"bundleID"];
              [v58 setObject:0 forKeyedSubscript:@"bundleName"];
              [v58 setObject:0 forKeyedSubscript:@"effectiveUserId"];
            }

            v55 = [v53 countByEnumeratingWithState:&v90 objects:v110 count:16];
          }

          while (v55);
        }

        v51 = v89 + 1;
        v50 = v85;
      }

      while (v89 + 1 != v87);
      v87 = [v85 countByEnumeratingWithState:&v94 objects:v111 count:16];
    }

    while (v87);
  }

  v61 = *MEMORY[0x1E69E9840];

  return v50;
}

@end