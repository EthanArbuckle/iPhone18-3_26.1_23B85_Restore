@interface SPFederatedQueryTask
+ (BOOL)isCJK;
+ (BOOL)sectionSupportsShowMoreInApp:(id)a3;
+ (id)appGenreMap;
+ (id)contactEntityFromQueryContext:(id)a3;
+ (id)queryClasses;
+ (id)searchContinuationCompatibilitySet;
+ (void)activate;
+ (void)activate:(BOOL)a3;
+ (void)deactivate;
+ (void)initialize;
- (BOOL)forceAboveFoldResultsWithQuery:(id)a3 topHitSection:(id)a4 sections:(id)a5;
- (BOOL)isBullseyeCommittedSearch;
- (BOOL)isBullseyeNonCommittedSearch;
- (BOOL)parsecAvailable;
- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4;
- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4 suggestionResults:(id)a5;
- (BOOL)storeSearchProgress:(id)a3 withSections:(id)a4 suggestionResults:(id)a5;
- (SPClientSession)session;
- (__CFArray)copyMatchInfo;
- (id)_queriesForSearchTool;
- (id)contactSuggestionsWithSearchString:(id)a3;
- (id)correctedQueryWithCorrection:(id)a3;
- (id)dedupeLocalSectionsByBundleId:(id)a3;
- (id)detailTextFromBundleIDs:(id)a3;
- (id)displayedText;
- (id)initForSession:(id)a3 withQuery:(id)a4;
- (id)orderedCategories:(id)a3;
- (id)retainAndMergeSections:(id)a3 forState:(unint64_t)a4;
- (id)searchString;
- (id)suggestionsWithSearchString:(id)a3 sections:(id)a4 topHitSection:(id)a5 highestLocalScore:(double)a6;
- (id)unsafeSections;
- (id)unsafeSessionEntityString;
- (id)waitForQueryCorrections;
- (unint64_t)queryIdent;
- (void)_processResponse:(id)a3 toQuery:(id)a4;
- (void)_updateQueryContext:(id)a3;
- (void)activate;
- (void)addAndStartQuery;
- (void)addDictionarySections:(id)a3;
- (void)addMatchInfo:(_MDPlistContainer *)a3;
- (void)addQueryCorrections:(id)a3;
- (void)addSections:(id)a3 delayedTopHit:(BOOL)a4;
- (void)addSuggestionsToSectionsForSending:(id)a3 searchString:(id)a4 updatedSections:(BOOL)a5 queryKind:(unint64_t)a6;
- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)a3 updatedSections:(BOOL)a4 isScopedSearch:(BOOL)a5;
- (void)cancel;
- (void)cancelQuery;
- (void)clear;
- (void)deDuplicateMailResults:(id)a3;
- (void)deDuplicateSection:(id)a3 againstSection:(id)a4;
- (void)dealloc;
- (void)handleOptionsForNewSections:(id)a3;
- (void)logPerfToAnalytics:(int)a3;
- (void)mergeRelatedContentFromSections:(id)a3 bundlesToMerge:(id)a4 mergedSectionId:(id)a5;
- (void)mergeSections;
- (void)prepareAndSend:(id)a3 force:(BOOL)a4 moreComing:(BOOL)a5 reason:(int)a6;
- (void)processAppResults:(id)a3 maxAppResults:(unint64_t)a4 section:(id)a5 topHitsIndex:(unint64_t *)a6;
- (void)queryTask:(id)a3 gotResponse:(id)a4;
- (void)relatedContentSectionMerging:(id)a3;
- (void)searchQuery:(id)a3 gotResultSet:(id)a4 replace:(BOOL)a5 partiallyComplete:(BOOL)a6 priorityFastPath:(BOOL)a7 update:(BOOL)a8 complete:(BOOL)a9 delayedTopHit:(BOOL)a10 unchanged:(BOOL)a11 forceStable:(BOOL)a12 blendingDuration:(double)a13 geoEntityString:(id)a14 supportedAppScopes:(id)a15 showMoreInAppInfo:(id)a16;
- (void)searchQueryEncounteredError:(id)a3;
- (void)sendError:(id)a3;
- (void)sendFinishedDomains:(BOOL)a3 reason:(int)a4;
- (void)sendQueryCompleted;
- (void)sendQueryReset;
- (void)sendResults:(id)a3 reset:(BOOL)a4 partiallyComplete:(BOOL)a5 update:(BOOL)a6 complete:(BOOL)a7 unchanged:(BOOL)a8 delayedTopHit:(BOOL)a9 reason:(int)a10;
- (void)sendResultsForKeys:(id)a3 toSendSections:(id)a4;
- (void)sendTTRLogsWithSections:(id)a3;
- (void)serverSideDedupe:(id)a3;
- (void)setBundlesSupportingAppScoping:(id)a3;
- (void)start;
- (void)startSetup;
- (void)storeWillComplete:(id)a3;
- (void)truncateSuggestionsSectionToFit:(id)a3;
- (void)updateResultsWithContactHeader;
@end

@implementation SPFederatedQueryTask

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];
    v3 = sEligibleBundleSet;
    sEligibleBundleSet = v2;

    v4 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.mobilecal", @"com.apple.Health", @"com.apple.Music", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.MobileAddressBook", @"com.apple.mobilenotes", @"com.apple.mobilemail", @"com.apple.MobileSMS", @"com.apple.Maps", @"com.apple.DocumentsApp", 0}];
    v5 = sSearchContinuationCompatibilityCache;
    sSearchContinuationCompatibilityCache = v4;

    v6 = sAppGenreCache;
    sAppGenreCache = &unk_287C3B830;

    sDeviceClass = MGGetSInt32Answer();
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_overcommit();
    v9 = dispatch_queue_create("com.apple.SpotlightFramework.workq", v8);
    v10 = __workQueue;
    __workQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("com.apple.search.daemonQueue", v12);
    v14 = __lifeCycleQueue;
    __lifeCycleQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_BACKGROUND, 0);
    v17 = dispatch_queue_create("com.apple.SpotlightFramework.bgworkq", v16);
    v18 = __backgroundWorkQueue;
    __backgroundWorkQueue = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.searchd"];
    [v19 BOOLForKey:@"enableDebug"];
    SPSetAppsChangedBlockClient();
    v20 = dispatch_get_global_queue(17, 0);
    tracing_dispatch_async();
  }
}

void __34__SPFederatedQueryTask_initialize__block_invoke(uint64_t a1)
{
  v2 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v2, OS_LOG_TYPE_DEFAULT, "Apps changed", buf, 2u);
  }

  v3 = __workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SPFederatedQueryTask_initialize__block_invoke_245;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v3, v4);
}

uint64_t __34__SPFederatedQueryTask_initialize__block_invoke_245(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 invalidateCacheForSearchContinuation];
}

void __34__SPFederatedQueryTask_initialize__block_invoke_2()
{
  v1 = [MEMORY[0x277D65808] sharedManager];
  v0 = [MEMORY[0x277D4BEC0] sharedProxy];
  [v1 setFeedbackDelegate:v0];
}

+ (id)appGenreMap
{
  os_unfair_lock_lock(&sCacheLock);
  v2 = [sAppGenreCache copy];
  os_unfair_lock_unlock(&sCacheLock);

  return v2;
}

+ (id)searchContinuationCompatibilitySet
{
  os_unfair_lock_lock(&sCacheLock);
  v2 = [sSearchContinuationCompatibilityCache copy];
  os_unfair_lock_unlock(&sCacheLock);

  return v2;
}

+ (id)queryClasses
{
  if (queryClasses_onceToken != -1)
  {
    +[SPFederatedQueryTask queryClasses];
  }

  v3 = queryClasses_queryClasses;

  return v3;
}

void __36__SPFederatedQueryTask_queryClasses__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:5];
  v1 = queryClasses_queryClasses;
  queryClasses_queryClasses = v0;

  if (_os_feature_enabled_impl())
  {
    v2 = [queryClasses_queryClasses arrayByAddingObject:{objc_opt_class(), v9, v10, v11, v12}];
    v3 = queryClasses_queryClasses;
    queryClasses_queryClasses = v2;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = [queryClasses_queryClasses arrayByAddingObject:objc_opt_class()];
    v5 = queryClasses_queryClasses;
    queryClasses_queryClasses = v4;
  }

  if (_os_feature_enabled_impl())
  {
    v6 = [queryClasses_queryClasses arrayByAddingObject:objc_opt_class()];
    v7 = queryClasses_queryClasses;
    queryClasses_queryClasses = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_queriesForSearchTool
{
  v3 = objc_opt_new();
  v4 = [(SPQueryTask *)self query];
  v5 = [v4 queryContext];

  v6 = MEMORY[0x277D65898];
  v7 = [v5 searchString];
  v8 = [v6 normalizeSearchString:v7 queryContext:v5];
  [v5 setSearchString:v8];

  v9 = [SPCSSearchQuery alloc];
  v10 = [v5 searchString];
  v11 = -[SPCSSearchQuery initWithUserQuery:queryGroupId:options:queryContext:](v9, "initWithUserQuery:queryGroupId:options:queryContext:", v10, [v5 queryIdent], objc_msgSend(v5, "options"), v5);

  if (v11)
  {
    [v3 addObject:v11];
  }

  return v3;
}

- (void)startSetup
{
  v3 = SPLogForSPLogCategoryTelemetry();
  v4 = v3;
  externalID = self->_externalID;
  if (externalID && os_signpost_enabled(v3))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "spotlightLatency", " enableTelemetry=YES ", v11, 2u);
  }

  self->_startTime = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_startTimeIntervalSinceReferenceDate = v6;
  v7 = self->_externalID;
  v8 = [(SPQueryTask *)self query];
  v9 = [v8 queryContext];
  v10 = [v9 searchString];
  SDTraceAdd();

  self->_genreGroupingEnabled = SPGenreGroupingEnabled();
  self->_shouldRecomputeSuggestions = 1;
}

- (void)cancelQuery
{
  v32 = *MEMORY[0x277D85DE8];
  externalID = self->_externalID;
  SDTraceAdd();
  v4 = [(SPQueryTask *)self query];
  [v4 cancel];

  v5 = [(SPFederatedQueryTask *)self itemRanker];
  [v5 cancel];

  [(SSRankingManager *)self->_rankingManager cancel];
  v6 = [(NSMutableArray *)self->_slowTokens copy];
  v7 = [(NSMutableArray *)self->_tokens copy];
  slowTokens = self->_slowTokens;
  self->_slowTokens = 0;

  tokens = self->_tokens;
  self->_tokens = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v26 + 1) + 8 * v14++) cancel];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v22 + 1) + 8 * v19++) cancel];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  self->_sentTaggedTopHits = 0;
  [(SPFederatedQueryTask *)self setMessage:0];

  v21 = *MEMORY[0x277D85DE8];
}

void __57__SPFederatedQueryTask_prepareCacheForSearchContinuation__block_invoke()
{
  v43 = *MEMORY[0x277D85DE8];
  if (sCacheUpToDate)
  {
    goto LABEL_50;
  }

  if (!sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache)
  {
    v0 = objc_opt_new();
    v1 = sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache;
    sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache = v0;
  }

  v2 = SPCopyVisibleApps();
  os_unfair_lock_lock(&sCacheLock);
  v3 = [sAppGenreCache mutableCopy];
  v4 = [sSearchContinuationCompatibilityCache mutableCopy];
  os_unfair_lock_unlock(&sCacheLock);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v2 copy];
  v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v5)
  {
    v28 = obj;
    goto LABEL_48;
  }

  v6 = v5;
  v31 = v2;
  v32 = 0;
  v7 = *v37;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v36 + 1) + 8 * i);
      if (([v4 containsObject:v9] & 1) == 0 && (objc_msgSend(sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache, "containsObject:", v9) & 1) == 0)
      {
        v10 = objc_alloc(MEMORY[0x277CC1E70]);
        v35 = 0;
        v11 = [v10 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v35];
        v12 = v35;
        if (v12)
        {
          v13 = v12;
          v14 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v13;
            _os_log_error_impl(&dword_26B71B000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        if (v11)
        {
          v15 = [v11 supportsSpotlightQueryContinuation];
          v16 = [v11 iTunesMetadata];
          v17 = [v16 genre];

          if (v15)
          {
            LODWORD(v32) = 1;
            v18 = v4;
            goto LABEL_20;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = sSRResources_block_invoke_sSearchContinuationCompatibilityNegativeCache;
LABEL_20:
        [v18 addObject:v9];
        v19 = [v3 objectForKey:v9];

        if (!v19 && v17 && ([v17 isEqual:&stru_287C35638] & 1) == 0)
        {
          [v3 setObject:v17 forKey:v9];
          HIDWORD(v32) = 1;
        }
      }

      v20 = [v3 objectForKey:v9];

      if (!v20)
      {
        v21 = objc_alloc(MEMORY[0x277CC1E70]);
        v34 = 0;
        v22 = [v21 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v34];
        v23 = v34;
        if (v23)
        {
          v24 = v23;
          v25 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v24;
            _os_log_error_impl(&dword_26B71B000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        v26 = [v22 iTunesMetadata];
        v27 = [v26 genre];

        if (v27 && ([v27 isEqual:&stru_287C35638] & 1) == 0)
        {
          [v3 setObject:v27 forKey:v9];
          HIDWORD(v32) = 1;
        }
      }
    }

    v6 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v6);

  v2 = v31;
  if ((v32 | HIDWORD(v32)))
  {
    if ((v32 & 0x100000000) != 0)
    {
      v28 = [v3 copy];
      if ((v32 & 1) == 0)
      {
        v29 = 0;
        goto LABEL_43;
      }

LABEL_42:
      v29 = [v4 copy];
    }

    else
    {
      v28 = 0;
      v29 = 0;
      if (v32)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    os_unfair_lock_lock(&sCacheLock);
    if (v28)
    {
      objc_storeStrong(&sAppGenreCache, v28);
    }

    if (v29)
    {
      objc_storeStrong(&sSearchContinuationCompatibilityCache, v29);
    }

    os_unfair_lock_unlock(&sCacheLock);

LABEL_48:
  }

  sCacheUpToDate = 1;

LABEL_50:
  v30 = *MEMORY[0x277D85DE8];
}

void __60__SPFederatedQueryTask_invalidateCacheForSearchContinuation__block_invoke()
{
  v41 = *MEMORY[0x277D85DE8];
  v0 = SPCopyVisibleApps();
  os_unfair_lock_lock(&sCacheLock);
  v1 = [sAppGenreCache mutableCopy];
  os_unfair_lock_unlock(&sCacheLock);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v24 = 0;
    v5 = *v29;
    v6 = 0x277CC1000uLL;
    v25 = v2;
    v26 = *v29;
    do
    {
      v7 = 0;
      v27 = v4;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = [v1 objectForKey:v8];

        if (!v9)
        {
          v10 = [*(v6 + 3680) applicationProxyForIdentifier:v8];
          v11 = SPLogForSPLogCategoryDefault();
          v12 = v11;
          if (*MEMORY[0x277D4BF48])
          {
            v13 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v13 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v11, v13))
          {
            v14 = [v10 genre];
            [v10 subgenres];
            v16 = v15 = v1;
            [v10 genreID];
            v18 = v17 = v6;
            *buf = 138413058;
            v33 = v8;
            v34 = 2112;
            v35 = v14;
            v36 = 2112;
            v37 = v16;
            v38 = 2112;
            v39 = v18;
            _os_log_impl(&dword_26B71B000, v12, v13, "%@ genre %@, subgenre %@, id %@", buf, 0x2Au);

            v6 = v17;
            v1 = v15;
            v2 = v25;
            v5 = v26;

            v4 = v27;
          }

          v19 = [v10 genre];
          v20 = v19;
          if (v19 && ([v19 isEqual:&stru_287C35638] & 1) == 0)
          {
            [v1 setObject:v20 forKey:v8];
            v24 = 1;
          }
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v4);

    if (v24)
    {
      v21 = [v1 copy];
      os_unfair_lock_lock(&sCacheLock);
      v22 = sAppGenreCache;
      sAppGenreCache = v21;

      os_unfair_lock_unlock(&sCacheLock);
    }
  }

  else
  {
  }

  sCacheUpToDate = 0;

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)sectionSupportsShowMoreInApp:(id)a3
{
  v3 = a3;
  v4 = +[SPFederatedQueryTask searchContinuationCompatibilitySet];
  v5 = [v3 bundleIdentifier];

  LOBYTE(v3) = [v4 containsObject:v5];
  return v3;
}

- (void)setBundlesSupportingAppScoping:(id)a3
{
  v4 = [a3 allObjects];
  bundlesSupportingAppScoping = self->_bundlesSupportingAppScoping;
  self->_bundlesSupportingAppScoping = v4;

  MEMORY[0x2821F96F8]();
}

- (BOOL)isBullseyeNonCommittedSearch
{
  v3 = [(SPQueryTask *)self query];
  v4 = [v3 queryContext];
  v5 = [v4 queryKind];

  return v5 == 2 || v5 == 10 && self->_previousQueryKind == 2;
}

- (BOOL)isBullseyeCommittedSearch
{
  v3 = [(SPQueryTask *)self query];
  v4 = [v3 queryContext];
  v5 = [v4 queryKind];

  if ((v5 - 5) < 4)
  {
    return 1;
  }

  if (v5 == 10)
  {
    return self->_previousQueryKind - 5 < 4;
  }

  return 0;
}

- (void)sendTTRLogsWithSections:(id)a3
{
  rankingManager = self->_rankingManager;
  v5 = a3;
  v6 = [(SPQueryTask *)self query];
  v7 = [v6 queryContext];
  [(SSRankingManager *)rankingManager sendTTRLogsWithSections:v5 queryContext:v7 isCommittedSearch:[(SPFederatedQueryTask *)self isBullseyeCommittedSearch] parsecCameLaterThanSRT:self->_parsecCameLaterThanSRT];

  v8 = [(SSRankingManager *)self->_rankingManager logValues];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(SSRankingManager *)self->_rankingManager logValues];
    [(SPFederatedQueryTask *)self sendLogValuesForDebuggingRanking:v10];
  }
}

- (void)deDuplicateMailResults:(id)a3
{
  v17 = a3;
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [v17 resultSet];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = objc_opt_new();
  v7 = [v17 resultSet];
  v8 = [v7 count];

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [v17 resultSet];
      v11 = [v10 objectAtIndexedSubscript:i];

      v12 = [v11 rankingItem];
      v13 = v12;
      if (v12)
      {
        [v12 attributes];
        v14 = SSCompactRankingAttrsGetValue();
        if (v14)
        {
          v15 = v14;
          if ([v5 containsObject:v14])
          {
            [v6 addIndex:i];
          }

          else
          {
            [v5 addObject:v15];
          }
        }
      }
    }
  }

  v16 = [v17 resultSet];
  [v16 removeObjectsAtIndexes:v6];
}

- (void)deDuplicateSection:(id)a3 againstSection:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = [v6 resultSet];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [v5 bundleIdentifier];
  if (([v10 isEqual:*MEMORY[0x277D65A00]] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v11 = [v5 bundleIdentifier];
  v12 = [v6 bundleIdentifier];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = [v6 results];
    v14 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = [*(*(&v45 + 1) + 8 * v17) rankingItem];
          v19 = [v18 isServerAlternativeResult];

          if (v19)
          {

            v20 = v5;
            v5 = v6;
            goto LABEL_13;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v10 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  v20 = v6;
LABEL_13:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = [v20 resultSet];
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      v25 = 0;
      do
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v41 + 1) + 8 * v25) identifier];
        if (v26)
        {
          [v9 addObject:v26];
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v23);
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = [v5 resultSet];
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v38;
    do
    {
      v33 = 0;
      do
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = [*(*(&v37 + 1) + 8 * v33) identifier];
        if (v34 && [v9 containsObject:v34])
        {
          [v27 addIndex:v31];
        }

        ++v31;

        ++v33;
      }

      while (v30 != v33);
      v30 = [v28 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v30);
  }

  v35 = [v5 resultSet];
  [v35 removeObjectsAtIndexes:v27];

  v36 = *MEMORY[0x277D85DE8];
}

