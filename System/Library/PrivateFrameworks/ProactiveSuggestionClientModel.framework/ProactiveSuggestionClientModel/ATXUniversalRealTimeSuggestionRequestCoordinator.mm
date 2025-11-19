@interface ATXUniversalRealTimeSuggestionRequestCoordinator
- (ATXUniversalRealTimeSuggestionRequestCoordinator)initWithBlendingLayer:(id)a3 hyperParameters:(id)a4 pendingRefreshTracker:(id)a5 server:(id)a6;
- (id)cacheUpdateDictionaryFromCacheUpdatesArray:(id)a3;
- (id)clientModelUpdatesForSuggestionRequest:(id)a3;
- (id)generatedRankedSuggestionsForSuggestionRequest:(id)a3 limit:(id)a4;
- (id)selectedLayoutForSuggestionRequest:(id)a3;
- (void)delegateUpdatedSuggestionsForClientModelId:(id)a3 suggestionRequest:(id)a4 response:(id)a5 clientModelsPendingUpdate:(id)a6;
- (void)realTimeProviderDelegateForClientModelId:(id)a3 completion:(id)a4;
- (void)registerRealTimeSuggestionProviderDelegate:(id)a3 clientModelId:(id)a4;
- (void)remoteAsyncDelegateForClientModel:(id)a3 completion:(id)a4;
- (void)respondToRequestWithPreviouslyCachedPredictionsForClientModelId:(id)a3 suggestionRequest:(id)a4;
- (void)updateSuggestionsFromDelegate:(id)a3 connection:(id)a4 clientModelId:(id)a5 clientModelsPendingUpdate:(id)a6 dispatchGroup:(id)a7 suggestionRequest:(id)a8;
@end

@implementation ATXUniversalRealTimeSuggestionRequestCoordinator

- (ATXUniversalRealTimeSuggestionRequestCoordinator)initWithBlendingLayer:(id)a3 hyperParameters:(id)a4 pendingRefreshTracker:(id)a5 server:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = ATXUniversalRealTimeSuggestionRequestCoordinator;
  v15 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_blendingLayer, a3);
    objc_storeStrong(&v16->_hyperParameters, a4);
    objc_storeStrong(&v16->_pendingRefreshTrackerLock, a5);
    objc_storeWeak(&v16->_server, v14);
    v17 = [v11 feedbackWriter];
    feedbackWriter = v16->_feedbackWriter;
    v16->_feedbackWriter = v17;
  }

  return v16;
}

