@interface SPFederatedQueryTask
+ (BOOL)isCJK;
+ (BOOL)sectionSupportsShowMoreInApp:(id)app;
+ (id)appGenreMap;
+ (id)contactEntityFromQueryContext:(id)context;
+ (id)queryClasses;
+ (id)searchContinuationCompatibilitySet;
+ (void)activate;
+ (void)activate:(BOOL)activate;
+ (void)deactivate;
+ (void)initialize;
- (BOOL)forceAboveFoldResultsWithQuery:(id)query topHitSection:(id)section sections:(id)sections;
- (BOOL)isBullseyeCommittedSearch;
- (BOOL)isBullseyeNonCommittedSearch;
- (BOOL)parsecAvailable;
- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections;
- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections suggestionResults:(id)results;
- (BOOL)storeSearchProgress:(id)progress withSections:(id)sections suggestionResults:(id)results;
- (SPClientSession)session;
- (__CFArray)copyMatchInfo;
- (id)_queriesForSearchTool;
- (id)contactSuggestionsWithSearchString:(id)string;
- (id)correctedQueryWithCorrection:(id)correction;
- (id)dedupeLocalSectionsByBundleId:(id)id;
- (id)detailTextFromBundleIDs:(id)ds;
- (id)displayedText;
- (id)initForSession:(id)session withQuery:(id)query;
- (id)orderedCategories:(id)categories;
- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state;
- (id)searchString;
- (id)suggestionsWithSearchString:(id)string sections:(id)sections topHitSection:(id)section highestLocalScore:(double)score;
- (id)unsafeSections;
- (id)unsafeSessionEntityString;
- (id)waitForQueryCorrections;
- (unint64_t)queryIdent;
- (void)_processResponse:(id)response toQuery:(id)query;
- (void)_updateQueryContext:(id)context;
- (void)activate;
- (void)addAndStartQuery;
- (void)addDictionarySections:(id)sections;
- (void)addMatchInfo:(_MDPlistContainer *)info;
- (void)addQueryCorrections:(id)corrections;
- (void)addSections:(id)sections delayedTopHit:(BOOL)hit;
- (void)addSuggestionsToSectionsForSending:(id)sending searchString:(id)string updatedSections:(BOOL)sections queryKind:(unint64_t)kind;
- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)sending updatedSections:(BOOL)sections isScopedSearch:(BOOL)search;
- (void)cancel;
- (void)cancelQuery;
- (void)clear;
- (void)deDuplicateMailResults:(id)results;
- (void)deDuplicateSection:(id)section againstSection:(id)againstSection;
- (void)dealloc;
- (void)handleOptionsForNewSections:(id)sections;
- (void)logPerfToAnalytics:(int)analytics;
- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id;
- (void)mergeSections;
- (void)prepareAndSend:(id)send force:(BOOL)force moreComing:(BOOL)coming reason:(int)reason;
- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index;
- (void)queryTask:(id)task gotResponse:(id)response;
- (void)relatedContentSectionMerging:(id)merging;
- (void)searchQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6;
- (void)searchQueryEncounteredError:(id)error;
- (void)sendError:(id)error;
- (void)sendFinishedDomains:(BOOL)domains reason:(int)reason;
- (void)sendQueryCompleted;
- (void)sendQueryReset;
- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 unchanged:(BOOL)unchanged delayedTopHit:(BOOL)hit reason:(int)self0;
- (void)sendResultsForKeys:(id)keys toSendSections:(id)sections;
- (void)sendTTRLogsWithSections:(id)sections;
- (void)serverSideDedupe:(id)dedupe;
- (void)setBundlesSupportingAppScoping:(id)scoping;
- (void)start;
- (void)startSetup;
- (void)storeWillComplete:(id)complete;
- (void)truncateSuggestionsSectionToFit:(id)fit;
- (void)updateResultsWithContactHeader;
@end

@implementation SPFederatedQueryTask

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  v6 = MEMORY[0x277D65898];
  searchString = [queryContext searchString];
  v8 = [v6 normalizeSearchString:searchString queryContext:queryContext];
  [queryContext setSearchString:v8];

  v9 = [SPCSSearchQuery alloc];
  searchString2 = [queryContext searchString];
  v11 = -[SPCSSearchQuery initWithUserQuery:queryGroupId:options:queryContext:](v9, "initWithUserQuery:queryGroupId:options:queryContext:", searchString2, [queryContext queryIdent], objc_msgSend(queryContext, "options"), queryContext);

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
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchString = [queryContext searchString];
  SDTraceAdd();

  self->_genreGroupingEnabled = SPGenreGroupingEnabled();
  self->_shouldRecomputeSuggestions = 1;
}

- (void)cancelQuery
{
  v32 = *MEMORY[0x277D85DE8];
  externalID = self->_externalID;
  SDTraceAdd();
  query = [(SPQueryTask *)self query];
  [query cancel];

  itemRanker = [(SPFederatedQueryTask *)self itemRanker];
  [itemRanker cancel];

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

+ (BOOL)sectionSupportsShowMoreInApp:(id)app
{
  appCopy = app;
  v4 = +[SPFederatedQueryTask searchContinuationCompatibilitySet];
  bundleIdentifier = [appCopy bundleIdentifier];

  LOBYTE(appCopy) = [v4 containsObject:bundleIdentifier];
  return appCopy;
}

- (void)setBundlesSupportingAppScoping:(id)scoping
{
  allObjects = [scoping allObjects];
  bundlesSupportingAppScoping = self->_bundlesSupportingAppScoping;
  self->_bundlesSupportingAppScoping = allObjects;

  MEMORY[0x2821F96F8]();
}

- (BOOL)isBullseyeNonCommittedSearch
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  queryKind = [queryContext queryKind];

  return queryKind == 2 || queryKind == 10 && self->_previousQueryKind == 2;
}

- (BOOL)isBullseyeCommittedSearch
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  queryKind = [queryContext queryKind];

  if ((queryKind - 5) < 4)
  {
    return 1;
  }

  if (queryKind == 10)
  {
    return self->_previousQueryKind - 5 < 4;
  }

  return 0;
}

- (void)sendTTRLogsWithSections:(id)sections
{
  rankingManager = self->_rankingManager;
  sectionsCopy = sections;
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  [(SSRankingManager *)rankingManager sendTTRLogsWithSections:sectionsCopy queryContext:queryContext isCommittedSearch:[(SPFederatedQueryTask *)self isBullseyeCommittedSearch] parsecCameLaterThanSRT:self->_parsecCameLaterThanSRT];

  logValues = [(SSRankingManager *)self->_rankingManager logValues];
  v9 = [logValues length];

  if (v9)
  {
    logValues2 = [(SSRankingManager *)self->_rankingManager logValues];
    [(SPFederatedQueryTask *)self sendLogValuesForDebuggingRanking:logValues2];
  }
}

