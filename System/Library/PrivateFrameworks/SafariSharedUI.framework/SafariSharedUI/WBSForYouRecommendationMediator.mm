@interface WBSForYouRecommendationMediator
+ (double)scoreForRecommendation:(id)recommendation weightManager:(id)manager simplifiedURLStringToLastVisitedDateMap:(id)map;
+ (id)_adjustedTopicsWithTopics:(id)topics;
+ (id)_titleForRecommendationSource:(unint64_t)source;
+ (id)_titleForRecommendationTopicSource:(unint64_t)source;
+ (void)_rankRecommendationsInPlace:(id)place history:(id)history weightManager:(id)manager suppressHistoryDeduplication:(BOOL)deduplication;
- (WBSForYouRecommendationMediator)initWithContextClient:(id)client historyProvider:(id)provider;
- (id)_dataSourceWeightManager;
- (id)analyticsMetadataForRecommendation:(id)recommendation;
- (id)recommendationFromDictionary:(id)dictionary;
- (void)_beginListeningForHandoffActivity;
- (void)_createAppSuggestionsManagerIfNecessary;
- (void)_createPreferenceManagerIfNecessary;
- (void)_didUpdateFoundInSuggestions:(id)suggestions;
- (void)_endListeningForHandoffActivity;
- (void)_fetchImagesForRecommendations:(id)recommendations recommendationsDispatchGroup:(id)group;
- (void)_retrieveFoundInRecommendationsWithCompletionHandler:(id)handler;
- (void)banURLsOfSameDomainAsURL:(id)l postingChangeNotificationWhenDone:(BOOL)done;
- (void)bestAppSuggestionChanged:(id)changed;
- (void)dealloc;
- (void)downvoteSource:(unint64_t)source postingChangeNotificationWhenDone:(BOOL)done;
- (void)obtainMessagesImagesWherePossibleForRecommendations:(id)recommendations completionHandler:(id)handler;
- (void)retrieveHandoffRecommendationWithCompletionHandler:(id)handler;
- (void)updatedRecommendationsForTopics:(id)topics withCompletionHandler:(id)handler;
- (void)updatedTopicsWithCompletionHandler:(id)handler;
@end

@implementation WBSForYouRecommendationMediator

- (WBSForYouRecommendationMediator)initWithContextClient:(id)client historyProvider:(id)provider
{
  clientCopy = client;
  providerCopy = provider;
  v25.receiver = self;
  v25.super_class = WBSForYouRecommendationMediator;
  v9 = [(WBSForYouRecommendationMediator *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextClient, client);
    v11 = _Block_copy(providerCopy);
    historyProvider = v10->_historyProvider;
    v10->_historyProvider = v11;

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSForYouRecommendationMediator.%@.%p.internalQueue", objc_opt_class(), v10];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    internalQueue = v10->_internalQueue;
    v10->_internalQueue = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    messagesMetadataCache = v10->_messagesMetadataCache;
    v10->_messagesMetadataCache = v16;

    v18 = [MEMORY[0x1E695DFA8] set];
    requestsInProgressBySourceID = v10->_requestsInProgressBySourceID;
    v10->_requestsInProgressBySourceID = v18;

    v20 = objc_alloc_init(WBSFoundInRecommendationManager);
    foundInManager = v10->_foundInManager;
    v10->_foundInManager = v20;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__didUpdateFoundInSuggestions_ name:@"WBSFoundInRecommendationManagerDidUpdateSuggestionsNotification" object:v10->_foundInManager];

    [(WBSForYouRecommendationMediator *)v10 _beginListeningForHandoffActivity];
    v23 = v10;
  }

  return v10;
}

- (void)dealloc
{
  [(WBSForYouRecommendationMediator *)self _endListeningForHandoffActivity];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WBSForYouRecommendationMediator;
  [(WBSForYouRecommendationMediator *)&v4 dealloc];
}

- (void)_didUpdateFoundInSuggestions:(id)suggestions
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69C92E0] object:self];
}

