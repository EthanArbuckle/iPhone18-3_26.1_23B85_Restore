@interface ATXUniversalBlendingLayerServer
- (ATXUniversalBlendingLayerServer)initWithBlendingLayer:(id)layer engagementRecordsManager:(id)manager hyperParameters:(id)parameters clientModelCacheManager:(id)cacheManager clientModelNotificationManager:(id)notificationManager serverDelegate:(id)delegate pendingRefreshTracker:(id)tracker;
- (ATXUniversalBlendingLayerServer)initWithBlendingLayer:(id)layer engagementRecordsManager:(id)manager hyperParameters:(id)parameters serverDelegate:(id)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)willForceRefreshOfAllUIs;
- (id)clientModelsThatUpdatedSuggestionsRecently;
- (void)clientModelUpdatedNotificationId:(id)id clientModelId:(id)modelId completion:(id)completion;
- (void)clientModelUpdatedSuggestions:(id)suggestions feedbackMetadata:(id)metadata clientModelId:(id)id completion:(id)completion;
- (void)coalescedBlendingLayerRefresh;
- (void)dealloc;
- (void)generateLayoutForRequest:(id)request reply:(id)reply;
- (void)generateRankedSuggestionsForRequest:(id)request limit:(id)limit reply:(id)reply;
- (void)refreshBlendingLayer;
- (void)refreshBlendingLayerIfNeededForNewSuggestions:(id)suggestions previousCacheUpdate:(id)update clientModelId:(id)id;
- (void)retrieveSuggestionsForClientModelId:(id)id reply:(id)reply;
- (void)setupXPCListener;
- (void)start;
- (void)updateClientModelCacheWithCacheUpdate:(id)update previousCacheUpdate:(id)cacheUpdate completion:(id)completion;
@end

@implementation ATXUniversalBlendingLayerServer

void __40__ATXUniversalBlendingLayerServer_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshBlendingLayer];
}

- (void)refreshBlendingLayer
{
  [(_PASLock *)self->_pendingRefreshTrackerLock runWithLockAcquired:&__block_literal_global_4];
  coalescedBlendingLayerRefreshOperation = self->_coalescedBlendingLayerRefreshOperation;

  [(_PASSimpleCoalescingTimer *)coalescedBlendingLayerRefreshOperation runAfterDelaySeconds:1 coalescingBehavior:3.0];
}

- (void)coalescedBlendingLayerRefresh
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_DEBUG, "BlendingRefresh: The Blending Layer has the following suggestions: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __64__ATXUniversalBlendingLayerServer_coalescedBlendingLayerRefresh__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 clientModelsThatUpdatedSuggestions];
  v4 = [v3 copy];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 40) + 8) + 24) = [v8 shouldForceRefreshForAllUIs];
  v7 = objc_opt_new();
  [v8 setClientModelsThatUpdatedSuggestions:v7];

  [v8 setShouldForceRefreshForAllUIs:0];
}

uint64_t __64__ATXUniversalBlendingLayerServer_coalescedBlendingLayerRefresh__block_invoke_37(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698B028];
  v3 = [a2 unsignedIntValue];

  return [v2 stringForConsumerSubtype:v3];
}

- (ATXUniversalBlendingLayerServer)initWithBlendingLayer:(id)layer engagementRecordsManager:(id)manager hyperParameters:(id)parameters serverDelegate:(id)delegate
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  managerCopy = manager;
  layerCopy = layer;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = [(ATXUniversalBlendingLayerServer *)self initWithBlendingLayer:layerCopy engagementRecordsManager:managerCopy hyperParameters:parametersCopy clientModelCacheManager:v14 clientModelNotificationManager:v15 serverDelegate:delegateCopy pendingRefreshTracker:v16];

  return v17;
}

