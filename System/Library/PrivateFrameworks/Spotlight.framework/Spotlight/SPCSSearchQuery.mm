@interface SPCSSearchQuery
+ (void)activate;
+ (void)deactivate;
+ (void)initialize;
- (BOOL)skipResult:(id)a3 installedApps:(id)a4;
- (SPCSSearchQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6;
- (id).cxx_construct;
- (id)_makeUniqueFetchAttributesWithAttributes:(id)a3 extraAttributes:(id)a4 slowFetchAttributeSet:(id)a5;
- (id)disabledBundlesWithParseDisabledBundles:(id)a3 filterEventBundle:(BOOL)a4;
- (id)filterQueriesWithParseFilterQueries:(id)a3 onlyApps:(BOOL)a4 filterOrphanedFiles:(BOOL)a5;
- (id)prepareRankingItems:(id)a3 withResultSets:(id)a4 totalFeatureComputationTime:(double *)a5;
- (void)_sendResponse:(id)a3;
- (void)buildFullSearchResults:(id)a3 withResultSets:(id)a4;
- (void)buildPeopleResults:(id)a3 withContacts:(id)a4;
- (void)cancel;
- (void)collectSearchResults:(id)a3;
- (void)completed:(id)a3;
- (void)dealloc;
- (void)executeQuery;
- (void)foundCompletion:(id)a3 scores:(id)a4 bundleIDs:(id)a5;
- (void)foundCompletions:(id)a3;
- (void)priorityGatherEnded;
- (void)processSection:(id)a3;
- (void)processUserActivitiesForSection:(id)a3;
- (void)rankAndSendResultsWithResponseKind:(int)a3 withResultSections:(id)a4 withResultSets:(id)a5 withiCloudDriveResultSet:(id)a6 withMailResultSet:(id)a7 withCalendarResultSet:(id)a8;
- (void)removeDuplicatesInSection:(id)a3;
- (void)sendResponseWithKind:(int)a3;
- (void)slowFetchAttributes:(id)a3;
- (void)start;
- (void)updateCoreSuggestionsSection:(id)a3;
- (void)updateMailAttachmentResults:(id)a3;
@end

@implementation SPCSSearchQuery

+ (void)initialize
{
  v57 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x277CBEB98];
    v3 = *MEMORY[0x277D65CA0];
    v50[0] = *MEMORY[0x277D65C98];
    v50[1] = v3;
    v5 = *MEMORY[0x277D65CC0];
    v51 = *MEMORY[0x277D65CB8];
    v4 = v51;
    v52 = v5;
    v7 = *MEMORY[0x277D65CB0];
    v53 = *MEMORY[0x277D65CA8];
    v6 = v53;
    v54 = v7;
    v8 = *MEMORY[0x277D65C18];
    v55 = *MEMORY[0x277D65BE0];
    v56 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
    v10 = [v2 setWithArray:v9];

    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];

    v14 = MEMORY[0x277CBEB98];
    v49[0] = v3;
    v49[1] = v4;
    v49[2] = v5;
    v49[3] = v6;
    v49[4] = v7;
    v49[5] = v8;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:6];
    v16 = [v14 setWithArray:v15];

    v18 = objc_alloc(MEMORY[0x277CBEB98]);
    v48 = v3;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v20 = [v18 initWithArray:v19];

    v22 = objc_alloc(MEMORY[0x277CBEB98]);
    v47[0] = v4;
    v47[1] = v5;
    v47[2] = v6;
    v47[3] = v7;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v24 = [v22 initWithArray:v23];

    v26 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Search.framework"];

    v28 = objc_alloc(MEMORY[0x277CBEBD0]);
    v29 = *MEMORY[0x277D65B88];
    v30 = [v28 initWithSuiteName:*MEMORY[0x277D65B88]];

    v32 = [v29 UTF8String];
    v34 = ;

    v36 = dispatch_group_create();

    {
      v38 = NSHomeDirectory();
      v39 = [v38 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];

      v40 = [MEMORY[0x277CCAA00] defaultManager];
      [v40 createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v41 = [MEMORY[0x277D657E8] sharedResourcesManager];
    [v41 loadAllParameters];

    v43 = dispatch_get_global_queue(17, 0);
    dispatch_group_async(v42, v43, &__block_literal_global_1);

    v44 = rankingAttributeNameArray();
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __29__SPCSSearchQuery_initialize__block_invoke()
{
  v29[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBDAB8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithConfiguration:v1];

  v3 = *MEMORY[0x277CBD000];
  v29[0] = *MEMORY[0x277CBD018];
  v29[1] = v3;
  v4 = *MEMORY[0x277CBCFF8];
  v29[2] = *MEMORY[0x277CBD058];
  v29[3] = v4;
  v5 = *MEMORY[0x277CBD098];
  v29[4] = *MEMORY[0x277CBCFC0];
  v29[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:6];
  v27 = 0;
  v7 = [v2 _ios_meContactWithKeysToFetch:v6 error:&v27];
  v8 = v27;
  if (v8)
  {
    v9 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __29__SPCSSearchQuery_initialize__block_invoke_cold_1(buf, [v8 code], v9);
    }
  }

  else
  {
    v10 = objc_opt_new();
    v11 = [v7 emailAddresses];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __29__SPCSSearchQuery_initialize__block_invoke_2;
    v25 = &unk_279CFE350;
    v9 = v10;
    v26 = v9;
    [v11 enumerateObjectsUsingBlock:&v22];

    v12 = [v7 identifier];

    if ((v13 & 1) == 0)
    {
      v14 = [v7 identifier];

      v16 = [v9 copy];
    }
  }

  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

    v19 = {;
  }

  if (_ZZZ29__SPCSSearchQuery_initialize_EUb_E34displayNameExactMatchMaskOnceToken[0] != -1)
  {
    __29__SPCSSearchQuery_initialize__block_invoke_cold_2();
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __29__SPCSSearchQuery_initialize__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  [v2 addObject:?];
}

void __29__SPCSSearchQuery_initialize__block_invoke_171()
{
  v4 = PRSRankingQueryIndexDictionary();
  v0 = [v4 objectForKeyedSubscript:*MEMORY[0x277D65A70]];
  v1 = [v0 integerValue];
  v2 = 1 << v1;
  if ((v1 & 0x40) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v1;
  }

  if ((v1 & 0x40) == 0)
  {
    v2 = 0;
  }

  unk_281229D28 |= v2;
}

+ (void)activate
{
  v20 = *MEMORY[0x277D85DE8];
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    v4 = [v3 effectiveValueForSetting:*MEMORY[0x277D25F80]];

    v6 = [v3 effectiveValueForSetting:*MEMORY[0x277D25F90]];

    v8 = SPFastHiddenAppsGetNoBuild();
    v9 = [v8 mutableCopy];

    v10 = [MEMORY[0x277D4BE70] applicationsExcludedFromUninstall];
    [v9 minusSet:v10];

    v11 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = [v9 count];
      _os_log_impl(&dword_26B71B000, v11, OS_LOG_TYPE_DEFAULT, "%lu hiddenApps set during activate", &v18, 0xCu);
    }

    v12 = [v9 allObjects];

    if (+[SPCSSearchQuery activate]::onceToken[0] != -1)
    {
      +[SPCSSearchQuery activate];
    }

    if (v14 <= 0)
    {
      [a1 preheat];
    }

    else
    {
    }

    v15 = [MEMORY[0x277D65970] copyRenderEngagementCounts];

    if (+[SPCSSearchQuery activate]::mailVipOnceToken[0] != -1)
    {
      +[SPCSSearchQuery activate];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __27__SPCSSearchQuery_activate__block_invoke()
{
  v0 = objc_opt_new();
  v4 = 0;
  v1 = [v0 loadDockAppListWithError:&v4];
  v2 = v4;
  if (v1)
  {
    [MEMORY[0x277D65838] setDockApps:v1];
  }

  if (v2)
  {
    v3 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__SPCSSearchQuery_activate__block_invoke_cold_1();
    }
  }

  if (_os_feature_enabled_impl())
  {
  }
}

+ (void)deactivate
{
  {
    [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
    [MEMORY[0x277D65978] getSuggestionsRankingThresholds];
    v2 = SISetCompletionRankingWeights();
    [MEMORY[0x277D65838] clearState];
  }
}

- (SPCSSearchQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6
{
  v21.receiver = self;
  v21.super_class = SPCSSearchQuery;
  v6 = [(SPKQuery *)&v21 initWithUserQuery:a3 queryGroupId:a4 options:a5 queryContext:a6];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create("SPCSSearchQuery", v8);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_overcommit();
    v13 = dispatch_queue_create("SPCSSearchQuery rankq", v12);
    rankQueue = v6->_rankQueue;
    v6->_rankQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("Feedback Queue", v15);
    feedbackQueue = v6->_feedbackQueue;
    v6->_feedbackQueue = v16;

    v6->_csQueryLock._os_unfair_lock_opaque = 0;
    v6->_suggestionsLock._os_unfair_lock_opaque = 0;
    v6->_timeoutTimerLock._os_unfair_lock_opaque = 0;
    v18 = objc_opt_new();
    rankingInfo = v6->_rankingInfo;
    v6->_rankingInfo = v18;
  }

  return v6;
}

- (void)start
{
  if (![(SPKQuery *)self isStarted]&& ![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:1])
  {
    v6.receiver = self;
    v6.super_class = SPCSSearchQuery;
    [(SPKQuery *)&v6 start];
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SPCSSearchQuery_start__block_invoke;
    block[3] = &unk_279CFE378;
    block[4] = self;
    v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    dispatch_async(dispatchQueue, v4);
  }
}

uint64_t __24__SPCSSearchQuery_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCanceled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 executeQuery];
  }

  return result;
}

- (void)cancel
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_timeoutTimerLock);
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      v4 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    os_unfair_lock_unlock(&self->_timeoutTimerLock);
  }

  v5 = [(SPKQuery *)self delegate];
  v6 = [v5 queryIdent];
  v7 = [v5 clientBundleID];
  v22 = @"queryID";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  MEMORY[0x26D67EFE0]();

  v10 = [(SPKQuery *)self queryContext];
  LOBYTE(v9) = [v10 isSearchToolClient];

  if ((v9 & 1) == 0)
  {
    v11 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:self->_feedback];
    feedbackQueue = self->_feedbackQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __25__SPCSSearchQuery_cancel__block_invoke;
    v18[3] = &unk_279CFE3A0;
    v19 = v11;
    v21 = v6;
    v20 = v7;
    v13 = v11;
    md_dispatch_async_propagating(feedbackQueue, v18);
  }

  os_unfair_lock_lock(&self->_csQueryLock);
  atomic_store(1u, &self->_queryCanceled);
  v14 = self->_csQuery;
  csQuery = self->_csQuery;
  self->_csQuery = 0;

  os_unfair_lock_unlock(&self->_csQueryLock);
  [(CSSearchQuery *)v14 cancel];
  v17.receiver = self;
  v17.super_class = SPCSSearchQuery;
  [(SPKQuery *)&v17 cancel];

  v16 = *MEMORY[0x277D85DE8];
}

void __25__SPCSSearchQuery_cancel__block_invoke(void *a1)
{
  v2 = [MEMORY[0x277D4BEC0] sharedProxy];
  [v2 sendFeedbackType:6 feedback:a1[4] queryId:a1[6] clientID:a1[5]];
}

- (void)_sendResponse:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SPKQuery *)self responseHandler];

    if (v5)
    {
      v6 = [v4 sections];
      v7 = [v6 count];

      if (v7)
      {
        [v4 setTopHitIsIn:1];
      }

      v8 = [(SPKQuery *)self delegate];
      v9 = [v8 queryIdent];
      v10 = [v8 clientBundleID];
      v11 = MEMORY[0x277D65968];
      v12 = [(SPKQuery *)self queryContext];
      v13 = [v12 queryUnderstandingOutput];
      v14 = [v11 queryUnderstandingParseWithQueryUnderstanding:v13];

      v15 = [(SPKQuery *)self queryContext];
      LOBYTE(v13) = [v15 isSearchToolClient];

      if ((v13 & 1) == 0)
      {
        v16 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:self->_feedback queryUnderstandingParse:v14];
        objc_initWeak(&location, self);
        feedbackQueue = self->_feedbackQueue;
        objc_copyWeak(v21, &location);
        v21[1] = v9;
        v20 = v10;
        v18 = v16;
        md_tracing_dispatch_async_propagating();

        objc_destroyWeak(v21);
        objc_destroyWeak(&location);
      }

      v19 = [(SPKQuery *)self responseHandler];
      (v19)[2](v19, v4);
    }
  }
}

void __33__SPCSSearchQuery__sendResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:6 feedback:*(a1 + 32) queryId:*(a1 + 56) clientID:*(a1 + 40)];

    v4 = v5[60];
    v5[60] = 0;

    WeakRetained = v5;
  }
}

- (void)dealloc
{
  csQuery = self->_csQuery;
  if (csQuery)
  {
    [(CSSearchQuery *)csQuery cancel];
  }

  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_timeoutTimerLock);
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
      v5 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    os_unfair_lock_unlock(&self->_timeoutTimerLock);
  }

  v6.receiver = self;
  v6.super_class = SPCSSearchQuery;
  [(SPCSSearchQuery *)&v6 dealloc];
}