- (void)updatedTopicsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E69C9068] areLocalSiriSuggestionsEnabled])
  {
    if (!self->_topicManager)
    {
      v5 = [WBSForYouTopicManager alloc];
      v6 = (*(self->_historyProvider + 2))();
      v7 = [(WBSForYouTopicManager *)v5 initWithHistory:v6 contextClient:self->_contextClient];
      topicManager = self->_topicManager;
      self->_topicManager = v7;
    }

    v9 = dispatch_group_create();
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__7;
    v32[4] = __Block_byref_object_dispose__7;
    array = [MEMORY[0x1E695DF70] array];
    dispatch_group_enter(v9);
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v10 = self->_topicManager;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke;
    v23[3] = &unk_1E8285200;
    v25 = v30;
    v26 = v32;
    v27 = v28;
    v11 = v9;
    v24 = v11;
    [(WBSForYouTopicManager *)v10 contextKitTopicsWithCompletionHandler:v23];
    dispatch_group_enter(v11);
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v12 = self->_topicManager;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke_16;
    v16[3] = &unk_1E8285200;
    v18 = v21;
    v19 = v32;
    v20 = v28;
    v13 = v11;
    v17 = v13;
    [(WBSForYouTopicManager *)v12 portraitNamedEntitiesWithCompletionHandler:v16];
    v14 = MEMORY[0x1E69E96A0];
    v15 = handlerCopy;
    WBSDispatchGroupNotifyWithTimeout();

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  if ([v3 count])
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v4);
    v5 = atomic_load((*(*(a1 + 56) + 8) + 24));
    if ((v5 & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v3];
    }

    objc_sync_exit(v4);
  }

  v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Obtained %ld ContextKit topics.", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  atomic_store(1u, (*(*(a1 + 40) + 8) + 24));
  if ([v3 count])
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);
    objc_sync_enter(v4);
    v5 = atomic_load((*(*(a1 + 56) + 8) + 24));
    if ((v5 & 1) == 0)
    {
      [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v3];
    }

    objc_sync_exit(v4);
  }

  v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = 134217984;
    v9 = [v3 count];
    _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Obtained %ld Portrait topics.", &v8, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke_17(void *a1, uint64_t a2)
{
  v4 = *(*(a1[5] + 8) + 40);
  objc_sync_enter(v4);
  if (a1[4])
  {
    if (a2 == 1)
    {
      v5 = atomic_load((*(a1[6] + 8) + 24));
      if ((v5 & 1) == 0)
      {
        v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke_17_cold_1();
        }
      }

      v7 = atomic_load((*(a1[7] + 8) + 24));
      if ((v7 & 1) == 0)
      {
        v8 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __70__WBSForYouRecommendationMediator_updatedTopicsWithCompletionHandler___block_invoke_17_cold_2();
        }
      }

      atomic_store(1u, (*(a1[8] + 8) + 24));
    }

    v9 = [WBSForYouRecommendationMediator _adjustedTopicsWithTopics:*(*(a1[5] + 8) + 40)];
    v10 = [v9 copy];

    (*(a1[4] + 16))();
  }

  objc_sync_exit(v4);
}

- (void)banURLsOfSameDomainAsURL:(id)l postingChangeNotificationWhenDone:(BOOL)done
{
  lCopy = l;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__WBSForYouRecommendationMediator_banURLsOfSameDomainAsURL_postingChangeNotificationWhenDone___block_invoke;
  block[3] = &unk_1E82834C8;
  block[4] = self;
  v10 = lCopy;
  doneCopy = done;
  v8 = lCopy;
  dispatch_async(internalQueue, block);
}

uint64_t __94__WBSForYouRecommendationMediator_banURLsOfSameDomainAsURL_postingChangeNotificationWhenDone___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createPreferenceManagerIfNecessary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__WBSForYouRecommendationMediator_banURLsOfSameDomainAsURL_postingChangeNotificationWhenDone___block_invoke_2;
  v5[3] = &__block_descriptor_33_e8_v12__0B8l;
  v6 = *(a1 + 48);
  return [v3 setPreferenceValue:1 forURL:v2 completionHandler:v5];
}

void __94__WBSForYouRecommendationMediator_banURLsOfSameDomainAsURL_postingChangeNotificationWhenDone___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32) == 1)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_14);
    }
  }
}

void __94__WBSForYouRecommendationMediator_banURLsOfSameDomainAsURL_postingChangeNotificationWhenDone___block_invoke_3()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x1E69C92E0] object:0];
}

- (void)_createPreferenceManagerIfNecessary
{
  if (!self->_perSitePreferenceManager)
  {
    v4 = [WBSForYouPerSitePreferenceManager alloc];
    mEMORY[0x1E69C8FC8] = [MEMORY[0x1E69C8FC8] sharedStore];
    v5 = [(WBSForYouPerSitePreferenceManager *)v4 initWithPerSitePreferencesStore:mEMORY[0x1E69C8FC8]];
    perSitePreferenceManager = self->_perSitePreferenceManager;
    self->_perSitePreferenceManager = v5;
  }
}