- (void)registerRealTimeSuggestionProviderDelegate:(id)a3 clientModelId:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "RealTimeRequestCoordinator registering a delegate for clientModelId: %{public}@...", buf, 0xCu);
  }

  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __109__ATXUniversalRealTimeSuggestionRequestCoordinator_registerRealTimeSuggestionProviderDelegate_clientModelId___block_invoke;
  v13[3] = &unk_1E86A4B00;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __109__ATXUniversalRealTimeSuggestionRequestCoordinator_registerRealTimeSuggestionProviderDelegate_clientModelId___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a2 registeredDelegatesForClientModels];
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1DEFC4000, v4, OS_LOG_TYPE_DEFAULT, "RealTimeRequestCoordinator done registering a delegate for clientModelId: %{public}@.", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)clientModelUpdatesForSuggestionRequest:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v35 = a3;
  sel_getName(a2);
  v32 = os_transaction_create();
  v4 = __atxlog_handle_blending();
  spid = os_signpost_id_generate(v4);

  v5 = __atxlog_handle_blending();
  v6 = v5;
  v33 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v7 = [v35 originatorId];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v7;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v6, OS_SIGNPOST_INTERVAL_BEGIN, spid, "RealTimeSuggestionRequest", "originatorId=%{signpost.telemetry:string1, public}@ enableTelemetry=YES ", &buf, 0xCu);
  }

  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v35;
    _os_log_impl(&dword_1DEFC4000, v8, OS_LOG_TYPE_DEFAULT, "Blending: Received suggestion request: %{public}@", &buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke;
    v53[3] = &unk_1E86A4178;
    v37 = v35;
    v54 = v37;
    [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v53];
    v10 = [(ATXUniversalBlendingLayerHyperParametersProtocol *)self->_hyperParameters clientModelsToConsiderForConsumerSubType:[v37 consumerSubType]];
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v10];
    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "Blending: Communicating with client models for request: %{public}@", &buf, 0xCu);
    }

    v13 = dispatch_group_create();
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v10;
    v14 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v14)
    {
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          dispatch_group_enter(v13);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_15;
          v45[3] = &unk_1E86A4B28;
          v45[4] = self;
          v45[5] = v17;
          v46 = v11;
          v47 = v13;
          v48 = v37;
          [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self realTimeProviderDelegateForClientModelId:v17 completion:v45];
        }

        v14 = [obj countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v14);
    }

    v18 = MEMORY[0x1E69C5D10];
    [v37 timeout];
    v20 = v19;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19;
    v42[3] = &unk_1E86A4B50;
    v21 = v37;
    v43 = v21;
    v22 = v11;
    v44 = v22;
    [v18 waitForGroup:v13 timeoutSeconds:&__block_literal_global_15 onGroupComplete:v42 onTimeout:v20];
    v23 = __atxlog_handle_blending();
    v24 = v23;
    if (v33 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v24, OS_SIGNPOST_INTERVAL_END, spid, "RealTimeSuggestionRequest", "", &buf, 2u);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__7;
    v58 = __Block_byref_object_dispose__7;
    v59 = 0;
    v25 = self->_pendingRefreshTrackerLock;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_20;
    v39[3] = &unk_1E86A4B78;
    p_buf = &buf;
    v40 = v21;
    [(_PASLock *)v25 runWithLockAcquired:v39];
    v26 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self cacheUpdateDictionaryFromCacheUpdatesArray:*(*(&buf + 1) + 40)];

    _Block_object_dispose(&buf, 8);
    v27 = v54;
  }

  else
  {
    v30 = __atxlog_handle_blending();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [ATXUniversalRealTimeSuggestionRequestCoordinator clientModelUpdatesForSuggestionRequest:];
    }

    v31 = __atxlog_handle_blending();
    v27 = v31;
    if (v33 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v31))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v27, OS_SIGNPOST_INTERVAL_END, spid, "RealTimeSuggestionRequest", "", &buf, 2u);
    }

    v26 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];

  return v26;
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_opt_new();
  v4 = [v3 requestUUIDToClientModelCaches];

  v5 = [*(a1 + 32) requestUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v7 forKeyedSubscript:v6];
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_2()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_2_cold_1(v0);
  }
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19(uint64_t a1)
{
  v2 = __atxlog_handle_blending();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19_cold_1(a1);
  }
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 requestUUIDToClientModelCaches];
  v5 = [*(a1 + 32) requestUUID];
  v6 = [v5 UUIDString];
  v7 = [v4 objectForKeyedSubscript:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v12 = [v3 requestUUIDToClientModelCaches];

  v10 = [*(a1 + 32) requestUUID];
  v11 = [v10 UUIDString];
  [v12 removeObjectForKey:v11];
}

- (id)generatedRankedSuggestionsForSuggestionRequest:(id)a3 limit:(id)a4
{
  v6 = a4;
  v7 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self clientModelUpdatesForSuggestionRequest:a3];
  v8 = [(ATXUniversalBlendingLayer *)self->_blendingLayer rerankedValidSuggestionsFromClientModelSuggestions:v7];
  v9 = v8;
  if (v6)
  {
    v10 = [v6 unsignedIntegerValue];
    v11 = [v9 count];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [v9 subarrayWithRange:{0, v12}];
  }

  else
  {
    v13 = v8;
  }

  v14 = v13;

  return v14;
}

