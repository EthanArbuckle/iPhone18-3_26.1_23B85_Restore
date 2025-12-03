@interface SPZKWQueryTask
+ (int)maxSuggestedApps;
+ (void)initialize;
- (BOOL)_isInBiometryLockout;
- (BOOL)_isLocked;
- (id)startFeedbackWithQueryId:(unint64_t)id;
- (id)unsafeSections;
- (void)_sendRankingFeedback;
- (void)addApplicationResultsFromPredictionResponse:(id)response toSection:(id)section queryIdent:(unint64_t)ident;
- (void)endFeedbackWithStartSearchFeedback:(id)feedback;
- (void)start;
@end

@implementation SPZKWQueryTask

+ (void)initialize
{
  v2 = [MEMORY[0x277CEB400] clientForConsumerType:1];
  v3 = atxClient;
  atxClient = v2;

  v4 = MEMORY[0x277D65988];

  [v4 preheat];
}

- (void)start
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__SPZKWQueryTask_start__block_invoke;
  v8[3] = &unk_279CFEA70;
  v8[4] = self;
  v3 = MEMORY[0x26D67F7A0](v8, a2);
  kdebug_trace();
  v4 = SPLogForSPLogCategoryTelemetry();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
  }

  [(SPQueryTask *)self queryIdForFeedback];
  v5 = v3[2];
  v6 = v3;
  v5();
}

- (BOOL)_isInBiometryLockout
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v4 = [queryContext deviceAuthenticationState] == 2;

  return v4;
}

+ (int)maxSuggestedApps
{
  if (maxSuggestedApps_onceToken != -1)
  {
    +[SPZKWQueryTask maxSuggestedApps];
  }

  return maxSuggestedApps_maxSuggestedApps;
}

void __34__SPZKWQueryTask_maxSuggestedApps__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1 == 3)
  {
    v2 = 12;
  }

  else
  {
    v2 = 8;
  }

  maxSuggestedApps_maxSuggestedApps = v2;
}

void __23__SPZKWQueryTask_start__block_invoke(uint64_t a1, dispatch_qos_class_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  queue = [v4 queryProcessor];
  v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, v5);

  dispatch_async(queue, v6);
}

- (BOOL)_isLocked
{
  query = [(SPQueryTask *)self query];
  queryContext = [query queryContext];
  v4 = [queryContext deviceAuthenticationState] != 0;

  return v4;
}

void __23__SPZKWQueryTask_start__block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CEB868] suggestedResultResponseWithLimit:5];
  v3 = [v2 topics];
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [v3 count];
    _os_log_impl(&dword_26B71B000, v4, OS_LOG_TYPE_DEFAULT, "zkw proactive response: %lu topics", buf, 0xCu);
  }

  v39 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v5 = [v2 sections];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v36 + 1) + 8 * i) results];
        v8 += [v11 count];
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);

    if (v8 && [v3 count] >= v8)
    {
      v12 = [MEMORY[0x277D007D0] requestWithTopics:v3 triggerEvent:21 queryId:*(a1 + 56)];
      v13 = +[SPPARSession spotlightPARSession];
      v14 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 topics];
        v16 = [v15 count];
        *buf = 134217984;
        v42 = v16;
        _os_log_impl(&dword_26B71B000, v14, OS_LOG_TYPE_DEFAULT, "zkw parsec response: %lu topics", buf, 0xCu);
      }

      if (v12 && v13)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __23__SPZKWQueryTask_start__block_invoke_118;
        v28[3] = &unk_279CFEA98;
        v29 = v3;
        v17 = v12;
        v18 = *(a1 + 32);
        v30 = v17;
        v31 = v18;
        v19 = v2;
        v20 = *(a1 + 56);
        v32 = v19;
        v35 = v20;
        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v21 = [v13 taskWithRequest:v17 completion:v28];
        [v21 resume];
      }

      else
      {
        if (!v13)
        {
          v25 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            __23__SPZKWQueryTask_start__block_invoke_2_cold_1();
          }
        }

        if (!v12)
        {
          v26 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __23__SPZKWQueryTask_start__block_invoke_2_cold_2();
          }
        }

        v27 = *(a1 + 48);
        (*(*(a1 + 40) + 16))();
      }

      goto LABEL_21;
    }
  }

  else
  {

    v8 = 0;
  }

  v22 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    __23__SPZKWQueryTask_start__block_invoke_2_cold_3(v3, v8, v22);
  }

  v23 = *(a1 + 48);
  (*(*(a1 + 40) + 16))();