- (BOOL)skipResult:(id)a3 installedApps:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 attributeSet];
  v9 = [v8 bundleID];
  v10 = [v8 uniqueIdentifier];
  v11 = [v8 attributeDictionary];
  v12 = [MEMORY[0x277CC33F0] fpBundleIDs];
  if (!v9)
  {
    v14 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SPCSSearchQuery skipResult:installedApps:];
    }

    goto LABEL_10;
  }

  if (![v9 isEqualToString:*MEMORY[0x277D4BEF0]])
  {
    if ([v9 isEqualToString:*MEMORY[0x277D65CE8]])
    {
      v18 = [v8 relatedAppBundleIdentifier];
      if (v18)
      {
        if ([(NSSet *)self->_disabledAppSet containsObject:v18])
        {
          v19 = SPLogForSPLogCategoryDefault();
          v20 = v19;
          if (*MEMORY[0x277D4BF48])
          {
            v21 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v21 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v19, v21))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v39 = v10;
          v40 = 2112;
          v41 = v18;
          v22 = "Skipping shortcut %@ for disabled app %@";
          goto LABEL_44;
        }

        {
          v29 = SPLogForSPLogCategoryDefault();
          v20 = v29;
          if (*MEMORY[0x277D4BF48])
          {
            v21 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v21 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v29, v21))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v39 = v10;
          v40 = 2112;
          v41 = v18;
          v22 = "Skipping shortcut %@ for restricted app %@";
LABEL_44:
          _os_log_impl(&dword_26B71B000, v20, v21, v22, buf, 0x16u);
          goto LABEL_70;
        }
      }
    }

    else if ([v9 isEqualToString:*MEMORY[0x277D65B98]])
    {
      v18 = [v8 relatedAppBundleIdentifier];
      if (v18)
      {
        if ([(NSSet *)self->_disabledAppSet containsObject:v18])
        {
          v23 = SPLogForSPLogCategoryDefault();
          v20 = v23;
          if (*MEMORY[0x277D4BF48])
          {
            v24 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v24 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v23, v24))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v39 = v10;
          v40 = 2112;
          v41 = v18;
          v25 = "Skipping settings %@ for disabled app %@";
        }

        {
          v30 = SPLogForSPLogCategoryDefault();
          v20 = v30;
          if (*MEMORY[0x277D4BF48])
          {
            v24 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v24 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v30, v24))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v39 = v10;
          v40 = 2112;
          v41 = v18;
          v25 = "Skipping settings %@ for restricted app %@";
        }

        else
        {
          if ([v7 containsObject:v18])
          {
            goto LABEL_53;
          }

          v35 = SPLogForSPLogCategoryDefault();
          v20 = v35;
          if (*MEMORY[0x277D4BF48])
          {
            v24 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v24 = OS_LOG_TYPE_DEBUG;
          }

          if (!os_log_type_enabled(v35, v24))
          {
            goto LABEL_70;
          }

          *buf = 138412546;
          v39 = v10;
          v40 = 2112;
          v41 = v18;
          v25 = "Skipping settings %@ for non-installed app %@";
        }

        _os_log_impl(&dword_26B71B000, v20, v24, v25, buf, 0x16u);
LABEL_70:

        goto LABEL_10;
      }
    }

    else
    {
      if (![v9 isEqualToString:*MEMORY[0x277D65A90]])
      {
        goto LABEL_54;
      }

      v26 = [(SPKQuery *)self queryContext];
      v27 = [v26 isSearchToolClient];

      if (!v27)
      {
        goto LABEL_54;
      }

      v18 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC2A00]];
      if (!v18)
      {
        v20 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [SPCSSearchQuery skipResult:v20 installedApps:?];
        }

        goto LABEL_70;
      }

      v37 = [(CSSearchQuery *)self->_csQuery queryContext];
      v28 = [v37 disableBundles];
      v36 = [v28 containsObject:v18];

      if (v36)
      {
        v20 = SPLogForSPLogCategoryDefault();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v18;
          _os_log_impl(&dword_26B71B000, v20, OS_LOG_TYPE_DEFAULT, "[ProtectedApps][personal answers] event extracted from disabled source bundle %@ was filtered out", buf, 0xCu);
        }

        goto LABEL_70;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  if (![(NSSet *)self->_disabledAppSet containsObject:v10])
  {
    {
      v13 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v10;
        _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "Skipping restricted app %@", buf, 0xCu);
      }

      goto LABEL_58;
    }

LABEL_54:
    v31 = [(CSSearchQuery *)self->_csQuery queryContext];
    v32 = [v31 disableBundles];
    if ([v32 containsObject:v9])
    {
      v33 = [v12 containsObject:v9];

      if ((v33 & 1) == 0)
      {
        v13 = SPLogForSPLogCategoryDefault();
        v34 = *MEMORY[0x277D4BF50];
        if (os_log_type_enabled(v13, ((*MEMORY[0x277D4BF50] & 1) == 0)))
        {
          *buf = 138412290;
          v39 = v9;
          _os_log_impl(&dword_26B71B000, v13, ((v34 & 1) == 0), "[ProtectedApps] item from disabled bundle %@ was found", buf, 0xCu);
        }

        goto LABEL_58;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_11;
  }

  v13 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v10;
    _os_log_impl(&dword_26B71B000, v13, OS_LOG_TYPE_DEFAULT, "Skipping disabled app %@", buf, 0xCu);
  }

LABEL_58:

LABEL_10:
  v15 = 1;
LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)collectSearchResults:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SPCopyVisibleApps();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (![(SPCSSearchQuery *)self skipResult:v11 installedApps:v5, v16])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(SPKQuery *)self queryContext];
  v13 = [(SPCSSearchQuery *)self isPeopleSearch];
  v14 = [(CSSearchQuery *)self->_csQuery queryContext];
  collectIndexResults(v6, v12, v13, 300, [v14 maxCount], &self->_indexResultsRegistry);

  v15 = *MEMORY[0x277D85DE8];
}

void __53__SPCSSearchQuery_addSearchResult_withFoundBundleID___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = [*(a1[5] + 400) objectAtIndexedSubscript:a2];
  v12 = [v4 objectForKey:v5];

  if (v12)
  {
    v6 = [*(a1[5] + 400) objectAtIndexedSubscript:a2];
    v7 = rankingAttributeIndexForName();

    v8 = v7 == 101 || v7 == 13;
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = a1[6];
      v10 = [v12 absoluteString];
      SSCompactRankingAttrsInsertValue();
    }

    else
    {
      v11 = a1[6];
      SSCompactRankingAttrsInsertValue();
    }
  }
}

void __47__SPCSSearchQuery_constructResultsForResponse___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addSearchResult:a3 withFoundBundleID:*(a2 + 8)];

  v4 = *(a3 + 32);
}

- (void)updateMailAttachmentResults:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v4)
  {
    v5 = 0;
    v54 = 0;
    v55 = *v77;
    v6 = *MEMORY[0x277CC3048];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v77 != v55)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v76 + 1) + 8 * i);
        v9 = [v8 attributeSet];
        v10 = [v9 attributeDictionary];
        v11 = [v10 objectForKeyedSubscript:v6];

        if (v11)
        {
          if (!v5)
          {
            v5 = [MEMORY[0x277CBEB38] dictionary];
            v12 = [MEMORY[0x277CBEB38] dictionary];

            v54 = v12;
          }

          v13 = [v8 dataclass];
          v14 = [v5 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v14 = [MEMORY[0x277CBEB18] array];
            v15 = [v8 dataclass];
            [v5 setObject:v14 forKeyedSubscript:v15];
          }

          v16 = [v54 objectForKeyedSubscript:v11];
          if (!v16)
          {
            v17 = [MEMORY[0x277CBEB18] array];
            [v54 setObject:v17 forKeyedSubscript:v11];
            v16 = v17;
            [v14 addObject:v11];
          }

          [v16 addObject:v8];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v76 objects:v85 count:16];
    }

    while (v4);

    if (!v5)
    {
      v37 = 0;
      goto LABEL_50;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v19)
    {
      v39 = v19;
      v41 = *v73;
      obj = v18;
      v40 = *MEMORY[0x277D65BF8];
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v73 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v72 + 1) + 8 * j);
          v43 = [obj objectForKeyedSubscript:v20];
          v44 = rankingAttributeNameArray();
          v21 = dispatch_group_create();
          dispatch_group_enter(v21);
          v22 = [MEMORY[0x277CBEB18] array];
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v67[2] = __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke;
          v67[3] = &unk_279CFE440;
          v50 = v43;
          v68 = v50;
          v47 = v44;
          v69 = v47;
          v45 = v22;
          v70 = v45;
          group = v21;
          v71 = group;
          v49 = MEMORY[0x26D67F7A0](v67);
          v23 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
          [v23 slowFetchAttributes:v47 protectionClass:v20 bundleID:v40 identifiers:v50 completionHandler:v49];

          v24 = dispatch_time(0, 300000000);
          if (dispatch_group_wait(group, v24))
          {
            v25 = SPLogForSPLogCategoryQuery();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v83 = v20;
              _os_log_error_impl(&dword_26B71B000, v25, OS_LOG_TYPE_ERROR, "[Mail Attachment] timed out fetching attributes for pc:%@.", buf, 0xCu);
            }

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v26 = v50;
            v53 = [v26 countByEnumeratingWithState:&v60 objects:v81 count:16];
            if (v53)
            {
              v51 = v26;
              v52 = *v61;
              do
              {
                for (k = 0; k != v53; ++k)
                {
                  if (*v61 != v52)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v28 = [v54 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * k)];
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v29 = v28;
                  v30 = [v29 countByEnumeratingWithState:&v56 objects:v80 count:16];
                  if (v30)
                  {
                    v31 = *v57;
                    do
                    {
                      for (m = 0; m != v30; ++m)
                      {
                        if (*v57 != v31)
                        {
                          objc_enumerationMutation(v29);
                        }

                        v33 = *(*(&v56 + 1) + 8 * m);
                        [v3 removeObject:v33];
                        v34 = SPLogForSPLogCategoryQuery();
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                        {
                          v35 = [v33 attributeSet];
                          v36 = [v35 uniqueIdentifier];
                          *buf = 138412290;
                          v83 = v36;
                          _os_log_error_impl(&dword_26B71B000, v34, OS_LOG_TYPE_ERROR, "[Mail Attachment] removed result:%@", buf, 0xCu);
                        }
                      }

                      v30 = [v29 countByEnumeratingWithState:&v56 objects:v80 count:16];
                    }

                    while (v30);
                  }
                }

                v53 = [v51 countByEnumeratingWithState:&v60 objects:v81 count:16];
              }

              while (v53);
              v26 = v51;
            }
          }

          else
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_226;
            v64[3] = &unk_279CFE468;
            v65 = v45;
            v66 = v54;
            [v50 enumerateObjectsUsingBlock:v64];

            v26 = v65;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v39);
      v18 = obj;
    }

    v37 = v18;
  }

  else
  {
    v37 = 0;
    v54 = 0;
    v18 = v3;
  }