- (id)selectedLayoutForSuggestionRequest:(id)a3
{
  v4 = a3;
  v5 = [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self clientModelUpdatesForSuggestionRequest:v4];
  v6 = [(ATXUniversalBlendingLayer *)self->_blendingLayer rerankedValidSuggestionsFromClientModelSuggestions:v5];
  v7 = -[ATXUniversalBlendingLayer selectedLayoutForUIConsumer:rankedSuggestions:](self->_blendingLayer, "selectedLayoutForUIConsumer:rankedSuggestions:", [v4 consumerSubType], v6);
  v8 = -[ATXBlendingModelUICacheUpdate initWithUICache:consumerSubType:clientModelCacheUpdates:]([ATXBlendingModelUICacheUpdate alloc], "initWithUICache:consumerSubType:clientModelCacheUpdates:", v7, [v4 consumerSubType], v5);
  feedbackWriter = self->_feedbackWriter;
  v10 = [v4 consumerSubType];

  [(ATXUniversalBlendingFeedbackWriter *)feedbackWriter donateBlendingModelUICacheUpdate:v8 uiConsumer:v10];

  return v7;
}

- (void)updateSuggestionsFromDelegate:(id)a3 connection:(id)a4 clientModelId:(id)a5 clientModelsPendingUpdate:(id)a6 dispatchGroup:(id)a7 suggestionRequest:(id)a8
{
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    dispatch_group_leave(v18);
    goto LABEL_30;
  }

  v20 = __atxlog_handle_blending();
  v21 = os_signpost_id_generate(v20);

  v22 = __atxlog_handle_blending();
  v23 = v22;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138543362;
    v44 = v16;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RequestSuggestionsFromRealTimeProviderDelegate", "clientModelId=%{signpost.telemetry:string1, public}@ enableTelemetry=YES ", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = &selRef_suggestionsForInteractionSuggestionRequest_clientModelId_reply_;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = &selRef_suggestionsForContextualActionSuggestionRequest_clientModelId_reply_;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v34 = __atxlog_handle_blending();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [ATXUniversalRealTimeSuggestionRequestCoordinator updateSuggestionsFromDelegate:connection:clientModelId:clientModelsPendingUpdate:dispatchGroup:suggestionRequest:];
        }

        goto LABEL_26;
      }

      v24 = &selRef_suggestionsForIntentSuggestionRequest_clientModelId_reply_;
    }
  }

  v25 = *v24;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v29 = __atxlog_handle_blending();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543618;
      v44 = v16;
      v45 = 2114;
      v46 = v31;
      _os_log_impl(&dword_1DEFC4000, v29, OS_LOG_TYPE_DEFAULT, "Blending: %{public}@ may not have a real-time request delegate that supports %{public}@ requests. Falling back to cache.", buf, 0x16u);
    }

    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self respondToRequestWithPreviouslyCachedPredictionsForClientModelId:v16 suggestionRequest:v19];
    [v17 removeObject:v16];
    v32 = __atxlog_handle_blending();
    v33 = v32;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v33, OS_SIGNPOST_INTERVAL_END, v21, "RequestSuggestionsFromRealTimeProviderDelegate", "", buf, 2u);
    }

LABEL_26:
    dispatch_group_leave(v18);
    goto LABEL_30;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __165__ATXUniversalRealTimeSuggestionRequestCoordinator_updateSuggestionsFromDelegate_connection_clientModelId_clientModelsPendingUpdate_dispatchGroup_suggestionRequest___block_invoke;
  v36[3] = &unk_1E86A4BA0;
  v36[4] = self;
  v26 = v16;
  v37 = v26;
  v27 = v19;
  v38 = v27;
  v39 = v17;
  v42 = v21;
  v40 = v15;
  v41 = v18;
  v28 = MEMORY[0x1E12CD4B0](v36);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 suggestionsForInteractionSuggestionRequest:v27 clientModelId:v26 reply:v28];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 suggestionsForContextualActionSuggestionRequest:v27 clientModelId:v26 reply:v28];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v14 suggestionsForIntentSuggestionRequest:v27 clientModelId:v26 reply:v28];
      }
    }
  }