- (void)deDuplicateMailResults:(id)results
{
  resultsCopy = results;
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  resultSet = [resultsCopy resultSet];
  v5 = [v3 initWithCapacity:{objc_msgSend(resultSet, "count")}];

  v6 = objc_opt_new();
  resultSet2 = [resultsCopy resultSet];
  v8 = [resultSet2 count];

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      resultSet3 = [resultsCopy resultSet];
      v11 = [resultSet3 objectAtIndexedSubscript:i];

      rankingItem = [v11 rankingItem];
      v13 = rankingItem;
      if (rankingItem)
      {
        [rankingItem attributes];
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

  resultSet4 = [resultsCopy resultSet];
  [resultSet4 removeObjectsAtIndexes:v6];
}

- (void)deDuplicateSection:(id)section againstSection:(id)againstSection
{
  v52 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  againstSectionCopy = againstSection;
  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  resultSet = [againstSectionCopy resultSet];
  v9 = [v7 initWithCapacity:{objc_msgSend(resultSet, "count")}];

  bundleIdentifier = [sectionCopy bundleIdentifier];
  if (([bundleIdentifier isEqual:*MEMORY[0x277D65A00]] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  bundleIdentifier3 = [againstSectionCopy bundleIdentifier];
  v13 = [bundleIdentifier2 isEqual:bundleIdentifier3];

  if (v13)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    bundleIdentifier = [againstSectionCopy results];
    v14 = [bundleIdentifier countByEnumeratingWithState:&v45 objects:v51 count:16];
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
            objc_enumerationMutation(bundleIdentifier);
          }

          rankingItem = [*(*(&v45 + 1) + 8 * v17) rankingItem];
          isServerAlternativeResult = [rankingItem isServerAlternativeResult];

          if (isServerAlternativeResult)
          {

            v20 = sectionCopy;
            sectionCopy = againstSectionCopy;
            goto LABEL_13;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [bundleIdentifier countByEnumeratingWithState:&v45 objects:v51 count:16];
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
  v20 = againstSectionCopy;
LABEL_13:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  resultSet2 = [v20 resultSet];
  v22 = [resultSet2 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
          objc_enumerationMutation(resultSet2);
        }

        identifier = [*(*(&v41 + 1) + 8 * v25) identifier];
        if (identifier)
        {
          [v9 addObject:identifier];
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [resultSet2 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v23);
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  resultSet3 = [sectionCopy resultSet];
  v29 = [resultSet3 countByEnumeratingWithState:&v37 objects:v49 count:16];
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
          objc_enumerationMutation(resultSet3);
        }

        identifier2 = [*(*(&v37 + 1) + 8 * v33) identifier];
        if (identifier2 && [v9 containsObject:identifier2])
        {
          [v27 addIndex:v31];
        }

        ++v31;

        ++v33;
      }

      while (v30 != v33);
      v30 = [resultSet3 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v30);
  }

  resultSet4 = [sectionCopy resultSet];
  [resultSet4 removeObjectsAtIndexes:v27];

  v36 = *MEMORY[0x277D85DE8];
}

- (id)dedupeLocalSectionsByBundleId:(id)id
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = idCopy;
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

        bundleIdentifier = [*(*(&v17 + 1) + 8 * i) bundleIdentifier];
        v13 = bundleIdentifier;
        if (bundleIdentifier && ([bundleIdentifier hasPrefix:@"com.apple.parsec"] & 1) == 0)
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

- (void)serverSideDedupe:(id)dedupe
{
  v258 = *MEMORY[0x277D85DE8];
  dedupeCopy = dedupe;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v193 = objc_opt_new();
  v198 = objc_opt_new();
  v203 = objc_opt_new();
  v210 = objc_opt_new();
  v197 = objc_opt_new();
  selfCopy = self;
  v8 = objc_opt_new();
  v201 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"_"];
  v222 = SSEnableSpotlightTopHitPersonalizedRanking();
  v9 = [(SPFederatedQueryTask *)self dedupeLocalSectionsByBundleId:dedupeCopy];

  v220 = v5;
  v212 = v6;
  if ([v9 count])
  {
    v10 = [v9 objectAtIndex:0];
    bundleIdentifier = [v10 bundleIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.spotlight.tophits"])
    {
      resultSet = [v10 resultSet];
      firstObject = [resultSet firstObject];
      sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
      v15 = priorityIndexEligibleBundleIdentifer(sectionBundleIdentifier);

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
    v186 = selfCopy;
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
        if (!-[SPFederatedQueryTask isBullseyeCommittedSearch](selfCopy, "isBullseyeCommittedSearch") || ([v17 bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"com.apple.spotlight.tophits"), v18, (v19 & 1) == 0))
        {
          v223 = objc_alloc_init(MEMORY[0x277CCAB58]);
          results = [v17 results];
          firstObject2 = [results firstObject];
          sectionBundleIdentifier2 = [firstObject2 sectionBundleIdentifier];
          v23 = [sectionBundleIdentifier2 isEqualToString:v191];

          if (v23)
          {
            [(SPFederatedQueryTask *)selfCopy deDuplicateMailResults:v17];
            v24 = v223;
LABEL_205:

            v6 = v212;
            goto LABEL_206;
          }

          v25 = v17;
          v227 = v17;
          if (v17 != v190)
          {
            resultSet2 = [v17 resultSet];
            firstObject3 = [resultSet2 firstObject];
            sectionBundleIdentifier3 = [firstObject3 sectionBundleIdentifier];
            resultSet3 = [v190 resultSet];
            firstObject4 = [resultSet3 firstObject];
            sectionBundleIdentifier4 = [firstObject4 sectionBundleIdentifier];
            if ([sectionBundleIdentifier3 isEqualToString:sectionBundleIdentifier4])
            {
              isBullseyeCommittedSearch = [(SPFederatedQueryTask *)selfCopy isBullseyeCommittedSearch];

              v25 = v227;
              if (!isBullseyeCommittedSearch)
              {
                [(SPFederatedQueryTask *)selfCopy deDuplicateSection:v227 againstSection:v190];
              }
            }

            else
            {

              v25 = v227;
            }
          }

          resultSet4 = [v25 resultSet];
          v34 = [resultSet4 count];

          if (!v34)
          {
            v181 = 0;
            v8 = v216;
LABEL_204:
            v182 = v181;
            resultSet5 = [v25 resultSet];
            v24 = v223;
            [resultSet5 removeObjectsAtIndexes:v223];

            selfCopy = v186;
            goto LABEL_205;
          }

          v35 = 0;
          v36 = 0;
          v217 = 0;
          punchout2 = 0;
          v8 = v216;
          while (2)
          {
            resultSet6 = [v25 resultSet];
            v39 = [resultSet6 objectAtIndexedSubscript:v35];

            v219 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:punchout2];

            resultBundleId = [v39 resultBundleId];
            LODWORD(resultSet6) = [resultBundleId isEqualToString:v221];

            if (resultSet6)
            {
              v41 = punchout2;
            }

            else
            {
              v41 = v217;
            }

            v217 = v41;
            sectionBundleIdentifier5 = [v39 sectionBundleIdentifier];
            v229 = v39;
            v218 = punchout2;
            if ([sectionBundleIdentifier5 isEqualToString:v215])
            {

              goto LABEL_32;
            }

            sectionBundleIdentifier6 = [v39 sectionBundleIdentifier];
            v44 = [sectionBundleIdentifier6 isEqualToString:v205];

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
            alternativeURLs = [v39 alternativeURLs];
            v46 = [alternativeURLs countByEnumeratingWithState:&v234 objects:v256 count:16];
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
                  objc_enumerationMutation(alternativeURLs);
                }

                absoluteString = [*(*(&v234 + 1) + 8 * v49) absoluteString];
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
                  v56 = alternativeURLs;
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
                      resultBundleId2 = [v63 resultBundleId];
                      v65 = [resultBundleId2 isEqualToString:v221];

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

                  alternativeURLs = v56;
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

              v47 = [alternativeURLs countByEnumeratingWithState:&v234 objects:v256 count:16];
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
              punchout = [v39 punchout];
              urls = [punchout urls];

              v71 = [urls countByEnumeratingWithState:&v230 objects:v254 count:16];
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
                    objc_enumerationMutation(urls);
                  }

                  absoluteString2 = [*(*(&v230 + 1) + 8 * i) absoluteString];
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

                v72 = [urls countByEnumeratingWithState:&v230 objects:v254 count:16];
                if (!v72)
                {
LABEL_77:

                  v8 = v216;
                  break;
                }
              }
            }

            contentURL = [v39 contentURL];

            if (!contentURL || v228)
            {
              LODWORD(punchout2) = v218;
              goto LABEL_90;
            }

            contentURL2 = [v39 contentURL];
            strippedURL();
            identifier = v83 = v39;

            punchout2 = [v5 objectForKey:identifier];
            v85 = [punchout2 objectAtIndex:0];
            completedQuery = v85;
            if (v85)
            {
              if (v85 != v83)
              {
                if (v222)
                {
                  resultBundleId3 = [v85 resultBundleId];
                  v88 = [resultBundleId3 isEqualToString:v221];

                  if (v88)
                  {
                    v251[0] = v229;
                    v251[1] = v25;
                    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v251 count:2];
                    [v5 setObject:v89 forKey:identifier];

                    v228 = 0;
                    unsignedIntValue = v217;
                    goto LABEL_196;
                  }
                }

                v228 = completedQuery;
LABEL_89:

                LODWORD(punchout2) = v218;
                v39 = v229;
LABEL_90:
                storeIdentifier = [v39 storeIdentifier];

                if (storeIdentifier)
                {
                  storeIdentifier2 = [v39 storeIdentifier];
                  v94 = [v212 objectForKeyedSubscript:storeIdentifier2];

                  v95 = [v94 objectAtIndex:0];
                  v96 = [v94 objectAtIndex:1];
                  if (!v95)
                  {
                    v97 = punchout2;
                    v250[0] = v39;
                    v250[1] = v25;
                    punchout2 = [MEMORY[0x277CBEA60] arrayWithObjects:v250 count:2];
                    storeIdentifier3 = [v39 storeIdentifier];
                    [v212 setObject:punchout2 forKeyedSubscript:storeIdentifier3];

                    v25 = v227;
                    goto LABEL_98;
                  }

                  if (v95 != v228)
                  {
                    if ([v95 type] == 26)
                    {
                      v97 = punchout2;
                      punchout2 = v228;
                      v228 = v95;
                      goto LABEL_98;
                    }

                    if ([v39 type] == 26)
                    {
                      v97 = punchout2;
                      handleHiddenResult();
                      [v96 removeResults:v95];
                      punchout2 = v228;
                      v228 = 0;
LABEL_98:

                      LODWORD(punchout2) = v97;
                    }
                  }
                }

                sectionBundleIdentifier7 = [v39 sectionBundleIdentifier];
                v100 = [sectionBundleIdentifier7 isEqualToString:v214];

                if (!v100)
                {
                  goto LABEL_125;
                }

                v101 = [v39 valueForAttribute:v204 withType:objc_opt_class()];
                identifier = v101;
                if (v101)
                {
                  if ([v101 length] >= 0x24)
                  {
                    v102 = [identifier substringToIndex:36];
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
                              LODWORD(punchout2) = v218;
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
                          LODWORD(punchout2) = v218;
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
                        LODWORD(punchout2) = v218;
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
                      sectionBundleIdentifier8 = [v39 sectionBundleIdentifier];
                      v127 = [sectionBundleIdentifier8 isEqualToString:v209];

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

                      sectionBundleIdentifier9 = [v39 sectionBundleIdentifier];
                      v131 = [sectionBundleIdentifier9 isEqualToString:v208];

                      v229 = v39;
                      if (!v131)
                      {
                        v136 = v210;
                        goto LABEL_144;
                      }

                      identifier = [v39 identifier];
                      if (identifier)
                      {
                        v132 = [v203 objectForKeyedSubscript:identifier];

                        if (v132)
                        {
                          rankingItem = [v132 rankingItem];
                          rankingItem2 = [v229 rankingItem];
                          v135 = rankingItem2;
                          if (!rankingItem || !rankingItem2 || ![rankingItem isTopHit] || rankingItem != v135 || objc_msgSend(v135, "isServerAlternativeResult"))
                          {

                            goto LABEL_142;
                          }

                          bundleIdentifier2 = [v25 bundleIdentifier];
                          v173 = [bundleIdentifier2 isEqualToString:v185];

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
                          sectionBundleIdentifier10 = [v39 sectionBundleIdentifier];
                          v138 = [sectionBundleIdentifier10 isEqualToString:v207];

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

                          sectionBundleIdentifier11 = [v39 sectionBundleIdentifier];
                          v142 = [sectionBundleIdentifier11 isEqualToString:v213];

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
                                sectionBundleIdentifier12 = [v146 sectionBundleIdentifier];
                                v148 = [sectionBundleIdentifier12 isEqualToString:v211];

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

                          sectionBundleIdentifier13 = [v39 sectionBundleIdentifier];
                          v151 = [sectionBundleIdentifier13 isEqualToString:v211];

                          if (v151)
                          {
                            identifier2 = [v39 identifier];
                            v153 = [v136 objectForKeyedSubscript:identifier2];
                            v154 = v153;
                            if (v153)
                            {
                              v155 = [v153 objectAtIndexedSubscript:0];
                              sectionBundleIdentifier14 = [v155 sectionBundleIdentifier];
                              v157 = [sectionBundleIdentifier14 isEqualToString:v213];

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
                              [v136 setObject:v155 forKeyedSubscript:identifier2];
                            }
                          }

                          sectionBundleIdentifier15 = [v39 sectionBundleIdentifier];
                          v159 = [sectionBundleIdentifier15 isEqualToString:v206];

                          if (v159)
                          {
                            identifier3 = [v39 identifier];
                            v161 = [identifier3 rangeOfCharacterFromSet:v201];
                            if (v161 != 0x7FFFFFFFFFFFFFFFLL)
                            {
                              v162 = v161;
                              if (v161 < [identifier3 length])
                              {
                                v163 = [identifier3 substringToIndex:v162];
                                v164 = [identifier3 substringWithRange:{v162 + 1, objc_msgSend(identifier3, "length") + ~v162}];
                                if ([v163 length] && objc_msgSend(v164, "length"))
                                {
                                  punchout2 = [v8 objectForKeyedSubscript:v164];
                                  [punchout2 objectAtIndexedSubscript:1];
                                  v166 = v165 = v8;
                                  v167 = [punchout2 objectAtIndexedSubscript:0];
                                  if (punchout2)
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
                                  LODWORD(punchout2) = v218;
                                  v39 = v229;
                                }
                              }
                            }
                          }

                          if (v228)
                          {
                            inlineCard = [v39 inlineCard];
                            if (inlineCard)
                            {
                              [v228 setInlineCard:inlineCard];
                            }

                            identifier = [v39 compactCard];

                            if (identifier)
                            {
                              [v228 setCompactCard:identifier];
                            }

                            punchout2 = [v229 punchout];
                            if (punchout2)
                            {
                              punchout3 = [v228 punchout];

                              if (!punchout3)
                              {
                                [v228 setPunchout:punchout2];
                              }
                            }

                            completedQuery = [v229 completedQuery];
                            completedQuery2 = [v229 completedQuery];

                            if (completedQuery2)
                            {
                              [v228 setCompletedQuery:completedQuery];
                            }

                            completion = [v229 completion];

                            if (completion)
                            {
                              completion2 = [v229 completion];
                              [v228 setCompletion:completion2];
                            }

                            handleHiddenResult();
                            unsignedIntValue = [v219 unsignedIntValue];
LABEL_196:
                            [v223 addIndex:unsignedIntValue];

                            LODWORD(punchout2) = v218;
                            goto LABEL_197;
                          }

                          v228 = 0;
LABEL_199:

                          v35 = (punchout2 + 1);
                          resultSet7 = [v25 resultSet];
                          v180 = [resultSet7 count];

                          v181 = v219;
                          v36 = v219;
                          punchout2 = v35;
                          if (v180 <= v35)
                          {
                            goto LABEL_204;
                          }

                          continue;
                        }

                        [v203 setObject:v229 forKeyedSubscript:identifier];
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
              [v5 setObject:v91 forKey:identifier];
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

- (void)addDictionarySections:(id)sections
{
  v75 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  selfCopy = self;
  v5 = self->_actualSentSections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v67;
    v9 = *MEMORY[0x277D65CC8];
    v10 = *MEMORY[0x277D65B08];
    v47 = sectionsCopy;
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
          bundleIdentifier = [v12 bundleIdentifier];
          v14 = [bundleIdentifier isEqualToString:v9];

          if (v14)
          {
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            resultSet = [v12 resultSet];
            v16 = [resultSet countByEnumeratingWithState:&v62 objects:v73 count:16];
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
                    objc_enumerationMutation(resultSet);
                  }

                  sectionBundleIdentifier = [*(*(&v62 + 1) + 8 * j) sectionBundleIdentifier];
                  v21 = [sectionBundleIdentifier isEqualToString:v10];

                  if (v21)
                  {
                    v24 = 0;
                    sectionsCopy = v47;
                    v5 = v48;
                    goto LABEL_22;
                  }
                }

                v17 = [resultSet countByEnumeratingWithState:&v62 objects:v73 count:16];
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
            bundleIdentifier2 = [v12 bundleIdentifier];
            v23 = [bundleIdentifier2 isEqualToString:v10];

            if (v23)
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              resultSet = [v12 resultSet];
              v42 = [resultSet countByEnumeratingWithState:&v58 objects:v72 count:16];
              if (v42)
              {
                v43 = v42;
                v44 = *v59;
                sectionsCopy = v47;
                v24 = 1;
                while (2)
                {
                  for (k = 0; k != v43; ++k)
                  {
                    if (*v59 != v44)
                    {
                      objc_enumerationMutation(resultSet);
                    }

                    if ([*(*(&v58 + 1) + 8 * k) topHit] > 0)
                    {
                      v24 = 0;
                      goto LABEL_22;
                    }
                  }

                  v43 = [resultSet countByEnumeratingWithState:&v58 objects:v72 count:16];
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
                sectionsCopy = v47;
              }

LABEL_22:

              goto LABEL_24;
            }
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v66 objects:v74 count:16];
      v24 = 1;
      sectionsCopy = v47;
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
  v25 = sectionsCopy;
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
      bundleIdentifier3 = [v31 bundleIdentifier];
      v33 = [bundleIdentifier3 isEqualToString:v29];

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
    resultSet2 = [v31 resultSet];
    v35 = [resultSet2 countByEnumeratingWithState:&v50 objects:v70 count:16];
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
        objc_enumerationMutation(resultSet2);
      }

      if ([*(*(&v50 + 1) + 8 * v38) topHit] >= 1)
      {
        break;
      }

      if (v36 == ++v38)
      {
        v36 = [resultSet2 countByEnumeratingWithState:&v50 objects:v70 count:16];
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

    v39 = [(NSArray *)selfCopy->_actualSentSections arrayByAddingObjectsFromArray:v25];
    actualSentSections = selfCopy->_actualSentSections;
    selfCopy->_actualSentSections = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)sendResults:(id)results reset:(BOOL)reset partiallyComplete:(BOOL)complete update:(BOOL)update complete:(BOOL)a7 unchanged:(BOOL)unchanged delayedTopHit:(BOOL)hit reason:(int)self0
{
  resetCopy = reset;
  v359 = a7;
  updateCopy = update;
  completeCopy = complete;
  v487 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  isSearchToolClient = [queryContext isSearchToolClient];

  v374 = isSearchToolClient;
  if ((isSearchToolClient & 1) == 0)
  {
    [(SPFederatedQueryTask *)self serverSideDedupe:resultsCopy];
  }

  v16 = resultsCopy;
  v354 = [(NSArray *)resultsCopy count];
  if (v354)
  {
    if ([(NSArray *)self->_sentSections count])
    {
      didReceiveCoreSpotlightProgress = [(SPFederatedQueryTask *)self didReceiveCoreSpotlightProgress];
      if (reason <= 1 && didReceiveCoreSpotlightProgress)
      {
        [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
        v18 = copyForResending(self->_actualSentSections);
        actualSentSections = self->_actualSentSections;
        self->_actualSentSections = v18;
      }

      else if (reason == 3)
      {
        firstObject = [(NSArray *)resultsCopy firstObject];
        [firstObject bundleIdentifier];
        v23 = v362 = resultsCopy;
        firstObject2 = [(NSArray *)self->_sentSections firstObject];
        bundleIdentifier = [firstObject2 bundleIdentifier];
        v26 = [v23 isEqual:bundleIdentifier];

        if (v26)
        {
          [(SSBullseyeTopHitsManager *)self->_topHitsManager resetVisibilityCounts];
          array = [(NSArray *)v362 copy];
        }

        else
        {
          array = 0;
        }

        v28 = copyForResending(self->_actualSentSections);
        v29 = self->_actualSentSections;
        self->_actualSentSections = v28;

        resultsCopy = v16;
        if (array)
        {
          goto LABEL_23;
        }
      }

      if ((v374 & 1) != 0 || [(SPFederatedQueryTask *)self isBullseyeCommittedSearch])
      {
        v30 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{-[NSArray count](self->_sentSections, "count")}];
        v31 = v30;
        if (hit)
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
        array = [v31 array];

        goto LABEL_23;
      }

      v21 = [(NSArray *)self->_sentSections arrayByAddingObjectsFromArray:resultsCopy];
    }

    else
    {
      v21 = [(NSArray *)resultsCopy copy];
    }

    array = v21;
LABEL_23:
    objc_storeStrong(&self->_sentSections, array);

    v20 = 1;
    goto LABEL_24;
  }

  v20 = updateCopy || v359 || resetCopy || completeCopy;
LABEL_24:
  v355 = v20;
  query2 = [(SPQueryTask *)self query];
  queryContext2 = [query2 queryContext];
  isSearchToolClient2 = [queryContext2 isSearchToolClient];

  selfCopy = self;
  v353 = completeCopy;
  if (isSearchToolClient2)
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
      bundleIdentifier2 = [v41 bundleIdentifier];
      v43 = [bundleIdentifier2 isEqual:v398];

      if (v43)
      {
        v44 = v41;

        v421 = v44;
      }

      bundleIdentifier3 = [v41 bundleIdentifier];
      v46 = [bundleIdentifier3 isEqual:v391];

      if (v46)
      {
        v47 = v41;

        v420 = v47;
      }

      bundleIdentifier4 = [v41 bundleIdentifier];
      v49 = [bundleIdentifier4 isEqual:v387];

      if (v49)
      {
        v50 = v41;

        v413 = v50;
      }

      bundleIdentifier5 = [v41 bundleIdentifier];
      if ([bundleIdentifier5 isEqualToString:v382])
      {
        results = [v41 results];
        v53 = [results count];

        if (v53 != 1)
        {
          goto LABEL_41;
        }

        bundleIdentifier5 = v380;
        v380 = v41;
      }

LABEL_41:
      v465 = 0u;
      v466 = 0u;
      v463 = 0u;
      v464 = 0u;
      results2 = [v41 results];
      v55 = [results2 countByEnumeratingWithState:&v463 objects:v485 count:16];
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
              objc_enumerationMutation(results2);
            }

            v60 = *(*(&v463 + 1) + 8 * j);
            type = [v60 type];
            type2 = [v60 type];
            if (type != 36)
            {
              v67 = type2;
              if ([v60 type] != 2 && v67 != 37)
              {
                continue;
              }
            }

            rankingItem = [v60 rankingItem];
            l2FeatureVector = [rankingItem L2FeatureVector];
            [l2FeatureVector originalL2Score];
            v66 = v65;

            if (v37 < v66)
            {
              v37 = v66;
            }

            v57 = 1;
          }

          v56 = [results2 countByEnumeratingWithState:&v463 objects:v485 count:16];
        }

        while (v56);

        if ((v57 & 1) != 0 && ([(SPFederatedQueryTask *)selfCopy isNLPSearch]|| [(SPFederatedQueryTask *)selfCopy isPeopleSearch]))
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

  if (reason != 4)
  {
    v68 = MEMORY[0x277D659B0];
    query3 = [(SPQueryTask *)selfCopy query];
    queryContext3 = [query3 queryContext];
    v71 = [v68 moveShortcutsToRelatedAppSectionsForAllSections:v39 isAsYouTypeTopHitSearch:objc_msgSend(queryContext3 sectionBuilderBlock:{"queryKind") == 2, &__block_literal_global_308}];

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
      bundleIdentifier6 = [v78 bundleIdentifier];
      v80 = [bundleIdentifier6 isEqual:v75];

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

      bundleIdentifier7 = [v78 bundleIdentifier];
      v83 = [bundleIdentifier7 isEqual:v76];

      if (v83 && v420 != 0)
      {
        goto LABEL_133;
      }

      resultsCount = [v78 resultsCount];
      if (!resultsCount)
      {
        goto LABEL_133;
      }

      v415 = resultsCount;
      if ([(SPFederatedQueryTask *)selfCopy isScopedAppSearch])
      {
        [v78 setMaxInitiallyVisibleResults:50];
        maxCount = 50;
        goto LABEL_122;
      }

      if (![SPFederatedQueryTask sectionSupportsShowMoreInApp:v78])
      {
        bundleIdentifier8 = [v78 bundleIdentifier];
        IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

        if (IsSyndicatedPhotos)
        {
          maxCount = 14;
        }

        else
        {
          query4 = [(SPQueryTask *)selfCopy query];
          maxCount = [query4 maxCount];
        }

        goto LABEL_122;
      }

      maxCount = [v78 maxInitiallyVisibleResults];
      if (v374 & 1) != 0 || (SPHideSearchThroughSuggestions())
      {
        goto LABEL_109;
      }

      v457 = 0u;
      v458 = 0u;
      v455 = 0u;
      v456 = 0u;
      resultSet = [v78 resultSet];
      v88 = [resultSet countByEnumeratingWithState:&v455 objects:v483 count:16];
      if (!v88)
      {
LABEL_107:

        goto LABEL_109;
      }

      v89 = v88;
      v90 = maxCount;
      v91 = *v456;
      while (2)
      {
        v92 = 0;
LABEL_89:
        if (*v456 != v91)
        {
          objc_enumerationMutation(resultSet);
        }

        v93 = *(*(&v455 + 1) + 8 * v92);
        if ([v93 isFuzzyMatch])
        {
LABEL_95:
          if (v89 == ++v92)
          {
            v89 = [resultSet countByEnumeratingWithState:&v455 objects:v483 count:16];
            if (v89)
            {
              continue;
            }

            v74 = v368;
            v76 = v406;
            maxCount = v90;
            goto LABEL_106;
          }

          goto LABEL_89;
        }

        break;
      }

      userActivityType = [v93 userActivityType];
      v95 = userActivityType;
      if (userActivityType && ![userActivityType isEqualToString:v360])
      {

        goto LABEL_95;
      }

      v99 = obj;
      if (!obj)
      {
        v99 = objc_opt_new();
      }

      obj = v99;
      title = [v78 title];
      v74 = v368;
      v76 = v406;
      maxCount = v90;
      if (title)
      {
        v101 = title;
        bundleIdentifier9 = [v78 bundleIdentifier];

        if (bundleIdentifier9)
        {
          bundleIdentifier10 = [v78 bundleIdentifier];
          [(NSArray *)obj addObject:bundleIdentifier10];

          resultSet = [v78 title];
          maxCount = v90;
          [(NSArray *)obj addObject:resultSet];
LABEL_106:
          v38 = v363;
          goto LABEL_107;
        }
      }

      v38 = v363;
LABEL_109:
      if (v370)
      {
        v399 = maxCount;
        v104 = objc_opt_new();
        v105 = objc_opt_new();
        [v105 setActivityType:v365];
        v383 = v105;
        [v104 setUserActivityData:v105];
        v453 = 0u;
        v454 = 0u;
        v451 = 0u;
        v452 = 0u;
        results3 = [v78 results];
        v107 = [results3 countByEnumeratingWithState:&v451 objects:v482 count:16];
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
                objc_enumerationMutation(results3);
              }

              v111 = *(*(&v451 + 1) + 8 * k);
              moreResultsPunchout = [v111 moreResultsPunchout];
              v113 = moreResultsPunchout;
              if (moreResultsPunchout)
              {
                v114 = moreResultsPunchout;
              }

              else
              {
                v114 = v104;
              }

              [v111 setMoreResultsPunchout:v114];
            }

            v108 = [results3 countByEnumeratingWithState:&v451 objects:v482 count:16];
          }

          while (v108);
        }

        v36 = v422;
        v38 = v363;
        v74 = v368;
        maxCount = v399;
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
        title2 = [v78 title];
        domain = [v78 domain];
        *buf = 138413058;
        *&buf[4] = title2;
        v478 = 2048;
        *v479 = domain;
        *&v479[8] = 2048;
        v480 = maxCount;
        LOWORD(v481[0]) = 2048;
        *(v481 + 2) = v415;
        _os_log_impl(&dword_26B71B000, v116, v117, "Sending section title:%@, domain:%ld, maxCount:%ld, resultCount:%ld", buf, 0x2Au);

        v76 = v406;
      }

      resultSet2 = [v78 resultSet];
      if ([resultSet2 count] <= maxCount)
      {
        v75 = v392;
      }

      else
      {
        v400 = maxCount;
        query5 = [(SPQueryTask *)selfCopy query];
        queryContext4 = [query5 queryContext];
        isSearchToolClient3 = [queryContext4 isSearchToolClient];

        if (isSearchToolClient3)
        {
          v75 = v392;
          v76 = v406;
          goto LABEL_133;
        }

        resultSet2 = [v78 resultSet];
        v124 = [objc_alloc(MEMORY[0x277CBEB40]) initWithOrderedSet:resultSet2 range:0 copyItems:{v400, 1}];
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

  self = selfCopy;
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
    *&v479[6] = resetCopy;
    LOWORD(v480) = 1024;
    *(&v480 + 2) = v353;
    HIWORD(v480) = 1024;
    v481[0] = updateCopy;
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
    query6 = [(SPQueryTask *)self query];
    queryID = [query6 queryID];
    categoryToResultMapping = self->_categoryToResultMapping;
    topHitSection = selfCopy->_topHitSection;
    [(SPQueryTask *)selfCopy query];
    v139 = v407 = v130;
    [v139 queryContext];
    v141 = v140 = v134;
    v142 = topHitSection;
    self = selfCopy;
    v143 = [v423 initWithQueryId:queryID categoryToResultMapping:categoryToResultMapping currentTopHitSection:v142 queryContext:v141 ranker:selfCopy->_itemRanker];
    topHitsManager = selfCopy->_topHitsManager;
    selfCopy->_topHitsManager = v143;

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
    query7 = [(SPQueryTask *)self query];
    queryContext5 = [query7 queryContext];
    searchEntities = [queryContext5 searchEntities];
    if (searchEntities)
    {
      v401 = v134;
      v408 = v130;
      query8 = [(SPQueryTask *)self query];
      queryContext6 = [query8 queryContext];
      searchEntities2 = [queryContext6 searchEntities];
      if ([searchEntities2 count])
      {
        query9 = [(SPQueryTask *)self query];
        queryContext7 = [query9 queryContext];
        searchEntities3 = [queryContext7 searchEntities];
        lastObject = [searchEntities3 lastObject];
        isScopedSearch = [lastObject isScopedSearch];

        self = selfCopy;
        v129 = v364;

        v36 = v424;
      }

      else
      {
        isScopedSearch = 0;
      }

      v134 = v401;
      v130 = v408;
    }

    else
    {
      isScopedSearch = 0;
    }

    if (updateCopy || (isScopedSearch & 1) != 0)
    {
      goto LABEL_157;
    }

    firstObject3 = [(NSArray *)self->_actualSentSections firstObject];
    v157 = firstObject3;
    if (firstObject3)
    {
      bundleIdentifier11 = [firstObject3 bundleIdentifier];
      v159 = [bundleIdentifier11 isEqual:@"com.apple.spotlight.tophits"];

      if ((v159 & 1) == 0)
      {

        v157 = 0;
      }

      v129 = v364;
    }

    v160 = self->_topHitsManager;
    isEntitySearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch]|| [(SPFederatedQueryTask *)self isEntitySearch];
    v450 = v157;
    v145 = [(SSBullseyeTopHitsManager *)v160 tagOrFilterHiddenSectionsForClient:v129 isCommittedSearch:isEntitySearch maxVisibleSections:v134 maxTopHitsCount:v130 minThresholdForBigResult:&v450 topHitSection:v132];
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

  query10 = [(SPQueryTask *)self query];
  [query10 queryIdent];
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

  if (reason != 4)
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
  bundleIdentifier12 = [v167 bundleIdentifier];
  v169 = [bundleIdentifier12 isEqualToString:@"com.apple.spotlight.tophits"];

  if (!v169)
  {
LABEL_201:

    v176 = 0;
    goto LABEL_202;
  }

  resultSet3 = [v167 resultSet];
  v171 = [resultSet3 objectAtIndexedSubscript:0];
  sectionBundleIdentifier = [v171 sectionBundleIdentifier];

  if (!sectionBundleIdentifier || !priorityIndexEligibleBundleIdentifer(sectionBundleIdentifier))
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
  self = selfCopy;
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
  if (reason == 4 || (-[SPQueryTask query](selfCopy, "query"), v182 = objc_claimAutoreleasedReturnValue(), [v182 queryContext], v183 = objc_claimAutoreleasedReturnValue(), v184 = objc_msgSend(v183, "isSearchToolClient"), v183, v182, (v184 & 1) != 0))
  {
    personIdentifier = 0;
    v369 = 0;
    v186 = v409;
    goto LABEL_207;
  }

  isEnabled = [MEMORY[0x277D65960] isEnabled];
  if (reason != 2 && isEnabled && [(SPFederatedQueryTask *)selfCopy isBullseyeNonCommittedSearch])
  {
    v202 = MEMORY[0x277D65960];
    query11 = [(SPQueryTask *)selfCopy query];
    queryContext8 = [query11 queryContext];
    rankingConfiguration = [(SSRankingManager *)selfCopy->_rankingManager rankingConfiguration];
    [v202 setQueryIntentForQueryContext:queryContext8 sections:v409 rankingInfo:rankingConfiguration];

    v206 = MEMORY[0x277D65960];
    query12 = [(SPQueryTask *)selfCopy query];
    queryContext9 = [query12 queryContext];
    v209 = [v206 applySectionPolicyForQueryContext:queryContext9 sections:v409];

    v409 = v209;
  }

  if (!v413)
  {
    personIdentifier = 0;
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
    personIdentifier = 0;
    v369 = 0;
    goto LABEL_302;
  }

  v211 = v210;
  personIdentifier = 0;
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
      bundleIdentifier13 = [v215 bundleIdentifier];
      v217 = [bundleIdentifier13 isEqual:v213];

      if (v217)
      {
        v218 = v215;

        v444 = 0u;
        v445 = 0u;
        v442 = 0u;
        v443 = 0u;
        results4 = [v218 results];
        v220 = [results4 countByEnumeratingWithState:&v442 objects:v475 count:16];
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
                objc_enumerationMutation(results4);
              }

              v224 = *(*(&v442 + 1) + 8 * m);
              if (!personIdentifier)
              {
                contactIdentifier = [*(*(&v442 + 1) + 8 * m) contactIdentifier];
                if (contactIdentifier)
                {

LABEL_239:
                  contactIdentifier2 = [v224 contactIdentifier];
                  resultBundleId = contactIdentifier2;
                  if (contactIdentifier2)
                  {
                    resultBundleId = contactIdentifier2;
                    personIdentifier = resultBundleId;
                  }

                  else
                  {
                    personIdentifier = [v224 personIdentifier];
                  }

LABEL_242:

                  continue;
                }

                personIdentifier2 = [v224 personIdentifier];

                if (personIdentifier2)
                {
                  goto LABEL_239;
                }
              }

              sectionBundleIdentifier2 = [v224 sectionBundleIdentifier];
              v226 = [sectionBundleIdentifier2 isEqualToString:@"com.apple.application"];

              if (v226 && ![v181 count])
              {
                resultBundleId = [v224 resultBundleId];
                [v181 addObject:resultBundleId];
                goto LABEL_242;
              }
            }

            v221 = [results4 countByEnumeratingWithState:&v442 objects:v475 count:16];
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
        bundleIdentifier14 = [v215 bundleIdentifier];
        v232 = [bundleIdentifier14 isEqual:v388];

        if (v232)
        {
          results4 = v369;
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
  resultSet4 = [v36 resultSet];
  v281 = [resultSet4 count];

  if (!v281)
  {
    v186 = v409;
    goto LABEL_371;
  }

  v390 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v404 = objc_opt_new();
  v361 = objc_opt_new();
  results5 = [v36 results];
  v283 = [results5 copy];

  results6 = [v420 results];
  v285 = [results6 copy];

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
        contactIdentifier3 = [v290 contactIdentifier];

        if (contactIdentifier3)
        {
          contactIdentifier4 = [v290 contactIdentifier];
          [v404 setObject:v290 forKey:contactIdentifier4];

          if ((v396 & 1) != 0 || ([v290 contactIdentifier], v293 = objc_claimAutoreleasedReturnValue(), v294 = objc_msgSend(v293, "isEqualToString:", personIdentifier), v293, (v294 & 1) == 0))
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
      personIdentifier3 = [v299 personIdentifier];

      if (personIdentifier3)
      {
        v301 = sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__store;
        personIdentifier4 = [v299 personIdentifier];
        v433 = v418;
        v303 = [v301 unifiedContactWithIdentifier:personIdentifier4 keysToFetch:sendResults_reset_partiallyComplete_update_complete_unchanged_delayedTopHit_reason__contactKeysToFetch error:&v433];
        v304 = v433;

        if (v304)
        {
          if ([v304 code] != 200)
          {
            v305 = SPLogForSPLogCategoryDefault();
            if (os_log_type_enabled(v305, OS_LOG_TYPE_DEFAULT))
            {
              localizedDescription = [v304 localizedDescription];
              *buf = 138412290;
              *&buf[4] = localizedDescription;
              _os_log_impl(&dword_26B71B000, v305, OS_LOG_TYPE_DEFAULT, "*warn* CNContactStore fetch error: %@", buf, 0xCu);
            }

            goto LABEL_339;
          }

          goto LABEL_340;
        }

        personIdentifier5 = [v299 personIdentifier];
        v308 = [v404 objectForKey:personIdentifier5];

        if (v308)
        {
          v418 = 0;
        }

        else
        {
          personIdentifier6 = [v299 personIdentifier];
          [v404 setObject:v299 forKey:personIdentifier6];

          title3 = [v299 title];
          text = [title3 text];
          v305 = SSNormalizedQueryString();

          if (([v361 containsObject:v305] & 1) == 0)
          {
            [v361 addObject:v305];
            if ((v396 & 1) == 0)
            {
              personIdentifier7 = [v299 personIdentifier];
              v313 = [personIdentifier7 isEqualToString:personIdentifier];

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
        bundleIdentifier15 = [v323 bundleIdentifier];
        v325 = [bundleIdentifier15 isEqual:v321];

        if (v325)
        {
          [v323 setMaxInitiallyVisibleResults:v386];
          [v323 setResults:v390];
        }

        else
        {
          bundleIdentifier16 = [v323 bundleIdentifier];
          v327 = [bundleIdentifier16 isEqual:v367];

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

            bundleIdentifier17 = [v323 bundleIdentifier];
            [(NSArray *)v330 addObject:bundleIdentifier17];

            title4 = [v323 title];
            obj = v330;
            [(NSArray *)v330 addObject:title4];
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
          bundleIdentifier18 = [v342 bundleIdentifier];
          v344 = [bundleIdentifier18 isEqual:v340];

          if (v344)
          {
            query13 = [(SPQueryTask *)selfCopy query];
            queryContext10 = [query13 queryContext];
            [queryContext10 searchString];
            v347 = v340;
            v349 = v348 = v339;
            v350 = [(SPFederatedQueryTask *)selfCopy suggestionsWithSearchString:v349 sections:v412 topHitSection:v380 highestLocalScore:v37];
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
  query14 = [(SPQueryTask *)selfCopy query];
  queryContext11 = [query14 queryContext];
  isSearchToolClient4 = [queryContext11 isSearchToolClient];

  if (isSearchToolClient4)
  {
    v190 = MEMORY[0x277D65978];
    query15 = [(SPQueryTask *)selfCopy query];
    queryContext12 = [query15 queryContext];
    v193 = [v190 processSearchToolFinalResults:v186 queryContext:queryContext12];

    v186 = v193;
  }

  v194 = [MEMORY[0x277D659C8] postProcessSectionsBasedOnTopHitSection:v186 withTopHitSection:v380];

  [MEMORY[0x277D659C8] finalizeTopHitsInSections:v194 withTopHitSection:v380];
  [MEMORY[0x277D65978] fillRankingPosition:v194];
  if (reason == 2 && (-[SPQueryTask query](selfCopy, "query"), v195 = objc_claimAutoreleasedReturnValue(), [v195 queryContext], v196 = objc_claimAutoreleasedReturnValue(), v197 = objc_msgSend(v196, "isSearchToolClient"), v196, v195, (v197 & 1) == 0))
  {
    v198 = selfCopy;
    [(SPFederatedQueryTask *)selfCopy addDictionarySections:v194];
  }

  else
  {
    v198 = selfCopy;
    objc_storeStrong(&selfCopy->_actualSentSections, v194);
  }

  query16 = [(SPQueryTask *)v198 query];
  queryContext13 = [query16 queryContext];
  isSearchToolClient5 = [queryContext13 isSearchToolClient];

  if ((isSearchToolClient5 & 1) == 0)
  {
    mEMORY[0x277D4BE78] = [MEMORY[0x277D4BE78] sharedInstance];
    v389 = v198->_actualSentSections;
    query17 = [(SPQueryTask *)v198 query];
    queryContext14 = [query17 queryContext];
    searchString = [queryContext14 searchString];
    query18 = [(SPQueryTask *)v198 query];
    queryIdent = [query18 queryIdent];
    allowAnonymousDataCollection = v198->_allowAnonymousDataCollection;
    itemRanker = v198->_itemRanker;
    rankingConfiguration2 = [(SSRankingManager *)v198->_rankingManager rankingConfiguration];
    query19 = [(SPQueryTask *)v198 query];
    internalDebug = [query19 internalDebug];
    [(SPQueryTask *)v198 query];
    v240 = v403 = v194;
    queryContext15 = [v240 queryContext];
    keyboardPrimaryLanguage = [queryContext15 keyboardPrimaryLanguage];
    LOBYTE(v351) = internalDebug;
    [mEMORY[0x277D4BE78] willSendSections:v389 forQuery:searchString queryIdentifier:queryIdent allowAnonymousDataCollection:allowAnonymousDataCollection withRankerUsed:itemRanker withRankingConfiguration:rankingConfiguration2 internalDebug:v351 keyboardPrimaryLanguage:keyboardPrimaryLanguage clientID:v198->_clientBundleID];

    v194 = v403;
  }

  if ([(SPFederatedQueryTask *)v198 isInternalDevice]&& v359)
  {
    [(SPFederatedQueryTask *)selfCopy sendTTRLogsWithSections:selfCopy->_actualSentSections];
  }

  if ([v194 count])
  {
    v243 = 0;
    goto LABEL_263;
  }

  v244 = selfCopy;
  if (selfCopy->_sendStableSections)
  {
    v243 = [(NSArray *)selfCopy->_stableSections count]!= 0;
LABEL_263:
    v244 = selfCopy;
    query20 = [(SPQueryTask *)selfCopy query];
    cancelled = [query20 cancelled];

    if ((cancelled & 1) == 0)
    {
      v247 = v194;
      v248 = [objc_alloc(MEMORY[0x277D4BEB8]) initWithSections:v194 stableSections:selfCopy->_stableSections];
      query21 = [(SPQueryTask *)selfCopy query];
      blendingTime = selfCopy->_blendingTime;
      geoUserSessionEntityString = [(SPFederatedQueryTask *)selfCopy geoUserSessionEntityString];
      v252 = geoUserSessionEntityString;
      v253 = &stru_287C35638;
      if (geoUserSessionEntityString)
      {
        v253 = geoUserSessionEntityString;
      }

      bundlesSupportingAppScoping = selfCopy->_bundlesSupportingAppScoping;
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
      BYTE2(v351) = unchanged;
      BYTE1(v351) = hit;
      LOBYTE(v351) = v359;
      [SPFederatedQueryTask searchQuery:selfCopy gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:query21 partiallyComplete:v248 priorityFastPath:resetCopy update:v353 complete:reason == 4 delayedTopHit:updateCopy unchanged:blendingTime forceStable:v351 blendingDuration:v253 geoEntityString:bundlesSupportingAppScoping supportedAppScopes:v255 showMoreInAppInfo:?];
      goto LABEL_271;
    }
  }

  else
  {
    query22 = [(SPQueryTask *)selfCopy query];
    cancelled2 = [query22 cancelled];

    if ((cancelled2 & 1) == 0)
    {
      v247 = v194;
      v273 = objc_alloc(MEMORY[0x277D4BEB8]);
      v274 = MEMORY[0x277CBEBF8];
      v248 = [v273 initWithSections:MEMORY[0x277CBEBF8]];
      query21 = [(SPQueryTask *)selfCopy query];
      v275 = selfCopy->_blendingTime;
      geoUserSessionEntityString2 = [(SPFederatedQueryTask *)selfCopy geoUserSessionEntityString];
      v252 = geoUserSessionEntityString2;
      v277 = &stru_287C35638;
      if (geoUserSessionEntityString2)
      {
        v277 = geoUserSessionEntityString2;
      }

      v278 = selfCopy->_bundlesSupportingAppScoping;
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
      BYTE2(v351) = unchanged;
      LOWORD(v351) = v359;
      [SPFederatedQueryTask searchQuery:selfCopy gotResultSet:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" replace:query21 partiallyComplete:v248 priorityFastPath:resetCopy update:v353 complete:reason == 4 delayedTopHit:updateCopy unchanged:v275 forceStable:v351 blendingDuration:v277 geoEntityString:v278 supportedAppScopes:v279 showMoreInAppInfo:?];
LABEL_271:

      v244 = selfCopy;
      v194 = v247;
    }
  }

  stableSections = v244->_stableSections;
  v244->_stableSections = 0;

  query23 = [(SPQueryTask *)v244 query];
  queryContext16 = [query23 queryContext];
  isSearchToolClient6 = [queryContext16 isSearchToolClient];

  if ((isSearchToolClient6 & 1) == 0)
  {
    v260 = objc_alloc(MEMORY[0x277D4C270]);
    query24 = [(SPQueryTask *)v244 query];
    v262 = [v260 initWithEvent:@"com.apple.spotlight.backend.query.end" timeInterval:0 queryId:{objc_msgSend(query24, "queryIdent")}];

    if (!updateCopy)
    {
      mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
      query25 = [(SPQueryTask *)selfCopy query];
      queryIdent2 = [query25 queryIdent];
      bundleID = [(SPXPCConnection *)selfCopy->_connection bundleID];
      [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v262 queryId:queryIdent2 clientID:bundleID];
    }

    v244 = selfCopy;
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
  if (resetCopy)
  {
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
  }

  if (v359)
  {
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
  }

  if (v267)
  {
    v268 = selfCopy->_categoryToResultMapping;
    selfCopy->_categoryToResultMapping = 0;

    [(SPFederatedQueryTask *)selfCopy setServer_features:0];
    [(SPFederatedQueryTask *)selfCopy setTokens:0];
    [(SPFederatedQueryTask *)selfCopy setSlowTokens:0];
  }

  v38 = v364;
  if (reason == 4)
  {
    v269 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v269, OS_LOG_TYPE_DEFAULT, "Sending early priority index results", buf, 2u);
    }

    selfCopy->_sentPriority = 1;
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

- (void)sendError:(id)error
{
  errorCopy = error;
  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  if ((cancelled & 1) == 0)
  {
    [(SPFederatedQueryTask *)self searchQueryEncounteredError:errorCopy];
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

  query = [(SPQueryTask *)self query];
  LODWORD(v9) = 0;
  [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:query replace:0 partiallyComplete:1 priorityFastPath:0 update:0 complete:0 delayedTopHit:0.0 unchanged:v9 forceStable:&stru_287C35638 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)orderedCategories:(id)categories
{
  v26 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(categoriesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = categoriesCopy;
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
        query = [(SPQueryTask *)self query];
        queryContext = [query queryContext];
        searchDomains = [queryContext searchDomains];
        v12 = [searchDomains indexOfObject:v8];

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

- (void)sendResultsForKeys:(id)keys toSendSections:(id)sections
{
  v19 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v7 = [(SPFederatedQueryTask *)self orderedCategories:keys];
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
        [sectionsCopy addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)prepareAndSend:(id)send force:(BOOL)force moreComing:(BOOL)coming reason:(int)reason
{
  forceCopy = force;
  v59 = *MEMORY[0x277D85DE8];
  sendCopy = send;
  if (forceCopy)
  {
    self->_didForceSend = 1;
  }

  if (!coming)
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
      v33 = sendCopy;
      v34 = v28;
      v35 = v27;
      bottomPlacedSections = self->_bottomPlacedSections;
      allKeys = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
      *buf = 138412546;
      v56 = bottomPlacedSections;
      v27 = v35;
      v28 = v34;
      sendCopy = v33;
      v31 = MEMORY[0x277D4BF48];
      v57 = 2112;
      v58 = allKeys;
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
        LODWORD(v54) = reason;
        selfCopy3 = self;
        v20 = sendCopy;
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

  if (reason == 5)
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
    selfCopy3 = self;
    v20 = sendCopy;
    v21 = 1;
    goto LABEL_47;
  }

  query = [(SPQueryTask *)self query];
  infinitePatience = [query infinitePatience];

  if ((infinitePatience & 1) == 0 && [sendCopy count])
  {
    v17 = reason == 4;
    didForceSend = self->_didForceSend;
    LODWORD(v54) = reason;
    selfCopy3 = self;
    v20 = sendCopy;
    v21 = 0;
LABEL_47:
    [(SPFederatedQueryTask *)selfCopy3 sendResults:v20 reset:didForceSend partiallyComplete:v17 update:0 complete:v21 delayedTopHit:0 reason:v54];
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)logPerfToAnalytics:(int)analytics
{
  if (analytics > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_279CFE320[analytics];
  }

  query_analytics_log_complete(self, v3, self->_startTime);
}

- (void)addMatchInfo:(_MDPlistContainer *)info
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

  [(NSMutableArray *)matchInfo addObject:info];
  objc_sync_exit(obj);
}

- (__CFArray)copyMatchInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_matchInfo copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)sendFinishedDomains:(BOOL)domains reason:(int)reason
{
  domainsCopy = domains;
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
  v186 = domainsCopy;
  v12 = (v10 > 0) & ~domainsCopy;
  if (v11 > 0)
  {
    v12 = 1;
  }

  if (reason == 4)
  {
    v12 = 1;
  }

  v189 = v12;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  allValues = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
  v15 = [allValues countByEnumeratingWithState:&v239 objects:v251 count:16];
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
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v239 + 1) + 8 * i) resultsCount])
        {
          v19 = 1;
          goto LABEL_20;
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v239 objects:v251 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_20:

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchEntities = [queryContext searchEntities];
  selfCopy = self;
  v190 = v13;
  if (searchEntities)
  {
    v204 = v19;
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    searchEntities2 = [queryContext2 searchEntities];
    if ([searchEntities2 count])
    {
      query3 = [(SPQueryTask *)self query];
      queryContext3 = [query3 queryContext];
      [queryContext3 searchEntities];
      v27 = v187 = reason;
      [v27 lastObject];
      v29 = v28 = query2;
      isScopedSearch = [v29 isScopedSearch];

      query2 = v28;
      reason = v187;

      self = selfCopy;
      v30 = isScopedSearch;
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

  query4 = [(SPQueryTask *)self query];
  cancelled = [query4 cancelled];

  if (cancelled)
  {
    goto LABEL_226;
  }

  query5 = [(SPQueryTask *)self query];
  queryContext4 = [query5 queryContext];
  queryKind = [queryContext4 queryKind];

  v185 = v30;
  if (reason != 4 && -[NSArray count](self->_actualSentSections, "count") && ![v13 count])
  {
    v37 = [(NSArray *)self->_actualSentSections objectAtIndex:0];
    bundleIdentifier = [v37 bundleIdentifier];
    v39 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

    if (v39)
    {
      [v13 addObject:v37];

      goto LABEL_34;
    }
  }

  [(SPFederatedQueryTask *)self addTopHitSectionIfNecessaryToSectionsForSending:v13 updatedSections:v19 isScopedSearch:v30];
LABEL_34:
  query6 = [(SPQueryTask *)self query];
  queryContext5 = [query6 queryContext];
  searchString = [queryContext5 searchString];
  [(SPFederatedQueryTask *)self addSuggestionsToSectionsForSending:v13 searchString:searchString updatedSections:v19 | v189 ^ 1 queryKind:queryKind];

  reasonCopy = reason;
  if (((v189 ^ 1) & 1) == 0 && reason >= 2 && reason != 3 && (reason != 4 || !self->_didReceiveCoreSpotlightProgress) && self->_didSendResults || !self->_categoryToResultMapping)
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
  v183 = queryKind;
  v182 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (reason == 4)
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    allKeys = [(NSMutableDictionary *)self->_categoryToResultMapping allKeys];
    v45 = [allKeys countByEnumeratingWithState:&v235 objects:v250 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v49 = *(*(&v235 + 1) + 8 * j);
          v50 = [(NSMutableDictionary *)self->_categoryToResultMapping objectForKey:v49];
          bundleIdentifier2 = [v50 bundleIdentifier];
          if (priorityIndexEligibleBundleIdentifer(bundleIdentifier2))
          {
            [(NSMutableDictionary *)v43 setObject:v50 forKey:v49];
          }
        }

        v46 = [allKeys countByEnumeratingWithState:&v235 objects:v250 count:16];
      }

      while (v46);
    }

    queryKind = v183;
  }

  else
  {
    v43 = self->_categoryToResultMapping;
  }

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  allKeys2 = [(NSMutableDictionary *)v43 allKeys];
  v56 = [allKeys2 countByEnumeratingWithState:&v231 objects:v249 count:16];
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
  obj = allKeys2;
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
      bundleIdentifier3 = [v63 bundleIdentifier];
      v65 = [bundleIdentifier3 isEqualToString:v198];

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

        bundleIdentifier4 = [v63 bundleIdentifier];
        v59 = [bundleIdentifier4 isEqualToString:v195];

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
        bundleIdentifier5 = [v63 bundleIdentifier];
        v58 = [bundleIdentifier5 isEqualToString:v193];

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
        bundleIdentifier6 = [v63 bundleIdentifier];
        v60 = [bundleIdentifier6 isEqualToString:v194];
      }

      else
      {
        v60 = 0;
      }

LABEL_78:
      results = [v63 results];
      v70 = ([results count] == 0) | v65;

      if (v70)
      {
        if (v65)
        {
          bottomPlacedSections = selfCopy->_bottomPlacedSections;
          if (!bottomPlacedSections)
          {
            v72 = objc_opt_new();
            v73 = selfCopy->_bottomPlacedSections;
            selfCopy->_bottomPlacedSections = v72;

            bottomPlacedSections = selfCopy->_bottomPlacedSections;
          }

          if (([(NSMutableArray *)bottomPlacedSections containsObject:v63]& 1) == 0)
          {
            [(NSMutableArray *)selfCopy->_bottomPlacedSections addObject:v63];
          }
        }

        [(NSMutableDictionary *)v205 setObject:0 forKeyedSubscript:v62];
      }
    }

    v57 = [obj countByEnumeratingWithState:&v231 objects:v249 count:16];
  }

  while (v57);

  v74 = (v59 | v58) & v60;
  self = selfCopy;
  queryKind = v183;
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
  query7 = [(SPQueryTask *)self query];
  cancelled2 = [query7 cancelled];

  if (cancelled2)
  {

    v13 = v190;
    goto LABEL_226;
  }

  [(SPFederatedQueryTask *)self externalID];
  kdebug_trace();
  query8 = [(SPQueryTask *)self query];
  queryContext6 = [query8 queryContext];
  isSearchToolClient = [queryContext6 isSearchToolClient];

  if (isSearchToolClient)
  {
    v80 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](v43, "count")}];
    v229[0] = MEMORY[0x277D85DD0];
    v229[1] = 3221225472;
    v229[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke;
    v229[3] = &unk_279CFE0C0;
    selfCopy3 = self;
    v82 = v80;
    v230 = v82;
    [(NSMutableDictionary *)v43 enumerateKeysAndObjectsUsingBlock:v229];
    itemRanker = v230;
  }

  else
  {
    rankingManager = self->_rankingManager;
    itemRanker = [(SPFederatedQueryTask *)self itemRanker];
    preferredBundleIDs = [(SPFederatedQueryTask *)self preferredBundleIDs];
    query9 = [(SPQueryTask *)self query];
    queryIdent = [query9 queryIdent];
    isCJK = [(SPFederatedQueryTask *)self isCJK];
    isBullseyeNonCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
    isBullseyeCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
    selfCopy3 = self;
    isPeopleSearch = self->_isPeopleSearch;
    query10 = [(SPQueryTask *)selfCopy3 query];
    queryContext7 = [query10 queryContext];
    BYTE2(v181) = isPeopleSearch;
    BYTE1(v181) = isBullseyeCommittedSearch;
    v43 = v205;
    LOBYTE(v181) = isBullseyeNonCommittedSearch;
    queryKind = v183;
    v82 = [SSRankingManager rankSectionsUsingBundleIDToSectionMapping:"rankSectionsUsingBundleIDToSectionMapping:withRanker:preferredBundleIds:isScopedSearch:queryId:isCJK:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:isPeopleSearch:queryContext:" withRanker:v205 preferredBundleIds:itemRanker isScopedSearch:preferredBundleIDs queryId:v185 isCJK:queryIdent isBullseyeNonCommittedSearch:isCJK isBullseyeCommittedSearch:v181 isPeopleSearch:queryContext7 queryContext:?];
  }

  v13 = v190;
  if ((selfCopy3->_parsecCameLaterThanSRT || selfCopy->_parsecEntityCameEarly) && ((queryKind - 5) < 4 || queryKind == 1 || queryKind == 4 || selfCopy->_parsecEntityCameEarly))
  {
    v92 = [(NSArray *)selfCopy->_sentSections copy];
    v93 = [v92 count];
    v225[0] = MEMORY[0x277D85DD0];
    v225[1] = 3221225472;
    v225[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_342;
    v225[3] = &unk_279CFE0E8;
    v94 = v92;
    v226 = v94;
    v82 = v82;
    v227 = v82;
    v228 = selfCopy;
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
        selfCopy->_sendStableSections = 1;
      }
    }
  }

  if (!selfCopy->_sendStableSections || !selfCopy->_sentTaggedTopHits || selfCopy->_sentPriority || selfCopy->_receivedLateParsecResults || selfCopy->_shouldRecomputeSuggestions)
  {
    if (selfCopy->_sentPriority)
    {
      v101 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v101, OS_LOG_TYPE_DEFAULT, "Sending additional results after priority index results", buf, 2u);
      }
    }

    selfCopy->_sentPriority = 0;
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

      if (selfCopy->_genreGroupingEnabled)
      {
        v105 = selfCopy->_rankingManager;
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
            results2 = [v116 results];
            v118 = [results2 count];

            if (v118)
            {
              results3 = [v116 results];
              v120 = [results3 objectAtIndex:0];

              if ([v120 placement] == 2 || (objc_msgSend(v116, "bundleIdentifier"), v121 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend(v121, "isEqualToString:", v114), v121, v122))
              {
                [(NSMutableArray *)selfCopy->_bottomPlacedSections addObject:v116];
              }
            }
          }

          v112 = [v82 countByEnumeratingWithState:&v221 objects:v246 count:16];
        }

        while (v112);
      }

      if ([(NSMutableArray *)selfCopy->_bottomPlacedSections count])
      {
        v123 = [v82 mutableCopy];
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v124 = selfCopy->_bottomPlacedSections;
        v125 = [(NSMutableArray *)v124 countByEnumeratingWithState:&v217 objects:v245 count:16];
        queryKind = v183;
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
        queryKind = v183;
        v43 = v205;
      }
    }

    [v13 addObjectsFromArray:v82];
    [(SPFederatedQueryTask *)selfCopy externalID];
    kdebug_trace();
    v130 = [(NSMutableDictionary *)v43 objectForKey:*MEMORY[0x277D65A60]];
    v100 = v130;
    if (v130)
    {
      resultSet = [v130 resultSet];
      firstObject = [resultSet firstObject];
      topHit = [firstObject topHit];

      if (!topHit)
      {
        [v13 removeObject:v100];
        [v13 addObject:v100];
      }
    }

    if ([v13 count])
    {
      if ([(NSArray *)selfCopy->_corrections count])
      {
        if (selfCopy->_previousQueryKind == 10)
        {
          suggestion = 0;
        }

        else
        {
          firstObject2 = [(NSArray *)selfCopy->_corrections firstObject];
          suggestion = [firstObject2 suggestion];
        }
      }

      else
      {
        suggestion = 0;
      }

      v136 = selfCopy->_rankingManager;
      topHitSection = selfCopy->_topHitSection;
      v138 = selfCopy->_isPeopleSearch;
      itemRanker2 = [(SPFederatedQueryTask *)selfCopy itemRanker];
      queryTermLength = [itemRanker2 queryTermLength];
      itemRanker3 = [(SPFederatedQueryTask *)selfCopy itemRanker];
      v99 = [(SSRankingManager *)v136 applyTopSectionPolicy:v190 withTopHitSection:topHitSection isPeopleSearch:v138 queryKind:v183 correction:suggestion queryLength:queryTermLength ranker:itemRanker3];

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

      queryKind = v183;
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
    if (reasonCopy == 3)
    {
      v99 = [(NSArray *)selfCopy->_sentSections mutableCopy];
      v100 = v190;
      goto LABEL_176;
    }

    v54 = v186;
    v145 = v182;
  }

  query_analytics_log_timing(selfCopy, "finished", "ranking", v145);
  [(SPFederatedQueryTask *)selfCopy logPerfToAnalytics:reasonCopy];

  self = selfCopy;
