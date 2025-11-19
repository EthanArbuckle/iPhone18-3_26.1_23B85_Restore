@interface PXSearchParsecAnalyticsSession
+ (id)sharedSession;
- (PARSession)session;
- (PXSearchParsecAnalyticsSession)init;
- (id)_rankingInfoForQueryResult:(id)a3 featureAvailability:(id)a4;
- (int)_libraryBucketForCount:(unint64_t)a3;
- (int)_retrievalBucketForCount:(unint64_t)a3;
- (void)_reportFeedback:(id)a3;
- (void)_reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback:(id)a3;
- (void)reportAllResultsShown:(id)a3 retrievalTypeMap:(id)a4;
- (void)reportInitialSuggestionSelected;
- (void)reportInitialSuggestions:(id)a3;
- (void)reportPhotosAppEnteredBackground;
- (void)reportPhotosAppLaunchedOrEnteredForegroundWithPreviousSearchText:(id)a3 previousSearchTokens:(id)a4;
- (void)reportPhotosAppLaunchedOrEnteredForegroundWithSpotlightSearchActivity;
- (void)reportPhotosAppQuit;
- (void)reportSearchAssetResultSelected:(id)a3 isTopResult:(BOOL)a4 retrievalType:(unint64_t)a5;
- (void)reportSearchButtonTappedWhenScoped:(BOOL)a3;
- (void)reportSearchCollectionResultSelected:(id)a3 type:(unint64_t)a4;
- (void)reportSearchFieldBackButtonSelected;
- (void)reportSearchFieldContentChanged:(id)a3 isScoped:(BOOL)a4 isSemanticSearchEnabled:(BOOL)a5;
- (void)reportSearchFieldContentCleared;
- (void)reportSearchQueryExecutionCompleted:(id)a3 forLibrary:(id)a4;
- (void)reportSearchSuggestionSelected:(id)a3;
- (void)reportSearchTabDeselected;
- (void)reportToBiomeResults:(id)a3 forSearchQuery:(id)a4 forLibrary:(id)a5;
- (void)reportTopCollectionsShown:(id)a3;
- (void)reportTopResultsShown:(id)a3 retrievalTypeMap:(id)a4;
@end

@implementation PXSearchParsecAnalyticsSession

+ (id)sharedSession
{
  if (sharedSession_onceToken != -1)
  {
    dispatch_once(&sharedSession_onceToken, &__block_literal_global_4109);
  }

  v3 = sharedSession_sharedSession;

  return v3;
}

void __47__PXSearchParsecAnalyticsSession_sharedSession__block_invoke()
{
  v0 = objc_alloc_init(PXSearchParsecAnalyticsSession);
  v1 = sharedSession_sharedSession;
  sharedSession_sharedSession = v0;
}

- (PXSearchParsecAnalyticsSession)init
{
  v9.receiver = self;
  v9.super_class = PXSearchParsecAnalyticsSession;
  v2 = [(PXSearchParsecAnalyticsSession *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentQueryId = 1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = dispatch_queue_create("com.apple.photos.search.parsec_reporting", v5);
    reportingQueue = v3->_reportingQueue;
    v3->_reportingQueue = v6;
  }

  return v3;
}

- (void)reportToBiomeResults:(id)a3 forSearchQuery:(id)a4 forLibrary:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 count];
  if (v10 >= 0x32)
  {
    v11 = 50;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 subarrayWithRange:{0, v11}];

  v13 = objc_alloc_init(MEMORY[0x1E6978828]);
  v27 = 0;
  v14 = [v8 featureAvailabilityForFeature:3 readOptions:v13 error:&v27];

  v15 = v27;
  if (v14)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "numberOfAssets")}];
    v17 = MEMORY[0x1E696AD98];
    [v14 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
    v19 = [v17 numberWithDouble:v18 * 100.0];
    v20 = MEMORY[0x1E6991F28];
    v21 = *MEMORY[0x1E6991E60];
    v22 = *MEMORY[0x1E6991E80];
    v28[0] = *MEMORY[0x1E6991E78];
    v28[1] = v22;
    v29[0] = v12;
    v29[1] = v7;
    v23 = *MEMORY[0x1E6991E70];
    v28[2] = *MEMORY[0x1E6991E68];
    v28[3] = v23;
    v29[2] = v19;
    v29[3] = v16;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
    [v20 sendEvent:v21 withPayload:v24];

LABEL_10:
    goto LABEL_11;
  }

  v16 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v25 = [v15 localizedDescription];
    v19 = v25;
    v26 = @"nil featureAvailability. No error returned.";
    if (v25)
    {
      v26 = v25;
    }

    *buf = 138412290;
    v31 = v26;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Unable to report search query Biome analytics because of %@", buf, 0xCu);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_reportFeedback:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSearchParsecAnalyticsSession *)self session];
  [v5 reportFeedback:v4 queryId:{-[PXSearchParsecAnalyticsSession currentQueryId](self, "currentQueryId")}];

  v6 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = [(PXSearchParsecAnalyticsSession *)self currentQueryId];
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Reporting queryID: %lld feedback: %@", &v7, 0x16u);
  }
}