LABEL_30:
  v35 = *MEMORY[0x1E69E9840];
}

void __165__ATXUniversalRealTimeSuggestionRequestCoordinator_updateSuggestionsFromDelegate_connection_clientModelId_clientModelsPendingUpdate_dispatchGroup_suggestionRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) delegateUpdatedSuggestionsForClientModelId:*(a1 + 40) suggestionRequest:*(a1 + 48) response:a2 clientModelsPendingUpdate:*(a1 + 56)];
  v3 = __atxlog_handle_blending();
  v4 = v3;
  v5 = *(a1 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v4, OS_SIGNPOST_INTERVAL_END, v5, "RequestSuggestionsFromRealTimeProviderDelegate", "", v6, 2u);
  }

  dispatch_group_leave(*(a1 + 72));
}

- (void)delegateUpdatedSuggestionsForClientModelId:(id)a3 suggestionRequest:(id)a4 response:(id)a5 clientModelsPendingUpdate:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543874;
    v35 = v10;
    v36 = 2114;
    v37 = v16;
    v38 = 1024;
    v39 = [v12 responseCode];
    _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, "Blending: %{public}@ real-time delegate provided response to %{public}@. Response code: %d", buf, 0x1Cu);
  }

  if ([v12 responseCode] == 1)
  {
    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self respondToRequestWithPreviouslyCachedPredictionsForClientModelId:v10 suggestionRequest:v11];
  }

  else if ([v12 responseCode] == 3 || !objc_msgSend(v12, "responseCode") || objc_msgSend(v12, "responseCode") == 5)
  {
    v17 = __atxlog_handle_blending();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXUniversalRealTimeSuggestionRequestCoordinator delegateUpdatedSuggestionsForClientModelId:v10 suggestionRequest:v12 response:? clientModelsPendingUpdate:?];
    }
  }

  else if ([v12 responseCode] == 2 || objc_msgSend(v12, "responseCode") == 4)
  {
    v19 = [ATXClientModelCacheUpdate alloc];
    v20 = [v12 suggestions];
    v21 = [v12 feedbackMetadata];
    v22 = [(ATXClientModelCacheUpdate *)v19 initWithClientModelId:v10 suggestions:v20 feedbackMetadata:v21 responseForRealTimeRequest:v12];

    [(ATXUniversalBlendingFeedbackWriter *)self->_feedbackWriter sendEventToBiomeIfNeededForClientModelCacheUpdate:v22 previousUpdate:0];
    if ([v12 responseCode] == 4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v24 = [v12 suggestions];
      v25 = [v12 feedbackMetadata];
      [WeakRetained clientModelUpdatedSuggestions:v24 feedbackMetadata:v25 clientModelId:v10 completion:&__block_literal_global_32_0];
    }

    pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_33;
    v31 = &unk_1E86A4B00;
    v32 = v11;
    v33 = v22;
    v27 = v22;
    [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:&v28];
  }

  [v13 removeObject:{v10, v28, v29, v30, v31}];

  v18 = *MEMORY[0x1E69E9840];
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_cold_1(v2, v3);
  }
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = [a2 requestUUIDToClientModelCaches];
  v4 = [*(a1 + 32) requestUUID];
  v5 = [v4 UUIDString];
  v6 = [v3 objectForKeyedSubscript:v5];

  [v6 addObject:*(a1 + 40)];
}

- (void)respondToRequestWithPreviouslyCachedPredictionsForClientModelId:(id)a3 suggestionRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v9 = [WeakRetained clientModelCacheManager];
  v10 = [v9 cachedSuggestionsForClientModel:v7];

  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __134__ATXUniversalRealTimeSuggestionRequestCoordinator_respondToRequestWithPreviouslyCachedPredictionsForClientModelId_suggestionRequest___block_invoke;
  v14[3] = &unk_1E86A4B00;
  v15 = v6;
  v16 = v10;
  v12 = v10;
  v13 = v6;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v14];
}