- (ATXUniversalBlendingLayerServer)initWithBlendingLayer:(id)layer engagementRecordsManager:(id)manager hyperParameters:(id)parameters clientModelCacheManager:(id)cacheManager clientModelNotificationManager:(id)notificationManager serverDelegate:(id)delegate pendingRefreshTracker:(id)tracker
{
  layerCopy = layer;
  managerCopy = manager;
  parametersCopy = parameters;
  cacheManagerCopy = cacheManager;
  notificationManagerCopy = notificationManager;
  delegateCopy = delegate;
  trackerCopy = tracker;
  v42.receiver = self;
  v42.super_class = ATXUniversalBlendingLayerServer;
  v20 = [(ATXUniversalBlendingLayerServer *)&v42 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_blendingLayer, layer);
    objc_storeStrong(&v21->_clientModelCacheManager, cacheManager);
    objc_storeStrong(&v21->_clientModelNotificationManager, notificationManager);
    objc_storeWeak(&v21->_serverDelegate, delegateCopy);
    objc_storeStrong(&v21->_engagementRecordsManager, manager);
    objc_storeStrong(&v21->_hyperParameters, parameters);
    feedbackWriter = [layerCopy feedbackWriter];
    feedbackWriter = v21->_feedbackWriter;
    v21->_feedbackWriter = feedbackWriter;

    objc_initWeak(&location, v21);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("ATXClientModelSuggestionReceiver", v24);
    queue = v21->_queue;
    v21->_queue = v25;

    v27 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:trackerCopy];
    pendingRefreshTrackerLock = v21->_pendingRefreshTrackerLock;
    v21->_pendingRefreshTrackerLock = v27;

    v29 = [[ATXUniversalRealTimeSuggestionRequestCoordinator alloc] initWithBlendingLayer:v21->_blendingLayer hyperParameters:v21->_hyperParameters pendingRefreshTracker:v21->_pendingRefreshTrackerLock server:v21];
    realTimeSuggestionRequestCoordinator = v21->_realTimeSuggestionRequestCoordinator;
    v21->_realTimeSuggestionRequestCoordinator = v29;

    v31 = objc_alloc(MEMORY[0x1E69C5D80]);
    v32 = v21->_queue;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __190__ATXUniversalBlendingLayerServer_initWithBlendingLayer_engagementRecordsManager_hyperParameters_clientModelCacheManager_clientModelNotificationManager_serverDelegate_pendingRefreshTracker___block_invoke;
    v39[3] = &unk_1E86A4100;
    objc_copyWeak(&v40, &location);
    v33 = [v31 initWithQueue:v32 operation:v39];
    coalescedBlendingLayerRefreshOperation = v21->_coalescedBlendingLayerRefreshOperation;
    v21->_coalescedBlendingLayerRefreshOperation = v33;

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v21;
}

void __190__ATXUniversalBlendingLayerServer_initWithBlendingLayer_engagementRecordsManager_hyperParameters_clientModelCacheManager_clientModelNotificationManager_serverDelegate_pendingRefreshTracker___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained coalescedBlendingLayerRefresh];
  }

  else
  {
    v3 = __atxlog_handle_blending();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __190__ATXUniversalBlendingLayerServer_initWithBlendingLayer_engagementRecordsManager_hyperParameters_clientModelCacheManager_clientModelNotificationManager_serverDelegate_pendingRefreshTracker___block_invoke_cold_1(v3);
    }
  }
}