- (void)updatedRecommendationsForTopics:(id)topics withCompletionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  array = [MEMORY[0x1E695DF70] array];
  v7 = dispatch_group_create();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  dataSources = [(WBSForYouRecommendationMediator *)self dataSources];
  v9 = [dataSources countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v9)
  {
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(dataSources);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        dispatch_group_enter(v7);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke;
        v31[3] = &unk_1E8285270;
        v13 = array;
        v35 = v41;
        v32 = v13;
        v33 = v12;
        objc_copyWeak(&v36, &location);
        v34 = v7;
        [v12 recommendationsWithTopics:topicsCopy withCompletionHandler:v31];

        objc_destroyWeak(&v36);
      }

      v9 = [dataSources countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v9);
  }

  dispatch_group_enter(v7);
  v14 = WBS_LOG_CHANNEL_PREFIXStartPage();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6968000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RetrieveRecommendations", "WBSFoundInRecommendationManager", buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_24;
  v21[3] = &unk_1E8285298;
  v24 = buf;
  v15 = array;
  v22 = v15;
  v25 = v41;
  objc_copyWeak(&v26, &location);
  v16 = v7;
  v23 = v16;
  [(WBSForYouRecommendationMediator *)self _retrieveFoundInRecommendationsWithCompletionHandler:v21];
  v19 = v15;
  v20 = handlerCopy;
  WBSDispatchGroupNotifyWithTimeout();

  objc_destroyWeak(&v26);
  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v41, 8);

  objc_destroyWeak(&location);
}

void __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    v5 = atomic_load((*(*(a1 + 56) + 8) + 24));
    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObjectsFromArray:v3];
    }

    objc_sync_exit(v4);
  }

  v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v3 count];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 134218242;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_1C6968000, v7, OS_LOG_TYPE_INFO, "Retrieved %ld link recommendations from %{public}@", &v12, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _fetchImagesForRecommendations:v3 recommendationsDispatchGroup:*(a1 + 48)];

  dispatch_group_leave(*(a1 + 48));
}

void __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  atomic_store(1u, (*(*(a1 + 48) + 8) + 24));
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = atomic_load((*(*(a1 + 56) + 8) + 24));
  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  objc_sync_exit(v4);

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _fetchImagesForRecommendations:v3 recommendationsDispatchGroup:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 40));
  v7 = WBS_LOG_CHANNEL_PREFIXStartPage();
  if (os_signpost_enabled(v7))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6968000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RetrieveRecommendations", " enableTelemetry=YES ", v8, 2u);
  }
}

void __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_25(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  if (*(a1 + 48))
  {
    if (a2 == 1)
    {
      v5 = atomic_load((*(*(a1 + 56) + 8) + 24));
      if (v5)
      {
        v6 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_25_cold_2();
        }
      }

      else
      {
        v7 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_25_cold_1();
        }
      }

      atomic_store(1u, (*(*(a1 + 64) + 8) + 24));
    }

    if ([*(a1 + 32) count])
    {
      [*(a1 + 40) _createPreferenceManagerIfNecessary];
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = *(v8 + 32);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_26;
      v11[3] = &unk_1E8284A38;
      v11[4] = v8;
      v12 = *(a1 + 48);
      [v10 allowedForYouRecommendationsFromRecommendations:v9 completionHandler:v11];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  objc_sync_exit(v4);
}

void __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E8283058;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] mutableCopy];
  v3 = (*(*(a1[5] + 11) + 16))();
  v4 = [a1[5] _dataSourceWeightManager];
  [WBSForYouRecommendationMediator _rankRecommendationsInPlace:v2 history:v3 weightManager:v4 suppressHistoryDeduplication:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E8284830;
  v8 = v2;
  v5 = a1[5];
  v9 = a1[6];
  v6 = v2;
  [v5 obtainMessagesImagesWherePossibleForRecommendations:v6 completionHandler:v7];
}

uint64_t __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  removeLinkRecommendationsPassingTestWithReductionReason(*(a1 + 32), @"items with an empty title", &__block_literal_global_32);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL __89__WBSForYouRecommendationMediator_updatedRecommendationsForTopics_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 length] == 0;

  return v3;
}