- (void)_reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback:(id)a3
{
  v4 = a3;
  v5 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  dispatch_suspend(v5);

  objc_initWeak(&location, self);
  v6 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXSearchParsecAnalyticsSession__reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback___block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v8, &location);
  block[4] = v4;
  dispatch_async(v6, block);

  px_dispatch_on_main_queue_when_idle_after_delay();
}

void __95__PXSearchParsecAnalyticsSession__reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reportFeedback:*(a1 + 32)];

  v3 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Reporting Photos app launched", v4, 2u);
  }
}

void __95__PXSearchParsecAnalyticsSession__reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback___block_invoke_224(uint64_t a1)
{
  v1 = [*(a1 + 32) reportingQueue];
  dispatch_resume(v1);
}

- (void)reportInitialSuggestionSelected
{
  v3 = objc_initWeak(&location, self);
  v4 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PXSearchParsecAnalyticsSession_reportInitialSuggestionSelected__block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__PXSearchParsecAnalyticsSession_reportInitialSuggestionSelected__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[PXSearchParsecAnalyticsUtilities SFSearchResultForInitialSuggestionWithQueryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultForInitialSuggestionWithQueryId:", [WeakRetained currentQueryId]);

  v4 = [PXSearchParsecAnalyticsUtilities commandFeedbackFromSFSearchResult:v3];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _reportFeedback:v4];

  v6 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Reporting initial suggestion selected", v7, 2u);
  }
}

- (void)reportInitialSuggestions:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v6 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXSearchParsecAnalyticsSession_reportInitialSuggestions___block_invoke;
  block[3] = &unk_1E774B248;
  v9 = v4;
  v7 = v4;
  objc_copyWeak(&v10, &location);
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __59__PXSearchParsecAnalyticsSession_reportInitialSuggestions___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = +[PXSearchParsecAnalyticsUtilities sectionRankingFeedbackWithInitialSuggestions:queryId:](PXSearchParsecAnalyticsUtilities, "sectionRankingFeedbackWithInitialSuggestions:queryId:", v2, [WeakRetained currentQueryId]);

  v5 = objc_alloc(MEMORY[0x1E69CA340]);
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 initWithSections:v6 blendingDuration:0.0];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _reportFeedback:v7];

  v9 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Reporting number of initial suggestions in search home", v10, 2u);
  }
}

- (void)reportTopCollectionsShown:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PXSearchParsecAnalyticsSession_reportTopCollectionsShown___block_invoke;
  block[3] = &unk_1E774B248;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__PXSearchParsecAnalyticsSession_reportTopCollectionsShown___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v3;
        v4 = *(*(&v26 + 1) + 8 * v3);
        v5 = [v4 unsignedIntValue];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              WeakRetained = objc_loadWeakRetained((a1 + 40));
              v13 = +[PXSearchParsecAnalyticsUtilities SFSearchResultFromCollectionIdentifier:type:queryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultFromCollectionIdentifier:type:queryId:", v11, v5, [WeakRetained currentQueryId]);

              [v2 addObject:v13];
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v3 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  v14 = [objc_alloc(MEMORY[0x1E69CA588]) initWithResults:v2 triggerEvent:1];
  v15 = objc_loadWeakRetained((a1 + 40));
  [v15 _reportFeedback:v14];

  v16 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "Reporting currently shown top collection results", buf, 2u);
  }
}