LABEL_50:
  v38 = *MEMORY[0x277D85DE8];
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v3 = [v18 count];
  v17 = a1;
  if (v3 == [*(a1 + 32) count])
  {
    v19 = 0;
    v4 = *MEMORY[0x277CBEEE8];
    while (v19 < [v18 count])
    {
      v5 = [v18 objectAtIndexedSubscript:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = objc_opt_new();
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = *(v17 + 40);
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          v9 = 0;
          v10 = *v21;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * i);
              v13 = [v5 objectAtIndexedSubscript:v9];
              if (v13 != v4)
              {
                [v6 setObject:v13 forKey:v12];
              }

              ++v9;
            }

            v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v8);
        }

        v14 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v6];
        [*(v17 + 48) addObject:v14];
      }

      ++v19;
    }

    dispatch_group_leave(*(v17 + 56));
  }

  else
  {
    v15 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_cold_1(buf, [*(a1 + 32) count], objc_msgSend(v18, "count"), v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_226(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [*(a1 + 40) objectForKeyedSubscript:v5];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 attributeSet];
        v13 = [v12 attributeDictionary];
        [v6 addAttributesFromDictionaryWithOutOverWriting:v13];

        [v11 setAttributeSet:v6];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)prepareRankingItems:(id)a3 withResultSets:(id)a4 totalFeatureComputationTime:(double *)a5
{
  v153 = *MEMORY[0x277D85DE8];
  v113 = a3;
  v109 = a4;
  v7 = [(SPCSSearchQuery *)self itemRanker];
  v8 = [(SPKQuery *)self queryContext];
  [v7 parseQUQuery:v8];

  v117 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v113, "count")}];
  v9 = 0;
  v127 = *MEMORY[0x277CBEEE8];
  while (v9 < [v113 count])
  {
    [v117 addObject:v127];
    ++v9;
  }

  v114 = 0;
  v106 = *MEMORY[0x277D65AB8];
  v104 = v133;
  v105 = *MEMORY[0x277D65AD0];
  *&v10 = 67109378;
  v103 = v10;
  v120 = self;
  while (v114 < [v113 count])
  {
    v118 = [v113 objectAtIndexedSubscript:v114];
    v107 = [v109 objectAtIndexedSubscript:v114];
    v11 = [v118 bundleIdentifier];
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    v13 = objc_opt_new();
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v14 = v107;
    v15 = [v14 countByEnumeratingWithState:&v138 objects:v152 count:16];
    if (v15)
    {
      v16 = *v139;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v139 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v138 + 1) + 8 * i);
          v19 = [v18 rankingItem];
          v20 = v19 == 0;

          if (!v20)
          {
            v21 = [v18 rankingItem];
            [v21 setSectionBundleIdentifier:v11];

            v22 = [v18 rankingItem];
            [v13 addObject:v22];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v138 objects:v152 count:16];
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v24 = [(SPCSSearchQuery *)v120 itemRanker];
    v25 = [v118 bundleIdentifier];
    [v24 prepareItems:v13 inBundle:v25];

    *a5 = CFAbsoluteTimeGetCurrent() - Current + *a5;
    if (IsSyndicatedPhotos)
    {
      v110 = objc_opt_new();
      v111 = objc_opt_new();
      v123 = [v14 count];
      v26 = [(SPCSSearchQuery *)v120 itemRanker];
      v121 = [v26 isNLSearch];

      v27 = [(SPCSSearchQuery *)v120 itemRanker];
      v28 = [v27 queryTermCount] == 0;

      if (v28)
      {
        v115 = 0;
      }

      else
      {
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v29 = v14;
        v30 = [v29 countByEnumeratingWithState:&v134 objects:v151 count:16];
        if (v30)
        {
          v31 = *v135;
          while (2)
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v135 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = [*(*(&v134 + 1) + 8 * j) rankingItem];
              v34 = v33;
              if (v33)
              {
                v35 = [v33 L2FeatureVector];
                [v35 scoreForFeature:1929];
                v37 = v36;

                if (v37 == 1.0)
                {

                  v115 = 1;
                  goto LABEL_29;
                }
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v134 objects:v151 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }
        }

        v115 = 0;
LABEL_29:
      }

      if (v123)
      {
        v112 = 0;
        v125 = 0;
        for (k = 0; k != v123; ++k)
        {
          v39 = [v14 objectAtIndex:k];
          v40 = [v39 rankingItem];
          v41 = v40;
          if (v40)
          {
            v42 = [v40 L2FeatureVector];
            [v42 scoreForFeature:2392];
            v44 = v43;

            v45 = [v41 L2FeatureVector];
            [v45 scoreForFeature:1929];
            v47 = v46;

            v48 = [v41 L2FeatureVector];
            [v48 scoreForFeature:2380];
            v50 = v49;

            if (v44 == 1.0)
            {
              v51 = v121;
            }

            else
            {
              v51 = 0;
            }

            if (!((v115 ^ 1) & 1 | (v47 == 1.0)) && (v51 & 1) == 0 || (v47 == 1.0 ? (v57 = 1) : (v57 = v115), (v57 & 1) == 0 && v50 != 1.0 && ([v41 photosExactMatch] & 1) == 0 && ((objc_msgSend(v41, "photosMatch") | v51) & 1) == 0))
            {
              if ((*(v120 + 448) & 2) != 0)
              {
                v52 = SPLogForSPLogCategoryDefault();
                v58 = *MEMORY[0x277D4BF50];
                if (os_log_type_enabled(v52, ((*MEMORY[0x277D4BF50] & 1) == 0)))
                {
                  v59 = [v41 identifier];
                  v60 = [v41 photosExactMatch];
                  v61 = [v41 photosMatch];
                  *buf = 138413314;
                  *v144 = v59;
                  *&v144[8] = 1024;
                  *&v144[10] = v60;
                  v145 = 1024;
                  v146 = v61;
                  v147 = 2048;
                  v148 = v44;
                  v149 = 1024;
                  v150 = v121;
                  _os_log_impl(&dword_26B71B000, v52, ((v58 & 1) == 0), "#####=== [Pommes Ranking] photo filtering ignored id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);
                }
              }

              else
              {
                [v110 addIndex:k];
                [v111 addIndex:v125];
                v52 = SPLogForSPLogCategoryDefault();
                v53 = *MEMORY[0x277D4BF50];
                v112 = 1;
                if (os_log_type_enabled(v52, ((*MEMORY[0x277D4BF50] & 1) == 0)))
                {
                  v54 = [v41 identifier];
                  v55 = [v41 photosExactMatch];
                  v56 = [v41 photosMatch];
                  *buf = 138413314;
                  *v144 = v54;
                  *&v144[8] = 1024;
                  *&v144[10] = v55;
                  v145 = 1024;
                  v146 = v56;
                  v147 = 2048;
                  v148 = v44;
                  v149 = 1024;
                  v150 = v121;
                  _os_log_impl(&dword_26B71B000, v52, ((v53 & 1) == 0), "#####=== photo filtered id:%@ exact:%d match:%d nl:%.0f isNL:%d", buf, 0x28u);

                  v112 = 1;
                }
              }
            }

            ++v125;
          }
        }

        if (v112)
        {
          [v13 removeObjectsAtIndexes:v111];
          [v14 removeObjectsAtIndexes:v110];
        }
      }
    }

    v62 = [v118 resultsCount];
    if (!v120->_isPeopleSearch)
    {
      goto LABEL_89;
    }

    v63 = v62;
    if ([v11 isEqualToString:v106])
    {
      if (v63 < 0xC9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v64 = [v11 isEqualToString:v105];
      if (v63 > 0xC8)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    v122 = objc_opt_new();
    v124 = objc_opt_new();
    v126 = [v118 resultSet];
    v66 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v63];
    v67 = 0;
    v68 = v66;
    do
    {
      v69 = [v126 objectAtIndex:v67];
      v70 = [v69 rankingItem];
      if (v70)
      {
        [v66 addObject:v70];
      }

      ++v67;
      v66 = v68;
    }

    while (v63 != v67);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v133[0] = __82__SPCSSearchQuery_prepareRankingItems_withResultSets_totalFeatureComputationTime___block_invoke;
    v133[1] = &unk_279CFE490;
    v133[2] = v120;
    [v68 sortWithOptions:16 usingComparator:v132];
    v71 = [v68 count];
    if (v71 >= 0xC9)
    {
      for (m = 200; m != v71; ++m)
      {
        v73 = [v66 objectAtIndexedSubscript:m];
        v74 = [v73 L2FeatureVector];
        LODWORD(v75) = -8388608;
        [v74 setOriginalL2Score:v75];

        v66 = v68;
      }
    }

    v76 = 0;
    v116 = 0;
    v119 = 0;
    do
    {
      while (1)
      {
        v77 = [v126 objectAtIndex:v76];
        v78 = [v77 rankingItem];
        v79 = v78;
        if (!v78)
        {
          goto LABEL_79;
        }

        v80 = [v78 L2FeatureVector];
        [v80 originalL2Score];
        v82 = v81 == -INFINITY;

        if (!v82)
        {
          goto LABEL_79;
        }

        v83 = [v13 indexOfObject:v79];
        if (v83 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        [v122 addIndex:v76];
        [v124 addIndex:v83];

        ++v116;
        v119 = 1;
        if (v63 - 1 == v76++)
        {
          goto LABEL_85;
        }
      }

      v84 = SPLogForSPLogCategoryDefault();
      v85 = *MEMORY[0x277D4BF50];
      if (os_log_type_enabled(v84, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v84, ((v85 & 1) == 0), "Item to remove not found in array of ranking items", buf, 2u);
      }

LABEL_79:
      ++v76;
      v86 = v68;
    }

    while (v63 != v76);
    if ((v119 & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_85:
    v88 = SPLogForSPLogCategoryDefault();
    v89 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v88, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      *buf = v103;
      *v144 = v116;
      *&v144[4] = 2112;
      *&v144[6] = v11;
      _os_log_impl(&dword_26B71B000, v88, ((v89 & 1) == 0), "Removing %d items from %@", buf, 0x12u);
    }

    v86 = v68;
    [v13 removeObjectsAtIndexes:v124];
    [v126 removeObjectsAtIndexes:v122];
LABEL_88:

LABEL_89:
    if ([v13 count])
    {
      v90 = [v13 copy];
      [v117 setObject:v90 atIndexedSubscript:v114];
    }

    [v13 removeAllObjects];

    ++v114;
  }

  v91 = objc_opt_new();
  for (n = 0; n < [v117 count]; ++n)
  {
    v93 = [v117 objectAtIndexedSubscript:n];
    if (v93 != v127)
    {
      v94 = [v117 objectAtIndexedSubscript:n];
      [v91 addObjectsFromArray:v94];
    }
  }

  v95 = objc_opt_new();
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v96 = v91;
  v97 = [v96 countByEnumeratingWithState:&v128 objects:v142 count:16];
  if (v97)
  {
    v98 = 0;
    v99 = *v129;
    do
    {
      for (ii = 0; ii != v97; ++ii)
      {
        if (*v129 != v99)
        {
          objc_enumerationMutation(v96);
        }

        if (*(*(&v128 + 1) + 8 * ii) == v127)
        {
          [v95 addIndex:v98];
        }

        ++v98;
      }

      v97 = [v96 countByEnumeratingWithState:&v128 objects:v142 count:16];
    }

    while (v97);
  }

  [v96 removeObjectsAtIndexes:v95];
  v101 = *MEMORY[0x277D85DE8];

  return v96;
}

uint64_t __82__SPCSSearchQuery_prepareRankingItems_withResultSets_totalFeatureComputationTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 interestingDate];
  v7 = [v5 interestingDate];
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  [*(a1 + 32) currentTime];
  v11 = v10;
  [v7 timeIntervalSinceReferenceDate];
  v13 = v12;
  [*(a1 + 32) currentTime];
  v15 = v13 - v14;
  if (v9 - v11 <= v15)
  {
    v16 = v9 - v11 < v15;
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (void)slowFetchAttributes:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v51 = self;
  if ([(NSArray *)self->_slowFetchAttrs count])
  {
    v4 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v49;
    v56 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v56)
    {
      v52 = *v79;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v79 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v78 + 1) + 8 * i);
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v6 = v5;
          v7 = [v6 countByEnumeratingWithState:&v74 objects:v89 count:16];
          if (v7)
          {
            v8 = *v75;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v75 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v74 + 1) + 8 * j);
                v11 = [v10 dataclass];
                if (v11)
                {
                  v12 = [v10 attributeSet];
                  v13 = [v12 bundleIdentifier];
                  v14 = v13 == 0;

                  if (!v14)
                  {
                    v15 = [v10 dataclass];
                    v88[0] = v15;
                    v16 = [v10 attributeSet];
                    v17 = [v16 bundleIdentifier];
                    v88[1] = v17;
                    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];

                    v19 = [v4 objectForKeyedSubscript:v18];
                    LODWORD(v15) = v19 == 0;

                    if (v15)
                    {
                      v20 = objc_opt_new();
                      [v4 setObject:v20 forKeyedSubscript:v18];
                    }

                    v21 = [v4 objectForKeyedSubscript:v18];
                    [v21 addObject:v10];
                  }
                }
              }

              v7 = [v6 countByEnumeratingWithState:&v74 objects:v89 count:16];
            }

            while (v7);
          }
        }

        v56 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      }

      while (v56);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obja = v4;
    v22 = [obja countByEnumeratingWithState:&v70 objects:v87 count:16];
    if (v22)
    {
      v50 = *v71;
      *&v23 = 138412546;
      v48 = v23;
      do
      {
        v53 = v22;
        for (k = 0; k != v53; ++k)
        {
          if (*v71 != v50)
          {
            objc_enumerationMutation(obja);
          }

          v25 = *(*(&v70 + 1) + 8 * k);
          v57 = [v25 objectAtIndexedSubscript:{0, v48}];
          v59 = [v25 objectAtIndexedSubscript:1];
          v26 = objc_opt_new();
          v27 = [obja objectForKeyedSubscript:v25];
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v66 objects:v86 count:16];
          if (v29)
          {
            v30 = *v67;
            do
            {
              for (m = 0; m != v29; ++m)
              {
                if (*v67 != v30)
                {
                  objc_enumerationMutation(v28);
                }

                v32 = *(*(&v66 + 1) + 8 * m);
                v33 = [v32 attributeSet];
                v34 = [v33 uniqueIdentifier];
                v35 = v34 == 0;

                if (!v35)
                {
                  v36 = [v32 attributeSet];
                  v37 = [v36 uniqueIdentifier];
                  [v26 addObject:v37];
                }
              }

              v29 = [v28 countByEnumeratingWithState:&v66 objects:v86 count:16];
            }

            while (v29);
          }

          v38 = [MEMORY[0x277CBEB18] array];
          v39 = v51->_slowFetchAttrs;
          v40 = dispatch_group_create();
          dispatch_group_enter(v40);
          v41 = [MEMORY[0x277CC34A8] defaultSearchableIndex];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __39__SPCSSearchQuery_slowFetchAttributes___block_invoke;
          v62[3] = &unk_279CFE4B8;
          v42 = v39;
          v63 = v42;
          v43 = v38;
          v64 = v43;
          v44 = v40;
          v65 = v44;
          [v41 slowFetchAttributes:v42 protectionClass:v57 bundleID:v59 identifiers:v26 completionHandler:v62];

          v45 = dispatch_time(0, 1000000000);
          if (dispatch_group_wait(v44, v45))
          {
            v46 = SPLogForSPLogCategoryQuery();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = v48;
              v83 = v59;
              v84 = 2112;
              v85 = v57;
              _os_log_error_impl(&dword_26B71B000, v46, OS_LOG_TYPE_ERROR, "Timeout fetching additional attributes for %@ in %@.", buf, 0x16u);
            }
          }

          else
          {
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __39__SPCSSearchQuery_slowFetchAttributes___block_invoke_2;
            v60[3] = &unk_279CFE4E0;
            v61 = v43;
            [v28 enumerateObjectsUsingBlock:v60];
            v46 = v61;
          }
        }

        v22 = [obja countByEnumeratingWithState:&v70 objects:v87 count:16];
      }

      while (v22);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __39__SPCSSearchQuery_slowFetchAttributes___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = 0;
  v2 = *MEMORY[0x277CBEEE8];
  while (v16 < [v15 count])
  {
    v3 = [v15 objectAtIndexedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_opt_new();
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = *(a1 + 32);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        v7 = 0;
        v8 = *v18;
        do
        {
          v9 = 0;
          do
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * v9);
            v11 = [v3 objectAtIndexedSubscript:v7];
            if (v11 != v2)
            {
              [v4 setObject:v11 forKey:v10];
            }

            ++v9;
            ++v7;
          }

          while (v6 != v9);
          v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v6);
      }

      v12 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v4];
      [*(a1 + 40) addObject:v12];
    }

    ++v16;
  }

  dispatch_group_leave(*(a1 + 48));

  v13 = *MEMORY[0x277D85DE8];
}

void __39__SPCSSearchQuery_slowFetchAttributes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v8 attributeSet];
  v7 = [v6 attributeDictionary];
  [v5 addAttributesFromDictionaryWithOutOverWriting:v7];

  [v8 setAttributeSet:v5];
}

