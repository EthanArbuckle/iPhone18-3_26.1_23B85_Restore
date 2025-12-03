@interface SPRecommendationQuery
- (id)buildSearchResultWithRecommendations:(id)recommendations query:(id)query;
- (void)begin:(id)begin;
- (void)start;
@end

@implementation SPRecommendationQuery

- (void)begin:(id)begin
{
  beginCopy = begin;
  query = [beginCopy query];
  queryContext = [query queryContext];

  getTrimmedSearchString = [queryContext getTrimmedSearchString];
  v8 = [getTrimmedSearchString mutableCopy];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("Query Queue", v10);

  v59[0] = 0;
  v12 = [objc_alloc(MEMORY[0x277D657D8]) initWithLocale:currentLocale queue:v11 error:v59];
  v13 = v59[0];
  if ([v12 isMusicRecEligible:v8])
  {
    v43 = v13;
    v14 = SSDefaultsGetResources();
    v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6ee794d6-a63f-11ed-afa1-0242ac120002"];
    [v14 logForTrigger:v15 queryID:{objc_msgSend(queryContext, "queryIdent")}];

    LODWORD(v14) = SSShowMusicRec();
    v16 = logForCSLogCategoryRecs();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v16, OS_LOG_TYPE_DEFAULT, "Starting Music recommendation retrieval.", buf, 2u);
      }

      v18 = dispatch_semaphore_create(0);
      *buf = 0;
      v54 = buf;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy_;
      v57 = __Block_byref_object_dispose_;
      v58 = 0;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __31__SPRecommendationQuery_begin___block_invoke;
      v52[3] = &unk_279CFE7C8;
      v52[4] = buf;
      [v12 setCandidatesHandler:v52];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __31__SPRecommendationQuery_begin___block_invoke_86;
      v50[3] = &unk_279CFE7F0;
      v19 = v18;
      v51 = v19;
      [v12 setCompletionHandler:v50];
      query2 = [beginCopy query];
      [v12 retrieveMusicWithQuery:v8 queryID:{objc_msgSend(query2, "queryIdent")}];

      v21 = logForCSLogCategoryRecs();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [SPRecommendationQuery begin:];
      }

      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      v22 = logForCSLogCategoryRecs();
      selfCopy = self;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v49[0]) = 0;
        _os_log_impl(&dword_26B71B000, v22, OS_LOG_TYPE_DEFAULT, "Music recommendation retrieval ended.", v49, 2u);
      }

      v23 = SPLogForSPLogCategoryTelemetry();
      externalID = [beginCopy externalID];
      if (externalID && os_signpost_enabled(v23))
      {
        LOWORD(v49[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_26B71B000, v23, OS_SIGNPOST_INTERVAL_END, externalID, "recommendationSpotlightLatency", " enableTelemetry=YES ", v49, 2u);
      }

      objc_initWeak(v49, beginCopy);
      v25 = *(v54 + 5);
      if (v25 && [v25 count])
      {
        v41 = [(SPRecommendationQuery *)selfCopy buildSearchResultWithRecommendations:*(v54 + 5) query:beginCopy];
        v26 = objc_opt_new();
        [v26 setPinToTop:1];
        v27 = v26;
        [v27 setMaxInitiallyVisibleResults:1];
        [v27 setBundleIdentifier:*MEMORY[0x277D65B68]];
        [v27 setTitle:@"Apple Music"];
        [v27 setResults:v41];
        query3 = [beginCopy query];
        cancelled = [query3 cancelled];

        if (cancelled)
        {
          v30 = logForCSLogCategoryRecs();
          v13 = v43;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SPRecommendationQuery begin:];
          }
        }

        else
        {
          v40 = +[(SPQueryTask *)SPFederatedQueryTask];
          objc_copyWeak(v47, v49);
          v46 = v27;
          md_tracing_dispatch_async_propagating();

          objc_destroyWeak(v47);
          v13 = v43;
        }

        objc_destroyWeak(v49);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v39 = +[SPQueryTask queryQueue];
        v47[1] = MEMORY[0x277D85DD0];
        v47[2] = 3221225472;
        v47[3] = __31__SPRecommendationQuery_begin___block_invoke_89;
        v47[4] = &unk_279CFE268;
        objc_copyWeak(&v48, v49);
        v47[5] = selfCopy;
        md_tracing_dispatch_async_propagating();

        objc_destroyWeak(&v48);
        objc_destroyWeak(v49);

        _Block_object_dispose(buf, 8);
        v13 = v43;
      }
    }

    else
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_26B71B000, v16, OS_LOG_TYPE_DEFAULT, "*warn* Music recommendation retrieval disabled from Trial.", buf, 2u);
      }

      v35 = SPLogForSPLogCategoryTelemetry();
      externalID2 = [beginCopy externalID];
      v13 = v43;
      if (externalID2)
      {
        v37 = externalID2;
        if (os_signpost_enabled(v35))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_26B71B000, v35, OS_SIGNPOST_INTERVAL_END, v37, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
        }
      }

      v38 = +[(SPQueryTask *)SPFederatedQueryTask];
      v45 = beginCopy;
      md_tracing_dispatch_async_propagating();

      v19 = v45;
    }
  }

  else
  {
    v31 = SPLogForSPLogCategoryTelemetry();
    externalID3 = [beginCopy externalID];
    if (externalID3)
    {
      v33 = externalID3;
      if (os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_26B71B000, v31, OS_SIGNPOST_INTERVAL_END, v33, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
      }
    }

    v34 = +[(SPQueryTask *)SPFederatedQueryTask];
    v44 = beginCopy;
    md_tracing_dispatch_async_propagating();

    v19 = v44;
  }
}