- (void)obtainMessagesImagesWherePossibleForRecommendations:(id)recommendations completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  recommendationsCopy = recommendations;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = recommendationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    v12 = 0x1E8281000uLL;
    v34 = *v41;
    do
    {
      v13 = 0;
      v35 = v10;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v40 + 1) + 8 * v13);
        v15 = *(v12 + 2400);
        bundleIdentifier = [v14 bundleIdentifier];
        LODWORD(v15) = [v15 isBundleIdentifierFromMessages:bundleIdentifier];

        if (v15)
        {
          sourceID = [v14 sourceID];

          if (sourceID)
          {
            sourceID2 = [v14 sourceID];
            v19 = [sourceID2 copy];

            v20 = [(NSCache *)self->_messagesMetadataCache objectForKey:v19];
            v21 = v20;
            if (v20)
            {
              selfCopy = self;
              v23 = v8;
              v24 = v7;
              first = [v20 first];
              title = [v14 title];
              v27 = [title length];

              if (!v27 && first)
              {
                [v14 setTitle:first];
              }

              second = [v21 second];
              v29 = imageValidForPresentation(second);

              if (v29)
              {
                [v14 setImage:v29];
              }

              v7 = v24;
              v8 = v23;
              self = selfCopy;
              v11 = v34;
              v10 = v35;
              v12 = 0x1E8281000;
            }

            else
            {
              dispatch_group_enter(v7);
              if ([(NSMutableSet *)self->_requestsInProgressBySourceID containsObject:v19])
              {
                dispatch_group_leave(v7);
              }

              else
              {
                [(NSMutableSet *)self->_requestsInProgressBySourceID addObject:v19];
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __105__WBSForYouRecommendationMediator_obtainMessagesImagesWherePossibleForRecommendations_completionHandler___block_invoke;
                v36[3] = &unk_1E8285308;
                v36[4] = self;
                v30 = v19;
                v37 = v30;
                v38 = v7;
                v39 = v14;
                v31 = v30;
                v12 = 0x1E8281000;
                [(WBSForYouRecommendationMediator *)self loadLinkPresentationMetadataForMessageWithGUID:v31 completionHandler:v36];
              }
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v10);
  }

  v32 = handlerCopy;
  WBSDispatchGroupNotifyWithTimeout();
}

void __105__WBSForYouRecommendationMediator_obtainMessagesImagesWherePossibleForRecommendations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 | v5)
  {
    v6 = imageValidForPresentation(v5);
    if (v6)
    {
      [*(a1 + 56) setImage:v6];
    }

    v7 = [*(a1 + 56) title];
    v8 = [v7 length];

    if (v10 && !v8)
    {
      [*(a1 + 56) setTitle:v10];
    }

    if (v10 && v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:v10 second:v5];
      [*(*(a1 + 32) + 64) setObject:v9 forKey:*(a1 + 40)];
    }

    [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    [*(*(a1 + 32) + 72) removeObject:*(a1 + 40)];
    dispatch_group_leave(*(a1 + 48));
  }
}

uint64_t __105__WBSForYouRecommendationMediator_obtainMessagesImagesWherePossibleForRecommendations_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __105__WBSForYouRecommendationMediator_obtainMessagesImagesWherePossibleForRecommendations_completionHandler___block_invoke_2_cold_1();
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_fetchImagesForRecommendations:(id)recommendations recommendationsDispatchGroup:(id)group
{
  v22 = *MEMORY[0x1E69E9840];
  recommendationsCopy = recommendations;
  groupCopy = group;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [recommendationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(recommendationsCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        contact = [v12 contact];
        if (contact)
        {

LABEL_8:
          dispatch_group_enter(groupCopy);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __95__WBSForYouRecommendationMediator__fetchImagesForRecommendations_recommendationsDispatchGroup___block_invoke;
          v15[3] = &unk_1E8283080;
          v16 = groupCopy;
          [(WBSForYouRecommendationMediator *)self fetchImageForRecommendation:v12 completionHandler:v15];

          continue;
        }

        image = [v12 image];

        if (!image)
        {
          goto LABEL_8;
        }
      }

      v9 = [recommendationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)_retrieveFoundInRecommendationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  foundInManager = self->_foundInManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__WBSForYouRecommendationMediator__retrieveFoundInRecommendationsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8285358;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSFoundInRecommendationManager *)foundInManager recentRecommendationsWithCompletionHandler:v7];
}