- (id)dedupeLocalSectionsByBundleId:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) bundleIdentifier];
        v13 = v12;
        if (v12 && ([v12 hasPrefix:@"com.apple.parsec"] & 1) == 0)
        {
          if ([v4 containsObject:v13])
          {
            [v5 addIndex:v9];
          }

          else
          {
            [v4 addObject:v13];
          }

          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v14 = [v6 mutableCopy];
    [v14 removeObjectsAtIndexes:v5];

    v6 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)serverSideDedupe:(id)a3
{
  v258 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v193 = objc_opt_new();
  v198 = objc_opt_new();
  v203 = objc_opt_new();
  v210 = objc_opt_new();
  v197 = objc_opt_new();
  v7 = self;
  v8 = objc_opt_new();
  v201 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v222 = SSEnableSpotlightTopHitPersonalizedRanking();
  v9 = [(SPFederatedQueryTask *)self dedupeLocalSectionsByBundleId:v4];

  v220 = v5;
  v212 = v6;
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    v11 = [v10 bundleIdentifier];
    if ([v11 isEqual:@"com.apple.spotlight.tophits"])
    {
      v12 = [v10 resultSet];
      v13 = [v12 firstObject];
      v14 = [v13 sectionBundleIdentifier];
      v15 = priorityIndexEligibleBundleIdentifer(v14);

      if (v15)
      {
        v190 = v10;
      }

      else
      {
        v190 = 0;
      }

      v5 = v220;
    }

    else
    {

      v190 = 0;
    }

    v6 = v212;
  }

  else
  {
    v190 = 0;
  }

  v188 = [MEMORY[0x277CBEAA8] now];
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = v9;
  v195 = [obj countByEnumeratingWithState:&v238 objects:v257 count:16];
  if (v195)
  {
    v194 = *v239;
    v191 = *MEMORY[0x277D65AB8];
    v221 = *MEMORY[0x277D65BC0];
    v215 = *MEMORY[0x277D65B80];
    v205 = *MEMORY[0x277D65B30];
    v214 = *MEMORY[0x277D65A18];
    v204 = *MEMORY[0x277CC2BD8];
    v187 = *MEMORY[0x277CC3128];
    v209 = *MEMORY[0x277D65B38];
    v202 = *MEMORY[0x277CC25F0];
    v208 = *MEMORY[0x277D65A00];
    v185 = *MEMORY[0x277D65CC8];
    v207 = *MEMORY[0x277D65C98];
    v213 = *MEMORY[0x277D65BA0];
    v200 = *MEMORY[0x277CC3088];
    v211 = *MEMORY[0x277D65B98];
    v206 = *MEMORY[0x277D65B40];
    v186 = v7;
    v216 = v8;
    do
    {
      v16 = 0;
      do
      {
        if (*v239 != v194)
        {
          objc_enumerationMutation(obj);
        }

        v199 = v16;
        v17 = *(*(&v238 + 1) + 8 * v16);
        if (!-[SPFederatedQueryTask isBullseyeCommittedSearch](v7, "isBullseyeCommittedSearch") || ([v17 bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.spotlight.tophits"), v18, (v19 & 1) == 0))
        {
          v223 = objc_alloc_init(MEMORY[0x277CCAB58]);
          v20 = [v17 results];
          v21 = [v20 firstObject];
          v22 = [v21 sectionBundleIdentifier];
          v23 = [v22 isEqualToString:v191];

          if (v23)
          {
            [(SPFederatedQueryTask *)v7 deDuplicateMailResults:v17];
            v24 = v223;
LABEL_205:

            v6 = v212;
            goto LABEL_206;
          }

          v25 = v17;
          v227 = v17;
          if (v17 != v190)
          {
            v26 = [v17 resultSet];
            v27 = [v26 firstObject];
            v28 = [v27 sectionBundleIdentifier];
            v29 = [v190 resultSet];
            v30 = [v29 firstObject];
            v31 = [v30 sectionBundleIdentifier];
            if ([v28 isEqualToString:v31])
            {
              v32 = [(SPFederatedQueryTask *)v7 isBullseyeCommittedSearch];

              v25 = v227;
              if (!v32)
              {
                [(SPFederatedQueryTask *)v7 deDuplicateSection:v227 againstSection:v190];
              }
            }

            else
            {

              v25 = v227;
            }
          }

          v33 = [v25 resultSet];
          v34 = [v33 count];

          if (!v34)
          {
            v181 = 0;
            v8 = v216;
LABEL_204:
            v182 = v181;
            v183 = [v25 resultSet];
            v24 = v223;
            [v183 removeObjectsAtIndexes:v223];

            v7 = v186;
            goto LABEL_205;
          }

          v35 = 0;
          v36 = 0;
          v217 = 0;
          v37 = 0;
          v8 = v216;
          while (2)
          {
            v38 = [v25 resultSet];
            v39 = [v38 objectAtIndexedSubscript:v35];

            v219 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v37];

            v40 = [v39 resultBundleId];
            LODWORD(v38) = [v40 isEqualToString:v221];

            if (v38)
            {
              v41 = v37;
            }

            else
            {
              v41 = v217;
            }

            v217 = v41;
            v42 = [v39 sectionBundleIdentifier];
            v229 = v39;
            v218 = v37;
            if ([v42 isEqualToString:v215])
            {

              goto LABEL_32;
            }

            v43 = [v39 sectionBundleIdentifier];
            v44 = [v43 isEqualToString:v205];

            if (!v44)
            {
              v224 = 0;
              v228 = 0;
              goto LABEL_90;
            }

LABEL_32:
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v45 = [v39 alternativeURLs];
            v46 = [v45 countByEnumeratingWithState:&v234 objects:v256 count:16];
            if (!v46)
            {

              v224 = 0;
              v39 = v229;
              goto LABEL_62;
            }

            v47 = v46;
            v224 = 0;
            v228 = 0;
            v48 = *v235;
            while (2)
            {
              v49 = 0;
              v225 = v47;
              while (2)
              {
                if (*v235 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = [*(*(&v234 + 1) + 8 * v49) absoluteString];
                v51 = strippedURL();

                v52 = [v5 objectForKey:v51];
                v53 = [v52 objectAtIndex:0];
                v54 = v53;
                if (!v53)
                {
                  v255[0] = v229;
                  v255[1] = v25;
                  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v255 count:2];
                  [v5 setObject:v57 forKey:v51];
                  goto LABEL_56;
                }

                if (v53 != v229)
                {
                  v55 = v48;
                  v56 = v45;
                  v57 = [v52 objectAtIndex:1];
                  v58 = v228;
                  if (v228)
                  {
                    if (v228 != v54)
                    {
                      if ([v228 topHit] >= 1)
                      {
                        goto LABEL_42;
                      }

                      if ([v54 topHit] >= 1)
                      {
                        v59 = v228;
                        goto LABEL_53;
                      }

                      v58 = v228;
                      [v228 l2score];
                      v67 = v66;
                      [v54 l2score];
                      if (v67 >= v68)
                      {
LABEL_42:
                        v59 = v54;
                        v60 = v57;
                        v61 = v223;
                        v62 = v58;
                      }

                      else
                      {
                        v59 = v228;
LABEL_53:
                        v61 = v223;
                        v60 = v224;
                        v62 = v54;
                      }

                      hideResultFromSection(v59, v60, v61, v62, v25);
                    }
                  }

                  else
                  {
                    v63 = v54;
                    v57 = v57;

                    v228 = v63;
                    if (v222)
                    {
                      v64 = [v63 resultBundleId];
                      v65 = [v64 isEqualToString:v221];

                      if (v65)
                      {
                        [MEMORY[0x277D659C8] setTopHitCandidate:v63];
                      }

                      v224 = v57;
                      v5 = v220;
                      v25 = v227;
                    }

                    else
                    {
                      v224 = v57;
                    }
                  }

                  v45 = v56;
                  v48 = v55;
                  v47 = v225;
LABEL_56:
                }

                if (v47 != ++v49)
                {
                  continue;
                }

                break;
              }

              v47 = [v45 countByEnumeratingWithState:&v234 objects:v256 count:16];
              if (v47)
              {
                continue;
              }

              break;
            }

            v8 = v216;
            v39 = v229;
            if (!v228)
            {
LABEL_62:
              v232 = 0u;
              v233 = 0u;
              v230 = 0u;
              v231 = 0u;
              v69 = [v39 punchout];
              v70 = [v69 urls];

              v71 = [v70 countByEnumeratingWithState:&v230 objects:v254 count:16];
              if (!v71)
              {
                v228 = 0;
                goto LABEL_77;
              }

              v72 = v71;
              v228 = 0;
              v73 = *v231;
              while (1)
              {
                for (i = 0; i != v72; ++i)
                {
                  if (*v231 != v73)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v75 = [*(*(&v230 + 1) + 8 * i) absoluteString];
                  v76 = strippedURL();

                  v77 = [v5 objectForKey:v76];
                  v78 = [v77 objectAtIndex:0];
                  v79 = v78;
                  if (v78)
                  {
                    v25 = v227;
                    if (v78 == v39)
                    {
                      goto LABEL_72;
                    }

                    v80 = v228;
                    v228 = v78;
                  }

                  else
                  {
                    v253[0] = v39;
                    v25 = v227;
                    v253[1] = v227;
                    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v253 count:2];
                    [v5 setObject:v80 forKey:v76];
                  }

                  v39 = v229;
LABEL_72:
                }

                v72 = [v70 countByEnumeratingWithState:&v230 objects:v254 count:16];
                if (!v72)
                {
LABEL_77:

                  v8 = v216;
                  break;
                }
              }
            }

            v81 = [v39 contentURL];

            if (!v81 || v228)
            {
              LODWORD(v37) = v218;
              goto LABEL_90;
            }

            v82 = [v39 contentURL];
            strippedURL();
            v84 = v83 = v39;

            v37 = [v5 objectForKey:v84];
            v85 = [v37 objectAtIndex:0];
            v86 = v85;
            if (v85)
            {
              if (v85 != v83)
              {
                if (v222)
                {
                  v87 = [v85 resultBundleId];
                  v88 = [v87 isEqualToString:v221];

                  if (v88)
                  {
                    v251[0] = v229;
                    v251[1] = v25;
                    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
                    [v5 setObject:v89 forKey:v84];

                    v228 = 0;
                    v90 = v217;
                    goto LABEL_196;
                  }
                }

                v228 = v86;
LABEL_89:

                LODWORD(v37) = v218;
                v39 = v229;
LABEL_90:
                v92 = [v39 storeIdentifier];

                if (v92)
                {
                  v93 = [v39 storeIdentifier];
                  v94 = [v212 objectForKeyedSubscript:v93];

                  v95 = [v94 objectAtIndex:0];
                  v96 = [v94 objectAtIndex:1];
                  if (!v95)
                  {
                    v97 = v37;
                    v250[0] = v39;
                    v250[1] = v25;
                    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:2];
                    v98 = [v39 storeIdentifier];
                    [v212 setObject:v37 forKeyedSubscript:v98];

                    v25 = v227;
                    goto LABEL_98;
                  }

                  if (v95 != v228)
                  {
                    if ([v95 type] == 26)
                    {
                      v97 = v37;
                      v37 = v228;
                      v228 = v95;
                      goto LABEL_98;
                    }

                    if ([v39 type] == 26)
                    {
                      v97 = v37;
                      handleHiddenResult();
                      [v96 removeResults:v95];
                      v37 = v228;
                      v228 = 0;
LABEL_98:

                      LODWORD(v37) = v97;
                    }
                  }
                }

                v99 = [v39 sectionBundleIdentifier];
                v100 = [v99 isEqualToString:v214];

                if (!v100)
                {
                  goto LABEL_125;
                }

                v101 = [v39 valueForAttribute:v204 withType:objc_opt_class()];
                v84 = v101;
                if (v101)
                {
                  if ([v101 length] >= 0x24)
                  {
                    v102 = [v84 substringToIndex:36];
                    if (v102)
                    {
                      v103 = v102;
                      v104 = [v193 objectForKeyedSubscript:v102];
                      v105 = v104;
                      if (v104)
                      {
                        v226 = v103;
                        v106 = [v104 objectAtIndexedSubscript:0];
                        v192 = v105;
                        v196 = [v105 objectAtIndexedSubscript:1];
                        v107 = v106;
                        v108 = [v106 valueForAttribute:v187 withType:objc_opt_class()];
                        v109 = [v229 valueForAttribute:v187 withType:objc_opt_class()];
                        v110 = [v108 earlierDate:v188];

                        v111 = [v109 earlierDate:v188];

                        v112 = [v108 earlierDate:v109];

                        v113 = v110 != v108;
                        if (v110 != v108 || v111 != v109)
                        {
                          if (v111 == v109)
                          {
                            v113 = 1;
                          }

                          if (v113)
                          {
                            v118 = v110 == v108;
                            if (v110 != v108 && v111 == v109)
                            {
                              goto LABEL_118;
                            }

                            v117 = v106;
                            if (v118 || v111 == v109)
                            {
                              LODWORD(v37) = v218;
                              goto LABEL_123;
                            }

                            if (v112 == v108)
                            {
                              v120 = v106;
                              goto LABEL_119;
                            }

                            v114 = v229;
                            v119 = v229;

                            v247 = v119;
                            v116 = &v247;
                          }

                          else
                          {
                            v114 = v229;
                            v122 = v229;

                            v248 = v122;
                            v116 = &v248;
                          }

LABEL_121:
                          LODWORD(v37) = v218;
                          v116[1] = v219;
                          v123 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
                          [v193 setObject:v123 forKeyedSubscript:v226];

                          v124 = v196;
                          v121 = v114;
                          v120 = v114;
                          v117 = v107;
                          v229 = v107;
                          v219 = v124;
                          goto LABEL_122;
                        }

                        if (v112 == v108)
                        {
                          v114 = v229;
                          v115 = v229;

                          v249 = v115;
                          v116 = &v249;
                          goto LABEL_121;
                        }

LABEL_118:
                        v117 = v106;
                        v120 = v106;
LABEL_119:
                        LODWORD(v37) = v218;
                        v121 = v228;
LABEL_122:
                        v125 = v117;

                        v228 = v120;
LABEL_123:
                        v103 = v226;
                        v105 = v192;

                        v8 = v216;
                      }

                      else
                      {
                        v246[0] = v229;
                        v246[1] = v219;
                        v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v246 count:2];
                        [v193 setObject:v117 forKeyedSubscript:v103];
                      }

                      v39 = v229;
LABEL_125:
                      v126 = [v39 sectionBundleIdentifier];
                      v127 = [v126 isEqualToString:v209];

                      if (v127)
                      {
                        v128 = [v39 valueForAttribute:v202 withType:objc_opt_class()];
                        if (v128)
                        {
                          v129 = [v198 objectForKeyedSubscript:v128];

                          v228 = v129;
                          if (!v129)
                          {
                            [v198 setObject:v39 forKeyedSubscript:v128];
                            v228 = 0;
                          }
                        }
                      }

                      v130 = [v39 sectionBundleIdentifier];
                      v131 = [v130 isEqualToString:v208];

                      v229 = v39;
                      if (!v131)
                      {
                        v136 = v210;
                        goto LABEL_144;
                      }

                      v84 = [v39 identifier];
                      if (v84)
                      {
                        v132 = [v203 objectForKeyedSubscript:v84];

                        if (v132)
                        {
                          v133 = [v132 rankingItem];
                          v134 = [v229 rankingItem];
                          v135 = v134;
                          if (!v133 || !v134 || ![v133 isTopHit] || v133 != v135 || objc_msgSend(v135, "isServerAlternativeResult"))
                          {

                            goto LABEL_142;
                          }

                          v172 = [v25 bundleIdentifier];
                          v173 = [v172 isEqualToString:v185];

                          v25 = v227;
                          v136 = v210;
                          if (!v173)
                          {
                            v228 = v132;
                            v5 = v220;
                            goto LABEL_197;
                          }

LABEL_143:

                          v228 = v132;
                          v39 = v229;
LABEL_144:
                          v137 = [v39 sectionBundleIdentifier];
                          v138 = [v137 isEqualToString:v207];

                          if (v138)
                          {
                            v139 = [v39 url];
                            if (v139)
                            {
                              v140 = [v197 objectForKeyedSubscript:v139];

                              v228 = v140;
                              v5 = v220;
                              if (!v140)
                              {
                                [v197 setObject:v39 forKeyedSubscript:v139];
                                v228 = 0;
                              }
                            }

                            else
                            {
                              v5 = v220;
                            }
                          }

                          else
                          {
                            v5 = v220;
                          }

                          v141 = [v39 sectionBundleIdentifier];
                          v142 = [v141 isEqualToString:v213];

                          if (v142)
                          {
                            v143 = [v39 valueForAttribute:v200 withType:objc_opt_class()];
                            if (v143)
                            {
                              v144 = [v136 objectForKeyedSubscript:v143];
                              v145 = v144;
                              if (v144)
                              {
                                v146 = [v144 objectAtIndexedSubscript:0];
                                v147 = [v146 sectionBundleIdentifier];
                                v148 = [v147 isEqualToString:v211];

                                if (v148)
                                {
                                  v149 = [v145 objectAtIndexedSubscript:1];
                                  handleHiddenResult();
                                  [v149 removeResults:v146];

                                  v228 = 0;
                                }

                                v5 = v220;
                                v25 = v227;
                              }

                              else
                              {
                                v245[0] = v39;
                                v245[1] = v25;
                                v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:2];
                                [v136 setObject:v146 forKeyedSubscript:v143];
                              }
                            }
                          }

                          v150 = [v39 sectionBundleIdentifier];
                          v151 = [v150 isEqualToString:v211];

                          if (v151)
                          {
                            v152 = [v39 identifier];
                            v153 = [v136 objectForKeyedSubscript:v152];
                            v154 = v153;
                            if (v153)
                            {
                              v155 = [v153 objectAtIndexedSubscript:0];
                              v156 = [v155 sectionBundleIdentifier];
                              v157 = [v156 isEqualToString:v213];

                              if (v157)
                              {
                                v155 = v155;

                                v228 = v155;
                              }

                              v5 = v220;
                              v25 = v227;
                            }

                            else
                            {
                              v244[0] = v39;
                              v244[1] = v25;
                              v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v244 count:2];
                              [v136 setObject:v155 forKeyedSubscript:v152];
                            }
                          }

                          v158 = [v39 sectionBundleIdentifier];
                          v159 = [v158 isEqualToString:v206];

                          if (v159)
                          {
                            v160 = [v39 identifier];
                            v161 = [v160 rangeOfCharacterFromSet:v201];
                            if (v161 != 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v162 = v161;
                              if (v161 < [v160 length])
                              {
                                v163 = [v160 substringToIndex:v162];
                                v164 = [v160 substringWithRange:{v162 + 1, objc_msgSend(v160, "length") + ~v162}];
                                if ([v163 length] && objc_msgSend(v164, "length"))
                                {
                                  v37 = [v8 objectForKeyedSubscript:v164];
                                  [v37 objectAtIndexedSubscript:1];
                                  v166 = v165 = v8;
                                  v167 = [v37 objectAtIndexedSubscript:0];
                                  if (v37)
                                  {
                                    if ([v163 compare:v166] == 1)
                                    {
                                      v242 = v39;
                                      v243 = v163;
                                      v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v242 count:2];
                                      [v216 setObject:v168 forKeyedSubscript:v164];

                                      v169 = v39;
                                      v170 = v169;
                                      v25 = v227;
                                      v171 = v170;
                                    }

                                    else
                                    {
                                      v170 = v167;
                                      v171 = v228;
                                    }

                                    v228 = v170;
                                  }

                                  else
                                  {
                                    v242 = v39;
                                    v243 = v163;
                                    v171 = [MEMORY[0x277CBEA60] arrayWithObjects:&v242 count:2];
                                    [v165 setObject:v171 forKeyedSubscript:v164];
                                  }

                                  v8 = v216;
                                  LODWORD(v37) = v218;
                                  v39 = v229;
                                }
                              }
                            }
                          }

                          if (v228)
                          {
                            v174 = [v39 inlineCard];
                            if (v174)
                            {
                              [v228 setInlineCard:v174];
                            }

                            v84 = [v39 compactCard];

                            if (v84)
                            {
                              [v228 setCompactCard:v84];
                            }

                            v37 = [v229 punchout];
                            if (v37)
                            {
                              v175 = [v228 punchout];

                              if (!v175)
                              {
                                [v228 setPunchout:v37];
                              }
                            }

                            v86 = [v229 completedQuery];
                            v176 = [v229 completedQuery];

                            if (v176)
                            {
                              [v228 setCompletedQuery:v86];
                            }

                            v177 = [v229 completion];

                            if (v177)
                            {
                              v178 = [v229 completion];
                              [v228 setCompletion:v178];
                            }

                            handleHiddenResult();
                            v90 = [v219 unsignedIntValue];
LABEL_196:
                            [v223 addIndex:v90];

                            LODWORD(v37) = v218;
                            goto LABEL_197;
                          }

                          v228 = 0;
LABEL_199:

                          v35 = (v37 + 1);
                          v179 = [v25 resultSet];
                          v180 = [v179 count];

                          v181 = v219;
                          v36 = v219;
                          v37 = v35;
                          if (v180 <= v35)
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        [v203 setObject:v229 forKeyedSubscript:v84];
                      }

                      else
                      {
                        v132 = v228;
                      }

LABEL_142:
                      v136 = v210;
                      goto LABEL_143;
                    }
                  }
                }

LABEL_197:

                v39 = v229;
                goto LABEL_199;
              }
            }

            else
            {
              v252[0] = v83;
              v252[1] = v25;
              v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:2];
              [v5 setObject:v91 forKey:v84];
            }

            break;
          }

          v228 = 0;
          goto LABEL_89;
        }

LABEL_206:
        v16 = v199 + 1;
      }

      while (v199 + 1 != v195);
      v195 = [obj countByEnumeratingWithState:&v238 objects:v257 count:16];
    }

    while (v195);
  }

  v184 = *MEMORY[0x277D85DE8];
}

- (void)addDictionarySections:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v49 = self;
  v5 = self->_actualSentSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    v9 = *MEMORY[0x277D65CC8];
    v10 = *MEMORY[0x277D65B08];
    v47 = v4;
    v48 = v5;
    v46 = *MEMORY[0x277D65CC8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        if ([v12 resultsCount])
        {
          v13 = [v12 bundleIdentifier];
          v14 = [v13 isEqualToString:v9];

          if (v14)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v15 = [v12 resultSet];
            v16 = [v15 countByEnumeratingWithState:&v62 objects:v73 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v63;
              while (2)
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v63 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = [*(*(&v62 + 1) + 8 * j) sectionBundleIdentifier];
                  v21 = [v20 isEqualToString:v10];

                  if (v21)
                  {
                    v24 = 0;
                    v4 = v47;
                    v5 = v48;
                    goto LABEL_22;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v62 objects:v73 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            v5 = v48;
            v9 = v46;
          }

          else
          {
            v22 = [v12 bundleIdentifier];
            v23 = [v22 isEqualToString:v10];

            if (v23)
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v15 = [v12 resultSet];
              v42 = [v15 countByEnumeratingWithState:&v58 objects:v72 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v59;
                v4 = v47;
                v24 = 1;
                while (2)
                {
                  for (k = 0; k != v43; ++k)
                  {
                    if (*v59 != v44)
                    {
                      objc_enumerationMutation(v15);
                    }

                    if ([*(*(&v58 + 1) + 8 * k) topHit] > 0)
                    {
                      v24 = 0;
                      goto LABEL_22;
                    }
                  }

                  v43 = [v15 countByEnumeratingWithState:&v58 objects:v72 count:16];
                  if (v43)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                v24 = 1;
                v4 = v47;
              }

LABEL_22:

              goto LABEL_24;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
      v24 = 1;
      v4 = v47;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_24:

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v25 = v4;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    v29 = *MEMORY[0x277D65A60];
LABEL_26:
    v30 = 0;
    while (1)
    {
      if (*v55 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v31 = *(*(&v54 + 1) + 8 * v30);
      v32 = [v31 bundleIdentifier];
      v33 = [v32 isEqualToString:v29];

      if (v33)
      {
        break;
      }

      if (v27 == ++v30)
      {
        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v54 objects:v71 count:16];
        if (v27)
        {
          goto LABEL_26;
        }

        goto LABEL_43;
      }
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = [v31 resultSet];
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v70 count:16];
    if (!v35)
    {
LABEL_41:

      goto LABEL_43;
    }

    v36 = v35;
    v37 = *v51;
LABEL_35:
    v38 = 0;
    while (1)
    {
      if (*v51 != v37)
      {
        objc_enumerationMutation(v34);
      }

      if ([*(*(&v50 + 1) + 8 * v38) topHit] >= 1)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [v34 countByEnumeratingWithState:&v50 objects:v70 count:16];
        if (v36)
        {
          goto LABEL_35;
        }

        goto LABEL_41;
      }
    }

    if (v24)
    {
      goto LABEL_43;
    }

    [v31 clearResults];
    actualSentSections = v25;
  }

  else
  {
LABEL_43:

    v39 = [(NSArray *)v49->_actualSentSections arrayByAddingObjectsFromArray:v25];
    actualSentSections = v49->_actualSentSections;
    v49->_actualSentSections = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)sendResults:(id)a3 reset:(BOOL)a4 partiallyComplete:(BOOL)a5 update:(BOOL)a6 complete:(BOOL)a7 unchanged:(BOOL)a8 delayedTopHit:(BOOL)a9 reason:(int)a10
{
  v358 = a4;
  v359 = a7;
  v357 = a6;
  v10 = a5;
  v487 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = [(SPQueryTask *)self query];
  v14 = [v13 queryContext];
  v15 = [v14 isSearchToolClient];

  v374 = v15;
  if ((v15 & 1) == 0)
  {
    [(SPFederatedQueryTask *)self serverSideDedupe:v12];
  }

  v16 = v12;
  v354 = [(NSArray *)v12 count];
  if (v354)
  {
    if ([(NSArray *)self->_sentSections count])
    {
      v17 = [(SPFederatedQueryTask *)self didReceiveCoreSpotlightProgress];
      if (a10 <= 1 && v17)
      {
        [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
        v18 = copyForResending(self->_actualSentSections);
        actualSentSections = self->_actualSentSections;
        self->_actualSentSections = v18;
      }

      else if (a10 == 3)
      {
        v22 = [(NSArray *)v12 firstObject];
        [v22 bundleIdentifier];
        v23 = v362 = v12;
        v24 = [(NSArray *)self->_sentSections firstObject];
        v25 = [v24 bundleIdentifier];
        v26 = [v23 isEqual:v25];

        if (v26)
        {
          [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
          v27 = [(NSArray *)v362 copy];
        }

        else
        {
          v27 = 0;
        }

        v28 = copyForResending(self->_actualSentSections);
        v29 = self->_actualSentSections;
        self->_actualSentSections = v28;

        v12 = v16;
        if (v27)
        {
          goto LABEL_23;
        }
      }

      if ((v374 & 1) != 0 || [(SPFederatedQueryTask *)self isBullseyeCommittedSearch])
      {
        v30 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{-[NSArray count](self->_sentSections, "count")}];
        v31 = v30;
        if (a9)
        {
          [v30 addObjectsFromArray:v16];
          sentSections = self->_sentSections;
        }

        else
        {
          [v30 addObjectsFromArray:self->_sentSections];
          sentSections = v16;
        }

        [v31 addObjectsFromArray:sentSections];
        v27 = [v31 array];

        goto LABEL_23;
      }

      v21 = [(NSArray *)self->_sentSections arrayByAddingObjectsFromArray:v12];
    }

    else
    {
      v21 = [(NSArray *)v12 copy];
    }

    v27 = v21;
LABEL_23:
    objc_storeStrong(&self->_sentSections, v27);

    v20 = 1;
    goto LABEL_24;
  }

  v20 = v357 || v359 || v358 || v10;
LABEL_24:
  v355 = v20;
  v33 = [(SPQueryTask *)self query];
  v34 = [v33 queryContext];
  v35 = [v34 isSearchToolClient];

  v381 = self;
  v353 = v10;
  if (v35)
  {
    obj = 0;
    v380 = 0;
    v413 = 0;
    v36 = 0;
    v420 = 0;
    v37 = -1.79769313e308;
    v38 = v16;
    goto LABEL_138;
  }

  v370 = SSMaxSectionsBelowSuggestions();
  v467 = 0u;
  v468 = 0u;
  v469 = 0u;
  v470 = 0u;
  v39 = v16;
  v414 = [(NSArray *)v39 countByEnumeratingWithState:&v467 objects:v486 count:16];
  if (!v414)
  {
    v380 = 0;
    v413 = 0;
    v36 = 0;
    v420 = 0;
    v37 = -1.79769313e308;
    goto LABEL_63;
  }

  v380 = 0;
  v36 = 0;
  v420 = 0;
  v405 = *v468;
  v413 = 0;
  v391 = *MEMORY[0x277D65BE0];
  v398 = *MEMORY[0x277D65C10];
  v387 = *MEMORY[0x277D65C88];
  v382 = *MEMORY[0x277D65CC8];
  v37 = -1.79769313e308;
  obja = v39;
  do
  {
    for (i = 0; i != v414; ++i)
    {
      v421 = v36;
      if (*v468 != v405)
      {
        objc_enumerationMutation(obja);
      }

      v41 = *(*(&v467 + 1) + 8 * i);
      v42 = [v41 bundleIdentifier];
      v43 = [v42 isEqual:v398];

      if (v43)
      {
        v44 = v41;

        v421 = v44;
      }

      v45 = [v41 bundleIdentifier];
      v46 = [v45 isEqual:v391];

      if (v46)
      {
        v47 = v41;

        v420 = v47;
      }

      v48 = [v41 bundleIdentifier];
      v49 = [v48 isEqual:v387];

      if (v49)
      {
        v50 = v41;

        v413 = v50;
      }

      v51 = [v41 bundleIdentifier];
      if ([v51 isEqualToString:v382])
      {
        v52 = [v41 results];
        v53 = [v52 count];

        if (v53 != 1)
        {
          goto LABEL_41;
        }

        v51 = v380;
        v380 = v41;
      }

LABEL_41:
      v465 = 0u;
      v466 = 0u;
      v463 = 0u;
      v464 = 0u;
      v54 = [v41 results];
      v55 = [v54 countByEnumeratingWithState:&v463 objects:v485 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = 0;
        v58 = *v464;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v464 != v58)
            {
              objc_enumerationMutation(v54);
            }

            v60 = *(*(&v463 + 1) + 8 * j);
            v61 = [v60 type];
            v62 = [v60 type];
            if (v61 != 36)
            {
              v67 = v62;
              if ([v60 type] != 2 && v67 != 37)
              {
                continue;
              }
            }

            v63 = [v60 rankingItem];
            v64 = [v63 L2FeatureVector];
            [v64 originalL2Score];
            v66 = v65;

            if (v37 < v66)
            {
              v37 = v66;
            }

            v57 = 1;
          }

          v56 = [v54 countByEnumeratingWithState:&v463 objects:v485 count:16];
        }

        while (v56);

        if ((v57 & 1) != 0 && ([(SPFederatedQueryTask *)v381 isNLPSearch]|| [(SPFederatedQueryTask *)v381 isPeopleSearch]))
        {
          [v41 setMaxInitiallyVisibleResults:{objc_msgSend(v41, "resultsCount")}];
        }
      }

      else
      {
      }

      v36 = v421;
    }

    v39 = obja;
    v414 = [(NSArray *)obja countByEnumeratingWithState:&v467 objects:v486 count:16];
  }

  while (v414);
LABEL_63:

  if (a10 != 4)
  {
    v68 = MEMORY[0x277D659B0];
    v69 = [(SPQueryTask *)v381 query];
    v70 = [v69 queryContext];
    v71 = [v68 moveShortcutsToRelatedAppSectionsForAllSections:v39 isAsYouTypeTopHitSearch:objc_msgSend(v70 sectionBuilderBlock:{"queryKind") == 2, &__block_literal_global_308}];

    v39 = v71;
  }

  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v38 = v39;
  v72 = [(NSArray *)v38 countByEnumeratingWithState:&v459 objects:v484 count:16];
  if (!v72)
  {
    obj = 0;
    goto LABEL_137;
  }

  v73 = v72;
  obj = 0;
  v74 = *v460;
  v75 = *MEMORY[0x277D65BE0];
  v76 = *MEMORY[0x277D65C10];
  v360 = *MEMORY[0x277CC2388];
  v365 = *MEMORY[0x277CC2370];
  v422 = v36;
  v368 = *v460;
  v392 = *MEMORY[0x277D65BE0];
  v406 = *MEMORY[0x277D65C10];
  v363 = v38;
  while (2)
  {
    v77 = 0;
    while (2)
    {
      if (*v460 != v74)
      {
        objc_enumerationMutation(v38);
      }

      v78 = *(*(&v459 + 1) + 8 * v77);
      v79 = [v78 bundleIdentifier];
      v80 = [v79 isEqual:v75];

      if (v80)
      {
        v81 = v36 == 0;
      }

      else
      {
        v81 = 1;
      }

      if (!v81)
      {
        goto LABEL_133;
      }

      v82 = [v78 bundleIdentifier];
      v83 = [v82 isEqual:v76];

      if (v83 && v420 != 0)
      {
        goto LABEL_133;
      }

      v85 = [v78 resultsCount];
      if (!v85)
      {
        goto LABEL_133;
      }

      v415 = v85;
      if ([(SPFederatedQueryTask *)v381 isScopedAppSearch])
      {
        [v78 setMaxInitiallyVisibleResults:50];
        v86 = 50;
        goto LABEL_122;
      }

      if (![SPFederatedQueryTask sectionSupportsShowMoreInApp:v78])
      {
        v96 = [v78 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

        if (IsSyndicatedPhotos)
        {
          v86 = 14;
        }

        else
        {
          v98 = [(SPQueryTask *)v381 query];
          v86 = [v98 maxCount];
        }

        goto LABEL_122;
      }

      v86 = [v78 maxInitiallyVisibleResults];
      if (v374 & 1) != 0 || (SPHideSearchThroughSuggestions())
      {
        goto LABEL_109;
      }

      v457 = 0u;
      v458 = 0u;
      v455 = 0u;
      v456 = 0u;
      v87 = [v78 resultSet];
      v88 = [v87 countByEnumeratingWithState:&v455 objects:v483 count:16];
      if (!v88)
      {
LABEL_107:

        goto LABEL_109;
      }

      v89 = v88;
      v90 = v86;
      v91 = *v456;
      while (2)
      {
        v92 = 0;
LABEL_89:
        if (*v456 != v91)
        {
          objc_enumerationMutation(v87);
        }

        v93 = *(*(&v455 + 1) + 8 * v92);
        if ([v93 isFuzzyMatch])
        {
LABEL_95:
          if (v89 == ++v92)
          {
            v89 = [v87 countByEnumeratingWithState:&v455 objects:v483 count:16];
            if (v89)
            {
              continue;
            }

            v74 = v368;
            v76 = v406;
            v86 = v90;
            goto LABEL_106;
          }

          goto LABEL_89;
        }

        break;
      }

      v94 = [v93 userActivityType];
      v95 = v94;
      if (v94 && ![v94 isEqualToString:v360])
      {

        goto LABEL_95;
      }

      v99 = obj;
      if (!obj)
      {
        v99 = objc_opt_new();
      }

      obj = v99;
      v100 = [v78 title];
      v74 = v368;
      v76 = v406;
      v86 = v90;
      if (v100)
      {
        v101 = v100;
        v102 = [v78 bundleIdentifier];

        if (v102)
        {
          v103 = [v78 bundleIdentifier];
          [(NSArray *)obj addObject:v103];

          v87 = [v78 title];
          v86 = v90;
          [(NSArray *)obj addObject:v87];
LABEL_106:
          v38 = v363;
          goto LABEL_107;
        }
      }

      v38 = v363;
LABEL_109:
      if (v370)
      {
        v399 = v86;
        v104 = objc_opt_new();
        v105 = objc_opt_new();
        [v105 setActivityType:v365];
        v383 = v105;
        [v104 setUserActivityData:v105];
        v453 = 0u;
        v454 = 0u;
        v451 = 0u;
        v452 = 0u;
        v106 = [v78 results];
        v107 = [v106 countByEnumeratingWithState:&v451 objects:v482 count:16];
        if (v107)
        {
          v108 = v107;
          v109 = *v452;
          do
          {
            for (k = 0; k != v108; ++k)
            {
              if (*v452 != v109)
              {
                objc_enumerationMutation(v106);
              }

              v111 = *(*(&v451 + 1) + 8 * k);
              v112 = [v111 moreResultsPunchout];
              v113 = v112;
              if (v112)
              {
                v114 = v112;
              }

              else
              {
                v114 = v104;
              }

              [v111 setMoreResultsPunchout:v114];
            }

            v108 = [v106 countByEnumeratingWithState:&v451 objects:v482 count:16];
          }

          while (v108);
        }

        v36 = v422;
        v38 = v363;
        v74 = v368;
        v86 = v399;
        v76 = v406;
      }

      else
      {
        v36 = v422;
      }

LABEL_122:
      v115 = SPLogForSPLogCategoryQuery();
      v116 = v115;
      if (*MEMORY[0x277D4BF48])
      {
        v117 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v117 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v115, v117))
      {
        v118 = [v78 title];
        v119 = [v78 domain];
        *buf = 138413058;
        *&buf[4] = v118;
        v478 = 2048;
        *v479 = v119;
        *&v479[8] = 2048;
        v480 = v86;
        LOWORD(v481[0]) = 2048;
        *(v481 + 2) = v415;
        _os_log_impl(&dword_26B71B000, v116, v117, "Sending section title:%@, domain:%ld, maxCount:%ld, resultCount:%ld", buf, 0x2Au);

        v76 = v406;
      }

      v120 = [v78 resultSet];
      if ([v120 count] <= v86)
      {
        v75 = v392;
      }

      else
      {
        v400 = v86;
        v121 = [(SPQueryTask *)v381 query];
        v122 = [v121 queryContext];
        v123 = [v122 isSearchToolClient];

        if (v123)
        {
          v75 = v392;
          v76 = v406;
          goto LABEL_133;
        }

        v120 = [v78 resultSet];
        v124 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:v120 range:0 copyItems:{v400, 1}];
        [v78 setResultSet:v124];

        v75 = v392;
        v76 = v406;
      }

LABEL_133:
      if (++v77 != v73)
      {
        continue;
      }

      break;
    }

    v73 = [(NSArray *)v38 countByEnumeratingWithState:&v459 objects:v484 count:16];
    if (v73)
    {
      continue;
    }

    break;
  }

LABEL_137:

  self = v381;
LABEL_138:
  if (!v355)
  {
LABEL_215:
    v200 = 0;
    goto LABEL_291;
  }

  v364 = v38;
  v125 = SPLogForSPLogCategoryQuery();
  v126 = v125;
  if (*MEMORY[0x277D4BF48])
  {
    v127 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v127 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v125, v127))
  {
    v128 = [(NSArray *)v364 count];
    *buf = 134219008;
    *&buf[4] = v128;
    v478 = 1024;
    *v479 = v359;
    *&v479[4] = 1024;
    *&v479[6] = v358;
    LOWORD(v480) = 1024;
    *(&v480 + 2) = v353;
    HIWORD(v480) = 1024;
    v481[0] = v357;
    _os_log_impl(&dword_26B71B000, v126, v127, "Sending results, sectionCount:%ld, complete:%d, reset:%d, partiallyComplete:%d, update:%d", buf, 0x24u);
  }

  if (sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__onceToken != -1)
  {
    [SPFederatedQueryTask sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:];
  }

  v129 = v364;
  v130 = SPMaxCountTopHits();
  SPMinTopHitThresholdForBigResult();
  v132 = v131;
  if ([(SPFederatedQueryTask *)self isBullseyeCommittedSearch])
  {
    if (self->_isPeopleSearch)
    {
      v133 = SPMaxSectionsBeforeShowMoreWithScopedSearch();
    }

    else
    {
      v133 = SPMaxSectionsBeforeShowMore();
    }
  }

  else
  {
    v133 = SSMaxSectionsBelowSuggestions();
  }

  if (v354 >= v133)
  {
    v134 = v133;
  }

  else
  {
    v134 = v354;
  }

  if (!self->_topHitsManager)
  {
    v423 = objc_alloc(MEMORY[0x277D658D8]);
    v135 = [(SPQueryTask *)self query];
    v136 = [v135 queryID];
    categoryToResultMapping = self->_categoryToResultMapping;
    topHitSection = v381->_topHitSection;
    [(SPQueryTask *)v381 query];
    v139 = v407 = v130;
    [v139 queryContext];
    v141 = v140 = v134;
    v142 = topHitSection;
    self = v381;
    v143 = [v423 initWithQueryId:v136 categoryToResultMapping:categoryToResultMapping currentTopHitSection:v142 queryContext:v141 ranker:v381->_itemRanker];
    topHitsManager = v381->_topHitsManager;
    v381->_topHitsManager = v143;

    v134 = v140;
    v129 = v364;

    v130 = v407;
  }

  v424 = v36;
  if (v374)
  {
LABEL_157:
    v145 = v129;
  }

  else if (v354)
  {
    v146 = [(SPQueryTask *)self query];
    v147 = [v146 queryContext];
    v148 = [v147 searchEntities];
    if (v148)
    {
      v401 = v134;
      v408 = v130;
      v393 = [(SPQueryTask *)self query];
      v149 = [v393 queryContext];
      v150 = [v149 searchEntities];
      if ([v150 count])
      {
        v151 = [(SPQueryTask *)self query];
        v152 = [v151 queryContext];
        v153 = [v152 searchEntities];
        v154 = [v153 lastObject];
        v155 = [v154 isScopedSearch];

        self = v381;
        v129 = v364;

        v36 = v424;
      }

      else
      {
        v155 = 0;
      }

      v134 = v401;
      v130 = v408;
    }

    else
    {
      v155 = 0;
    }

    if (v357 || (v155 & 1) != 0)
    {
      goto LABEL_157;
    }

    v156 = [(NSArray *)self->_actualSentSections firstObject];
    v157 = v156;
    if (v156)
    {
      v158 = [v156 bundleIdentifier];
      v159 = [v158 isEqual:@"com.apple.spotlight.tophits"];

      if ((v159 & 1) == 0)
      {

        v157 = 0;
      }

      v129 = v364;
    }

    v160 = self->_topHitsManager;
    v161 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch]|| [(SPFederatedQueryTask *)self isEntitySearch];
    v450 = v157;
    v145 = [(SSBullseyeTopHitsManager *)v160 tagOrFilterHiddenSectionsForClient:v129 isCommittedSearch:v161 maxVisibleSections:v134 maxTopHitsCount:v130 minThresholdForBigResult:&v450 topHitSection:v132];
    v162 = v450;

    if (v162 && [v162 resultsCount])
    {
      self->_sentTaggedTopHits = 1;
    }
  }

  else
  {
    v145 = 0;
  }

  v163 = [(SPQueryTask *)self query];
  [v163 queryIdent];
  v164 = v145;
  v165 = v164;
  if (v164)
  {
    v166 = v164;
  }

  else
  {
    v166 = MEMORY[0x277CBEBF8];
  }

  if (a10 != 4)
  {
    v176 = v166;
    goto LABEL_203;
  }

  if (![(NSArray *)v166 count])
  {
    v176 = 0;
    goto LABEL_203;
  }

  v167 = [(NSArray *)v166 objectAtIndex:0];
  v168 = [v167 bundleIdentifier];
  v169 = [v168 isEqualToString:@"com.apple.spotlight.tophits"];

  if (!v169)
  {
LABEL_201:

    v176 = 0;
    goto LABEL_202;
  }

  v170 = [v167 resultSet];
  v171 = [v170 objectAtIndexedSubscript:0];
  v172 = [v171 sectionBundleIdentifier];

  if (!v172 || !priorityIndexEligibleBundleIdentifer(v172))
  {
LABEL_200:

    goto LABEL_201;
  }

  if (!SSIsCounterFactual())
  {
    v177 = SSPriorityIndexFastPathEnabled();
    v178 = objc_alloc(MEMORY[0x277CCAD78]);
    if (v177)
    {
      v179 = [v178 initWithUUIDString:*MEMORY[0x277D65D18]];
      SSDefaultsLogForTrigger();

      goto LABEL_195;
    }

    v180 = [v178 initWithUUIDString:*MEMORY[0x277D65D10]];
    SSDefaultsLogForTrigger();

    v175 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_198:
      _os_log_impl(&dword_26B71B000, v175, OS_LOG_TYPE_DEFAULT, "Withholding priority index fast path because it's disabled", buf, 2u);
    }