LABEL_178:

  query11 = [(SPQueryTask *)self query];
  cancelled3 = [query11 cancelled];

  if ((cancelled3 & 1) == 0)
  {
    v148 = v189 ^ 1;
    if ((queryKind - 4) > 4)
    {
      v148 = 1;
    }

    if ((v148 & 1) == 0 && [v13 count] == 1 && objc_msgSend(v13, "containsObject:", self->_topHitSection))
    {
      self->_didSendTopHits = 0;
    }

    else
    {
      v149 = reasonCopy;
      if (self->_enforcePreferredBundleIDs || (v150 = SSPreferLocalResultsOnLocalEngagment(), (queryKind - 5) <= 3) && v150)
      {
        preferredBundleIDs2 = [(SPFederatedQueryTask *)self preferredBundleIDs];
        v152 = [preferredBundleIDs2 count];

        if (v152)
        {
          array = [MEMORY[0x277CBEB18] array];
          array2 = [MEMORY[0x277CBEB18] array];
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
                  preferredBundleIDs3 = [(SPFederatedQueryTask *)self preferredBundleIDs];
                  bundleIdentifier7 = [v159 bundleIdentifier];
                  v163 = [preferredBundleIDs3 containsObject:bundleIdentifier7];

                  if (v163)
                  {
                    v164 = array;
                  }

                  else
                  {
                    v164 = array2;
                  }

                  [v164 addObject:v159];
                  self = selfCopy;
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
          v149 = reasonCopy;
          if (v156)
          {
            [v153 addObject:v156];
          }

          v212[0] = MEMORY[0x277D85DD0];
          v212[1] = 3221225472;
          v212[2] = __51__SPFederatedQueryTask_sendFinishedDomains_reason___block_invoke_346;
          v212[3] = &unk_279CFE110;
          v212[4] = self;
          [array sortUsingComparator:v212];
          [v153 addObjectsFromArray:array];
          [v153 addObjectsFromArray:array2];

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
          bundleIdentifier8 = [v171 bundleIdentifier];
          if ([bundleIdentifier8 hasPrefix:@"com.apple.parsec"])
          {
            [v171 resultSet];
            v174 = v173 = v165;
            [v174 firstObject];
            v176 = v175 = v169;
            placement = [v176 placement];

            v169 = v175;
            v165 = v173;

            v178 = placement == 1;
            self = selfCopy;
            if (v178)
            {
              v179 = v171;

              v54 = v186;
              v149 = reasonCopy;
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
            v149 = reasonCopy;
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

- (id)detailTextFromBundleIDs:(id)ds
{
  v37 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (SSEnableLocalDetailText())
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = dsCopy;
    v5 = dsCopy;
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
          localizedName = [v15 localizedSearchStringWithIdentifier:v16];
          if (!localizedName)
          {
            goto LABEL_13;
          }

LABEL_12:
          [v4 addObject:localizedName];
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
        localizedName = [v25 localizedName];

        v12 = v24;
        v11 = v23;
        v5 = v22;
        v4 = v21;
        v10 = v20;
        v8 = v19;
        v9 = v18;
        v7 = v31;
        if (localizedName)
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

        dsCopy = v30;
        goto LABEL_20;
      }
    }
  }

  v27 = 0;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)contactSuggestionsWithSearchString:(id)string
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
    results = [v3 results];
    v5 = [results countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(results);
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
          title = [v9 title];
          text = [title text];
          *buf = 138412290;
          v37 = text;
          _os_log_impl(&dword_26B71B000, v11, v12, "Check result %@", buf, 0xCu);
        }

        contactIdentifier = [v9 contactIdentifier];
        if (contactIdentifier)
        {
          lastUsedDate = contactIdentifier;
          personIdentifier = [v9 personIdentifier];
          if (personIdentifier)
          {

LABEL_15:
            goto LABEL_16;
          }

          resultBundleId = [v9 resultBundleId];
          v19 = [resultBundleId isEqual:v31];

          if (v19)
          {
            lastUsedDate = [v9 lastUsedDate];
            [lastUsedDate timeIntervalSinceNow];
            if (v20 <= -40996800.0)
            {
              goto LABEL_15;
            }

            hasTextContentMatch = [v9 hasTextContentMatch];

            if (hasTextContentMatch)
            {
              v22 = MEMORY[0x277D659B8];
              query = [(SPQueryTask *)self query];
              queryContext = [query queryContext];
              lastUsedDate = [v22 buildResultWithResult:v9 queryContext:queryContext];

              [v30 addObject:lastUsedDate];
              goto LABEL_15;
            }
          }
        }

LABEL_16:
        ++v8;
      }

      while (v6 != v8);
      v25 = [results countByEnumeratingWithState:&v32 objects:v38 count:16];
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

- (BOOL)forceAboveFoldResultsWithQuery:(id)query topHitSection:(id)section sections:(id)sections
{
  v31 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  if (_os_feature_enabled_impl() && [sectionsCopy count] >= 2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = sectionsCopy;
    v6 = sectionsCopy;
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
            bundleIdentifier = [v14 bundleIdentifier];
            if ([bundleIdentifier isEqualToString:v10])
            {

LABEL_19:
              v20 = 1;
              goto LABEL_20;
            }

            bundleIdentifier2 = [v14 bundleIdentifier];
            v17 = [bundleIdentifier2 isEqualToString:v11];

            if (v17)
            {
              goto LABEL_19;
            }

            if (section)
            {
              bundleIdentifier3 = [v14 bundleIdentifier];
              v19 = [bundleIdentifier3 isEqualToString:v24];

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

    sectionsCopy = v23;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)suggestionsWithSearchString:(id)string sections:(id)sections topHitSection:(id)section highestLocalScore:(double)score
{
  v121 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  sectionsCopy = sections;
  sectionCopy = section;
  v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v93 = sectionCopy;
  results = [sectionCopy results];
  v12 = [results countByEnumeratingWithState:&v111 objects:v120 count:16];
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
        objc_enumerationMutation(results);
      }

      v16 = *(*(&v111 + 1) + 8 * i);
      entityIdentifier = [v16 entityIdentifier];

      if (entityIdentifier)
      {
        entityIdentifier2 = [v16 entityIdentifier];
        [v10 addObject:entityIdentifier2];
      }

      contactIdentifier = [v16 contactIdentifier];
      if (contactIdentifier)
      {
      }

      else
      {
        personIdentifier = [v16 personIdentifier];

        if (!personIdentifier)
        {
          goto LABEL_12;
        }
      }

      title = [v16 title];
      text = [title text];
      v23 = SSNormalizedQueryString();

      [v97 addObject:v23];
LABEL_12:
      rankingItem = [v16 rankingItem];
      if (rankingItem)
      {
        rankingItem2 = [v16 rankingItem];
        v26 = ([rankingItem2 bundleIDType] >> 8) & 1;

        v98 |= v26;
      }
    }

    v13 = [results countByEnumeratingWithState:&v111 objects:v120 count:16];
  }

  while (v13);
LABEL_18:

  if (_os_feature_enabled_impl())
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = sectionsCopy;
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
          results2 = [v31 results];
          v33 = [results2 countByEnumeratingWithState:&v103 objects:v118 count:16];
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
                  objc_enumerationMutation(results2);
                }

                v37 = *(*(&v103 + 1) + 8 * k);
                entityIdentifier3 = [v37 entityIdentifier];

                if (entityIdentifier3)
                {
                  entityIdentifier4 = [v37 entityIdentifier];
                  [v10 addObject:entityIdentifier4];
                }
              }

              v34 = [results2 countByEnumeratingWithState:&v103 objects:v118 count:16];
            }

            while (v34);
          }
        }

        v28 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v28);
    }
  }

  obja = [(SPFederatedQueryTask *)self contactSuggestionsWithSearchString:stringCopy];
  rankingConfiguration = [(SSRankingManager *)self->_rankingManager rankingConfiguration];
  localResultQualityThreshold = [rankingConfiguration localResultQualityThreshold];
  v42 = localResultQualityThreshold;
  v43 = &unk_287C3B880;
  if (localResultQualityThreshold)
  {
    v43 = localResultQualityThreshold;
  }

  v44 = v43;

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if (SSCreateAsTypedSuggestion())
  {
    v46 = objc_alloc(MEMORY[0x277D4C5D8]);
    v47 = [v46 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:stringCopy query:stringCopy score:6 type:1.0];
    v48 = MEMORY[0x277D659B8];
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    v84 = [v48 buildResultWithSuggestion:v47 queryContext:queryContext2];
  }

  else
  {
    v84 = 0;
  }

  v51 = objc_alloc(MEMORY[0x277D4C5D8]);
  v52 = [v51 initWithIdentifier:*MEMORY[0x277D65D00] suggestion:stringCopy query:stringCopy score:14 type:1.0];
  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v54 = [v53 localizedStringForKey:@"SUGGESTION_DETAIL_WEB" value:&stru_287C35638 table:@"SpotlightServices"];

  v86 = v54;
  [v52 setDetailText:v54];
  v55 = MEMORY[0x277D659B8];
  query3 = [(SPQueryTask *)self query];
  queryContext3 = [query3 queryContext];
  v90 = [v55 buildResultWithSuggestion:v52 queryContext:queryContext3];

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
  mEMORY[0x277D658D0] = [MEMORY[0x277D658D0] sharedSuggestionsManager];
  v117[0] = v44;
  v116[0] = @"qualityThreshold";
  v116[1] = @"prefersLocalUserTypedSuggestion";
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask prefersLocalUserTypedSuggestion](self, "prefersLocalUserTypedSuggestion")}];
  v117[1] = v63;
  v116[2] = @"suggestionsAreBlended";
  v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_suggestionsAreBlended];
  v117[2] = v64;
  v116[3] = @"localFilteringScore";
  v65 = [MEMORY[0x277CCABB0] numberWithDouble:score];
  v117[3] = v65;
  v116[4] = @"ForceAboveFoldResults";
  v83 = v44;
  v66 = [MEMORY[0x277CCABB0] numberWithBool:{-[SPFederatedQueryTask forceAboveFoldResultsWithQuery:topHitSection:sections:](self, "forceAboveFoldResultsWithQuery:topHitSection:sections:", stringCopy, v93, sectionsCopy)}];
  v117[4] = v66;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:5];
  v85 = v62;
  v88 = v60;
  v68 = [mEMORY[0x277D658D0] orderedSuggestionsWithQueryContext:queryContext filters:v92 entityFilters:v10 contactFilters:v97 userSuggestion:v84 userWebSuggestion:v90 shortcutSuggestionResults:MEMORY[0x277CBEBF8] actionSuggestionResults:MEMORY[0x277CBEBF8] contactSuggestionResults:obja serverSuggestionResults:v60 localSuggestionResults:v62 options:v67];

  v69 = sectionsCopy;
  if ((v98 & 1) != 0 && [v68 count] >= 3 && objc_msgSend(sectionsCopy, "count") >= 3)
  {
    v70 = [sectionsCopy objectAtIndexedSubscript:2];
    bundleIdentifier = [v70 bundleIdentifier];
    v72 = [bundleIdentifier isEqualToString:*MEMORY[0x277D65A00]];

    if (v72)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v73 = [sectionsCopy objectAtIndexedSubscript:2];
      results3 = [v73 results];

      v75 = [results3 countByEnumeratingWithState:&v99 objects:v115 count:16];
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
              objc_enumerationMutation(results3);
            }

            if ([MEMORY[0x277D659C8] passLikelihoodForTopHitCandidate:*(*(&v99 + 1) + 8 * m)])
            {
              v79 = [v68 subarrayWithRange:{0, 2}];

              v69 = sectionsCopy;
              goto LABEL_59;
            }
          }

          v76 = [results3 countByEnumeratingWithState:&v99 objects:v115 count:16];
          if (v76)
          {
            continue;
          }

          break;
        }
      }

      v69 = sectionsCopy;
    }
  }

  v79 = v68;