uint64_t __88__WBSForYouRecommendationMediator__retrieveFoundInRecommendationsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retrieveHandoffRecommendationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([MEMORY[0x1E69DF008] userActivityContinuationSupported])
  {
    [(WBSForYouRecommendationMediator *)self _createAppSuggestionsManagerIfNecessary];
    uniqueIdentifier = [(UABestAppSuggestion *)self->_currentAppSuggestion uniqueIdentifier];
    if (uniqueIdentifier)
    {
      originatingDeviceName = [(UABestAppSuggestion *)self->_currentAppSuggestion originatingDeviceName];
      v7 = MEMORY[0x1E69DEFF8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __86__WBSForYouRecommendationMediator_retrieveHandoffRecommendationWithCompletionHandler___block_invoke;
      v10[3] = &unk_1E8285380;
      v11 = originatingDeviceName;
      v12 = handlerCopy;
      v10[4] = self;
      v8 = originatingDeviceName;
      v9 = [v7 fetchUserActivityWithUUID:uniqueIdentifier intervalToWaitForDocumentSynchronizationToComplete:v10 completionHandler:5.0];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __86__WBSForYouRecommendationMediator_retrieveHandoffRecommendationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 webpageURL];
  v8 = v7;
  if (!v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v11)
      {
        __86__WBSForYouRecommendationMediator_retrieveHandoffRecommendationWithCompletionHandler___block_invoke_cold_1(v10, v6);
      }
    }

    else if (v11)
    {
      __86__WBSForYouRecommendationMediator_retrieveHandoffRecommendationWithCompletionHandler___block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  if (([v7 safari_isHTTPFamilyURL] & 1) == 0)
  {
LABEL_10:
    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  v9 = [v5 title];
  if ([v9 length])
  {
    [v5 title];
  }

  else
  {
    [v8 host];
  }
  v12 = ;

  if ([v12 length])
  {
    v13 = [WBSForYouLinkRecommendation alloc];
    v14 = [MEMORY[0x1E695DF00] distantPast];
    v15 = [(WBSForYouLinkRecommendation *)v13 initWithTitle:v12 url:v8 lastSeenDate:v14 source:3 topicSource:0];

    v16 = [*(*(a1 + 32) + 48) originatingDeviceType];
    [(WBSForYouLinkRecommendation *)v15 setSecondarySourceIdentifier:v16];

    v17 = *(a1 + 40);
    if ([v17 length])
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = _WBSLocalizedString();
      v20 = [v18 stringWithFormat:v19, v17];
      [(WBSForYouLinkRecommendation *)v15 setFootnote:v20];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_18:
}

- (void)_createAppSuggestionsManagerIfNecessary
{
  if ([MEMORY[0x1E69DF008] userActivityContinuationSupported] && !self->_appSuggestionManager)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DEFF0]);
    appSuggestionManager = self->_appSuggestionManager;
    self->_appSuggestionManager = v3;
  }
}

- (void)_beginListeningForHandoffActivity
{
  [(WBSForYouRecommendationMediator *)self _createAppSuggestionsManagerIfNecessary];
  [(UABestAppSuggestionManager *)self->_appSuggestionManager setDelegate:self];
  appSuggestionManager = self->_appSuggestionManager;

  [(UABestAppSuggestionManager *)appSuggestionManager startListeningForBestAppSuggestions];
}

- (void)_endListeningForHandoffActivity
{
  [(UABestAppSuggestionManager *)self->_appSuggestionManager setDelegate:0];
  [(UABestAppSuggestionManager *)self->_appSuggestionManager stopListeningForBestAppSuggestions];
  appSuggestionManager = self->_appSuggestionManager;

  [(UABestAppSuggestionManager *)appSuggestionManager invalidate];
}

- (void)downvoteSource:(unint64_t)source postingChangeNotificationWhenDone:(BOOL)done
{
  doneCopy = done;
  _dataSourceWeightManager = [(WBSForYouRecommendationMediator *)self _dataSourceWeightManager];
  [_dataSourceWeightManager downvoteSource:source];

  if (doneCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69C92E0] object:self];
  }
}

- (id)_dataSourceWeightManager
{
  dataSourceWeightManager = self->_dataSourceWeightManager;
  if (!dataSourceWeightManager)
  {
    v4 = [WBSForYouDataSourceWeightManager alloc];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [(WBSForYouDataSourceWeightManager *)v4 initWithKeyValueStore:standardUserDefaults];
    v7 = self->_dataSourceWeightManager;
    self->_dataSourceWeightManager = v6;

    dataSourceWeightManager = self->_dataSourceWeightManager;
  }

  v8 = dataSourceWeightManager;

  return v8;
}