- (void)reportAllResultsShown:(id)a3 retrievalTypeMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXSearchParsecAnalyticsSession_reportAllResultsShown_retrievalTypeMap___block_invoke;
  v11[3] = &unk_1E774B708;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v14, &location);
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__PXSearchParsecAnalyticsSession_reportAllResultsShown_retrievalTypeMap___block_invoke(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    v5 = 100;
LABEL_3:
    v6 = 0;
    v7 = v5 & (v5 >> 63);
    while (1)
    {
      if (*v20 != v4)
      {
        objc_enumerationMutation(obj);
      }

      if (v7 == v5)
      {
        break;
      }

      v8 = *(*(&v19 + 1) + v6);
      v9 = [a1[5] objectForKeyedSubscript:v8];
      v10 = [v9 unsignedIntValue];

      WeakRetained = objc_loadWeakRetained(a1 + 6);
      v12 = +[PXSearchParsecAnalyticsUtilities SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:", v8, 0, v10, [WeakRetained currentQueryId]);

      [v17 addObject:v12];
      --v5;

      v6 += 8;
      if (!--v3)
      {
        v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E69CA588]) initWithResults:v17 triggerEvent:1];
  v14 = objc_loadWeakRetained(a1 + 6);
  [v14 _reportFeedback:v13];

  v15 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Reporting currently shown All Results", buf, 2u);
  }
}

- (void)reportTopResultsShown:(id)a3 retrievalTypeMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__PXSearchParsecAnalyticsSession_reportTopResultsShown_retrievalTypeMap___block_invoke;
  v11[3] = &unk_1E774B708;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v14, &location);
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__PXSearchParsecAnalyticsSession_reportTopResultsShown_retrievalTypeMap___block_invoke(id *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [a1[5] objectForKeyedSubscript:v7];
        v9 = [v8 unsignedIntValue];

        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v11 = +[PXSearchParsecAnalyticsUtilities SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:", v7, 1, v9, [WeakRetained currentQueryId]);

        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = [objc_alloc(MEMORY[0x1E69CA588]) initWithResults:v2 triggerEvent:1];
  v13 = objc_loadWeakRetained(a1 + 6);
  [v13 _reportFeedback:v12];

  v14 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "Reporting currently shown Top Results", buf, 2u);
  }
}

- (void)reportSearchCollectionResultSelected:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_initWeak(&location, self);
  v8 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXSearchParsecAnalyticsSession_reportSearchCollectionResultSelected_type___block_invoke;
  block[3] = &unk_1E77422A8;
  v13[1] = a4;
  v11 = v6;
  v12 = self;
  v9 = v6;
  objc_copyWeak(v13, &location);
  dispatch_async(v8, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __76__PXSearchParsecAnalyticsSession_reportSearchCollectionResultSelected_type___block_invoke(uint64_t a1)
{
  v2 = +[PXSearchParsecAnalyticsUtilities SFSearchResultFromCollectionIdentifier:type:queryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultFromCollectionIdentifier:type:queryId:", *(a1 + 32), *(a1 + 56), [*(a1 + 40) currentQueryId]);
  v3 = objc_alloc_init(MEMORY[0x1E69C9F88]);
  v4 = objc_alloc_init(MEMORY[0x1E69C9F08]);
  v5 = objc_alloc_init(MEMORY[0x1E69C9ED0]);
  v6 = [objc_alloc(MEMORY[0x1E69C9F98]) initWithCommand:v3 cardSection:v4 result:v2 button:v5];
  [v6 setTriggerEvent:2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _reportFeedback:v6];

  v8 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "Reporting search collection result was selected", v9, 2u);
  }
}

- (void)reportSearchAssetResultSelected:(id)a3 isTopResult:(BOOL)a4 retrievalType:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_initWeak(&location, self);
  v10 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__PXSearchParsecAnalyticsSession_reportSearchAssetResultSelected_isTopResult_retrievalType___block_invoke;
  block[3] = &unk_1E7741648;
  v15 = a4;
  v13 = v8;
  v14[1] = a5;
  v11 = v8;
  objc_copyWeak(v14, &location);
  dispatch_async(v10, block);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __92__PXSearchParsecAnalyticsSession_reportSearchAssetResultSelected_isTopResult_retrievalType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = +[PXSearchParsecAnalyticsUtilities SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:](PXSearchParsecAnalyticsUtilities, "SFSearchResultFromAssetUUID:isTopResult:retrievalType:queryId:", v2, v3, v4, [WeakRetained currentQueryId]);

  v7 = objc_alloc_init(MEMORY[0x1E69C9F88]);
  v8 = objc_alloc_init(MEMORY[0x1E69C9F08]);
  v9 = objc_alloc_init(MEMORY[0x1E69C9ED0]);
  v10 = [objc_alloc(MEMORY[0x1E69C9F98]) initWithCommand:v7 cardSection:v8 result:v6 button:v9];
  [v10 setTriggerEvent:2];
  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 _reportFeedback:v10];

  v12 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "Reporting search result was selected", v13, 2u);
  }
}

