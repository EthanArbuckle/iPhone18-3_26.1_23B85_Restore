@interface SPParsecQuery
+ (void)activate;
+ (void)deactivate;
+ (void)getFTEStringsWithReply:(id)a3;
+ (void)initialize;
- (BOOL)available;
- (BOOL)shouldReturnEarly;
- (NSSet)appBlocklist;
- (SPFederatedQueryTask)resultPipe;
- (SPParsecQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6;
- (SSPlistDataReader)cannedCEPValues;
- (SSPlistDataReader)cepDictionary;
- (double)computeTimeout:(double)a3;
- (double)searchTimeOut;
- (double)suggestionTimeOut;
- (double)timeOut:(BOOL)a3;
- (id)createResultObject;
- (id)findLocalCopies:(id)a3 alternativeResults:(id)a4 withQueryString:(id)a5;
- (id)findLocalCopies:(id)a3 appIdentifiers:(id)a4 adamIDs:(id)a5 alternativeResults:(id)a6 withQueryString:(id)a7;
- (id)rerankMapsResultsWithLocalSignals:(id)a3 forQueryId:(int64_t)a4;
- (void)activate;
- (void)cancel;
- (void)checkParsecState;
- (void)dealloc;
- (void)finished;
- (void)geoUserSessionEntityString:(id)a3;
- (void)preheat;
- (void)query:(id)a3 didFinishWithResults:(id)a4 withSuggestions:(id)a5 withCorrections:(id)a6 withAlternativeResults:(id)a7 suggestionsAreBlended:(BOOL)a8;
- (void)queryDidFinishLoading:(id)a3;
- (void)resumeWithTimeout:(double)a3;
- (void)start;
- (void)updateParsecBeyondTimeoutCount:(BOOL)a3;
@end

@implementation SPParsecQuery

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SPLogInit();
    interface = [MEMORY[0x277D4BE98] getSharedInstance];

    MEMORY[0x2821F96F8]();
  }
}

+ (void)activate
{
  if (+[SPParsecQuery isParsecEnabled])
  {
    v3 = a1;
    objc_sync_enter(v3);
    ++sCounter;
    [interface activate:CFAbsoluteTimeGetCurrent()];
    objc_sync_exit(v3);

    v4 = MEMORY[0x277D4BEC8];

    [v4 updateFeedbackListeners];
  }
}

+ (void)deactivate
{
  obj = a1;
  objc_sync_enter(obj);
  if (sCounter)
  {
    --sCounter;
    [interface deactivate];
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"PRSStartedPlaying" object:0];

  objc_sync_exit(obj);
}

+ (void)getFTEStringsWithReply:(id)a3
{
  v4 = a3;
  v5 = [interface searchSession];

  if (!v5)
  {
    v6 = SPLogForSPLogCategoryDefault();
    v7 = v6;
    if (*MEMORY[0x277D4BF48])
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v6, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v7, v8, "Parsec session is nil in FTE. Trying to create one.", buf, 2u);
    }

    [objc_opt_class() activate];
  }

  v9 = [interface searchSession];

  if (v9)
  {
    v10 = [interface searchSession];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__SPParsecQuery_getFTEStringsWithReply___block_invoke;
    v12[3] = &unk_279CFE868;
    v14 = a1;
    v13 = v4;
    [v10 getFTEStringsWithReply:v12];
  }

  else
  {
    v11 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SPParsecQuery getFTEStringsWithReply:v11];
    }

    (*(v4 + 2))(v4, 0, 0, 0, 0);
  }
}

void __40__SPParsecQuery_getFTEStringsWithReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = SPLogForSPLogCategoryDefault();
  v16 = v15;
  if (*MEMORY[0x277D4BF48])
  {
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v17 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v15, v17))
  {
    v20 = 138412546;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_26B71B000, v16, v17, "Got FTE reply - fteString %@, learnMore %@", &v20, 0x16u);
  }

  if (a6)
  {
    [interface setSearchSession:0];
    v18 = *(a1 + 40);
    [objc_opt_class() activate];
  }

  (*(*(a1 + 32) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createResultObject
{
  v2 = objc_alloc_init(MEMORY[0x277D4BE90]);

  return v2;
}

- (void)finished
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = SPLogForSPLogCategoryDefault();
  v4 = *MEMORY[0x277D4BF50];
  if (os_log_type_enabled(v3, ((*MEMORY[0x277D4BF50] & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v3, ((v4 & 1) == 0), "#query parsec finished", buf, 2u);
  }

  v68 = self;
  Current = CFAbsoluteTimeGetCurrent();
  self->_queryEndTime = Current;
  v6 = Current - self->_queryStartTime;
  timeOut = self->_timeOut;
  if (v6 > timeOut)
  {
    [(SPParsecQuery *)self updateParsecBeyondTimeoutCount:v6 - timeOut <= 0.05];
  }

  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
  self->_done = 1;
  pthread_mutex_lock(&self->_parsecQueryTaskMutex);
  v8 = [(PRSQueryTask *)self->_parsecQueryTask category_stats];
  [(PRSRankingConfiguration *)self->_rankingInfo setSqfData:v8];

  v9 = [(PRSQueryTask *)self->_parsecQueryTask server_features];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerFeatures:v9];

  v10 = [(PRSQueryTask *)self->_parsecQueryTask serverRelevanceScores];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScores:v10];

  [(PRSQueryTask *)self->_parsecQueryTask serverRelevanceScoreThreshold];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScoreThreshold:?];
  v11 = objc_opt_new();
  v12 = [(PRSQueryTask *)self->_parsecQueryTask engagementSignal];
  v13 = [v11 initWithSFEngagementSignal:v12];
  [(PRSRankingConfiguration *)self->_rankingInfo setIFunScores:v13];

  pthread_mutex_unlock(&self->_parsecQueryTaskMutex);
  [(PRSRankingConfiguration *)self->_rankingInfo setParsecCategoryOrder:self->_parsecResultsCategoryOrder];
  v14 = [(SPParsecQuery *)self cepDictionary];
  v15 = v14;
  if (!v14)
  {
    v15 = [(SPParsecQuery *)self cannedCEPValues];
  }

  [(PRSRankingConfiguration *)self->_rankingInfo setQueryIndependentCategoryProbabilities:v15];
  if (!v14)
  {
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v60 = 400;
  obj = self->_parsecResults;
  v16 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (!v16)
  {
    v17 = -1.0;
    goto LABEL_47;
  }

  v63 = *v77;
  v64 = v16;
  v17 = -1.0;
  do
  {
    for (i = 0; i != v64; ++i)
    {
      if (*v77 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v76 + 1) + 8 * i);
      v19 = [v18 bundleIdentifier];
      v66 = v18;
      if ([v19 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
      }

      else
      {
        v20 = [v18 bundleIdentifier];
        v21 = [v20 hasPrefix:@"com.apple.parsec.app_distr"];

        if (!v21)
        {
          goto LABEL_41;
        }
      }

      v67 = objc_opt_new();
      v22 = objc_opt_new();
      v23 = [v18 results];
      v24 = [v23 count] == 0;

      if (!v24)
      {
        v17 = 0.0;
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v25 = [v66 results];
      v26 = [v25 countByEnumeratingWithState:&v72 objects:v84 count:16];
      if (v26)
      {
        v27 = *v73;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v73 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v72 + 1) + 8 * j);
            v30 = [v29 applicationBundleIdentifier];
            if ([(NSSet *)self->_disabledAppSet containsObject:v30])
            {
              v31 = SPLogForSPLogCategoryDefault();
              v32 = v31;
              if (*MEMORY[0x277D4BF48])
              {
                v33 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v33 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v31, v33))
              {
                *buf = 138412290;
                v81 = v30;
                _os_log_impl(&dword_26B71B000, v32, v33, "Skip de-duping of disabled app %@", buf, 0xCu);
              }

              self = v68;
              [v22 addObject:v29];
            }

            else if ([(NSSet *)self->_setOfVisibleApps containsObject:v30])
            {
              v34 = SPLogForSPLogCategoryDefault();
              v35 = v34;
              if (*MEMORY[0x277D4BF48])
              {
                v36 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v36 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v34, v36))
              {
                *buf = 138412290;
                v81 = v30;
                _os_log_impl(&dword_26B71B000, v35, v36, "De-dupped app with bundle id: %@", buf, 0xCu);
              }

              self = v68;
              [v67 addObject:v29];
              v17 = v17 + 1.0;
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v72 objects:v84 count:16];
        }

        while (v26);
      }

      [v66 removeResultsInArray:v67];
      [v66 removeResultsInArray:v22];
      [v66 setHiddenExtResults:v67];

