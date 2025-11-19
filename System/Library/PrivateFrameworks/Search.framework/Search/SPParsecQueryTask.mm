@interface SPParsecQueryTask
- (SDSearchQuery)resultPipe;
- (SPParsecQueryTask)initWithStore:(id)a3 resultPipe:(id)a4 queue:(id)a5 visibleApps:(id)a6 hiddenApps:(id)a7;
- (id)findLocalCopies:(id)a3 alternativeResults:(id)a4 withQueryString:(id)a5;
- (id)rerankMapsResultsWithLocalSignals:(id)a3 forQueryId:(int64_t)a4;
- (id)unarchiveWithQuery:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)finished;
- (void)geoUserSessionEntityString:(id)a3;
- (void)queryDidFinishLoading:(id)a3;
- (void)resumeWithArchive:(id)a3;
- (void)resumeWithTimeout:(double)a3;
@end

@implementation SPParsecQueryTask

- (void)resumeWithTimeout:(double)a3
{
  self->_timeOut = a3;
  self->_queryStartTime = CFAbsoluteTimeGetCurrent();
  v4 = [(SPParsecQueryTask *)self parsecQuery];
  [v4 resume];
}

- (id)unarchiveWithQuery:(id)a3
{
  v3 = [SPParsecArchive archivePathForQuery:a3];
  v4 = [NSData dataWithContentsOfFile:v3];
  v11 = 0;
  v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v11];
  v6 = v11;
  v10 = v6;
  v7 = [v5 decodeTopLevelObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey error:&v10];
  v8 = v10;

  return v7;
}

- (void)resumeWithArchive:(id)a3
{
  v4 = a3;
  v9 = [v4 query];
  v5 = [v4 resultsSections];
  v6 = [v4 suggestions];
  v7 = [v4 corrections];
  v8 = [v4 suggestionsAreBlended];

  [(SPParsecQueryTask *)self query:v9 didFinishWithResults:v5 withSuggestions:v6 withCorrections:v7 withAlternativeResults:0 suggestionsAreBlended:v8];
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_mutex);
  v3.receiver = self;
  v3.super_class = SPParsecQueryTask;
  [(SPParsecQueryTask *)&v3 dealloc];
}

- (SPParsecQueryTask)initWithStore:(id)a3 resultPipe:(id)a4 queue:(id)a5 visibleApps:(id)a6 hiddenApps:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v27.receiver = self;
  v27.super_class = SPParsecQueryTask;
  v18 = [(SPParsecQueryTask *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_store, a3);
    objc_storeWeak(&v19->_resultPipe, v14);
    objc_storeStrong(&v19->_queue, a5);
    pthread_mutex_init(&v19->_mutex, 0);
    v19->_type = 1;
    v20 = objc_opt_new();
    rankingInfo = v19->_rankingInfo;
    v19->_rankingInfo = v20;

    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = SPCopyVisibleApps();
    }

    setOfVisibleApps = v19->_setOfVisibleApps;
    v19->_setOfVisibleApps = v22;

    if (v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = SPFastHiddenAppsGetNoBuild();
    }

    setOfHiddenApps = v19->_setOfHiddenApps;
    v19->_setOfHiddenApps = v24;
  }

  return v19;
}