LABEL_21:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendRankingFeedback
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mutableSections = [(SPQueryTask *)selfCopy mutableSections];
  v4 = [mutableSections copy];

  objc_sync_exit(selfCopy);
  v20 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v19 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        results = [v7 results];
        v10 = [results countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(results);
              }

              v13 = [objc_alloc(MEMORY[0x277D4C580]) initWithResult:*(*(&v21 + 1) + 8 * v12) hiddenResults:0 duplicateResults:0 localResultPosition:0];
              [v8 addObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [results countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        v14 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v8 section:v7 localSectionPosition:0 personalizationScore:0.0];
        [v20 addObject:v14];

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v15 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v20 blendingDuration:0.0];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didRankSections:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addApplicationResultsFromPredictionResponse:(id)response toSection:(id)section queryIdent:(unint64_t)ident
{
  responseCopy = response;
  sectionCopy = section;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SPZKWQueryTask_addApplicationResultsFromPredictionResponse_toSection_queryIdent___block_invoke;
  v11[3] = &unk_279CFEA48;
  identCopy = ident;
  v10 = sectionCopy;
  selfCopy = self;
  v14 = v16;
  v12 = v10;
  [responseCopy enumerateAtxSearchResults:v11];

  _Block_object_dispose(v16, 8);
}

uint64_t __83__SPZKWQueryTask_addApplicationResultsFromPredictionResponse_toSection_queryIdent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 56);
  v7 = a2;
  [v7 setQueryId:v6];
  [v7 setSectionBundleIdentifier:*MEMORY[0x277D65CE0]];
  [*(a1 + 32) addResults:v7];

  v8 = *(*(a1 + 48) + 8);
  LODWORD(v6) = *(v8 + 24) + 1;
  *(v8 + 24) = v6;
  v9 = *(a1 + 40);
  result = [objc_opt_class() maxSuggestedApps];
  if (v6 >= result)
  {
    *a4 = 1;
  }

  return result;
}

- (id)startFeedbackWithQueryId:(unint64_t)id
{
  v3 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:&stru_287C35638 triggerEvent:9 searchType:1 indexType:3 queryId:id];
  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didStartSearch:v3];

  return v3;
}

- (void)endFeedbackWithStartSearchFeedback:(id)feedback
{
  v3 = MEMORY[0x277D4C348];
  feedbackCopy = feedback;
  v6 = [[v3 alloc] initWithStartSearch:feedbackCopy];

  mEMORY[0x277D4BEB0] = [MEMORY[0x277D4BEB0] sharedManager];
  [mEMORY[0x277D4BEB0] didEndSearch:v6];
}