LABEL_41:
      if ([v66 domain] != 1)
      {
        [v66 setDomain:2];
      }
    }

    v64 = [(NSArray *)obj countByEnumeratingWithState:&v76 objects:v85 count:16];
  }

  while (v64);
LABEL_47:

  *&v37 = v17;
  [(PRSRankingConfiguration *)self->_rankingInfo setNumAppsDeduped:v37];
  if (self->_canceled)
  {
    v38 = "finish_canceled";
  }

  else
  {
    v38 = "finished";
  }

  query_analytics_log_timing(WeakRetained, v38, "parsec", self->_startTime);
  if (!self->_canceled)
  {
    v39 = SPLogForSPLogCategoryDefault();
    v40 = v39;
    if (*MEMORY[0x277D4BF48])
    {
      v41 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v41 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v39, v41))
    {
      v42 = objc_opt_class();
      v43 = qos_class_self();
      *buf = 138412546;
      v81 = v42;
      v82 = 1024;
      LODWORD(v83) = v43;
      _os_log_impl(&dword_26B71B000, v40, v41, "QOS %@ finished: %d", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    v44 = +[SPQueryTask queryQueue];
    v45 = qos_class_self();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__SPParsecQuery_finished__block_invoke;
    block[3] = &unk_279CFE268;
    objc_copyWeak(&v71, buf);
    v70 = WeakRetained;
    v46 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v45, 0, block);
    dispatch_async(v44, v46);

    objc_destroyWeak(&v71);
    objc_destroyWeak(buf);
  }

  v47 = SPLogForSPLogCategoryDefault();
  v48 = v47;
  if (*MEMORY[0x277D4BF48])
  {
    v49 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v49 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v47, v49))
  {
    *buf = 0;
    _os_log_impl(&dword_26B71B000, v48, v49, "#query parsec done", buf, 2u);
  }

  v50 = SPLogForSPLogCategoryDefault();
  v51 = v50;
  if (*MEMORY[0x277D4BF48])
  {
    v52 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v52 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v50, v52))
  {
    v53 = [WeakRetained query];
    v54 = [v53 queryContext];
    v55 = [v54 searchString];
    v56 = [*(&v68->super.super.isa + v60) valueForKey:@"title"];
    *buf = 138412546;
    v81 = v55;
    v82 = 2112;
    v83 = v56;
    _os_log_impl(&dword_26B71B000, v51, v52, "Parsec query: %@ returned results: %@", buf, 0x16u);

    self = v68;
  }

  pthread_mutex_lock(&self->_parsecQueryTaskMutex);
  parsecQueryTask = self->_parsecQueryTask;
  if (parsecQueryTask)
  {
    [(PRSQueryTask *)parsecQueryTask invalidateHandler];
    v58 = self->_parsecQueryTask;
  }

  else
  {
    v58 = 0;
  }

  self->_parsecQueryTask = 0;

  pthread_mutex_unlock(&self->_parsecQueryTaskMutex);
  objc_storeWeak(&self->_resultPipe, 0);
  atomic_fetch_add(sOutstandingQueries, 0xFFFFFFFF);
  v59 = *MEMORY[0x277D85DE8];
}

void __25__SPParsecQuery_finished__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(WeakRetained sourceKind:"queryGroupId") sections:{3, WeakRetained[50]}];
    v4 = [WeakRetained responseHandler];
    (v4)[2](v4, v3);

    v5 = SPLogForSPLogCategoryDefault();
    v6 = v5;
    if (*MEMORY[0x277D4BF48])
    {
      v7 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v7 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v5, v7))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v6, v7, "#query parsec sending results", buf, 2u);
    }

    [*(a1 + 32) externalID];
    kdebug_trace();
    v8 = SPLogForSPLogCategoryTelemetry();
    v9 = [*(a1 + 32) externalID];
    if (v9)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_26B71B000, v8, OS_SIGNPOST_INTERVAL_END, v10, "parsecLatency", " enableTelemetry=YES ", v11, 2u);
      }
    }
  }
}

- (void)queryDidFinishLoading:(id)a3
{
  v4 = a3;
  v5 = (*MEMORY[0x277D286C8])();
  v6 = *(v5 + 16);
  v25 = *v5;
  v26 = v6;
  v27 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecQuery queryDidFinishLoading:]";
  si_tracing_log_span_begin();
  objc_initWeak(&location, self);
  queue = self->_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__SPParsecQuery_queryDidFinishLoading___block_invoke;
  v20[3] = &unk_279CFE818;
  objc_copyWeak(&v23, &location);
  v21 = v4;
  v22 = self;
  v12 = v4;
  dispatch_async(queue, v20);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  v13 = *v5;
  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = *(v5 + 28);
  v18 = *(v5 + 32);
  si_tracing_log_span_end();

  v19 = v26;
  *v5 = v25;
  *(v5 + 16) = v19;
  *(v5 + 32) = v27;
}

void __39__SPParsecQuery_queryDidFinishLoading___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[281] & 1) == 0)
  {
    pthread_mutex_lock((WeakRetained + 216));
    v4 = *(a1 + 32);
    if (v4 == *(v3 + 49))
    {
      v5 = [v4 category_stats];
      v6 = *(v3 + 37);
      *(v3 + 37) = v5;

      v7 = [*(a1 + 32) server_features];
      v8 = *(v3 + 38);
      *(v3 + 38) = v7;

      v3[283] = 1;
      v9 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __39__SPParsecQuery_queryDidFinishLoading___block_invoke_cold_1(v9);
      }
    }

    pthread_mutex_unlock((v3 + 216));
    if (v3[283] == 1)
    {
      v10 = +[SPQueryTask queryQueue];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __39__SPParsecQuery_queryDidFinishLoading___block_invoke_101;
      v11[3] = &unk_279CFE840;
      v11[4] = *(a1 + 40);
      v12 = v3;
      dispatch_async(v10, v11);
    }
  }
}

void __39__SPParsecQuery_queryDidFinishLoading___block_invoke_101(uint64_t a1)
{
  v2 = [*(a1 + 32) resultPipe];
  [v2 storeWillComplete:*(a1 + 40)];
}

- (void)geoUserSessionEntityString:(id)a3
{
  v4 = a3;
  v5 = [(SPParsecQuery *)self resultPipe];
  [v5 setGeoUserSessionEntityString:v4];
}