- (void)bestAppSuggestionChanged:(id)changed
{
  changedCopy = changed;
  if ((WBSIsEqual() & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__WBSForYouRecommendationMediator_bestAppSuggestionChanged___block_invoke;
    v5[3] = &unk_1E82834A0;
    v5[4] = self;
    v6 = changedCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __60__WBSForYouRecommendationMediator_bestAppSuggestionChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) activityType];
  if ([v2 isEqualToString:*MEMORY[0x1E696AA68]])
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 48), v3);

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"WBSForYouRecommendationMediatorDidUpdateHandoffApplicationNotification" object:*(a1 + 32)];
}

- (id)analyticsMetadataForRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = [objc_opt_class() _titleForRecommendationSource:{objc_msgSend(recommendationCopy, "source")}];
  [dictionary setObject:v5 forKeyedSubscript:@"source"];

  cachedScore = [recommendationCopy cachedScore];
  [dictionary setObject:cachedScore forKeyedSubscript:@"recommendationScore"];

  v7 = MEMORY[0x1E696AD98];
  lastSeenDate = [recommendationCopy lastSeenDate];
  [lastSeenDate timeIntervalSinceNow];
  v10 = [v7 numberWithDouble:-v9];
  [dictionary setObject:v10 forKeyedSubscript:@"recency"];

  bundleIdentifier = [recommendationCopy bundleIdentifier];
  if ([bundleIdentifier length])
  {
    bundleIdentifier2 = [recommendationCopy bundleIdentifier];
    [dictionary setObject:bundleIdentifier2 forKeyedSubscript:@"sourceBundleIdentifier"];
  }

  else
  {
    [dictionary setObject:@"unspecified" forKeyedSubscript:@"sourceBundleIdentifier"];
  }

  v13 = [objc_opt_class() _titleForRecommendationTopicSource:{objc_msgSend(recommendationCopy, "topicSource")}];
  [dictionary setObject:v13 forKeyedSubscript:@"topicSource"];

  return dictionary;
}

+ (id)_titleForRecommendationSource:(unint64_t)source
{
  if (source > 7)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E82854A8[source];
  }
}

+ (id)_titleForRecommendationTopicSource:(unint64_t)source
{
  if (source > 4)
  {
    return @"unspecified";
  }

  else
  {
    return off_1E82854E8[source];
  }
}

+ (double)scoreForRecommendation:(id)recommendation weightManager:(id)manager simplifiedURLStringToLastVisitedDateMap:(id)map
{
  mapCopy = map;
  managerCopy = manager;
  recommendationCopy = recommendation;
  [managerCopy weightForSource:{objc_msgSend(recommendationCopy, "source")}];
  v11 = v10;

  lastSeenDate = [recommendationCopy lastSeenDate];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  [lastSeenDate timeIntervalSinceReferenceDate];
  v16 = v15;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v18 = [lastSeenDate isEqualToDate:distantPast];

  pageURL = [recommendationCopy pageURL];
  safari_isTopLevelURL = [pageURL safari_isTopLevelURL];

  if (safari_isTopLevelURL)
  {
    v21 = 0.75;
  }

  else
  {
    v21 = 1.0;
  }

  originalQueries = [recommendationCopy originalQueries];
  v23 = [originalQueries count];

  if (v23 >= 2)
  {
    v21 = v21 * pow(1.1, (v23 - 1));
  }

  simplifiedURLString = [recommendationCopy simplifiedURLString];

  if ([simplifiedURLString length])
  {
    v25 = [mapCopy objectForKeyedSubscript:simplifiedURLString];
    v26 = v25;
    if (v25)
    {
      [v25 timeIntervalSinceReferenceDate];
      if (v27 != 0.0)
      {
        v28 = v27;
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        if (v29 - v28 < 15552000.0)
        {
          v21 = v21 * 1.1;
        }
      }
    }
  }

  v30 = ((v14 - v16) / 3600.0 + -2160.0) / -432.0;
  if (v18)
  {
    v30 = -5.0;
  }

  v31 = fmin(v11 * (1.0 - 1.0 / (exp(v30) + 1.0)) * v21, 1.0);

  return v31;
}