LABEL_199:

    goto LABEL_200;
  }

  v173 = objc_alloc(MEMORY[0x277CCAD78]);
  v174 = [v173 initWithUUIDString:*MEMORY[0x277D65D18]];
  SSDefaultsLogForTrigger();

  if (!SSPriorityIndexFastPathEnabled())
  {
    v175 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_198;
    }

    goto LABEL_199;
  }

LABEL_195:
  *buf = v167;
  v176 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];

LABEL_202:
  self = v381;
LABEL_203:

  v409 = v176;
  if (!v176)
  {
    v199 = SPLogForSPLogCategoryDefault();
    v38 = v364;
    if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v199, OS_LOG_TYPE_DEFAULT, "Withholding early priority index results", buf, 2u);
    }

    [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
    goto LABEL_215;
  }

  v181 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a10 == 4 || (-[SPQueryTask query](v381, "query"), v182 = objc_claimAutoreleasedReturnValue(), [v182 queryContext], v183 = objc_claimAutoreleasedReturnValue(), v184 = objc_msgSend(v183, "isSearchToolClient"), v183, v182, (v184 & 1) != 0))
  {
    v185 = 0;
    v369 = 0;
    v186 = v409;
    goto LABEL_207;
  }

  v201 = [MEMORY[0x277D65960] isEnabled];
  if (a10 != 2 && v201 && [(SPFederatedQueryTask *)v381 isBullseyeNonCommittedSearch])
  {
    v202 = MEMORY[0x277D65960];
    v203 = [(SPQueryTask *)v381 query];
    v204 = [v203 queryContext];
    v205 = [(SSRankingManager *)v381->_rankingManager rankingConfiguration];
    [v202 setQueryIntentForQueryContext:v204 sections:v409 rankingInfo:v205];

    v206 = MEMORY[0x277D65960];
    v207 = [(SPQueryTask *)v381 query];
    v208 = [v207 queryContext];
    v209 = [v206 applySectionPolicyForQueryContext:v208 sections:v409];

    v409 = v209;
  }

  if (!v413)
  {
    v185 = 0;
    v369 = 0;
    goto LABEL_303;
  }

  v448 = 0u;
  v449 = 0u;
  v446 = 0u;
  v447 = 0u;
  v394 = v409;
  v210 = [v394 countByEnumeratingWithState:&v446 objects:v476 count:16];
  if (!v210)
  {
    v185 = 0;
    v369 = 0;
    goto LABEL_302;
  }

  v211 = v210;
  v185 = 0;
  v369 = 0;
  v212 = *v447;
  v213 = *MEMORY[0x277D65CC8];
  v388 = *MEMORY[0x277D65CE8];
  v371 = *MEMORY[0x277D65CC8];
  v375 = *v447;
  while (2)
  {
    v214 = 0;
    v384 = v211;
    while (2)
    {
      if (*v447 != v212)
      {
        objc_enumerationMutation(v394);
      }

      v416 = v214;
      v215 = *(*(&v446 + 1) + 8 * v214);
      v216 = [v215 bundleIdentifier];
      v217 = [v216 isEqual:v213];

      if (v217)
      {
        v218 = v215;

        v444 = 0u;
        v445 = 0u;
        v442 = 0u;
        v443 = 0u;
        v219 = [v218 results];
        v220 = [v219 countByEnumeratingWithState:&v442 objects:v475 count:16];
        if (v220)
        {
          v221 = v220;
          v402 = v218;
          v222 = *v443;
          while (1)
          {
            for (m = 0; m != v221; ++m)
            {
              if (*v443 != v222)
              {
                objc_enumerationMutation(v219);
              }

              v224 = *(*(&v442 + 1) + 8 * m);
              if (!v185)
              {
                v228 = [*(*(&v442 + 1) + 8 * m) contactIdentifier];
                if (v228)
                {

LABEL_239:
                  v230 = [v224 contactIdentifier];
                  v227 = v230;
                  if (v230)
                  {
                    v227 = v230;
                    v185 = v227;
                  }

                  else
                  {
                    v185 = [v224 personIdentifier];
                  }

LABEL_242:

                  continue;
                }

                v229 = [v224 personIdentifier];

                if (v229)
                {
                  goto LABEL_239;
                }
              }

              v225 = [v224 sectionBundleIdentifier];
              v226 = [v225 isEqualToString:@"com.apple.application"];

              if (v226 && ![v181 count])
              {
                v227 = [v224 resultBundleId];
                [v181 addObject:v227];
                goto LABEL_242;
              }
            }

            v221 = [v219 countByEnumeratingWithState:&v442 objects:v475 count:16];
            if (!v221)
            {
              v380 = v402;
              v213 = v371;
              v212 = v375;
              v211 = v384;
              goto LABEL_249;
            }
          }
        }

        v380 = v218;
LABEL_249:

        v36 = v424;
      }

      else
      {
        v231 = [v215 bundleIdentifier];
        v232 = [v231 isEqual:v388];

        if (v232)
        {
          v219 = v369;
          v369 = v215;
          goto LABEL_249;
        }
      }

      v214 = v416 + 1;
      if (v416 + 1 != v211)
      {
        continue;
      }

      break;
    }

    v211 = [v394 countByEnumeratingWithState:&v446 objects:v476 count:16];
    if (v211)
    {
      continue;
    }

    break;
  }

LABEL_302:

LABEL_303:
  v280 = [v36 resultSet];
  v281 = [v280 count];

  if (!v281)
  {
    v186 = v409;
    goto LABEL_371;
  }

  v390 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v404 = objc_opt_new();
  v361 = objc_opt_new();
  v282 = [v36 results];
  v283 = [v282 copy];

  v284 = [v420 results];
  v285 = [v284 copy];

  v440 = 0u;
  v441 = 0u;
  v438 = 0u;
  v439 = 0u;
  v377 = v285;
  v286 = [v377 countByEnumeratingWithState:&v438 objects:v474 count:16];
  if (v286)
  {
    v287 = v286;
    v396 = 0;
    v288 = *v439;
    do
    {
      for (n = 0; n != v287; ++n)
      {
        if (*v439 != v288)
        {
          objc_enumerationMutation(v377);
        }

        v290 = *(*(&v438 + 1) + 8 * n);
        v291 = [v290 contactIdentifier];

        if (v291)
        {
          v292 = [v290 contactIdentifier];
          [v404 setObject:v290 forKey:v292];

          if ((v396 & 1) != 0 || ([v290 contactIdentifier], v293 = objc_claimAutoreleasedReturnValue(), v294 = objc_msgSend(v293, "isEqualToString:", v185), v293, (v294 & 1) == 0))
          {
            [v390 addObject:v290];
          }

          else
          {
            v396 = 1;
          }
        }
      }

      v287 = [v377 countByEnumeratingWithState:&v438 objects:v474 count:16];
    }

    while (v287);
  }

  else
  {
    v396 = 0;
  }

  if (sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__onceTokenContact != -1)
  {
    [SPFederatedQueryTask sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:];
  }

  v436 = 0u;
  v437 = 0u;
  v434 = 0u;
  v435 = 0u;
  v373 = v283;
  v295 = [v373 countByEnumeratingWithState:&v434 objects:v473 count:16];
  if (!v295)
  {
    v418 = 0;
    goto LABEL_345;
  }

  v296 = v295;
  v418 = 0;
  v297 = *v435;
  while (2)
  {
    v298 = 0;
    while (2)
    {
      if (*v435 != v297)
      {
        objc_enumerationMutation(v373);
      }

      v299 = *(*(&v434 + 1) + 8 * v298);
      v300 = [v299 personIdentifier];

      if (v300)
      {
        v301 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store;
        v302 = [v299 personIdentifier];
        v433 = v418;
        v303 = [v301 unifiedContactWithIdentifier:v302 keysToFetch:sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch error:&v433];
        v304 = v433;

        if (v304)
        {
          if ([v304 code] != 200)
          {
            v305 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
            {
              v306 = [v304 localizedDescription];
              *buf = 138412290;
              *&buf[4] = v306;
              _os_log_impl(&dword_26B71B000, v305, OS_LOG_TYPE_DEFAULT, "*warn* CNContactStore fetch error: %@", buf, 0xCu);
            }

            goto LABEL_339;
          }

          goto LABEL_340;
        }

        v307 = [v299 personIdentifier];
        v308 = [v404 objectForKey:v307];

        if (v308)
        {
          v418 = 0;
        }

        else
        {
          v309 = [v299 personIdentifier];
          [v404 setObject:v299 forKey:v309];

          v310 = [v299 title];
          v311 = [v310 text];
          v305 = SSNormalizedQueryString();

          if (([v361 containsObject:v305] & 1) == 0)
          {
            [v361 addObject:v305];
            if ((v396 & 1) == 0)
            {
              v312 = [v299 personIdentifier];
              v313 = [v312 isEqualToString:v185];

              if (v313)
              {
                v304 = 0;
                v396 = 1;
                goto LABEL_339;
              }
            }

            [v390 addObject:v299];
          }

          v304 = 0;
LABEL_339:

LABEL_340:
          v418 = v304;
        }
      }

      if (v296 != ++v298)
      {
        continue;
      }

      break;
    }

    v296 = [v373 countByEnumeratingWithState:&v434 objects:v473 count:16];
    if (v296)
    {
      continue;
    }

    break;
  }

LABEL_345:

  v314 = v390;
  v315 = [v390 count];
  if (v315 >= SPMaxVisibleResultsCountPerSection())
  {
    v316 = SPMaxVisibleResultsCountPerSection();
  }

  else
  {
    v316 = [v390 count];
  }

  v386 = v316;
  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  v430 = 0u;
  v186 = v409;
  v317 = [v186 countByEnumeratingWithState:&v429 objects:v472 count:16];
  if (v317)
  {
    v318 = v317;
    v411 = v186;
    v319 = 0;
    v320 = *v430;
    v321 = *MEMORY[0x277D65BE0];
    v367 = *MEMORY[0x277D65C10];
    v397 = -1;
    do
    {
      v322 = 0;
      v356 = v319;
      do
      {
        if (*v430 != v320)
        {
          objc_enumerationMutation(v411);
        }

        v323 = *(*(&v429 + 1) + 8 * v322);
        v324 = [v323 bundleIdentifier];
        v325 = [v324 isEqual:v321];

        if (v325)
        {
          [v323 setMaxInitiallyVisibleResults:v386];
          [v323 setResults:v390];
        }

        else
        {
          v326 = [v323 bundleIdentifier];
          v327 = [v326 isEqual:v367];

          v328 = v397;
          if (v327)
          {
            v328 = v319;
            v329 = v420 == 0;
          }

          else
          {
            v329 = 0;
          }

          if (v329)
          {
            [v323 setBundleIdentifier:v321];
            [v323 setMaxInitiallyVisibleResults:v386];
            [v323 setResults:v390];
            v330 = obj;
            if (!obj)
            {
              v330 = objc_opt_new();
            }

            v331 = [v323 bundleIdentifier];
            [(NSArray *)v330 addObject:v331];

            v332 = [v323 title];
            obj = v330;
            [(NSArray *)v330 addObject:v332];
          }

          else
          {
            v397 = v328;
          }
        }

        ++v319;
        ++v322;
      }

      while (v318 != v322);
      v319 = v356 + v318;
      v318 = [v411 countByEnumeratingWithState:&v429 objects:v472 count:16];
    }

    while (v318);
    v186 = v411;

    if (v397 < 0)
    {
      v314 = v390;
      v333 = v404;
      v334 = v361;
    }

    else
    {
      v314 = v390;
      v333 = v404;
      v334 = v361;
      if (v420)
      {
        v335 = [v411 mutableCopy];
        [v335 removeObjectAtIndex:v397];
        v336 = v335;

        v186 = v336;
        goto LABEL_369;
      }
    }
  }

  else
  {
    v334 = v361;
    v333 = v404;
LABEL_369:
  }

LABEL_371:
  if (v413)
  {
    v427 = 0u;
    v428 = 0u;
    v425 = 0u;
    v426 = 0u;
    v186 = v186;
    v337 = [v186 countByEnumeratingWithState:&v425 objects:v471 count:16];
    if (v337)
    {
      v338 = v337;
      v339 = *v426;
      v340 = *MEMORY[0x277D65C88];
      v412 = v186;
      do
      {
        v341 = 0;
        v419 = v338;
        do
        {
          if (*v426 != v339)
          {
            objc_enumerationMutation(v412);
          }

          v342 = *(*(&v425 + 1) + 8 * v341);
          v343 = [v342 bundleIdentifier];
          v344 = [v343 isEqual:v340];

          if (v344)
          {
            v345 = [(SPQueryTask *)v381 query];
            v346 = [v345 queryContext];
            [v346 searchString];
            v347 = v340;
            v349 = v348 = v339;
            v350 = [(SPFederatedQueryTask *)v381 suggestionsWithSearchString:v349 sections:v412 topHitSection:v380 highestLocalScore:v37];
            [v342 setResults:v350];

            v339 = v348;
            v340 = v347;
            v338 = v419;
          }

          ++v341;
        }

        while (v338 != v341);
        v186 = v412;
        v338 = [v412 countByEnumeratingWithState:&v425 objects:v471 count:16];
      }

      while (v338);
    }
  }

LABEL_207:
  v187 = [(SPQueryTask *)v381 query];
  v188 = [v187 queryContext];
  v189 = [v188 isSearchToolClient];

  if (v189)
  {
    v190 = MEMORY[0x277D65978];
    v191 = [(SPQueryTask *)v381 query];
    v192 = [v191 queryContext];
    v193 = [v190 processSearchToolFinalResults:v186 queryContext:v192];

    v186 = v193;
  }

  v194 = [MEMORY[0x277D659C8] postProcessSectionsBasedOnTopHitSection:v186 withTopHitSection:v380];

  [MEMORY[0x277D659C8] finalizeTopHitsInSections:v194 withTopHitSection:v380];
  [MEMORY[0x277D65978] fillRankingPosition:v194];
  if (a10 == 2 && (-[SPQueryTask query](v381, "query"), v195 = objc_claimAutoreleasedReturnValue(), [v195 queryContext], v196 = objc_claimAutoreleasedReturnValue(), v197 = objc_msgSend(v196, "isSearchToolClient"), v196, v195, (v197 & 1) == 0))
  {
    v198 = v381;
    [(SPFederatedQueryTask *)v381 addDictionarySections:v194];
  }

  else
  {
    v198 = v381;
    objc_storeStrong(&v381->_actualSentSections, v194);
  }

  v233 = [(SPQueryTask *)v198 query];
  v234 = [v233 queryContext];
  v235 = [v234 isSearchToolClient];

  if ((v235 & 1) == 0)
  {
    v236 = [MEMORY[0x277D4BE78] sharedInstance];
    v389 = v198->_actualSentSections;
    v417 = [(SPQueryTask *)v198 query];
    v410 = [v417 queryContext];
    v385 = [v410 searchString];
    v395 = [(SPQueryTask *)v198 query];
    v376 = [v395 queryIdent];
    allowAnonymousDataCollection = v198->_allowAnonymousDataCollection;
    itemRanker = v198->_itemRanker;
    v237 = [(SSRankingManager *)v198->_rankingManager rankingConfiguration];
    v238 = [(SPQueryTask *)v198 query];
    v239 = [v238 internalDebug];
    [(SPQueryTask *)v198 query];
    v240 = v403 = v194;
    v241 = [v240 queryContext];
    v242 = [v241 keyboardPrimaryLanguage];
    LOBYTE(v351) = v239;
    [v236 willSendSections:v389 forQuery:v385 queryIdentifier:v376 allowAnonymousDataCollection:allowAnonymousDataCollection withRankerUsed:itemRanker withRankingConfiguration:v237 internalDebug:v351 keyboardPrimaryLanguage:v242 clientID:v198->_clientBundleID];

    v194 = v403;
  }

  if ([(SPFederatedQueryTask *)v198 isInternalDevice]&& v359)
  {
    [(SPFederatedQueryTask *)v381 sendTTRLogsWithSections:v381->_actualSentSections];
  }

  if ([v194 count])
  {
    v243 = 0;
    goto LABEL_263;
  }

  v244 = v381;
  if (v381->_sendStableSections)
  {
    v243 = [(NSArray *)v381->_stableSections count]!= 0;
LABEL_263:
    v244 = v381;
    v245 = [(SPQueryTask *)v381 query];
    v246 = [v245 cancelled];

    if ((v246 & 1) == 0)
    {
      v247 = v194;
      v248 = [objc_alloc(MEMORY[0x277D4BEB8]) initWithSections:v194 stableSections:v381->_stableSections];
      v249 = [(SPQueryTask *)v381 query];
      blendingTime = v381->_blendingTime;
      v251 = [(SPFederatedQueryTask *)v381 geoUserSessionEntityString];
      v252 = v251;
      v253 = &stru_287C35638;
      if (v251)
      {
        v253 = v251;
      }

      bundlesSupportingAppScoping = v381->_bundlesSupportingAppScoping;
      if (!bundlesSupportingAppScoping)
      {
        bundlesSupportingAppScoping = MEMORY[0x277CBEBF8];
      }

      v255 = obj;
      if (!obj)
      {
        v255 = MEMORY[0x277CBEBF8];
      }

      BYTE3(v351) = v243;
      BYTE2(v351) = a8;
      BYTE1(v351) = a9;
      LOBYTE(v351) = v359;
      [SPFederatedQueryTask searchQuery:v381 gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:v249 partiallyComplete:v248 priorityFastPath:v358 update:v353 complete:a10 == 4 delayedTopHit:v357 unchanged:blendingTime forceStable:v351 blendingDuration:v253 geoEntityString:bundlesSupportingAppScoping supportedAppScopes:v255 showMoreInAppInfo:?];
      goto LABEL_271;
    }
  }

  else
  {
    v271 = [(SPQueryTask *)v381 query];
    v272 = [v271 cancelled];

    if ((v272 & 1) == 0)
    {
      v247 = v194;
      v273 = objc_alloc(MEMORY[0x277D4BEB8]);
      v274 = MEMORY[0x277CBEBF8];
      v248 = [v273 initWithSections:MEMORY[0x277CBEBF8]];
      v249 = [(SPQueryTask *)v381 query];
      v275 = v381->_blendingTime;
      v276 = [(SPFederatedQueryTask *)v381 geoUserSessionEntityString];
      v252 = v276;
      v277 = &stru_287C35638;
      if (v276)
      {
        v277 = v276;
      }

      v278 = v381->_bundlesSupportingAppScoping;
      if (!v278)
      {
        v278 = v274;
      }

      v279 = obj;
      if (!obj)
      {
        v279 = v274;
      }

      BYTE3(v351) = 0;
      BYTE2(v351) = a8;
      LOWORD(v351) = v359;
      [SPFederatedQueryTask searchQuery:v381 gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:v249 partiallyComplete:v248 priorityFastPath:v358 update:v353 complete:a10 == 4 delayedTopHit:v357 unchanged:v275 forceStable:v351 blendingDuration:v277 geoEntityString:v278 supportedAppScopes:v279 showMoreInAppInfo:?];
LABEL_271:

      v244 = v381;
      v194 = v247;
    }
  }

  stableSections = v244->_stableSections;
  v244->_stableSections = 0;

  v257 = [(SPQueryTask *)v244 query];
  v258 = [v257 queryContext];
  v259 = [v258 isSearchToolClient];

  if ((v259 & 1) == 0)
  {
    v260 = objc_alloc(MEMORY[0x277D4C270]);
    v261 = [(SPQueryTask *)v244 query];
    v262 = [v260 initWithEvent:@"com.apple.spotlight.backend.query.end" timeInterval:0 queryId:{objc_msgSend(v261, "queryIdent")}];

    if (!v357)
    {
      v263 = [MEMORY[0x277D4BEC0] sharedProxy];
      v264 = [(SPQueryTask *)v381 query];
      v265 = [v264 queryIdent];
      v266 = [(SPXPCConnection *)v381->_connection bundleID];
      [v263 sendFeedbackType:21 feedback:v262 queryId:v265 clientID:v266];
    }

    v244 = v381;
  }

  if ([(NSMutableArray *)v244->_slowTokens count]|| [(NSMutableArray *)v244->_tokens count]|| [(NSMutableArray *)v244->_delayedStartTokens count])
  {
    v267 = 0;
  }

  else if ([(NSMutableArray *)v244->_delayedStartQueries count])
  {
    v267 = 0;
  }

  else
  {
    v267 = v359;
  }

  v36 = v424;
  if (v358)
  {
    [(SPFederatedQueryTask *)v381 externalID];
    kdebug_trace();
  }

  if (v359)
  {
    [(SPFederatedQueryTask *)v381 externalID];
    kdebug_trace();
  }

  if (v267)
  {
    v268 = v381->_categoryToResultMapping;
    v381->_categoryToResultMapping = 0;

    [(SPFederatedQueryTask *)v381 setServer_features:0];
    [(SPFederatedQueryTask *)v381 setTokens:0];
    [(SPFederatedQueryTask *)v381 setSlowTokens:0];
  }

  v38 = v364;
  if (a10 == 4)
  {
    v269 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v269, OS_LOG_TYPE_DEFAULT, "Sending early priority index results", buf, 2u);
    }

    v381->_sentPriority = 1;
  }

  v200 = v369;
LABEL_291:

  v270 = *MEMORY[0x277D85DE8];
}

id __107__SPFederatedQueryTask_sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  [v3 setDomain:1];
  [v3 setBundleIdentifier:v2];
  [v3 setMaxInitiallyVisibleResults:SPMaxVisibleResultsCountPerSection()];
  v4 = [MEMORY[0x277D4BE80] displayNameForBundleIdentifer:v2];

  [v3 setTitle:v4];

  return v3;
}

void __107__SPFederatedQueryTask_sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason___block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v1 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store;
  sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store = v0;

  v5[0] = *MEMORY[0x277CBD018];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch;
  sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (void)sendError:(id)a3
{
  v6 = a3;
  v4 = [(SPQueryTask *)self query];
  v5 = [v4 cancelled];

  if ((v5 & 1) == 0)
  {
    [(SPFederatedQueryTask *)self searchQueryEncounteredError:v6];
  }
}

- (void)sendQueryCompleted
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  v5 = MEMORY[0x277D4BF48];
  if (*MEMORY[0x277D4BF48])
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v6))
  {
    v22 = 67109120;
    v23 = qos_class_self();
    _os_log_impl(&dword_26B71B000, v4, v6, "QOS sendQueryCompleted 1: %d", &v22, 8u);
  }

  externalID = self->_externalID;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
  SDTraceAdd();
  v9 = SPLogForSPLogCategoryDefault();
  v10 = v9;
  if (*v5)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v9, v11))
  {
    v12 = qos_class_self();
    v22 = 67109120;
    v23 = v12;
    _os_log_impl(&dword_26B71B000, v10, v11, "QOS sendQueryCompleted 2: %d", &v22, 8u);
  }

  v13 = SPLogForSPLogCategoryQuery();
  v14 = v13;
  if (*v5)
  {
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v13, v15))
  {
    v16 = self->_externalID;
    v22 = 67109120;
    v23 = v16;
    _os_log_impl(&dword_26B71B000, v14, v15, "Completed query %d", &v22, 8u);
  }

  v17 = SPLogForSPLogCategoryTelemetry();
  v18 = v17;
  v19 = self->_externalID;
  if (v19 && os_signpost_enabled(v17))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v18, OS_SIGNPOST_INTERVAL_END, v19, "spotlightLatency", " enableTelemetry=YES ", &v22, 2u);
  }

  categoryToResultMapping = self->_categoryToResultMapping;
  self->_categoryToResultMapping = 0;

  [(SPFederatedQueryTask *)self setTokens:0];
  [(SPFederatedQueryTask *)self setSlowTokens:0];
  [(SPFederatedQueryTask *)self setDelayedStartTokens:0];
  [(SPFederatedQueryTask *)self setDelayedStartQueries:0];
  self->_parsecCameLaterThanSRT = 0;
  self->_parsecEntityCameEarly = 0;
  self->_receivedLateParsecResults = 0;
  self->_shouldRecomputeSuggestions = 1;
  self->_sentTaggedTopHits = 0;
  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendQueryReset
{
  v12 = *MEMORY[0x277D85DE8];
  [(SPFederatedQueryTask *)self externalID];
  kdebug_trace();
  v3 = SPLogForSPLogCategoryQuery();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    externalID = self->_externalID;
    *buf = 67109120;
    v11 = externalID;
    _os_log_impl(&dword_26B71B000, v4, v5, "Reset query %d", buf, 8u);
  }

  v7 = [(SPQueryTask *)self query];
  LODWORD(v9) = 0;
  [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:v7 replace:0 partiallyComplete:1 priorityFastPath:0 update:0 complete:0 delayedTopHit:0.0 unchanged:v9 forceStable:&stru_287C35638 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)orderedCategories:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v20)
  {
    v18 = *v22;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v6];
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "domain")}];
        v9 = [(SPQueryTask *)self query];
        v10 = [v9 queryContext];
        v11 = [v10 searchDomains];
        v12 = [v11 indexOfObject:v8];

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
        [v19 setObject:v13 forKey:v6];
      }

      v20 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v20);
  }

  v14 = [v19 keysSortedByValueWithOptions:1 usingComparator:&__block_literal_global_333];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __42__SPFederatedQueryTask_orderedCategories___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)sendResultsForKeys:(id)a3 toSendSections:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SPFederatedQueryTask *)self orderedCategories:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:*(*(&v14 + 1) + 8 * v11)];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)prepareAndSend:(id)a3 force:(BOOL)a4 moreComing:(BOOL)a5 reason:(int)a6
{
  v8 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (v8)
  {
    self->_didForceSend = 1;
  }

  if (!a5)
  {
    v22 = [(NSMutableArray *)self->_slowTokens count];
    v23 = [(NSMutableArray *)self->_delayedStartTokens count];
    v24 = [(NSMutableArray *)self->_delayedStartQueries count];
    v25 = [(NSMutableArray *)self->_tokens count];
    if (v23 + v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v22 | v25) == 0;
    }

    v27 = v26;
    if (v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = v27 ^ 1;
    }

    v29 = SPLogForSPLogCategoryQuery();
    v30 = v29;
    v31 = MEMORY[0x277D4BF48];
    if (*MEMORY[0x277D4BF48])
    {
      v32 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v32 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v29, v32))
    {
      v33 = v10;
      v34 = v28;
      v35 = v27;
      bottomPlacedSections = self->_bottomPlacedSections;
      v37 = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
      *buf = 138412546;
      v56 = bottomPlacedSections;
      v27 = v35;
      v28 = v34;
      v10 = v33;
      v31 = MEMORY[0x277D4BF48];
      v57 = 2112;
      v58 = v37;
      _os_log_impl(&dword_26B71B000, v30, v32, "#query send bottomRankedCategories %@ from %@", buf, 0x16u);
    }

    v38 = SPLogForSPLogCategoryQuery();
    v39 = v38;
    if (*v31)
    {
      v40 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v40 = OS_LOG_TYPE_DEBUG;
    }

    v41 = os_log_type_enabled(v38, v40);
    if (v22)
    {
      if (v41)
      {
        slowTokens = self->_slowTokens;
        tokens = self->_tokens;
        *buf = 138412546;
        v56 = slowTokens;
        v57 = 2112;
        v58 = tokens;
        _os_log_impl(&dword_26B71B000, v39, v40, "#query still waiting for %@ and %@", buf, 0x16u);
      }

      v44 = SPLogForSPLogCategoryQuery();
      v39 = v44;
      if (*v31)
      {
        v45 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v45 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_46;
      }

      v46 = self->_bottomPlacedSections;
      *buf = 138412290;
      v56 = v46;
      v47 = "#query _bottomRankedCategories %@";
      v48 = v39;
      v49 = v45;
      v50 = 12;
    }

    else
    {
      if (!v41)
      {
LABEL_46:

        didForceSend = self->_didForceSend;
        LODWORD(v54) = a6;
        v19 = self;
        v20 = v10;
        v17 = v28;
        v21 = v27;
        goto LABEL_47;
      }

      *buf = 0;
      v47 = "#query No waiting stores";
      v48 = v39;
      v49 = v40;
      v50 = 2;
    }

    _os_log_impl(&dword_26B71B000, v48, v49, v47, buf, v50);
    goto LABEL_46;
  }

  if (a6 == 5)
  {
    v11 = [(NSMutableArray *)self->_slowTokens count];
    v12 = [(NSMutableArray *)self->_delayedStartTokens count];
    v13 = [(NSMutableArray *)self->_delayedStartQueries count];
    v14 = [(NSMutableArray *)self->_tokens count];
    if (v12 + v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = (v14 | v11) == 0;
    }

    v17 = !v15 && v14 == 0;
    didForceSend = self->_didForceSend;
    LODWORD(v54) = 5;
    v19 = self;
    v20 = v10;
    v21 = 1;
    goto LABEL_47;
  }

  v51 = [(SPQueryTask *)self query];
  v52 = [v51 infinitePatience];

  if ((v52 & 1) == 0 && [v10 count])
  {
    v17 = a6 == 4;
    didForceSend = self->_didForceSend;
    LODWORD(v54) = a6;
    v19 = self;
    v20 = v10;
    v21 = 0;
LABEL_47:
    [(SPFederatedQueryTask *)v19 sendResults:v20 reset:didForceSend partiallyComplete:v17 update:0 complete:v21 delayedTopHit:0 reason:v54];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)logPerfToAnalytics:(int)a3
{
  if (a3 > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_279CFE320[a3];
  }

  query_analytics_log_complete(self, v3, self->_startTime);
}