- (void)buildFullSearchResults:(id)a3 withResultSets:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v91 = a3;
  v73 = a4;
  v77 = objc_opt_new();
  v74 = objc_opt_new();
  v95 = 0;
  v98 = *MEMORY[0x277D65C98];
  v88 = *MEMORY[0x277D65CA0];
  v82 = *MEMORY[0x277D65CB8];
  v86 = *MEMORY[0x277D65C90];
  v75 = *MEMORY[0x277D65CC0];
  v70 = *MEMORY[0x277D65CA8];
  v67 = *MEMORY[0x277D65CB0];
  v92 = *MEMORY[0x277D65CD0];
  v84 = *MEMORY[0x277D65C10];
  v81 = *MEMORY[0x277D65C50];
  v76 = *MEMORY[0x277D65A00];
  v71 = *MEMORY[0x277D65AA8];
  v72 = *MEMORY[0x277D65BE0];
  v68 = *MEMORY[0x277D65B38];
  v85 = *MEMORY[0x277D65C00];
  v79 = *MEMORY[0x277D65AA0];
  v80 = *MEMORY[0x277D65AB0];
  v78 = *MEMORY[0x277D65A98];
  v87 = *MEMORY[0x277D65C18];
  v83 = *MEMORY[0x277D65AE0];
  while (v95 < [v91 count])
  {
    v90 = [v91 objectAtIndexedSubscript:?];
    v94 = [v90 bundleIdentifier];
    if (([v94 isEqualToString:v98] & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v88) & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v82) & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v86) & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v75) & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v70) & 1) == 0 && (objc_msgSend(v94, "isEqualToString:", v67) & 1) == 0)
    {
      v66 = [v73 objectAtIndexedSubscript:v95];
      if (SSSectionIsSyndicatedPhotos())
      {
        v6 = [MEMORY[0x277D65958] sharedInstance];
        v7 = [v90 resultSet];
        v8 = [(SPKQuery *)self userQueryString];
        [(SPCSSearchQuery *)self currentTime];
        [v6 sortAndFilterRankedPhotosItemsFilterFromSet:v7 maxCount:20 userQuery:v8 currentTime:?];
      }

      v69 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v66, "count")}];
      v9 = objc_opt_new();
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obj = v66;
      v89 = v9;
      v10 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
      if (v10)
      {
        v96 = *v100;
        do
        {
          v97 = v10;
          for (i = 0; i != v97; ++i)
          {
            if (*v100 != v96)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v99 + 1) + 8 * i);
            currentTime = self->_currentTime;
            v14 = [(SPKQuery *)self userQueryString];
            v15 = [(SPKQuery *)self queryContext];
            v16 = [v12 resultWithTime:v14 searchString:0 isCorrectedQuery:v15 withQueryContext:currentTime];

            v17 = [v12 rankingItem];
            v18 = [v17 L2FeatureVector];
            if (v18)
            {
              v19 = v12 == 0;
            }

            else
            {
              v19 = 1;
            }

            v20 = !v19;

            if (v20)
            {
              v104[0] = @"score";
              v21 = MEMORY[0x277CCABB0];
              [v17 score];
              v22 = [v21 numberWithFloat:?];
              v105[0] = v22;
              v104[1] = @"raw score";
              v23 = MEMORY[0x277CCABB0];
              [v17 rawScore];
              v24 = [v23 numberWithFloat:?];
              v105[1] = v24;
              v104[2] = @"original score";
              v25 = MEMORY[0x277CCABB0];
              v26 = [v17 L2FeatureVector];
              [v26 originalL2Score];
              v27 = [v25 numberWithFloat:?];
              v105[2] = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
              [v16 setLocalFeatures:v28];
            }

            v29 = [v12 rankingItem];
            [v29 score];
            [v16 setL2score:?];

            v30 = [v16 sectionBundleIdentifier];
            v31 = [v16 resultBundleId];
            v32 = [v30 isEqual:v98];
            p_feedbackListener = &self->super._feedbackListener;
            if (v32)
            {
LABEL_26:
              [p_feedbackListener[31] addResults:v16];
              goto LABEL_49;
            }

            if ([v30 isEqual:v92])
            {
              goto LABEL_28;
            }

            if ([v30 isEqual:v88])
            {
              if ([v31 isEqual:v85])
              {
                v39 = [v17 sectionBundleIdentifier];
                v40 = [v39 isEqualToString:v87];

                p_queryGroupId = &self->super._queryGroupId;
                if ((v40 & 1) == 0)
                {
                  goto LABEL_57;
                }

LABEL_56:
                [p_queryGroupId[31] addResults:v16];
                goto LABEL_57;
              }

              if ([v31 isEqual:v83])
              {
                v47 = [v17 sectionBundleIdentifier];
                v48 = [v47 isEqualToString:v87];

                p_queryGroupId = &self->super._trimmedUserQueryString;
                if (v48)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v103[0] = v80;
                v103[1] = v79;
                v103[2] = v78;
                v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:3];
                v50 = [v49 containsObject:v31];

                p_queryGroupId = &self->super._ranker;
                if (!v50)
                {
                  goto LABEL_56;
                }

                v51 = [v17 sectionBundleIdentifier];
                v52 = [v51 isEqualToString:v87];

                p_queryGroupId = &self->super._delegate;
                if (v52)
                {
                  goto LABEL_56;
                }
              }

LABEL_57:
              v53 = [v17 sectionBundleIdentifier];
              v54 = [v53 isEqualToString:v87];

              p_feedbackListener = &self->super._queryId;
              if (v54)
              {
                goto LABEL_26;
              }

              goto LABEL_49;
            }

            v42 = [v30 isEqualToString:v86];
            p_feedbackListener = &self->super._userQueryString;
            if (v42)
            {
              goto LABEL_26;
            }

            if (([v30 isEqual:v84] & 1) != 0 || objc_msgSend(v30, "isEqual:", v81))
            {
              v43 = [v16 personIdentifier];
              if (v43)
              {
                v44 = [v16 personIdentifier];
                v45 = [v44 hasPrefix:@"com.apple.spotlight"];

                if (v45)
                {
                  v46 = [(SPKQuery *)self queryContext];
                  if ([v46 isSearchToolClient])
                  {

                    goto LABEL_45;
                  }

                  v57 = [v16 personType];
                  if ([v57 isEqual:@"ml"])
                  {

                    goto LABEL_28;
                  }

                  v60 = [v16 hasTextContentMatch];

                  if (v60)
                  {
LABEL_45:
                    v35 = [v16 personIdentifier];
                    [v77 setObject:v16 forKey:v35];
                  }

                  else
                  {
LABEL_28:
                    v34 = v30;
                    if (v34)
                    {
                      v35 = v34;
                    }

                    else
                    {
                      v35 = @"empty_bundle";
                    }

                    v36 = [v89 objectForKeyedSubscript:v35];
                    v37 = v36;
                    if (v36)
                    {
                      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v36, "unsignedIntValue") + 1}];
                      [v89 setObject:v38 forKeyedSubscript:v35];
LABEL_33:
                    }

                    else
                    {
                      [v89 setObject:&unk_287C3B7A0 forKeyedSubscript:v35];
                    }

LABEL_47:
                  }
                }
              }
            }

            else
            {
              if (([v30 isEqual:v76] & 1) == 0 && objc_msgSend(v31, "isEqual:", v72))
              {
                v55 = [(SPKQuery *)self queryContext];
                if ([v55 isSearchToolClient])
                {
                }

                else
                {
                  v61 = [v16 hasTextContentMatch];

                  if ((v61 & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                v62 = [v16 contactIdentifier];
                v63 = v62 == 0;

                if (!v63)
                {
                  v58 = [v16 contactIdentifier];
                  [v74 setObject:v16 forKey:v58];
LABEL_81:
                }

                goto LABEL_82;
              }

              v35 = [v16 userActivityRequiredString];
              if (![(__CFString *)v35 length])
              {

LABEL_71:
                if (([v30 hasPrefix:@"com.apple"] & 1) == 0 && objc_msgSend(MEMORY[0x277D65938], "isLowEngagementBundle:", v30))
                {
                  v58 = [(SPKQuery *)self queryContext];
                  if ([v58 isSearchToolClient])
                  {
                    goto LABEL_81;
                  }

                  v59 = [v16 hasTextContentMatch];

                  if ((v59 & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

LABEL_82:
                [v69 addObject:v16];
                goto LABEL_49;
              }

              v37 = [v90 bundleIdentifier];
              if ([v37 isEqual:v71])
              {
                goto LABEL_47;
              }

              v38 = [v90 bundleIdentifier];
              if ([v38 isEqual:v68])
              {
                goto LABEL_33;
              }

              v56 = [v90 bundleIdentifier];
              IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

              if ((IsSyndicatedPhotos & 1) == 0)
              {
                goto LABEL_71;
              }
            }

LABEL_49:
          }

          v10 = [obj countByEnumeratingWithState:&v99 objects:v106 count:16];
        }

        while (v10);
      }

      [v90 setResults:v69];
      [v89 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_257];
    }

    ++v95;
  }

  [(SPCSSearchQuery *)self buildPeopleResults:v77 withContacts:v74];

  v64 = *MEMORY[0x277D85DE8];
}

void __57__SPCSSearchQuery_buildFullSearchResults_withResultSets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = SPLogForSPLogCategoryRanking();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 1024;
    v11 = [v5 unsignedIntValue];
    _os_log_impl(&dword_26B71B000, v6, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Filtering section=%@: removed items count=%u", &v8, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateCoreSuggestionsSection:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = a3;
  v3 = [v26 results];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v32;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * v7);
        if (v8)
        {
          v10 = [*(*(&v31 + 1) + 8 * v7) relatedBundleID];
          v11 = [v8 isEqualToString:v10];

          if ((v11 & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        v5 = [v9 relatedBundleID];

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v25 = [MEMORY[0x277D4BE80] displayNameForBundleIdentifer:v5];
      if (v25)
      {
          [SPCSSearchQuery updateCoreSuggestionsSection:]::nameFormat = {;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:-[SPCSSearchQuery updateCoreSuggestionsSection:]::nameFormat, v25];
        v13 = v12 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_15:

    v5 = 0;
  }

    [SPCSSearchQuery updateCoreSuggestionsSection:]::name = {;
  }

  v13 = [SPCSSearchQuery updateCoreSuggestionsSection:]::name;
  v25 = 0;
  v12 = 1;
LABEL_18:
  [v26 setTitle:v13];
  if (v12)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [v26 results];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = [v18 relatedBundleID];
          v20 = v19 == 0;

          if (!v20)
          {
            v21 = MEMORY[0x277D4BE80];
            v22 = [v18 relatedBundleID];
            v23 = [v21 displayNameForBundleIdentifer:v22];
            [v18 setFootnote:v23];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v15);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)buildPeopleResults:(id)a3 withContacts:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v60 = a4;
  v57 = v6;
  v54 = self;
  if ([v6 count])
  {
    v7 = [v6 keysSortedByValueUsingComparator:&__block_literal_global_273];
    v51 = [v7 mutableCopy];

    v8 = [v60 keysSortedByValueUsingComparator:&__block_literal_global_275];
    v9 = [v8 mutableCopy];

    v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v60, "count", v9)}];
    v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v57, "count")}];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v9;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v11)
    {
      v12 = *v70;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v70 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v60 objectForKeyedSubscript:*(*(&v69 + 1) + 8 * i)];
          [v58 addObject:v14];
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          v15 = [v14 title];
          v16 = [v15 text];
          v17 = v16 == 0;

          if (!v17)
          {
            v18 = [v14 title];
            v19 = [v18 text];
            v20 = [v19 lowercaseString];
            [v10 addObject:v20];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v11);
    }

    [(SFMutableResultSection *)v54->_bundleIdToResultsMap.contactResultsSection setResults:v58];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = v51;
    v21 = [v56 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v21)
    {
      v22 = *v66;
      v55 = *MEMORY[0x277D65C50];
      v53 = *v66;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v66 != v22)
          {
            objc_enumerationMutation(v56);
          }

          v24 = [v57 objectForKeyedSubscript:*(*(&v65 + 1) + 8 * j)];
          v25 = [v24 title];
          v26 = [v25 text];
          v27 = [v26 lowercaseString];

          v28 = [v24 sectionBundleIdentifier];
          v29 = v28;
          if (v28)
          {
            v30 = [v28 isEqual:v55];
          }

          else
          {
            v30 = 0;
          }

          v31 = [v24 contactIdentifier];
          v32 = v31 == 0;

          if (v32)
          {
            if ([v10 containsObject:v27])
            {
              goto LABEL_35;
            }
          }

          else if ([obj count])
          {
            v33 = [v24 contactIdentifier];
            v34 = [v60 objectForKeyedSubscript:v33];

            if (v34)
            {
              v35 = [v24 personIdentifier];
              [v34 setPersonIdentifier:v35];

              v36 = [v24 personQueryIdentifier];
              [v34 setPersonQueryIdentifier:v36];

              if (v30)
              {
                v37 = 1;
              }

              else
              {
                v37 = [v34 hasTextContentMatch];
              }

              [v34 setHasTextContentMatch:v37];
              [v24 rankingScore];
              [v34 setRankingScore:?];
              [v34 setType:37];
              if ([v34 hasTextContentMatch])
              {
                v42 = MEMORY[0x277D659B8];
                v43 = [(SPKQuery *)v54 queryContext];
                v44 = [v42 buildResultWithResult:v34 queryContext:v43];

                os_unfair_lock_lock(&v54->_suggestionsLock);
                [(NSMutableArray *)v54->_suggestionResults addObject:v44];
                os_unfair_lock_unlock(&v54->_suggestionsLock);

                v22 = v53;
              }
            }

            goto LABEL_35;
          }

          [v24 rankingScore];
          if (v38 > 0.0)
          {
            if (v30)
            {
              v39 = MEMORY[0x277D659B8];
              v40 = [(SPKQuery *)v54 queryContext];
              v41 = [v39 buildResultWithResult:v24 queryContext:v40];

              os_unfair_lock_lock(&v54->_suggestionsLock);
              [(NSMutableArray *)v54->_suggestionResults addObject:v41];
              os_unfair_lock_unlock(&v54->_suggestionsLock);

              v22 = v53;
            }

            [v52 addObject:v24];
          }

LABEL_35:
        }

        v21 = [v56 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v21);
    }

    [(SFMutableResultSection *)v54->_bundleIdToResultsMap.peopleResultsSection setResults:v52];
    goto LABEL_47;
  }

  if ([v60 count])
  {
    v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v60, "count")}];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v45 = v60;
    v46 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v46)
    {
      v47 = *v62;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = [v45 objectForKeyedSubscript:*(*(&v61 + 1) + 8 * k)];
          [v56 addObject:v49];
        }

        v46 = [v45 countByEnumeratingWithState:&v61 objects:v73 count:16];
      }

      while (v46);
    }

    [(SFMutableResultSection *)v54->_bundleIdToResultsMap.contactResultsSection setResults:v56];
LABEL_47:
  }

  v50 = *MEMORY[0x277D85DE8];
}

uint64_t __51__SPCSSearchQuery_buildPeopleResults_withContacts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 rankingScore];
  v9 = v8;
  [v7 rankingScore];
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