- (void)finished
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v86 = *v3;
  v87 = v4;
  v88 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPParsecQueryTask finished]";
  si_tracing_log_span_begin();
  v9 = SPLogForSPLogCategoryDefault();
  v10 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v9, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, ((v10 & 1) == 0), "#query parsec finished", buf, 2u);
  }

  if (pthread_mutex_trylock(&self->_mutex))
  {
    v57 = "pthread_mutex_trylock(&_mutex)==0";
    v58 = 278;
    goto LABEL_65;
  }

  if (pthread_mutex_unlock(&self->_mutex))
  {
    v57 = "pthread_mutex_unlock(&_mutex)==0";
    v58 = 279;
LABEL_65:
    __assert_rtn("[SPParsecQueryTask finished]", "SPParsecDatastore.m", v58, v57);
  }

  Current = CFAbsoluteTimeGetCurrent();
  self->_queryEndTime = Current;
  v12 = Current - self->_queryStartTime;
  timeOut = self->_timeOut;
  v74 = v3;
  if (v12 > timeOut)
  {
    [(SPParsecDatastore *)self->_store updateParsecBeyondTimeoutCount:v12 - timeOut <= 0.05];
  }

  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
  self->_done = 1;
  v14 = [(PRSQueryTask *)self->_parsecQuery category_stats];
  [(PRSRankingConfiguration *)self->_rankingInfo setSqfData:v14];

  v15 = [(PRSQueryTask *)self->_parsecQuery server_features];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerFeatures:v15];

  [(PRSRankingConfiguration *)self->_rankingInfo setParsecCategoryOrder:self->_parsecResultsCategoryOrder];
  v16 = [(PRSQueryTask *)self->_parsecQuery serverRelevanceScores];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScores:v16];

  [(PRSQueryTask *)self->_parsecQuery serverRelevanceScoreThreshold];
  [(PRSRankingConfiguration *)self->_rankingInfo setServerRelevanceScoreThreshold:?];
  v17 = objc_opt_new();
  v18 = [(PRSQueryTask *)self->_parsecQuery engagementSignal];
  v19 = [v17 initWithSFEngagementSignal:v18];
  [(PRSRankingConfiguration *)self->_rankingInfo setIFunScores:v19];

  v20 = [(SPParsecDatastore *)self->_store cepDictionary];
  v21 = v20;
  if (!v20)
  {
    v21 = [(SPParsecDatastore *)self->_store cannedCEPValues];
  }

  [(PRSRankingConfiguration *)self->_rankingInfo setQueryIndependentCategoryProbabilities:v21];
  if (!v20)
  {
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = self->_parsecResults;
  v71 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  if (!v71)
  {
    v22 = -1.0;
    goto LABEL_42;
  }

  v70 = *v83;
  v22 = -1.0;
  do
  {
    for (i = 0; i != v71; i = i + 1)
    {
      if (*v83 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v73 = *(*(&v82 + 1) + 8 * i);
      v23 = [v73 bundleIdentifier];
      if ([v23 isEqualToString:@"com.apple.parsec.itunes.iosSoftware"])
      {
      }

      else
      {
        v24 = [v73 bundleIdentifier];
        v25 = [v24 hasPrefix:@"com.apple.parsec.app_distr"];

        if (!v25)
        {
          goto LABEL_36;
        }
      }

      v26 = objc_opt_new();
      v27 = [v73 results];
      v28 = [v27 count] == 0;

      if (!v28)
      {
        v22 = 0.0;
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v29 = [v73 results];
      v30 = [v29 countByEnumeratingWithState:&v78 objects:v93 count:16];
      if (v30)
      {
        v31 = *v79;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v79 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v78 + 1) + 8 * j);
            v34 = [v33 applicationBundleIdentifier];
            if ([(NSSet *)self->_setOfVisibleApps containsObject:v34])
            {
              v35 = SPLogForSPLogCategoryDefault();
              v36 = v35;
              if (gSPLogDebugAsDefault)
              {
                v37 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v37 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v35, v37))
              {
                *buf = 138412290;
                v90 = v34;
                _os_log_impl(&_mh_execute_header, v36, v37, "De-dupped app with bundle id: %@", buf, 0xCu);
              }

              v3 = v74;
              [v26 addObject:v33];
              v22 = v22 + 1.0;
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v78 objects:v93 count:16];
        }

        while (v30);
      }

      [v73 removeResultsInArray:v26];
      [v73 setHiddenExtResults:v26];

LABEL_36:
      if ([v73 domain] != 1)
      {
        [v73 setDomain:2];
      }
    }

    v71 = [(NSArray *)obj countByEnumeratingWithState:&v82 objects:v94 count:16];
  }

  while (v71);