- (void)reportSearchSuggestionSelected:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PXSearchParsecAnalyticsSession *)self currentQueryId];
    objc_initWeak(location, self);
    v6 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__PXSearchParsecAnalyticsSession_reportSearchSuggestionSelected___block_invoke;
    block[3] = &unk_1E7746600;
    v9 = v4;
    v10[1] = v5;
    objc_copyWeak(v10, location);
    dispatch_async(v6, block);

    objc_destroyWeak(v10);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = PLSearchUIParsecAnalyticsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "Encountered unexpected nil search suggestion when reporting token selection to parsec.", location, 2u);
    }
  }
}

void __65__PXSearchParsecAnalyticsSession_reportSearchSuggestionSelected___block_invoke(uint64_t a1)
{
  v2 = [PXSearchParsecAnalyticsUtilities SFSearchResultFromSearchSuggestion:*(a1 + 32) queryId:*(a1 + 48)];
  v3 = [PXSearchParsecAnalyticsUtilities commandFeedbackFromSFSearchResult:v2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reportFeedback:v3];

  v5 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Reporting search suggestion selected", v6, 2u);
  }
}

- (void)reportSearchFieldBackButtonSelected
{
  v3 = objc_initWeak(&location, self);
  v4 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PXSearchParsecAnalyticsSession_reportSearchFieldBackButtonSelected__block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __69__PXSearchParsecAnalyticsSession_reportSearchFieldBackButtonSelected__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69C9F30]) initWithEvent:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setCurrentStartSearchFeedback:0];

  v5 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Reporting search field cancel button selected", v6, 2u);
  }
}

- (void)reportSearchFieldContentCleared
{
  v3 = [(PXSearchParsecAnalyticsSession *)self currentQueryId];
  v4 = objc_initWeak(&location, self);
  v5 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXSearchParsecAnalyticsSession_reportSearchFieldContentCleared__block_invoke;
  block[3] = &unk_1E7749808;
  v7[1] = v3;
  objc_copyWeak(v7, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __65__PXSearchParsecAnalyticsSession_reportSearchFieldContentCleared__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69C9F30]) initWithEvent:0];
  [v2 setQueryId:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setCurrentStartSearchFeedback:0];

  v5 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Reporting search field content cleared", v6, 2u);
  }
}

- (void)reportSearchQueryExecutionCompleted:(id)a3 forLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PXSearchParsecAnalyticsSession_reportSearchQueryExecutionCompleted_forLibrary___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v15, &location);
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __81__PXSearchParsecAnalyticsSession_reportSearchQueryExecutionCompleted_forLibrary___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained currentStartSearchFeedback];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6978828]);
    v5 = *(a1 + 32);
    v20 = 0;
    v6 = [v5 featureAvailabilityForFeature:3 readOptions:v4 error:&v20];
    v7 = v20;
    if (!v6)
    {
      v8 = PLSearchUIParsecAnalyticsGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 localizedDescription];
        v10 = v9;
        v11 = @"nil featureAvailability. No error returned.";
        if (v9)
        {
          v11 = v9;
        }

        *buf = 138412290;
        v22 = v11;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Unable to report search query execution completion analytics because of %@", buf, 0xCu);
      }
    }

    v12 = objc_alloc(MEMORY[0x1E69CA058]);
    v13 = objc_loadWeakRetained((a1 + 56));
    v14 = [v13 currentStartSearchFeedback];
    v15 = [v12 initWithStartSearch:v14];

    v16 = [*(a1 + 40) _rankingInfoForQueryResult:*(a1 + 48) featureAvailability:v6];
    [v15 setPhotosRankingInfo:v16];

    v17 = objc_loadWeakRetained((a1 + 56));
    [v17 _reportFeedback:v15];

    v18 = objc_loadWeakRetained((a1 + 56));
    [v18 setCurrentStartSearchFeedback:0];

    v19 = PLSearchUIParsecAnalyticsGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "Reporting search query execution completed", buf, 2u);
    }
  }

  else
  {
    v4 = PLSearchUIParsecAnalyticsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Unexpectedly tracked query end without tracking query begin", buf, 2u);
    }
  }
}