uint64_t __51__SPCSSearchQuery_buildPeopleResults_withContacts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 rankingScore];
  v9 = v8;
  [v7 rankingScore];
  if (v9 <= v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (void)processUserActivitiesForSection:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v91 = a3;
  v92 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [v91 results];
  v4 = [v3 copy];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
  if (v5)
  {
    v6 = *v112;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v112 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v111 + 1) + 8 * i);
        v9 = [v8 externalIdentifier];
        if (!v9)
        {
          v10 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v120 = v8;
            _os_log_error_impl(&dword_26B71B000, v10, OS_LOG_TYPE_ERROR, "result missing identifier %@", buf, 0xCu);
          }
        }

        v11 = [v8 userActivityRequiredString];
        if (v9)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [v92 setObject:v8 forKey:v9];
          v14 = [v8 compatibilityTitle];
          if (v14)
          {
            [v90 addObject:v14];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v111 objects:v121 count:16];
    }

    while (v5);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v15 = obj;
  v16 = [v15 countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v16)
  {
    v17 = *v108;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v108 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v107 + 1) + 8 * j);
        v20 = [v19 relatedUniqueIdentifier];
        if (v20)
        {
          v21 = [v19 userActivityRequiredString];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = [v92 objectForKey:v20];
            v24 = v23 == 0;

            if (v24)
            {
              [v92 setObject:v19 forKey:v20];
              v25 = [v19 compatibilityTitle];
              if (v25)
              {
                [v90 addObject:v25];
              }
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v107 objects:v118 count:16];
    }

    while (v16);
  }

  v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v88 = v15;
  v26 = [v88 countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (v26)
  {
    v93 = *v104;
    do
    {
      v94 = v26;
      for (k = 0; k != v94; ++k)
      {
        if (*v104 != v93)
        {
          objc_enumerationMutation(v88);
        }

        v28 = *(*(&v103 + 1) + 8 * k);
        v29 = [v28 compatibilityTitle];
        if (!v29 && ([v28 hasDetail] & 1) == 0)
        {
          v30 = [v28 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
          if (IsSyndicatedPhotos && ([v28 contentType], v87 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v87, "isEqualToString:", @"public.item")))
          {
          }

          else
          {
            v32 = [v28 identifier];
            v33 = [v32 hasPrefix:@"synthetic-bookmark-"];

            if (IsSyndicatedPhotos)
            {
            }

            if ((v33 & 1) == 0)
            {
              [v91 removeResults:v28];
              goto LABEL_68;
            }
          }
        }

        v34 = [v28 userActivityRequiredString];
        v35 = v34 == 0;

        if (!v35)
        {
          v36 = [v28 relatedUniqueIdentifier];
          if (v36)
          {
            v37 = [v28 fileProviderIdentifier];
            v38 = v37 == 0;

            if (v38)
            {
              v39 = [v92 objectForKey:v36];
              v40 = v39;
              if (v39)
              {
                v41 = [v39 score];
                v43 = v42;
                v44 = [v28 score];
                [v40 setScore:{__PAIR128__(v45, v44) + __PAIR128__(v43, v41)}];
                [v91 removeResults:v28];
                if (([v40 hasAssociatedUserActivity] & 1) == 0)
                {
                  [v40 setPubliclyIndexable:{objc_msgSend(v28, "publiclyIndexable")}];
                  [v40 setHasAssociatedUserActivity:1];
                  v46 = [v28 launchDates];
                  [v40 setLaunchDates:v46];
                  goto LABEL_65;
                }
              }

              else
              {
                v47 = [v86 objectForKey:v36];
                v46 = v47;
                if (v47)
                {
                  v48 = [v47 score];
                  v50 = v49;
                  v51 = [v28 score];
                  v52 = v51;
                  v54 = v53;
                  if (__PAIR128__(v53, v51) >= __PAIR128__(v50, v48))
                  {
                    v57 = [v28 buddyScore];
                    [v28 setBuddyScore:{__PAIR128__(v58, v57) + __PAIR128__(v50, v48)}];
                    [v91 removeResults:v46];
                    [v86 setObject:v28 forKey:v36];
                  }

                  else
                  {
                    v55 = [v46 buddyScore];
                    [v46 setBuddyScore:{__PAIR128__(v56, v55) + __PAIR128__(v54, v52)}];
                    [v91 removeResults:v28];
                  }
                }

                else
                {
                  [v86 setObject:v28 forKey:v36];
                }

LABEL_65:
              }
            }
          }

          else if (v29)
          {
            if ([v90 containsObject:v29] && (objc_msgSend(v28, "hasDetail") & 1) == 0)
            {
              [v91 removeResults:v28];
            }

            else
            {
              [v90 addObject:v29];
            }
          }
        }

LABEL_68:
      }

      v26 = [v88 countByEnumeratingWithState:&v103 objects:v117 count:16];
    }

    while (v26);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v59 = [v91 resultSet];
  v60 = [v59 countByEnumeratingWithState:&v99 objects:v116 count:16];
  if (v60)
  {
    v61 = *v100;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v100 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v63 = *(*(&v99 + 1) + 8 * m);
        v64 = [v63 score];
        v66 = v65;
        v67 = [v63 buddyScore];
        [v63 setScore:{__PAIR128__(v68, v67) + __PAIR128__(v66, v64)}];
      }

      v60 = [v59 countByEnumeratingWithState:&v99 objects:v116 count:16];
    }

    while (v60);
  }

  v69 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v70 = v88;
  v71 = [v70 countByEnumeratingWithState:&v95 objects:v115 count:16];
  if (v71)
  {
    v72 = *v96;
    do
    {
      for (n = 0; n != v71; ++n)
      {
        if (*v96 != v72)
        {
          objc_enumerationMutation(v70);
        }

        v74 = *(*(&v95 + 1) + 8 * n);
        v75 = [v74 itemIdentifier];
        v76 = v75 == 0;

        if (!v76)
        {
          v77 = [v74 itemIdentifier];
          v78 = [v69 objectForKey:v77];

          if (v78)
          {
            v79 = [v78 score];
            v81 = v80;
            v82 = [v74 score];
            if (__PAIR128__(v83, v82) < __PAIR128__(v81, v79))
            {
              [v91 removeResults:v74];
LABEL_88:

              continue;
            }

            [v91 removeResults:v78];
          }

          v84 = [v74 itemIdentifier];
          [v69 setObject:v74 forKey:v84];

          goto LABEL_88;
        }
      }

      v71 = [v70 countByEnumeratingWithState:&v95 objects:v115 count:16];
    }

    while (v71);
  }

  v85 = *MEMORY[0x277D85DE8];
}

- (void)removeDuplicatesInSection:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v4 = [(SPKQuery *)self queryContext];
  v5 = [v4 isSearchToolClient];

  if (v5)
  {
    goto LABEL_52;
  }

  v6 = [v45 results];
  v42 = [v6 copy];

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v42;
  v8 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v8)
  {
    v9 = *v55;
    v10 = MEMORY[0x277D4BF48];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        v13 = [v12 sectionBundleIdentifier];
        v14 = [v12 externalIdentifier];
        if (v14)
        {
          if ([v7 containsObject:v14])
          {
            [v45 removeResults:v12];
            v15 = SPLogForSPLogCategoryQuery();
            v16 = v15;
            if (*v10)
            {
              v17 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v17 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v15, v17))
            {
              *buf = 138412546;
              v61 = v13;
              v62 = 2112;
              v63 = v14;
              _os_log_impl(&dword_26B71B000, v16, v17, "Remove duplicate for %@ / %@", buf, 0x16u);
            }
          }

          else
          {
            [v7 addObject:v14];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v8);
  }

  v18 = [v45 bundleIdentifier];
  v19 = [v18 isEqualToString:*MEMORY[0x277D65AD0]];

  if (!v19)
  {
    goto LABEL_35;
  }

  [v7 removeAllObjects];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = obj;
  v20 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = 0;
  v22 = *v51;
  do
  {
    for (j = 0; j != v20; ++j)
    {
      if (*v51 != v22)
      {
        objc_enumerationMutation(v43);
      }

      v24 = *(*(&v50 + 1) + 8 * j);
      v25 = [v24 domainIdentifier];

      v26 = [v25 isEqualToString:@"attachmentDomain"];
      if ((v26 | [v25 isEqualToString:@"chatDomain"]))
      {
        v21 = [v24 accountIdentifier];

        if (!v21)
        {
          continue;
        }
      }

      else
      {
        v21 = v25;
        if (!v25)
        {
          continue;
        }
      }

      if ([v7 containsObject:v21])
      {
        [v45 removeResults:v24];
      }

      else
      {
        [v7 addObject:v21];
      }
    }

    v20 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
  }

  while (v20);