- (void)start
{
  objc_initWeak(&location, self);
  uTF8String = [@"com.apple.duetexpertd.clientModelRefreshBlendingLayer" UTF8String];
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __40__ATXUniversalBlendingLayerServer_start__block_invoke;
  v10 = &unk_1E86A4128;
  objc_copyWeak(&v11, &location);
  notify_register_dispatch(uTF8String, &self->_blendingDarwinNotificationObserver, v4, &v7);

  [(ATXUniversalBlendingLayerServer *)self setupXPCListener:v7];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_refreshBlendingLayer name:@"com.apple.duetexpertd.clientModelRefreshBlendingLayer" object:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  blendingDarwinNotificationObserver = self->_blendingDarwinNotificationObserver;
  if (blendingDarwinNotificationObserver)
  {
    notify_cancel(blendingDarwinNotificationObserver);
    self->_blendingDarwinNotificationObserver = 0;
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  v4.receiver = self;
  v4.super_class = ATXUniversalBlendingLayerServer;
  [(ATXUniversalBlendingLayerServer *)&v4 dealloc];
}

- (void)setupXPCListener
{
  v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.proactive.ProactiveSuggestionClientModel.xpc"];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (void)clientModelUpdatedSuggestions:(id)suggestions feedbackMetadata:(id)metadata clientModelId:(id)id completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  metadataCopy = metadata;
  idCopy = id;
  completionCopy = completion;
  v14 = __atxlog_handle_xpc();
  v15 = os_signpost_id_generate(v14);

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "updateSuggestionsFromClientModel", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = __atxlog_handle_blending();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [suggestionsCopy count];
    *buf = 138543618;
    v32 = idCopy;
    v33 = 2048;
    v34 = v19;
    _os_log_impl(&dword_1DEFC4000, v18, OS_LOG_TYPE_DEFAULT, "Blending: <<%{public}@>> client model produced %lu new suggestions. Updating the internal cache.", buf, 0x16u);
  }

  suggestionsCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Received the following suggestions for client model %@: \n%@", idCopy, suggestionsCopy];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p> ", self];
  [ATXUniversalBlendingLayer logLongDescriptionForBlendingLayerString:suggestionsCopy prefix:v21 shouldUseDefaultLogLevel:1 limit:20];

  WeakRetained = objc_loadWeakRetained(&self->_serverDelegate);
  LOBYTE(suggestionsCopy) = [WeakRetained rerouteSuggestions:suggestionsCopy clientModelId:idCopy completion:completionCopy];

  if ((suggestionsCopy & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = objc_loadWeakRetained(&self->_serverDelegate);
    [v24 willCreateCacheUpdateWithFeedbackMetadataLength:objc_msgSend(metadataCopy forClientModelId:{"length"), idCopy}];

    v25 = [(ATXClientModelCacheManagerProtocol *)self->_clientModelCacheManager cachedSuggestionsForClientModel:idCopy];
    v26 = [[ATXClientModelCacheUpdate alloc] initWithClientModelId:idCopy suggestions:suggestionsCopy feedbackMetadata:metadataCopy responseForRealTimeRequest:0];
    [(ATXUniversalBlendingLayerServer *)self updateClientModelCacheWithCacheUpdate:v26 previousCacheUpdate:v25 completion:completionCopy];
    [(ATXUniversalBlendingLayerServer *)self refreshBlendingLayerIfNeededForNewSuggestions:suggestionsCopy previousCacheUpdate:v25 clientModelId:idCopy];

    objc_autoreleasePoolPop(v23);
  }

  if (suggestionsCopy)
  {
    v27 = suggestionsCopy;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  [(ATXEngagementRecordManagerProtocol *)self->_engagementRecordsManager updateForClientModelCacheUpdate:v27 clientModelId:idCopy];
  v28 = __atxlog_handle_xpc();
  v29 = v28;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v29, OS_SIGNPOST_INTERVAL_END, v15, "updateSuggestionsFromClientModel", " enableTelemetry=YES ", buf, 2u);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)updateClientModelCacheWithCacheUpdate:(id)update previousCacheUpdate:(id)cacheUpdate completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  cacheUpdateCopy = cacheUpdate;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__ATXUniversalBlendingLayerServer_updateClientModelCacheWithCacheUpdate_previousCacheUpdate_completion___block_invoke;
  block[3] = &unk_1E86A4150;
  block[4] = self;
  v11 = updateCopy;
  v19 = v11;
  v20 = cacheUpdateCopy;
  v12 = cacheUpdateCopy;
  completionCopy = completion;
  dispatch_sync(queue, block);
  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    clientModelId = [v11 clientModelId];
    uuid = [v11 uuid];
    *buf = 138543618;
    v22 = clientModelId;
    v23 = 2112;
    v24 = uuid;
    _os_log_impl(&dword_1DEFC4000, v14, OS_LOG_TYPE_DEFAULT, "Blending: Updated cached client suggestions for client model: %{public}@ with client cache update UUID: %@", buf, 0x16u);
  }

  completionCopy[2](completionCopy, 0);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __104__ATXUniversalBlendingLayerServer_updateClientModelCacheWithCacheUpdate_previousCacheUpdate_completion___block_invoke(void *a1)
{
  [*(a1[4] + 56) sendEventToBiomeIfNeededForClientModelCacheUpdate:a1[5] previousUpdate:a1[6]];
  v2 = a1[5];
  v3 = *(a1[4] + 104);

  return [v3 updateCachedSuggestions:v2];
}