LABEL_59:

  v80 = *MEMORY[0x277D85DE8];

  return v79;
}

- (void)addSuggestionsToSectionsForSending:(id)sending searchString:(id)string updatedSections:(BOOL)sections queryKind:(unint64_t)kind
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (kind - 1 <= 1)
  {
    v8 = MEMORY[0x277D4C5D8];
    stringCopy = string;
    sendingCopy = sending;
    v11 = [v8 alloc];
    v12 = [v11 initWithIdentifier:*MEMORY[0x277D65CF8] suggestion:stringCopy query:stringCopy score:6 type:1.0];

    v13 = MEMORY[0x277D659B8];
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    v16 = [v13 buildResultWithSuggestion:v12 queryContext:queryContext];

    v17 = objc_opt_new();
    suggestionsSection = self->_suggestionsSection;
    self->_suggestionsSection = v17;

    [(SFMutableResultSection *)self->_suggestionsSection setBundleIdentifier:*MEMORY[0x277D65C88]];
    v21[0] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [(SFMutableResultSection *)self->_suggestionsSection setResults:v19];

    [sendingCopy addObject:self->_suggestionsSection];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addTopHitSectionIfNecessaryToSectionsForSending:(id)sending updatedSections:(BOOL)sections isScopedSearch:(BOOL)search
{
  sectionsCopy = sections;
  v92 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  if (!search)
  {
    v9 = SSEnableSpotlightTopHitPersonalizedRanking();
    selfCopy = self;
    if (!sectionsCopy || self->_didSendTopHits || [(SFMutableResultSection *)self->_topHitSection resultsCount])
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
          v76 = sendingCopy;
          v12 = objc_alloc(MEMORY[0x277D65840]);
          query = [(SPQueryTask *)self query];
          queryContext = [query queryContext];
          v77 = [v12 initWithQueryContext:queryContext];

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          allValues = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
          v83 = [allValues countByEnumeratingWithState:&v85 objects:v89 count:16];
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
                objc_enumerationMutation(allValues);
              }

              v17 = *(*(&v85 + 1) + 8 * i);
              if ([v17 resultsCount])
              {
                resultSet = [v17 resultSet];
                queryContext2 = [resultSet objectAtIndexedSubscript:0];
                rankingItem = [queryContext2 rankingItem];
                if (rankingItem)
                {
                  v21 = rankingItem;
                  resultSet2 = [v17 resultSet];
                  v23 = [resultSet2 objectAtIndexedSubscript:0];
                  rankingItem2 = [v23 rankingItem];
                  [rankingItem2 likelihood];
                  v26 = v25;

                  if (v26 >= 2.22044605e-16)
                  {
                    continue;
                  }

                  rankingManager = self->_rankingManager;
                  resultSet = [(SPQueryTask *)self query];
                  queryContext2 = [resultSet queryContext];
                  [queryContext2 currentTime];
                  v28 = v27;
                  query2 = [(SPQueryTask *)self query];
                  queryIdent = [query2 queryIdent];
                  itemRanker = [(SPFederatedQueryTask *)self itemRanker];
                  query3 = [(SPQueryTask *)self query];
                  [query3 queryContext];
                  v34 = v33 = allValues;
                  LOBYTE(v69) = [v34 isSearchToolClient];
                  [(SSRankingManager *)rankingManager calculateLikelihoodAndPriorForSection:v17 currentTime:0 shortcutResult:queryIdent queryId:itemRanker ranker:0 nominateLocalTopHit:v77 qu:v28 isSearchToolClient:v69];

                  allValues = v33;
                  self = selfCopy;
                }
              }
            }

            v83 = [allValues countByEnumeratingWithState:&v85 objects:v89 count:16];
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
        query4 = [(SPQueryTask *)self query];
        queryContext3 = [query4 queryContext];
        v82 = [v43 initWithQueryContext:queryContext3];

        v74 = self->_rankingManager;
        allValues2 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        itemRanker2 = [(SPFederatedQueryTask *)self itemRanker];
        isBullseyeNonCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        isBullseyeCommittedSearch = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v76 = sendingCopy;
        v84 = v42;
        v46 = self->_parsecEnabled || self->_parsecSettingEnabled;
        v71 = v46;
        query5 = [(SPQueryTask *)self query];
        queryIdent2 = [query5 queryIdent];
        query6 = [(SPQueryTask *)self query];
        queryContext4 = [query6 queryContext];
        isSearchToolClient = [queryContext4 isSearchToolClient];
        query7 = [(SPQueryTask *)self query];
        queryContext5 = [query7 queryContext];
        [queryContext5 currentTime];
        LOBYTE(v70) = isSearchToolClient;
        BYTE1(v69) = v71;
        LOBYTE(v69) = isBullseyeCommittedSearch;
        v61 = [SSRankingManager nominateLocalTopHitsFromSections:v74 withItemRanker:"nominateLocalTopHitsFromSections:withItemRanker:sectionHeader:maxInitiallyVisibleResults:shortcutResult:isBullseyeNonCommittedSearch:isBullseyeCommittedSearch:parsecEnabled:maxNumAppsInTopHitSection:queryId:isSearchToolClient:qu:currentTime:" sectionHeader:allValues2 maxInitiallyVisibleResults:itemRanker2 shortcutResult:v77 isBullseyeNonCommittedSearch:1 isBullseyeCommittedSearch:0 parsecEnabled:isBullseyeNonCommittedSearch maxNumAppsInTopHitSection:v69 queryId:v84 isSearchToolClient:queryIdent2 qu:v70 currentTime:v82];
        topHitSection = self->_topHitSection;
        self->_topHitSection = v61;

LABEL_22:
        sendingCopy = v76;
      }

      else
      {
        v47 = sendingCopy;
        v48 = self->_rankingManager;
        allValues3 = [(NSMutableDictionary *)self->_categoryToResultMapping allValues];
        itemRanker3 = [(SPFederatedQueryTask *)self itemRanker];
        isBullseyeNonCommittedSearch2 = [(SPFederatedQueryTask *)self isBullseyeNonCommittedSearch];
        isBullseyeCommittedSearch2 = [(SPFederatedQueryTask *)self isBullseyeCommittedSearch];
        v53 = self->_parsecEnabled || self->_parsecSettingEnabled;
        LOBYTE(v69) = v53;
        v63 = [(SSRankingManager *)v48 makeTopHitSectionUsingSections:allValues3 withItemRanker:itemRanker3 sectionHeader:v77 shortcutResult:0 isBullseyeNonCommittedSearch:isBullseyeNonCommittedSearch2 isBullseyeCommittedSearch:isBullseyeCommittedSearch2 parsecEnabled:v69 maxNumAppsInTopHitSection:v42];
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
          resultsCount = [(SFMutableResultSection *)self->_topHitSection resultsCount];
          *buf = 134217984;
          v91 = resultsCount;
          _os_log_impl(&dword_26B71B000, v66, v67, "Top hit section count: %lu  Allow multiple apps: YES", buf, 0xCu);
        }

        sendingCopy = v47;
      }
    }

    results = [(SFMutableResultSection *)self->_topHitSection results];
    if ([results count])
    {
      v36 = 0;
      do
      {
        v37 = [results objectAtIndex:v36];
        rankingItem3 = [v37 rankingItem];
        [rankingItem3 setBundleIDType:{objc_msgSend(rankingItem3, "bundleIDType") | 0x8000}];

        ++v36;
      }

      while (v36 < [results count]);
    }

    v39 = [(SPFederatedQueryTask *)selfCopy topHitsReadyToSend:selfCopy->_topHitSection];
    query8 = [(SPQueryTask *)selfCopy query];
    [query8 internalDebug];

    if (v39)
    {
      [sendingCopy insertObject:selfCopy->_topHitSection atIndex:0];
      selfCopy->_didSendTopHits = 1;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)storeWillComplete:(id)complete
{
  v14 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = SPLogForSPLogCategoryQuery();
  v6 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v5, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    v12 = 138412290;
    v13 = completeCopy;
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

- (BOOL)storeSearchProgress:(id)progress withSections:(id)sections suggestionResults:(id)results
{
  v65 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  sectionsCopy = sections;
  resultsCopy = results;
  v47 = progressCopy;
  if (progressCopy)
  {
    v9 = SPLogForSPLogCategoryQuery();
    v10 = *MEMORY[0x277D4BF50];
    if (os_log_type_enabled(v9, ((*MEMORY[0x277D4BF50] & 1) == 0)))
    {
      query = [(SPQueryTask *)self query];
      queryContext = [query queryContext];
      searchString = [queryContext searchString];
      *buf = 138412802;
      v60 = searchString;
      v61 = 2112;
      v62 = v47;
      v63 = 2048;
      v64 = [sectionsCopy count];
      _os_log_impl(&dword_26B71B000, v9, ((v10 & 1) == 0), "storeSearchProgress, query:%@, token:%@, sectionCount:%ld", buf, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_didReceiveCoreSpotlightProgress = 1;
      objc_storeStrong(&self->_localSuggestionResults, results);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      rankingManager = self->_rankingManager;
      v15 = v47;
      rankingInfo = [v15 rankingInfo];
      [(SSRankingManager *)rankingManager updateWithNewRankingInfo:rankingInfo];
    }

    v44 = self->_categoryToResultMapping;
    objc_sync_enter(v44);
    v17 = MEMORY[0x277D65980];
    queryIdent = [(SPFederatedQueryTask *)self queryIdent];
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    searchString2 = [queryContext2 searchString];
    query3 = [(SPQueryTask *)self query];
    queryContext3 = [query3 queryContext];
    [v17 logSections:sectionsCopy message:@"L1 progress" queryId:queryIdent query:searchString2 isSearchToolClient:{objc_msgSend(queryContext3, "isSearchToolClient")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = sectionsCopy;
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
            results = [v27 results];
            if ([results countByEnumeratingWithState:v52 objects:v57 count:16])
            {
              v29 = **(&v52[0] + 1);
              personIdentifier = [**(&v52[0] + 1) personIdentifier];
              if (personIdentifier)
              {
                resultBundleId = [v29 resultBundleId];
                if ([resultBundleId isEqual:v50])
                {

                  goto LABEL_19;
                }

                resultBundleId2 = [v29 resultBundleId];
                v33 = [resultBundleId2 isEqual:v48];

                if (v33)
                {
LABEL_19:
                  [v27 setBundleIdentifier:v50];
                }
              }
            }

            categoryToResultMapping = self->_categoryToResultMapping;
            bundleIdentifier = [v27 bundleIdentifier];
            v36 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:bundleIdentifier];

            if (v36)
            {
              [(SPFederatedQueryTask *)self deDuplicateSection:v27 againstSection:v36];
              results2 = [v27 results];
              [v36 addResultsFromArray:results2];

              bundleIdentifier2 = [v27 bundleIdentifier];
              LODWORD(results2) = [bundleIdentifier2 isEqualToString:@"com.apple.application"];

              if (results2)
              {
                [v36 sortRange:0 options:objc_msgSend(v36 usingComparator:{"resultsCount"), 16, &__block_literal_global_395}];
              }
            }

            else
            {
              v39 = self->_categoryToResultMapping;
              bundleIdentifier3 = [v27 bundleIdentifier];
              v41 = bundleIdentifier3;
              if (!bundleIdentifier3)
              {
                title = [v27 title];
                v41 = title;
              }

              [(NSMutableDictionary *)v39 setObject:v27 forKeyedSubscript:v41];
              if (!bundleIdentifier3)
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

- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections suggestionResults:(id)results
{
  v240 = *MEMORY[0x277D85DE8];
  searchCopy = search;
  obj = sections;
  resultsCopy = results;
  v180 = searchCopy;
  if (!searchCopy)
  {
    goto LABEL_176;
  }

  v8 = SPLogForSPLogCategoryQuery();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    searchString = [queryContext searchString];
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

    web_fbq = [v13 web_fbq];
    web_fbq = self->_web_fbq;
    self->_web_fbq = web_fbq;

    server_features = [v13 server_features];
    server_features = self->_server_features;
    self->_server_features = server_features;

    self->_suggestionsAreBlended = [v13 suggestionsAreBlended];
    querySuggestionResults = [v13 querySuggestionResults];
    serverSuggestionResults = self->_serverSuggestionResults;
    self->_serverSuggestionResults = querySuggestionResults;

    rankingManager = self->_rankingManager;
    rankingInfo = [v13 rankingInfo];
    [(SSRankingManager *)rankingManager updateWithNewRankingInfo:rankingInfo];
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_localSuggestionResults, results);
  }

  externalID = self->_externalID;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  startTimeIntervalSinceReferenceDate = self->_startTimeIntervalSinceReferenceDate;
  v26 = [objc_opt_class() description];
  SDTraceAdd();

  v176 = self->_categoryToResultMapping;
  objc_sync_enter(v176);
  v27 = MEMORY[0x277D65980];
  queryIdent = [(SPFederatedQueryTask *)self queryIdent];
  query2 = [(SPQueryTask *)self query];
  queryContext2 = [query2 queryContext];
  searchString2 = [queryContext2 searchString];
  query3 = [(SPQueryTask *)self query];
  queryContext3 = [query3 queryContext];
  [v27 logSections:obj message:@"L1 complete" queryId:queryIdent query:searchString2 isSearchToolClient:{objc_msgSend(queryContext3, "isSearchToolClient")}];

  v188 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v188)
  {
    v34 = objc_alloc(MEMORY[0x277D65840]);
    query4 = [(SPQueryTask *)self query];
    queryContext4 = [query4 queryContext];
    v181 = [v34 initWithQueryContext:queryContext4];
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
            resultSet = [v39 resultSet];
            queryContext5 = [resultSet objectAtIndexedSubscript:0];
            rankingItem = [queryContext5 rankingItem];
            if (!rankingItem)
            {
              goto LABEL_22;
            }

            resultSet2 = [v39 resultSet];
            v44 = [resultSet2 objectAtIndexedSubscript:0];
            rankingItem2 = [v44 rankingItem];
            [rankingItem2 likelihood];
            v47 = v46 < 2.22044605e-16;

            if (v47)
            {
              v48 = self->_rankingManager;
              resultSet = [(SPQueryTask *)self query];
              queryContext5 = [resultSet queryContext];
              [queryContext5 currentTime];
              v50 = v49;
              query5 = [(SPQueryTask *)self query];
              queryIdent2 = [query5 queryIdent];
              itemRanker = [(SPFederatedQueryTask *)self itemRanker];
              query6 = [(SPQueryTask *)self query];
              queryContext6 = [query6 queryContext];
              LOBYTE(v174) = [queryContext6 isSearchToolClient];
              [(SSRankingManager *)v48 calculateLikelihoodAndPriorForSection:v39 currentTime:0 shortcutResult:queryIdent2 queryId:itemRanker ranker:0 nominateLocalTopHit:v181 qu:v50 isSearchToolClient:v174];

LABEL_22:
            }
          }

          memset(v219, 0, sizeof(v219));
          results = [v39 results];
          if ([results countByEnumeratingWithState:v219 objects:v238 count:16])
          {
            v57 = **(&v219[0] + 1);
            personIdentifier = [**(&v219[0] + 1) personIdentifier];
            if (personIdentifier)
            {
              resultBundleId = [v57 resultBundleId];
              if ([resultBundleId isEqual:v186])
              {

                goto LABEL_28;
              }

              resultBundleId2 = [v57 resultBundleId];
              v61 = [resultBundleId2 isEqual:v182];

              if (v61)
              {
LABEL_28:
                [v39 setBundleIdentifier:v186];
              }
            }
          }

          categoryToResultMapping = self->_categoryToResultMapping;
          bundleIdentifier = [v39 bundleIdentifier];
          v64 = [(NSMutableDictionary *)categoryToResultMapping objectForKeyedSubscript:bundleIdentifier];

          if (v64)
          {
            [(SPFederatedQueryTask *)self deDuplicateSection:v39 againstSection:v64];
            results2 = [v39 results];
            [v64 addResultsFromArray:results2];

            bundleIdentifier2 = [v39 bundleIdentifier];
            v67 = [bundleIdentifier2 isEqualToString:@"com.apple.application"];

            if ((v67 & (isKindOfClass ^ 1)) != 0)
            {
              [v64 sortRange:0 options:objc_msgSend(v64 usingComparator:{"resultsCount"), 16, &__block_literal_global_403}];
            }
          }

          else
          {
            v68 = self->_categoryToResultMapping;
            bundleIdentifier3 = [v39 bundleIdentifier];
            v70 = bundleIdentifier3;
            if (!bundleIdentifier3)
            {
              title = [v39 title];
              v70 = title;
            }

            [(NSMutableDictionary *)v68 setObject:v39 forKeyedSubscript:v70];
            if (!bundleIdentifier3)
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_shouldRecomputeSuggestions = 1;
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

  [(NSMutableArray *)selfCopy->_tokens removeObject:v189];
  [(NSMutableArray *)selfCopy->_slowTokens removeObject:v189];
  [(NSMutableArray *)self->_delayedStartTokens removeObject:v189];
  [(NSMutableArray *)selfCopy->_finishedTokens addObject:v189];
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
    tokens = selfCopy->_tokens;
    slowTokens = selfCopy->_slowTokens;
    *buf = 138412546;
    v225 = tokens;
    v226 = 2112;
    v227 = *&slowTokens;
    _os_log_impl(&dword_26B71B000, v76, v77, "Remaining stores %@ %@", buf, 0x16u);
  }

  *(&v183 + 1) = [(NSMutableArray *)selfCopy->_slowTokens count];
  v177 = [(NSMutableArray *)self->_delayedStartTokens count];
  v175 = [(NSMutableArray *)selfCopy->_delayedStartQueries count];
  v80 = [(NSMutableArray *)selfCopy->_tokens count];
  *&v183 = v80;
  if (__PAIR128__(*(&v183 + 1), v80) == 0 && [(NSMutableArray *)selfCopy->_delayedStartQueries count])
  {
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v81 = selfCopy->_delayedStartQueries;
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
          [v85 setDelegate:selfCopy];
          [v85 start];
          searchDomain = [objc_opt_class() searchDomain];
          if ([v85 isStarted])
          {
            delayedStartTokens = self->_delayedStartTokens;
            v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:searchDomain];
            [(NSMutableArray *)delayedStartTokens addObject:v88];
          }
        }

        v82 = [(NSMutableArray *)v81 countByEnumeratingWithState:&v215 objects:v237 count:16];
      }

      while (v82);
    }

    [(NSMutableArray *)selfCopy->_delayedStartQueries removeAllObjects];
  }

  if ([(NSMutableArray *)selfCopy->_slowTokens count])
  {
    v187 = 0;
  }

  else
  {
    v187 = [(NSMutableArray *)selfCopy->_tokens count]== 0;
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
          results3 = [v93 results];
          v95 = [results3 countByEnumeratingWithState:&v207 objects:v235 count:16];
          if (v95)
          {
            v96 = *v208;
            while (2)
            {
              for (m = 0; m != v95; ++m)
              {
                if (*v208 != v96)
                {
                  objc_enumerationMutation(results3);
                }

                if ([*(*(&v207 + 1) + 8 * m) topHit] == 2)
                {
                  v89 = 1;
                  goto LABEL_81;
                }
              }

              v95 = [results3 countByEnumeratingWithState:&v207 objects:v235 count:16];
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

    selfCopy->_shouldRecomputeSuggestions = 0;
    query7 = [(SPQueryTask *)selfCopy query];
    cancelled = [query7 cancelled];

    if ((cancelled & 1) == 0)
    {
      if ([(NSMutableArray *)selfCopy->_bottomPlacedSections count])
      {
        v100 = [obj arrayByAddingObjectsFromArray:selfCopy->_bottomPlacedSections];

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
      [SPFederatedQueryTask sendResults:selfCopy reset:"sendResults:reset:partiallyComplete:update:complete:unchanged:delayedTopHit:reason:" partiallyComplete:obj update:0 complete:0 unchanged:v121 ^ 1u delayedTopHit:v174 reason:?];
    }

    goto LABEL_125;
  }

  v101 = selfCopy->_didForceSend || !v187;
  if (!v101)
  {
    if (selfCopy->_parsecEntityCameEarly)
    {
      timer = selfCopy->_timer;
      if (timer)
      {
        dispatch_source_cancel(timer);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v104 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      v102 = 0;
      goto LABEL_98;
    }

    if (!selfCopy->_parsecCameLaterThanSRT)
    {
      v122 = selfCopy->_timer;
      if (v122)
      {
        dispatch_source_cancel(v122);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v123 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:0];
      goto LABEL_125;
    }

LABEL_100:
    v105 = objc_autoreleasePoolPush();
    selfCopy->_didSendResults = 0;
    selfCopy->_sendStableSections = 1;
    v106 = [(NSArray *)selfCopy->_actualSentSections arrayByAddingObjectsFromArray:obj];
    stableSections = selfCopy->_stableSections;
    selfCopy->_stableSections = v106;

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
            results4 = [v112 results];
            [v108 addObjectsFromArray:results4];
          }
        }

        v109 = [obj countByEnumeratingWithState:&v203 objects:v234 count:16];
      }

      while (v109);
    }

    if ([v108 count])
    {
      selfCopy->_receivedLateParsecResults = 1;
      v114 = [objc_alloc(MEMORY[0x277D4C590]) initWithResults:v108];
      mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
      query8 = [(SPQueryTask *)selfCopy query];
      queryIdent3 = [query8 queryIdent];
      bundleID = [(SPXPCConnection *)selfCopy->_connection bundleID];
      [mEMORY[0x277D4BEC0] sendFeedbackType:14 feedback:v114 queryId:queryIdent3 clientID:bundleID];
    }

    if (SSDisplayLateServerSuggestions())
    {
      v119 = [(NSArray *)selfCopy->_serverSuggestionResults count]!= 0;
    }

    else
    {
      v119 = 0;
    }

    selfCopy->_shouldRecomputeSuggestions = v119;
    [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:3];

    objc_autoreleasePoolPop(v105);
    goto LABEL_125;
  }

  if (selfCopy->_parsecCameLaterThanSRT)
  {
    goto LABEL_100;
  }

  if ((isKindOfClass & selfCopy->_isEntitySearch & 1) == 0 || ![(NSMutableArray *)selfCopy->_tokens count]|| [(NSMutableArray *)selfCopy->_slowTokens count])
  {
    goto LABEL_125;
  }

  selfCopy->_parsecEntityCameEarly = 1;
  v102 = 5;