- (id)_rankingInfoForQueryResult:(id)a3 featureAvailability:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [a3 searchResults];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v25;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v24 + 1) + 8 * i) retrievalType];
        switch(v14)
        {
          case 3:
            ++v11;
LABEL_11:
            ++v10;
            continue;
          case 2:
            goto LABEL_11;
          case 1:
            ++v11;
            break;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
  v11 = 0;
LABEL_16:

  v15 = [(PXSearchParsecAnalyticsSession *)self _retrievalBucketForCount:v11];
  v16 = [(PXSearchParsecAnalyticsSession *)self _retrievalBucketForCount:v10];
  if (v6 && [v6 wasComputed])
  {
    v17 = [v6 numberOfAssets];
    [v6 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
    v19 = (v18 * v17);
    v20 = [(PXSearchParsecAnalyticsSession *)self _libraryBucketForCount:v17];
    v21 = [(PXSearchParsecAnalyticsSession *)self _libraryBucketForCount:v19];
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = objc_alloc_init(MEMORY[0x1E69CA300]);
  [v22 setTotalNumberOfMetadataMatchedAssets:v15];
  [v22 setTotalNumberOfEmbeddingMatchedAssets:v16];
  [v22 setTotalNumberOfAssetsInLibrary:v20];
  [v22 setTotalNumberOfAssetsIndexed:v21];

  return v22;
}

- (int)_libraryBucketForCount:(unint64_t)a3
{
  if (a3 < 0x1F5)
  {
    return 1;
  }

  if (a3 < 0x7D1)
  {
    return 2;
  }

  if (a3 < 0x1389)
  {
    return 3;
  }

  if (a3 < 0x2711)
  {
    return 4;
  }

  if (a3 < 0x4E21)
  {
    return 5;
  }

  if (a3 < 0x7531)
  {
    return 6;
  }

  if (a3 < 0x9C41)
  {
    return 7;
  }

  if (a3 < 0xC351)
  {
    return 8;
  }

  if (a3 < 0x186A1)
  {
    return 9;
  }

  return 10;
}

- (int)_retrievalBucketForCount:(unint64_t)a3
{
  if (a3 < 0xB)
  {
    return 1;
  }

  if (a3 < 0x33)
  {
    return 2;
  }

  if (a3 < 0x65)
  {
    return 3;
  }

  if (a3 < 0xFB)
  {
    return 4;
  }

  if (a3 < 0x1F5)
  {
    return 5;
  }

  if (a3 < 0x7D1)
  {
    return 6;
  }

  if (a3 < 0x1389)
  {
    return 7;
  }

  if (a3 < 0x2711)
  {
    return 8;
  }

  if (a3 < 0x4E21)
  {
    return 9;
  }

  if (a3 < 0x7531)
  {
    return 10;
  }

  if (a3 < 0x9C41)
  {
    return 11;
  }

  if (a3 < 0xC351)
  {
    return 12;
  }

  if (a3 < 0x186A1)
  {
    return 13;
  }

  return 14;
}

- (void)reportSearchFieldContentChanged:(id)a3 isScoped:(BOOL)a4 isSemanticSearchEnabled:(BOOL)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v9 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__PXSearchParsecAnalyticsSession_reportSearchFieldContentChanged_isScoped_isSemanticSearchEnabled___block_invoke;
  v11[3] = &unk_1E772DB80;
  objc_copyWeak(&v13, &location);
  v12 = v8;
  v14 = a4;
  v15 = a5;
  v10 = v8;
  dispatch_async(v9, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __99__PXSearchParsecAnalyticsSession_reportSearchFieldContentChanged_isScoped_isSemanticSearchEnabled___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentQueryId:{objc_msgSend(WeakRetained, "currentQueryId") + 1}];

  v3 = objc_alloc(MEMORY[0x1E69C9F40]);
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 initWithEvent:@"com.apple.photos.query.start" timeInterval:0 queryId:{objc_msgSend(v4, "currentQueryId")}];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _reportFeedback:v5];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = *(a1 + 32);
  v9 = [v8 length];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__PXSearchParsecAnalyticsSession_reportSearchFieldContentChanged_isScoped_isSemanticSearchEnabled___block_invoke_2;
  v20[3] = &unk_1E772DB58;
  v10 = v7;
  v21 = v10;
  [v8 enumerateAttributesInRange:0 options:v9 usingBlock:{0, v20}];
  v11 = [*(a1 + 32) string];
  v12 = [PXSearchParsecAnalyticsUtilities descriptionForSearchString:v11 searchTokens:v10];

  v13 = objc_alloc(MEMORY[0x1E69CA478]);
  if ([*(a1 + 32) length])
  {
    v14 = 0;
  }

  else
  {
    v14 = 9;
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v13 initWithInput:v12 triggerEvent:v14 indexType:0 queryId:{objc_msgSend(v15, "currentQueryId")}];

  [v16 setIsPhotosScopedSearch:*(a1 + 48)];
  [v16 setIsSemanticSearchEligible:*(a1 + 49)];
  v17 = objc_loadWeakRetained((a1 + 40));
  [v17 setCurrentStartSearchFeedback:v16];

  v18 = objc_loadWeakRetained((a1 + 40));
  [v18 _reportFeedback:v16];

  v19 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "Reporting search field contents changed with input description: %@", buf, 0xCu);
  }
}