- (id)findLocalCopies:(id)a3 alternativeResults:(id)a4 withQueryString:(id)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v46 = v9;
    v48 = v8;
    v53 = objc_opt_new();
    v55 = objc_opt_new();
    v54 = objc_opt_new();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v47 = v7;
    obj = v7;
    v51 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (!v51)
    {
      goto LABEL_24;
    }

    v50 = *v66;
    v10 = *MEMORY[0x277D65AF8];
    do
    {
      v11 = 0;
      do
      {
        if (*v66 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v11;
        v12 = *(*(&v65 + 1) + 8 * v11);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v13 = [v12 results];
        v14 = [v13 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v62;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v62 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v61 + 1) + 8 * i);
              v19 = [v18 sectionBundleIdentifier];
              if ([v19 isEqualToString:v10])
              {
                disabledAppSet = self->_disabledAppSet;
                v21 = [v18 applicationBundleIdentifier];
                LOBYTE(disabledAppSet) = [(NSSet *)disabledAppSet containsObject:v21];

                if ((disabledAppSet & 1) == 0)
                {
                  v22 = [v18 title];
                  v23 = [v22 text];
                  [v55 addObject:v23];

                  v24 = [v18 applicationBundleIdentifier];
                  v25 = v54;
LABEL_19:
                  [v25 addObject:v24];

                  continue;
                }
              }

              else
              {
              }

              if (objc_opt_respondsToSelector())
              {
                v26 = [v18 storeIdentifier];

                if (v26)
                {
                  v24 = [v18 storeIdentifier];
                  v25 = v53;
                  goto LABEL_19;
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v15);
        }

        ++v11;
      }

      while (v52 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v51);
LABEL_24:

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v27 = v48;
    v28 = [v27 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v58;
      v31 = *MEMORY[0x277D65AF8];
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v58 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v57 + 1) + 8 * j);
          v34 = [v33 sectionBundleIdentifier];
          if ([v34 isEqualToString:v31])
          {
            v35 = self->_disabledAppSet;
            v36 = [v33 applicationBundleIdentifier];
            LOBYTE(v35) = [(NSSet *)v35 containsObject:v36];

            if ((v35 & 1) == 0)
            {
              v37 = [v33 title];
              v38 = [v37 text];
              [v55 addObject:v38];

              v39 = [v33 applicationBundleIdentifier];
              v40 = v54;
LABEL_36:
              [v40 addObject:v39];

              continue;
            }
          }

          else
          {
          }

          if (objc_opt_respondsToSelector())
          {
            v41 = [v33 storeIdentifier];

            if (v41)
            {
              v39 = [v33 storeIdentifier];
              v40 = v53;
              goto LABEL_36;
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v29);
    }

    if ([v53 count] || objc_msgSend(v55, "count"))
    {
      v42 = v54;
      v9 = v46;
      v43 = [(SPParsecQuery *)self findLocalCopies:v55 appIdentifiers:v54 adamIDs:v53 alternativeResults:v27 withQueryString:v46];
      v7 = v47;
    }

    else
    {
      v43 = 0;
      v9 = v46;
      v7 = v47;
      v42 = v54;
    }

    v8 = v48;
  }

  else
  {
    v43 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (id)findLocalCopies:(id)a3 appIdentifiers:(id)a4 adamIDs:(id)a5 alternativeResults:(id)a6 withQueryString:(id)a7
{
  v173[1] = *MEMORY[0x277D85DE8];
  v111 = a3;
  v126 = a4;
  v11 = a5;
  v99 = a6;
  v124 = a7;
  v12 = objc_opt_new();
  v98 = v11;
  v109 = _makeQueryStringForField(@"kMDItemAdamID", v11);
  v108 = _makeQueryStringForField(@"kMDItemDisplayName", v111);
  v107 = _makeQueryStringForField(@"kMDItemAlternateNames", v111);
  if (v108 && v107)
  {
    v13 = [&stru_287C35638 stringByAppendingFormat:@"(%@) || (%@)", v108, v107];
    v14 = v13;
    if (!v109)
    {
      v15 = v13;
      goto LABEL_8;
    }

    v15 = [(__CFString *)v13 stringByAppendingString:@" || "];

    goto LABEL_6;
  }

  v15 = &stru_287C35638;
  if (v109)
  {
LABEL_6:
    v16 = v15;
    v15 = [(__CFString *)v15 stringByAppendingFormat:@"(%@)", v109];
  }

LABEL_8:
  if ([(__CFString *)v15 length])
  {
    v110 = v15;
  }

  else
  {

    v110 = @"false";
  }

  v112 = [(SPParsecQuery *)self resultPipe];
  v17 = [v112 query];
  v18 = [v17 hash];

  v19 = objc_alloc(MEMORY[0x277D65838]);
  v20 = [v112 query];
  v21 = [v20 queryContext];
  v22 = [v21 keyboardLanguage];
  v23 = [v112 query];
  v24 = [v23 queryContext];
  v25 = -v18;
  [v24 currentTime];
  v106 = [v19 initWithSearchString:v124 queryID:v25 language:v22 currentTime:?];

  v26 = [v112 query];
  v27 = [v26 queryContext];
  v28 = [v27 queryKind];
  v29 = [v112 query];
  v30 = [v29 queryContext];
  v31 = [v30 keyboardLanguage];
  v115 = [v106 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:*MEMORY[0x277D65B88] spotlightQuery:v110 userQuery:v124 tokenString:0 queryKind:v28 flags:0 keyboardLanguage:v31];

  v113 = objc_alloc_init(MEMORY[0x277CC34A0]);
  [v113 setQueryID:v25];
  v173[0] = *MEMORY[0x277CCA1A0];
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:1];
  [v113 setProtectionClasses:v32];

  [v113 setEntitledAttributes:1];
  v33 = rankingPrefetchedAttributesArray();
  [v113 setFetchAttributes:v33];

  v34 = [v115 rankingQueries];
  [v113 setRankingQueries:v34];

  v125 = *MEMORY[0x277D4BEF0];
  v172 = *MEMORY[0x277D4BEF0];
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v172 count:1];
  [v113 setBundleIDs:v35];

  [v113 setPriorityIndexQuery:1];
  v36 = [v112 query];
  v37 = [v36 queryContext];
  [v37 currentTime];
  v39 = v38;

  if (findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__onceToken != -1)
  {
    [SPParsecQuery findLocalCopies:appIdentifiers:adamIDs:alternativeResults:withQueryString:];
  }

  v40 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:66307 valueOptions:0 capacity:256];
  v114 = [v113 fetchAttributes];
  v41 = [v114 count];
  v105 = [v112 query];
  v42 = [v105 queryContext];
  [v42 currentTime];
  v44 = v43;

  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x2020000000;
  v167 = 0;
  v164[0] = 0;
  v164[1] = v164;
  v164[2] = 0x2020000000;
  v165 = 0;
  v45 = [(NSSet *)self->_disabledAppSet copy];
  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2;
  v159[3] = &unk_279CFE890;
  v121 = v45;
  v160 = v121;
  v163 = v44;
  v46 = v40;
  v161 = v46;
  v162 = v164;
  v102 = MEMORY[0x26D67F7A0](v159);
  v47 = dispatch_group_create();
  dispatch_group_enter(v47);
  v48 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v49 = objc_opt_new();
  Current = CFAbsoluteTimeGetCurrent();
  if (v41)
  {
    for (i = 0; i != v41; ++i)
    {
      v52 = [v115 requiredAttributes];
      v53 = [v114 objectAtIndexedSubscript:i];
      v54 = [v52 containsObject:v53];

      if (v54)
      {
        [v48 addIndex:i];
      }
    }
  }

  v55 = [v113 fetchAttributes];
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x2020000000;
  v158 = 0;
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_3;
  v147[3] = &unk_279CFE8E0;
  v95 = v46;
  v148 = v95;
  v97 = v55;
  v149 = v97;
  v96 = v48;
  v150 = v96;
  v93 = v126;
  v151 = v93;
  v94 = v12;
  v152 = v94;
  v104 = v49;
  v153 = v104;
  v155 = v157;
  v56 = v47;
  v154 = v56;
  v156 = Current;
  v57 = MEMORY[0x26D67F7A0](v147);
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_161;
  v142[3] = &unk_279CFE908;
  v145 = v164;
  v146 = v157;
  v100 = v57;
  v144 = v100;
  group = v56;
  v143 = group;
  v101 = MEMORY[0x26D67F7A0](v142);
  v58 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v110 queryContext:v113];
  v116 = v58;
  if (v58)
  {
    objc_initWeak(location, self);
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 3221225472;
    v138[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2_164;
    v138[3] = &unk_279CFE958;
    v140 = v166;
    objc_copyWeak(&v141, location);
    v139 = v102;
    [v58 setFoundItemsHandler:v138];
    v135[0] = MEMORY[0x277D85DD0];
    v135[1] = 3221225472;
    v135[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_4_166;
    v135[3] = &unk_279CFE9A8;
    objc_copyWeak(&v137, location);
    v136 = v100;
    [v58 setPriorityGatherEndedHandler:v135];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_6;
    v132[3] = &unk_279CFE9D0;
    objc_copyWeak(&v134, location);
    v133 = v101;
    [v58 setCompletionHandler:v132];
    [v58 start];

    objc_destroyWeak(&v134);
    objc_destroyWeak(&v137);

    objc_destroyWeak(&v141);
    objc_destroyWeak(location);
    v59 = group;
  }

  else
  {
    v59 = group;
    dispatch_group_leave(group);
  }

  v60 = dispatch_time(0, 500000000);
  dispatch_group_wait(v59, v60);
  v117 = [v104 allValues];
  v119 = 0;
LABEL_22:
  if ([v117 count] > v119)
  {
    v118 = [v117 objectAtIndexedSubscript:?];
    v61 = [v118 results];
    v62 = [v61 copy];

    v120 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v62, "count")}];
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obj = v62;
    v63 = [obj countByEnumeratingWithState:&v128 objects:v171 count:16];
    if (!v63)
    {
      goto LABEL_49;
    }

    v127 = *v129;
    while (1)
    {
      for (j = 0; j != v63; ++j)
      {
        if (*v129 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v65 = *(*(&v128 + 1) + 8 * j);
        v66 = [v65 bundleID];
        if ([v66 isEqualToString:v125])
        {
          v67 = [v65 identifier];
          v68 = [v121 containsObject:v67];

          if (v68)
          {
            v69 = SPLogForSPLogCategoryDefault();
            v70 = v69;
            if (*MEMORY[0x277D4BF48])
            {
              v71 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v71 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v69, v71))
            {
              v72 = [v65 identifier];
              v73 = v72;
              v74 = [v72 UTF8String];
              LODWORD(location[0]) = 136315138;
              *(location + 4) = v74;
              _os_log_impl(&dword_26B71B000, v70, v71, "[ProtectedApps] skipping local copy for disabled app %s", location, 0xCu);
            }

            goto LABEL_47;
          }
        }

        else
        {
        }

        WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
        v76 = [WeakRetained query];
        v77 = [v76 queryContext];
        v70 = [v65 resultWithTime:v124 searchString:0 isCorrectedQuery:v77 withQueryContext:v39];

        if (v70)
        {
          [v70 setType:26];
          v78 = [v65 rankingItem];
          v79 = [v78 L2FeatureVector];
          if (v65)
          {
            v80 = v79 == 0;
          }

          else
          {
            v80 = 1;
          }

          v81 = !v80;

          if (v81)
          {
            v168[0] = @"score";
            v82 = MEMORY[0x277CCABB0];
            [v78 score];
            v83 = [v82 numberWithFloat:?];
            v169[0] = v83;
            v168[1] = @"raw score";
            v84 = MEMORY[0x277CCABB0];
            [v78 rawScore];
            v85 = [v84 numberWithFloat:?];
            v169[1] = v85;
            v168[2] = @"original score";
            v86 = MEMORY[0x277CCABB0];
            v87 = [v78 L2FeatureVector];
            [v87 originalL2Score];
            v88 = [v86 numberWithFloat:?];
            v169[2] = v88;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:3];
            [v70 setLocalFeatures:v89];
          }

          [v120 addObject:v70];
          v90 = [v65 rankingItem];
          [v90 score];
          [v70 setL2score:?];
        }

        [v65 clearClientData];
LABEL_47:
      }

      v63 = [obj countByEnumeratingWithState:&v128 objects:v171 count:16];
      if (!v63)
      {
LABEL_49:

        [v118 setResults:v120];
        ++v119;
        v58 = v116;
        goto LABEL_22;
      }
    }
  }

  _Block_object_dispose(v157, 8);
  _Block_object_dispose(v164, 8);
  _Block_object_dispose(v166, 8);

  v91 = *MEMORY[0x277D85DE8];

  return v117;
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCA198];
  v5[0] = *MEMORY[0x277CCA190];
  v5[1] = v0;
  v1 = *MEMORY[0x277CCA1A8];
  v5[2] = *MEMORY[0x277CCA1A0];
  v5[3] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__protectionClasses;
  findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__protectionClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v32;
    v5 = *MEMORY[0x277D4BEF0];
    v29 = *MEMORY[0x277CC2500];
    allocator = *MEMORY[0x277CBECE8];
    v27 = *MEMORY[0x277D4BEF0];
    do
    {
      v6 = 0;
      v26 = v3;
      do
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = [v7 bundleID];
        if ([v8 isEqualToString:v5])
        {
          v9 = *(a1 + 32);
          v10 = [v7 uniqueIdentifier];
          LOBYTE(v9) = [v9 containsObject:v10];

          if (v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
        }

        v11 = [v7 attributeSet];
        v12 = [v11 attributeDictionary];
        v13 = [v12 objectForKey:v29];
        v14 = [v13 UTF8String];

        if (v14)
        {
          v15 = [v7 attributeSet];
          v16 = [v15 expirationDate];

          if (!v16 || ([v16 timeIntervalSinceReferenceDate], v17 >= *(a1 + 56)))
          {
            v18 = v4;
            v19 = SPResultValueItemCreate2(v7);
            os_unfair_lock_lock(&findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__heapLock);
            v20 = NSMapGet(*(a1 + 40), v14);
            if (!v20)
            {
              v20 = CFBinaryHeapCreate(allocator, 0, &sResultArrayBinaryHeapCallbacks, 0);
              NSMapInsert(*(a1 + 40), v14, v20);
              CFRelease(v20);
            }

            v21 = findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__protectionClasses;
            if (!findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__protectionClasses)
            {
              __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2_cold_2();
            }

            v22 = [v7 protection];
            if (([v21 containsObject:v22] & 1) == 0)
            {
              v23 = [v7 protection];
              if (([v23 isEqualToString:@"Priority"] & 1) == 0)
              {
                __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2_cold_1();
              }
            }

            CFBinaryHeapAddValue(v20, v19);
            sprvreleaseCallback(0, v19);
            os_unfair_lock_unlock(&findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString__heapLock);
            v4 = v18;
            v3 = v26;
          }

          v5 = v27;
        }

LABEL_22:
        ++v6;
      }

      while (v3 != v6);
      v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v3);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v24 = *MEMORY[0x277D85DE8];
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v77 = *MEMORY[0x277D85DE8];
  memset(&v73, 0, sizeof(v73));
  NSEnumerateMapTable(&v73, *(a1 + 32));
  v71 = 0;
  v72 = 0;
  if (NSNextMapEnumeratorPair(&v73, &v71, &v72))
  {
    v52 = 0;
    v50 = v63;
    v2 = *MEMORY[0x277CC2678];
    v54 = v1;
    v49 = v2;
    while (1)
    {
      Count = CFBinaryHeapGetCount(v72);
      v4 = objc_alloc(MEMORY[0x277CCACA8]);
      v5 = [v4 initWithCString:v71 encoding:4];
      v46[1] = v46;
      bzero(v46 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * Count);
      v55 = (v46 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      CFBinaryHeapGetValues(v72, v55);
      v6 = SPL1Threshold();
      v47 = v7;
      v48 = v6;
      if (Count >= 1)
      {
        break;
      }

LABEL_36:

      if (!NSNextMapEnumeratorPair(&v73, &v71, &v72))
      {
        goto LABEL_39;
      }
    }

    v8 = 0;
    v51 = Count;
    v53 = v5;
    while (1)
    {
      v9 = v55[v8];
      v10 = *(v9 + 3);
      v57 = *(v9 + 2);
      v58 = v10;
      v11 = *(v9 + 4);
      v60 = *(v9 + 8);
      v59 = [v60 attributeSet];
      v12 = [v59 attributeDictionary];
      v13 = [v12 objectForKey:v2];
      objc_opt_class();
      v61 = v13;
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v21 = v60;
LABEL_35:

      if (++v8 == Count)
      {
        goto LABEL_36;
      }
    }

    v56 = v11;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = [*(v1 + 40) objectsAtIndexes:*(v1 + 48)];
    v15 = [v14 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v68;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = [v12 objectForKey:*(*(&v67 + 1) + 8 * i)];

          if (v20)
          {
            ++v17;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v16);
    }

    v22 = SSCompactRankingAttrsAlloc();
    v1 = v54;
    v23 = *(v54 + 48);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v63[0] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_4;
    v63[1] = &unk_279CFE8B8;
    v64 = v12;
    v65 = *(v1 + 40);
    v66 = v22;
    [v23 enumerateIndexesUsingBlock:v62];
    v24 = [objc_alloc(MEMORY[0x277D65830]) initWithAttrs:v22 isServerAlternativeResult:1];
    v5 = v53;
    if ([v53 isEqualToString:@"com.apple.application"])
    {
      v25 = *(v1 + 56);
      v26 = [v24 identifier];
      if (![v25 containsObject:v26])
      {
        v11 = v56;
LABEL_33:
        v21 = v60;

        goto LABEL_34;
      }

      v27 = *(v1 + 64);
      v28 = [v24 identifier];
      LOBYTE(v27) = [v27 containsObject:v28];

      if (v27)
      {
        v5 = v53;
        v11 = v56;
        v21 = v60;
LABEL_34:

        v2 = v49;
        Count = v51;
        goto LABEL_35;
      }

      v29 = *(v1 + 64);
      v30 = [v24 identifier];
      [v29 addObject:v30];

      v5 = v53;
    }

    v26 = [[SPSearchCSResult alloc] initWithRankingItem:v24 clientData:v9];
    v31 = v57;
    v32 = v24;
    v33 = v58;
    [(SPSearchResult *)v26 setScore:v57, v58];
    v34 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v9 + 5)];
    [(SPSearchResult *)v26 setInterestingDate:v34];

    [(SPSearchResult *)v26 setBundleID:v5];
    v11 = v56;
    [(SPSearchResult *)v26 setDataclass:v56];
    v35 = __PAIR128__(v33, v31) >= __PAIR128__(v47, v48);
    v24 = v32;
    if (!v35)
    {
      [v32 setEligibleForDemotion:1];
    }

    v36 = [v61 hasPrefix:@"com.apple.siri."];
    v1 = v54;
    if (v36)
    {
      v37 = [(SPSearchResult *)v26 rankingItem];
      v38 = [v37 L2FeatureVector];
      [v38 setIsSiriAction:1];

      v11 = v56;
    }

    v39 = [*(v1 + 72) objectForKey:v5];
    if (!v39)
    {
      v39 = objc_opt_new();
      [v39 setDomain:1];
      [v39 setBundleIdentifier:v5];
      if ([v5 isEqualToString:@"com.apple.application"])
      {
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v41 = [v40 localizedStringForKey:@"DOMAIN_APPLICATION" value:&stru_287C35638 table:@"Search"];
        [v39 setTitle:v41];

        v5 = v53;
      }

      else
      {
        v40 = [MEMORY[0x277D4BE80] displayNameForBundleIdentifer:v5];
        [v39 setTitle:v40];
      }

      [*(v1 + 72) setObject:v39 forKey:v5];
      v11 = v56;
    }

    [v39 addResults:v26];
    ++v52;

    goto LABEL_33;
  }

  v52 = 0;