- (void)refreshBlendingLayerIfNeededForNewSuggestions:(id)suggestions previousCacheUpdate:(id)update clientModelId:(id)id
{
  v25 = *MEMORY[0x1E69E9840];
  idCopy = id;
  suggestionsCopy = suggestions;
  suggestions = [update suggestions];
  v11 = [ATXProactiveSuggestion suggestionsHaveChangedFromPreviousSuggestions:suggestions newSuggestions:suggestionsCopy];

  v12 = __atxlog_handle_blending();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138543362;
      v24 = idCopy;
      _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "BlendingRefresh: Executing Blending Layer refresh based on suggestion update for %{public}@", buf, 0xCu);
    }

    pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __115__ATXUniversalBlendingLayerServer_refreshBlendingLayerIfNeededForNewSuggestions_previousCacheUpdate_clientModelId___block_invoke;
    v21[3] = &unk_1E86A4178;
    v15 = idCopy;
    v22 = v15;
    [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v21];
    v16 = [ATXProactiveSuggestionClientModel clientModelTypeFromClientModelId:v15];
    if (v16 == 1 || v16 == 46 || v16 == 24)
    {
      coalescedBlendingLayerRefreshOperation = self->_coalescedBlendingLayerRefreshOperation;
      v18 = 1.0;
      v19 = 0;
    }

    else
    {
      coalescedBlendingLayerRefreshOperation = self->_coalescedBlendingLayerRefreshOperation;
      v18 = 3.0;
      v19 = 1;
    }

    [(_PASSimpleCoalescingTimer *)coalescedBlendingLayerRefreshOperation runAfterDelaySeconds:v19 coalescingBehavior:v18];
    v12 = v22;
  }

  else if (v13)
  {
    *buf = 138543362;
    v24 = idCopy;
    _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "BlendingRefresh: Skipping Blending Layer refresh based on suggestion update for %{public}@", buf, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __115__ATXUniversalBlendingLayerServer_refreshBlendingLayerIfNeededForNewSuggestions_previousCacheUpdate_clientModelId___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 clientModelsThatUpdatedSuggestions];
  [v4 addObject:*(a1 + 32)];

  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 clientModelsThatUpdatedSuggestions];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1DEFC4000, v5, OS_LOG_TYPE_DEFAULT, "BlendingRefresh: Updated pendingRefreshTracker. Client Models that updated recently: %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)clientModelUpdatedNotificationId:(id)id clientModelId:(id)modelId completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  idCopy = id;
  modelIdCopy = modelId;
  completionCopy = completion;
  v11 = __atxlog_handle_xpc();
  v12 = os_signpost_id_generate(v11);

  v13 = __atxlog_handle_xpc();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "updateNotificationIdFromClientModel", " enableTelemetry=YES ", &v19, 2u);
  }

  v15 = __atxlog_handle_blending();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = modelIdCopy;
    v21 = 2112;
    v22 = idCopy;
    _os_log_impl(&dword_1DEFC4000, v15, OS_LOG_TYPE_DEFAULT, "Blending: <<%{public}@>> client model updated its notification id. New notification id: %@", &v19, 0x16u);
  }

  [(ATXClientModelNotificationManagerProtocol *)self->_clientModelNotificationManager updateNotificationId:idCopy clientModel:modelIdCopy];
  completionCopy[2](completionCopy, 0);

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v17, OS_SIGNPOST_INTERVAL_END, v12, "updateNotificationIdFromClientModel", " enableTelemetry=YES ", &v19, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)retrieveSuggestionsForClientModelId:(id)id reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  idCopy = id;
  replyCopy = reply;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "retrieveSuggestionsForClientModelId", " enableTelemetry=YES ", &v19, 2u);
  }

  v12 = __atxlog_handle_blending();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = idCopy;
    _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "Blending: <<%{public}@>> client model retrieves suggestions.", &v19, 0xCu);
  }

  v13 = [(ATXClientModelCacheManagerProtocol *)self->_clientModelCacheManager cachedSuggestionsForClientModel:idCopy];
  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ATXUniversalBlendingLayerServer *)idCopy retrieveSuggestionsForClientModelId:v13 reply:v14];
  }

  suggestions = [v13 suggestions];
  replyCopy[2](replyCopy, suggestions, 0);

  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v19) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v17, OS_SIGNPOST_INTERVAL_END, v9, "retrieveSuggestionsForClientModelId", " enableTelemetry=YES ", &v19, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)generateLayoutForRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  requestCopy = request;
  v8 = __atxlog_handle_xpc();
  v9 = os_signpost_id_generate(v8);

  v10 = __atxlog_handle_xpc();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "generateLayoutForRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = [(ATXUniversalBlendingLayerServer *)self selectedLayoutForSuggestionRequest:requestCopy];

  replyCopy[2](replyCopy, v12);
  v13 = __atxlog_handle_xpc();
  v14 = v13;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v14, OS_SIGNPOST_INTERVAL_END, v9, "generateLayoutForRequest", " enableTelemetry=YES ", v15, 2u);
  }
}