void __23__SPZKWQueryTask_start__block_invoke_105(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v3 = [*(a1 + 32) startFeedbackWithQueryId:*(a1 + 48)];
  v4 = [*(a1 + 32) _isInBiometryLockout];
  v5 = v4;
  if (v4)
  {
    v6 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B71B000, v6, OS_LOG_TYPE_DEFAULT, "Skipping app predictions because in biometry lockout", buf, 2u);
    }

    v7 = 0;
    goto LABEL_6;
  }

  v8 = *(a1 + 32);
  v7 = [atxClient appPredictionsForConsumerSubType:9 limit:{objc_msgSend(objc_opt_class(), "maxSuggestedApps")}];
  v9 = [v7 error];

  if (v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = [v7 predictedApps];
LABEL_7:
  [*(a1 + 32) endFeedbackWithStartSearchFeedback:v3];
  sp_analytics_log_timing("com.apple.searchd.query.ZKW", "finish", v2);
  v11 = [*(a1 + 32) delegate];
  v12 = objc_alloc_init(MEMORY[0x277D65848]);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"Siri Suggestions" value:&stru_287C35638 table:0];
  [v12 setTitle:v14];

  [v12 setBundleIdentifier:*MEMORY[0x277D65CE0]];
  if ((v5 & 1) != 0 || ([v7 error], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v16 = [v7 uuid];
    v17 = [v16 UUIDString];
    [v12 setResultSetIdentifier:v17];

    [*(a1 + 32) addApplicationResultsFromPredictionResponse:v7 toSection:v12 queryIdent:*(a1 + 48)];
    v18 = [v10 count];
    ++_MergedGlobals_0;
    if (!v18)
    {
      ++dword_281229E6C;
      v19 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __23__SPZKWQueryTask_start__block_invoke_105_cold_1();
      }
    }
  }

  v20 = objc_opt_new();
  [*(a1 + 32) setMutableSections:v20];

  v21 = [v12 results];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [*(a1 + 32) mutableSections];
    [v23 addObject:v12];

    v24 = *(a1 + 32);
    v25 = [v24 mutableSections];
    [v24 _updateResultWithState:2 sections:v25];
  }

  v26 = [*(a1 + 32) _isLocked];
  v27 = [v12 results];
  v28 = [v27 count];

  v29 = SPLogForSPLogCategoryDefault();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v31 = "zkw has apps";
  }

  else
  {
    if (!v30)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v31 = "zkw has no apps";
  }

  _os_log_impl(&dword_26B71B000, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
LABEL_21:

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __23__SPZKWQueryTask_start__block_invoke_113;
  v48[3] = &unk_279CFE2D8;
  v48[4] = *(a1 + 32);
  v32 = MEMORY[0x26D67F7A0](v48);
  if (v26)
  {
    v33 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 32) mutableSections];
      v35 = [v34 count];
      *buf = 134217984;
      v50 = v35;
      _os_log_impl(&dword_26B71B000, v33, OS_LOG_TYPE_DEFAULT, "zkw sending %ld sections", buf, 0xCu);
    }

    v36 = *(a1 + 32);
    v37 = [v36 mutableSections];
    [v36 _updateResultWithState:4 sections:v37];

    kdebug_trace();
    v38 = SPLogForSPLogCategoryTelemetry();
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B71B000, v38, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v39 = [*(a1 + 32) queryProcessor];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __23__SPZKWQueryTask_start__block_invoke_128;
    v43[3] = &unk_279CFE2D8;
    v43[4] = *(a1 + 32);
    dispatch_async(v39, v43);
  }

  else
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __23__SPZKWQueryTask_start__block_invoke_2;
    v44[3] = &unk_279CFEAC0;
    v40 = *(a1 + 40);
    v41 = *(a1 + 32);
    v47 = *(a1 + 48);
    v44[4] = v41;
    v45 = v40;
    v46 = v32;
    (v40)[2](v45, 25, v44);

    v39 = v45;
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __23__SPZKWQueryTask_start__block_invoke_113(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) mutableSections];
  v4 = [v3 copy];

  objc_sync_exit(v2);
  v5 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v4 count];
    _os_log_impl(&dword_26B71B000, v5, OS_LOG_TYPE_DEFAULT, "zkw sending %ld sections", buf, 0xCu);
  }

  [*(a1 + 32) _updateResultWithState:4 sections:v4];
  kdebug_trace();
  v6 = SPLogForSPLogCategoryTelemetry();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "zkwLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = [*(a1 + 32) queryProcessor];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SPZKWQueryTask_start__block_invoke_114;
  block[3] = &unk_279CFE2D8;
  block[4] = *(a1 + 32);
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __23__SPZKWQueryTask_start__block_invoke_118(uint64_t a1, void *a2, void *a3, void *a4)
{
  v88 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v7 = a3;
  v58 = a4;
  v59 = v7;
  v8 = [v7 sections];
  v9 = [v8 count];
  v10 = [*(a1 + 32) count];

  if (v9 == v10)
  {
    if (v58)
    {
      v11 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __23__SPZKWQueryTask_start__block_invoke_118_cold_2();
      }
    }

    v12 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) topics];
      v14 = [v13 count];
      v15 = [v59 results];
      v16 = [v15 count];
      v17 = [v59 sections];
      *buf = 134218496;
      v83 = v14;
      v84 = 2048;
      v85 = v16;
      v86 = 2048;
      v87 = [v17 count];
      _os_log_impl(&dword_26B71B000, v12, OS_LOG_TYPE_DEFAULT, "zkw parsec response complete: sent %lu topics; got %lu results, %lu sections", buf, 0x20u);
    }

    v62 = [v59 sections];
    v60 = [v62 count];
    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v60)
    {
      for (i = 0; i != v60; ++i)
      {
        v18 = [*(a1 + 40) topics];
        v19 = [v18 objectAtIndex:i];

        v64 = [v62 objectAtIndexedSubscript:i];
        v63 = [objc_alloc(MEMORY[0x277D65848]) initWithSection:v64];
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v21 = [v64 results];
        v22 = [v21 countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v22)
        {
          v23 = *v76;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v76 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v75 + 1) + 8 * j);
              v26 = SPLogForSPLogCategoryDefault();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = objc_opt_class();
                *buf = 138412290;
                v83 = v27;
                _os_log_impl(&dword_26B71B000, v26, OS_LOG_TYPE_DEFAULT, "zkw parsec response: result for %@", buf, 0xCu);
              }

              v28 = [*(a1 + 48) query];
              v29 = [v28 queryContext];

              v30 = [MEMORY[0x277D65988] updateResult:v25 topic:v19 queryContext:v29];
              if (v30)
              {
                [v20 addObject:v30];
              }

              else
              {
                v31 = SPLogForSPLogCategoryDefault();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_26B71B000, v31, OS_LOG_TYPE_DEFAULT, "zkw result builder: unable to resolve local result", buf, 2u);
                }
              }
            }

            v22 = [v21 countByEnumeratingWithState:&v75 objects:v81 count:16];
          }

          while (v22);
        }

        [v63 setResults:v20];
        [v61 addObject:v63];
      }
    }

    [*(a1 + 56) createSectionsFromServerResults:v61];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    obj = v72 = 0u;
    v32 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
    if (v32)
    {
      v33 = *v72;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v72 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v71 + 1) + 8 * k);
          v36 = MEMORY[0x277D659A8];
          v37 = [v35 bundleIdentifier];
          LODWORD(v36) = [v36 isZKWRecentBundle:v37];

          if (v36)
          {
            v38 = [MEMORY[0x277D659A8] makeClearProactiveCategoryButtonItemWithCategory:1 shouldClearWholeSection:1 result:0];
            [v35 setButton:v38];

            v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v40 = [v39 localizedStringForKey:@"CLEAR" value:&stru_287C35638 table:@"SpotlightServices"];
            v41 = [v35 button];
            [v41 setTitle:v40];

            v42 = [v35 button];
            [v42 setImage:0];
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v43 = [v35 results];
          v44 = [v43 countByEnumeratingWithState:&v67 objects:v79 count:16];
          if (v44)
          {
            v45 = *v68;
            do
            {
              for (m = 0; m != v44; ++m)
              {
                if (*v68 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                v47 = *(*(&v67 + 1) + 8 * m);
                [v47 setQueryId:*(a1 + 80)];
                [MEMORY[0x277D659A8] injectRecentsOptionsIntoResult:v47];
              }

              v44 = [v43 countByEnumeratingWithState:&v67 objects:v79 count:16];
            }

            while (v44);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
      }

      while (v32);
    }

    v48 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      v49 = [*(a1 + 56) performSelector:sel_codePathIdTrigger];
      if (v49)
      {
        v50 = *(a1 + 80);
        SSDefaultsLogForTrigger();
      }
    }

    else
    {
      v49 = 0;
    }

    if ([obj count])
    {
      v53 = *(a1 + 48);
      objc_sync_enter(v53);
      v54 = [*(a1 + 48) mutableSections];
      [v54 addObjectsFromArray:obj];

      objc_sync_exit(v53);
    }

    v52 = v62;
  }

  else
  {
    v51 = SPLogForSPLogCategoryDefault();
    v52 = v51;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      __23__SPZKWQueryTask_start__block_invoke_118_cold_1();
      v52 = v51;
    }
  }

  v55 = *(a1 + 72);
  (*(*(a1 + 64) + 16))();

  v56 = *MEMORY[0x277D85DE8];
}

- (id)unsafeSections
{
  mutableSections = [(SPQueryTask *)self mutableSections];
  v3 = [mutableSections copy];

  return v3;
}

void __23__SPZKWQueryTask_start__block_invoke_105_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void __23__SPZKWQueryTask_start__block_invoke_2_cold_3(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 count];
  v8 = 2048;
  v9 = a2;
  _os_log_error_impl(&dword_26B71B000, a3, OS_LOG_TYPE_ERROR, "zkw proactive response mismatch: %lu topics, %lu section results", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __23__SPZKWQueryTask_start__block_invoke_118_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end