+ (void)_rankRecommendationsInPlace:(id)place history:(id)history weightManager:(id)manager suppressHistoryDeduplication:(BOOL)deduplication
{
  v70 = *MEMORY[0x1E69E9840];
  placeCopy = place;
  historyCopy = history;
  managerCopy = manager;
  v38 = placeCopy;
  if ([placeCopy count])
  {
    selfCopy = self;
    v36 = managerCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!deduplication)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v12 = placeCopy;
      v13 = [v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v13)
      {
        v14 = *v61;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v61 != v14)
            {
              objc_enumerationMutation(v12);
            }

            simplifiedURLString = [*(*(&v60 + 1) + 8 * i) simplifiedURLString];
            if ([simplifiedURLString length])
            {
              distantPast = [MEMORY[0x1E695DF00] distantPast];
              [dictionary setObject:distantPast forKey:simplifiedURLString];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (v13);
      }

      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke;
      v58[3] = &unk_1E82853A8;
      v18 = dictionary;
      v59 = v18;
      [historyCopy enumerateItemsUsingBlock:v58];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v20 = v19;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_2;
      v55[3] = &unk_1E82853D0;
      v56 = v18;
      v57 = v20;
      removeLinkRecommendationsPassingTestWithReductionReason(v12, @"recently visited items", v55);
    }

    if ([v38 count] >= 2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v38;
      v22 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
      if (v22)
      {
        v23 = *v52;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v52 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v51 + 1) + 8 * j);
            pageURL = [v25 pageURL];
            v27 = [dictionary2 objectForKeyedSubscript:pageURL];
            if (!v27 || ([v25 lastSeenDate], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "lastSeenDate"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "compare:", v29) == 1, v29, v28, v30))
            {
              [dictionary2 setObject:v25 forKeyedSubscript:pageURL];
            }
          }

          v22 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
        }

        while (v22);
      }

      allValues = [dictionary2 allValues];
      [obj setArray:allValues];

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_3;
      v46[3] = &unk_1E82853F8;
      v49 = selfCopy;
      v47 = v36;
      v48 = dictionary;
      v50 = 0x3F7BB0247985D58DLL;
      removeLinkRecommendationsPassingTestWithReductionReason(obj, @"old items", v46);
      [obj sortUsingComparator:&__block_literal_global_117];
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = malloc_type_calloc(8uLL, 8uLL, 0x100004000313F17uLL);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_5;
      v41[3] = &unk_1E8285440;
      v41[4] = &v42;
      removeLinkRecommendationsPassingTestWithReductionReason(obj, @"less relevant items for each data source", v41);
      free(v43[3]);
      v43[3] = 0;
      if ([obj count] <= 0xA)
      {
        v32 = [obj count];
      }

      else
      {
        v32 = 10;
      }

      if (v32 != [obj count])
      {
        v33 = WBS_LOG_CHANNEL_PREFIXSiriIntelligence();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = [obj count];
          *buf = 134218240;
          v65 = v34;
          v66 = 2048;
          v67 = 10;
          _os_log_impl(&dword_1C6968000, v33, OS_LOG_TYPE_INFO, "End up having %ld recommendations. Keep the top %ld", buf, 0x16u);
        }

        [obj removeObjectsInRange:{v32, objc_msgSend(obj, "count") - v32}];
      }

      _Block_object_dispose(&v42, 8);
    }

    managerCopy = v36;
  }
}

void __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 lastVisitedDate];
  [v3 timeIntervalSinceReferenceDate];
  if (v4 != 0.0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v9 url];
    v7 = [v6 safari_simplifiedURLStringForDeduping];

    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];

    if (v8)
    {
      [*(a1 + 32) setObject:v3 forKey:v7];
    }

    objc_autoreleasePoolPop(v5);
  }
}

BOOL __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 simplifiedURLString];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(a1 + 40);
      [v4 timeIntervalSinceReferenceDate];
      v8 = v6 - v7 < *MEMORY[0x1E69C9300];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 48) scoreForRecommendation:v3 weightManager:*(a1 + 32) simplifiedURLStringToLastVisitedDateMap:*(a1 + 40)];
  v5 = v4;
  v6 = *(a1 + 56);
  if (v4 >= v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    [v3 setCachedScore:v7];
  }

  return v5 < v6;
}

uint64_t __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cachedScore];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 cachedScore];

  [v8 doubleValue];
  v10 = v9;

  v11 = -1;
  if (v7 < v10)
  {
    v11 = 1;
  }

  if (v7 == v10)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

BOOL __114__WBSForYouRecommendationMediator__rankRecommendationsInPlace_history_weightManager_suppressHistoryDeduplication___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = [a2 source];
  v4 = *(v2 + 8 * v3) + 1;
  *(v2 + 8 * v3) = v4;
  return v4 > 3;
}