LABEL_98:
  [(SPFederatedQueryTask *)selfCopy sendFinishedDomains:!v101 reason:v102];
LABEL_125:
  if (v187)
  {
    v124 = [(NSMutableArray *)self->_delayedStartTokens count];
    if (!(v124 + [(NSMutableArray *)selfCopy->_delayedStartQueries count]) && !selfCopy->_sentCompleted)
    {
      [(SPFederatedQueryTask *)selfCopy sendQueryCompleted];
      bottomPlacedSections = selfCopy->_bottomPlacedSections;
      selfCopy->_bottomPlacedSections = 0;

      selfCopy->_sentCompleted = 1;
    }
  }

  objc_sync_exit(selfCopy);

  if (![(NSMutableArray *)selfCopy->_slowTokens count]&& ![(NSMutableArray *)selfCopy->_tokens count])
  {
    v126 = objc_alloc(MEMORY[0x277D4C270]);
    query9 = [(SPQueryTask *)selfCopy query];
    v128 = [v126 initWithEvent:@"com.apple.spotlight.backend.stores.end" timeInterval:0 queryId:{objc_msgSend(query9, "queryIdent")}];

    mEMORY[0x277D4BEC0]2 = [MEMORY[0x277D4BEC0] sharedProxy];
    query10 = [(SPQueryTask *)selfCopy query];
    queryIdent4 = [query10 queryIdent];
    bundleID2 = [(SPXPCConnection *)selfCopy->_connection bundleID];
    [mEMORY[0x277D4BEC0]2 sendFeedbackType:21 feedback:v128 queryId:queryIdent4 clientID:bundleID2];
  }

  if (![(NSMutableArray *)selfCopy->_slowTokens count]|| [(NSMutableArray *)selfCopy->_tokens count]|| (selfCopy->_timer != 0) | v185 & 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    storeStartTime = selfCopy->_storeStartTime;
    v135 = [(NSMutableArray *)selfCopy->_tokens count]== 0;
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
        v142 = [(NSMutableArray *)selfCopy->_slowTokens count];
        v143 = [(NSMutableArray *)selfCopy->_tokens count];
        v144 = selfCopy->_timer;
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
      v141 = selfCopy->_tokens;
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

    objc_initWeak(buf, selfCopy);
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
    v150 = v145 - selfCopy->_storeStartTime;
    if (v150 >= selfCopy->_timeOut)
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

      v170 = selfCopy->_timer;
      if (v170)
      {
        dispatch_source_cancel(v170);
        dispatch_source_set_event_handler(selfCopy->_timer, 0);
        v171 = selfCopy->_timer;
        selfCopy->_timer = 0;
      }

      v149[2](v149, 0);
      selfCopy->_parsecCameLaterThanSRT = 1;
      selfCopy->_shouldRecomputeSuggestions = 1;
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
      sentPriority = selfCopy->_sentPriority;
      v156 = v150 >= timeOut || selfCopy->_sentPriority;
      if (v156)
      {
        if (!selfCopy->_sentPriority)
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

        timeOut = selfCopy->_timeOut;
      }

      queryProcessor = [(SPQueryTask *)selfCopy queryProcessor];
      v161 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queryProcessor);
      v162 = selfCopy->_timer;
      selfCopy->_timer = v161;

      v163 = selfCopy->_timer;
      v164 = dispatch_time(0, ((timeOut - v150) * 1000000000.0));
      dispatch_source_set_timer(v163, v164, 0xFFFFFFFFFFFFFFFFLL, 0);
      v165 = [v149 copy];

      v166 = selfCopy->_timer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __76__SPFederatedQueryTask_storeCompletedSearch_withSections_suggestionResults___block_invoke_427;
      handler[3] = &unk_279CFE180;
      v149 = v165;
      v195 = v149;
      v196 = v156;
      dispatch_source_set_event_handler(v166, handler);
      dispatch_resume(selfCopy->_timer);
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