LABEL_34:
LABEL_35:
  v27 = [v45 bundleIdentifier];
  v28 = [v27 isEqualToString:*MEMORY[0x277D65B60]];

  if (!v28)
  {
    goto LABEL_51;
  }

  [v7 removeAllObjects];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = obj;
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (!v30)
  {
    goto LABEL_50;
  }

  v31 = *v47;
  while (2)
  {
    v32 = 0;
    while (2)
    {
      if (*v47 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v46 + 1) + 8 * v32);
      v34 = [v33 stringForDedupe];
      if (v34)
      {
        v35 = [v33 domainIdentifier];
        if ([v35 isEqualToString:@"com.apple.siri.interactions"])
        {

LABEL_45:
          v38 = [v33 stringForDedupe];
          v39 = [v7 containsObject:v38];

          if (v39)
          {
            [v45 removeResults:v33];
          }

          else
          {
            v40 = [v33 stringForDedupe];
            [v7 addObject:v40];
          }
        }

        else
        {
          v36 = [v33 domainIdentifier];
          v37 = [v36 isEqualToString:@"com.apple.siri.upcomingmedia"];

          if (v37)
          {
            goto LABEL_45;
          }
        }
      }

      if (v30 != ++v32)
      {
        continue;
      }

      break;
    }

    v30 = [v29 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_50:

LABEL_51:
LABEL_52:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)processSection:(id)a3
{
  v160[19] = *MEMORY[0x277D85DE8];
  v146 = a3;
  v128 = [(SPKQuery *)self userQueryString];
  v6 = self;
  v8 = *self->_topHitThreshold;
  v7 = *&self->_topHitThreshold[8];
  v135 = v6;
  isPeopleSearch = v6->_isPeopleSearch;
  v10 = SPMaxVisibleResultsCountPerSection();
  v11 = [v146 bundleIdentifier];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  v13 = 50;
  if (IsSyndicatedPhotos)
  {
    if (!isPeopleSearch)
    {
      v13 = 20;
      if (v135->_isPhotosSearch)
      {
        v13 = 50;
      }
    }
  }

  else
  {
    v13 = v10;
  }

  if (isPeopleSearch)
  {
    v13 = 50;
  }

  if (v13 <= 0)
  {
    v14 = 3;
  }

  else
  {
    v14 = v13;
  }

  [v146 setMaxInitiallyVisibleResults:v14];
  v15 = MEMORY[0x277D4BE80];
  v16 = [v146 bundleIdentifier];
  v17 = [v15 displayNameForBundleIdentifer:v16];

  if (v17)
  {
    v127 = v17;
    [v146 setTitle:v17];
  }

  else
  {
    v18 = [(SPKQuery *)v135 queryContext];
    v19 = [v18 isSearchToolClient];

    if (v19)
    {
      v127 = [v146 bundleIdentifier];
      [v146 setTitle:v127];
    }

    else
    {
      v127 = 0;
    }
  }

  v20 = [v146 bundleIdentifier];
  v21 = [v20 isEqualToString:@"com.apple.CoreSuggestions"];

  if (v21)
  {
    [(SPCSSearchQuery *)v135 updateCoreSuggestionsSection:v146];
  }

  v22 = [v146 title];

  if (!v22)
  {
    [v146 setTitle:@"?"];
    [v146 setResults:MEMORY[0x277CBEBF8]];
  }

  v23 = [v146 bundleIdentifier];
  v24 = [v23 isEqual:@"com.apple.mobilesafari"];

  v126 = v24;
  if (v24)
  {
    EvaluatorWithBlock = _MDCreateSimpleQueryEvaluatorWithBlock();
    if (EvaluatorWithBlock)
    {
      _MDSimpleQuerySetWidcardAttributes();
    }

    v134 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v132 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v131 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v138 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v136 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v26 = [v146 resultSet];
    v130 = EvaluatorWithBlock;
    obj = v26;
    v27 = [v26 countByEnumeratingWithState:&v151 objects:v159 count:16];
    if (v27)
    {
      v144 = *v152;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v152 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v151 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v29 = [v28 contentURL];
            if (v29)
            {
              v30 = [v28 title];
              v31 = [v30 text];
              v32 = v31 == 0;

              if (!v32)
              {
                v33 = MEMORY[0x277CBEBC0];
                v34 = [v28 contentURL];
                v35 = [v33 URLWithString:v34];

                if (!v35)
                {
                  goto LABEL_65;
                }

                v36 = [MEMORY[0x277CCACE0] componentsWithURL:v35 resolvingAgainstBaseURL:1];
                v37 = v36;
                if (!v36)
                {
                  goto LABEL_64;
                }

                [v36 setQuery:0];
                [v37 setFragment:0];
                v140 = [v37 string];
                v142 = [v138 objectForKey:?];
                v38 = [v28 title];
                v39 = [v38 text];
                v141 = [v142 objectForKey:v39];

                if (v141)
                {
                  v40 = [v141 contentURL];
                  v41 = [v40 length];
                  v42 = [v28 contentURL];
                  v3 = v41 > [v42 length];

                  if (v3)
                  {
                    [v136 addObject:v141];
                    v139 = [v28 title];
                    v3 = [v139 text];
                    [v142 setObject:v28 forKey:v3];
                    goto LABEL_62;
                  }

                  [v136 addObject:v28];
LABEL_63:

LABEL_64:
LABEL_65:

                  continue;
                }

                if (!v142)
                {
                  v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v138 setObject:v142 forKey:v140];
                }

                v43 = [v28 title];
                v44 = [v43 text];
                [v142 setObject:v28 forKey:v44];

                [v37 setPath:@"/"];
                v139 = [v37 URL];
                v3 = [v139 host];
                v137 = v3;
                v45 = [v139 scheme];
                if (v45)
                {
                  v46 = v3 == 0;
                }

                else
                {
                  v46 = 1;
                }

                v47 = v46;

                if (v47)
                {
LABEL_45:
                  v3 = v137;
                }

                else
                {
                  v48 = [v139 scheme];
                  v133 = [v48 caseInsensitiveCompare:@"https"];

                  if ([v139 isEqual:v35])
                  {
                    [v134 addObject:v3];
                    [v132 removeObjectForKey:v3];
                    [v131 removeObject:v3];
                  }

                  else if (([v134 containsObject:v3] & 1) == 0)
                  {
                    v49 = [v132 objectForKeyedSubscript:v3];
                    if (v49)
                    {
                      v50 = [v131 containsObject:v3];
                      if (v133)
                      {
                        v51 = 1;
                      }

                      else
                      {
                        v51 = v50;
                      }

                      if ((v130 == 0) | v51 & 1)
                      {
                        goto LABEL_62;
                      }
                    }

                    else if (!v130)
                    {
                      goto LABEL_62;
                    }

                    if (_MDSimpleQueryObjectMatches())
                    {
                      v52 = [v28 title];
                      v53 = [v52 text];
                      v54 = _MDStringPrefixOfString() == -1;

                      if (v54)
                      {
                        v129 = objc_opt_new();
                        v125 = objc_opt_new();
                        v123 = objc_opt_new();
                        [v123 setBundleIdentifier:@"com.apple.mobilesafari"];
                        [v125 setThumbnail:v123];
                        v55 = [MEMORY[0x277D4C598] textWithString:v137];
                        [v125 setTitle:v55];

                        v56 = [MEMORY[0x277D4C550] punchoutWithURL:v139];
                        v158 = v56;
                        v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];
                        [v125 setPunchoutOptions:v57];

                        v58 = [MEMORY[0x277D4C598] textWithString:v137];
                        v157 = v58;
                        v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
                        [v125 setDescriptions:v59];

                        v60 = objc_opt_new();
                        [v129 setInlineCard:v60];

                        v156 = v125;
                        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
                        v62 = [v129 inlineCard];
                        [v62 setCardSections:v61];

                        v124 = [v139 absoluteString];
                        [v129 setContentURL:?];
                        [v129 setTopHit:{objc_msgSend(v28, "topHit")}];
                        [v129 setForceNoTopHit:{objc_msgSend(v28, "forceNoTopHit")}];
                        v63 = [v28 score];
                        [v129 setScore:{v63, v64}];
                        v65 = [v28 protectionClass];
                        [v129 setProtectionClass:v65];

                        [v28 rankingScore];
                        [v129 setRankingScore:?];
                        v66 = [v28 applicationBundleIdentifier];
                        [v129 setApplicationBundleIdentifier:v66];

                        v67 = [v28 sectionBundleIdentifier];
                        [v129 setSectionBundleIdentifier:v67];

                        v68 = [v28 resultBundleId];
                        [v129 setResultBundleId:v68];

                        [v129 setType:{objc_msgSend(v28, "type")}];
                        [v129 setQueryId:{objc_msgSend(v28, "queryId")}];
                        [v129 setCompletedQuery:v137];
                        [v129 setCompletion:v137];
                        v69 = [v28 identifier];
                        v70 = [@"synthetic-bookmark-" stringByAppendingString:v69];
                        [v129 setIdentifier:v70];

                        v71 = [v28 rankingItem];
                        [v71 attributes];
                        v72 = SSCompactRankingAttrsCopy();

                        SSCompactRankingAttrsUpdateValue();
                        SSCompactRankingAttrsUpdateValue();
                        SSCompactRankingAttrsUpdateValue();
                        v73 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:v72];
                        [v129 setRankingItem:v73];

                        v74 = [v28 rankingItem];
                        v75 = [v74 L2FeatureVector];
                        [v75 originalL2Score];
                        v77 = v76;
                        v78 = [v129 rankingItem];
                        v79 = [v78 L2FeatureVector];
                        LODWORD(v80) = v77;
                        [v79 setOriginalL2Score:v80];

                        [v132 setObject:v129 forKey:v137];
                        if (!v133)
                        {
                          [v131 addObject:v137];
                        }
                      }

                      goto LABEL_45;
                    }
                  }
                }

LABEL_62:

                goto LABEL_63;
              }
            }
          }
        }

        v26 = obj;
        v27 = [obj countByEnumeratingWithState:&v151 objects:v159 count:16];
      }

      while (v27);
    }

    if (v130)
    {
      _MDSimpleQueryDeallocate();
    }

    if ([v132 count])
    {
      v81 = [v132 allValues];
      v82 = [v146 resultSet];
      [v82 addObjectsFromArray:v81];
    }

    v83 = [v146 resultSet];
    [v83 minusSet:v136];
  }

  v84 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v84)
  {
    v85 = [v146 bundleIdentifier];
    v3 = 0x281229000uLL;
    {
      v112 = MEMORY[0x277CBEB98];
      v113 = *MEMORY[0x277D65A00];
      v160[0] = *MEMORY[0x277D65B80];
      v160[1] = v113;
      v114 = *MEMORY[0x277D65B98];
      v160[2] = *MEMORY[0x277D65A20];
      v160[3] = v114;
      v115 = *MEMORY[0x277D65AA0];
      v160[4] = *MEMORY[0x277D65AE0];
      v160[5] = v115;
      v116 = *MEMORY[0x277D65A80];
      v160[6] = *MEMORY[0x277D65AB0];
      v160[7] = v116;
      v117 = *MEMORY[0x277D65A18];
      v160[8] = *MEMORY[0x277D65AB8];
      v160[9] = v117;
      v118 = *MEMORY[0x277D65BA0];
      v160[10] = *MEMORY[0x277D65B78];
      v160[11] = v118;
      v119 = *MEMORY[0x277D65BB8];
      v160[12] = *MEMORY[0x277D65A60];
      v160[13] = v119;
      v120 = *MEMORY[0x277D65AD8];
      v160[14] = *MEMORY[0x277D65A08];
      v160[15] = v120;
      v121 = *MEMORY[0x277D65B40];
      v160[16] = *MEMORY[0x277D65B60];
      v160[17] = v121;
      v160[18] = *MEMORY[0x277D65B48];
      v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:19];
      [v112 setWithArray:v122];
    }
  }

  else
  {
    v86 = 0;
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v87 = [v146 resultSet];
  v88 = [v87 countByEnumeratingWithState:&v147 objects:v155 count:16];
  if (v88)
  {
    v89 = *v148;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v148 != v89)
        {
          objc_enumerationMutation(v87);
        }

        v3 = *(*(&v147 + 1) + 8 * j);
        v91 = [v3 score];
        if (v91 & v8 | v92 & v7)
        {
          v93 = v86;
        }

        else
        {
          v93 = 1;
        }

        if ((v93 & 1) == 0 && [v3 topHit] != 2)
        {
          [v3 setTopHit:SSSetTopHitWithReasonType()];
        }

        i = [v146 bundleIdentifier];
        [v3 setSectionBundleIdentifier:i];
      }

      v88 = [v87 countByEnumeratingWithState:&v147 objects:v155 count:16];
    }

    while (v88);
  }

  if (!(v84 & 1 | ((v126 & 1) == 0)))
  {
    v94 = MEMORY[0x277D65978];
    v95 = [(SPKQuery *)v135 userQueryString];
    [v94 determineTopHitsForSafariSection:v146 forQuery:v95];

    [MEMORY[0x277D65978] moveSafariTopHitsToTopOfSection:v146];
  }

  [MEMORY[0x277D65838] sortResultsInSection:v146 currentTime:v135->_currentTime];
  [(SPCSSearchQuery *)v135 processUserActivitiesForSection:v146];
  [(SPCSSearchQuery *)v135 removeDuplicatesInSection:v146];
  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    v96 = [(SPKQuery *)v135 queryContext];
    v97 = [v96 searchEntities];
    v98 = [v97 count];
    if (v98 && (-[SPKQuery queryContext](v135, "queryContext"), v86 = objc_claimAutoreleasedReturnValue(), [v86 searchEntities], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "lastObject"), i = objc_claimAutoreleasedReturnValue(), (objc_msgSend(i, "isScopedSearch") & 1) != 0))
    {
      v145 = 1;
    }

    else
    {
      v99 = [(SPKQuery *)v135 queryContext];
      v145 = [v99 isAdvancedSyntax];

      if (!v98)
      {
LABEL_98:

        v100 = MEMORY[0x277D65838];
        v101 = [(SPKQuery *)v135 userQueryString];
        v102 = [(SPKQuery *)v135 queryContext];
        v103 = [v102 queryIdent];
        v104 = [(SPKQuery *)v135 queryContext];
        v105 = [v104 searchEntities];
        v106 = [v105 count];
        v107 = [(SPKQuery *)v135 queryContext];
        [v107 currentTime];
        v109 = v108;
        v110 = [(SPKQuery *)v135 queryContext];
        [v100 thresholdResultsInSection:v146 userQuery:v101 queryID:v103 isEntitiesSearch:v106 != 0 currentTime:v145 isScopedSearch:objc_msgSend(v110 isSearchToolClient:{"isSearchToolClient"), v109}];

        goto LABEL_99;
      }
    }

    goto LABEL_98;
  }

LABEL_99:

  v111 = *MEMORY[0x277D85DE8];
}

CFTypeRef __34__SPCSSearchQuery_processSection___block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v4 = a3;
  if (([v4 isEqualToString:@"_ModifiedHostName_"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"kMDItemDisplayName"))
  {
    v5 = CFRetain(a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)rankAndSendResultsWithResponseKind:(int)a3 withResultSections:(id)a4 withResultSets:(id)a5 withiCloudDriveResultSet:(id)a6 withMailResultSet:(id)a7 withCalendarResultSet:(id)a8
{
  v166 = *MEMORY[0x277D85DE8];
  v124 = a4;
  v125 = a5;
  v119 = a6;
  v120 = a7;
  v13 = a8;
  v14 = atomic_load(&self->_queryCanceled);
  if (v14)
  {
    goto LABEL_111;
  }

  v117 = v13;
  v15 = SPLogForSPLogCategoryRanking();
  v16 = [(SPKQuery *)self queryContext];
  v17 = [v16 queryIdent];
  v134 = self;

  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SPCSSearchQuery.rankAndSend", &unk_26B77CA4F, buf, 2u);
  }

  v18 = [v124 count];
  if (v18 != [v125 count])
  {
    __assert_rtn("[SPCSSearchQuery rankAndSendResultsWithResponseKind:withResultSections:withResultSets:withiCloudDriveResultSet:withMailResultSet:withCalendarResultSet:]", "SPCSSearchQuery.mm", 2576, "resultSections.count == resultSets.count");
  }

  v149 = 0.0;
  v114 = [(SPCSSearchQuery *)self prepareRankingItems:v124 withResultSets:v125 totalFeatureComputationTime:&v149];
  v19 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if ([(NSArray *)self->_resultAttrs containsObject:*MEMORY[0x277CC2EF8]])
  {
    v20 = 1;
  }

  else
  {
    v21 = [(CSSearchQuery *)self->_csQuery queryContext];
    v20 = [v21 fetchl2Signals];
  }

  v22 = [(SPCSSearchQuery *)v134 itemRanker];
  v23 = *(v134 + 448);
  v24 = [(SPKQuery *)v134 delegate];
  v25 = [v24 clientBundleID];
  SPL2Threshold();
  v27 = v26;
  v28 = [(SPKQuery *)v134 queryContext];
  v29 = [v28 isCardEventSearch];
  v30 = [(SPKQuery *)v134 queryContext];
  v31 = [v30 inferredLlmQUIntentType];
  LOBYTE(v108) = (*MEMORY[0x277D657F8] & v31) != 0;
  [v22 updateScoresForPreparedItems:v114 isCJK:v23 & 1 clientBundleID:v25 thresholdValue:0 queryNodeMatchInfo:v20 collectL2Signals:v29 isCardSearch:v27 isDocumentSearch:v108];

  v112 = [(SPKQuery *)v134 delegate];
  v32 = [v112 queryIdent];
  v113 = [v112 clientBundleID];
  v115 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.feature.extraction" timeInterval:0 queryId:v32];
  v116 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.indomain.score.computation" timeInterval:0 queryId:v32];
  [v116 setNanosecondInterval:clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v19];
  [v115 setNanosecondInterval:(v149 * 1000000000.0)];
  objc_initWeak(&location, v134);
  feedbackQueue = v134->_feedbackQueue;
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __153__SPCSSearchQuery_rankAndSendResultsWithResponseKind_withResultSections_withResultSets_withiCloudDriveResultSet_withMailResultSet_withCalendarResultSet___block_invoke;
  v143[3] = &unk_279CFE548;
  objc_copyWeak(v147, &location);
  v110 = v115;
  v144 = v110;
  v147[1] = v32;
  v109 = v113;
  v145 = v109;
  v111 = v116;
  v146 = v111;
  md_dispatch_async_propagating(feedbackQueue, v143);
  v34 = v134;
  if (v120)
  {
    [(SPCSSearchQuery *)v134 updateMailAttachmentResults:v120];
  }

  if (v119)
  {
    v35 = v119;
    v36 = [MEMORY[0x277CBEB38] dictionary];
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v161 objects:buf count:16];
    if (v38)
    {
      v39 = *v162;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v162 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v161 + 1) + 8 * i);
          v42 = [v41 attributeSet];
          v43 = [v42 documentIdentifier];

          if (v43)
          {
            [v36 setObject:v41 forKeyedSubscript:v43];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v161 objects:buf count:16];
      }

      while (v38);
    }

    v128 = [v36 copy];
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    obj = v125;
    v44 = [obj countByEnumeratingWithState:&v139 objects:v160 count:16];
    if (v44)
    {
      v130 = *v140;
      do
      {
        v132 = v44;
        for (j = 0; j != v132; ++j)
        {
          if (*v140 != v130)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v139 + 1) + 8 * j);
          if (v46 != v37)
          {
            v47 = v46;
            v48 = v128;
            if (v128 && v47)
            {
              v163 = 0u;
              v164 = 0u;
              v161 = 0u;
              v162 = 0u;
              v49 = v47;
              v50 = [v49 countByEnumeratingWithState:&v161 objects:buf count:16];
              if (v50)
              {
                v51 = *v162;
                do
                {
                  for (k = 0; k != v50; ++k)
                  {
                    if (*v162 != v51)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v53 = [*(*(&v161 + 1) + 8 * k) attributeSet];
                    v54 = [v53 documentIdentifier];

                    v55 = [v48 objectForKeyedSubscript:v54];
                    if (v55)
                    {
                      [v49 removeObject:v55];
                    }
                  }

                  v50 = [v49 countByEnumeratingWithState:&v161 objects:buf count:16];
                }

                while (v50);
              }
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v139 objects:v160 count:16];
      }

      while (v44);
    }

    v34 = v134;
  }

  if (v117)
  {
    v133 = v117;
    v56 = [v133 count];
    if (v56 - 1 >= 0)
    {
      v57 = 0;
      v58 = 0;
      obja = 0;
      v129 = 0;
      v122 = 0;
      v123 = 0;
      v131 = *MEMORY[0x277CC2C58];
      v121 = *MEMORY[0x277CC2768];
      do
      {
        v59 = [v133 objectAtIndexedSubscript:--v56];
        *buf = -1;
        *&v161 = -1;
        *&v155 = -1;
        v150 = -1;
        *&v151 = -1;
        v60 = [v59 attributeSet];
        v61 = [v60 attributeDictionary];

        v62 = [v61 objectForKeyedSubscript:v131];
        v63 = [objc_opt_class() titleStringFromAttrs:v61];
        if (v62)
        {
          v64 = [MEMORY[0x277D658E8] calendar];
          [v64 getEra:0 year:buf month:&v161 day:&v155 fromDate:v62];

          v65 = [MEMORY[0x277D658E8] calendar];
          [v65 getEra:0 yearForWeekOfYear:0 weekOfYear:&v150 weekday:&v151 fromDate:v62];

          v66 = [v61 objectForKeyedSubscript:v121];
          v67 = v66;
          v68 = 0;
          if (v63 && v66)
          {
            if ([v58 isEqualToString:v66] && objc_msgSend(v57, "isEqualToString:", v63))
            {
              v68 = v151 == obja || v155 == v129;
              if (*buf == v123 && v161 == v122)
              {
                v71 = v155 == v129 + 1 || v155 == v129 - 1;
                v68 |= v71;
              }
            }

            else
            {
              v68 = 0;
            }
          }

          v72 = v63;

          obja = v151;
          v129 = v155;
          v122 = v161;
          v123 = *buf;
          if (v68)
          {
            [v133 removeObjectAtIndex:v56];
          }
        }

        else
        {
          v72 = v57;
          v67 = v58;
        }

        v57 = v72;
        v58 = v67;
      }

      while (v56 > 0);
    }

    v34 = v134;
  }

  [(SPCSSearchQuery *)v34 slowFetchAttributes:v125];
  [(SPCSSearchQuery *)v34 buildFullSearchResults:v124 withResultSets:v125];
  if ((a3 & 0xFFFFFFFE) != 2)
  {
    isPhotosSearch = v34->_isPhotosSearch;
    v75 = v124;
    v76 = v75;
    if (!isPhotosSearch)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      v77 = v75;
      v78 = [v77 countByEnumeratingWithState:&v155 objects:buf count:16];
      if (v78)
      {
        v79 = 0;
        v80 = *v156;
        do
        {
          for (m = 0; m != v78; ++m)
          {
            if (*v156 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v82 = *(*(&v155 + 1) + 8 * m);
            v84 = [v82 bundleIdentifier];
            if ([v83 containsObject:v84])
            {
              v85 = [v82 results];
              v86 = [v85 count] != 0;

              v79 += v86;
            }

            else
            {
            }
          }

          v78 = [v77 countByEnumeratingWithState:&v155 objects:buf count:16];
        }

        while (v78);

        if (v79 == 1)
        {
          goto LABEL_87;
        }
      }

      else
      {
      }

      goto LABEL_90;
    }

LABEL_87:
LABEL_90:
    v88 = *v87;
    v89 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v76, "count")}];
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v90 = v76;
    v91 = [v90 countByEnumeratingWithState:&v151 objects:&v161 count:16];
    if (v91)
    {
      v92 = *v152;
      do
      {
        for (n = 0; n != v91; ++n)
        {
          if (*v152 != v92)
          {
            objc_enumerationMutation(v90);
          }

          v94 = *(*(&v151 + 1) + 8 * n);
          v95 = [v94 bundleIdentifier];
          v96 = [v88 containsObject:v95];

          if ((v96 & 1) == 0)
          {
            [v89 addObject:v94];
          }
        }

        v91 = [v90 countByEnumeratingWithState:&v151 objects:&v161 count:16];
      }

      while (v91);
    }

    v73 = [v89 copy];
    goto LABEL_100;
  }

  v73 = v124;