LABEL_42:

  *&v38 = v22;
  [(PRSRankingConfiguration *)self->_rankingInfo setNumAppsDeduped:v38];
  if (self->_canceled)
  {
    v39 = "finish_canceled";
  }

  else
  {
    v39 = "finished";
  }

  sub_100017E38(WeakRetained, v39, "parsec", self->_startTime);
  if (!self->_canceled)
  {
    v40 = SPLogForSPLogCategoryDefault();
    v41 = v40;
    if (gSPLogDebugAsDefault)
    {
      v42 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v42 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v40, v42))
    {
      v43 = objc_opt_class();
      v44 = qos_class_self();
      *buf = 138412546;
      v90 = v43;
      v91 = 1024;
      LODWORD(v92) = v44;
      _os_log_impl(&_mh_execute_header, v41, v42, "QOS %@ finished: %d", buf, 0x12u);
    }

    v45 = +[SDController workQueue];
    v46 = qos_class_self();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AB34;
    block[3] = &unk_100091EA8;
    v76 = WeakRetained;
    v77 = self;
    v47 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v46, 0, block);
    tracing_dispatch_async();
  }

  v48 = SPLogForSPLogCategoryDefault();
  v49 = v48;
  if (gSPLogDebugAsDefault)
  {
    v50 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v50 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v48, v50))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "#query parsec done", buf, 2u);
  }

  v51 = SPLogForSPLogCategoryDefault();
  v52 = v51;
  if (gSPLogDebugAsDefault)
  {
    v53 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v53 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v51, v53))
  {
    v54 = [WeakRetained queryContext];
    v55 = [v54 searchString];
    v56 = [(NSArray *)self->_parsecResults valueForKey:@"title"];
    *buf = 138412546;
    v90 = v55;
    v91 = 2112;
    v92 = v56;
    _os_log_impl(&_mh_execute_header, v52, v53, "Parsec query: %@ returned results: %@", buf, 0x16u);
  }

  parsecQuery = self->_parsecQuery;
  if (parsecQuery)
  {
    [(PRSQueryTask *)parsecQuery invalidateHandler];
    v60 = self->_parsecQuery;
  }

  else
  {
    v60 = 0;
  }

  self->_parsecQuery = 0;

  objc_storeWeak(&self->_resultPipe, 0);
  atomic_fetch_add(dword_1000A8900, 0xFFFFFFFF);
  v61 = *v3;
  v62 = *(v3 + 8);
  v63 = *(v3 + 16);
  v64 = *(v3 + 24);
  v65 = *(v3 + 28);
  v66 = *(v3 + 32);
  si_tracing_log_span_end();
  v67 = v87;
  *v3 = v86;
  *(v3 + 16) = v67;
  *(v3 + 32) = v88;
}

- (void)cancel
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v23 = *v3;
  v24 = v4;
  v25 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPParsecQueryTask cancel]";
  si_tracing_log_span_begin();
  self->_canceled = 1;
  v9 = SPLogForSPLogCategoryDefault();
  v10 = v9;
  if (gSPLogDebugAsDefault)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v9, v11))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "#query parsec cancel", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
  queue = self->_queue;
  v21 = WeakRetained;
  tracing_dispatch_async();

  v14 = *v3;
  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v18 = *(v3 + 28);
  v19 = *(v3 + 32);
  si_tracing_log_span_end();
  v20 = v24;
  *v3 = v23;
  *(v3 + 16) = v20;
  *(v3 + 32) = v25;
}

- (void)queryDidFinishLoading:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v18 = *v5;
  v19 = *(v5 + 16);
  v20 = *(v5 + 32);
  v6 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v8;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecQueryTask queryDidFinishLoading:]";
  si_tracing_log_span_begin();
  queue = self->_queue;
  v17 = v4;
  tracing_dispatch_async();

  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 28);
  v16 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v18;
  *(v5 + 16) = v19;
  *(v5 + 32) = v20;
}