- (void)addMatchInfo:(_MDPlistContainer *)a3
{
  obj = self;
  objc_sync_enter(obj);
  matchInfo = obj->_matchInfo;
  if (!matchInfo)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = obj->_matchInfo;
    obj->_matchInfo = v5;

    matchInfo = obj->_matchInfo;
  }

  [(NSMutableArray *)matchInfo addObject:a3];
  objc_sync_exit(obj);
}

- (__CFArray)copyMatchInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_matchInfo copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)sendFinishedDomains:(BOOL)a3 reason:(int)a4
{
  v5 = a3;
  v252 = *MEMORY[0x277D85DE8];
  v7 = SPLogForSPLogCategoryDefault();
  v8 = v7;
  if (*MEMORY[0x277D4BF48])
  {
    v9 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v9 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v7, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v8, v9, "sendFinishedDomains", buf, 2u);
  }

  v10 = [(NSMutableArray *)self->_slowTokens count];
  v11 = [(NSMutableArray *)self->_tokens count];
  v186 = v5;
  v12 = (v10 > 0) & ~v5;
  if (v11 > 0)
  {
    v12 = 1;
  }

  if (a4 == 4)
  {
    v12 = 1;
  }

  v189 = v12;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v14 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
  v15 = [v14 countByEnumeratingWithState:&v239 objects:v251 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v240;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v240 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if ([*(*(&v239 + 1) + 8 * i) resultsCount])
        {
          v19 = 1;
          goto LABEL_20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v239 objects:v251 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_20:

  v20 = [(SPQueryTask *)self query];
  v21 = [v20 queryContext];
  v22 = [v21 searchEntities];
  v197 = self;
  v190 = v13;
  if (v22)
  {
    v204 = v19;
    v23 = [(SPQueryTask *)self query];
    v24 = [v23 queryContext];
    v25 = [v24 searchEntities];
    if ([v25 count])
    {
      v200 = [(SPQueryTask *)self query];
      v26 = [v200 queryContext];
      [v26 searchEntities];
      v27 = v187 = a4;
      [v27 lastObject];
      v29 = v28 = v23;
      v184 = [v29 isScopedSearch];

      v23 = v28;
      a4 = v187;

      self = v197;
      v30 = v184;
    }

    else
    {
      v30 = 0;
    }

    v13 = v190;
    v19 = v204;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_new();
  [(SSRankingManager *)self->_rankingManager setLogValues:v31];

  v32 = [(SPQueryTask *)self query];
  v33 = [v32 cancelled];

  if (v33)
  {
    goto LABEL_226;
  }

  v34 = [(SPQueryTask *)self query];
  v35 = [v34 queryContext];
  v36 = [v35 queryKind];

  v185 = v30;
  if (a4 != 4 && -[NSArray count](self->_actualSentSections, "count") && ![v13 count])
  {
    v37 = [(NSArray *)self->_actualSentSections objectAtIndex:0];
    v38 = [v37 bundleIdentifier];
    v39 = [v38 isEqualToString:@"com.apple.spotlight.tophits"];

    if (v39)
    {
      [v13 addObject:v37];

      goto LABEL_34;
    }
  }

  [(SPFederatedQueryTask *)self addTopHitSectionIfNecessaryToSectionsForSending:v13 updatedSections:v19 isScopedSearch:v30];
LABEL_34:
  v40 = [(SPQueryTask *)self query];
  v41 = [v40 queryContext];
  v42 = [v41 searchString];
  [(SPFederatedQueryTask *)self addSuggestionsToSectionsForSending:v13 searchString:v42 updatedSections:v19 | v189 ^ 1 queryKind:v36];

  v188 = a4;
  if (((v189 ^ 1) & 1) == 0 && a4 >= 2 && a4 != 3 && (a4 != 4 || !self->_didReceiveCoreSpotlightProgress) && self->_didSendResults || !self->_categoryToResultMapping)
  {
    v52 = SPLogForSPLogCategoryDefault();
    v43 = v52;
    if (*MEMORY[0x277D4BF48])
    {
      v53 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v53 = OS_LOG_TYPE_DEBUG;
    }

    v54 = v186;
    if (os_log_type_enabled(v52, v53))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, &v43->super.super, v53, "Skipped ranking; already sent", buf, 2u);
    }

    goto LABEL_178;
  }

  self->_didSendResults = 1;
  v183 = v36;
  v182 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (a4 == 4)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v44 = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
    v45 = [v44 countByEnumeratingWithState:&v235 objects:v250 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v236;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v236 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v235 + 1) + 8 * j);
          v50 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v49];
          v51 = [v50 bundleIdentifier];
          if (priorityIndexEligibleBundleIdentifer(v51))
          {
            [(NSMutableDictionary *)v43 setObject:v50 forKey:v49];
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v235 objects:v250 count:16];
      }

      while (v46);
    }

    v36 = v183;
  }

  else
  {
    v43 = self->_categoryToResultMapping;
  }

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v55 = [(NSMutableDictionary *)v43 allKeys];
  v56 = [v55 countByEnumeratingWithState:&v231 objects:v249 count:16];
  v205 = v43;
  if (!v56)
  {

    goto LABEL_93;
  }

  v57 = v56;
  v58 = 0;
  LOBYTE(v59) = 0;
  v60 = 0;
  v198 = *MEMORY[0x277D65B70];
  v201 = *v232;
  v195 = *MEMORY[0x277D65B18];
  v193 = *MEMORY[0x277D65AF0];
  v194 = *MEMORY[0x277D65B68];
  obj = v55;
  do
  {
    for (k = 0; k != v57; ++k)
    {
      if (*v232 != v201)
      {
        objc_enumerationMutation(obj);
      }

      v62 = *(*(&v231 + 1) + 8 * k);
      v63 = [(NSMutableDictionary *)v205 objectForKey:v62];
      v64 = [v63 bundleIdentifier];
      v65 = [v64 isEqualToString:v198];

      if (v59)
      {
        v59 = 1;
        if (v58)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!v63)
        {
          v59 = 0;
          if (v60)
          {
            goto LABEL_73;
          }

          goto LABEL_75;
        }

        v66 = [v63 bundleIdentifier];
        v59 = [v66 isEqualToString:v195];

        if (v58)
        {
LABEL_65:
          v58 = 1;
          if (v60)
          {
            goto LABEL_73;
          }

          goto LABEL_75;
        }
      }

      if (v63)
      {
        v67 = [v63 bundleIdentifier];
        v58 = [v67 isEqualToString:v193];

        if (v60)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v58 = 0;
        if (v60)
        {
LABEL_73:
          v60 = 1;
          goto LABEL_78;
        }
      }

LABEL_75:
      if (v63)
      {
        v68 = [v63 bundleIdentifier];
        v60 = [v68 isEqualToString:v194];
      }

      else
      {
        v60 = 0;
      }

LABEL_78:
      v69 = [v63 results];
      v70 = ([v69 count] == 0) | v65;

      if (v70)
      {
        if (v65)
        {
          bottomPlacedSections = v197->_bottomPlacedSections;
          if (!bottomPlacedSections)
          {
            v72 = objc_opt_new();
            v73 = v197->_bottomPlacedSections;
            v197->_bottomPlacedSections = v72;

            bottomPlacedSections = v197->_bottomPlacedSections;
          }

          if (([(NSMutableArray *)bottomPlacedSections containsObject:v63]& 1) == 0)
          {
            [(NSMutableArray *)v197->_bottomPlacedSections addObject:v63];
          }
        }

        [(NSMutableDictionary *)v205 setObject:0 forKeyedSubscript:v62];
      }
    }

    v57 = [obj countByEnumeratingWithState:&v231 objects:v249 count:16];
  }

  while (v57);

  v74 = (v59 | v58) & v60;
  self = v197;
  v36 = v183;
  v43 = v205;
  if (v74)
  {
    if (v59)
    {
      [(NSMutableDictionary *)v205 setObject:0 forKeyedSubscript:v195];
    }

    if (v58)
    {
      [(NSMutableDictionary *)v205 setObject:0 forKeyedSubscript:v193];
    }
  }

LABEL_93:
  v75 = [(SPQueryTask *)self query];
  v76 = [v75 cancelled];

  if (v76)
  {

    v13 = v190;
    goto LABEL_226;
  }

  [(SPFederatedQueryTask *)self externalID];
  kdebug_trace();
  v77 = [(SPQueryTask *)self query];
  v78 = [v77 queryContext];
  v79 = [v78 isSearchToolClient];

  if (v79)
  {
    v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](v43, "count")}];
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke;
    v229[3] = &unk_279CFE0C0;
    v81 = self;
    v82 = v80;
    v230 = v82;
    [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v229];
    v83 = v230;
  }

  else
  {
    rankingManager = self->_rankingManager;
    v83 = [(SPFederatedQueryTask *)self itemRanker];
    v84 = [(SPFederatedQueryTask *)self preferredBundleIDs];
    v85 = [(SPQueryTask *)self query];
    v199 = [v85 queryIdent];
    v86 = [(SPFederatedQueryTask *)self isCJK];
    v87 = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
    v88 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
    v81 = self;
    isPeopleSearch = self->_isPeopleSearch;
    v90 = [(SPQueryTask *)v81 query];
    v91 = [v90 queryContext];
    BYTE2(v181) = isPeopleSearch;
    BYTE1(v181) = v88;
    v43 = v205;
    LOBYTE(v181) = v87;
    v36 = v183;
    v82 = [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:"rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:" withRanker:v205 preferredBundleIds:v83 isScopedSearch:v84 queryId:v185 isCJK:v199 isBullseyeNonCommittedSearch:v86 isBullseyeCommittedSearch:v181 isPeopleSearch:v91 queryContext:?];
  }

  v13 = v190;
  if ((v81->_parsecCameLaterThanSRT || v197->_parsecEntityCameEarly) && ((v36 - 5) < 4 || v36 == 1 || v36 == 4 || v197->_parsecEntityCameEarly))
  {
    v92 = [(NSArray *)v197->_sentSections copy];
    v93 = [v92 count];
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_342;
    v225[3] = &unk_279CFE0E8;
    v94 = v92;
    v226 = v94;
    v82 = v82;
    v227 = v82;
    v228 = v197;
    v95 = MEMORY[0x26D67F7A0](v225);
    v96 = v95;
    if (v93)
    {
      if ((sDeviceClass - 1) <= 1)
      {
        v97 = *(v95 + 16);
        goto LABEL_109;
      }

      if (sDeviceClass == 3)
      {
        v97 = *(v95 + 16);
LABEL_109:
        v98 = v97();

        v82 = v98;
      }

      else
      {
        v197->_sendStableSections = 1;
      }
    }
  }

  if (!v197->_sendStableSections || !v197->_sentTaggedTopHits || v197->_sentPriority || v197->_receivedLateParsecResults || v197->_shouldRecomputeSuggestions)
  {
    if (v197->_sentPriority)
    {
      v101 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v101, OS_LOG_TYPE_DEFAULT, "Sending additional results after priority index results", buf, 2u);
      }
    }

    v197->_sentPriority = 0;
    if ([v82 count])
    {
      v102 = SPLogForSPLogCategoryQuery();
      v103 = v102;
      if (*MEMORY[0x277D4BF48])
      {
        v104 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v104 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v102, v104))
      {
        *buf = 138412290;
        v248 = v82;
        _os_log_impl(&dword_26B71B000, v103, v104, "rankedSections: %@", buf, 0xCu);
      }

      if (v197->_genreGroupingEnabled)
      {
        v105 = v197->_rankingManager;
        v106 = +[SPFederatedQueryTask appGenreMap];
        v110 = [(SSRankingManager *)v105 groupSectionsByCategory:v82 genreMap:v106 topSections:v190];

        v107 = SPLogForSPLogCategoryQuery();
        v108 = v107;
        if (*MEMORY[0x277D4BF48])
        {
          v109 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v109 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v107, v109))
        {
          *buf = 138412290;
          v248 = v110;
          _os_log_impl(&dword_26B71B000, v108, v109, "rankedSections: %@", buf, 0xCu);
        }
      }

      else
      {
        v110 = v82;
      }

      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v82 = v110;
      v111 = [v82 countByEnumeratingWithState:&v221 objects:v246 count:16];
      if (v111)
      {
        v112 = v111;
        v113 = *v222;
        v114 = *MEMORY[0x277D65B70];
        do
        {
          for (m = 0; m != v112; ++m)
          {
            if (*v222 != v113)
            {
              objc_enumerationMutation(v82);
            }

            v116 = *(*(&v221 + 1) + 8 * m);
            v117 = [v116 results];
            v118 = [v117 count];

            if (v118)
            {
              v119 = [v116 results];
              v120 = [v119 objectAtIndex:0];

              if ([v120 placement] == 2 || (objc_msgSend(v116, "bundleIdentifier"), v121 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend(v121, "isEqualToString:", v114), v121, v122))
              {
                [(NSMutableArray *)v197->_bottomPlacedSections addObject:v116];
              }
            }
          }

          v112 = [v82 countByEnumeratingWithState:&v221 objects:v246 count:16];
        }

        while (v112);
      }

      if ([(NSMutableArray *)v197->_bottomPlacedSections count])
      {
        v123 = [v82 mutableCopy];
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v124 = v197->_bottomPlacedSections;
        v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v217 objects:v245 count:16];
        v36 = v183;
        v43 = v205;
        if (v125)
        {
          v126 = v125;
          v127 = *v218;
          do
          {
            for (n = 0; n != v126; ++n)
            {
              if (*v218 != v127)
              {
                objc_enumerationMutation(v124);
              }

              [v123 removeObject:*(*(&v217 + 1) + 8 * n)];
            }

            v126 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v217 objects:v245 count:16];
          }

          while (v126);
        }

        v129 = [v123 copy];
        v82 = v129;
        v13 = v190;
      }

      else
      {
        v13 = v190;
        v36 = v183;
        v43 = v205;
      }
    }

    [v13 addObjectsFromArray:v82];
    [(SPFederatedQueryTask *)v197 externalID];
    kdebug_trace();
    v130 = [(NSMutableDictionary *)v43 objectForKey:*MEMORY[0x277D65A60]];
    v100 = v130;
    if (v130)
    {
      v131 = [v130 resultSet];
      v132 = [v131 firstObject];
      v133 = [v132 topHit];

      if (!v133)
      {
        [v13 removeObject:v100];
        [v13 addObject:v100];
      }
    }

    if ([v13 count])
    {
      if ([(NSArray *)v197->_corrections count])
      {
        if (v197->_previousQueryKind == 10)
        {
          v134 = 0;
        }

        else
        {
          v135 = [(NSArray *)v197->_corrections firstObject];
          v134 = [v135 suggestion];
        }
      }

      else
      {
        v134 = 0;
      }

      v136 = v197->_rankingManager;
      topHitSection = v197->_topHitSection;
      v138 = v197->_isPeopleSearch;
      v139 = [(SPFederatedQueryTask *)v197 itemRanker];
      v140 = [v139 queryTermLength];
      v141 = [(SPFederatedQueryTask *)v197 itemRanker];
      v99 = [(SSRankingManager *)v136 applyTopSectionPolicy:v190 withTopHitSection:topHitSection isPeopleSearch:v138 queryKind:v183 correction:v134 queryLength:v140 ranker:v141];

      v142 = SPLogForSPLogCategoryQuery();
      v143 = v142;
      if (*MEMORY[0x277D4BF48])
      {
        v144 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v144 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v142, v144))
      {
        *buf = 138412290;
        v248 = v99;
        _os_log_impl(&dword_26B71B000, v143, v144, "[query] toSendSections: %@", buf, 0xCu);
      }

      v36 = v183;
      v43 = v205;
    }

    else
    {
      v99 = v13;
    }

LABEL_176:
    v145 = v182;

    v13 = v99;
    v54 = v186;
  }

  else
  {
    if (v188 == 3)
    {
      v99 = [(NSArray *)v197->_sentSections mutableCopy];
      v100 = v190;
      goto LABEL_176;
    }

    v54 = v186;
    v145 = v182;
  }

  query_analytics_log_timing(v197, "finished", "ranking", v145);
  [(SPFederatedQueryTask *)v197 logPerfToAnalytics:v188];

  self = v197;
LABEL_178:

  v146 = [(SPQueryTask *)self query];
  v147 = [v146 cancelled];

  if ((v147 & 1) == 0)
  {
    v148 = v189 ^ 1;
    if ((v36 - 4) > 4)
    {
      v148 = 1;
    }

    if ((v148 & 1) == 0 && [v13 count] == 1 && objc_msgSend(v13, "containsObject:", self->_topHitSection))
    {
      self->_didSendTopHits = 0;
    }

    else
    {
      v149 = v188;
      if (self->_enforcePreferredBundleIDs || (v150 = SSPreferLocalResultsOnLocalEngagment(), (v36 - 5) <= 3) && v150)
      {
        v151 = [(SPFederatedQueryTask *)self preferredBundleIDs];
        v152 = [v151 count];

        if (v152)
        {
          v206 = [MEMORY[0x277CBEB18] array];
          v203 = [MEMORY[0x277CBEB18] array];
          v213 = 0u;
          v214 = 0u;
          v215 = 0u;
          v216 = 0u;
          v191 = v13;
          v153 = v13;
          v154 = [v153 countByEnumeratingWithState:&v213 objects:v244 count:16];
          if (v154)
          {
            v155 = v154;
            v156 = 0;
            v157 = *v214;
            do
            {
              for (ii = 0; ii != v155; ++ii)
              {
                if (*v214 != v157)
                {
                  objc_enumerationMutation(v153);
                }

                v159 = *(*(&v213 + 1) + 8 * ii);
                if ([v159 isEqual:self->_topHitSection])
                {
                  v160 = v159;

                  v156 = v160;
                }

                else
                {
                  v161 = [(SPFederatedQueryTask *)self preferredBundleIDs];
                  v162 = [v159 bundleIdentifier];
                  v163 = [v161 containsObject:v162];

                  if (v163)
                  {
                    v164 = v206;
                  }

                  else
                  {
                    v164 = v203;
                  }

                  [v164 addObject:v159];
                  self = v197;
                }
              }

              v155 = [v153 countByEnumeratingWithState:&v213 objects:v244 count:16];
            }

            while (v155);
          }

          else
          {
            v156 = 0;
          }

          [v153 removeAllObjects];
          v149 = v188;
          if (v156)
          {
            [v153 addObject:v156];
          }

          v212[0] = MEMORY[0x277D85DD0];
          v212[1] = 3221225472;
          v212[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_346;
          v212[3] = &unk_279CFE110;
          v212[4] = self;
          [v206 sortUsingComparator:v212];
          [v153 addObjectsFromArray:v206];
          [v153 addObjectsFromArray:v203];

          v54 = v186;
          v13 = v191;
        }
      }

      if (!self->_isEntitySearch)
      {
        goto LABEL_225;
      }

      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v165 = v13;
      v166 = [v165 countByEnumeratingWithState:&v208 objects:v243 count:16];
      if (v166)
      {
        v167 = v166;
        v192 = v13;
        v168 = 0;
        v169 = *v209;
LABEL_210:
        v170 = 0;
        v207 = v168 + v167;
        while (1)
        {
          if (*v209 != v169)
          {
            objc_enumerationMutation(v165);
          }

          v171 = *(*(&v208 + 1) + 8 * v170);
          v172 = [v171 bundleIdentifier];
          if ([v172 hasPrefix:@"com.apple.parsec"])
          {
            [v171 resultSet];
            v174 = v173 = v165;
            [v174 firstObject];
            v176 = v175 = v169;
            v177 = [v176 placement];

            v169 = v175;
            v165 = v173;

            v178 = v177 == 1;
            self = v197;
            if (v178)
            {
              v179 = v171;

              v54 = v186;
              v149 = v188;
              v13 = v192;
              if (v179)
              {
                [v165 removeObjectAtIndex:v168];
                [v165 insertObject:v179 atIndex:0];
                v165 = v179;
                goto LABEL_224;
              }

              goto LABEL_225;
            }
          }

          else
          {
          }

          ++v168;
          if (v167 == ++v170)
          {
            v167 = [v165 countByEnumeratingWithState:&v208 objects:v243 count:16];
            v168 = v207;
            if (v167)
            {
              goto LABEL_210;
            }

            v54 = v186;
            v149 = v188;
            v13 = v192;
            goto LABEL_224;
          }
        }
      }

      v54 = v186;
LABEL_224:

LABEL_225:
      [(SPFederatedQueryTask *)self prepareAndSend:v13 force:v54 moreComing:v189 reason:v149];
    }
  }

LABEL_226:

  v180 = *MEMORY[0x277D85DE8];
}

void __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObject:?];
  v1 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_26B71B000, v1, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] by-pass L3", v2, 2u);
  }
}

id __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_342(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:*(a1 + 32)];
  [v4 addObjectsFromArray:*(a1 + 40)];
  v5 = [v4 count];
  if (*(a1 + 32))
  {
    v6 = v5 > a2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    [v4 removeObjectsInRange:{a2, v5 - a2}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if (([v4 containsObject:{v12, v17}] & 1) == 0)
          {
            [v4 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    *(*(a1 + 48) + 274) = 0;
  }

  v13 = [v4 array];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_346(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 preferredBundleIDs];
  v9 = [v7 bundleIdentifier];

  v10 = [v8 indexOfObject:v9];
  v11 = [*(a1 + 32) preferredBundleIDs];
  v12 = [v6 bundleIdentifier];

  v13 = [v11 indexOfObject:v12];
  if (v10 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v10 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

- (id)detailTextFromBundleIDs:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (SSEnableLocalDetailText())
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v33;
    v9 = *MEMORY[0x277D4BEF0];
    v10 = *MEMORY[0x277D4BEE8];
    v11 = 0x277D4B000uLL;
    v12 = @"DOMAIN_APPLICATION";
    while (1)
    {
      v13 = 0;
      v31 = v7;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        if ([v14 isEqualToString:{v9, v30}])
        {
          v15 = *(v11 + 3712);
          v16 = v12;
          goto LABEL_11;
        }

        if ([v14 isEqualToString:v10])
        {
          v15 = *(v11 + 3712);
          v16 = @"DOMAIN_APP_CLIPS";
LABEL_11:
          v17 = [v15 localizedSearchStringWithIdentifier:v16];
          if (!v17)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v4 addObject:v17];
          goto LABEL_13;
        }

        v18 = v9;
        v19 = v8;
        v20 = v10;
        v21 = v4;
        v22 = v5;
        v23 = v11;
        v24 = v12;
        v25 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v14 allowPlaceholder:1 error:0];
        v17 = [v25 localizedName];

        v12 = v24;
        v11 = v23;
        v5 = v22;
        v4 = v21;
        v10 = v20;
        v8 = v19;
        v9 = v18;
        v7 = v31;
        if (v17)
        {
          goto LABEL_12;
        }

LABEL_13:

        ++v13;
      }

      while (v7 != v13);
      v26 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v7 = v26;
      if (!v26)
      {
LABEL_18:

        v27 = [v4 componentsJoinedByString:{@", "}];

        v3 = v30;
        goto LABEL_20;
      }
    }
  }

  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)contactSuggestionsWithSearchString:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = *MEMORY[0x277D65BE0];
  v3 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:?];
  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v28 = v3;
    v4 = [v3 results];
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (!v5)
    {
      goto LABEL_23;
    }

    v6 = v5;
    v7 = *v33;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = SPLogForSPLogCategoryDefault();
        v11 = v10;
        if (*MEMORY[0x277D4BF48])
        {
          v12 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v12 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v10, v12))
        {
          v13 = [v9 title];
          v14 = [v13 text];
          *buf = 138412290;
          v37 = v14;
          _os_log_impl(&dword_26B71B000, v11, v12, "Check result %@", buf, 0xCu);
        }

        v15 = [v9 contactIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = [v9 personIdentifier];
          if (v17)
          {

LABEL_15:
            goto LABEL_16;
          }

          v18 = [v9 resultBundleId];
          v19 = [v18 isEqual:v31];

          if (v19)
          {
            v16 = [v9 lastUsedDate];
            [v16 timeIntervalSinceNow];
            if (v20 <= -40996800.0)
            {
              goto LABEL_15;
            }

            v21 = [v9 hasTextContentMatch];

            if (v21)
            {
              v22 = MEMORY[0x277D659B8];
              v23 = [(SPQueryTask *)self query];
              v24 = [v23 queryContext];
              v16 = [v22 buildResultWithResult:v9 queryContext:v24];

              [v30 addObject:v16];
              goto LABEL_15;
            }
          }
        }

LABEL_16:
        ++v8;
      }

      while (v6 != v8);
      v25 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
      v6 = v25;
      if (!v25)
      {
LABEL_23:

        v3 = v28;
        break;
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v30;
}

- (BOOL)forceAboveFoldResultsWithQuery:(id)a3 topHitSection:(id)a4 sections:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a5;
  if (_os_feature_enabled_impl() && [v5 count] >= 2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v10 = *MEMORY[0x277D65A00];
      v11 = *MEMORY[0x277D659F0];
      v24 = *MEMORY[0x277D65B90];
      v12 = 1;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ((v12 & 1) == 0)
          {
            v14 = *(*(&v26 + 1) + 8 * i);
            v15 = [v14 bundleIdentifier];
            if ([v15 isEqualToString:v10])
            {

LABEL_19:
              v20 = 1;
              goto LABEL_20;
            }

            v16 = [v14 bundleIdentifier];
            v17 = [v16 isEqualToString:v11];

            if (v17)
            {
              goto LABEL_19;
            }

            if (a4)
            {
              v18 = [v14 bundleIdentifier];
              v19 = [v18 isEqualToString:v24];

              if (!v19)
              {
                goto LABEL_19;
              }
            }
          }

          v12 = 0;
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v12 = 0;
        v20 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
    }

LABEL_20:

    v5 = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)suggestionsWithSearchString:(id)a3 sections:(id)a4 topHitSection:(id)a5 highestLocalScore:(double)a6
{
  v121 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v89 = a4;
  v9 = a5;
  v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = v9;
  v11 = [v9 results];
  v12 = [v11 countByEnumeratingWithState:&v111 objects:v120 count:16];
  if (!v12)
  {
    v98 = 0;
    goto LABEL_18;
  }

  v13 = v12;
  v98 = 0;
  v14 = *v112;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v112 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v111 + 1) + 8 * i);
      v17 = [v16 entityIdentifier];

      if (v17)
      {
        v18 = [v16 entityIdentifier];
        [v10 addObject:v18];
      }

      v19 = [v16 contactIdentifier];
      if (v19)
      {
      }

      else
      {
        v20 = [v16 personIdentifier];

        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v21 = [v16 title];
      v22 = [v21 text];
      v23 = SSNormalizedQueryString();

      [v97 addObject:v23];
LABEL_12:
      v24 = [v16 rankingItem];
      if (v24)
      {
        v25 = [v16 rankingItem];
        v26 = ([v25 bundleIDType] >> 8) & 1;

        v98 |= v26;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v111 objects:v120 count:16];
  }

  while (v13);