LABEL_100:
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v97 = v73;
  v98 = [v97 countByEnumeratingWithState:&v135 objects:v159 count:16];
  if (v98)
  {
    v99 = *v136;
    do
    {
      for (ii = 0; ii != v98; ++ii)
      {
        if (*v136 != v99)
        {
          objc_enumerationMutation(v97);
        }

        [(SPCSSearchQuery *)v134 processSection:*(*(&v135 + 1) + 8 * ii)];
      }

      v98 = [v97 countByEnumeratingWithState:&v135 objects:v159 count:16];
    }

    while (v98);
  }

  v101 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:-[SPKQuery queryGroupId](v134 kind:"queryGroupId") sourceKind:a3 sections:{1, v97}];
  v102 = [(SPKQuery *)v134 userQueryString];
  [v101 setUserQueryString:v102];

  os_unfair_lock_lock(&v134->_suggestionsLock);
  v103 = [(NSMutableArray *)v134->_suggestionResults copy];
  [v101 setLocalSuggestionResults:v103];

  os_unfair_lock_unlock(&v134->_suggestionsLock);
  [(SPCSSearchQuery *)v134 _sendResponse:v101];
  v104 = SPLogForSPLogCategoryRanking();
  v105 = [(SPKQuery *)v134 queryContext];
  v106 = [v105 queryIdent];

  if (v106 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v104, OS_SIGNPOST_INTERVAL_END, v106, "SPCSSearchQuery.rankAndSend", &unk_26B77CA4F, buf, 2u);
  }

  objc_destroyWeak(v147);
  objc_destroyWeak(&location);

  v13 = v117;
LABEL_111:

  v107 = *MEMORY[0x277D85DE8];
}

void __153__SPCSSearchQuery_rankAndSendResultsWithResponseKind_withResultSections_withResultSets_withiCloudDriveResultSet_withMailResultSet_withCalendarResultSet___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:21 feedback:*(a1 + 32) queryId:*(a1 + 64) clientID:*(a1 + 40)];

    v4 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v4 sendFeedbackType:21 feedback:*(a1 + 48) queryId:*(a1 + 64) clientID:*(a1 + 40)];

    WeakRetained = v5;
  }
}

- (void)sendResponseWithKind:(int)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(&self->_queryCanceled);
  if (v3)
  {
    goto LABEL_64;
  }

  begin = self->_indexResultsRegistry.results.__begin_;
  end = self->_indexResultsRegistry.results.__end_;
  v6 = a3 & 0xFFFFFFFE;
  if (begin == end)
  {
LABEL_14:
    [(SPCSSearchQuery *)self constructResultsForResponse:v6 == 2];
    v11 = atomic_load(&self->_queryCanceled);
    if (v11)
    {
      goto LABEL_64;
    }

    if (v6 != 2)
    {
      v69 = v12 = *MEMORY[0x277D65C18];
      v14 = v13 = *MEMORY[0x277D65CB8];
      [v69 unionOrderedSet:v14];
      v70 = ;
      v16 = v15 = *MEMORY[0x277D65CC0];
      [v70 unionOrderedSet:v16];
      v71 = ;
      v18 = v17 = *MEMORY[0x277D65CA8];
      [v71 unionOrderedSet:v18];
      v19 = ;
      [v19 removeAllObjects];
      v20 = ;
      [v20 removeAllObjects];
      v21 = ;
      [v21 removeAllObjects];
    }

    p_bundleIdToResultsMap = &self->_bundleIdToResultsMap;
    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    v73 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->_bundleIdToResultsMap.map.__table_.__size_];
    next = self->_bundleIdToResultsMap.map.__table_.__first_node_.__next_;
    if (!next)
    {
      v24 = 0;
      v64 = 0;
      v66 = 0;
      v67 = 0;
LABEL_45:
      if ([v72 count])
      {
        if (v6 == 2)
        {
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v38 = v63;
          v39 = [v38 countByEnumeratingWithState:&v87 objects:v91 count:16];
          if (v39)
          {
            v40 = *v88;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v88 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v87 + 1) + 8 * i);
                  v43 = {;
                  [v43 removeAllObjects];
                }

                else
                {
                  v44 = v42;
                  std::string::basic_string[abi:nn200100]<0>(buf, -[NSString UTF8String](v42, "UTF8String"));
                  std::__hash_table<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::pair<SFMutableResultSection * {__strong},NSMutableOrderedSet<SPSearchTopHitResult *> * {__strong}>>>>::__erase_unique<std::string>(p_bundleIdToResultsMap, buf);
                  if (v86 < 0)
                  {
                    operator delete(*buf);
                  }
                }
              }

              v39 = [v38 countByEnumeratingWithState:&v87 objects:v91 count:16];
            }

            while (v39);
          }
        }

        if (v24)
        {
          v45 = [v72 copy];
          v46 = [v73 copy];
          objc_initWeak(buf, self);
          rankQueue = self->_rankQueue;
          v48 = qos_class_self();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __40__SPCSSearchQuery_sendResponseWithKind___block_invoke_2;
          block[3] = &unk_279CFE598;
          objc_copyWeak(&v80, buf);
          v81 = a3;
          v75 = v45;
          v76 = v46;
          v77 = v67;
          v78 = v66;
          v79 = v64;
          v49 = v46;
          v50 = v45;
          v51 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v48, 0, block);
          dispatch_async(rankQueue, v51);

          objc_destroyWeak(&v80);
          objc_destroyWeak(buf);
        }

        else
        {
          v52 = objc_alloc(MEMORY[0x277D65860]);
          v53 = [(SPKQuery *)self queryGroupId];
          v54 = [v52 initWithQueryID:v53 kind:a3 sourceKind:1 sections:MEMORY[0x277CBEBF8]];
          v55 = [(SPKQuery *)self userQueryString];
          [v54 setUserQueryString:v55];

          os_unfair_lock_lock(&self->_suggestionsLock);
          v56 = [(NSMutableArray *)self->_suggestionResults copy];
          [v54 setLocalSuggestionResults:v56];

          os_unfair_lock_unlock(&self->_suggestionsLock);
          objc_initWeak(buf, self);
          v57 = self->_rankQueue;
          LODWORD(v56) = qos_class_self();
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __40__SPCSSearchQuery_sendResponseWithKind___block_invoke;
          v82[3] = &unk_279CFE570;
          objc_copyWeak(&v84, buf);
          v83 = v54;
          v58 = v54;
          v59 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v56, 0, v82);
          dispatch_async(v57, v59);

          objc_destroyWeak(&v84);
          objc_destroyWeak(buf);
        }
      }

      v37 = v72;
      goto LABEL_63;
    }

    v66 = 0;
    v67 = 0;
    v64 = 0;
    v24 = 0;
    v25 = *MEMORY[0x277D65A80];
    v65 = *MEMORY[0x277D65BF8];
    v61 = *MEMORY[0x277D65BD8];
    while (1)
    {
      v26 = next[5];
      v27 = next[6];
      v28 = [v26 bundleIdentifier];
      v29 = v28;
      if (v6 == 2)
      {
        v30 = v28;
        {
          goto LABEL_39;
        }

        {

          if (!v31)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }

        [v72 addObject:v26];
        v32 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:v27];
        [v73 addObject:v32];

        [v63 addObject:v30];
      }

      else
      {
        [v72 addObject:v26];
        [v73 addObject:v27];
      }

      if ([v29 isEqualToString:v25])
      {
        v33 = [v73 lastObject];
        v34 = v67;
        v67 = v33;
      }

      else if ([v29 isEqualToString:v65])
      {
        v35 = [v73 lastObject];
        v34 = v66;
        v66 = v35;
      }

      else
      {
        if (![v29 isEqualToString:v61])
        {
          goto LABEL_36;
        }

        v36 = [v73 lastObject];
        v34 = v64;
        v64 = v36;
      }

LABEL_36:
      if (!v24)
      {
        v30 = [v73 lastObject];
        v24 = [v30 count] != 0;
LABEL_39:

        goto LABEL_40;
      }

      v24 = 1;
LABEL_40:

      next = *next;
      if (!next)
      {
        goto LABEL_45;
      }
    }
  }

  while (v6 != 2 || ![*(begin + 1) isEqualToString:@"com.apple.searchd.engagement"])
  {
LABEL_13:
    begin = (begin + 152);
    if (begin == end)
    {
      goto LABEL_14;
    }
  }

  v7 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v7, OS_LOG_TYPE_DEFAULT, "Found com.apple.searchd.engagement", buf, 2u);
  }

  v8 = *(begin + 8);
  v9 = *(begin + 9);
  if (v8 == v9)
  {
LABEL_10:
    v10 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v10, OS_LOG_TYPE_DEFAULT, "Found no exact-match on previous engagement", buf, 2u);
    }

    goto LABEL_13;
  }

  {
    v8 += 5;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  v37 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v37, OS_LOG_TYPE_DEFAULT, "Delay returning results; previous engagement of non-priority result found", buf, 2u);
  }

LABEL_63:

LABEL_64:
  v60 = *MEMORY[0x277D85DE8];
}

void __40__SPCSSearchQuery_sendResponseWithKind___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendResponse:*(a1 + 32)];
}

void __40__SPCSSearchQuery_sendResponseWithKind___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained rankAndSendResultsWithResponseKind:*(a1 + 80) withResultSections:*(a1 + 32) withResultSets:*(a1 + 40) withiCloudDriveResultSet:*(a1 + 48) withMailResultSet:*(a1 + 56) withCalendarResultSet:*(a1 + 64)];
}