LABEL_39:
  *(*(*(v1 + 88) + 8) + 24) = 1;
  dispatch_group_leave(*(v1 + 80));
  v42 = CFAbsoluteTimeGetCurrent() - *(v1 + 96);
  v43 = SPLogForSPLogCategoryDefault();
  v44 = v43;
  if (v42 * 1000000000.0 <= 500000000.0)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v75 = v42;
      _os_log_impl(&dword_26B71B000, v44, OS_LOG_TYPE_DEFAULT, "Local copy query took %lf seconds", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_3_cold_1(v52, v44, v42);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v7 = [v3 objectForKey:v4];

  v5 = v7;
  if (v7)
  {
    v6 = *(a1 + 48);
    SSCompactRankingAttrsInsertValue();
    v5 = v7;
  }
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_161(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && !v3 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    v3 = 0;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = v3;
    dispatch_group_leave(*(a1 + 32));
    v3 = v4;
  }
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_2_164(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[44];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_3_165;
    v7[3] = &unk_279CFE930;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_4_166(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[44];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_5;
    block[3] = &unk_279CFE980;
    v6 = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[44];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_7;
    v7[3] = &unk_279CFE930;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)query:(id)a3 didFinishWithResults:(id)a4 withSuggestions:(id)a5 withCorrections:(id)a6 withAlternativeResults:(id)a7 suggestionsAreBlended:(BOOL)a8
{
  v230 = *MEMORY[0x277D85DE8];
  v178 = a3;
  v12 = a4;
  v133 = a5;
  v132 = a6;
  v138 = a7;
  v134 = [v12 count];
  v163 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v134];
  v177 = objc_opt_new();
  v173 = objc_opt_new();
  v172 = objc_opt_new();
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  obj = v12;
  v157 = [obj countByEnumeratingWithState:&v216 objects:v229 count:16];
  if (v157)
  {
    v154 = *v217;
    v151 = *MEMORY[0x277D65CD8];
    v147 = *MEMORY[0x277D65C20];
    v145 = *MEMORY[0x277D65C28];
    v143 = *MEMORY[0x277D65C80];
    v141 = *MEMORY[0x277D65C78];
    v139 = *MEMORY[0x277D65C30];
    v136 = *MEMORY[0x277D65C38];
    v130 = *MEMORY[0x277D65C40];
    v127 = *MEMORY[0x277D65C48];
    v160 = *MEMORY[0x277D65AF8];
    do
    {
      for (i = 0; i != v157; ++i)
      {
        if (*v217 != v154)
        {
          objc_enumerationMutation(obj);
        }

        v168 = *(*(&v216 + 1) + 8 * i);
        v174 = [v168 bundleIdentifier];
        if (([v174 isEqualToString:v151] & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v147) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v145) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v143) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v141) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v139) & 1) != 0 || (objc_msgSend(v174, "hasPrefix:", @"com.apple.parsec.itunes.") & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v136) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v130) & 1) != 0 || (objc_msgSend(v174, "isEqualToString:", v127) & 1) != 0 || objc_msgSend(v174, "isEqualToString:", v160))
        {
          [v163 setObject:v168 forKey:v174];
        }

        if ([v174 isEqualToString:v160])
        {
          v13 = [MEMORY[0x277CCAB58] indexSet];
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v14 = [v168 results];
          v15 = [v14 countByEnumeratingWithState:&v212 objects:v228 count:16];
          if (v15)
          {
            v16 = *v213;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v213 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v212 + 1) + 8 * j);
                disabledAppSet = self->_disabledAppSet;
                v20 = [v18 applicationBundleIdentifier];
                LODWORD(disabledAppSet) = [(NSSet *)disabledAppSet containsObject:v20];

                if (disabledAppSet)
                {
                  [v13 addIndex:0];
                }

                else
                {
                  v21 = [v18 title];
                  v22 = [v21 text];
                  if (v22)
                  {
                    v23 = [v18 applicationBundleIdentifier];
                    v24 = v23 == 0;

                    if (!v24)
                    {
                      v25 = [v18 title];
                      v26 = [v25 text];
                      [v173 addObject:v26];

                      v27 = [v18 applicationBundleIdentifier];
                      [v172 addObject:v27];
                    }
                  }

                  else
                  {
                  }
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v212 objects:v228 count:16];
            }

            while (v15);
          }

          if ([v13 count])
          {
            v28 = [MEMORY[0x277CBEB18] array];
            v29 = [v168 results];
            v209[0] = MEMORY[0x277D85DD0];
            v209[1] = 3221225472;
            v209[2] = __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke;
            v209[3] = &unk_279CFE9F8;
            v13 = v13;
            v210 = v13;
            v30 = v28;
            v211 = v30;
            [v29 enumerateObjectsUsingBlock:v209];

            if ([v30 count])
            {
              v31 = [objc_alloc(MEMORY[0x277D65848]) initWithResultSection:v168];
              v32 = [MEMORY[0x277CBEB40] orderedSetWithArray:v30];
              [v31 setResultSet:v32];

              [v163 setObject:v31 forKey:v160];
            }

            else
            {
              [v163 removeObjectForKey:v160];
            }
          }
        }

        else
        {
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
          v13 = [v168 results];
          v33 = [v13 countByEnumeratingWithState:&v205 objects:v227 count:16];
          if (v33)
          {
            v34 = *v206;
            do
            {
              for (k = 0; k != v33; ++k)
              {
                if (*v206 != v34)
                {
                  objc_enumerationMutation(v13);
                }

                v36 = *(*(&v205 + 1) + 8 * k);
                if (objc_opt_respondsToSelector())
                {
                  v37 = [v36 storeIdentifier];
                  v38 = v37 == 0;

                  if (!v38)
                  {
                    v39 = [v36 storeIdentifier];
                    [v177 addObject:v39];
                  }
                }
              }

              v33 = [v13 countByEnumeratingWithState:&v205 objects:v227 count:16];
            }

            while (v33);
          }
        }
      }

      v157 = [obj countByEnumeratingWithState:&v216 objects:v229 count:16];
    }

    while (v157);
  }

  if ([v177 count])
  {
    v40 = 1;
  }

  else
  {
    v40 = [v173 count] != 0;
  }

  v41 = *MEMORY[0x277D65AF8];
  v42 = [v163 objectForKey:*MEMORY[0x277D65AF8]];

  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v40;
  }

  if (v43)
  {
    v44 = [MEMORY[0x277D65848] mutableSectionWithBundleId:v41];
    [v163 setObject:v44 forKey:v41];
  }

  v45 = [v163 allKeys];
  v146 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v134];
  v169 = SSEnableSpotlightTopHitPersonalizedRanking();
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v140 = v45;
  v165 = [v140 countByEnumeratingWithState:&v201 objects:v226 count:16];
  if (!v165)
  {
    v144 = 0;
    goto LABEL_84;
  }

  v144 = 0;
  v46 = *v202;
  v152 = *MEMORY[0x277D65C28];
  do
  {
    for (m = 0; m != v165; ++m)
    {
      if (*v202 != v46)
      {
        objc_enumerationMutation(v140);
      }

      v48 = *(*(&v201 + 1) + 8 * m);
      WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
      v50 = [WeakRetained query];
      v51 = [v50 cancelled];

      if (v51)
      {
        v68 = v140;
        goto LABEL_160;
      }

      v175 = [v163 objectForKey:v48];
      if (v169)
      {
        v52 = MEMORY[0x277D65978];
        v53 = [v178 queryContext];
        [v53 currentTime];
        [v52 prepareServerSectionRankingItemsForTopHitNomination:v175 currentTime:?];
      }

      if ([v48 isEqualToString:v41])
      {
        v54 = [v178 queryString];
        v55 = [(SPParsecQuery *)self findLocalCopies:v173 appIdentifiers:v172 adamIDs:v177 alternativeResults:v138 withQueryString:v54];

        v144 = v55;
      }

      else
      {
        v54 = [objc_alloc(MEMORY[0x277D65848]) initWithResultSection:v175];
        if (_os_feature_enabled_impl())
        {
          if ([v48 isEqualToString:v152])
          {
            v56 = [(SPParsecQuery *)self mapsParsecRanker];
            v57 = v56 == 0;

            if (!v57)
            {
              v58 = SPLogForSPLogCategoryDefault();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_26B71B000, v58, OS_LOG_TYPE_DEFAULT, "Geo personalization enabled, reranking geo results with local signals", buf, 2u);
              }

              v59 = [v175 results];
              v60 = -[SPParsecQuery rerankMapsResultsWithLocalSignals:forQueryId:](self, "rerankMapsResultsWithLocalSignals:forQueryId:", v59, [v178 queryIdent]);
              [v54 setResults:v60];
            }
          }
        }

        if (v169)
        {
          v61 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v54 bundleIdentifier];
            *buf = 138412290;
            v225 = v62;
            _os_log_impl(&dword_26B71B000, v61, OS_LOG_TYPE_DEFAULT, "TopHit nomination for server results based on local engagement and personalization signals. Server section: %@", buf, 0xCu);
          }

          v63 = MEMORY[0x277D65978];
          v155 = [v178 queryString];
          v161 = [(SPParsecQuery *)self resultPipe];
          v158 = [v161 query];
          v64 = [v158 queryContext];
          v65 = [v64 keyboardLanguage];
          v66 = [v178 queryContext];
          [v66 currentTime];
          v67 = [v63 nominateServerTopHitForSection:v54 queryString:v155 language:v65 currentTime:?];
          [v54 setResults:v67];
        }

        [v146 setObject:v54 forKey:v48];
      }
    }

    v165 = [v140 countByEnumeratingWithState:&v201 objects:v226 count:16];
  }

  while (v165);