LABEL_18:

  if (_os_feature_enabled_impl())
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v89;
    v27 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v108;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v108 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v107 + 1) + 8 * j);
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v32 = [v31 results];
          v33 = [v32 countByEnumeratingWithState:&v103 objects:v118 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v104;
            do
            {
              for (k = 0; k != v34; ++k)
              {
                if (*v104 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v103 + 1) + 8 * k);
                v38 = [v37 entityIdentifier];

                if (v38)
                {
                  v39 = [v37 entityIdentifier];
                  [v10 addObject:v39];
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v103 objects:v118 count:16];
            }

            while (v34);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v28);
    }
  }

  obja = [(SPFederatedQueryTask *)self contactSuggestionsWithSearchString:v94];
  v40 = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
  v41 = [v40 localResultQualityThreshold];
  v42 = v41;
  v43 = &unk_287C3B880;
  if (v41)
  {
    v43 = v41;
  }

  v44 = v43;

  v45 = [(SPQueryTask *)self query];
  v91 = [v45 queryContext];

  if (SSCreateAsTypedSuggestion())
  {
    v46 = objc_alloc(MEMORY[0x277D4C5D8]);
    v47 = [v46 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:v94 query:v94 score:6 type:1.0];
    v48 = MEMORY[0x277D659B8];
    v49 = [(SPQueryTask *)self query];
    v50 = [v49 queryContext];
    v84 = [v48 buildResultWithSuggestion:v47 queryContext:v50];
  }

  else
  {
    v84 = 0;
  }

  v51 = objc_alloc(MEMORY[0x277D4C5D8]);
  v52 = [v51 initWithIdentifier:*MEMORY[0x277D65D00] suggestion:v94 query:v94 score:14 type:1.0];
  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_287C35638 table:@"SpotlightServices"];

  v86 = v54;
  [v52 setDetailText:v54];
  v55 = MEMORY[0x277D659B8];
  v56 = [(SPQueryTask *)self query];
  v57 = [v56 queryContext];
  v90 = [v55 buildResultWithSuggestion:v52 queryContext:v57];

  serverSuggestionResults = self->_serverSuggestionResults;
  if (!serverSuggestionResults)
  {
    serverSuggestionResults = MEMORY[0x277CBEBF8];
  }

  v59 = MEMORY[0x277CBEBF8];
  v60 = serverSuggestionResults;
  localSuggestionResults = self->_localSuggestionResults;
  if (!localSuggestionResults)
  {
    localSuggestionResults = v59;
  }

  v62 = localSuggestionResults;
  v82 = [MEMORY[0x277D658D0] sharedSuggestionsManager];
  v117[0] = v44;
  v116[0] = @"qualityThreshold";
  v116[1] = @"prefersLocalUserTypedSuggestion";
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask prefersLocalUserTypedSuggestion](self, "prefersLocalUserTypedSuggestion")}];
  v117[1] = v63;
  v116[2] = @"suggestionsAreBlended";
  v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsAreBlended];
  v117[2] = v64;
  v116[3] = @"localFilteringScore";
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  v117[3] = v65;
  v116[4] = @"ForceAboveFoldResults";
  v83 = v44;
  v66 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask forceAboveFoldResultsWithQuery:topHitSection:sections:](self, "forceAboveFoldResultsWithQuery:topHitSection:sections:", v94, v93, v89)}];
  v117[4] = v66;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:5];
  v85 = v62;
  v88 = v60;
  v68 = [v82 orderedSuggestionsWithQueryContext:v91 filters:v92 entityFilters:v10 contactFilters:v97 userSuggestion:v84 userWebSuggestion:v90 shortcutSuggestionResults:MEMORY[0x277CBEBF8] actionSuggestionResults:MEMORY[0x277CBEBF8] contactSuggestionResults:obja serverSuggestionResults:v60 localSuggestionResults:v62 options:v67];

  v69 = v89;
  if ((v98 & 1) != 0 && [v68 count] >= 3 && objc_msgSend(v89, "count") >= 3)
  {
    v70 = [v89 objectAtIndexedSubscript:2];
    v71 = [v70 bundleIdentifier];
    v72 = [v71 isEqualToString:*MEMORY[0x277D65A00]];

    if (v72)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v73 = [v89 objectAtIndexedSubscript:2];
      v74 = [v73 results];

      v75 = [v74 countByEnumeratingWithState:&v99 objects:v115 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v100;
        while (2)
        {
          for (m = 0; m != v76; ++m)
          {
            if (*v100 != v77)
            {
              objc_enumerationMutation(v74);
            }

            if ([MEMORY[0x277D659C8] passLikelihoodForTopHitCandidate:*(*(&v99 + 1) + 8 * m)])
            {
              v79 = [v68 subarrayWithRange:{0, 2}];

              v69 = v89;
              goto LABEL_59;
            }
          }

          v76 = [v74 countByEnumeratingWithState:&v99 objects:v115 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

      v69 = v89;
    }
  }

  v79 = v68;
LABEL_59:

  v80 = *MEMORY[0x277D85DE8];

  return v79;
}

- (void)addSuggestionsToSectionsForSending:(id)a3 searchString:(id)a4 updatedSections:(BOOL)a5 queryKind:(unint64_t)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (a6 - 1 <= 1)
  {
    v8 = MEMORY[0x277D4C5D8];
    v9 = a4;
    v10 = a3;
    v11 = [v8 alloc];
    v12 = [v11 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:v9 query:v9 score:6 type:1.0];

    v13 = MEMORY[0x277D659B8];
    v14 = [(SPQueryTask *)self query];
    v15 = [v14 queryContext];
    v16 = [v13 buildResultWithSuggestion:v12 queryContext:v15];

    v17 = objc_opt_new();
    suggestionsSection = self->_suggestionsSection;
    self->_suggestionsSection = v17;

    [(SFMutableResultSection *)self->_suggestionsSection setBundleIdentifier:*MEMORY[0x277D65C88]];
    v21[0] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(SFMutableResultSection *)self->_suggestionsSection setResults:v19];

    [v10 addObject:self->_suggestionsSection];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)a3 updatedSections:(BOOL)a4 isScopedSearch:(BOOL)a5
{
  v6 = a4;
  v92 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!a5)
  {
    v9 = SSEnableSpotlightTopHitPersonalizedRanking();
    v78 = self;
    if (!v6 || self->_didSendTopHits || [(SFMutableResultSection *)self->_topHitSection resultsCount])
    {
      if (self->_didSendResults)
      {
        v10 = SPLogForSPLogCategoryDefault();
        v11 = *MEMORY[0x277D4BF50];
        if (os_log_type_enabled(v10, ((*MEMORY[0x277D4BF50] & 1) == 0)))
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v10, ((v11 & 1) == 0), "Skipping current top hits nomination due to previous dispatch.", buf, 2u);
        }

        if (v9)
        {
          v76 = v8;
          v12 = objc_alloc(MEMORY[0x277D65840]);
          v13 = [(SPQueryTask *)self query];
          v14 = [v13 queryContext];
          v77 = [v12 initWithQueryContext:v14];

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v15 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
          v83 = [v15 countByEnumeratingWithState:&v85 objects:v89 count:16];
          if (!v83)
          {
            goto LABEL_21;
          }

          v81 = *v86;
          while (1)
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v86 != v81)
              {
                objc_enumerationMutation(v15);
              }

              v17 = *(*(&v85 + 1) + 8 * i);
              if ([v17 resultsCount])
              {
                v18 = [v17 resultSet];
                v19 = [v18 objectAtIndexedSubscript:0];
                v20 = [v19 rankingItem];
                if (v20)
                {
                  v21 = v20;
                  v22 = [v17 resultSet];
                  v23 = [v22 objectAtIndexedSubscript:0];
                  v24 = [v23 rankingItem];
                  [v24 likelihood];
                  v26 = v25;

                  if (v26 >= 2.22044605e-16)
                  {
                    continue;
                  }

                  rankingManager = self->_rankingManager;
                  v18 = [(SPQueryTask *)self query];
                  v19 = [v18 queryContext];
                  [v19 currentTime];
                  v28 = v27;
                  v29 = [(SPQueryTask *)self query];
                  v30 = [v29 queryIdent];
                  v31 = [(SPFederatedQueryTask *)self itemRanker];
                  v32 = [(SPQueryTask *)self query];
                  [v32 queryContext];
                  v34 = v33 = v15;
                  LOBYTE(v69) = [v34 isSearchToolClient];
                  [(SSRankingManager *)rankingManager calculateLikelihoodAndPriorForSection:v17 currentTime:0 shortcutResult:v30 queryId:v31 ranker:0 nominateLocalTopHit:v77 qu:v28 isSearchToolClient:v69];

                  v15 = v33;
                  self = v78;
                }
              }
            }

            v83 = [v15 countByEnumeratingWithState:&v85 objects:v89 count:16];
            if (!v83)
            {
LABEL_21:

              goto LABEL_22;
            }
          }
        }
      }
    }

    else
    {
      v77 = [MEMORY[0x277D4BE80] localizedSearchStringWithIdentifier:@"DOMAIN_TOPHIT"];
      if (sDeviceClass == 3)
      {
        v42 = 6;
      }

      else
      {
        v42 = 4;
      }

      if (v9)
      {
        v43 = objc_alloc(MEMORY[0x277D65840]);
        v44 = [(SPQueryTask *)self query];
        v45 = [v44 queryContext];
        v82 = [v43 initWithQueryContext:v45];

        v74 = self->_rankingManager;
        v80 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        v75 = [(SPFederatedQueryTask *)self itemRanker];
        v73 = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        v72 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v76 = v8;
        v84 = v42;
        v46 = self->_parsecEnabled || self->_parsecSettingEnabled;
        v71 = v46;
        v54 = [(SPQueryTask *)self query];
        v55 = [v54 queryIdent];
        v56 = [(SPQueryTask *)self query];
        v57 = [v56 queryContext];
        v58 = [v57 isSearchToolClient];
        v59 = [(SPQueryTask *)self query];
        v60 = [v59 queryContext];
        [v60 currentTime];
        LOBYTE(v70) = v58;
        BYTE1(v69) = v71;
        LOBYTE(v69) = v72;
        v61 = [SSRankingManager nominateLocalTopHitsFromSections:v74 withItemRanker:"nominateLocalTopHitsFromSections:withItemRanker:sectionHeader:maxInitiallyVisibleResults:shortcutResult:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:parsecEnabled:maxNumAppsInTopHitSection:queryId:isSearchToolClient:qu:currentTime:" sectionHeader:v80 maxInitiallyVisibleResults:v75 shortcutResult:v77 isBullseyeNonCommittedSearch:1 isBullseyeCommittedSearch:0 parsecEnabled:v73 maxNumAppsInTopHitSection:v69 queryId:v84 isSearchToolClient:v55 qu:v70 currentTime:v82];
        topHitSection = self->_topHitSection;
        self->_topHitSection = v61;

LABEL_22:
        v8 = v76;
      }

      else
      {
        v47 = v8;
        v48 = self->_rankingManager;
        v49 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        v50 = [(SPFederatedQueryTask *)self itemRanker];
        v51 = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        v52 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v53 = self->_parsecEnabled || self->_parsecSettingEnabled;
        LOBYTE(v69) = v53;
        v63 = [(SSRankingManager *)v48 makeTopHitSectionUsingSections:v49 withItemRanker:v50 sectionHeader:v77 shortcutResult:0 isBullseyeNonCommittedSearch:v51 isBullseyeCommittedSearch:v52 parsecEnabled:v69 maxNumAppsInTopHitSection:v42];
        v64 = self->_topHitSection;
        self->_topHitSection = v63;

        v65 = SPLogForSPLogCategoryDefault();
        v66 = v65;
        if (*MEMORY[0x277D4BF48])
        {
          v67 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v67 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v65, v67))
        {
          v68 = [(SFMutableResultSection *)self->_topHitSection resultsCount];
          *buf = 134217984;
          v91 = v68;
          _os_log_impl(&dword_26B71B000, v66, v67, "Top hit section count: %lu  Allow multiple apps: YES", buf, 0xCu);
        }

        v8 = v47;
      }
    }

    v35 = [(SFMutableResultSection *)self->_topHitSection results];
    if ([v35 count])
    {
      v36 = 0;
      do
      {
        v37 = [v35 objectAtIndex:v36];
        v38 = [v37 rankingItem];
        [v38 setBundleIDType:{objc_msgSend(v38, "bundleIDType") | 0x8000}];

        ++v36;
      }

      while (v36 < [v35 count]);
    }

    v39 = [(SPFederatedQueryTask *)v78 topHitsReadyToSend:v78->_topHitSection];
    v40 = [(SPQueryTask *)v78 query];
    [v40 internalDebug];

    if (v39)
    {
      [v8 insertObject:v78->_topHitSection atIndex:0];
      v78->_didSendTopHits = 1;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)storeWillComplete:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SPLogForSPLogCategoryQuery();
  v6 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v5, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_26B71B000, v5, ((v6 & 1) == 0), "storeWillComplete %@", &v12, 0xCu);
  }

  self->_timeOut = self->_timeOut * 1.5;
  if (self->_timer)
  {
    if (![(NSMutableArray *)self->_tokens count])
    {
      v7 = CFAbsoluteTimeGetCurrent() - self->_storeStartTime;
      timeOut = self->_timeOut;
      if (v7 < timeOut * 1.5)
      {
        timer = self->_timer;
        v10 = dispatch_time(0, ((timeOut - v7) * 1000000000.0));
        dispatch_source_set_timer(timer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)storeSearchProgress:(id)a3 withSections:(id)a4 suggestionResults:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v45 = a5;
  v47 = v8;
  if (v8)
  {
    v9 = SPLogForSPLogCategoryQuery();
    v10 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v9, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      v11 = [(SPQueryTask *)self query];
      v12 = [v11 queryContext];
      v13 = [v12 searchString];
      *buf = 138412802;
      v60 = v13;
      v61 = 2112;
      v62 = v47;
      v63 = 2048;
      v64 = [v46 count];
      _os_log_impl(&dword_26B71B000, v9, ((v10 & 1) == 0), "storeSearchProgress, query:%@, token:%@, sectionCount:%ld", buf, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_didReceiveCoreSpotlightProgress = 1;
      objc_storeStrong(&self->_localSuggestionResults, a5);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rankingManager = self->_rankingManager;
      v15 = v47;
      v16 = [v15 rankingInfo];
      [(SSRankingManager *)rankingManager updateWithNewRankingInfo:v16];
    }

    v44 = self->_categoryToResultMapping;
    objc_sync_enter(v44);
    v17 = MEMORY[0x277D65980];
    v18 = [(SPFederatedQueryTask *)self queryIdent];
    v19 = [(SPQueryTask *)self query];
    v20 = [v19 queryContext];
    v21 = [v20 searchString];
    v22 = [(SPQueryTask *)self query];
    v23 = [v22 queryContext];
    [v17 logSections:v46 message:@"L1 progress" queryId:v18 query:v21 isSearchToolClient:{objc_msgSend(v23, "isSearchToolClient")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v46;
    v24 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v24)
    {
      v25 = *v54;
      v50 = *MEMORY[0x277D65C10];
      v48 = *MEMORY[0x277D65C50];
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v53 + 1) + 8 * i);
          if ([v27 resultsCount])
          {
            memset(v52, 0, sizeof(v52));
            v28 = [v27 results];
            if ([v28 countByEnumeratingWithState:v52 objects:v57 count:16])
            {
              v29 = **(&v52[0] + 1);
              v30 = [**(&v52[0] + 1) personIdentifier];
              if (v30)
              {
                v31 = [v29 resultBundleId];
                if ([v31 isEqual:v50])
                {

                  goto LABEL_19;
                }

                v32 = [v29 resultBundleId];
                v33 = [v32 isEqual:v48];

                if (v33)
                {
LABEL_19:
                  [v27 setBundleIdentifier:v50];
                }
              }
            }

            categoryToResultMapping = self->_categoryToResultMapping;
            v35 = [v27 bundleIdentifier];
            v36 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:v35];

            if (v36)
            {
              [(SPFederatedQueryTask *)self deDuplicateSection:v27 againstSection:v36];
              v37 = [v27 results];
              [v36 addResultsFromArray:v37];

              v38 = [v27 bundleIdentifier];
              LODWORD(v37) = [v38 isEqualToString:@"com.apple.application"];

              if (v37)
              {
                [v36 sortRange:0 options:objc_msgSend(v36 usingComparator:{"resultsCount"), 16, &__block_literal_global_395}];
              }
            }

            else
            {
              v39 = self->_categoryToResultMapping;
              v40 = [v27 bundleIdentifier];
              v41 = v40;
              if (!v40)
              {
                v49 = [v27 title];
                v41 = v49;
              }

              [(NSMutableDictionary *)v39 setObject:v27 forKeyedSubscript:v41];
              if (!v40)
              {
              }

              [(NSMutableOrderedSet *)self->_sectionOrderByInsertion addObject:v27];
            }

            continue;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v24);
    }

    objc_sync_exit(v44);
    [(SPFederatedQueryTask *)self sendFinishedDomains:4];
  }

  v42 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __75__SPFederatedQueryTask_storeSearchProgress_withSections_suggestionResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4 suggestionResults:(id)a5
{
  v240 = *MEMORY[0x277D85DE8];
  v7 = a3;
  obj = a4;
  v179 = a5;
  v180 = v7;
  if (!v7)
  {
    goto LABEL_176;
  }

  v8 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SPQueryTask *)self query];
    v10 = [v9 queryContext];
    v11 = [v10 searchString];
    v12 = CSRedactString();
    *buf = 138412802;
    v225 = v12;
    v226 = 2112;
    v227 = *&v180;
    v228 = 2048;
    v229 = [obj count];
    _os_log_impl(&dword_26B71B000, v8, OS_LOG_TYPE_DEFAULT, "storeCompletedSearch, query:%@, query:%@, sectionCount:%ld", buf, 0x20u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v13 = v180;
    v14 = [v13 fbq];
    fbq = self->_fbq;
    self->_fbq = v14;

    v16 = [v13 web_fbq];
    web_fbq = self->_web_fbq;
    self->_web_fbq = v16;

    v18 = [v13 server_features];
    server_features = self->_server_features;
    self->_server_features = v18;

    self->_suggestionsAreBlended = [v13 suggestionsAreBlended];
    v20 = [v13 querySuggestionResults];
    serverSuggestionResults = self->_serverSuggestionResults;
    self->_serverSuggestionResults = v20;

    rankingManager = self->_rankingManager;
    v23 = [v13 rankingInfo];
    [(SSRankingManager *)rankingManager updateWithNewRankingInfo:v23];
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_localSuggestionResults, a5);
  }

  externalID = self->_externalID;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
  v26 = [objc_opt_class() description];
  SDTraceAdd();

  v176 = self->_categoryToResultMapping;
  objc_sync_enter(v176);
  v27 = MEMORY[0x277D65980];
  v28 = [(SPFederatedQueryTask *)self queryIdent];
  v29 = [(SPQueryTask *)self query];
  v30 = [v29 queryContext];
  v31 = [v30 searchString];
  v32 = [(SPQueryTask *)self query];
  v33 = [v32 queryContext];
  [v27 logSections:obj message:@"L1 complete" queryId:v28 query:v31 isSearchToolClient:{objc_msgSend(v33, "isSearchToolClient")}];

  v188 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v188)
  {
    v34 = objc_alloc(MEMORY[0x277D65840]);
    v35 = [(SPQueryTask *)self query];
    v36 = [v35 queryContext];
    v181 = [v34 initWithQueryContext:v36];
  }

  else
  {
    v181 = 0;
  }

  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  obj = obj;
  v37 = [obj countByEnumeratingWithState:&v220 objects:v239 count:16];
  if (v37)
  {
    v191 = *v221;
    v186 = *MEMORY[0x277D65C10];
    v182 = *MEMORY[0x277D65C50];
    do
    {
      v192 = v37;
      for (i = 0; i != v192; ++i)
      {
        if (*v221 != v191)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v220 + 1) + 8 * i);
        if ([v39 resultsCount])
        {
          if (v188)
          {
            v40 = [v39 resultSet];
            v41 = [v40 objectAtIndexedSubscript:0];
            v42 = [v41 rankingItem];
            if (!v42)
            {
              goto LABEL_22;
            }

            v43 = [v39 resultSet];
            v44 = [v43 objectAtIndexedSubscript:0];
            v45 = [v44 rankingItem];
            [v45 likelihood];
            v47 = v46 < 2.22044605e-16;

            if (v47)
            {
              v48 = self->_rankingManager;
              v40 = [(SPQueryTask *)self query];
              v41 = [v40 queryContext];
              [v41 currentTime];
              v50 = v49;
              v51 = [(SPQueryTask *)self query];
              v52 = [v51 queryIdent];
              v53 = [(SPFederatedQueryTask *)self itemRanker];
              v54 = [(SPQueryTask *)self query];
              v55 = [v54 queryContext];
              LOBYTE(v174) = [v55 isSearchToolClient];
              [(SSRankingManager *)v48 calculateLikelihoodAndPriorForSection:v39 currentTime:0 shortcutResult:v52 queryId:v53 ranker:0 nominateLocalTopHit:v181 qu:v50 isSearchToolClient:v174];

LABEL_22:
            }
          }

          memset(v219, 0, sizeof(v219));
          v56 = [v39 results];
          if ([v56 countByEnumeratingWithState:v219 objects:v238 count:16])
          {
            v57 = **(&v219[0] + 1);
            v58 = [**(&v219[0] + 1) personIdentifier];
            if (v58)
            {
              v59 = [v57 resultBundleId];
              if ([v59 isEqual:v186])
              {

                goto LABEL_28;
              }

              v60 = [v57 resultBundleId];
              v61 = [v60 isEqual:v182];

              if (v61)
              {
LABEL_28:
                [v39 setBundleIdentifier:v186];
              }
            }
          }

          categoryToResultMapping = self->_categoryToResultMapping;
          v63 = [v39 bundleIdentifier];
          v64 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:v63];

          if (v64)
          {
            [(SPFederatedQueryTask *)self deDuplicateSection:v39 againstSection:v64];
            v65 = [v39 results];
            [v64 addResultsFromArray:v65];

            v66 = [v39 bundleIdentifier];
            v67 = [v66 isEqualToString:@"com.apple.application"];

            if ((v67 & (isKindOfClass ^ 1)) != 0)
            {
              [v64 sortRange:0 options:objc_msgSend(v64 usingComparator:{"resultsCount"), 16, &__block_literal_global_403}];
            }
          }

          else
          {
            v68 = self->_categoryToResultMapping;
            v69 = [v39 bundleIdentifier];
            v70 = v69;
            if (!v69)
            {
              v184 = [v39 title];
              v70 = v184;
            }

            [(NSMutableDictionary *)v68 setObject:v39 forKeyedSubscript:v70];
            if (!v69)
            {
            }

            [(NSMutableOrderedSet *)self->_sectionOrderByInsertion addObject:v39];
          }

          continue;
        }
      }

      v37 = [obj countByEnumeratingWithState:&v220 objects:v239 count:16];
    }

    while (v37);
  }

  objc_sync_exit(v176);
  v189 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
  v185 = [(NSMutableArray *)self->_delayedStartTokens containsObject:v189];
  v71 = self;
  objc_sync_enter(v71);
  v71->_shouldRecomputeSuggestions = 1;
  v72 = SPLogForSPLogCategoryQuery();
  v73 = v72;
  if (*MEMORY[0x277D4BF48])
  {
    v74 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v74 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v72, v74))
  {
    *buf = 138412290;
    v225 = v189;
    _os_log_impl(&dword_26B71B000, v73, v74, "Completed search for query %@", buf, 0xCu);
  }

  [(NSMutableArray *)v71->_tokens removeObject:v189];
  [(NSMutableArray *)v71->_slowTokens removeObject:v189];
  [(NSMutableArray *)self->_delayedStartTokens removeObject:v189];
  [(NSMutableArray *)v71->_finishedTokens addObject:v189];
  v75 = SPLogForSPLogCategoryQuery();
  v76 = v75;
  if (*MEMORY[0x277D4BF48])
  {
    v77 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v77 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v75, v77))
  {
    tokens = v71->_tokens;
    slowTokens = v71->_slowTokens;
    *buf = 138412546;
    v225 = tokens;
    v226 = 2112;
    v227 = *&slowTokens;
    _os_log_impl(&dword_26B71B000, v76, v77, "Remaining stores %@ %@", buf, 0x16u);
  }

  *(&v183 + 1) = [(NSMutableArray *)v71->_slowTokens count];
  v177 = [(NSMutableArray *)self->_delayedStartTokens count];
  v175 = [(NSMutableArray *)v71->_delayedStartQueries count];
  v80 = [(NSMutableArray *)v71->_tokens count];
  *&v183 = v80;
  if (__PAIR128__(*(&v183 + 1), v80) == 0 && [(NSMutableArray *)v71->_delayedStartQueries count])
  {
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v81 = v71->_delayedStartQueries;
    v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v215 objects:v237 count:16];
    if (v82)
    {
      v83 = *v216;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v216 != v83)
          {
            objc_enumerationMutation(v81);
          }

          v85 = *(*(&v215 + 1) + 8 * j);
          [v85 setDelegate:v71];
          [v85 start];
          v86 = [objc_opt_class() searchDomain];
          if ([v85 isStarted])
          {
            delayedStartTokens = self->_delayedStartTokens;
            v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v86];
            [(NSMutableArray *)delayedStartTokens addObject:v88];
          }
        }

        v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v215 objects:v237 count:16];
      }

      while (v82);
    }

    [(NSMutableArray *)v71->_delayedStartQueries removeAllObjects];
  }

  if ([(NSMutableArray *)v71->_slowTokens count])
  {
    v187 = 0;
  }

  else
  {
    v187 = [(NSMutableArray *)v71->_tokens count]== 0;
  }

  if (v185)
  {
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    obj = obj;
    v89 = 0;
    v90 = [obj countByEnumeratingWithState:&v211 objects:v236 count:16];
    if (v90)
    {
      v91 = *v212;
      do
      {
        for (k = 0; k != v90; ++k)
        {
          if (*v212 != v91)
          {
            objc_enumerationMutation(obj);
          }

          v93 = *(*(&v211 + 1) + 8 * k);
          v207 = 0u;
          v208 = 0u;
          v209 = 0u;
          v210 = 0u;
          v94 = [v93 results];
          v95 = [v94 countByEnumeratingWithState:&v207 objects:v235 count:16];
          if (v95)
          {
            v96 = *v208;
            while (2)
            {
              for (m = 0; m != v95; ++m)
              {
                if (*v208 != v96)
                {
                  objc_enumerationMutation(v94);
                }

                if ([*(*(&v207 + 1) + 8 * m) topHit] == 2)
                {
                  v89 = 1;
                  goto LABEL_81;
                }
              }

              v95 = [v94 countByEnumeratingWithState:&v207 objects:v235 count:16];
              if (v95)
              {
                continue;
              }

              break;
            }
          }

LABEL_81:
        }

        v90 = [obj countByEnumeratingWithState:&v211 objects:v236 count:16];
      }

      while (v90);
    }

    v71->_shouldRecomputeSuggestions = 0;
    v98 = [(SPQueryTask *)v71 query];
    v99 = [v98 cancelled];

    if ((v99 & 1) == 0)
    {
      if ([(NSMutableArray *)v71->_bottomPlacedSections count])
      {
        v100 = [obj arrayByAddingObjectsFromArray:v71->_bottomPlacedSections];

        obj = v100;
      }

      objc_opt_class();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [obj count];
      }

      if (&v177[v175])
      {
        v120 = 0;
      }

      else
      {
        v120 = v183 == 0;
      }

      v121 = v120;
      HIDWORD(v174) = 2;
      LOBYTE(v174) = v89 & 1;
      [SPFederatedQueryTask sendResults:v71 reset:"sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:" partiallyComplete:obj update:0 complete:0 unchanged:v121 ^ 1u delayedTopHit:v174 reason:?];
    }

    goto LABEL_125;
  }

  v101 = v71->_didForceSend || !v187;
  if (!v101)
  {
    if (v71->_parsecEntityCameEarly)
    {
      timer = v71->_timer;
      if (timer)
      {
        dispatch_source_cancel(timer);
        dispatch_source_set_event_handler(v71->_timer, 0);
        v104 = v71->_timer;
        v71->_timer = 0;
      }

      v102 = 0;
      goto LABEL_98;
    }

    if (!v71->_parsecCameLaterThanSRT)
    {
      v122 = v71->_timer;
      if (v122)
      {
        dispatch_source_cancel(v122);
        dispatch_source_set_event_handler(v71->_timer, 0);
        v123 = v71->_timer;
        v71->_timer = 0;
      }

      [(SPFederatedQueryTask *)v71 sendFinishedDomains:0];
      goto LABEL_125;
    }

LABEL_100:
    v105 = objc_autoreleasePoolPush();
    v71->_didSendResults = 0;
    v71->_sendStableSections = 1;
    v106 = [(NSArray *)v71->_actualSentSections arrayByAddingObjectsFromArray:obj];
    stableSections = v71->_stableSections;
    v71->_stableSections = v106;

    v108 = objc_opt_new();
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    obj = obj;
    v109 = [obj countByEnumeratingWithState:&v203 objects:v234 count:16];
    if (v109)
    {
      v110 = *v204;
      do
      {
        for (n = 0; n != v109; ++n)
        {
          if (*v204 != v110)
          {
            objc_enumerationMutation(obj);
          }

          v112 = *(*(&v203 + 1) + 8 * n);
          if (v112)
          {
            v113 = [v112 results];
            [v108 addObjectsFromArray:v113];
          }
        }

        v109 = [obj countByEnumeratingWithState:&v203 objects:v234 count:16];
      }

      while (v109);
    }

    if ([v108 count])
    {
      v71->_receivedLateParsecResults = 1;
      v114 = [objc_alloc(MEMORY[0x277D4C590]) initWithResults:v108];
      v115 = [MEMORY[0x277D4BEC0] sharedProxy];
      v116 = [(SPQueryTask *)v71 query];
      v117 = [v116 queryIdent];
      v118 = [(SPXPCConnection *)v71->_connection bundleID];
      [v115 sendFeedbackType:14 feedback:v114 queryId:v117 clientID:v118];
    }

    if (SSDisplayLateServerSuggestions())
    {
      v119 = [(NSArray *)v71->_serverSuggestionResults count]!= 0;
    }

    else
    {
      v119 = 0;
    }

    v71->_shouldRecomputeSuggestions = v119;
    [(SPFederatedQueryTask *)v71 sendFinishedDomains:3];

    objc_autoreleasePoolPop(v105);
    goto LABEL_125;
  }

  if (v71->_parsecCameLaterThanSRT)
  {
    goto LABEL_100;
  }

  if ((isKindOfClass & v71->_isEntitySearch & 1) == 0 || ![(NSMutableArray *)v71->_tokens count]|| [(NSMutableArray *)v71->_slowTokens count])
  {
    goto LABEL_125;
  }

  v71->_parsecEntityCameEarly = 1;
  v102 = 5;
LABEL_98:
  [(SPFederatedQueryTask *)v71 sendFinishedDomains:!v101 reason:v102];