void __99__PXSearchParsecAnalyticsSession_reportSearchFieldContentChanged_isScoped_isSemanticSearchEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *MEMORY[0x1E6978F98];
  v4 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6978F98]];

  v5 = v8;
  if (v4)
  {
    v6 = [v8 objectForKeyedSubscript:v3];
    v7 = [v6 suggestion];
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    v5 = v8;
  }
}

- (void)reportSearchTabDeselected
{
  objc_initWeak(&location, self);
  v3 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PXSearchParsecAnalyticsSession_reportSearchTabDeselected__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __59__PXSearchParsecAnalyticsSession_reportSearchTabDeselected__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:25];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Reporting search home disappeared", v5, 2u);
  }
}

- (void)reportSearchButtonTappedWhenScoped:(BOOL)a3
{
  objc_initWeak(&location, self);
  v5 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PXSearchParsecAnalyticsSession_reportSearchButtonTappedWhenScoped___block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __69__PXSearchParsecAnalyticsSession_reportSearchButtonTappedWhenScoped___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CA3F8]) initWithEvent:11];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = [objc_alloc(MEMORY[0x1E69CA478]) initWithInput:0 triggerEvent:9 indexType:0];
  [v4 setIsPhotosScopedSearch:*(a1 + 40)];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _reportFeedback:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setCurrentStartSearchFeedback:v4];

  v7 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Reporting search button tapped and search home appeared", v8, 2u);
  }
}

- (void)reportPhotosAppQuit
{
  objc_initWeak(&location, self);
  v3 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__PXSearchParsecAnalyticsSession_reportPhotosAppQuit__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__PXSearchParsecAnalyticsSession_reportPhotosAppQuit__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:11];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Reporting Photos app quit", v5, 2u);
  }
}

- (void)reportPhotosAppEnteredBackground
{
  objc_initWeak(&location, self);
  v3 = [(PXSearchParsecAnalyticsSession *)self reportingQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__PXSearchParsecAnalyticsSession_reportPhotosAppEnteredBackground__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__PXSearchParsecAnalyticsSession_reportPhotosAppEnteredBackground__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69CA400]) initWithEvent:23];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportFeedback:v2];

  v4 = PLSearchUIParsecAnalyticsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Reporting Photos app was backgrounded", v5, 2u);
  }
}

- (void)reportPhotosAppLaunchedOrEnteredForegroundWithSpotlightSearchActivity
{
  v3 = [objc_alloc(MEMORY[0x1E69CA3F8]) initWithEvent:7];
  [v3 setOriginatingApp:@"com.apple.searchd.searchthroughsuggestions"];
  [(PXSearchParsecAnalyticsSession *)self _reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback:v3];
}

- (void)reportPhotosAppLaunchedOrEnteredForegroundWithPreviousSearchText:(id)a3 previousSearchTokens:(id)a4
{
  v5 = MEMORY[0x1E69CA3F8];
  v6 = a3;
  v8 = [[v5 alloc] initWithEvent:7];
  v7 = [PXSearchParsecAnalyticsUtilities descriptionForSearchString:v6 searchTokens:0];

  [v8 setPreexistingInput:v7];
  [(PXSearchParsecAnalyticsSession *)self _reportPhotosAppLaunchedOrEnteredForegroundEventWithFeedback:v8];
}

- (PARSession)session
{
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v3 = self;
  objc_sync_enter(v3);
  session = v3->_session;
  if (!session)
  {
    v5 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"com.apple.photos" userAgent:@"Photos/1"];
    v6 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:v5];
    v7 = v3->_session;
    v3->_session = v6;

    session = v3->_session;
  }

  v8 = session;
  objc_sync_exit(v3);

  return v8;
}

@end