LABEL_84:

  v148 = objc_opt_new();
  v176 = objc_opt_new();
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obja = obj;
  v162 = [obja countByEnumeratingWithState:&v197 objects:v223 count:16];
  if (v162)
  {
    v159 = *v198;
    v156 = *MEMORY[0x277D65C88];
    v69 = *MEMORY[0x277D65C70];
    v142 = *MEMORY[0x277D65CD8];
    v137 = *MEMORY[0x277D65C20];
    v135 = *MEMORY[0x277D65C28];
    v131 = *MEMORY[0x277D65C80];
    v128 = *MEMORY[0x277D65C78];
    v126 = *MEMORY[0x277D65C30];
    v125 = *MEMORY[0x277D65C38];
    do
    {
      v70 = 0;
      do
      {
        if (*v198 != v159)
        {
          v71 = v70;
          objc_enumerationMutation(obja);
          v70 = v71;
        }

        v166 = v70;
        v72 = *(*(&v197 + 1) + 8 * v70);
        v170 = [v72 bundleIdentifier];
        if ([v170 isEqualToString:v156])
        {
          v195 = 0u;
          v196 = 0u;
          v193 = 0u;
          v194 = 0u;
          v73 = [v72 results];
          v74 = [v73 countByEnumeratingWithState:&v193 objects:v222 count:16];
          if (v74)
          {
            v75 = *v194;
            do
            {
              for (n = 0; n != v74; ++n)
              {
                if (*v194 != v75)
                {
                  objc_enumerationMutation(v73);
                }

                v77 = *(*(&v193 + 1) + 8 * n);
                v78 = MEMORY[0x277D659B8];
                v79 = [v178 queryContext];
                v80 = [v78 buildResultWithResult:v77 queryContext:v79];

                [v176 addObject:v80];
              }

              v74 = [v73 countByEnumeratingWithState:&v193 objects:v222 count:16];
            }

            while (v74);
          }
        }

        else if ([v170 isEqualToString:v69])
        {
          v153 = [objc_alloc(MEMORY[0x277D65848]) initWithResultSection:v72];
          v81 = objc_opt_new();
          v191 = 0u;
          v192 = 0u;
          v189 = 0u;
          v190 = 0u;
          v82 = [v72 results];
          v83 = [v82 countByEnumeratingWithState:&v189 objects:v221 count:16];
          if (v83)
          {
            v84 = *v190;
            do
            {
              for (ii = 0; ii != v83; ++ii)
              {
                if (*v190 != v84)
                {
                  objc_enumerationMutation(v82);
                }

                v86 = *(*(&v189 + 1) + 8 * ii);
                v87 = MEMORY[0x277D659B8];
                v88 = [v178 queryContext];
                v89 = [v87 buildResultWithResult:v86 queryContext:v88];

                [v89 setSectionBundleIdentifier:v69];
                [v81 addObject:v89];
              }

              v83 = [v82 countByEnumeratingWithState:&v189 objects:v221 count:16];
            }

            while (v83);
          }

          [v153 setResults:v81];
          [v148 addObject:v153];
        }

        else if (([v170 isEqualToString:v142] & 1) != 0 || (objc_msgSend(v170, "isEqualToString:", v137) & 1) != 0 || (objc_msgSend(v170, "isEqualToString:", v135) & 1) != 0 || (objc_msgSend(v170, "isEqualToString:", v131) & 1) != 0 || (objc_msgSend(v170, "isEqualToString:", v128) & 1) != 0 || (objc_msgSend(v170, "isEqualToString:", v126) & 1) != 0 || (objc_msgSend(v170, "hasPrefix:", @"com.apple.parsec.itunes.") & 1) != 0 || objc_msgSend(v170, "isEqualToString:", v125))
        {
          v90 = [v146 objectForKey:v170];
          if (v90)
          {
            [v148 addObject:v90];
          }

          else
          {
            [v148 addObject:v72];
          }
        }

        else
        {
          [v148 addObject:v72];
        }

        v70 = v166 + 1;
      }

      while (v166 + 1 != v162);
      v91 = [obja countByEnumeratingWithState:&v197 objects:v223 count:16];
      v162 = v91;
    }

    while (v91);
  }

  if ([v144 count])
  {
    v92 = [v148 arrayByAddingObjectsFromArray:v144];
  }

  else
  {
    v92 = v148;
  }

  v93 = v92;

  v171 = [MEMORY[0x277CBEB18] array];
  v167 = objc_opt_new();
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = v93;
  v94 = [obj countByEnumeratingWithState:&v185 objects:v220 count:16];
  if (v94)
  {
    v95 = *v186;
    do
    {
      for (jj = 0; jj != v94; ++jj)
      {
        if (*v186 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v97 = *(*(&v185 + 1) + 8 * jj);
        v98 = [objc_alloc(MEMORY[0x277D65848]) initWithResultSection:v97];
        [v98 setSource:2];
        [v171 addObject:v98];
        v99 = [v97 bundleIdentifier];

        if (v99)
        {
          v100 = [v97 bundleIdentifier];
        }

        else
        {
          v101 = [v97 results];
          if (!v101)
          {
            goto LABEL_138;
          }

          v102 = [v97 results];
          v103 = [v102 count] == 0;

          if (v103)
          {
            goto LABEL_138;
          }

          v104 = [v97 results];
          v105 = [v104 objectAtIndex:0];
          v100 = [v105 sectionBundleIdentifier];
        }

        if (v100)
        {
          [v97 setBundleIdentifier:v100];
          [v167 addObject:v100];
        }

LABEL_138:
      }

      v94 = [obj countByEnumeratingWithState:&v185 objects:v220 count:16];
    }

    while (v94);
  }

  if (![v171 count] && !objc_msgSend(v133, "count"))
  {
    v106 = objc_loadWeakRetained(&self->_resultPipe);
    query_analytics_log_timing(v106, "finish_zero", "parsec", self->_startTime);
  }

  if (v133)
  {
    v107 = SPLogForSPLogCategoryDefault();
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
      v225 = v133;
      _os_log_impl(&dword_26B71B000, v108, v109, "Received suggestions: %@", buf, 0xCu);
    }
  }

  v110 = [(SPParsecQuery *)self resultPipe];
  v111 = [v110 query];
  v112 = [v111 disabledBundles];
  if ([v112 count])
  {
    v113 = MEMORY[0x277CBEB98];
    v114 = [v110 query];
    v115 = [v114 disabledBundles];
    v116 = [v113 setWithArray:v115];
  }

  else
  {
    v116 = 0;
  }

  if (!self->_canceled)
  {
    v117 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      [SPParsecQuery query:v178 didFinishWithResults:? withSuggestions:? withCorrections:? withAlternativeResults:? suggestionsAreBlended:?];
    }

    v118 = [v178 category_stats];
    [(SPParsecQuery *)self setCategory_stats:v118];

    v119 = [v178 server_features];
    [(SPParsecQuery *)self setServer_features:v119];
  }

  if ([v167 count])
  {
    v120 = [v167 copy];
    [(SPParsecQuery *)self setParsecResultsCategoryOrder:v120];
  }

  [(SPParsecQuery *)self setQuerySuggestionResults:v176];
  self->_suggestionsAreBlended = a8;
  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke_189;
  block[3] = &unk_279CFEA20;
  objc_copyWeak(&v184, buf);
  v122 = v171;
  v181 = v122;
  v123 = v116;
  v182 = v123;
  v183 = v178;
  dispatch_async(queue, block);
  [v110 addQueryCorrections:v132];

  objc_destroyWeak(&v184);
  objc_destroyWeak(buf);

  v68 = v148;