- (id)_makeUniqueFetchAttributesWithAttributes:(id)a3 extraAttributes:(id)a4 slowFetchAttributeSet:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = [v9 count];
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12 + v11];
  v30 = self;
  v14 = [MEMORY[0x277CBEB58] setWithArray:v8];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        if (([v8 containsObject:v19] & 1) != 0 || objc_msgSend(v9, "containsObject:", v19))
        {
          [v13 addObject:v19];
          [v14 removeObject:v19];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  if ([v14 count])
  {
    v20 = [v14 allObjects];
    [v13 addObjectsFromArray:v20];
  }

  if (v10)
  {
    v21 = objc_opt_new();
    v22 = [v13 count];
    if (v22 - 1 >= 0)
    {
      do
      {
        v23 = [v13 objectAtIndexedSubscript:--v22];
        v24 = [v10 containsObject:v23];

        if (v24)
        {
          v25 = [v13 objectAtIndexedSubscript:v22];
          [v21 addObject:v25];

          [v13 removeObjectAtIndex:v22];
        }
      }

      while (v22 > 0);
    }

    v26 = [v21 copy];
    slowFetchAttrs = v30->_slowFetchAttrs;
    v30->_slowFetchAttrs = v26;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)disabledBundlesWithParseDisabledBundles:(id)a3 filterEventBundle:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x277CBEB58] setWithArray:a3];
  v7 = [(SPKQuery *)self queryContext];
  v8 = [v7 disabledBundles];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(SPKQuery *)self queryContext];
    v11 = [v10 disabledBundles];
    [v6 addObjectsFromArray:v11];
  }

  {
  }

  v12 = *MEMORY[0x277D65B38];
  v13 = [v6 containsObject:*MEMORY[0x277D65B38]];
  v14 = *MEMORY[0x277D65AA8];
  v15 = [v6 containsObject:*MEMORY[0x277D65AA8]];
  if (!(v15 & 1 | ((v13 & 1) == 0)) || (v14 = v12, !(v13 & 1 | ((v15 & 1) == 0))))
  {
    [v6 addObject:v14];
  }

  [v6 addObject:*MEMORY[0x277D65AC0]];
  if ([v6 containsObject:*MEMORY[0x277D65A20]])
  {
    v16 = *MEMORY[0x277D65B50];
    if (([v6 containsObject:*MEMORY[0x277D65B50]] & 1) == 0)
    {
      [v6 addObject:v16];
    }
  }

  v17 = [(SPKQuery *)self queryContext];
  v18 = [v17 isSearchToolClient];

  if ((v18 & 1) == 0 && self->_parsecAvailable)
  {
    [v6 addObject:*MEMORY[0x277D65AC8]];
  }

  if (v4)
  {
    [v6 addObject:*MEMORY[0x277D65BF0]];
    v19 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_26B71B000, v19, OS_LOG_TYPE_DEFAULT, "[personal answers][query] filter query added to avoid search over events bundle", v22, 2u);
    }
  }

  v20 = [v6 allObjects];

  return v20;
}

- (id)filterQueriesWithParseFilterQueries:(id)a3 onlyApps:(BOOL)a4 filterOrphanedFiles:(BOOL)a5
{
  v5 = a5;
  v8 = [MEMORY[0x277CBEB18] arrayWithArray:a3];
  v9 = [(SPKQuery *)self queryContext];
  v10 = [v9 filterQueries];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(SPKQuery *)self queryContext];
    v13 = [v12 filterQueries];
    [v8 addObjectsFromArray:v13];
  }

  v14 = [(SPKQuery *)self queryContext];
  v15 = [v14 isSearchToolClient];

  if (v15)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemDisableSearchInSpotlight!=1 || _kMDItemBundleID=%@)", *MEMORY[0x277D65B80]];
    [v8 addObject:v16];

    {
      goto LABEL_32;
    }

    v17 = @"(kMDItemContentRating!=1)";
    goto LABEL_31;
  }

  [v8 addObject:@"kMDItemDisableSearchInSpotlight!=1"];
  {
    v18 = *MEMORY[0x277D65B58];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"!(kMDItemContentRating=1 && (_kMDItemBundleID=%@ || _kMDItemBundleID=%@))", *MEMORY[0x277D65B58], *MEMORY[0x277D65AD0]];
    [v8 addObject:v19];
  }

  else
  {
    [v8 addObject:@"(kMDItemContentRating!=1)"];
  }

  {
    v20 = *MEMORY[0x277CC2D78];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@ != \"%@\"", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2358]];
    [v8 addObject:v21];
  }

  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(!(_kMDItemBundleID=%@ && kMDItemGenre=Erotica))", *MEMORY[0x277D65A08]];
    [v8 addObject:v22];
  }

  if (!a4)
  {
    {
      v23 = MEMORY[0x277CCACA8];
      v25 = *MEMORY[0x277CC2D78];
      v26 = [v23 stringWithFormat:@"(%@!=%@ || %@<=%d)", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2350], *MEMORY[0x277CC2A78], v24];
      [v8 addObject:v26];
    }

    {
      v27 = MEMORY[0x277CCACA8];
      v29 = *MEMORY[0x277CC2D78];
      v30 = [v27 stringWithFormat:@"(%@!=%@ || %@<=%d)", *MEMORY[0x277CC2D78], *MEMORY[0x277CC2368], *MEMORY[0x277CC2A78], v28];
      [v8 addObject:v30];
    }

    contentFilters = self->_contentFilters;
    if (contentFilters)
    {
      if (contentFilters)
      {
        v33 = *MEMORY[0x277D65AD8];
        if ((contentFilters & 2) != 0)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@ || _kMDItemBundleID!=%@)", *MEMORY[0x277D65AD8], @"com.apple.videos"];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@)", *MEMORY[0x277D65AD8]];
        }
        v32 = ;
        [v8 addObject:v32];
        goto LABEL_28;
      }

      if ((contentFilters & 2) != 0)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"(kMDItemIsLocal=1 || _kMDItemBundleID!=%@)", @"com.apple.videos"];
        [v8 addObject:v32];
LABEL_28:
      }
    }
  }

  [v8 addObject:@"(_kMDItemUserActivityType != \"com.apple.stocks.v2.ForYouFeed\" && _kMDItemUserActivityType != \"com.apple.stocks.v2.SymbolFeed\""];
  [v8 addObject:@"(kMDItemIsTrashed!=1)"];
  if (!v5)
  {
    goto LABEL_32;
  }

  v17 = @"(!(_kMDItemBundleID == com.apple.CloudDocs.MobileDocumentsFileProvider ||_kMDItemBundleID == com.apple.FileProvider.LocalStorage ||_kMDItemBundleID == com.apple.CloudDocs.iCloudDriveFileProvider ||_kMDItemBundleID == com.apple.CloudDocs.iCloudDriveFileProviderManaged) || _kMDItemQueryPathOIDFlat != kMDQueryConstantOrphanOID)";
LABEL_31:
  [v8 addObject:v17];
LABEL_32:
  v34 = [v8 copy];

  return v34;
}

- (void)executeQuery
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_26B71B000, v0, OS_LOG_TYPE_DEBUG, "[debug][personal answers][query] personalAnswersQueries = %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_storeStrong(WeakRetained + 60, *(a1 + 32));
    v3 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v3 sendFeedbackType:5 feedback:*(a1 + 32) queryId:*(a1 + 56) clientID:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_3;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained foundItems:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_5;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained completed:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_7;
  v14[3] = &unk_279CFE610;
  objc_copyWeak(&v18, (a1 + 40));
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v18);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained foundCompletion:*(a1 + 32) scores:*(a1 + 40) bundleIDs:*(a1 + 48)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_9;
  v6[3] = &unk_279CFE570;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained foundCompletions:*(a1 + 32)];
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SPCSSearchQuery_executeQuery__block_invoke_11;
  block[3] = &unk_279CFE660;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __31__SPCSSearchQuery_executeQuery__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained priorityGatherEnded];
}

- (void)foundCompletion:(id)a3 scores:(id)a4 bundleIDs:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_completionSuggestions objectForKey:v21];

  if (!v10)
  {
    v11 = [MEMORY[0x277CC34D8] emptySuggestion];
    v12 = MEMORY[0x277CC34D8];
    v13 = [(SPKQuery *)self userQueryString];
    v14 = [v12 updatedSuggestionWithCurrentSuggestion:v11 userString:v13 tokens:MEMORY[0x277CBEBF8]];

    v15 = MEMORY[0x277CC34D8];
    v16 = [(SPKQuery *)self userQueryString];
    v17 = [v15 suggestionWithCurrentSuggestion:v14 userQueryString:v16 completion:v21 attributes:v9 scores:v8 options:MEMORY[0x277CBEC10]];

    if (v17)
    {
      v18 = MEMORY[0x277D659B8];
      v19 = [(SPKQuery *)self queryContext];
      v20 = [v18 buildResultWithSpotlightSuggestion:v17 queryContext:v19];

      [(NSMutableDictionary *)self->_completionSuggestions setObject:v20 forKey:v21];
    }
  }
}

- (void)foundCompletions:(id)a3
{
  os_unfair_lock_lock(&self->_suggestionsLock);
  v4 = (*(self + 376) & 1) != 0 || [(NSMutableDictionary *)self->_completionSuggestions count]|| [(NSMutableArray *)self->_suggestionResults count]!= 0;
  *(self + 376) = *(self + 376) & 0xFE | v4;
  suggestionResults = self->_suggestionResults;
  v6 = [(NSMutableDictionary *)self->_completionSuggestions allValues];
  [(NSMutableArray *)suggestionResults addObjectsFromArray:v6];

  os_unfair_lock_unlock(&self->_suggestionsLock);
}

- (void)priorityGatherEnded
{
  if (!self->_isPhotosSearch)
  {
    v3 = SSPriorityIndexDelayMilliseconds() / 1000.0;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4;
    [(SPKQuery *)self queryStartTime];
    v7 = v5 - v6;
    if (v7 >= v3)
    {

      [(SPCSSearchQuery *)self sendResponseWithKind:2];
    }

    else
    {
      v8 = v3 - v7;
      v9 = self->_timeoutTimer;
      if (v9)
      {
        v10 = v9;
        v11 = dispatch_time(0, (v8 * 1000000000.0));
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (v3 / 5.0 * 1000000000.0));
      }

      else
      {
        dispatchQueue = self->_dispatchQueue;
        if (!dispatchQueue)
        {
          [SPCSSearchQuery priorityGatherEnded];
        }

        v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, dispatchQueue);
        timeoutTimer = self->_timeoutTimer;
        self->_timeoutTimer = v10;

        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __38__SPCSSearchQuery_priorityGatherEnded__block_invoke;
        handler[3] = &unk_279CFE378;
        handler[4] = self;
        dispatch_source_set_event_handler(v10, handler);
        v14 = dispatch_time(0, (v8 * 1000000000.0));
        dispatch_source_set_timer(v10, v14, 0xFFFFFFFFFFFFFFFFLL, (v3 / 5.0 * 1000000000.0));
        dispatch_activate(v10);
      }
    }
  }
}

- (void)completed:(id)a3
{
  v7 = a3;
  {
    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v5 = timeoutTimer;
      dispatch_source_cancel(v5);
      v6 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }
  }

  [(SPCSSearchQuery *)self sendResponseWithKind:4];
}

- (id).cxx_construct
{
  *&self->_indexResultsRegistry.queryId = 0u;
  *&self->_indexResultsRegistry.results.__begin_ = 0u;
  *&self->_indexResultsRegistry.results.__cap_ = 0u;
  p_bundleIdToResultsMap = &self->_bundleIdToResultsMap;
  self->_bundleIdToResultsMap.map.__table_.__bucket_list_ = 0u;
  *&self->_bundleIdToResultsMap.map.__table_.__first_node_.__next_ = 0u;
  self->_bundleIdToResultsMap.map.__table_.__max_load_factor_ = 1.0;
  *&self->_bundleIdToResultsMap.peopleResultsSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedGeneralPhotosSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedPhotosInNotesSection = 0u;
  *&self->_bundleIdToResultsMap.syndicatedPhotosInMessagesSection = 0u;
  v4 = *&self->_bundleIdToResultsMap.syndicatedLinkSection = 0u;
  syndicatedLinkSection = p_bundleIdToResultsMap->syndicatedLinkSection;
  p_bundleIdToResultsMap->syndicatedLinkSection = v4;
  v6 = ;
  syndicatedPhotosInAppsSection = p_bundleIdToResultsMap->syndicatedPhotosInAppsSection;
  p_bundleIdToResultsMap->syndicatedPhotosInAppsSection = v6;
  v8 = ;
  syndicatedPhotosInMessagesSection = p_bundleIdToResultsMap->syndicatedPhotosInMessagesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInMessagesSection = v8;
  v10 = ;
  syndicatedFilesInMessagesSection = p_bundleIdToResultsMap->syndicatedFilesInMessagesSection;
  p_bundleIdToResultsMap->syndicatedFilesInMessagesSection = v10;
  v12 = ;
  syndicatedPhotosInNotesSection = p_bundleIdToResultsMap->syndicatedPhotosInNotesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInNotesSection = v12;
  v14 = ;
  syndicatedPhotosInFilesSection = p_bundleIdToResultsMap->syndicatedPhotosInFilesSection;
  p_bundleIdToResultsMap->syndicatedPhotosInFilesSection = v14;
  v16 = ;
  syndicatedGeneralPhotosSection = p_bundleIdToResultsMap->syndicatedGeneralPhotosSection;
  p_bundleIdToResultsMap->syndicatedGeneralPhotosSection = v16;
  v18 = ;
  contactResultsSection = p_bundleIdToResultsMap->contactResultsSection;
  p_bundleIdToResultsMap->contactResultsSection = v18;
  v20 = ;
  peopleResultsSection = p_bundleIdToResultsMap->peopleResultsSection;
  p_bundleIdToResultsMap->peopleResultsSection = v20;
  v22 = ;
  photosSection = p_bundleIdToResultsMap->photosSection;
  p_bundleIdToResultsMap->photosSection = v22;

  return self;
}

void __29__SPCSSearchQuery_initialize__block_invoke_cold_1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "got error fetching me card info: %ld", buf, 0xCu);
}

void __27__SPCSSearchQuery_activate__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26B71B000, v0, v1, "Error loading home screen config cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)skipResult:installedApps:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26B71B000, v0, v1, "No bundleID for result %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__SPCSSearchQuery_updateMailAttachmentResults___block_invoke_cold_1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_26B71B000, log, OS_LOG_TYPE_ERROR, "[Mail Attachment] could not fetch all attributes. Related items: %lu. Attributes fetched: %lu", buf, 0x16u);
}

@end