+ (id)_adjustedTopicsWithTopics:(id)topics
{
  v27 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  if ([topicsCopy count] > 1)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = topicsCopy;
    obj = topicsCopy;
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v23;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        title = [v10 title];
        v12 = [dictionary objectForKeyedSubscript:title];
        if (v12)
        {
          relevancyDate = [v10 relevancyDate];
          relevancyDate2 = [v12 relevancyDate];
          v15 = [relevancyDate compare:relevancyDate2];

          if (v15 != 1)
          {
            goto LABEL_12;
          }

          [v10 setSource:4];
        }

        [dictionary setObject:v10 forKeyedSubscript:title];
LABEL_12:
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v7)
      {
LABEL_14:

        allValues = [dictionary allValues];
        v17 = [allValues sortedArrayUsingComparator:&__block_literal_global_123];

        if ([v17 count] <= 3)
        {
          v18 = [v17 count];
        }

        else
        {
          v18 = 3;
        }

        topicsCopy = v20;
        v4 = [v17 subarrayWithRange:{0, v18, v20}];

        goto LABEL_18;
      }
    }
  }

  v4 = topicsCopy;
LABEL_18:

  return v4;
}

uint64_t __61__WBSForYouRecommendationMediator__adjustedTopicsWithTopics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 relevancyDate];
  v6 = [v4 relevancyDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)recommendationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy safari_stringForKey:@"title"];
  if ([v5 length])
  {
    v6 = [dictionaryCopy safari_stringForKey:@"urlString"];
    if ([v6 length])
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      if (v7 && ([dictionaryCopy safari_numberForKey:@"source"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "integerValue"), v8, v9 <= 7) && (objc_msgSend(dictionaryCopy, "safari_numberForKey:", @"topic"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v11 <= 4))
      {
        v14 = [WBSForYouLinkRecommendation alloc];
        date = [MEMORY[0x1E695DF00] date];
        v12 = [(WBSForYouLinkRecommendation *)v14 initWithTitle:v5 url:v7 lastSeenDate:date source:v9 topicSource:v11];

        v16 = [dictionaryCopy safari_stringForKey:@"secondarySourceIdentifier"];
        [(WBSForYouLinkRecommendation *)v12 setSecondarySourceIdentifier:v16];

        v17 = [dictionaryCopy safari_stringForKey:@"footnote"];
        [(WBSForYouLinkRecommendation *)v12 setFootnote:v17];

        v18 = [dictionaryCopy safari_stringForKey:@"bundleIdentifier"];
        [(WBSForYouLinkRecommendation *)v12 setBundleIdentifier:v18];

        v19 = [dictionaryCopy safari_stringForKey:@"sourceID"];
        [(WBSForYouLinkRecommendation *)v12 setSourceID:v19];

        v20 = [dictionaryCopy safari_stringForKey:@"imageURLString"];
        if ([v20 length])
        {
          v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];
          if (v21)
          {
            [(WBSForYouLinkRecommendation *)v12 setImageURL:v21];
            v22 = +[WBSImageFetchingURLSessionTaskManager sharedManager];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke;
            v28[3] = &unk_1E8285488;
            v29 = v12;
            [v22 downloadImageWithURL:v21 options:1 completionHandler:v28];
          }
        }

        v23 = [dictionaryCopy safari_stringForKey:@"contactHandle"];
        if ([v23 length])
        {
          mEMORY[0x1E69C8F00] = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
          v25 = [mEMORY[0x1E69C8F00] contactForHandle:v23 error:0];

          if (v25)
          {
            [(WBSForYouLinkRecommendation *)v12 setContact:v25];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_3;
            v26[3] = &unk_1E8283080;
            v27 = v12;
            [(WBSForYouRecommendationMediator *)self fetchImageForRecommendation:v27 completionHandler:v26];
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_2;
  v5[3] = &unk_1E82834A0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69C92F0];
  v4 = *(a1 + 32);
  v6 = *MEMORY[0x1E69C92F8];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:v3 object:0 userInfo:v5];
}

void __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_4;
  block[3] = &unk_1E8283080;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__WBSForYouRecommendationMediator_recommendationFromDictionary___block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69C92F0];
  v4 = *(a1 + 32);
  v6 = *MEMORY[0x1E69C92F8];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:v3 object:0 userInfo:v5];
}

void __86__WBSForYouRecommendationMediator_retrieveHandoffRecommendationWithCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Could not fetch user activity with error: %{public}@", &v5, 0xCu);
}

@end