LABEL_160:

  v124 = *MEMORY[0x277D85DE8];
}

void __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) containsIndex:a3])
  {
    v6 = SPLogForSPLogCategoryDefault();
    v7 = v6;
    if (*MEMORY[0x277D4BF48])
    {
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v8 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v6, v8))
    {
      v9 = [v5 applicationBundleIdentifier];
      v11 = 136315138;
      v12 = [v9 UTF8String];
      _os_log_impl(&dword_26B71B000, v7, v8, "[ProtectedApps] filtered out app store result for %s", &v11, 0xCu);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v5];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke_189(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained && (WeakRetained[281] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          if (!v11 || ([a1[5] containsObject:v11] & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    if (a1[6] == *(v3 + 49))
    {
      v12 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke_189_cold_1(v4);
      }

      v13 = [a1[6] feedbackQueryIdentifier];
      v14 = *(v3 + 39);
      *(v3 + 39) = v13;

      objc_storeStrong(v3 + 50, v4);
    }

    if (*(v3 + 50) || !*(v3 + 49))
    {
      [v3 finished];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)rerankMapsResultsWithLocalSignals:(id)a3 forQueryId:(int64_t)a4
{
  v6 = a3;
  v7 = logForCSLogCategoryPersonalization();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "rerankMapsResultsWithLocalSignals", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = [(SPParsecQuery *)self mapsParsecRanker];
  v12 = [v11 rerankMapsResultsWithLocalSignals:v6 forQueryId:a4];

  v13 = v10;
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v14, OS_SIGNPOST_INTERVAL_END, v8, "rerankMapsResultsWithLocalSignals", &unk_26B77CA4F, v16, 2u);
  }

  return v12;
}

- (SPParsecQuery)initWithUserQuery:(id)a3 queryGroupId:(unint64_t)a4 options:(unint64_t)a5 queryContext:(id)a6
{
  v16.receiver = self;
  v16.super_class = SPParsecQuery;
  v6 = [(SPKQuery *)&v16 initWithUserQuery:a3 queryGroupId:a4 options:0 queryContext:a6];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INTERACTIVE, 0);

    v9 = dispatch_queue_create(0, v8);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = [MEMORY[0x277D4BE88] sharedInstance];
    networkConditions = v6->_networkConditions;
    v6->_networkConditions = v11;

    v13 = objc_opt_new();
    mapsParsecRanker = v6->_mapsParsecRanker;
    v6->_mapsParsecRanker = v13;

    [(SPParsecQuery *)v6 checkParsecState];
    pthread_mutex_init(&v6->_parsecQueryTaskMutex, 0);
  }

  return v6;
}