void __134__ATXUniversalRealTimeSuggestionRequestCoordinator_respondToRequestWithPreviouslyCachedPredictionsForClientModelId_suggestionRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestUUIDToClientModelCaches];
  v4 = [*(a1 + 32) requestUUID];
  v5 = [v4 UUIDString];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (*(a1 + 40))
  {
    [v6 addObject:?];
  }
}

- (id)cacheUpdateDictionaryFromCacheUpdatesArray:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 clientModelId];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)realTimeProviderDelegateForClientModelId:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __104__ATXUniversalRealTimeSuggestionRequestCoordinator_realTimeProviderDelegateForClientModelId_completion___block_invoke;
  v16 = &unk_1E86A4B78;
  v18 = &v19;
  v9 = v6;
  v17 = v9;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:&v13];
  if (v20[5])
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_1DEFC4000, v10, OS_LOG_TYPE_DEFAULT, "Found a cached delegate for clientModelId: %{public}@", buf, 0xCu);
    }

    v7[2](v7, v20[5], 0);
  }

  else
  {
    v11 = __atxlog_handle_blending();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v9;
      _os_log_impl(&dword_1DEFC4000, v11, OS_LOG_TYPE_DEFAULT, "Blending: Fetching delegate for client model %{public}@", buf, 0xCu);
    }

    [(ATXUniversalRealTimeSuggestionRequestCoordinator *)self remoteAsyncDelegateForClientModel:v9 completion:v7, v13, v14, v15, v16];
  }

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __104__ATXUniversalRealTimeSuggestionRequestCoordinator_realTimeProviderDelegateForClientModelId_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 registeredDelegatesForClientModels];
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)remoteAsyncDelegateForClientModel:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&dword_1DEFC4000, v7, OS_LOG_TYPE_DEFAULT, "Establishing XPC connection to clientModelId: %{public}@", buf, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.proactive.SuggestionRequest.%@", v5];
  v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v8 options:0];
  v10 = ATXProactiveSuggestionRealTimeProviderXPCInterface();
  [v9 setRemoteObjectInterface:v10];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke;
  v24[3] = &unk_1E86A45B0;
  v11 = v5;
  v25 = v11;
  [v9 setInterruptionHandler:v24];
  v12 = [v9 interruptionHandler];
  [v9 setInvalidationHandler:v12];

  [v9 resume];
  if (v9)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40;
    v21[3] = &unk_1E86A43B0;
    v22 = v11;
    v13 = v6;
    v23 = v13;
    v14 = [v9 remoteObjectProxyWithErrorHandler:v21];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_41;
    v17[3] = &unk_1E86A4BC8;
    v20 = v13;
    v18 = v14;
    v19 = v9;
    v15 = v14;
    [v15 pingWithCompletion:v17];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_blending();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_cold_1(a1, v2);
  }
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40_cold_1(a1, v3, v4);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_41(void *a1, int a2)
{
  v3 = a1[6];
  if (a2)
  {
    return (*(v3 + 16))(v3, a1[4], a1[5]);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, 0);
  }
}

- (void)clientModelUpdatesForSuggestionRequest:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __91__ATXUniversalRealTimeSuggestionRequestCoordinator_clientModelUpdatesForSuggestionRequest___block_invoke_19_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeout];
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateSuggestionsFromDelegate:connection:clientModelId:clientModelsPendingUpdate:dispatchGroup:suggestionRequest:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)delegateUpdatedSuggestionsForClientModelId:(uint64_t)a1 suggestionRequest:(void *)a2 response:clientModelsPendingUpdate:.cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 error];
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __148__ATXUniversalRealTimeSuggestionRequestCoordinator_delegateUpdatedSuggestionsForClientModelId_suggestionRequest_response_clientModelsPendingUpdate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when updating suggestions in Real Time Request Coordinator. Error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Blending: Connection to Client Model %{public}@ interrupted in 2-way communication server.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __97__ATXUniversalRealTimeSuggestionRequestCoordinator_remoteAsyncDelegateForClientModel_completion___block_invoke_40_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "Blending: Got xpc error for %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end