- (BOOL)storeCompletedSearch:(id)search withSections:(id)sections
{
  searchCopy = search;
  sectionsCopy = sections;
  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  v10 = (cancelled & 1) == 0 && [(SPFederatedQueryTask *)self storeCompletedSearch:searchCopy withSections:sectionsCopy suggestionResults:0];
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

- (id)correctedQueryWithCorrection:(id)correction
{
  v4 = MEMORY[0x277D65898];
  correctionCopy = correction;
  v6 = [[v4 alloc] initWithSearchString:correctionCopy];

  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  [v6 setWhyQuery:18];
  [v6 setQueryKind:10];
  query2 = [(SPQueryTask *)self query];
  [v6 setQueryIdent:{objc_msgSend(query2, "queryIdent")}];

  keyboardLanguage = [queryContext keyboardLanguage];
  [v6 setKeyboardLanguage:keyboardLanguage];

  keyboardPrimaryLanguage = [queryContext keyboardPrimaryLanguage];
  [v6 setKeyboardPrimaryLanguage:keyboardPrimaryLanguage];

  [queryContext scaleFactor];
  [v6 setScaleFactor:?];
  searchDomains = [queryContext searchDomains];
  [v6 setSearchDomains:searchDomains];

  disabledDomains = [queryContext disabledDomains];
  [v6 setDisabledDomains:disabledDomains];

  query3 = [(SPQueryTask *)self query];
  disabledApps = [query3 disabledApps];
  [v6 setDisabledApps:disabledApps];

  query4 = [(SPQueryTask *)self query];
  disabledBundles = [query4 disabledBundles];
  [v6 setDisabledBundles:disabledBundles];

  markedTextArray = [queryContext markedTextArray];
  [v6 setMarkedTextArray:markedTextArray];

  query5 = [(SPQueryTask *)self query];
  [v6 setPromoteLocalResults:{objc_msgSend(query5, "promoteLocalResults")}];

  query6 = [(SPQueryTask *)self query];
  [v6 setPromoteParsecResults:{objc_msgSend(query6, "promoteParsecResults")}];

  query7 = [(SPQueryTask *)self query];
  [v6 setNoTokenize:{objc_msgSend(query7, "noTokenize")}];

  [v6 setDeviceAuthenticationState:{objc_msgSend(queryContext, "deviceAuthenticationState")}];
  queryUnderstandingOutput = [queryContext queryUnderstandingOutput];
  [v6 setQueryUnderstandingOutput:queryUnderstandingOutput];

  clientBundleID = [(SPFederatedQueryTask *)self clientBundleID];
  [v6 setClientBundleID:clientBundleID];

  v24 = [[SPFederatedQueryTask alloc] initWithQueryContext:v6 externalID:[(SPFederatedQueryTask *)self externalID]];
  query8 = [(SPQueryTask *)self query];
  queryContext2 = [query8 queryContext];
  -[SPFederatedQueryTask setPreviousQueryKind:](v24, "setPreviousQueryKind:", [queryContext2 queryKind]);

  query9 = [(SPQueryTask *)self query];
  infinitePatience = [query9 infinitePatience];
  query10 = [(SPQueryTask *)v24 query];
  [query10 setInfinitePatience:infinitePatience];

  query11 = [(SPQueryTask *)self query];
  noTokenize = [query11 noTokenize];
  query12 = [(SPQueryTask *)v24 query];
  [query12 setNoTokenize:noTokenize];

  query13 = [(SPQueryTask *)self query];
  promoteParsecResults = [query13 promoteParsecResults];
  query14 = [(SPQueryTask *)v24 query];
  [query14 setPromoteParsecResults:promoteParsecResults];

  query15 = [(SPQueryTask *)self query];
  promoteLocalResults = [query15 promoteLocalResults];
  query16 = [(SPQueryTask *)v24 query];
  [query16 setPromoteLocalResults:promoteLocalResults];

  query17 = [(SPQueryTask *)self query];
  contentFilters = [query17 contentFilters];
  query18 = [(SPQueryTask *)v24 query];
  [query18 setContentFilters:contentFilters];

  query19 = [(SPQueryTask *)self query];
  maxCount = [query19 maxCount];
  query20 = [(SPQueryTask *)v24 query];
  [query20 setMaxCount:maxCount];

  message = [(SPFederatedQueryTask *)self message];
  [(SPFederatedQueryTask *)v24 setMessage:message];

  query21 = [(SPQueryTask *)self query];
  isWideScreen = [query21 isWideScreen];
  query22 = [(SPQueryTask *)v24 query];
  [query22 setIsWideScreen:isWideScreen];

  query23 = [(SPQueryTask *)self query];
  internalDebug = [query23 internalDebug];
  query24 = [(SPQueryTask *)v24 query];
  [query24 setInternalDebug:internalDebug];

  [(SPFederatedQueryTask *)v24 setIsRewrite:1];

  return v24;
}

- (void)dealloc
{
  message = [(SPFederatedQueryTask *)self message];
  needsReply = [message needsReply];

  if (needsReply)
  {
    message2 = [(SPFederatedQueryTask *)self message];
    [message2 sendReply:MEMORY[0x277CBEC10]];
  }

  query = [(SPQueryTask *)self query];
  cancelled = [query cancelled];

  if (cancelled)
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

- (void)addQueryCorrections:(id)corrections
{
  objc_storeStrong(&self->_corrections, corrections);
  correctionsCopy = corrections;
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

- (void)_processResponse:(id)response toQuery:(id)query
{
  responseCopy = response;
  queryCopy = query;
  if ([responseCopy kind] == 2 || objc_msgSend(responseCopy, "kind") == 3)
  {
    sections = [responseCopy sections];
    localSuggestionResults = [responseCopy localSuggestionResults];
    [(SPFederatedQueryTask *)self storeSearchProgress:queryCopy withSections:sections suggestionResults:localSuggestionResults];
  }

  else
  {
    sections = [responseCopy sections];
    localSuggestionResults = [responseCopy localSuggestionResults];
    [(SPFederatedQueryTask *)self storeCompletedSearch:queryCopy withSections:sections suggestionResults:localSuggestionResults];
  }
}

- (void)queryTask:(id)task gotResponse:(id)response
{
  taskCopy = task;
  responseCopy = response;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SPFederatedQueryTask_queryTask_gotResponse___block_invoke;
  block[3] = &unk_279CFE1A8;
  block[4] = self;
  v13 = responseCopy;
  v14 = taskCopy;
  v9 = taskCopy;
  v10 = responseCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(queryProcessor, v11);
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
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if (([queryContext isSearchToolClient] & 1) == 0 && (sPrepareCacheForSearchContinuationStarted & 1) == 0)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
    [objc_opt_class() prepareCacheForSearchContinuation];
  }

  [(SPFederatedQueryTask *)self startSetup];
  searchEntities = [queryContext searchEntities];
  if ([searchEntities count])
  {
    searchEntities2 = [queryContext searchEntities];
    lastObject = [searchEntities2 lastObject];
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    currentSearchString = [queryContext searchString];
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
    searchDomains = [queryContext searchDomains];
    *buf = 138412546;
    v116 = currentSearchString;
    v117 = 2112;
    v118 = searchDomains;
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
    searchDomains2 = [queryContext searchDomains];
    *buf = 138412546;
    v116 = currentSearchString;
    v117 = 2112;
    v118 = searchDomains2;
    _os_log_impl(&dword_26B71B000, v19, v20, "#query Starting query '%@' on domains:%@", buf, 0x16u);
  }

  if ([(NSString *)self->_clientBundleID isEqual:*MEMORY[0x277D4BF20]])
  {
    if ([currentSearchString length])
    {
      if (-[NSString length](self->_lastQuery, "length") && (([currentSearchString hasPrefix:self->_lastQuery] & 1) != 0 || -[NSString hasPrefix:](self->_lastQuery, "hasPrefix:", currentSearchString)))
      {
        v22 = [currentSearchString length];
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
          v26 = [(NSString *)lastQuery commonPrefixWithString:currentSearchString options:2];
        }

        else
        {
          v26 = &stru_287C35638;
        }

        v104 = MEMORY[0x277D85DD0];
        v105 = 3221225472;
        v106 = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke;
        v107 = &unk_279CFE1D0;
        v108 = currentSearchString;
        v109 = v26;
        AnalyticsSendEventLazy();
      }
    }

    v27 = [currentSearchString copy];
    v28 = self->_lastQuery;
    self->_lastQuery = v27;
  }

  v84 = objc_alloc_init(MEMORY[0x277CBEB40]);
  searchDomains3 = [queryContext searchDomains];
  v30 = [searchDomains3 arrayByAddingObject:&unk_287C3B770];

  v83 = [v30 arrayByAddingObject:&unk_287C3B788];

  deviceAuthenticationState = [queryContext deviceAuthenticationState];
  if ([currentSearchString length] || (objc_msgSend(queryContext, "searchEntities"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "count") == 0, v32, !v33))
  {
    query2 = [(SPQueryTask *)self query];
    queryContext2 = [query2 queryContext];
    isSearchToolClient = [queryContext2 isSearchToolClient];

    if (isSearchToolClient)
    {
      [(SPFederatedQueryTask *)self _queriesForSearchTool];
    }

    else
    {
      [(SPFederatedQueryTask *)self _queriesForUserQuery:deviceAuthenticationState != 0];
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
          searchDomain = [objc_opt_class() searchDomain];
          if (!deviceAuthenticationState && searchDomain == 6)
          {
            [(SPFederatedQueryTask *)self addDelayedStartQuery:v42];
            continue;
          }

          if (searchDomain == 1)
          {
            v44 = &OBJC_IVAR___SPFederatedQueryTask__csQuery;
          }

          else
          {
            if (searchDomain != 2)
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
    query3 = [(SPQueryTask *)self query];
    infinitePatience = [query3 infinitePatience];

    if (infinitePatience)
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
    query4 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setMaxCount:](self->_csQuery, "setMaxCount:", [query4 maxCount]);

    query5 = [(SPQueryTask *)self query];
    -[SPCSSearchQuery setContentFilters:](self->_csQuery, "setContentFilters:", [query5 contentFilters]);

    itemRanker = [(SPFederatedQueryTask *)self itemRanker];
    [(SPCSSearchQuery *)self->_csQuery setItemRanker:itemRanker];

    [(SPCSSearchQuery *)self->_csQuery setPreviousQueryKind:self->_previousQueryKind];
    [(SPCSSearchQuery *)self->_csQuery setIsCJK:self->_isCJK];
    [(SPCSSearchQuery *)self->_csQuery setIsPeopleSearch:self->_isPeopleSearch];
    [(SPCSSearchQuery *)self->_csQuery setIsPhotosSearch:self->_isPhotosSearch];
    [(SPCSSearchQuery *)self->_csQuery setParsecAvailable:[(SPFederatedQueryTask *)self parsecAvailable]];
    query6 = [(SPQueryTask *)self query];
    [query6 currentTime];
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
    queryProcessor = [(SPQueryTask *)self queryProcessor];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SPFederatedQueryTask_addAndStartQuery__block_invoke_454;
    block[3] = &unk_279CFE240;
    objc_copyWeak(v90, buf);
    block[4] = self;
    v90[1] = *&v51;
    v73 = v45;
    v88 = v73;
    v89 = currentSearchString;
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

+ (id)contactEntityFromQueryContext:(id)context
{
  if (context)
  {
    searchEntities = [context searchEntities];
    firstObject = [searchEntities firstObject];

    if ([firstObject isContactEntitySearch])
    {
      v5 = firstObject;
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

- (id)initForSession:(id)session withQuery:(id)query
{
  v107 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  queryCopy = query;
  v8 = [(SPQueryTask *)self init];
  v9 = v8;
  if (v8)
  {
    [(SPQueryTask *)v8 setQuery:queryCopy];
    [(SPFederatedQueryTask *)v9 setSession:sessionCopy];
    query = [(SPQueryTask *)v9 query];
    [(SPFederatedQueryTask *)v9 _updateQueryContext:query];

    queryContext = [queryCopy queryContext];
    v12 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.query.start" timeInterval:0 queryId:{objc_msgSend(queryContext, "queryIdent")}];
    v13 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.backend.suggestions.start" timeInterval:0 queryId:{objc_msgSend(queryContext, "queryIdent")}];
    queryIdent = [queryContext queryIdent];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    clientBundleID = v9->_clientBundleID;
    v9->_clientBundleID = bundleIdentifier;

    [queryContext setClientBundleID:v9->_clientBundleID];
    mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
    v98 = v12;
    [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v12 queryId:queryIdent clientID:v9->_clientBundleID];
    v96 = mEMORY[0x277D4BEC0];
    v97 = v13;
    [mEMORY[0x277D4BEC0] sendFeedbackType:21 feedback:v13 queryId:queryIdent clientID:v9->_clientBundleID];
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

    v99 = queryCopy;
    queryContext2 = [queryCopy queryContext];
    disabledDomains = [queryContext2 disabledDomains];
    v9->_parsecSettingEnabled = [disabledDomains containsObject:&unk_287C3B740] ^ 1;

    [SPParsecQuery parsecEnabled:v9->_parsecSettingEnabled];
    v35 = objc_opt_new();
    [(SPFederatedQueryTask *)v9 setCategoryEngagements:v35];

    v9->_isRewrite = 0;
    v9->_isNLPSearch = 0;
    v36 = dispatch_semaphore_create(0);
    correctionsSem = v9->_correctionsSem;
    v9->_correctionsSem = v36;

    searchString = [queryContext searchString];
    searchEntities = [queryContext searchEntities];
    v40 = [searchEntities count];

    v101 = queryContext;
    if (v40)
    {
      v94 = sessionCopy;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      searchEntities2 = [queryContext searchEntities];
      v42 = [searchEntities2 countByEnumeratingWithState:&v102 objects:v106 count:16];
      if (!v42)
      {
        goto LABEL_20;
      }

      v43 = v42;
      v44 = *v103;
      while (1)
      {
        v45 = 0;
        v46 = searchString;
        do
        {
          if (*v103 != v44)
          {
            objc_enumerationMutation(searchEntities2);
          }

          v47 = *(*(&v102 + 1) + 8 * v45);
          isAppEntitySearch = [v47 isAppEntitySearch];
          v49 = &OBJC_IVAR___SPFederatedQueryTask__isScopedAppSearch;
          if (isAppEntitySearch & 1) != 0 || (v50 = [v47 isContactEntitySearch], v49 = &OBJC_IVAR___SPFederatedQueryTask__isPeopleSearch, (v50) || (v51 = objc_msgSend(v47, "isPhotosEntitySearch"), v49 = &OBJC_IVAR___SPFederatedQueryTask__isPhotosSearch, (v51))
          {
            p_isNLPSearch = v9 + *v49;
LABEL_12:
            *p_isNLPSearch = 1;
            goto LABEL_13;
          }

          isNLPEntitySearch = [v47 isNLPEntitySearch];
          p_isNLPSearch = &v9->_isNLPSearch;
          if (isNLPEntitySearch)
          {
            goto LABEL_12;
          }

LABEL_13:
          if ([v47 isCommandEntitySearch])
          {
            v9->_isEntitySearch = 1;
            query2 = [(SPQueryTask *)v9 query];
            [query2 setInfinitePatience:1];
          }

          searchString2 = [v101 searchString];
          [v47 updateSearchString:searchString2];

          searchString = [v47 currentSearchString];

          ++v45;
          v46 = searchString;
        }

        while (v43 != v45);
        v56 = [searchEntities2 countByEnumeratingWithState:&v102 objects:v106 count:16];
        v43 = v56;
        if (!v56)
        {
LABEL_20:

          sessionCopy = v94;
          queryContext = v101;
          break;
        }
      }
    }

    keyboardPrimaryLanguage = [queryContext keyboardPrimaryLanguage];
    lowercaseString = [keyboardPrimaryLanguage lowercaseString];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v60 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

    if (![lowercaseString hasPrefix:@"en"] || (v61 = objc_msgSend(v60, "hasPrefix:", @"en"), v62 = v60, v61))
    {
      v62 = lowercaseString;
    }

    v95 = v60;
    v63 = v62;
    v100 = lowercaseString;
    if (+[SPFederatedQueryTask isCJK](SPFederatedQueryTask, "isCJK") || ([lowercaseString hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"zh") & 1) != 0)
    {
      v64 = 1;
    }

    else
    {
      v64 = [lowercaseString hasPrefix:@"ko"];
    }

    v9->_isCJK = v64;
    [MEMORY[0x277D65978] prepareTopHitsParametersForLanguage:v63];
    v65 = [objc_alloc(MEMORY[0x277D65978]) initWithQuery:searchString];
    rankingManager = v9->_rankingManager;
    v9->_rankingManager = v65;

    v67 = CFPreferencesCopyAppValue(@"SearchRankingUseCreationDateL2", @"com.apple.searchd");
    v68 = CFPreferencesCopyAppValue(@"SearchRankingL2YWeight", @"com.apple.searchd");
    if (v9->_isPeopleSearch)
    {
      itemRanker = [(SPFederatedQueryTask *)v9 itemRanker];
      [itemRanker setIsPeopleSearch:1];
    }

    v70 = objc_alloc(MEMORY[0x277D65838]);
    isCJK = v9->_isCJK;
    [v67 doubleValue];
    v73 = v72;
    [v68 doubleValue];
    v75 = v74;
    query3 = [(SPQueryTask *)v9 query];
    [query3 currentTime];
    v78 = [v70 initWithSearchString:searchString queryID:queryIdent language:v63 isCJK:isCJK experimentalWeight1:v73 experimentalWeight2:v75 currentTime:v77];
    [(SPFederatedQueryTask *)v9 setItemRanker:v78];

    query4 = [(SPQueryTask *)v9 query];
    queryContext3 = [query4 queryContext];
    isSearchToolClient = [queryContext3 isSearchToolClient];
    itemRanker2 = [(SPFederatedQueryTask *)v9 itemRanker];
    [itemRanker2 setIsSearchToolClient:isSearchToolClient];

    [(SPFederatedQueryTask *)v9 setIsInternalDevice:os_variant_has_internal_diagnostics()];
    v9->_parsecCameLaterThanSRT = 0;
    v9->_parsecEntityCameEarly = 0;
    v9->_shouldRecomputeSuggestions = 1;
    searchEntities3 = [v101 searchEntities];
    v84 = [searchEntities3 count];

    if (v84)
    {
      searchEntities4 = [v101 searchEntities];
      firstObject = [searchEntities4 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        searchEntities5 = [v101 searchEntities];
        firstObject2 = [searchEntities5 firstObject];
        preferredBundleIDs = [firstObject2 preferredBundleIDs];
        preferredBundleIDs = v9->_preferredBundleIDs;
        v9->_preferredBundleIDs = preferredBundleIDs;

        v9->_enforcePreferredBundleIDs = 1;
      }
    }

    queryCopy = v99;
  }

  v92 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)updateResultsWithContactHeader
{
  previousQueryContext = [(SPQueryTask *)self previousQueryContext];
  v3 = [objc_opt_class() contactEntityFromQueryContext:previousQueryContext];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  v6 = [objc_opt_class() contactEntityFromQueryContext:queryContext];
  if (updateResultsWithContactHeader_onceToken != -1)
  {
    [SPFederatedQueryTask updateResultsWithContactHeader];
  }

  if ((updateResultsWithContactHeader_isPeopleViewService & 1) != 0 || v6 && (!v3 || ([v6 hasSameContactAsContactEntity:v3] & 1) == 0))
  {
    v7 = objc_alloc(MEMORY[0x277D4BEB8]);
    v8 = [v7 initWithSections:MEMORY[0x277CBEBF8]];
    query2 = [(SPQueryTask *)self query];
    LODWORD(v10) = 0;
    [SPFederatedQueryTask searchQuery:"searchQuery:gotResultSet:replace:partiallyComplete:priorityFastPath:update:complete:delayedTopHit:unchanged:forceStable:blendingDuration:geoEntityString:supportedAppScopes:showMoreInAppInfo:" gotResultSet:query2 replace:v8 partiallyComplete:1 priorityFastPath:1 update:0 complete:0 delayedTopHit:0.0 unchanged:v10 forceStable:0 blendingDuration:0 geoEntityString:0 supportedAppScopes:? showMoreInAppInfo:?];
  }
}

void __54__SPFederatedQueryTask_updateResultsWithContactHeader__block_invoke()
{
  v1 = [MEMORY[0x277CCAC38] processInfo];
  v0 = [v1 processName];
  updateResultsWithContactHeader_isPeopleViewService = [v0 isEqualToString:@"PeopleViewService"];
}

- (void)_updateQueryContext:(id)context
{
  contextCopy = context;
  queryIdent = [contextCopy queryIdent];
  queryContext = [contextCopy queryContext];
  [queryContext setQueryIdent:queryIdent];

  promoteLocalResults = [contextCopy promoteLocalResults];
  queryContext2 = [contextCopy queryContext];
  [queryContext2 setPromoteLocalResults:promoteLocalResults];

  promoteParsecResults = [contextCopy promoteParsecResults];
  queryContext3 = [contextCopy queryContext];
  [queryContext3 setPromoteParsecResults:promoteParsecResults];

  disabledBundles = [contextCopy disabledBundles];
  queryContext4 = [contextCopy queryContext];
  [queryContext4 setDisabledBundles:disabledBundles];

  disabledApps = [contextCopy disabledApps];
  queryContext5 = [contextCopy queryContext];
  [queryContext5 setDisabledApps:disabledApps];

  internalValidation = [contextCopy internalValidation];
  queryContext6 = [contextCopy queryContext];
  [queryContext6 setInternalValidation:internalValidation];

  [contextCopy currentTime];
  v17 = v16;
  queryContext7 = [contextCopy queryContext];

  [queryContext7 setCurrentTime:v17];
}

- (void)start
{
  if ([(SPFederatedQueryTask *)self started])
  {
    [SPFederatedQueryTask start];
  }

  [(SPFederatedQueryTask *)self setNewQuery:1];
  objc_initWeak(&location, self);
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SPFederatedQueryTask_start__block_invoke;
  block[3] = &unk_279CFE268;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
  dispatch_async(queryProcessor, v4);

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
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__SPFederatedQueryTask_clear__block_invoke;
  v5[3] = &unk_279CFE290;
  objc_copyWeak(&v6, &location);
  v4 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v5);
  dispatch_async(queryProcessor, v4);

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
  mEMORY[0x277CC3468] = [MEMORY[0x277CC3468] sharedInstance];
  [mEMORY[0x277CC3468] logWithBundleID:@"com.apple.SpotlightUI" indexOperation:4 itemCount:1 reason:@"UserInput"];

  query = [(SPQueryTask *)self query];
  [query cancel];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  queries = [(SPFederatedQueryTask *)self queries];
  v6 = [queries countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(queries);
        }

        [*(*(&v11 + 1) + 8 * v9++) cancel];
      }

      while (v7 != v9);
      v7 = [queries countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (void)activate:(BOOL)activate
{
  if (!activate)
  {
    sPrepareCacheForSearchContinuationStarted = 1;
  }

  v5 = dispatch_get_global_queue(25, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SPFederatedQueryTask_activate___block_invoke;
  v6[3] = &__block_descriptor_41_e5_v8__0l;
  activateCopy = activate;
  v6[4] = self;
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
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  searchString = [queryContext searchString];

  return searchString;
}

- (void)mergeSections
{
  selfCopy = self;
  v208 = *MEMORY[0x277D85DE8];
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v162 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v152 = selfCopy;
  mutableSections = [(SPQueryTask *)selfCopy mutableSections];
  firstObject = [mutableSections firstObject];

  bundleIdentifier = [firstObject bundleIdentifier];
  LOBYTE(selfCopy) = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  if ((selfCopy & 1) == 0)
  {

    firstObject = 0;
  }

  v153 = firstObject;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  mutableSections2 = [v152 mutableSections];
  v11 = [mutableSections2 copy];

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

        title = [v13 title];
        v165 = i;
        if (title)
        {
          v15 = v13;
          title2 = [v13 title];
          uppercaseString = [title2 uppercaseString];
        }

        else
        {
          title2 = [v13 bundleIdentifier];
          if (!title2)
          {
            v19 = 0;
            goto LABEL_14;
          }

          v15 = v13;
          uppercaseString = [v13 bundleIdentifier];
        }

        v18 = uppercaseString;
        v19 = [v162 objectForKey:uppercaseString];

        v13 = v15;
LABEL_14:

        if (([v19 doNotFold] & 1) != 0 || objc_msgSend(v13, "doNotFold"))
        {

LABEL_17:
          [v6 addObject:v13];
          title3 = [v13 title];

          if (title3)
          {
            [v13 title];
            v22 = v21 = v13;
            uppercaseString2 = [v22 uppercaseString];
            [v162 setObject:v21 forKey:uppercaseString2];

            i = v165;
            goto LABEL_142;
          }

          bundleIdentifier2 = [v13 bundleIdentifier];

          i = v165;
          if (bundleIdentifier2)
          {
            bundleIdentifier3 = [v13 bundleIdentifier];
            v26 = v13;
            v22 = bundleIdentifier3;
            [v162 setObject:v26 forKey:bundleIdentifier3];
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
        maxInitiallyVisibleResults = [v13 maxInitiallyVisibleResults];
        if (maxInitiallyVisibleResults <= [v27 maxInitiallyVisibleResults])
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
        resultSet = [v27 resultSet];
        [resultSet objectAtIndexedSubscript:0];
        v34 = v33 = v27;
        sectionBundleIdentifier = [v34 sectionBundleIdentifier];
        v36 = sectionBundleIdentifier;
        v37 = v155;
        if (sectionBundleIdentifier)
        {
          applicationBundleIdentifier = sectionBundleIdentifier;
        }

        else
        {
          resultSet2 = [v33 resultSet];
          v39 = [resultSet2 objectAtIndexedSubscript:0];
          applicationBundleIdentifier = [v39 applicationBundleIdentifier];
        }

        resultSet3 = [v158 resultSet];
        v41 = [resultSet3 objectAtIndexedSubscript:0];
        sectionBundleIdentifier2 = [v41 sectionBundleIdentifier];
        v43 = sectionBundleIdentifier2;
        if (sectionBundleIdentifier2)
        {
          applicationBundleIdentifier2 = sectionBundleIdentifier2;
        }

        else
        {
          resultSet4 = [v158 resultSet];
          v45 = [resultSet4 objectAtIndexedSubscript:0];
          applicationBundleIdentifier2 = [v45 applicationBundleIdentifier];
        }

        if (([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"] & 1) != 0 || objc_msgSend(applicationBundleIdentifier2, "isEqualToString:", @"com.apple.Maps"))
        {
          v46 = v158;
          if ([applicationBundleIdentifier isEqualToString:@"com.apple.Maps"])
          {
            results = [v170 results];
            sectionBundleIdentifier3 = [results copy];

            [v170 clearResults];
            results2 = [v158 results];

            if (results2)
            {
              results3 = [v158 results];
              [v170 addResultsFromArray:results3];
            }

            [v158 clearResults];
            if (sectionBundleIdentifier3)
            {
              [v158 addResultsFromArray:sectionBundleIdentifier3];
            }

            domain = [v158 domain];
            [v158 setDomain:{objc_msgSend(v170, "domain")}];
            [v170 setDomain:domain];
            title4 = [v158 title];
            title5 = [v170 title];
            [v158 setTitle:title5];

            v54 = title4;
            [v170 setTitle:title4];
LABEL_77:
          }

          goto LABEL_78;
        }

        if ([v170 domain] != 2)
        {
          resultSet5 = [v170 resultSet];
          v56 = [resultSet5 objectAtIndexedSubscript:0];
          applicationBundleIdentifier3 = [v56 applicationBundleIdentifier];
          v58 = applicationBundleIdentifier3;
          if (applicationBundleIdentifier3)
          {
            sectionBundleIdentifier3 = applicationBundleIdentifier3;
          }

          else
          {
            resultSet6 = [v170 resultSet];
            v60 = [resultSet6 objectAtIndexedSubscript:0];
            sectionBundleIdentifier3 = [v60 sectionBundleIdentifier];
          }

          resultSet7 = [v158 resultSet];
          v62 = [resultSet7 objectAtIndexedSubscript:0];
          applicationBundleIdentifier4 = [v62 applicationBundleIdentifier];
          v64 = applicationBundleIdentifier4;
          if (applicationBundleIdentifier4)
          {
            sectionBundleIdentifier4 = applicationBundleIdentifier4;
          }

          else
          {
            resultSet8 = [v158 resultSet];
            v66 = [resultSet8 objectAtIndexedSubscript:0];
            sectionBundleIdentifier4 = [v66 sectionBundleIdentifier];
          }

          title6 = [v158 title];
          uppercaseString3 = [title6 uppercaseString];

          v192 = 0u;
          v193 = 0u;
          v190 = 0u;
          v191 = 0u;
          resultSet9 = [v153 resultSet];
          v68 = [resultSet9 countByEnumeratingWithState:&v190 objects:v206 count:16];
          if (!v68)
          {
            v54 = sectionBundleIdentifier4;
            goto LABEL_76;
          }

          v69 = v68;
          v70 = *v191;
          v160 = sectionBundleIdentifier3;
          v54 = sectionBundleIdentifier4;
          while (1)
          {
            for (j = 0; j != v69; ++j)
            {
              if (*v191 != v70)
              {
                objc_enumerationMutation(resultSet9);
              }

              v72 = *(*(&v190 + 1) + 8 * j);
              title7 = [v72 title];
              if (!title7)
              {
                goto LABEL_72;
              }

              if (sectionBundleIdentifier3)
              {
                resultBundleId = [v72 resultBundleId];
                if ([resultBundleId isEqualToString:sectionBundleIdentifier3])
                {
                  goto LABEL_60;
                }
              }

              if (v54)
              {
                resultBundleId2 = [v72 resultBundleId];
                if ([resultBundleId2 isEqualToString:v54])
                {

                  if (sectionBundleIdentifier3)
                  {
LABEL_60:
                  }

LABEL_71:
                  [v173 addObject:title7];
                  goto LABEL_72;
                }

                if (!uppercaseString3)
                {
                  v74 = 0;
LABEL_67:

                  goto LABEL_68;
                }
              }

              else if (!uppercaseString3)
              {
                v74 = 0;
                goto LABEL_68;
              }

              v75 = resultBundleId2;
              v76 = resultBundleId;
              sectionHeader = [v72 sectionHeader];
              uppercaseString4 = [sectionHeader uppercaseString];
              v74 = [uppercaseString4 isEqual:uppercaseString3];

              resultBundleId = v76;
              resultBundleId2 = v75;
              sectionBundleIdentifier3 = v160;
              v54 = sectionBundleIdentifier4;
              if (sectionBundleIdentifier4)
              {
                goto LABEL_67;
              }

LABEL_68:
              if (sectionBundleIdentifier3)
              {
              }

              if (v74)
              {
                goto LABEL_71;
              }

LABEL_72:
            }

            v69 = [resultSet9 countByEnumeratingWithState:&v190 objects:v206 count:16];
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
        v169 = resultBundleId;
        bundleIdentifier4 = [v46 bundleIdentifier];
        v80 = [bundleIdentifier4 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v80)
        {
          v167 = resultBundleId2;
          v81 = objc_opt_new();
          v186 = 0u;
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          resultSet10 = [v170 resultSet];
          v83 = [resultSet10 countByEnumeratingWithState:&v186 objects:v205 count:16];
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
                  objc_enumerationMutation(resultSet10);
                }

                v87 = *(*(&v186 + 1) + 8 * k);
                resultBundleId3 = [v87 resultBundleId];
                if (resultBundleId3)
                {
                  v89 = resultBundleId3;
                  completion = [v87 completion];

                  if (completion)
                  {
                    resultBundleId4 = [v87 resultBundleId];
                    v204[0] = resultBundleId4;
                    completion2 = [v87 completion];
                    v204[1] = completion2;
                    v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v204 count:2];

                    [v81 setObject:v87 forKeyedSubscript:v93];
                  }
                }
              }

              v84 = [resultSet10 countByEnumeratingWithState:&v186 objects:v205 count:16];
            }

            while (v84);
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          resultSet11 = [v158 resultSet];
          v95 = [resultSet11 countByEnumeratingWithState:&v182 objects:v203 count:16];
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
                  objc_enumerationMutation(resultSet11);
                }

                v99 = *(*(&v182 + 1) + 8 * m);
                resultBundleId5 = [v99 resultBundleId];
                if (resultBundleId5)
                {
                  v101 = resultBundleId5;
                  completion3 = [v99 completion];

                  if (completion3)
                  {
                    resultBundleId6 = [v99 resultBundleId];
                    v202[0] = resultBundleId6;
                    completion4 = [v99 completion];
                    v202[1] = completion4;
                    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v202 count:2];
                    v106 = [v81 objectForKeyedSubscript:v105];

                    if (!v106)
                    {
                      [v170 addResults:v99];
                    }
                  }
                }
              }

              v96 = [resultSet11 countByEnumeratingWithState:&v182 objects:v203 count:16];
            }

            while (v96);
          }

          v37 = v155;
          resultBundleId2 = v167;
        }

        v180 = 0u;
        v181 = 0u;
        v178 = 0u;
        v179 = 0u;
        resultSet12 = [v170 resultSet];
        v108 = [resultSet12 countByEnumeratingWithState:&v178 objects:v201 count:16];
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
                objc_enumerationMutation(resultSet12);
              }

              v112 = *(*(&v178 + 1) + 8 * v111);
              resultBundleId7 = [v112 resultBundleId];
              v114 = [resultBundleId7 isEqualToString:v37];

              if (v114)
              {
                contentURL = [v112 contentURL];
              }

              else
              {
                resultBundleId8 = [v112 resultBundleId];
                v117 = [resultBundleId8 isEqualToString:v172];

                if (v117 || ([v112 contentType], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", v171), v118, v119))
                {
                  contentURL = [v112 identifier];
                }

                else
                {
                  title8 = [v112 title];
                  if (!title8)
                  {
                    goto LABEL_114;
                  }

                  v122 = title8;
                  title9 = [v112 title];
                  text = [title9 text];

                  if (!text)
                  {
                    goto LABEL_114;
                  }

                  contentURL = [v112 title];
                }
              }

              v120 = contentURL;
              if (contentURL)
              {
                [v173 addObject:contentURL];
              }

LABEL_114:
              ++v111;
            }

            while (v109 != v111);
            v125 = [resultSet12 countByEnumeratingWithState:&v178 objects:v201 count:16];
            v109 = v125;
          }

          while (v125);
        }

        v176 = 0u;
        v177 = 0u;
        v174 = 0u;
        v175 = 0u;
        resultSet13 = [v158 resultSet];
        v127 = [resultSet13 countByEnumeratingWithState:&v174 objects:v200 count:16];
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
              objc_enumerationMutation(resultSet13);
            }

            v131 = *(*(&v174 + 1) + 8 * v130);
            resultBundleId9 = [v131 resultBundleId];
            v133 = [resultBundleId9 isEqualToString:v37];

            if (v133)
            {
              contentURL2 = [v131 contentURL];
            }

            else
            {
              resultBundleId10 = [v131 resultBundleId];
              v136 = [resultBundleId10 isEqualToString:v172];

              if (v136 || ([v131 contentType], v137 = objc_claimAutoreleasedReturnValue(), v138 = objc_msgSend(v137, "isEqualToString:", v171), v137, v138))
              {
                contentURL2 = [v131 identifier];
              }

              else
              {
                title10 = [v131 title];
                if (!title10)
                {
                  goto LABEL_133;
                }

                title11 = [v131 title];
                text2 = [title11 text];

                if (!text2)
                {
                  title10 = 0;
                  goto LABEL_133;
                }

                contentURL2 = [v131 title];
              }
            }

            title10 = contentURL2;
            if (contentURL2 && ([v173 containsObject:contentURL2] & 1) == 0)
            {
              [v170 addResults:v131];
            }

LABEL_133:

            ++v130;
          }

          while (v128 != v130);
          v142 = [resultSet13 countByEnumeratingWithState:&v174 objects:v200 count:16];
          v128 = v142;
        }

        while (v142);
LABEL_140:

        v6 = v154;
        resultBundleId = v169;
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

- (void)relatedContentSectionMerging:(id)merging
{
  v4 = relatedContentSectionMerging__onceToken;
  mergingCopy = merging;
  v7 = mergingCopy;
  if (v4 == -1)
  {
    v6 = mergingCopy;
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

- (void)mergeRelatedContentFromSections:(id)sections bundlesToMerge:(id)merge mergedSectionId:(id)id
{
  v49 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  mergeCopy = merge;
  idCopy = id;
  array = [MEMORY[0x277CBEB18] array];
  if ([sectionsCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [sectionsCopy objectAtIndexedSubscript:v11];
      bundleIdentifier = [v12 bundleIdentifier];
      results = [v12 results];
      if ([results count])
      {
        v15 = [mergeCopy containsObject:bundleIdentifier];

        if (v15)
        {
          [array addObject:v12];
        }
      }

      else
      {
      }

      ++v11;
    }

    while (v11 < [sectionsCopy count]);
  }

  if ([array count])
  {
    v16 = [array objectAtIndexedSubscript:0];
    if ([array count] >= 2)
    {
      v43 = v16;
      v44 = idCopy;
      v17 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = array;
        _os_log_impl(&dword_26B71B000, v17, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Merging sections %@", buf, 0xCu);
      }

      array2 = [MEMORY[0x277CBEB18] array];
      array3 = [MEMORY[0x277CBEB18] array];
      if ([array count])
      {
        v20 = 0;
        do
        {
          v21 = [array objectAtIndexedSubscript:{v20, v43}];
          maxInitiallyVisibleResults = [v21 maxInitiallyVisibleResults];
          if (!maxInitiallyVisibleResults)
          {
            results2 = [v21 results];
            v24 = [results2 count];

            if (v24 >= 3)
            {
              maxInitiallyVisibleResults = 3;
            }

            else
            {
              maxInitiallyVisibleResults = v24;
            }
          }

          results3 = [v21 results];
          v26 = [results3 count];

          if (maxInitiallyVisibleResults <= v26)
          {
            results4 = [v21 results];
            v28 = [results4 subarrayWithRange:{0, maxInitiallyVisibleResults}];
            [array2 addObjectsFromArray:v28];
          }

          results5 = [v21 results];
          v30 = [results5 count];

          if (v30 > maxInitiallyVisibleResults)
          {
            results6 = [v21 results];
            results7 = [v21 results];
            v33 = [results6 subarrayWithRange:{maxInitiallyVisibleResults, objc_msgSend(results7, "count") - maxInitiallyVisibleResults}];
            [array3 addObjectsFromArray:v33];
          }

          [v21 clearResults];

          ++v20;
        }

        while (v20 < [array count]);
      }

      v16 = v43;
      [v43 addResultsFromArray:{array2, v43}];
      [v16 addResultsFromArray:array3];
      [v16 setMaxInitiallyVisibleResults:{objc_msgSend(array2, "count")}];

      idCopy = v44;
    }

    if ([idCopy isEqualToString:sSectionMergingBlendedWeb])
    {
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_WEB" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v35];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65B80];
LABEL_31:
        [v16 setPreMergeBundleIdentifier:*v36];
        goto LABEL_32;
      }
    }

    else
    {
      if (![idCopy isEqualToString:sSectionMergingBlendedMusic])
      {
LABEL_33:
        v40 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [v16 bundleIdentifier];
          *buf = 138412546;
          v46 = bundleIdentifier2;
          v47 = 2112;
          v48 = idCopy;
          _os_log_impl(&dword_26B71B000, v40, OS_LOG_TYPE_DEFAULT, "[release2023SectionMerging] Section %@ becomes %@", buf, 0x16u);
        }

        [v16 setBundleIdentifier:idCopy];
        goto LABEL_36;
      }

      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"DOMAIN_TITLE_BLENDED_MUSIC" value:&stru_287C35638 table:@"SpotlightServices"];
      [v16 setTitle:v38];

      if ([array count] >= 2)
      {
        v36 = MEMORY[0x277D65AD8];
        goto LABEL_31;
      }
    }

    bundleIdentifier3 = [v16 bundleIdentifier];
    [v16 setPreMergeBundleIdentifier:bundleIdentifier3];

LABEL_32:
    [v16 setMaxInitiallyVisibleResults:3];
    goto LABEL_33;
  }

LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)truncateSuggestionsSectionToFit:(id)fit
{
  v27 = *MEMORY[0x277D85DE8];
  fitCopy = fit;
  maxUISuggestions = [(SPQueryTask *)self maxUISuggestions];
  resultSet = [fitCopy resultSet];
  v7 = objc_alloc(MEMORY[0x277CBEB40]);
  resultsCount = [fitCopy resultsCount];
  if (resultsCount >= maxUISuggestions)
  {
    v9 = maxUISuggestions;
  }

  else
  {
    v9 = resultsCount;
  }

  v10 = [v7 initWithCapacity:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = resultSet;
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

        else if (v15 < maxUISuggestions)
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
      if (v15 && v15 >= maxUISuggestions)
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

  [fitCopy setResultSet:{v10, v22}];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleOptionsForNewSections:(id)sections
{
  v231 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
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
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    *buf = 134218240;
    v228 = currentThread;
    v229 = 1024;
    v230 = [sectionsCopy count];
    _os_log_impl(&dword_26B71B000, v5, v6, "[%p] handleOptions for sections (%d)", buf, 0x12u);
  }

  v8 = SPLogForSPLogCategoryDefault();
  v9 = MEMORY[0x277D4BF50];
  v10 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v8, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 138412290;
    v228 = sectionsCopy;
    _os_log_impl(&dword_26B71B000, v8, ((v10 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
  }

  if ([sectionsCopy count])
  {
    queryProcessor = [(SPQueryTask *)self queryProcessor];
    dispatch_assert_queue_V2(queryProcessor);

    v12 = SPLogForSPLogCategoryDefault();
    v13 = *v9;
    if (os_log_type_enabled(v12, ((v13 & 1) == 0)))
    {
      *buf = 138412290;
      v228 = sectionsCopy;
      _os_log_impl(&dword_26B71B000, v12, ((v13 & 1) == 0), "handleOptionsForNewSections: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    dictionary6 = [MEMORY[0x277CBEB38] dictionary];
    query = [(SPQueryTask *)self query];
    queryContext = [query queryContext];
    searchEntities = [queryContext searchEntities];
    firstObject = [searchEntities firstObject];

    v156 = firstObject;
    isServerEntitySearch = [firstObject isServerEntitySearch];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    mutableSections = [(SPQueryTask *)self mutableSections];
    v20 = [mutableSections countByEnumeratingWithState:&v214 objects:v226 count:16];
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
            objc_enumerationMutation(mutableSections);
          }

          v24 = *(*(&v214 + 1) + 8 * i);
          bundleIdentifier = [v24 bundleIdentifier];
          v26 = [bundleIdentifier hasPrefix:@"com.apple.parsec."];

          if (v26)
          {
            results = [v24 results];
            firstObject2 = [results firstObject];
            [v24 setDoNotFold:{objc_msgSend(firstObject2, "doNotFold")}];
          }

          createDedupeDicts(v24, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
        }

        v21 = [mutableSections countByEnumeratingWithState:&v214 objects:v226 count:16];
      }

      while (v21);
    }

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    v29 = sectionsCopy;
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
          bundleIdentifier2 = [v34 bundleIdentifier];
          v36 = [bundleIdentifier2 hasPrefix:@"com.apple.parsec."];

          if (v36)
          {
            results2 = [v34 results];
            firstObject3 = [results2 firstObject];
            [v34 setDoNotFold:{objc_msgSend(firstObject3, "doNotFold")}];
          }

          createDedupeDicts(v34, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6, isServerEntitySearch);
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
        bundleIdentifier3 = [v41 bundleIdentifier];
        v43 = [bundleIdentifier3 hasPrefix:@"com.apple.parsec."];

        if (v43)
        {
          results3 = [v41 results];
          v45 = [results3 count];

          if (!v45)
          {
            goto LABEL_81;
          }

          results4 = [v41 results];
          v47 = [results4 copy];

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
                bundleIdentifier4 = [v41 bundleIdentifier];
                v55 = [bundleIdentifier4 hasPrefix:@"com.apple.parsec."];

                if (!v55)
                {
                  goto LABEL_44;
                }

                storeIdentifier = [v53 storeIdentifier];
                if (storeIdentifier)
                {
                  v57 = storeIdentifier;
                  storeIdentifier2 = [v53 storeIdentifier];
                  v59 = [dictionary objectForKey:storeIdentifier2];

                  if (v59)
                  {
                    goto LABEL_43;
                  }
                }

                calendarIdentifier = [v53 calendarIdentifier];
                if (!calendarIdentifier)
                {
                  goto LABEL_44;
                }

                v61 = calendarIdentifier;
                calendarIdentifier2 = [v53 calendarIdentifier];
                v59 = [dictionary3 objectForKey:calendarIdentifier2];

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

        bundleIdentifier5 = [v41 bundleIdentifier];
        v64 = [bundleIdentifier5 isEqualToString:@"com.apple.dictionary"];

        if (v64)
        {
          results5 = [v41 results];
          v66 = [results5 count];

          if (!v66)
          {
            goto LABEL_81;
          }

          results6 = [v41 results];
          v68 = [results6 copy];

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
                identifier = [v74 identifier];
                if (!identifier || ([dictionary4 objectForKey:identifier], v76 = objc_claimAutoreleasedReturnValue(), v76, !v76))
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

        bundleIdentifier6 = [v41 bundleIdentifier];
        if ([bundleIdentifier6 isEqualToString:v170])
        {
          break;
        }

        bundleIdentifier7 = [v41 bundleIdentifier];
        v79 = [bundleIdentifier7 isEqualToString:v166];

        if (v79)
        {
          goto LABEL_64;
        }

        bundleIdentifier8 = [v41 bundleIdentifier];
        v98 = [bundleIdentifier8 isEqualToString:*MEMORY[0x277D4BF10]];

        if (v98)
        {
          v159 = v40;
          obj = objc_alloc_init(MEMORY[0x277CCAB58]);
          v194 = 0u;
          v195 = 0u;
          v196 = 0u;
          v197 = 0u;
          results7 = [v41 results];
          v100 = [results7 countByEnumeratingWithState:&v194 objects:v221 count:16];
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
                  objc_enumerationMutation(results7);
                }

                v105 = *(*(&v194 + 1) + 8 * n);
                identifier2 = [v105 identifier];
                v107 = [identifier2 hasPrefix:v172];

                if (v107)
                {
                  sectionBundleIdentifier = [v105 sectionBundleIdentifier];
                  v109 = [sectionBundleIdentifier isEqualToString:v170];

                  v110 = v168;
                  if ((v109 & 1) != 0 || ([v105 sectionBundleIdentifier], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "isEqualToString:", v166), v111, v110 = v164, v112))
                  {
                    v113 = [dictionary5 objectForKey:v110];
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

              v101 = [results7 countByEnumeratingWithState:&v194 objects:v221 count:16];
            }

            while (v101);
          }

          resultSet = [v41 resultSet];
          [resultSet removeObjectsAtIndexes:obj];

          [(SPFederatedQueryTask *)self truncateSuggestionsSectionToFit:v41];
          v40 = v159;
          v29 = v160;
          goto LABEL_83;
        }

        bundleIdentifier9 = [v41 bundleIdentifier];
        v117 = [bundleIdentifier9 isEqualToString:v155];

        if (v117)
        {
          results8 = [v41 results];
          v119 = [results8 count];

          if (v119)
          {
            results9 = [v41 results];
            v121 = [results9 copy];

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
                  applicationBundleIdentifier = [v126 applicationBundleIdentifier];
                  v128 = [dictionary6 objectForKey:applicationBundleIdentifier];
                  v129 = v128;
                  if (applicationBundleIdentifier)
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
      results10 = [v41 results];
      v81 = [results10 count];

      if (!v81)
      {
        goto LABEL_81;
      }

      results11 = [v41 results];
      v83 = [results11 copy];

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
            identifier3 = [v88 identifier];
            v90 = [identifier3 hasPrefix:v172];

            if (v90)
            {
              sectionBundleIdentifier2 = [v88 sectionBundleIdentifier];
              v92 = [sectionBundleIdentifier2 isEqualToString:v170];

              v93 = v168;
              if ((v92 & 1) == 0 && ([v88 sectionBundleIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "isEqualToString:", v166), v94, v93 = v164, !v95) || (objc_msgSend(dictionary5, "objectForKey:", v93), (v96 = objc_claimAutoreleasedReturnValue()) == 0))
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
    [dictionary removeAllObjects];
    [dictionary2 removeAllObjects];
    [dictionary3 removeAllObjects];
    [dictionary4 removeAllObjects];
    [dictionary5 removeAllObjects];
    [dictionary6 removeAllObjects];
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
      bundleIdentifier10 = [v132 bundleIdentifier];
      if ([bundleIdentifier10 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        goto LABEL_123;
      }

      bundleIdentifier11 = [v132 bundleIdentifier];
      if ([bundleIdentifier11 isEqualToString:v161])
      {
        break;
      }

      bundleIdentifier12 = [v132 bundleIdentifier];
      v152 = [bundleIdentifier12 isEqualToString:*MEMORY[0x277D4BF10]];

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
    results12 = [v132 results];
    v135 = [results12 countByEnumeratingWithState:&v182 objects:v218 count:16];
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
            objc_enumerationMutation(results12);
          }

          v140 = *(*(&v182 + 1) + 8 * kk);
          v141 = updateDedupeDictsForResult(v140, dictionary2, dictionary, dictionary3, dictionary4, dictionary5, dictionary6);
          v142 = v141;
          if (v141)
          {
            inlineCard = [v141 inlineCard];
            inlineCard2 = [v140 inlineCard];
            v145 = inlineCard2;
            if (inlineCard)
            {
              v146 = 1;
            }

            else
            {
              v146 = inlineCard2 == 0;
            }

            if (!v146)
            {
              [v142 setInlineCard:inlineCard2];
            }

            compactCard = [v142 compactCard];

            compactCard2 = [v140 compactCard];

            if (compactCard)
            {
              v149 = 1;
            }

            else
            {
              v149 = compactCard2 == 0;
            }

            if (!v149)
            {
              [v142 setCompactCard:compactCard2];
            }

            handleHiddenResult();
            [v173 addIndex:v137];
          }

          ++v137;
        }

        v136 = [results12 countByEnumeratingWithState:&v182 objects:v218 count:16];
      }

      while (v136);
    }

    resultSet2 = [v132 resultSet];
    [resultSet2 removeObjectsAtIndexes:v173];

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

- (void)addSections:(id)sections delayedTopHit:(BOOL)hit
{
  sectionsCopy = sections;
  [(SPFederatedQueryTask *)self handleOptionsForNewSections:?];
  if (hit)
  {
    if (![sectionsCopy count])
    {
      goto LABEL_6;
    }

    mutableSections = [(SPQueryTask *)self mutableSections];
    firstObject = [sectionsCopy firstObject];
    [mutableSections insertObject:firstObject atIndex:0];
  }

  else
  {
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections addObjectsFromArray:sectionsCopy];
  }

LABEL_6:
  [(SPFederatedQueryTask *)self mergeSections];
}

- (id)unsafeSessionEntityString
{
  mutableSessionEntityString = [(SPFederatedQueryTask *)self mutableSessionEntityString];
  v3 = [mutableSessionEntityString copy];

  return v3;
}

- (id)displayedText
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];

  if ([queryContext hasMarkedText])
  {
    markedTextArray = [queryContext markedTextArray];
    searchString = [markedTextArray componentsJoinedByString:&stru_287C35638];
  }

  else
  {
    searchString = [(SPFederatedQueryTask *)self searchString];
  }

  return searchString;
}

- (void)processAppResults:(id)results maxAppResults:(unint64_t)appResults section:(id)section topHitsIndex:(unint64_t *)index
{
  v29 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  sectionCopy = section;
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v12 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v14 = [bundleIdentifier2 isEqualToString:*MEMORY[0x277D4BEF0]];

  if ((v14 & 1) != 0 || v12)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = sectionCopy;
    results = [sectionCopy results];
    v16 = [results countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(results);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        if ([v20 isLocalApplicationResult] && (objc_msgSend(v20, "isAppClip") & 1) == 0)
        {
          title = [v20 title];
          [title setMaxLines:1];

          if (v12)
          {
            ++*index;
            [resultsCopy insertObject:v20 atIndex:?];
          }

          else
          {
            [resultsCopy addObject:v20];
          }

          if ([resultsCopy count] >= appResults)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [results countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v17)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    sectionCopy = v23;
    [v23 setMaxInitiallyVisibleResults:appResults];
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

  mutableSections = [(SPQueryTask *)self mutableSections];
  v7 = [mutableSections mutableCopy];
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

  firstObject = [v10 firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];
  v13 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

  if (v13)
  {
    firstObject2 = [v10 firstObject];
    if (firstObject2)
    {
      v15 = firstObject2;
      maxTopHitAppResults = [(SPQueryTask *)self maxTopHitAppResults];
      v27 = 0;
      [(SPFederatedQueryTask *)self processAppResults:0 maxAppResults:maxTopHitAppResults section:v15 topHitsIndex:&v27];
      resultSet = [v15 resultSet];
      v18 = [resultSet count];

      if (v18 > maxTopHitAppResults)
      {
        resultSet2 = [v15 resultSet];
        resultSet3 = [v15 resultSet];
        [resultSet2 removeObjectsInRange:{maxTopHitAppResults, objc_msgSend(resultSet3, "count") - maxTopHitAppResults}];
      }
    }
  }

  v21 = MEMORY[0x277D659A8];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  showMoreInAppInfo = [(SPFederatedQueryTask *)self showMoreInAppInfo];
  v25 = [v21 buildSectionsWithSections:v10 queryContext:queryContext searchInAppInfo:showMoreInAppInfo renderState:{-[SPQueryTask unsafeState](self, "unsafeState")}];

  return v25;
}

- (void)searchQuery:(id)query gotResultSet:(id)set replace:(BOOL)replace partiallyComplete:(BOOL)complete priorityFastPath:(BOOL)path update:(BOOL)update complete:(BOOL)a9 delayedTopHit:(BOOL)self0 unchanged:(BOOL)self1 forceStable:(BOOL)self2 blendingDuration:(double)self3 geoEntityString:(id)self4 supportedAppScopes:(id)self5 showMoreInAppInfo:(id)self6
{
  pathCopy = path;
  completeCopy = complete;
  replaceCopy = replace;
  v88 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  setCopy = set;
  stringCopy = string;
  scopesCopy = scopes;
  infoCopy = info;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v26 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.searchd.frontend.query.end" timeInterval:0 queryId:{objc_msgSend(queryCopy, "queryIdent")}];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  v78 = v26;
  [mEMORY[0x277D4BEB0] reportFeedback:v26 queryId:{objc_msgSend(queryCopy, "queryIdent")}];

  staleResultsTimer = self->_staleResultsTimer;
  if (staleResultsTimer)
  {
    dispatch_source_cancel(staleResultsTimer);
    v29 = self->_staleResultsTimer;
    self->_staleResultsTimer = 0;
  }

  if (completeCopy || update || pathCopy || a9)
  {
    v30 = 2;
    if (!completeCopy)
    {
      v30 = 3;
    }

    if (pathCopy)
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

  v32 = [scopesCopy count];
  v33 = scopesCopy;
  v34 = setCopy;
  v35 = stringCopy;
  if (v32)
  {
    [(SPFederatedQueryTask *)self setSupportedAppScopes:v33];
  }

  v79 = v33;
  if ([infoCopy count])
  {
    [(SPFederatedQueryTask *)self setShowMoreInAppInfo:infoCopy];
  }

  if (!-[SPQueryTask forceStableResults](self, "forceStableResults") && !stable || ([setCopy stableSections], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    resultSections = [setCopy resultSections];
    if (!replaceCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = v36;
  resultSections = [setCopy stableSections];

  if (replaceCopy)
  {
LABEL_25:
    mutableSections = [(SPQueryTask *)self mutableSections];
    [mutableSections removeAllObjects];

    [(SPFederatedQueryTask *)self setMutableSessionEntityString:0];
  }

LABEL_26:
  if (stringCopy)
  {
    [(SPFederatedQueryTask *)self setMutableSessionEntityString:stringCopy];
  }

  if ([resultSections count])
  {
    if (!unchanged)
    {
      v40 = [resultSections mutableCopy];
      [(SPFederatedQueryTask *)self addSections:v40 delayedTopHit:hit];

      externalID = self->_externalID;
      kdebug_trace();
      if ([(SPFederatedQueryTask *)self newQuery])
      {
        [(SPFederatedQueryTask *)self setNewQuery:0];
        creationStamp = [queryCopy creationStamp];
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", "ttfr", creationStamp, bundleIdentifier);

        v35 = stringCopy;
      }
    }
  }

  unsafeSections = [(SPFederatedQueryTask *)self unsafeSections];
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
    v87 = *&unsafeSections;
    _os_log_impl(&dword_26B71B000, v47, v48, "sections: %@", buf, 0xCu);
  }

  if (!unchanged && [(SPFederatedQueryTask *)self readyToUpdate])
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

    session = [(SPFederatedQueryTask *)self session];
    v54 = MEMORY[0x277D65968];
    queryContext = [queryCopy queryContext];
    queryIntent = [queryContext queryIntent];
    [session finishRanking:unsafeSections blendingDuration:objc_msgSend(v54 spotlightQueryIntent:{"spotlightQueryIntent:", queryIntent), duration}];

    [(SPFederatedQueryTask *)self setDidReceiveCompleteCallback:1];
    if (replaceCopy)
    {
      v57 = "session reset";
    }

    else
    {
      v57 = "session complete";
    }

    creationStamp2 = [queryCopy creationStamp];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    v61 = sp_analytics_log_timing_with_bundle_id("com.apple.searchd.query.client", v57, creationStamp2, bundleIdentifier2);

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

    v34 = setCopy;
    v35 = stringCopy;
  }

  queryContext2 = [queryCopy queryContext];
  fetchL2Signals = [queryContext2 fetchL2Signals];

  if (fetchL2Signals)
  {
    v67 = MEMORY[0x277CCAAB0];
    mutableSections2 = [(SPQueryTask *)self mutableSections];
    v84 = 0;
    v69 = [v67 archivedDataWithRootObject:mutableSections2 requiringSecureCoding:1 error:&v84];
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
        v34 = setCopy;
        goto LABEL_63;
      }

      v71 = SPLogForSPLogCategoryDefault();
      v34 = setCopy;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        [SPFederatedQueryTask searchQuery:v70 gotResultSet:v71 replace:? partiallyComplete:? priorityFastPath:? update:? complete:? delayedTopHit:? unchanged:? forceStable:? blendingDuration:? geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
      }
    }

LABEL_63:
    [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:v72];

    v35 = stringCopy;
    goto LABEL_64;
  }

  [(SPQueryTask *)self updateResultsThroughDelegate:0 state:[(SPQueryTask *)self unsafeState] unchanged:unchanged sections:unsafeSections];
LABEL_64:

  v77 = *MEMORY[0x277D85DE8];
}

- (void)searchQueryEncounteredError:(id)error
{
  errorCopy = error;
  queryProcessor = [(SPQueryTask *)self queryProcessor];
  dispatch_assert_queue_V2(queryProcessor);

  v6 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SPFederatedQueryTask *)errorCopy searchQueryEncounteredError:v6];
  }
}

- (id)retainAndMergeSections:(id)sections forState:(unint64_t)state
{
  sectionsCopy = sections;
  session = [(SPFederatedQueryTask *)self session];
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v10 = [queryContext queryKind] - 5;

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

  if (!session)
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

  if (state != 1)
  {
    query2 = [(SPQueryTask *)self query];
    [session setLastSections:sectionsCopy forQuery:query2];
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

  if ([sectionsCopy count] == 1)
  {
    query2 = [sectionsCopy objectAtIndex:0];
    bundleIdentifier = [query2 bundleIdentifier];
    v16 = [bundleIdentifier isEqual:@"com.apple.spotlight.tophits"];

    if (v16)
    {
      query3 = [(SPQueryTask *)self query];
      v18 = [session copyStaleSectionsForQuery:query3];

      if ([v18 count])
      {
        v19 = [v18 mutableCopy];
        v20 = [v18 objectAtIndex:0];
        queryProcessor = [(SPQueryTask *)self queryProcessor];
        v22 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queryProcessor);
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
        v27 = sectionsCopy;
        v32 = v27;
        dispatch_source_set_event_handler(v26, handler);
        dispatch_activate(self->_staleResultsTimer);
        bundleIdentifier2 = [v20 bundleIdentifier];
        LODWORD(v26) = [bundleIdentifier2 isEqual:@"com.apple.spotlight.tophits"];

        v29 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 1!", v30, 2u);
          }

          [v19 replaceObjectAtIndex:0 withObject:query2];
        }

        else
        {
          if (v29)
          {
            *v30 = 0;
            _os_log_impl(&dword_26B71B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Merged - case 2!", v30, 2u);
          }

          [v19 insertObject:query2 atIndex:0];
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

        v19 = sectionsCopy;
      }

      sectionsCopy = v19;
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

  return sectionsCopy;
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
  query = [(SPQueryTask *)self query];
  queryIdent = [query queryIdent];

  return queryIdent;
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