- (void)cancel
{
  self->_canceled = 1;
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
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_26B71B000, v4, v5, "#query parsec cancel", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SPParsecQuery_cancel__block_invoke;
  block[3] = &unk_279CFE290;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __23__SPParsecQuery_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 48);
    query_analytics_log_timing(v3, "cancel", "parsec", v2[52]);
    pthread_mutex_lock((v2 + 27));
    v4 = v2[49];
    if (v4)
    {
      [v4 invalidateHandler];
      v5 = v2[50];
      v2[50] = 0;

      v6 = v2[49];
      v2[49] = 0;
    }

    pthread_mutex_unlock((v2 + 27));
    v7 = +[SPQueryTask queryQueue];
    v8 = qos_class_self();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __23__SPParsecQuery_cancel__block_invoke_2;
    v12[3] = &unk_279CFE840;
    v13 = v3;
    v9 = v2;
    v14 = v9;
    v10 = v3;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v8, 0, v12);
    dispatch_async(v7, v11);

    if ((*(v9 + 282) & 1) == 0)
    {
      atomic_fetch_add(sOutstandingQueries, 0xFFFFFFFF);
    }
  }
}

void __23__SPParsecQuery_cancel__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) query];
  v3 = [v2 cancelled];

  if ((v3 & 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 40) sourceKind:"queryGroupId") sections:{3, 0}];
    v5 = [*(a1 + 40) responseHandler];
    (v5)[2](v5, v4);
  }

  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (*MEMORY[0x277D4BF48])
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v6, v8))
  {
    *v9 = 0;
    _os_log_impl(&dword_26B71B000, v7, v8, "#query parsec sending cancel", v9, 2u);
  }
}

- (BOOL)shouldReturnEarly
{
  v3.receiver = self;
  v3.super_class = SPParsecQuery;
  if ([(SPKQuery *)&v3 shouldReturnEarly])
  {
    return 1;
  }

  else
  {
    return [objc_opt_class() isParsecEnabled] ^ 1;
  }
}

- (BOOL)available
{
  if (![objc_opt_class() isParsecEnabled])
  {
    return 0;
  }

  v2 = [interface searchSession];
  v3 = v2 != 0;

  return v3;
}

- (void)checkParsecState
{
  v4 = SPGetDisabledDomainSet();
  sParsecEnabled = [v4 containsObject:@"DOMAIN_PARSEC"] ^ 1;
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isSpotlightInternetResultsAllowed];

  if ((v3 & 1) == 0)
  {
    sParsecEnabled = 0;
  }
}