- (void)generateRankedSuggestionsForRequest:(id)request limit:(id)limit reply:(id)reply
{
  replyCopy = reply;
  limitCopy = limit;
  requestCopy = request;
  v11 = __atxlog_handle_xpc();
  v12 = os_signpost_id_generate(v11);

  v13 = __atxlog_handle_xpc();
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "generateSuggestionsForRequest", " enableTelemetry=YES ", buf, 2u);
  }

  v15 = [(ATXUniversalBlendingLayerServer *)self generatedRankedSuggestionsForSuggestionRequest:requestCopy limit:limitCopy];

  replyCopy[2](replyCopy, v15);
  v16 = __atxlog_handle_xpc();
  v17 = v16;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DEFC4000, v17, OS_SIGNPOST_INTERVAL_END, v12, "generateSuggestionsForRequest", " enableTelemetry=YES ", v18, 2u);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.proactive.ProactiveSuggestionClientModel.xpc"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue] & 1) != 0)
  {
    v7 = ATXCreateProactiveSuggestionClientModelXPCInterface();
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:self];
    [connectionCopy setInterruptionHandler:&__block_literal_global_45];
    [connectionCopy setInvalidationHandler:&__block_literal_global_48];
    [connectionCopy resume];
    v8 = 1;
  }

  else
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ATXUniversalBlendingLayerServer *)connectionCopy listener:v9 shouldAcceptNewConnection:?];
    }

    v8 = 0;
  }

  return v8;
}

void __70__ATXUniversalBlendingLayerServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __70__ATXUniversalBlendingLayerServer_listener_shouldAcceptNewConnection___block_invoke_cold_1(v0);
  }
}

void __70__ATXUniversalBlendingLayerServer_listener_shouldAcceptNewConnection___block_invoke_46()
{
  v0 = __atxlog_handle_blending();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __70__ATXUniversalBlendingLayerServer_listener_shouldAcceptNewConnection___block_invoke_46_cold_1(v0);
  }
}

- (id)clientModelsThatUpdatedSuggestionsRecently
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__ATXUniversalBlendingLayerServer_clientModelsThatUpdatedSuggestionsRecently__block_invoke;
  v5[3] = &unk_1E86A41C0;
  v5[4] = &v8;
  v5[5] = v6;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v5];
  v3 = v9[5];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v8, 8);

  return v3;
}

void __77__ATXUniversalBlendingLayerServer_clientModelsThatUpdatedSuggestionsRecently__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientModelsThatUpdatedSuggestions];
  v5 = [v4 copy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  LOBYTE(v4) = [v3 shouldForceRefreshForAllUIs];
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (BOOL)willForceRefreshOfAllUIs
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__2;
  v10[4] = __Block_byref_object_dispose__2;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pendingRefreshTrackerLock = self->_pendingRefreshTrackerLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__ATXUniversalBlendingLayerServer_willForceRefreshOfAllUIs__block_invoke;
  v5[3] = &unk_1E86A41C0;
  v5[4] = v10;
  v5[5] = &v6;
  [(_PASLock *)pendingRefreshTrackerLock runWithLockAcquired:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);

  return v3;
}

void __59__ATXUniversalBlendingLayerServer_willForceRefreshOfAllUIs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientModelsThatUpdatedSuggestions];
  v5 = [v4 copy];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  LOBYTE(v4) = [v3 shouldForceRefreshForAllUIs];
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)retrieveSuggestionsForClientModelId:(NSObject *)a3 reply:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 suggestions];
  v7 = 138543618;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_DEBUG, "Blending: client model <<%{public}@>> has the following suggestions: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)listener:(os_log_t)log shouldAcceptNewConnection:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_ERROR, "Blending: Rejecting connection %@ without entitlement %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end