- (void)geoUserSessionEntityString:(id)a3
{
  v4 = a3;
  v5 = [(SPParsecQueryTask *)self resultPipe];
  [v5 setGeoUserSessionEntityString:v4];
}

- (id)findLocalCopies:(id)a3 alternativeResults:(id)a4 withQueryString:(id)a5
{
  v124 = a3;
  v121 = a4;
  v135 = a5;
  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v170 = *v7;
  v171 = v8;
  v172 = *(v7 + 32);
  v123 = v7;
  v9 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v123 + 8);
  v12 = *(v123 + 24);
  *v123 = v9;
  *(v123 + 8) = spanid;
  *(v123 + 16) = v11;
  *(v123 + 28) = 102;
  *(v123 + 32) = "[SPParsecQueryTask findLocalCopies:alternativeResults:withQueryString:]";
  si_tracing_log_span_begin();
  if (![v124 count])
  {
    v127 = 0;
    goto LABEL_79;
  }

  v139 = objc_opt_new();
  v141 = objc_opt_new();
  v140 = objc_opt_new();
  v119 = objc_opt_new();
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obj = v124;
  v133 = [obj countByEnumeratingWithState:&v166 objects:v179 count:16];
  if (!v133)
  {
    goto LABEL_22;
  }

  v131 = *v167;
  v13 = PRSRankingParsecAppBundleString;
  do
  {
    for (i = 0; i != v133; i = i + 1)
    {
      if (*v167 != v131)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v166 + 1) + 8 * i);
      v162 = 0u;
      v163 = 0u;
      v164 = 0u;
      v165 = 0u;
      v15 = [v14 results];
      v16 = [v15 countByEnumeratingWithState:&v162 objects:v178 count:16];
      if (v16)
      {
        v17 = *v163;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v163 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v162 + 1) + 8 * j);
            v20 = [v19 sectionBundleIdentifier];
            v21 = [v20 isEqualToString:v13];

            if (v21)
            {
              v22 = [v19 title];
              v23 = [v22 text];
              [v141 addObject:v23];

              v24 = [v19 applicationBundleIdentifier];
              [v140 addObject:v24];
LABEL_17:

              continue;
            }

            if (objc_opt_respondsToSelector())
            {
              v25 = [v19 storeIdentifier];
              v26 = v25 == 0;

              if (!v26)
              {
                v24 = [v19 storeIdentifier];
                [v139 addObject:v24];
                goto LABEL_17;
              }
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v162 objects:v178 count:16];
        }

        while (v16);
      }
    }

    v133 = [obj countByEnumeratingWithState:&v166 objects:v179 count:16];
  }

  while (v133);