LABEL_125:
  if (v187)
  {
    v124 = [(NSMutableArray *)self->_delayedStartTokens count];
    if (!(v124 + [(NSMutableArray *)v71->_delayedStartQueries count]) && !v71->_sentCompleted)
    {
      [(SPFederatedQueryTask *)v71 sendQueryCompleted];
      bottomPlacedSections = v71->_bottomPlacedSections;
      v71->_bottomPlacedSections = 0;

      v71->_sentCompleted = 1;
    }
  }

  objc_sync_exit(v71);

  if (![(NSMutableArray *)v71->_slowTokens count]&& ![(NSMutableArray *)v71->_tokens count])
  {
    v126 = objc_alloc(MEMORY[0x277D4C270]);
    v127 = [(SPQueryTask *)v71 query];
    v128 = [v126 initWithEvent:@"com.apple.spotlight.backend.stores.end" timeInterval:0 queryId:{objc_msgSend(v127, "queryIdent")}];

    v129 = [MEMORY[0x277D4BEC0] sharedProxy];
    v130 = [(SPQueryTask *)v71 query];
    v131 = [v130 queryIdent];
    v132 = [(SPXPCConnection *)v71->_connection bundleID];
    [v129 sendFeedbackType:21 feedback:v128 queryId:v131 clientID:v132];
  }

  if (![(NSMutableArray *)v71->_slowTokens count]|| [(NSMutableArray *)v71->_tokens count]|| (v71->_timer != 0) | v185 & 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    storeStartTime = v71->_storeStartTime;
    v135 = [(NSMutableArray *)v71->_tokens count]== 0;
    v136 = SPLogForSPLogCategoryDefault();
    v137 = v136;
    v138 = Current - storeStartTime;
    if (*MEMORY[0x277D4BF48])
    {
      v139 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v139 = OS_LOG_TYPE_DEBUG;
    }

    v140 = os_log_type_enabled(v136, v139);
    if (v135)
    {
      if (v140)
      {
        v142 = [(NSMutableArray *)v71->_slowTokens count];
        v143 = [(NSMutableArray *)v71->_tokens count];
        v144 = v71->_timer;
        *buf = 134219008;
        v225 = v142;
        v226 = 2048;
        v227 = *&v143;
        v228 = 2048;
        v229 = v144;
        v230 = 1024;
        v231 = v185;
        v232 = 2048;
        v233 = v138;
        _os_log_impl(&dword_26B71B000, v137, v139, "Not waiting on parsec st:%ld t:%ld ti:%p d:%d (%f)", buf, 0x30u);
      }
    }

    else if (v140)
    {
      v141 = v71->_tokens;
      *buf = 138412546;
      v225 = v141;
      v226 = 2048;
      v227 = v138;
      _os_log_impl(&dword_26B71B000, v137, v139, "Not waiting on parsec t:%@ (%f)", buf, 0x16u);
    }
  }

  else
  {
    v145 = CFAbsoluteTimeGetCurrent();
    v146 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v146, OS_LOG_TYPE_DEFAULT, "No more fast data stores, waiting for parsec", buf, 2u);
    }

    objc_initWeak(buf, v71);
    v147 = (*MEMORY[0x277D286C8])();
    v148 = *(v147 + 16);
    v200 = *v147;
    v201 = v148;
    v202 = *(v147 + 32);
    v198[0] = MEMORY[0x277D85DD0];
    v198[1] = 3221225472;
    v198[2] = __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_408;
    v198[3] = &unk_279CFE158;
    objc_copyWeak(&v199, buf);
    v149 = MEMORY[0x26D67F7A0](v198);
    v150 = v145 - v71->_storeStartTime;
    if (v150 >= v71->_timeOut)
    {
      v167 = SPLogForSPLogCategoryDefault();
      v168 = v167;
      if (*MEMORY[0x277D4BF48])
      {
        v169 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v169 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v167, v169))
      {
        *v197 = 0;
        _os_log_impl(&dword_26B71B000, v168, v169, "No more fast data stores, send", v197, 2u);
      }

      v170 = v71->_timer;
      if (v170)
      {
        dispatch_source_cancel(v170);
        dispatch_source_set_event_handler(v71->_timer, 0);
        v171 = v71->_timer;
        v71->_timer = 0;
      }

      v149[2](v149, 0);
      v71->_parsecCameLaterThanSRT = 1;
      v71->_shouldRecomputeSuggestions = 1;
    }

    else
    {
      v151 = SPLogForSPLogCategoryDefault();
      v152 = v151;
      if (*MEMORY[0x277D4BF48])
      {
        v153 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v153 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v151, v153))
      {
        *v197 = 0;
        _os_log_impl(&dword_26B71B000, v152, v153, "No more fast data stores, within parsec timeout", v197, 2u);
      }

      timeOut = SSPriorityIndexDelayMilliseconds() / 1000.0;
      sentPriority = v71->_sentPriority;
      v156 = v150 >= timeOut || v71->_sentPriority;
      if (v156)
      {
        if (!v71->_sentPriority)
        {
          v157 = SPLogForSPLogCategoryDefault();
          v158 = v157;
          if (*MEMORY[0x277D4BF48])
          {
            v159 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v159 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v157, v159))
          {
            *v197 = 0;
            _os_log_impl(&dword_26B71B000, v158, v159, "Send for CoreSpotlight priority path", v197, 2u);
          }

          v149[2](v149, 1);
        }

        timeOut = v71->_timeOut;
      }

      v160 = [(SPQueryTask *)v71 queryProcessor];
      v161 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v160);
      v162 = v71->_timer;
      v71->_timer = v161;

      v163 = v71->_timer;
      v164 = dispatch_time(0, ((timeOut - v150) * 1000000000.0));
      dispatch_source_set_timer(v163, v164, 0xFFFFFFFFFFFFFFFFLL, 0);
      v165 = [v149 copy];

      v166 = v71->_timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_427;
      handler[3] = &unk_279CFE180;
      v149 = v165;
      v195 = v149;
      v196 = v156;
      dispatch_source_set_event_handler(v166, handler);
      dispatch_resume(v71->_timer);
    }

    objc_destroyWeak(&v199);
    objc_destroyWeak(buf);
  }

LABEL_176:
  v172 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rankingItem];
  v6 = [v4 rankingItem];

  if (!v5 || !v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  if (([v5 isServerAlternativeResult] & 1) != 0 || (objc_msgSend(v6, "isServerAlternativeResult") & 1) == 0)
  {
    if ([v5 isServerAlternativeResult] && !objc_msgSend(v6, "isServerAlternativeResult"))
    {
      v7 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = -1;
LABEL_9:

  return v7;
}

void __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_408(uint64_t a1, char a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = (*MEMORY[0x277D286C8])();
  v4 = *(v3 + 16);
  v55 = *v3;
  v56 = v4;
  v57 = *(v3 + 32);
  v6 = *(v5 + 56);
  *v3 = *(v5 + 40);
  *(v3 + 16) = v6;
  v45 = v3;
  *(v3 + 32) = *(v5 + 72);
  WeakRetained = objc_loadWeakRetained((v5 + 32));
  if (WeakRetained)
  {
    v44 = WeakRetained;
    v8 = [WeakRetained query];
    v9 = [v8 cancelled];

    WeakRetained = v44;
    if ((v9 & 1) == 0)
    {
      v10 = *(v45 + 16);
      v52 = *v45;
      v53 = v10;
      v54 = *(v45 + 32);
      v11 = *v45;
      spanid = si_tracing_calc_next_spanid();
      v13 = *(v45 + 8);
      v14 = *(v45 + 24);
      *v45 = v11;
      *(v45 + 8) = spanid;
      *(v45 + 16) = v13;
      *(v45 + 28) = 102;
      *(v45 + 32) = "sendResultsBlock";
      si_tracing_log_span_begin();
      v15 = SPLogForSPLogCategoryQuery();
      v16 = *MEMORY[0x277D4BF50];
      if (os_log_type_enabled(v15, ((*MEMORY[0x277D4BF50] & 1) == 0)))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v15, ((v16 & 1) == 0), "Show local results while waiting for slow queries", buf, 2u);
      }

      if ((a2 & 1) == 0)
      {
        AnalyticsSendEventLazy();
        v17 = (v44 + 232);
        if (!*(v44 + 29))
        {
          v22 = 0;
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v17 = (v44 + 232);
      if (!*(v44 + 29))
      {
        v22 = 1;
        goto LABEL_22;
      }

      v18 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v18, OS_LOG_TYPE_DEFAULT, "Timer fired for CoreSpotlight priority path", buf, 2u);
      }

      v19 = CFAbsoluteTimeGetCurrent() - *(v44 + 27);
      if (v19 >= *(v44 + 28))
      {
        v20 = SPLogForSPLogCategoryDefault();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
LABEL_19:

LABEL_20:
          dispatch_source_cancel(*v17);
          dispatch_source_set_event_handler(*v17, 0);
          v22 = 0;
          v23 = *v17;
          *v17 = 0;
LABEL_21:

LABEL_22:
          v24 = [v44 query];
          v25 = [v24 cancelled];

          if ((v25 & 1) == 0)
          {
            if ((v22 & 1) == 0 && ![*(v44 + 60) count])
            {
              [v44 sendFinishedDomains:1 reason:1];
              v44[278] = 1;
              v44[283] = 1;
              goto LABEL_27;
            }

            [v44 sendFinishedDomains:4];
          }

          if (v22)
          {
LABEL_37:
            v33 = *v45;
            v34 = *(v45 + 8);
            v35 = *(v45 + 16);
            v36 = *(v45 + 24);
            v37 = *(v45 + 28);
            v38 = *(v45 + 32);
            si_tracing_log_span_end();
            v39 = v53;
            *v45 = v52;
            *(v45 + 16) = v39;
            *(v45 + 32) = v54;
            WeakRetained = v44;
            goto LABEL_38;
          }

LABEL_27:
          v26 = v44;
          objc_sync_enter(v26);
          if ([v26[63] count])
          {
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            obj = v26[63];
            v27 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
            if (v27)
            {
              v28 = *v48;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v30 = *(*(&v47 + 1) + 8 * i);
                  [v30 start];
                  v31 = v26[62];
                  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
                  [v31 addObject:v32];

                  [v26[63] removeObject:v30];
                }

                v27 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
              }

              while (v27);
            }
          }

          objc_sync_exit(v26);

          goto LABEL_37;
        }

        *buf = 0;
        v21 = "Don't reset timer for CoreParsec; past deadline";
      }

      else
      {
        if (![*(v44 + 60) count])
        {
          v42 = *v17;
          v43 = dispatch_time(0, ((*(v44 + 28) - v19) * 1000000000.0));
          dispatch_source_set_timer(v42, v43, 0xFFFFFFFFFFFFFFFFLL, 0);
          v23 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26B71B000, v23, OS_LOG_TYPE_DEFAULT, "Reset timer for CoreParsec", buf, 2u);
          }

          v22 = 1;
          goto LABEL_21;
        }

        v20 = SPLogForSPLogCategoryDefault();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v21 = "Don't reset timer for CoreParsec; other waiting stores exist";
      }

      _os_log_impl(&dword_26B71B000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
      goto LABEL_19;
    }
  }

LABEL_38:

  v40 = v56;
  *v45 = v55;
  *(v45 + 16) = v40;
  *(v45 + 32) = v57;
  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)storeCompletedSearch:(id)a3 withSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPQueryTask *)self query];
  v9 = [v8 cancelled];

  v10 = (v9 & 1) == 0 && [(SPFederatedQueryTask *)self storeCompletedSearch:v6 withSections:v7 suggestionResults:0];
  return v10;
}

+ (BOOL)isCJK
{
  if (isCJK_onceToken != -1)
  {
    +[SPFederatedQueryTask isCJK];
  }

  return isCJK_sIsCJK;
}

void __29__SPFederatedQueryTask_isCJK__block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v1 = [v0 firstObject];
  v2 = [v1 lowercaseString];

  if (([v2 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"zh") & 1) != 0 || objc_msgSend(v2, "hasPrefix:", @"ko"))
  {
    isCJK_sIsCJK = 1;
  }
}

- (id)correctedQueryWithCorrection:(id)a3
{
  v4 = MEMORY[0x277D65898];
  v5 = a3;
  v6 = [[v4 alloc] initWithSearchString:v5];

  v7 = [(SPQueryTask *)self query];
  v8 = [v7 queryContext];

  [v6 setWhyQuery:18];
  [v6 setQueryKind:10];
  v9 = [(SPQueryTask *)self query];
  [v6 setQueryIdent:{objc_msgSend(v9, "queryIdent")}];

  v10 = [v8 keyboardLanguage];
  [v6 setKeyboardLanguage:v10];

  v11 = [v8 keyboardPrimaryLanguage];
  [v6 setKeyboardPrimaryLanguage:v11];

  [v8 scaleFactor];
  [v6 setScaleFactor:?];
  v12 = [v8 searchDomains];
  [v6 setSearchDomains:v12];

  v13 = [v8 disabledDomains];
  [v6 setDisabledDomains:v13];

  v14 = [(SPQueryTask *)self query];
  v15 = [v14 disabledApps];
  [v6 setDisabledApps:v15];

  v16 = [(SPQueryTask *)self query];
  v17 = [v16 disabledBundles];
  [v6 setDisabledBundles:v17];

  v18 = [v8 markedTextArray];
  [v6 setMarkedTextArray:v18];

  v19 = [(SPQueryTask *)self query];
  [v6 setPromoteLocalResults:{objc_msgSend(v19, "promoteLocalResults")}];

  v20 = [(SPQueryTask *)self query];
  [v6 setPromoteParsecResults:{objc_msgSend(v20, "promoteParsecResults")}];

  v21 = [(SPQueryTask *)self query];
  [v6 setNoTokenize:{objc_msgSend(v21, "noTokenize")}];

  [v6 setDeviceAuthenticationState:{objc_msgSend(v8, "deviceAuthenticationState")}];
  v22 = [v8 queryUnderstandingOutput];
  [v6 setQueryUnderstandingOutput:v22];

  v23 = [(SPFederatedQueryTask *)self clientBundleID];
  [v6 setClientBundleID:v23];

  v24 = [[SPFederatedQueryTask alloc] initWithQueryContext:v6 externalID:[(SPFederatedQueryTask *)self externalID]];
  v25 = [(SPQueryTask *)self query];
  v26 = [v25 queryContext];
  -[SPFederatedQueryTask setPreviousQueryKind:](v24, "setPreviousQueryKind:", [v26 queryKind]);

  v27 = [(SPQueryTask *)self query];
  v28 = [v27 infinitePatience];
  v29 = [(SPQueryTask *)v24 query];
  [v29 setInfinitePatience:v28];

  v30 = [(SPQueryTask *)self query];
  v31 = [v30 noTokenize];
  v32 = [(SPQueryTask *)v24 query];
  [v32 setNoTokenize:v31];

  v33 = [(SPQueryTask *)self query];
  v34 = [v33 promoteParsecResults];
  v35 = [(SPQueryTask *)v24 query];
  [v35 setPromoteParsecResults:v34];

  v36 = [(SPQueryTask *)self query];
  v37 = [v36 promoteLocalResults];
  v38 = [(SPQueryTask *)v24 query];
  [v38 setPromoteLocalResults:v37];

  v39 = [(SPQueryTask *)self query];
  v40 = [v39 contentFilters];
  v41 = [(SPQueryTask *)v24 query];
  [v41 setContentFilters:v40];

  v42 = [(SPQueryTask *)self query];
  v43 = [v42 maxCount];
  v44 = [(SPQueryTask *)v24 query];
  [v44 setMaxCount:v43];

  v45 = [(SPFederatedQueryTask *)self message];
  [(SPFederatedQueryTask *)v24 setMessage:v45];

  v46 = [(SPQueryTask *)self query];
  v47 = [v46 isWideScreen];
  v48 = [(SPQueryTask *)v24 query];
  [v48 setIsWideScreen:v47];

  v49 = [(SPQueryTask *)self query];
  v50 = [v49 internalDebug];
  v51 = [(SPQueryTask *)v24 query];
  [v51 setInternalDebug:v50];

  [(SPFederatedQueryTask *)v24 setIsRewrite:1];

  return v24;
}

- (void)dealloc
{
  v3 = [(SPFederatedQueryTask *)self message];
  v4 = [v3 needsReply];

  if (v4)
  {
    v5 = [(SPFederatedQueryTask *)self message];
    [v5 sendReply:MEMORY[0x277CBEC10]];
  }

  v6 = [(SPQueryTask *)self query];
  v7 = [v6 cancelled];

  if (v7)
  {
    query_analytics_log_complete(self, "cancel", self->_startTime);
  }

  v8.receiver = self;
  v8.super_class = SPFederatedQueryTask;
  [(SPFederatedQueryTask *)&v8 dealloc];
}

- (id)waitForQueryCorrections
{
  correctionsSem = self->_correctionsSem;
  v4 = dispatch_time(0, 500000000);
  dispatch_semaphore_wait(correctionsSem, v4);
  corrections = self->_corrections;

  return corrections;
}

- (void)addQueryCorrections:(id)a3
{
  objc_storeStrong(&self->_corrections, a3);
  v5 = a3;
  dispatch_semaphore_signal(self->_correctionsSem);
}

- (BOOL)parsecAvailable
{
  if (!self->_parsecEnabled)
  {
    return 0;
  }

  result = [(SPParsecQuery *)self->_parsecQuery available];
  self->_parsecEnabled = result;
  return result;
}

- (void)_processResponse:(id)a3 toQuery:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 kind] == 2 || objc_msgSend(v9, "kind") == 3)
  {
    v7 = [v9 sections];
    v8 = [v9 localSuggestionResults];
    [(SPFederatedQueryTask *)self storeSearchProgress:v6 withSections:v7 suggestionResults:v8];
  }

  else
  {
    v7 = [v9 sections];
    v8 = [v9 localSuggestionResults];
    [(SPFederatedQueryTask *)self storeCompletedSearch:v6 withSections:v7 suggestionResults:v8];
  }
}

- (void)queryTask:(id)a3 gotResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SPFederatedQueryTask_queryTask_gotResponse___block_invoke;
  block[3] = &unk_279CFE1A8;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v8, v11);
}

- (void)addAndStartQuery
{
  v119 = *MEMORY[0x277D85DE8];
  v3 = (*MEMORY[0x277D286C8])(MEMORY[0x277D286C8], a2);
  v4 = *(v3 + 16);
  *(v5 + 160) = *v3;
  *(v5 + 176) = v4;
  v112 = *(v3 + 32);
  v6 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v3 + 8);
  v9 = *(v3 + 24);
  *v3 = v6;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v8;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPFederatedQueryTask addAndStartQuery]";
  si_tracing_log_span_begin();
  v10 = [(SPQueryTask *)self query];
  v86 = [v10 queryContext];

  if (([v86 isSearchToolClient] & 1) == 0 && (sPrepareCacheForSearchContinuationStarted & 1) == 0)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
    [objc_opt_class() prepareCacheForSearchContinuation];
  }

  [(SPFederatedQueryTask *)self startSetup];
  v11 = [v86 searchEntities];
  if ([v11 count])
  {
    v12 = [v86 searchEntities];
    v13 = [v12 lastObject];
    v85 = [v13 currentSearchString];
  }

  else
  {
    v85 = [v86 searchString];
  }

  v14 = SPLogForSPLogCategoryDefault();
  v15 = v14;
  if (*MEMORY[0x277D4BF48])
  {
    v16 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v16 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v14, v16))
  {
    v17 = [v86 searchDomains];
    *buf = 138412546;
    v116 = v85;
    v117 = 2112;
    v118 = v17;
    _os_log_impl(&dword_26B71B000, v15, v16, "#query Starting query for %@ on domains %@", buf, 0x16u);
  }

  v18 = SPLogForSPLogCategoryDefault();
  v19 = v18;
  if (*MEMORY[0x277D4BF48])
  {
    v20 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v20 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v18, v20))
  {
    v21 = [v86 searchDomains];
    *buf = 138412546;
    v116 = v85;
    v117 = 2112;
    v118 = v21;
    _os_log_impl(&dword_26B71B000, v19, v20, "#query Starting query '%@' on domains:%@", buf, 0x16u);
  }

  if ([(NSString *)self->_clientBundleID isEqual:*MEMORY[0x277D4BF20]])
  {
    if ([v85 length])
    {
      if (-[NSString length](self->_lastQuery, "length") && (([v85 hasPrefix:self->_lastQuery] & 1) != 0 || -[NSString hasPrefix:](self->_lastQuery, "hasPrefix:", v85)))
      {
        v22 = [v85 length];
        v23 = [(NSString *)self->_lastQuery length];
        v24 = v22 - v23;
        if ((v22 - v23) < 0)
        {
          v24 = v23 - v22;
        }

        v99 = MEMORY[0x277D85DD0];
        v100 = 3221225472;
        v101 = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2;
        v102 = &__block_descriptor_40_e19___NSDictionary_8__0l;
        v103 = v24;
        AnalyticsSendEventLazy();
      }

      else
      {
        lastQuery = self->_lastQuery;
        if (lastQuery)
        {
          v26 = [(NSString *)lastQuery commonPrefixWithString:v85 options:2];
        }

        else
        {
          v26 = &stru_287C35638;
        }

        v104 = MEMORY[0x277D85DD0];
        v105 = 3221225472;
        v106 = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke;
        v107 = &unk_279CFE1D0;
        v108 = v85;
        v109 = v26;
        AnalyticsSendEventLazy();
      }
    }

    v27 = [v85 copy];
    v28 = self->_lastQuery;
    self->_lastQuery = v27;
  }

  v84 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v29 = [v86 searchDomains];
  v30 = [v29 arrayByAddingObject:&unk_287C3B770];

  v83 = [v30 arrayByAddingObject:&unk_287C3B788];

  v31 = [v86 deviceAuthenticationState];
  if ([v85 length] || (objc_msgSend(v86, "searchEntities"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count") == 0, v32, !v33))
  {
    v34 = [(SPQueryTask *)self query];
    v35 = [v34 queryContext];
    v36 = [v35 isSearchToolClient];

    if (v36)
    {
      [(SPFederatedQueryTask *)self _queriesForSearchTool];
    }

    else
    {
      [(SPFederatedQueryTask *)self _queriesForUserQuery:v31 != 0];
    }
    v37 = ;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v95 objects:v114 count:16];
    if (v39)
    {
      v40 = *v96;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v96 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v95 + 1) + 8 * i);
          [v42 setDelegate:self];
          v43 = [objc_opt_class() searchDomain];
          if (!v31 && v43 == 6)
          {
            [(SPFederatedQueryTask *)self addDelayedStartQuery:v42];
            continue;
          }

          if (v43 == 1)
          {
            v44 = &OBJC_IVAR___SPFederatedQueryTask__csQuery;
          }

          else
          {
            if (v43 != 2)
            {
              continue;
            }

            v44 = &OBJC_IVAR___SPFederatedQueryTask__parsecQuery;
          }

          objc_storeStrong((&self->super.super.isa + *v44), v42);
        }

        v39 = [v38 countByEnumeratingWithState:&v95 objects:v114 count:16];
      }

      while (v39);
    }

    [v38 removeObjectsInArray:self->_delayedStartQueries];
    [(SPFederatedQueryTask *)self setQueries:v38];
  }

  if ([(NSArray *)self->_queries count])
  {
    v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v46 = [(SPQueryTask *)self query];
    v47 = [v46 infinitePatience];

    if (v47)
    {
      v48 = SPLogForSPLogCategoryDefault();
      v49 = v48;
      if (*MEMORY[0x277D4BF48])
      {
        v50 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v50 = OS_LOG_TYPE_DEBUG;
      }

      v51 = 0.0;
      if (!os_log_type_enabled(v48, v50))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v52 = "Query with infinite patience";
    }

    else
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v55 = self->_queries;
      v56 = [(NSArray *)v55 countByEnumeratingWithState:&v91 objects:v113 count:16];
      if (v56)
      {
        v57 = *v92;
        v51 = 0.0;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v92 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v59 = *(*(&v91 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v59 timeOut:{objc_msgSend(objc_opt_class(), "searchDomain") == 7}];
              v61 = v60;
              if (v60 > 0.0)
              {
                [v45 addObject:v59];
                if (v61 >= v51)
                {
                  v62 = v51;
                }

                else
                {
                  v62 = v61;
                }

                if (v51 <= 0.0)
                {
                  v51 = v61;
                }

                else
                {
                  v51 = v62;
                }
              }
            }
          }

          v56 = [(NSArray *)v55 countByEnumeratingWithState:&v91 objects:v113 count:16];
        }

        while (v56);
      }

      else
      {
        v51 = 0.0;
      }

      v63 = SPLogForSPLogCategoryDefault();
      v49 = v63;
      if (*MEMORY[0x277D4BF48])
      {
        v50 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v50 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v63, v50))
      {
        goto LABEL_84;
      }

      *buf = 0;
      v52 = "Query with timeout";
    }

    _os_log_impl(&dword_26B71B000, v49, v50, v52, buf, 2u);
LABEL_84:

    self->_parsecEnabled = +[SPParsecQuery isParsecEnabled];
    v64 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setMaxCount:](self->_csQuery, "setMaxCount:", [v64 maxCount]);

    v65 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setContentFilters:](self->_csQuery, "setContentFilters:", [v65 contentFilters]);

    v66 = [(SPFederatedQueryTask *)self itemRanker];
    [(SPCSSearchQuery *)self->_csQuery setItemRanker:v66];

    [(SPCSSearchQuery *)self->_csQuery setPreviousQueryKind:self->_previousQueryKind];
    [(SPCSSearchQuery *)self->_csQuery setIsCJK:self->_isCJK];
    [(SPCSSearchQuery *)self->_csQuery setIsPeopleSearch:self->_isPeopleSearch];
    [(SPCSSearchQuery *)self->_csQuery setIsPhotosSearch:self->_isPhotosSearch];
    [(SPCSSearchQuery *)self->_csQuery setParsecAvailable:[(SPFederatedQueryTask *)self parsecAvailable]];
    v67 = [(SPQueryTask *)self query];
    [v67 currentTime];
    [(SPCSSearchQuery *)self->_csQuery setCurrentTime:?];

    v68 = SPLogForSPLogCategoryDefault();
    v69 = v68;
    if (*MEMORY[0x277D4BF48])
    {
      v70 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v70 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v68, v70))
    {
      v71 = qos_class_self();
      *buf = 67109120;
      LODWORD(v116) = v71;
      _os_log_impl(&dword_26B71B000, v69, v70, "QOS addAndStartQuery: %d", buf, 8u);
    }

    objc_initWeak(buf, self);
    v72 = [(SPQueryTask *)self queryProcessor];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_454;
    block[3] = &unk_279CFE240;
    objc_copyWeak(v90, buf);
    block[4] = self;
    v90[1] = *&v51;
    v73 = v45;
    v88 = v73;
    v89 = v85;
    v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
    tracing_dispatch_async();

    objc_destroyWeak(v90);
    objc_destroyWeak(buf);

    goto LABEL_90;
  }

  v53 = SPLogForSPLogCategoryQuery();
  v54 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v53, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v53, ((v54 & 1) == 0), "#query No stores for query!", buf, 2u);
  }

  [(SPFederatedQueryTask *)self sendQueryCompleted];
LABEL_90:

  v75 = *v3;
  v76 = *(v3 + 8);
  v77 = *(v3 + 16);
  v78 = *(v3 + 24);
  v79 = *(v3 + 28);
  v80 = *(v3 + 32);
  si_tracing_log_span_end();
  v81 = v111;
  *v3 = v110;
  *(v3 + 16) = v81;
  *(v3 + 32) = v112;
  v82 = *MEMORY[0x277D85DE8];
}

id __40__SPFederatedQueryTask_addAndStartQuery__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"keystrokes";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "length") - objc_msgSend(*(a1 + 40), "length")}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"keystrokes";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_454(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = (*MEMORY[0x277D286C8])();
  v24 = *v3;
  v25 = *(v3 + 16);
  v26 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  v7 = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "SDClient:  Starting query";
  si_tracing_log_span_begin();
  v8 = objc_alloc(MEMORY[0x277D4C270]);
  v9 = [*(a1 + 32) query];
  v10 = [v8 initWithEvent:@"com.apple.spotlight.backend.stores.start" timeInterval:0 queryId:{objc_msgSend(v9, "queryIdent")}];

  v11 = [MEMORY[0x277D4BEC0] sharedProxy];
  v12 = [*(a1 + 32) query];
  [v11 sendFeedbackType:21 feedback:v10 queryId:objc_msgSend(v12 clientID:{"queryIdent"), *(*(a1 + 32) + 448)}];

  if (*(a1 + 64) > 0.0)
  {
    [*(a1 + 32) setTimeout:?];
  }

  if (WeakRetained)
  {
    [WeakRetained[80] count];
    v20 = WeakRetained;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    tracing_dispatch_apply();
  }

  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v17 = *(v3 + 28);
  v18 = *(v3 + 32);
  si_tracing_log_span_end();
  *v3 = v24;
  *(v3 + 16) = v25;
  *(v3 + 32) = v26;

  v19 = *MEMORY[0x277D85DE8];
}