- (void)start
{
  v74 = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = SPParsecQuery;
  [(SPKQuery *)&v69 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:3])
  {
    v3 = [(SPKQuery *)self delegate];
    v4 = (*MEMORY[0x277D286C8])();
    v63 = *v4;
    v65 = *(v4 + 16);
    v67 = *(v4 + 32);
    v5 = *v4;
    spanid = si_tracing_calc_next_spanid();
    v7 = *(v4 + 8);
    v8 = *(v4 + 24);
    *v4 = v5;
    *(v4 + 8) = spanid;
    *(v4 + 16) = v7;
    *(v4 + 28) = 102;
    *(v4 + 32) = "[SPParsecQuery start]";
    si_tracing_log_span_begin();
    if (([v3 isPeopleSearch] & 1) != 0 || objc_msgSend(v3, "isScopedAppSearch"))
    {
      if ([v3 isPeopleSearch])
      {
        v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v10 = "people";
      }

      else
      {
        v9 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v10 = "appscoped";
      }

      query_analytics_log_timing(v3, v10, "parsec", v9);
      v11 = objc_alloc(MEMORY[0x277D65860]);
      v12 = [(SPKQuery *)self queryGroupId];
      v13 = [v11 initWithQueryID:v12 sourceKind:3 sections:MEMORY[0x277CBEBF8]];
      v14 = [(SPKQuery *)self responseHandler];
      (v14)[2](v14, v13);
    }

    [v3 externalID];
    kdebug_trace();
    v15 = SPLogForSPLogCategoryTelemetry();
    v16 = [v3 externalID];
    if (v16 && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B71B000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "parsecLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
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
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v19, v20, "#query parsec start", buf, 2u);
    }

    if (!atomic_fetch_add(sOutstandingQueries, 1u))
    {
      [(SPParsecQuery *)self preheat];
    }

    v21 = [v3 query];
    v22 = [v21 queryContext];

    v23 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = [v22 searchString];
      *buf = 138412546;
      v71 = v24;
      v72 = 2112;
      v73 = v25;
      _os_log_impl(&dword_26B71B000, v23, OS_LOG_TYPE_INFO, "%@ Perform query %@", buf, 0x16u);
    }

    v26 = [v22 disabledDomains];
    v27 = [v26 containsObject:&unk_287C3B818];

    if ((v27 & 1) == 0)
    {
      v28 = objc_opt_new();
      rankingInfo = self->_rankingInfo;
      self->_rankingInfo = v28;

      setOfVisibleApps = self->_setOfVisibleApps;
      if (setOfVisibleApps)
      {
        v31 = setOfVisibleApps;
      }

      else
      {
        v31 = SPCopyVisibleApps();
      }

      v32 = self->_setOfVisibleApps;
      self->_setOfVisibleApps = v31;

      setOfHiddenApps = self->_setOfHiddenApps;
      if (setOfHiddenApps)
      {
        v34 = setOfHiddenApps;
      }

      else
      {
        v34 = SPFastHiddenAppsGetNoBuild();
      }

      v35 = self->_setOfHiddenApps;
      self->_setOfHiddenApps = v34;

      v36 = MEMORY[0x277CBEB98];
      v37 = [v22 disabledApps];
      v38 = [v36 setWithArray:v37];
      disabledAppSet = self->_disabledAppSet;
      self->_disabledAppSet = v38;

      pthread_mutex_lock(&self->_parsecQueryTaskMutex);
      if (sParsecEnabled == 1)
      {
        v40 = [interface searchSession];
        v41 = v40 == 0;

        if (v41)
        {
          [objc_opt_class() activate];
          v42 = [interface searchSession];
          v43 = v42 == 0;

          if (v43)
          {
            query_analytics_log_timing(v3, "failed", "parsec", v17);
          }
        }

        v44 = [v22 searchEntities];
        if ([v44 count])
        {
          v45 = [v22 searchEntities];
          v46 = [v45 lastObject];
          v47 = [v46 currentSearchString];
        }

        else
        {
          v47 = [v22 searchString];
        }

        v48 = [interface searchSession];
        v49 = [v3 externalID];
        v50 = [v3 query];
        v51 = [v48 queryTaskWithString:v47 externalId:v49 handler:self queryContext:v22 queryIdent:{objc_msgSend(v50, "queryIdent")}];

        if (v51)
        {
          v52 = SPLogForSPLogCategoryDefault();
          v53 = v52;
          if (*MEMORY[0x277D4BF48])
          {
            v54 = OS_LOG_TYPE_DEFAULT;
          }

          else
          {
            v54 = OS_LOG_TYPE_DEBUG;
          }

          if (os_log_type_enabled(v52, v54))
          {
            *buf = 0;
            _os_log_impl(&dword_26B71B000, v53, v54, "#query parsec start - parsec", buf, 2u);
          }

          [v51 setParsecState:{objc_msgSend(objc_opt_class(), "isParsecEnabled")}];
          [v51 setRepresentedObject:v3];
          objc_storeStrong(&self->_parsecQueryTask, v51);
        }
      }

      pthread_mutex_unlock(&self->_parsecQueryTaskMutex);
    }

    v55 = [interface searchSession];
    [v55 searchRenderTimeout];
    [(SPParsecQuery *)self resumeWithTimeout:?];

    v56 = *v4;
    v57 = *(v4 + 8);
    v58 = *(v4 + 16);
    v59 = *(v4 + 24);
    v60 = *(v4 + 28);
    v61 = *(v4 + 32);
    si_tracing_log_span_end();
    *v4 = v64;
    *(v4 + 16) = v66;
    *(v4 + 32) = v68;
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_opt_class() isParsecEnabled];
  OUTLINED_FUNCTION_0_1(&dword_26B71B000, v0, v1, "activate parsec query (%s)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)preheat
{
  if ([objc_opt_class() isParsecEnabled])
  {
    v2 = [interface searchSession];

    if (!v2)
    {
      v3 = objc_opt_class();

      [v3 activate];
    }
  }
}

- (double)computeTimeout:(double)a3
{
  quality = self->_quality;
  if ((quality & 0xFFFFFFFFFFFFFFFELL) != 2 || self->_parsecBeyondTimeoutRequestCount < 4 || self->_lastKnownQuality != quality)
  {
    goto LABEL_14;
  }

  withinThreshold = self->_withinThreshold;
  v6 = SPLogForSPLogCategoryDefault();
  v7 = v6;
  if (*MEMORY[0x277D4BF48])
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v8 = OS_LOG_TYPE_DEBUG;
  }

  v9 = os_log_type_enabled(v6, v8);
  if (withinThreshold)
  {
    a3 = a3 + 0.05;
    if (v9)
    {
      v14 = 0;
      v10 = "[Parsec] Increased timeout";
      v11 = &v14;
LABEL_12:
      _os_log_impl(&dword_26B71B000, v7, v8, v10, v11, 2u);
    }
  }

  else
  {
    a3 = a3 * 0.5;
    if (v9)
    {
      v13 = 0;
      v10 = "[Parsec] Cut down timeout";
      v11 = &v13;
      goto LABEL_12;
    }
  }

LABEL_14:
  result = 0.2;
  if (a3 > 0.0)
  {
    return a3;
  }

  return result;
}

- (void)resumeWithTimeout:(double)a3
{
  self->_timeOut = a3;
  self->_queryStartTime = CFAbsoluteTimeGetCurrent();
  pthread_mutex_lock(&self->_parsecQueryTaskMutex);
  [(PRSQueryTask *)self->_parsecQueryTask resume];

  pthread_mutex_unlock(&self->_parsecQueryTaskMutex);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_parsecQueryTaskMutex);
  v3.receiver = self;
  v3.super_class = SPParsecQuery;
  [(SPParsecQuery *)&v3 dealloc];
}

- (void)updateParsecBeyondTimeoutCount:(BOOL)a3
{
  ++self->_parsecBeyondTimeoutRequestCount;
  if (a3)
  {
    self->_withinThreshold = 1;
  }
}

- (double)searchTimeOut
{
  v3 = [interface searchSession];
  if (v3)
  {
    v4 = [interface searchSession];
    [v4 searchRenderTimeout];
    v6 = v5;
  }

  else
  {
    v6 = 0.2;
  }

  [(SPParsecQuery *)self computeTimeout:v6];
  return result;
}

- (double)suggestionTimeOut
{
  v3 = [interface searchSession];
  [v3 suggestionsRenderTimeout];
  v5 = v4;

  [(SPParsecQuery *)self computeTimeout:v5];
  return result;
}

- (double)timeOut:(BOOL)a3
{
  if (a3)
  {
    [(SPParsecQuery *)self suggestionTimeOut];
  }

  else
  {
    [(SPParsecQuery *)self searchTimeOut];
  }

  return result;
}

- (SSPlistDataReader)cannedCEPValues
{
  v2 = [interface searchSession];
  v3 = [v2 cannedCEPValues];

  return v3;
}

- (SSPlistDataReader)cepDictionary
{
  v2 = [interface searchSession];
  v3 = [v2 cepDictionary];

  return v3;
}

- (NSSet)appBlocklist
{
  v2 = [interface searchSession];
  v3 = [v2 appBlocklist];

  return v3;
}

- (SPFederatedQueryTask)resultPipe
{
  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);

  return WeakRetained;
}

void __91__SPParsecQuery_findLocalCopies_appIdentifiers_adamIDs_alternativeResults_withQueryString___block_invoke_3_cold_1(int a1, NSObject *a2, double a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[0] = 67109632;
  v4[1] = a1;
  v5 = 2048;
  v6 = a3;
  v7 = 2048;
  v8 = 0x3FE0000000000000;
  _os_log_error_impl(&dword_26B71B000, a2, OS_LOG_TYPE_ERROR, "Local copy query took longer than allowed timeout and missed %d results: took %lf seconds but was allowed %lf", v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)query:(void *)a1 didFinishWithResults:withSuggestions:withCorrections:withAlternativeResults:suggestionsAreBlended:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 category_stats];
  OUTLINED_FUNCTION_0_1(&dword_26B71B000, v2, v3, "Category stats: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __121__SPParsecQuery_query_didFinishWithResults_withSuggestions_withCorrections_withAlternativeResults_suggestionsAreBlended___block_invoke_189_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 valueForKey:@"title"];
  OUTLINED_FUNCTION_0_1(&dword_26B71B000, v2, v3, "Got Parsec results: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end