LABEL_22:

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v27 = v121;
  v28 = [v27 countByEnumeratingWithState:&v158 objects:v177 count:16];
  if (v28)
  {
    v29 = *v159;
    v30 = PRSRankingParsecAppBundleString;
    do
    {
      for (k = 0; k != v28; k = k + 1)
      {
        if (*v159 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v158 + 1) + 8 * k);
        v33 = [v32 sectionBundleIdentifier];
        v34 = [v33 isEqualToString:v30];

        if (v34)
        {
          v35 = [v32 title];
          v36 = [v35 text];
          [v141 addObject:v36];

          v37 = [v32 applicationBundleIdentifier];
          [v140 addObject:v37];
LABEL_32:

          continue;
        }

        if (objc_opt_respondsToSelector())
        {
          v38 = [v32 storeIdentifier];
          v39 = v38 == 0;

          if (!v39)
          {
            v37 = [v32 storeIdentifier];
            [v139 addObject:v37];
            goto LABEL_32;
          }
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v158 objects:v177 count:16];
    }

    while (v28);
  }

  if ([v139 count] || objc_msgSend(v141, "count"))
  {
    v118 = sub_10005C424(@"kMDItemAdamID", v139);
    v116 = sub_10005C424(@"kMDItemDisplayName", v141);
    v115 = sub_10005C424(@"kMDItemAlternateNames", v141);
    if (v116 && v115)
    {
      v40 = [&stru_100094040 stringByAppendingFormat:@"(_kMDItemBundleID = com.apple.application && ((%@) || (%@)))", v116, v115];
      if (!v118)
      {
        v43 = v40;
        goto LABEL_45;
      }

      v41 = v40;
      v42 = [(__CFString *)v40 stringByAppendingString:@" || "];

      v43 = v42;
    }

    else
    {
      v43 = &stru_100094040;
      if (!v118)
      {
LABEL_45:
        v120 = v43;
        if (![(__CFString *)v43 length])
        {

          v120 = @"false";
        }

        WeakRetained = objc_loadWeakRetained(&self->_resultPipe);
        v46 = [WeakRetained hash];

        v47 = [PRSRankingItemRanker alloc];
        v48 = objc_loadWeakRetained(&self->_resultPipe);
        v49 = [v48 queryContext];
        v50 = [v49 keyboardLanguage];
        v51 = objc_loadWeakRetained(&self->_resultPipe);
        v52 = [v51 queryContext];
        [v52 currentTime];
        v53 = -v46;
        v114 = [v47 initWithSearchString:v135 queryID:v53 language:v50 currentTime:?];

        v54 = objc_loadWeakRetained(&self->_resultPipe);
        v55 = [v54 queryContext];
        v56 = [v55 queryKind];
        v57 = objc_loadWeakRetained(&self->_resultPipe);
        v58 = [v57 queryContext];
        v59 = [v58 keyboardLanguage];
        v126 = [v114 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:PRSRankingSearchBundleString spotlightQuery:v120 userQuery:v135 tokenString:0 queryKind:v56 flags:0 keyboardLanguage:v59];

        v122 = objc_alloc_init(CSSearchQueryContext);
        [v122 setQueryID:v53];
        v176 = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v60 = [NSArray arrayWithObjects:&v176 count:1];
        [v122 setProtectionClasses:v60];

        [v122 setEntitledAttributes:1];
        v61 = rankingPrefetchedAttributesArray();
        [v122 setFetchAttributes:v61];

        v62 = [v126 rankingQueries];
        [v122 setRankingQueries:v62];

        v63 = objc_loadWeakRetained(&self->_resultPipe);
        v64 = [v63 queryContext];
        [v64 currentTime];
        v66 = v65;

        if (qword_1000A8910 != -1)
        {
          sub_1000639D0();
        }

        v67 = [[NSMapTable alloc] initWithKeyOptions:66307 valueOptions:0 capacity:256];
        v125 = [v122 fetchAttributes];
        v68 = [v125 count];
        v155[0] = _NSConcreteStackBlock;
        v155[1] = 3221225472;
        v155[2] = sub_10005C658;
        v155[3] = &unk_100093C18;
        v157 = v66;
        v69 = v67;
        v156 = v69;
        v113 = objc_retainBlock(v155);
        v70 = dispatch_group_create();
        dispatch_group_enter(v70);
        v71 = objc_alloc_init(NSMutableIndexSet);
        v72 = objc_opt_new();
        Current = CFAbsoluteTimeGetCurrent();
        if (v68)
        {
          for (m = 0; m != v68; ++m)
          {
            v75 = [v126 requiredAttributes];
            v76 = [v125 objectAtIndexedSubscript:m];
            v77 = [v75 containsObject:v76];

            if (v77)
            {
              [v71 addIndex:m];
            }
          }
        }

        v146[0] = _NSConcreteStackBlock;
        v146[1] = 3221225472;
        v146[2] = sub_10005D244;
        v146[3] = &unk_100093C80;
        v108 = v69;
        v147 = v108;
        v153 = v68;
        v109 = v71;
        v148 = v109;
        v149 = v140;
        v150 = v119;
        v111 = v72;
        v151 = v111;
        group = v70;
        v152 = group;
        v154 = Current;
        v112 = objc_retainBlock(v146);
        v78 = +[SPCoreSpotlightIndexer sharedInstance];
        v117 = [v78 taskForTopHitQueryWithQueryString:v120 queryContext:v122 eventHandler:v113 resultsHandler:&stru_100093C58 completionHandler:v112];

        if (v117)
        {
          v79 = +[SPCoreSpotlightIndexer sharedInstance];
          [v79 startQueryTask:v117];

          v80 = group;
        }

        else
        {
          v80 = group;
          dispatch_group_leave(group);
        }

        v81 = dispatch_time(0, 500000000);
        dispatch_group_wait(v80, v81);
        v127 = [v111 allValues];
        for (obja = 0; [v127 count] > obja; ++obja)
        {
          v128 = [v127 objectAtIndexedSubscript:?];
          v82 = [v128 results];
          v83 = [v82 copy];

          v134 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v83, "count")}];
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v132 = v83;
          v84 = [v132 countByEnumeratingWithState:&v142 objects:v175 count:16];
          if (v84)
          {
            v138 = *v143;
            do
            {
              for (n = 0; n != v84; n = n + 1)
              {
                if (*v143 != v138)
                {
                  objc_enumerationMutation(v132);
                }

                v86 = *(*(&v142 + 1) + 8 * n);
                v87 = objc_loadWeakRetained(&self->_resultPipe);
                v88 = [v87 queryContext];
                v89 = [v86 resultWithTime:v135 searchString:0 isCorrectedQuery:v88 withQueryContext:v66];

                if (v89)
                {
                  [v89 setType:26];
                  v90 = [v86 rankingItem];
                  v91 = [v90 L2FeatureVector];
                  if (v91)
                  {
                    v92 = v86 == 0;
                  }

                  else
                  {
                    v92 = 1;
                  }

                  v93 = !v92;

                  if (v93)
                  {
                    v173[0] = @"score";
                    [v90 score];
                    v94 = [NSNumber numberWithFloat:?];
                    v174[0] = v94;
                    v173[1] = @"raw score";
                    [v90 rawScore];
                    v95 = [NSNumber numberWithFloat:?];
                    v174[1] = v95;
                    v173[2] = @"original score";
                    v96 = [v90 L2FeatureVector];
                    [v96 originalL2Score];
                    v97 = [NSNumber numberWithFloat:?];
                    v174[2] = v97;
                    v98 = [NSDictionary dictionaryWithObjects:v174 forKeys:v173 count:3];
                    [v89 setLocalFeatures:v98];
                  }

                  [v134 addObject:v89];
                  v99 = [v86 rankingItem];
                  [v99 score];
                  [v89 setL2score:?];
                }

                [v86 clearClientData];
              }

              v84 = [v132 countByEnumeratingWithState:&v142 objects:v175 count:16];
            }

            while (v84);
          }

          [v128 setResults:v134];
        }

        goto LABEL_78;
      }
    }

    v44 = [(__CFString *)v43 stringByAppendingFormat:@"(%@)", v118];

    v43 = v44;
    goto LABEL_45;
  }

  v127 = 0;
LABEL_78:

LABEL_79:
  v100 = *v123;
  v101 = *(v123 + 8);
  v102 = *(v123 + 16);
  v103 = *(v123 + 24);
  v104 = *(v123 + 28);
  v105 = *(v123 + 32);
  si_tracing_log_span_end();
  v106 = v171;
  *v123 = v170;
  *(v123 + 16) = v106;
  *(v123 + 32) = v172;

  return v127;
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
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "rerankMapsResultsWithLocalSignals", " enableTelemetry=YES ", buf, 2u);
  }

  v11 = [(SPParsecDatastore *)self->_store mapsParsecRanker];
  v12 = [v11 rerankMapsResultsWithLocalSignals:v6 forQueryId:a4];

  v13 = v10;
  v14 = v13;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v8, "rerankMapsResultsWithLocalSignals", &unk_100079B12, v16, 2u);
  }

  return v12;
}

- (SDSearchQuery)resultPipe
{
  WeakRetained = objc_loadWeakRetained(&self->_resultPipe);

  return WeakRetained;
}

@end