__n128 __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_2_459(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (*MEMORY[0x277D286C8])();
  v24 = *v4;
  v25 = *(v4 + 16);
  v26 = *(v4 + 32);
  v5 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v4 + 8);
  v8 = *(v4 + 24);
  *v4 = v5;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v7;
  *(v4 + 28) = 102;
  *(v4 + 32) = "SDClient:  Issuing query for store";
  si_tracing_log_span_begin();
  v9 = [*(*(a1 + 32) + 640) objectAtIndex:a2];
  v10 = [*(a1 + 40) query];
  v11 = [v10 cancelled];

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    [v9 activate];
    [v9 start];
    if ([v9 isStarted])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(objc_opt_class(), "searchDomain")}];
      pthread_mutex_lock(*(a1 + 64));
      v14 = [*(a1 + 48) containsObject:v9];
      v15 = *(a1 + 40);
      if (v14)
      {
        [v15 addSlowQueryToken:v13];
      }

      else
      {
        [v15 addQueryToken:v13];
      }

      pthread_mutex_unlock(*(a1 + 64));
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *v4;
  v17 = *(v4 + 8);
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);
  v20 = *(v4 + 28);
  v21 = *(v4 + 32);
  si_tracing_log_span_end();
  result = v24;
  *v4 = v24;
  *(v4 + 16) = v25;
  *(v4 + 32) = v26;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)contactEntityFromQueryContext:(id)a3
{
  if (a3)
  {
    v3 = [a3 searchEntities];
    v4 = [v3 firstObject];

    if ([v4 isContactEntitySearch])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForSession:(id)a3 withQuery:(id)a4
{
  v107 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SPQueryTask *)self init];
  v9 = v8;
  if (v8)
  {
    [(SPQueryTask *)v8 setQuery:v7];
    [(SPFederatedQueryTask *)v9 setSession:v6];
    v10 = [(SPQueryTask *)v9 query];
    [(SPFederatedQueryTask *)v9 _updateQueryContext:v10];

    v11 = [v7 queryContext];
    v12 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.query.start" timeInterval:0 queryId:{objc_msgSend(v11, "queryIdent")}];
    v13 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.suggestions.start" timeInterval:0 queryId:{objc_msgSend(v11, "queryIdent")}];
    v14 = [v11 queryIdent];
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [v15 bundleIdentifier];
    clientBundleID = v9->_clientBundleID;
    v9->_clientBundleID = v16;

    [v11 setClientBundleID:v9->_clientBundleID];
    v18 = [MEMORY[0x277D4BEC0] sharedProxy];
    v98 = v12;
    [v18 sendFeedbackType:21 feedback:v12 queryId:v14 clientID:v9->_clientBundleID];
    v96 = v18;
    v97 = v13;
    [v18 sendFeedbackType:21 feedback:v13 queryId:v14 clientID:v9->_clientBundleID];
    v9->_externalID = atomic_fetch_add(&__queryTokenGen, 1u);
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    tokens = v9->_tokens;
    v9->_tokens = v19;

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    slowTokens = v9->_slowTokens;
    v9->_slowTokens = v21;

    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    delayedStartQueries = v9->_delayedStartQueries;
    v9->_delayedStartQueries = v23;

    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    delayedStartTokens = v9->_delayedStartTokens;
    v9->_delayedStartTokens = v25;

    v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    finishedTokens = v9->_finishedTokens;
    v9->_finishedTokens = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoryToResultMapping = v9->_categoryToResultMapping;
    v9->_categoryToResultMapping = v29;

    v31 = objc_opt_new();
    sectionOrderByInsertion = v9->_sectionOrderByInsertion;
    v9->_sectionOrderByInsertion = v31;

    v99 = v7;
    v33 = [v7 queryContext];
    v34 = [v33 disabledDomains];
    v9->_parsecSettingEnabled = [v34 containsObject:&unk_287C3B740] ^ 1;

    [SPParsecQuery parsecEnabled:v9->_parsecSettingEnabled];
    v35 = objc_opt_new();
    [(SPFederatedQueryTask *)v9 setCategoryEngagements:v35];

    v9->_isRewrite = 0;
    v9->_isNLPSearch = 0;
    v36 = dispatch_semaphore_create(0);
    correctionsSem = v9->_correctionsSem;
    v9->_correctionsSem = v36;

    v38 = [v11 searchString];
    v39 = [v11 searchEntities];
    v40 = [v39 count];

    v101 = v11;
    if (v40)
    {
      v94 = v6;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v41 = [v11 searchEntities];
      v42 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
      if (!v42)
      {
        goto LABEL_20;
      }

      v43 = v42;
      v44 = *v103;
      while (1)
      {
        v45 = 0;
        v46 = v38;
        do
        {
          if (*v103 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v102 + 1) + 8 * v45);
          v48 = [v47 isAppEntitySearch];
          v49 = &OBJC_IVAR___SPFederatedQueryTask__isScopedAppSearch;
          if (v48 & 1) != 0 || (v50 = [v47 isContactEntitySearch], v49 = &OBJC_IVAR___SPFederatedQueryTask__isPeopleSearch, (v50) || (v51 = objc_msgSend(v47, "isPhotosEntitySearch"), v49 = &OBJC_IVAR___SPFederatedQueryTask__isPhotosSearch, (v51))
          {
            p_isNLPSearch = v9 + *v49;
LABEL_12:
            *p_isNLPSearch = 1;
            goto LABEL_13;
          }

          v55 = [v47 isNLPEntitySearch];
          p_isNLPSearch = &v9->_isNLPSearch;
          if (v55)
          {
            goto LABEL_12;
          }

LABEL_13:
          if ([v47 isCommandEntitySearch])
          {
            v9->_isEntitySearch = 1;
            v53 = [(SPQueryTask *)v9 query];
            [v53 setInfinitePatience:1];
          }

          v54 = [v101 searchString];
          [v47 updateSearchString:v54];

          v38 = [v47 currentSearchString];

          ++v45;
          v46 = v38;
        }

        while (v43 != v45);
        v56 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
        v43 = v56;
        if (!v56)
        {
LABEL_20:

          v6 = v94;
          v11 = v101;
          break;
        }
      }
    }

    v57 = [v11 keyboardPrimaryLanguage];
    v58 = [v57 lowercaseString];

    v59 = [MEMORY[0x277CBEAF8] currentLocale];
    v60 = [v59 objectForKey:*MEMORY[0x277CBE6C8]];

    if (![v58 hasPrefix:@"en"] || (v61 = objc_msgSend(v60, "hasPrefix:", @"en"), v62 = v60, v61))
    {
      v62 = v58;
    }

    v95 = v60;
    v63 = v62;
    v100 = v58;
    if (+[SPFederatedQueryTask isCJK](SPFederatedQueryTask, "isCJK") || ([v58 hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(v58, "hasPrefix:", @"zh") & 1) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = [v58 hasPrefix:@"ko"];
    }

    v9->_isCJK = v64;
    [MEMORY[0x277D65978] prepareTopHitsParametersForLanguage:v63];
    v65 = [objc_alloc(MEMORY[0x277D65978]) initWithQuery:v38];
    rankingManager = v9->_rankingManager;
    v9->_rankingManager = v65;

    v67 = CFPreferencesCopyAppValue(@"SearchRankingUseCreationDateL2", @"com.apple.searchd");
    v68 = CFPreferencesCopyAppValue(@"SearchRankingL2YWeight", @"com.apple.searchd");
    if (v9->_isPeopleSearch)
    {
      v69 = [(SPFederatedQueryTask *)v9 itemRanker];
      [v69 setIsPeopleSearch:1];
    }

    v70 = objc_alloc(MEMORY[0x277D65838]);
    isCJK = v9->_isCJK;
    [v67 doubleValue];
    v73 = v72;
    [v68 doubleValue];
    v75 = v74;
    v76 = [(SPQueryTask *)v9 query];
    [v76 currentTime];
    v78 = [v70 initWithSearchString:v38 queryID:v14 language:v63 isCJK:isCJK experimentalWeight1:v73 experimentalWeight2:v75 currentTime:v77];
    [(SPFederatedQueryTask *)v9 setItemRanker:v78];

    v79 = [(SPQueryTask *)v9 query];
    v80 = [v79 queryContext];
    v81 = [v80 isSearchToolClient];
    v82 = [(SPFederatedQueryTask *)v9 itemRanker];
    [v82 setIsSearchToolClient:v81];

    [(SPFederatedQueryTask *)v9 setIsInternalDevice:os_variant_has_internal_diagnostics()];
    v9->_parsecCameLaterThanSRT = 0;
    v9->_parsecEntityCameEarly = 0;
    v9->_shouldRecomputeSuggestions = 1;
    v83 = [v101 searchEntities];
    v84 = [v83 count];

    if (v84)
    {
      v85 = [v101 searchEntities];
      v86 = [v85 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v88 = [v101 searchEntities];
        v89 = [v88 firstObject];
        v90 = [v89 preferredBundleIDs];
        preferredBundleIDs = v9->_preferredBundleIDs;
        v9->_preferredBundleIDs = v90;

        v9->_enforcePreferredBundleIDs = 1;
      }
    }

    v7 = v99;
  }

  v92 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updateResultsWithContactHeader
{
  v11 = [(SPQueryTask *)self previousQueryContext];
  v3 = [objc_opt_class() contactEntityFromQueryContext:v11];
  v4 = [(SPQueryTask *)self query];
  v5 = [v4 queryContext];

  v6 = [objc_opt_class() contactEntityFromQueryContext:v5];
  if (updateResultsWithContactHeader_onceToken != -1)
  {
    [SPFederatedQueryTask updateResultsWithContactHeader];
  }

  if ((updateResultsWithContactHeader_isPeopleViewService & 1) != 0 || v6 && (!v3 || ([v6 hasSameContactAsContactEntity:v3] & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x277D4BEB8]);
    v8 = [v7 initWithSections:MEMORY[0x277CBEBF8]];
    v9 = [(SPQueryTask *)self query];
    LODWORD(v10) = 0;
    [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:v9 replace:v8 partiallyComplete:1 priorityFastPath:1 update:0 complete:0 delayedTopHit:0.0 unchanged:v10 forceStable:0 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
  }
}

void __54__SPFederatedQueryTask_updateResultsWithContactHeader__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  updateResultsWithContactHeader_isPeopleViewService = [v0 isEqualToString:@"PeopleViewService"];
}

- (void)_updateQueryContext:(id)a3
{
  v3 = a3;
  v4 = [v3 queryIdent];
  v5 = [v3 queryContext];
  [v5 setQueryIdent:v4];

  v6 = [v3 promoteLocalResults];
  v7 = [v3 queryContext];
  [v7 setPromoteLocalResults:v6];

  v8 = [v3 promoteParsecResults];
  v9 = [v3 queryContext];
  [v9 setPromoteParsecResults:v8];

  v10 = [v3 disabledBundles];
  v11 = [v3 queryContext];
  [v11 setDisabledBundles:v10];

  v12 = [v3 disabledApps];
  v13 = [v3 queryContext];
  [v13 setDisabledApps:v12];

  v14 = [v3 internalValidation];
  v15 = [v3 queryContext];
  [v15 setInternalValidation:v14];

  [v3 currentTime];
  v17 = v16;
  v18 = [v3 queryContext];

  [v18 setCurrentTime:v17];
}

- (void)start
{
  if ([(SPFederatedQueryTask *)self started])
  {
    [SPFederatedQueryTask start];
  }

  [(SPFederatedQueryTask *)self setNewQuery:1];
  objc_initWeak(&location, self);
  v3 = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPFederatedQueryTask_start__block_invoke;
  block[3] = &unk_279CFE268;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __29__SPFederatedQueryTask_start__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) started])
  {
    __29__SPFederatedQueryTask_start__block_invoke_cold_1();
  }

  v3 = SPLogForSPLogCategoryQuery();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    v6 = [*(a1 + 32) query];
    v7 = [v6 queryContext];
    v8 = [v7 searchString];
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&dword_26B71B000, v4, v5, "Started search on %@", &v18, 0xCu);
  }

  [*(a1 + 32) setStarted:1];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [*(a1 + 32) setMutableSections:v9];

  v10 = objc_alloc(MEMORY[0x277D4C270]);
  v11 = [*(a1 + 32) query];
  v12 = [v10 initWithEvent:@"com.apple.searchd.frontend.query.start" timeInterval:0 queryId:{objc_msgSend(v11, "queryIdent")}];

  [*(a1 + 32) activate];
  [*(a1 + 32) addAndStartQuery];
  [*(a1 + 32) updateResultsWithContactHeader];
  if (WeakRetained)
  {
    v13 = SPLogForSPLogCategoryTelemetry();
    v14 = v13;
    v15 = WeakRetained[48];
    if (v15 && os_signpost_enabled(v13))
    {
      LOWORD(v18) = 0;
      _os_signpost_emit_with_name_impl(&dword_26B71B000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "queryUI", " enableTelemetry=YES ", &v18, 2u);
    }

    v16 = WeakRetained[48];
    kdebug_trace();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  if (self->_active)
  {
    v8 = v2;
    v9 = v3;
    v4 = SPLogForSPLogCategoryDefault();
    v5 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v4, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      *v7 = 0;
      _os_log_impl(&dword_26B71B000, v4, ((v5 & 1) == 0), "already active, ignoring", v7, 2u);
    }
  }

  else
  {
    self->_active = 1;
    v6 = MEMORY[0x277D65838];

    [v6 preheat];
  }
}

- (void)clear
{
  objc_initWeak(&location, self);
  v3 = [(SPQueryTask *)self queryProcessor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SPFederatedQueryTask_clear__block_invoke;
  v5[3] = &unk_279CFE290;
  objc_copyWeak(&v6, &location);
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v5);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __29__SPFederatedQueryTask_clear__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = WeakRetained[80];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) activate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [MEMORY[0x277D65838] preheat];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CC3468] sharedInstance];
  [v3 logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];

  v4 = [(SPQueryTask *)self query];
  [v4 cancel];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(SPFederatedQueryTask *)self queries];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(SPFederatedQueryTask *)self activate];
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)activate
{
  v2 = objc_opt_class();

  [v2 activate:0];
}

+ (void)activate:(BOOL)a3
{
  if (!a3)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
  }

  v5 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SPFederatedQueryTask_activate___block_invoke;
  v6[3] = &__block_descriptor_41_e5_v8__0l;
  v7 = a3;
  v6[4] = a1;
  dispatch_async(v5, v6);

  SSQueryParserPreheat();
  SPBuildApplicationNames();
  +[SPCSSearchQuery activate];
  +[SPDictionaryQuery activate];
}

void __33__SPFederatedQueryTask_activate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v2 loadAllParametersForClient:@"Spotlight"];

  [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
  [MEMORY[0x277D65838] preheat];
  v3 = [MEMORY[0x277D65818] sharedModelManager];
  [v3 activate];

  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();

    [v5 prepareCacheForSearchContinuation];
  }
}

+ (void)deactivate
{
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &__block_literal_global_505);

  MEMORY[0x26D67EFF0]();
  +[SPCSSearchQuery deactivate];

  +[SPDictionaryQuery deactivate];
}

uint64_t __34__SPFederatedQueryTask_deactivate__block_invoke()
{
  v0 = [MEMORY[0x277D657E8] sharedResourcesManager];
  [v0 loadAllParametersForClient:@"Spotlight"];

  [MEMORY[0x277D65978] reloadRankingParametersFromTrial];
  [MEMORY[0x277D65978] deactivate];
  v1 = [MEMORY[0x277D65818] sharedModelManager];
  [v1 deactivate];

  v2 = [MEMORY[0x277D65818] sharedModelManager];
  [v2 triggerUpdate];

  return MEMORY[0x282186078](0);
}

- (id)searchString
{
  v2 = [(SPQueryTask *)self query];
  v3 = [v2 queryContext];
  v4 = [v3 searchString];

  return v4;
}

- (void)mergeSections
{
  v4 = self;
  v208 = *MEMORY[0x277D85DE8];
  v5 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v5);

  v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v152 = v4;
  v7 = [(SPQueryTask *)v4 mutableSections];
  v8 = [v7 firstObject];

  v9 = [v8 bundleIdentifier];
  LOBYTE(v4) = [v9 isEqualToString:@"com.apple.spotlight.tophits"];

  if ((v4 & 1) == 0)
  {

    v8 = 0;
  }

  v153 = v8;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v10 = [v152 mutableSections];
  v11 = [v10 copy];

  obj = v11;
  v164 = [v11 countByEnumeratingWithState:&v194 objects:v207 count:16];
  if (v164)
  {
    v163 = *v195;
    v172 = *MEMORY[0x277D65B98];
    v171 = *MEMORY[0x277D65A00];
    v154 = v6;
    v155 = *MEMORY[0x277D65B80];
    do
    {
      for (i = 0; i != v164; ++i)
      {
        if (*v195 != v163)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v194 + 1) + 8 * i);
        if (![v13 resultsCount])
        {
          continue;
        }

        v14 = [v13 title];
        v165 = i;
        if (v14)
        {
          v15 = v13;
          v16 = [v13 title];
          v17 = [v16 uppercaseString];
        }

        else
        {
          v16 = [v13 bundleIdentifier];
          if (!v16)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = v13;
          v17 = [v13 bundleIdentifier];
        }

        v18 = v17;
        v19 = [v162 objectForKey:v17];

        v13 = v15;
LABEL_14:

        if (([v19 doNotFold] & 1) != 0 || objc_msgSend(v13, "doNotFold"))
        {

LABEL_17:
          [v6 addObject:v13];
          v20 = [v13 title];

          if (v20)
          {
            [v13 title];
            v22 = v21 = v13;
            v23 = [v22 uppercaseString];
            [v162 setObject:v21 forKey:v23];

            i = v165;
            goto LABEL_142;
          }

          v24 = [v13 bundleIdentifier];

          i = v165;
          if (v24)
          {
            v25 = [v13 bundleIdentifier];
            v26 = v13;
            v22 = v25;
            [v162 setObject:v26 forKey:v25];
            goto LABEL_142;
          }

          continue;
        }

        if (!v19)
        {
          goto LABEL_17;
        }

        v27 = v19;
        v28 = [v6 indexOfObject:v27];
        v170 = v27;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        v29 = v28;
        v30 = [v13 maxInitiallyVisibleResults];
        if (v30 <= [v27 maxInitiallyVisibleResults])
        {
          v31 = v27;
        }

        else
        {
          v31 = v13;
        }

        [v27 setMaxInitiallyVisibleResults:{objc_msgSend(v31, "maxInitiallyVisibleResults")}];
        v158 = v13;
        [v13 setMaxInitiallyVisibleResults:{objc_msgSend(v27, "maxInitiallyVisibleResults")}];
        [v6 replaceObjectAtIndex:v29 withObject:v27];
        v173 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v32 = [v27 resultSet];
        [v32 objectAtIndexedSubscript:0];
        v34 = v33 = v27;
        v35 = [v34 sectionBundleIdentifier];
        v36 = v35;
        v37 = v155;
        if (v35)
        {
          v157 = v35;
        }

        else
        {
          v38 = [v33 resultSet];
          v39 = [v38 objectAtIndexedSubscript:0];
          v157 = [v39 applicationBundleIdentifier];
        }

        v40 = [v158 resultSet];
        v41 = [v40 objectAtIndexedSubscript:0];
        v42 = [v41 sectionBundleIdentifier];
        v43 = v42;
        if (v42)
        {
          v156 = v42;
        }

        else
        {
          v44 = [v158 resultSet];
          v45 = [v44 objectAtIndexedSubscript:0];
          v156 = [v45 applicationBundleIdentifier];
        }

        if (([v157 isEqualToString:@"com.apple.Maps"] & 1) != 0 || objc_msgSend(v156, "isEqualToString:", @"com.apple.Maps"))
        {
          v46 = v158;
          if ([v157 isEqualToString:@"com.apple.Maps"])
          {
            v47 = [v170 results];
            v48 = [v47 copy];

            [v170 clearResults];
            v49 = [v158 results];

            if (v49)
            {
              v50 = [v158 results];
              [v170 addResultsFromArray:v50];
            }

            [v158 clearResults];
            if (v48)
            {
              [v158 addResultsFromArray:v48];
            }

            v51 = [v158 domain];
            [v158 setDomain:{objc_msgSend(v170, "domain")}];
            [v170 setDomain:v51];
            v52 = [v158 title];
            v53 = [v170 title];
            [v158 setTitle:v53];

            v54 = v52;
            [v170 setTitle:v52];
LABEL_77:
          }

          goto LABEL_78;
        }

        if ([v170 domain] != 2)
        {
          v55 = [v170 resultSet];
          v56 = [v55 objectAtIndexedSubscript:0];
          v57 = [v56 applicationBundleIdentifier];
          v58 = v57;
          if (v57)
          {
            v48 = v57;
          }

          else
          {
            v59 = [v170 resultSet];
            v60 = [v59 objectAtIndexedSubscript:0];
            v48 = [v60 sectionBundleIdentifier];
          }

          v61 = [v158 resultSet];
          v62 = [v61 objectAtIndexedSubscript:0];
          v63 = [v62 applicationBundleIdentifier];
          v64 = v63;
          if (v63)
          {
            v161 = v63;
          }

          else
          {
            v65 = [v158 resultSet];
            v66 = [v65 objectAtIndexedSubscript:0];
            v161 = [v66 sectionBundleIdentifier];
          }

          v67 = [v158 title];
          v166 = [v67 uppercaseString];

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          v168 = [v153 resultSet];
          v68 = [v168 countByEnumeratingWithState:&v190 objects:v206 count:16];
          if (!v68)
          {
            v54 = v161;
            goto LABEL_76;
          }

          v69 = v68;
          v70 = *v191;
          v160 = v48;
          v54 = v161;
          while (1)
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v191 != v70)
              {
                objc_enumerationMutation(v168);
              }

              v72 = *(*(&v190 + 1) + 8 * j);
              v73 = [v72 title];
              if (!v73)
              {
                goto LABEL_72;
              }

              if (v48)
              {
                v3 = [v72 resultBundleId];
                if ([v3 isEqualToString:v48])
                {
                  goto LABEL_60;
                }
              }

              if (v54)
              {
                v2 = [v72 resultBundleId];
                if ([v2 isEqualToString:v54])
                {

                  if (v48)
                  {
LABEL_60:
                  }

LABEL_71:
                  [v173 addObject:v73];
                  goto LABEL_72;
                }

                if (!v166)
                {
                  v74 = 0;
LABEL_67:

                  goto LABEL_68;
                }
              }

              else if (!v166)
              {
                v74 = 0;
                goto LABEL_68;
              }

              v75 = v2;
              v76 = v3;
              v77 = [v72 sectionHeader];
              v78 = [v77 uppercaseString];
              v74 = [v78 isEqual:v166];

              v3 = v76;
              v2 = v75;
              v48 = v160;
              v54 = v161;
              if (v161)
              {
                goto LABEL_67;
              }

LABEL_68:
              if (v48)
              {
              }

              if (v74)
              {
                goto LABEL_71;
              }

LABEL_72:
            }

            v69 = [v168 countByEnumeratingWithState:&v190 objects:v206 count:16];
            if (!v69)
            {
LABEL_76:

              v46 = v158;
              goto LABEL_77;
            }
          }
        }

        v46 = v158;
LABEL_78:
        v169 = v3;
        v79 = [v46 bundleIdentifier];
        v80 = [v79 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v80)
        {
          v167 = v2;
          v81 = objc_opt_new();
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v82 = [v170 resultSet];
          v83 = [v82 countByEnumeratingWithState:&v186 objects:v205 count:16];
          if (v83)
          {
            v84 = v83;
            v85 = *v187;
            do
            {
              for (k = 0; k != v84; ++k)
              {
                if (*v187 != v85)
                {
                  objc_enumerationMutation(v82);
                }

                v87 = *(*(&v186 + 1) + 8 * k);
                v88 = [v87 resultBundleId];
                if (v88)
                {
                  v89 = v88;
                  v90 = [v87 completion];

                  if (v90)
                  {
                    v91 = [v87 resultBundleId];
                    v204[0] = v91;
                    v92 = [v87 completion];
                    v204[1] = v92;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v204 count:2];

                    [v81 setObject:v87 forKeyedSubscript:v93];
                  }
                }
              }

              v84 = [v82 countByEnumeratingWithState:&v186 objects:v205 count:16];
            }

            while (v84);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v94 = [v158 resultSet];
          v95 = [v94 countByEnumeratingWithState:&v182 objects:v203 count:16];
          if (v95)
          {
            v96 = v95;
            v97 = *v183;
            do
            {
              for (m = 0; m != v96; ++m)
              {
                if (*v183 != v97)
                {
                  objc_enumerationMutation(v94);
                }

                v99 = *(*(&v182 + 1) + 8 * m);
                v100 = [v99 resultBundleId];
                if (v100)
                {
                  v101 = v100;
                  v102 = [v99 completion];

                  if (v102)
                  {
                    v103 = [v99 resultBundleId];
                    v202[0] = v103;
                    v104 = [v99 completion];
                    v202[1] = v104;
                    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:2];
                    v106 = [v81 objectForKeyedSubscript:v105];

                    if (!v106)
                    {
                      [v170 addResults:v99];
                    }
                  }
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v182 objects:v203 count:16];
            }

            while (v96);
          }

          v37 = v155;
          v2 = v167;
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        v107 = [v170 resultSet];
        v108 = [v107 countByEnumeratingWithState:&v178 objects:v201 count:16];
        if (v108)
        {
          v109 = v108;
          v110 = *v179;
          do
          {
            v111 = 0;
            do
            {
              if (*v179 != v110)
              {
                objc_enumerationMutation(v107);
              }

              v112 = *(*(&v178 + 1) + 8 * v111);
              v113 = [v112 resultBundleId];
              v114 = [v113 isEqualToString:v37];

              if (v114)
              {
                v115 = [v112 contentURL];
              }

              else
              {
                v116 = [v112 resultBundleId];
                v117 = [v116 isEqualToString:v172];

                if (v117 || ([v112 contentType], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", v171), v118, v119))
                {
                  v115 = [v112 identifier];
                }

                else
                {
                  v121 = [v112 title];
                  if (!v121)
                  {
                    goto LABEL_114;
                  }

                  v122 = v121;
                  v123 = [v112 title];
                  v124 = [v123 text];

                  if (!v124)
                  {
                    goto LABEL_114;
                  }

                  v115 = [v112 title];
                }
              }

              v120 = v115;
              if (v115)
              {
                [v173 addObject:v115];
              }

LABEL_114:
              ++v111;
            }

            while (v109 != v111);
            v125 = [v107 countByEnumeratingWithState:&v178 objects:v201 count:16];
            v109 = v125;
          }

          while (v125);
        }

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        v126 = [v158 resultSet];
        v127 = [v126 countByEnumeratingWithState:&v174 objects:v200 count:16];
        if (!v127)
        {
          goto LABEL_140;
        }

        v128 = v127;
        v129 = *v175;
        do
        {
          v130 = 0;
          do
          {
            if (*v175 != v129)
            {
              objc_enumerationMutation(v126);
            }

            v131 = *(*(&v174 + 1) + 8 * v130);
            v132 = [v131 resultBundleId];
            v133 = [v132 isEqualToString:v37];

            if (v133)
            {
              v134 = [v131 contentURL];
            }

            else
            {
              v135 = [v131 resultBundleId];
              v136 = [v135 isEqualToString:v172];

              if (v136 || ([v131 contentType], v137 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend(v137, "isEqualToString:", v171), v137, v138))
              {
                v134 = [v131 identifier];
              }

              else
              {
                v139 = [v131 title];
                if (!v139)
                {
                  goto LABEL_133;
                }

                v140 = [v131 title];
                v141 = [v140 text];

                if (!v141)
                {
                  v139 = 0;
                  goto LABEL_133;
                }

                v134 = [v131 title];
              }
            }

            v139 = v134;
            if (v134 && ([v173 containsObject:v134] & 1) == 0)
            {
              [v170 addResults:v131];
            }

LABEL_133:

            ++v130;
          }

          while (v128 != v130);
          v142 = [v126 countByEnumeratingWithState:&v174 objects:v200 count:16];
          v128 = v142;
        }

        while (v142);
LABEL_140:

        v6 = v154;
        v3 = v169;
LABEL_141:
        i = v165;
        v22 = v170;

LABEL_142:
      }

      v164 = [obj countByEnumeratingWithState:&v194 objects:v207 count:16];
    }

    while (v164);
  }

  if (_os_feature_enabled_impl() && [v6 count])
  {
    [v152 relatedContentSectionMerging:v6];
  }

  v143 = [v6 count];
  [v152 setMutableSections:v6];
  v144 = SPLogForSPLogCategoryDefault();
  v145 = *MEMORY[0x277D4BF50];
  v146 = os_log_type_enabled(v144, ((*MEMORY[0x277D4BF50] & 1) == 0));
  if (v143)
  {
    if (v146)
    {
      *buf = 138412290;
      v199 = v6;
      v147 = "Merge sections %@";
      v148 = (v145 & 1) == 0;
      v149 = v144;
      v150 = 12;
LABEL_153:
      _os_log_impl(&dword_26B71B000, v149, v148, v147, buf, v150);
    }
  }

  else if (v146)
  {
    *buf = 0;
    v147 = "Empty after updates";
    v148 = (v145 & 1) == 0;
    v149 = v144;
    v150 = 2;
    goto LABEL_153;
  }

  v151 = *MEMORY[0x277D85DE8];
}

- (void)relatedContentSectionMerging:(id)a3
{
  v4 = relatedContentSectionMerging__onceToken;
  v5 = a3;
  v7 = v5;
  if (v4 == -1)
  {
    v6 = v5;
  }

  else
  {
    [SPFederatedQueryTask relatedContentSectionMerging:];
    v6 = v7;
  }

  [(SPFederatedQueryTask *)self mergeRelatedContentFromSections:v6 bundlesToMerge:relatedContentSectionMerging__webBundles mergedSectionId:sSectionMergingBlendedWeb];
  [(SPFederatedQueryTask *)self mergeRelatedContentFromSections:v7 bundlesToMerge:relatedContentSectionMerging__musicBundles mergedSectionId:sSectionMergingBlendedMusic];
}

void __53__SPFederatedQueryTask_relatedContentSectionMerging___block_invoke()
{
  v13[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D65B30];
  v13[0] = *MEMORY[0x277D65B80];
  v13[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = relatedContentSectionMerging__webBundles;
  relatedContentSectionMerging__webBundles = v3;

  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277D65B68];
  v12[0] = *MEMORY[0x277D65AD8];
  v12[1] = v6;
  v7 = *MEMORY[0x277D65AF0];
  v12[2] = *MEMORY[0x277D65B18];
  v12[3] = v7;
  v12[4] = *MEMORY[0x277D65B00];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];
  v9 = [v5 setWithArray:v8];
  v10 = relatedContentSectionMerging__musicBundles;
  relatedContentSectionMerging__musicBundles = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)mergeRelatedContentFromSections:(id)a3 bundlesToMerge:(id)a4 mergedSectionId:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];
      v13 = [v12 bundleIdentifier];
      v14 = [v12 results];
      if ([v14 count])
      {
        v15 = [v8 containsObject:v13];

        if (v15)
        {
          [v10 addObject:v12];
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  if ([v10 count])
  {
    v16 = [v10 objectAtIndexedSubscript:0];
    if ([v10 count] >= 2)
    {
      v43 = v16;
      v44 = v9;
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Merging sections %@", buf, 0xCu);
      }

      v18 = [MEMORY[0x277CBEB18] array];
      v19 = [MEMORY[0x277CBEB18] array];
      if ([v10 count])
      {
        v20 = 0;
        do
        {
          v21 = [v10 objectAtIndexedSubscript:{v20, v43}];
          v22 = [v21 maxInitiallyVisibleResults];
          if (!v22)
          {
            v23 = [v21 results];
            v24 = [v23 count];

            if (v24 >= 3)
            {
              v22 = 3;
            }

            else
            {
              v22 = v24;
            }
          }

          v25 = [v21 results];
          v26 = [v25 count];

          if (v22 <= v26)
          {
            v27 = [v21 results];
            v28 = [v27 subarrayWithRange:{0, v22}];
            [v18 addObjectsFromArray:v28];
          }

          v29 = [v21 results];
          v30 = [v29 count];

          if (v30 > v22)
          {
            v31 = [v21 results];
            v32 = [v21 results];
            v33 = [v31 subarrayWithRange:{v22, objc_msgSend(v32, "count") - v22}];
            [v19 addObjectsFromArray:v33];
          }

          [v21 clearResults];

          ++v20;
        }

        while (v20 < [v10 count]);
      }

      v16 = v43;
      [v43 addResultsFromArray:{v18, v43}];
      [v16 addResultsFromArray:v19];
      [v16 setMaxInitiallyVisibleResults:{objc_msgSend(v18, "count")}];

      v9 = v44;
    }

    if ([v9 isEqualToString:sSectionMergingBlendedWeb])
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_WEB" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v35];

      if ([v10 count] >= 2)
      {
        v36 = MEMORY[0x277D65B80];
LABEL_31:
        [v16 setPreMergeBundleIdentifier:*v36];
        goto LABEL_32;
      }
    }

    else
    {
      if (![v9 isEqualToString:sSectionMergingBlendedMusic])
      {
LABEL_33:
        v40 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v16 bundleIdentifier];
          *buf = 138412546;
          v46 = v41;
          v47 = 2112;
          v48 = v9;
          _os_log_impl(&dword_26B71B000, v40, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Section %@ becomes %@", buf, 0x16u);
        }

        [v16 setBundleIdentifier:v9];
        goto LABEL_36;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_MUSIC" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v38];

      if ([v10 count] >= 2)
      {
        v36 = MEMORY[0x277D65AD8];
        goto LABEL_31;
      }
    }

    v39 = [v16 bundleIdentifier];
    [v16 setPreMergeBundleIdentifier:v39];

LABEL_32:
    [v16 setMaxInitiallyVisibleResults:3];
    goto LABEL_33;
  }

LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)truncateSuggestionsSectionToFit:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SPQueryTask *)self maxUISuggestions];
  v6 = [v4 resultSet];
  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  v8 = [v4 resultsCount];
  if (v8 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 initWithCapacity:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 type] == 21)
        {
          if (v14)
          {
            v19 = v14;
          }

          else
          {
            v19 = v18;
          }

          v20 = v19;

          v14 = v20;
        }

        else if (v15 < v5)
        {
          [v10 addObject:v18];
          ++v15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);

    if (v14)
    {
      if (v15 && v15 >= v5)
      {
        [v10 replaceObjectAtIndex:v15 - 1 withObject:v14];
      }

      else
      {
        [v10 addObject:v14];
      }
    }
  }

  else
  {

    v14 = 0;
  }

  [v4 setResultSet:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleOptionsForNewSections:(id)a3
{
  v231 = *MEMORY[0x277D85DE8];
  v157 = a3;
  v4 = SPLogForSPLogCategoryDefault();
  v5 = v4;
  if (*MEMORY[0x277D4BF48])
  {
    v6 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v7 = [MEMORY[0x277CCACC8] currentThread];
    *buf = 134218240;
    v228 = v7;
    v229 = 1024;
    v230 = [v157 count];
    _os_log_impl(&dword_26B71B000, v5, v6, "[%p] handleOptions for sections (%d)", buf, 0x12u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = MEMORY[0x277D4BF50];
  v10 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v8, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412290;
    v228 = v157;
    _os_log_impl(&dword_26B71B000, v8, ((v10 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
  }

  if ([v157 count])
  {
    v11 = [(SPQueryTask *)self queryProcessor];
    dispatch_assert_queue_V2(v11);

    v12 = SPLogForSPLogCategoryDefault();
    v13 = *v9;
    if (os_log_type_enabled(v12, ((v13 & 1) == 0)))
    {
      *buf = 138412290;
      v228 = v157;
      _os_log_impl(&dword_26B71B000, v12, ((v13 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
    }

    v179 = [MEMORY[0x277CBEB38] dictionary];
    v174 = [MEMORY[0x277CBEB38] dictionary];
    v177 = [MEMORY[0x277CBEB38] dictionary];
    v178 = [MEMORY[0x277CBEB38] dictionary];
    v176 = [MEMORY[0x277CBEB38] dictionary];
    v175 = [MEMORY[0x277CBEB38] dictionary];
    v14 = [(SPQueryTask *)self query];
    v15 = [v14 queryContext];
    v16 = [v15 searchEntities];
    v17 = [v16 firstObject];

    v156 = v17;
    v18 = [v17 isServerEntitySearch];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v19 = [(SPQueryTask *)self mutableSections];
    v20 = [v19 countByEnumeratingWithState:&v214 objects:v226 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v215;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v215 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v214 + 1) + 8 * i);
          v25 = [v24 bundleIdentifier];
          v26 = [v25 hasPrefix:@"com.apple.parsec."];

          if (v26)
          {
            v27 = [v24 results];
            v28 = [v27 firstObject];
            [v24 setDoNotFold:{objc_msgSend(v28, "doNotFold")}];
          }

          createDedupeDicts(v24, v174, v179, v177, v178, v176, v175, v18);
        }

        v21 = [v19 countByEnumeratingWithState:&v214 objects:v226 count:16];
      }

      while (v21);
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v29 = v157;
    v30 = [v29 countByEnumeratingWithState:&v210 objects:v225 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v211;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v211 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v210 + 1) + 8 * j);
          v35 = [v34 bundleIdentifier];
          v36 = [v35 hasPrefix:@"com.apple.parsec."];

          if (v36)
          {
            v37 = [v34 results];
            v38 = [v37 firstObject];
            [v34 setDoNotFold:{objc_msgSend(v38, "doNotFold")}];
          }

          createDedupeDicts(v34, v174, v179, v177, v178, v176, v175, v18);
        }

        v31 = [v29 countByEnumeratingWithState:&v210 objects:v225 count:16];
      }

      while (v31);
    }

    v39 = [v29 count];
    if (v39)
    {
      v40 = v39;
      v170 = *MEMORY[0x277D65BA8];
      v166 = *MEMORY[0x277D65BC8];
      v155 = *MEMORY[0x277D65A00];
      v172 = *MEMORY[0x277D65A30];
      v164 = *MEMORY[0x277D65B28];
      v168 = *MEMORY[0x277D65B20];
      v160 = v29;
      while (1)
      {
        v41 = [v29 objectAtIndex:--v40];
        v42 = [v41 bundleIdentifier];
        v43 = [v42 hasPrefix:@"com.apple.parsec."];

        if (v43)
        {
          v44 = [v41 results];
          v45 = [v44 count];

          if (!v45)
          {
            goto LABEL_81;
          }

          v46 = [v41 results];
          v47 = [v46 copy];

          [v41 clearResults];
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v48 = v47;
          v49 = [v48 countByEnumeratingWithState:&v206 objects:v224 count:16];
          if (v49)
          {
            v50 = v49;
            v158 = v40;
            v51 = *v207;
            do
            {
              for (k = 0; k != v50; ++k)
              {
                if (*v207 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v53 = *(*(&v206 + 1) + 8 * k);
                v54 = [v41 bundleIdentifier];
                v55 = [v54 hasPrefix:@"com.apple.parsec."];

                if (!v55)
                {
                  goto LABEL_44;
                }

                v56 = [v53 storeIdentifier];
                if (v56)
                {
                  v57 = v56;
                  v58 = [v53 storeIdentifier];
                  v59 = [v179 objectForKey:v58];

                  if (v59)
                  {
                    goto LABEL_43;
                  }
                }

                v60 = [v53 calendarIdentifier];
                if (!v60)
                {
                  goto LABEL_44;
                }

                v61 = v60;
                v62 = [v53 calendarIdentifier];
                v59 = [v177 objectForKey:v62];

                if (v59)
                {
LABEL_43:
                  handleHiddenResult();
                }

                else
                {
LABEL_44:
                  [v41 addResults:v53];
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v206 objects:v224 count:16];
            }

            while (v50);
            v40 = v158;
          }

          goto LABEL_80;
        }

        v63 = [v41 bundleIdentifier];
        v64 = [v63 isEqualToString:@"com.apple.dictionary"];

        if (v64)
        {
          v65 = [v41 results];
          v66 = [v65 count];

          if (!v66)
          {
            goto LABEL_81;
          }

          v67 = [v41 results];
          v68 = [v67 copy];

          [v41 clearResults];
          v204 = 0u;
          v205 = 0u;
          v202 = 0u;
          v203 = 0u;
          v48 = v68;
          v69 = [v48 countByEnumeratingWithState:&v202 objects:v223 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = v40;
            v72 = *v203;
            do
            {
              for (m = 0; m != v70; ++m)
              {
                if (*v203 != v72)
                {
                  objc_enumerationMutation(v48);
                }

                v74 = *(*(&v202 + 1) + 8 * m);
                v75 = [v74 identifier];
                if (!v75 || ([v178 objectForKey:v75], v76 = objc_claimAutoreleasedReturnValue(), v76, !v76))
                {
                  [v41 addResults:v74];
                }
              }

              v70 = [v48 countByEnumeratingWithState:&v202 objects:v223 count:16];
            }

            while (v70);
            goto LABEL_79;
          }

          goto LABEL_80;
        }

        v77 = [v41 bundleIdentifier];
        if ([v77 isEqualToString:v170])
        {
          break;
        }

        v78 = [v41 bundleIdentifier];
        v79 = [v78 isEqualToString:v166];

        if (v79)
        {
          goto LABEL_64;
        }

        v97 = [v41 bundleIdentifier];
        v98 = [v97 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v98)
        {
          v159 = v40;
          obj = objc_alloc_init(MEMORY[0x277CCAB58]);
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          v99 = [v41 results];
          v100 = [v99 countByEnumeratingWithState:&v194 objects:v221 count:16];
          if (v100)
          {
            v101 = v100;
            v102 = 0;
            v103 = *v195;
            do
            {
              for (n = 0; n != v101; ++n)
              {
                if (*v195 != v103)
                {
                  objc_enumerationMutation(v99);
                }

                v105 = *(*(&v194 + 1) + 8 * n);
                v106 = [v105 identifier];
                v107 = [v106 hasPrefix:v172];

                if (v107)
                {
                  v108 = [v105 sectionBundleIdentifier];
                  v109 = [v108 isEqualToString:v170];

                  v110 = v168;
                  if ((v109 & 1) != 0 || ([v105 sectionBundleIdentifier], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "isEqualToString:", v166), v111, v110 = v164, v112))
                  {
                    v113 = [v176 objectForKey:v110];
                    if (v113)
                    {
                      v114 = v113;
                      handleHiddenResult();
                      [obj addIndex:v102];
                    }
                  }
                }

                ++v102;
              }

              v101 = [v99 countByEnumeratingWithState:&v194 objects:v221 count:16];
            }

            while (v101);
          }

          v115 = [v41 resultSet];
          [v115 removeObjectsAtIndexes:obj];

          [(SPFederatedQueryTask *)self truncateSuggestionsSectionToFit:v41];
          v40 = v159;
          v29 = v160;
          goto LABEL_83;
        }

        v116 = [v41 bundleIdentifier];
        v117 = [v116 isEqualToString:v155];

        if (v117)
        {
          v118 = [v41 results];
          v119 = [v118 count];

          if (v119)
          {
            v120 = [v41 results];
            v121 = [v120 copy];

            [v41 clearResults];
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v48 = v121;
            v122 = [v48 countByEnumeratingWithState:&v190 objects:v220 count:16];
            if (v122)
            {
              v123 = v122;
              v71 = v40;
              v124 = *v191;
              do
              {
                for (ii = 0; ii != v123; ++ii)
                {
                  if (*v191 != v124)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v126 = *(*(&v190 + 1) + 8 * ii);
                  v127 = [v126 applicationBundleIdentifier];
                  v128 = [v175 objectForKey:v127];
                  v129 = v128;
                  if (v127)
                  {
                    v130 = v128 == 0;
                  }

                  else
                  {
                    v130 = 1;
                  }

                  if (v130)
                  {
                    [v41 addResults:v126];
                  }

                  else
                  {
                    handleHiddenResult();
                  }
                }

                v123 = [v48 countByEnumeratingWithState:&v190 objects:v220 count:16];
              }

              while (v123);
LABEL_79:
              v40 = v71;
            }

LABEL_80:

            v29 = v160;
          }
        }

LABEL_81:
        if (![v41 resultsCount])
        {
          [v29 removeObjectAtIndex:v40];
        }

LABEL_83:

        if (!v40)
        {
          goto LABEL_115;
        }
      }

LABEL_64:
      v80 = [v41 results];
      v81 = [v80 count];

      if (!v81)
      {
        goto LABEL_81;
      }

      v82 = [v41 results];
      v83 = [v82 copy];

      [v41 clearResults];
      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v48 = v83;
      v84 = [v48 countByEnumeratingWithState:&v198 objects:v222 count:16];
      if (v84)
      {
        v85 = v84;
        v71 = v40;
        v86 = *v199;
        do
        {
          for (jj = 0; jj != v85; ++jj)
          {
            if (*v199 != v86)
            {
              objc_enumerationMutation(v48);
            }

            v88 = *(*(&v198 + 1) + 8 * jj);
            v89 = [v88 identifier];
            v90 = [v89 hasPrefix:v172];

            if (v90)
            {
              v91 = [v88 sectionBundleIdentifier];
              v92 = [v91 isEqualToString:v170];

              v93 = v168;
              if ((v92 & 1) == 0 && ([v88 sectionBundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", v166), v94, v93 = v164, !v95) || (objc_msgSend(v176, "objectForKey:", v93), (v96 = objc_claimAutoreleasedReturnValue()) == 0))
              {
                [v41 addResults:v88];
                v96 = 0;
              }
            }

            else
            {
              [v41 addResults:v88];
            }
          }

          v85 = [v48 countByEnumeratingWithState:&v198 objects:v222 count:16];
        }

        while (v85);
        goto LABEL_79;
      }

      goto LABEL_80;
    }

LABEL_115:
    [v179 removeAllObjects];
    [v174 removeAllObjects];
    [v177 removeAllObjects];
    [v178 removeAllObjects];
    [v176 removeAllObjects];
    [v175 removeAllObjects];
    v188 = 0u;
    v189 = 0u;
    v186 = 0u;
    v187 = 0u;
    obja = v29;
    v167 = [obja countByEnumeratingWithState:&v186 objects:v219 count:16];
    if (!v167)
    {
      goto LABEL_149;
    }

    v165 = *v187;
    v161 = *MEMORY[0x277D4BEF0];
LABEL_117:
    v131 = 0;
    while (1)
    {
      if (*v187 != v165)
      {
        objc_enumerationMutation(obja);
      }

      v132 = *(*(&v186 + 1) + 8 * v131);
      v133 = [v132 bundleIdentifier];
      if ([v133 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_123;
      }

      v134 = [v132 bundleIdentifier];
      if ([v134 isEqualToString:v161])
      {
        break;
      }

      v151 = [v132 bundleIdentifier];
      v152 = [v151 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v152)
      {
        goto LABEL_124;
      }

LABEL_144:
      if (++v131 == v167)
      {
        v153 = [obja countByEnumeratingWithState:&v186 objects:v219 count:16];
        v167 = v153;
        if (!v153)
        {
LABEL_149:

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke;
          block[3] = &unk_279CFE2D8;
          v181 = obja;
          dispatch_sync(MEMORY[0x277D85CD0], block);

          goto LABEL_150;
        }

        goto LABEL_117;
      }
    }

LABEL_123:
LABEL_124:
    v169 = v131;
    v173 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v171 = [v132 results];
    v135 = [v171 countByEnumeratingWithState:&v182 objects:v218 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = 0;
      v138 = *v183;
      do
      {
        for (kk = 0; kk != v136; ++kk)
        {
          if (*v183 != v138)
          {
            objc_enumerationMutation(v171);
          }

          v140 = *(*(&v182 + 1) + 8 * kk);
          v141 = updateDedupeDictsForResult(v140, v174, v179, v177, v178, v176, v175);
          v142 = v141;
          if (v141)
          {
            v143 = [v141 inlineCard];
            v144 = [v140 inlineCard];
            v145 = v144;
            if (v143)
            {
              v146 = 1;
            }

            else
            {
              v146 = v144 == 0;
            }

            if (!v146)
            {
              [v142 setInlineCard:v144];
            }

            v147 = [v142 compactCard];

            v148 = [v140 compactCard];

            if (v147)
            {
              v149 = 1;
            }

            else
            {
              v149 = v148 == 0;
            }

            if (!v149)
            {
              [v142 setCompactCard:v148];
            }

            handleHiddenResult();
            [v173 addIndex:v137];
          }

          ++v137;
        }

        v136 = [v171 countByEnumeratingWithState:&v182 objects:v218 count:16];
      }

      while (v136);
    }

    v150 = [v132 resultSet];
    [v150 removeObjectsAtIndexes:v173];

    v131 = v169;
    goto LABEL_144;
  }

LABEL_150:

  v154 = *MEMORY[0x277D85DE8];
}

void __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) count];
  if (v1)
  {
    v2 = v1;
    v19 = *MEMORY[0x277D4BEF0];
    while (1)
    {
      v3 = [*(a1 + 32) objectAtIndex:--v2];
      v4 = [v3 bundleIdentifier];
      if ([v4 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_6;
      }

      v5 = [v3 bundleIdentifier];
      if ([v5 isEqualToString:v19])
      {
        break;
      }

      v16 = [v3 bundleIdentifier];
      v17 = [v16 isEqualToString:*MEMORY[0x277D4BF10]];

      if (v17)
      {
        goto LABEL_7;
      }

LABEL_21:

      if (!v2)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
LABEL_7:
    v21 = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 results];
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          if ([v11 isLocalApplicationResult])
          {
            if (sSRResources_block_invoke_2_onceToken != -1)
            {
              __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke_cold_1();
            }

            v12 = sSRResources_block_invoke_2_sbsservice;
            v13 = [v11 applicationBundleIdentifier];
            v14 = [v12 folderPathToIconWithBundleIdentifier:v13];

            if ([v14 count] >= 2)
            {
              v15 = [v14 firstObject];
              [v11 setAuxiliaryTopText:v15];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v2 = v21;
    goto LABEL_21;
  }

LABEL_25:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __52__SPFederatedQueryTask_handleOptionsForNewSections___block_invoke_2()
{
  sSRResources_block_invoke_2_sbsservice = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)addSections:(id)a3 delayedTopHit:(BOOL)a4
{
  v8 = a3;
  [(SPFederatedQueryTask *)self handleOptionsForNewSections:?];
  if (a4)
  {
    if (![v8 count])
    {
      goto LABEL_6;
    }

    v6 = [(SPQueryTask *)self mutableSections];
    v7 = [v8 firstObject];
    [v6 insertObject:v7 atIndex:0];
  }

  else
  {
    v6 = [(SPQueryTask *)self mutableSections];
    [v6 addObjectsFromArray:v8];
  }

LABEL_6:
  [(SPFederatedQueryTask *)self mergeSections];
}

- (id)unsafeSessionEntityString
{
  v2 = [(SPFederatedQueryTask *)self mutableSessionEntityString];
  v3 = [v2 copy];

  return v3;
}

- (id)displayedText
{
  v3 = [(SPQueryTask *)self query];
  v4 = [v3 queryContext];

  if ([v4 hasMarkedText])
  {
    v5 = [v4 markedTextArray];
    v6 = [v5 componentsJoinedByString:&stru_287C35638];
  }

  else
  {
    v6 = [(SPFederatedQueryTask *)self searchString];
  }

  return v6;
}

- (void)processAppResults:(id)a3 maxAppResults:(unint64_t)a4 section:(id)a5 topHitsIndex:(unint64_t *)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v10 bundleIdentifier];
  v12 = [v11 isEqualToString:@"com.apple.spotlight.tophits"];

  v13 = [v10 bundleIdentifier];
  v14 = [v13 isEqualToString:*MEMORY[0x277D4BEF0]];

  if ((v14 & 1) != 0 || v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v10;
    v15 = [v10 results];
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
LABEL_5:
      v19 = 0;
      while (1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if ([v20 isLocalApplicationResult] && (objc_msgSend(v20, "isAppClip") & 1) == 0)
        {
          v21 = [v20 title];
          [v21 setMaxLines:1];

          if (v12)
          {
            ++*a6;
            [v9 insertObject:v20 atIndex:?];
          }

          else
          {
            [v9 addObject:v20];
          }

          if ([v9 count] >= a4)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v10 = v23;
    [v23 setMaxInitiallyVisibleResults:a4];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)unsafeSections
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (*MEMORY[0x277D4BF48])
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v4, v5, "unsafeSections", buf, 2u);
  }

  v6 = [(SPQueryTask *)self mutableSections];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  v11 = [v10 firstObject];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqual:@"com.apple.spotlight.tophits"];

  if (v13)
  {
    v14 = [v10 firstObject];
    if (v14)
    {
      v15 = v14;
      v16 = [(SPQueryTask *)self maxTopHitAppResults];
      v27 = 0;
      [(SPFederatedQueryTask *)self processAppResults:0 maxAppResults:v16 section:v15 topHitsIndex:&v27];
      v17 = [v15 resultSet];
      v18 = [v17 count];

      if (v18 > v16)
      {
        v19 = [v15 resultSet];
        v20 = [v15 resultSet];
        [v19 removeObjectsInRange:{v16, objc_msgSend(v20, "count") - v16}];
      }
    }
  }

  v21 = MEMORY[0x277D659A8];
  v22 = [(SPQueryTask *)self query];
  v23 = [v22 queryContext];
  v24 = [(SPFederatedQueryTask *)self showMoreInAppInfo];
  v25 = [v21 buildSectionsWithSections:v10 queryContext:v23 searchInAppInfo:v24 renderState:{-[SPQueryTask unsafeState](self, "unsafeState")}];

  return v25;
}

- (void)searchQuery:(id)a3 gotResultSet:(id)a4 replace:(BOOL)a5 partiallyComplete:(BOOL)a6 priorityFastPath:(BOOL)a7 update:(BOOL)a8 complete:(BOOL)a9 delayedTopHit:(BOOL)a10 unchanged:(BOOL)a11 forceStable:(BOOL)a12 blendingDuration:(double)a13 geoEntityString:(id)a14 supportedAppScopes:(id)a15 showMoreInAppInfo:(id)a16
{
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v88 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v80 = a4;
  v82 = a14;
  v24 = a15;
  v81 = a16;
  v25 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v25);

  v26 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.searchd.frontend.query.end" timeInterval:0 queryId:{objc_msgSend(v23, "queryIdent")}];
  v27 = [MEMORY[0x277D4BEB0] sharedManager];
  v78 = v26;
  [v27 reportFeedback:v26 queryId:{objc_msgSend(v23, "queryIdent")}];

  staleResultsTimer = self->_staleResultsTimer;
  if (staleResultsTimer)
  {
    dispatch_source_cancel(staleResultsTimer);
    v29 = self->_staleResultsTimer;
    self->_staleResultsTimer = 0;
  }

  if (v19 || a8 || v18 || a9)
  {
    v30 = 2;
    if (!v19)
    {
      v30 = 3;
    }

    if (v18)
    {
      v30 = 1;
    }

    if (a9)
    {
      v31 = 4;
    }

    else
    {
      v31 = v30;
    }

    [(SPQueryTask *)self setUnsafeState:v31];
  }

  v32 = [v24 count];
  v33 = v24;
  v34 = v80;
  v35 = v82;
  if (v32)
  {
    [(SPFederatedQueryTask *)self setSupportedAppScopes:v33];
  }

  v79 = v33;
  if ([v81 count])
  {
    [(SPFederatedQueryTask *)self setShowMoreInAppInfo:v81];
  }

  if (!-[SPQueryTask forceStableResults](self, "forceStableResults") && !a12 || ([v80 stableSections], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v38 = [v80 resultSections];
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = v36;
  v38 = [v80 stableSections];

  if (v20)
  {
LABEL_25:
    v39 = [(SPQueryTask *)self mutableSections];
    [v39 removeAllObjects];

    [(SPFederatedQueryTask *)self setMutableSessionEntityString:0];
  }

LABEL_26:
  if (v82)
  {
    [(SPFederatedQueryTask *)self setMutableSessionEntityString:v82];
  }

  if ([v38 count])
  {
    if (!a11)
    {
      v40 = [v38 mutableCopy];
      [(SPFederatedQueryTask *)self addSections:v40 delayedTopHit:a10];

      externalID = self->_externalID;
      kdebug_trace();
      if ([(SPFederatedQueryTask *)self newQuery])
      {
        [(SPFederatedQueryTask *)self setNewQuery:0];
        v42 = [v23 creationStamp];
        v43 = [MEMORY[0x277CCA8D8] mainBundle];
        v44 = [v43 bundleIdentifier];
        sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", "ttfr", v42, v44);

        v35 = v82;
      }
    }
  }

  v45 = [(SPFederatedQueryTask *)self unsafeSections];
  v46 = SPLogForSPLogCategoryDefault();
  v47 = v46;
  if (*MEMORY[0x277D4BF48])
  {
    v48 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v48 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v46, v48))
  {
    *buf = 138412290;
    v87 = *&v45;
    _os_log_impl(&dword_26B71B000, v47, v48, "sections: %@", buf, 0xCu);
  }

  if (!a11 && [(SPFederatedQueryTask *)self readyToUpdate])
  {
    if (![(SPFederatedQueryTask *)self didReceiveCompleteCallback])
    {
      v49 = self->_externalID;
      kdebug_trace();
      v50 = SPLogForSPLogCategoryTelemetry();
      v51 = v50;
      v52 = self->_externalID;
      if (v52 && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B71B000, v51, OS_SIGNPOST_INTERVAL_END, v52, "queryUI", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v53 = [(SPFederatedQueryTask *)self session];
    v54 = MEMORY[0x277D65968];
    v55 = [v23 queryContext];
    v56 = [v55 queryIntent];
    [v53 finishRanking:v45 blendingDuration:objc_msgSend(v54 spotlightQueryIntent:{"spotlightQueryIntent:", v56), a13}];

    [(SPFederatedQueryTask *)self setDidReceiveCompleteCallback:1];
    if (v20)
    {
      v57 = "session reset";
    }

    else
    {
      v57 = "session complete";
    }

    v58 = [v23 creationStamp];
    v59 = [MEMORY[0x277CCA8D8] mainBundle];
    v60 = [v59 bundleIdentifier];
    v61 = sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", v57, v58, v60);

    v62 = SPLogForSPLogCategoryDefault();
    v63 = v62;
    if (*MEMORY[0x277D4BF48])
    {
      v64 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v64 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v62, v64))
    {
      *buf = 134217984;
      v87 = v61 / 1000000000.0;
      _os_log_impl(&dword_26B71B000, v63, v64, "- SearchAgent time %gs", buf, 0xCu);
    }

    v34 = v80;
    v35 = v82;
  }

  v65 = [v23 queryContext];
  v66 = [v65 fetchL2Signals];

  if (v66)
  {
    v67 = MEMORY[0x277CCAAB0];
    v68 = [(SPQueryTask *)self mutableSections];
    v84 = 0;
    v69 = [v67 archivedDataWithRootObject:v68 requiringSecureCoding:1 error:&v84];
    v70 = v84;

    if (v70)
    {
      v71 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v70 gotResultSet:v71 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }

      v72 = 0;
    }

    else
    {
      v73 = MEMORY[0x277CCAAC8];
      v74 = MEMORY[0x277CBEB98];
      v85[0] = objc_opt_class();
      v85[1] = objc_opt_class();
      v85[2] = objc_opt_class();
      v85[3] = objc_opt_class();
      v85[4] = objc_opt_class();
      v85[5] = objc_opt_class();
      v85[6] = objc_opt_class();
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:7];
      v76 = [v74 setWithArray:v75];
      v83 = 0;
      v72 = [v73 unarchivedObjectOfClasses:v76 fromData:v69 error:&v83];
      v70 = v83;

      if (!v70)
      {
        v34 = v80;
        goto LABEL_63;
      }

      v71 = SPLogForSPLogCategoryDefault();
      v34 = v80;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v70 gotResultSet:v71 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }
    }

LABEL_63:
    [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:a11 sections:v72];

    v35 = v82;
    goto LABEL_64;
  }

  [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:a11 sections:v45];
LABEL_64:

  v77 = *MEMORY[0x277D85DE8];
}

- (void)searchQueryEncounteredError:(id)a3
{
  v4 = a3;
  v5 = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(v5);

  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SPFederatedQueryTask *)v4 searchQueryEncounteredError:v6];
  }
}

- (id)retainAndMergeSections:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SPFederatedQueryTask *)self session];
  v8 = [(SPQueryTask *)self query];
  v9 = [v8 queryContext];
  v10 = [v9 queryKind] - 5;

  if (v10 < 4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 1";
    goto LABEL_11;
  }

  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 2";
    goto LABEL_11;
  }

  if (a4 != 1)
  {
    v13 = [(SPQueryTask *)self query];
    [v7 setLastSections:v6 forQuery:v13];
LABEL_13:

    goto LABEL_14;
  }

  if (self->_staleResultsFired)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 3";
    goto LABEL_11;
  }

  if ([v6 count] == 1)
  {
    v13 = [v6 objectAtIndex:0];
    v15 = [v13 bundleIdentifier];
    v16 = [v15 isEqual:@"com.apple.spotlight.tophits"];

    if (v16)
    {
      v17 = [(SPQueryTask *)self query];
      v18 = [v7 copyStaleSectionsForQuery:v17];

      if ([v18 count])
      {
        v19 = [v18 mutableCopy];
        v20 = [v18 objectAtIndex:0];
        v21 = [(SPQueryTask *)self queryProcessor];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v21);
        staleResultsTimer = self->_staleResultsTimer;
        self->_staleResultsTimer = v22;

        v24 = self->_staleResultsTimer;
        v25 = dispatch_time(0, 750000000);
        dispatch_source_set_timer(v24, v25, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        objc_initWeak(buf, self);
        v26 = self->_staleResultsTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __56__SPFederatedQueryTask_retainAndMergeSections_forState___block_invoke;
        handler[3] = &unk_279CFE300;
        objc_copyWeak(v33, buf);
        v33[1] = 1;
        v27 = v6;
        v32 = v27;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_activate(self->_staleResultsTimer);
        v28 = [v20 bundleIdentifier];
        LODWORD(v26) = [v28 isEqual:@"com.apple.spotlight.tophits"];

        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 1!", v30, 2u);
          }

          [v19 replaceObjectAtIndex:0 withObject:v13];
        }

        else
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 2!", v30, 2u);
          }

          [v19 insertObject:v13 atIndex:0];
        }

        objc_destroyWeak(v33);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 6", buf, 2u);
        }

        v19 = v6;
      }

      v6 = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipped 5", buf, 2u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    v11 = MEMORY[0x277D86220];
    v12 = "Skipped 4";
LABEL_11:
    _os_log_impl(&dword_26B71B000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
  }

LABEL_14:

  return v6;
}

void __56__SPFederatedQueryTask_retainAndMergeSections_forState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Clear stale results -- timeout", v4, 2u);
    }

    *(WeakRetained + 208) = 1;
    dispatch_source_cancel(*(WeakRetained + 25));
    v3 = *(WeakRetained + 25);
    *(WeakRetained + 25) = 0;

    [WeakRetained updateResultsThroughDelegate:0 state:*(a1 + 48) unchanged:0 sections:*(a1 + 32)];
  }
}

- (unint64_t)queryIdent
{
  v2 = [(SPQueryTask *)self query];
  v3 = [v2 queryIdent];

  return v3;
}

- (SPClientSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)searchQuery:(uint64_t)a1 gotResultSet:(NSObject *)a2 replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "mutable section archiving error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)searchQuery:(uint64_t)a1 gotResultSet:(NSObject *)a2 replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "mutable section unarchiving error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)searchQueryEncounteredError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 query];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_26B71B000, a3, OS_LOG_TYPE_ERROR, "Received search error %@ for query %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end