void __31__SPRecommendationQuery_begin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__SPRecommendationQuery_begin___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

intptr_t __31__SPRecommendationQuery_begin___block_invoke_86(uint64_t a1)
{
  v2 = logForCSLogCategoryRecs();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__SPRecommendationQuery_begin___block_invoke_86_cold_1();
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __31__SPRecommendationQuery_begin___block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained storeCompletedSearch:*(a1 + 32) withSections:MEMORY[0x277CBEBF8]];
}

void __31__SPRecommendationQuery_begin___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [WeakRetained storeCompletedSearch:v3 withSections:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (id)buildSearchResultWithRecommendations:(id)recommendations query:(id)query
{
  v66[1] = *MEMORY[0x277D85DE8];
  recommendationsCopy = recommendations;
  queryCopy = query;
  v56 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  string = [MEMORY[0x277CCAB68] string];
  v6 = 0;
  v55 = *MEMORY[0x277D65B68];
  v59 = recommendationsCopy;
  do
  {
    if (v6 >= [recommendationsCopy count])
    {
      break;
    }

    v7 = [recommendationsCopy objectAtIndexedSubscript:v6];
    v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v7, "trackId")];
    [string appendString:?];
    [string appendString:@" "];
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"media:%ld", objc_msgSend(v7, "trackId")];
    [v8 setIdentifier:v9];

    v10 = MEMORY[0x277D4C690];
    trackName = [v7 trackName];
    v12 = [v10 textWithString:trackName];
    [v8 setTitle:v12];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://music.apple.com/us/album/close-friends/%ld?i=%ld", objc_msgSend(v7, "collectionId"), objc_msgSend(v7, "trackId")];
    [v8 setCompletion:v13];

    v14 = objc_alloc(MEMORY[0x277CBEBC0]);
    completion = [v8 completion];
    v16 = [v14 initWithString:completion];
    [v8 setUrl:v16];

    [v8 setStoreIdentifier:@"278911476"];
    [v8 setSectionBundleIdentifier:v55];
    [v8 setSectionHeader:@"Apple Music"];
    [v8 setDomainName:@"media"];
    [v8 setMinimumRankOfTopHitToSuppressResult:15];
    [v8 setResultType:@"media"];
    [v8 setResultTemplate:@"generic"];
    [v8 setType:1];
    query = [queryCopy query];
    [v8 setQueryId:{objc_msgSend(query, "queryIdent")}];

    v18 = objc_alloc_init(MEMORY[0x277D4C230]);
    v19 = objc_alloc_init(MEMORY[0x277D4C328]);
    v66[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    v60 = v18;
    [v18 setCardSections:v20];

    v21 = objc_alloc_init(MEMORY[0x277D4C4E8]);
    [v19 setCommand:v21];
    [v21 setCommandDetail:@"open_media"];
    v22 = objc_alloc_init(MEMORY[0x277D4C550]);
    [v21 setPunchout:v22];

    punchout = [v21 punchout];
    [punchout setBundleIdentifier:@"com.apple.Music"];

    v24 = [v8 url];
    v65 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    punchout2 = [v21 punchout];
    [punchout2 setUrls:v25];

    [v19 setType:@"detailed_row"];
    v27 = objc_alloc(MEMORY[0x277D4C6B8]);
    v28 = objc_alloc(MEMORY[0x277CBEBC0]);
    artworkURL = [v7 artworkURL];
    v30 = [v28 initWithString:artworkURL];
    v31 = [v27 initWithURL:v30];
    [v19 setThumbnail:v31];

    v32 = objc_alloc_init(MEMORY[0x277D4C598]);
    [v19 setTitle:v32];

    title = [v19 title];
    [title setStarRating:0.0];

    title2 = [v19 title];
    [title2 setMaxLines:2];

    title3 = [v19 title];
    trackName2 = [v7 trackName];
    [title3 setText:trackName2];

    v37 = objc_alloc_init(MEMORY[0x277D4C598]);
    artistName = [v7 artistName];
    [v37 setText:artistName];

    v39 = objc_alloc_init(MEMORY[0x277D4C598]);
    collectionName = [v7 collectionName];
    [v39 setText:collectionName];

    v41 = objc_alloc_init(MEMORY[0x277D4C598]);
    [v41 setMaxLines:0];
    if ([v7 trackExplicitness])
    {
      [v41 setContentAdvisory:@"Explicit"];
    }

    trackTimeMillis = [v7 trackTimeMillis];
    recommendationsCopy = v59;
    if (trackTimeMillis >= 1000)
    {
      v43 = trackTimeMillis / 1000;
      if ((trackTimeMillis / 1000) >> 7 <= 0x2A2)
      {
        if (v43 >= 0xE10)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%02lu:%02lu", v43 / 0xE10, v43 % 0xE10 / 0x3C, v43 % 0x3C];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%lu:%02lu", v43 % 0xE10 / 0x3C, v43 % 0x3C, v54];
        }
        v44 = ;
        v45 = objc_alloc_init(MEMORY[0x277D4C598]);
        [v19 setFootnote:v45];

        footnote = [v19 footnote];
        [footnote setText:v44];

        footnote2 = [v19 footnote];
        [footnote2 setMaxLines:1];

        recommendationsCopy = v59;
      }
    }

    v64[0] = v37;
    v64[1] = v39;
    v64[2] = v41;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
    [v19 setDescriptions:v48];

    [v8 setInlineCard:v60];
    [v56 addObject:v8];

    ++v6;
  }

  while (v6 != 3);
  v49 = os_log_create("com.apple.Spotlight", "recs");
  query2 = [queryCopy query];
  queryIdent = [query2 queryIdent];

  if (queryIdent - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v49))
  {
    *buf = 138412290;
    v63 = string;
    _os_signpost_emit_with_name_impl(&dword_26B71B000, v49, OS_SIGNPOST_EVENT, queryIdent, "SRERenderingResults", "AdamIDs: %@", buf, 0xCu);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v56;
}

- (void)start
{
  v21.receiver = self;
  v21.super_class = SPRecommendationQuery;
  [(SPKQuery *)&v21 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:8])
  {
    userQueryString = [(SPKQuery *)self userQueryString];
    v4 = [userQueryString mutableCopy];

    if (v4)
    {
      delegate = [(SPKQuery *)self delegate];
      if (([delegate isPeopleSearch] & 1) == 0 && !objc_msgSend(delegate, "isScopedAppSearch"))
      {
        query = [delegate query];
        disabledBundles = [query disabledBundles];
        v8 = [disabledBundles containsObject:@"com.apple.Music"];

        if (!v8)
        {
          if (start_once != -1)
          {
            [SPRecommendationQuery start];
          }

          v17 = SPLogForSPLogCategoryTelemetry();
          externalID = [delegate externalID];
          if (externalID)
          {
            v19 = externalID;
            if (os_signpost_enabled(v17))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_26B71B000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "recommendationSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
            }
          }

          delegate = delegate;
          md_tracing_dispatch_async_propagating();

          goto LABEL_11;
        }

        v9 = logForCSLogCategoryRecs();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26B71B000, v9, OS_LOG_TYPE_DEFAULT, "Music recommendation disabled by settings.", buf, 2u);
        }
      }

      v10 = objc_alloc(MEMORY[0x277D65860]);
      queryGroupId = [(SPKQuery *)self queryGroupId];
      v12 = [v10 initWithQueryID:queryGroupId sourceKind:8 sections:MEMORY[0x277CBEBF8]];
      responseHandler = [(SPKQuery *)self responseHandler];
      (responseHandler)[2](responseHandler, v12);
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277D65860]);
      queryGroupId2 = [(SPKQuery *)self queryGroupId];
      delegate = [v14 initWithQueryID:queryGroupId2 sourceKind:8 sections:MEMORY[0x277CBEBF8]];
      responseHandler2 = [(SPKQuery *)self responseHandler];
      (responseHandler2)[2](responseHandler2, delegate);
    }

LABEL_11:
  }
}

uint64_t __30__SPRecommendationQuery_start__block_invoke()
{
  start_recQueue = dispatch_queue_create("Music Queue", 0);

  return MEMORY[0x2821F96F8]();
}

@end