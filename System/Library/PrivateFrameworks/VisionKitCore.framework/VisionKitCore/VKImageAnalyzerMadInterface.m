@interface VKImageAnalyzerMadInterface
+ (VKImageAnalyzerMadInterface)sharedInterface;
+ (id)analyzerDeallocedError;
- (BOOL)hasAnyRequests;
- (MADService)service;
- (NSMutableDictionary)vkToMadIDs;
- (VICVisualIntelligenceAnalyzer)viInterface;
- (VKImageAnalyzerMadInterface)init;
- (id)VNRequestHandlerForRequest:(id)a3;
- (id)analysisResultFromMadRequests:(id)a3 imageSize:(CGSize)a4 durations:(id)a5;
- (id)cancelledError;
- (id)documentObservationFromRequests:(id)a3 durations:(id)a4;
- (id)madSuggestionTypeFromItems:(id)a3;
- (id)mrcDDElementsFromRequests:(id)a3 didParse:(BOOL *)a4 durations:(id)a5;
- (id)rectangleObservationsFromRequests:(id)a3 durations:(id)a4;
- (id)requestForRequestID:(int)a3;
- (id)visualSearchResultFromRequests:(id)a3 durations:(id)a4;
- (int)_performMADRequest:(id)a3 forRequest:(id)a4 pixelBuffer:(__CVBuffer *)a5 cgImage:(CGImage *)a6 useCGForMad:(BOOL)a7 withCompletion:(id)a8;
- (int)processRequest:(id)a3 callbackQueue:(id)a4;
- (unint64_t)_statusForRequestID:(int)a3;
- (unint64_t)sfViewAppearEventFromInvocationType:(int64_t)a3 request:(id)a4;
- (unint64_t)statusForRequestID:(int)a3;
- (void)_cancelRequest:(id)a3;
- (void)_cancelRequestID:(int)a3;
- (void)_didFinishRequest:(id)a3 withAnalysis:(id)a4 analyticsEvent:(id)a5 error:(id)a6;
- (void)_processRequest:(id)a3 callbackQueue:(id)a4;
- (void)cancelAllRequests;
- (void)cancelRequestID:(int)a3;
- (void)clearCompletedRequest:(id)a3;
- (void)createNewIdleTimerIfNecessary;
- (void)didFinishRequest:(id)a3 withAnalysis:(id)a4 analyticsEvent:(id)a5 error:(id)a6;
- (void)didLeaveVisualSearchHints;
- (void)didShowVisualSearchCachedResultsForQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 item:(id)a5;
- (void)didShowVisualSearchHintsForRequest:(id)a3 invocationType:(int64_t)a4;
- (void)generateTextualVisualSearchResultForAnalysis:(id)a3 queryInfo:(id)a4 completionHandler:(id)a5;
- (void)generateVisualSearchResultForRequest:(id)a3 analysis:(id)a4 items:(id)a5 payload:(id)a6 queryID:(unint64_t)a7 completionHandler:(id)a8;
- (void)performMADRequest:(id)a3 forRequest:(id)a4 withCompletion:(id)a5;
- (void)processMRCInfo:(id)a3 completionHandler:(id)a4;
- (void)removeAndNotifyOfCancelledRequest:(id)a3 completion:(id)a4;
- (void)request:(id)a3 didCompleteWithAnalysis:(id)a4 analysisEvent:(id)a5 error:(id)a6;
- (void)setRequest:(id)a3 forRequestID:(int)a4;
- (void)submitVisualIntelligenceUserFeedbackForRequest:(id)a3 reportIdentifier:(id)a4 userFeedbackPayload:(id)a5 sfReportData:(id)a6;
@end

@implementation VKImageAnalyzerMadInterface

+ (VKImageAnalyzerMadInterface)sharedInterface
{
  if (sharedInterface_onceToken != -1)
  {
    +[VKImageAnalyzerMadInterface sharedInterface];
  }

  v3 = sharedInterface_sInterface;

  return v3;
}

void __46__VKImageAnalyzerMadInterface_sharedInterface__block_invoke()
{
  v0 = objc_alloc_init(VKImageAnalyzerMadInterface);
  v1 = sharedInterface_sInterface;
  sharedInterface_sInterface = v0;
}

- (VKImageAnalyzerMadInterface)init
{
  v20.receiver = self;
  v20.super_class = VKImageAnalyzerMadInterface;
  v2 = [(VKImageAnalyzerMadInterface *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69AE3E0] service];
    madService = v2->_madService;
    v2->_madService = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("VKImageAnalyzerHouseKeeping", v5);
    housekeepingQueue = v2->_housekeepingQueue;
    v2->_housekeepingQueue = v7;

    v9 = dispatch_queue_create("VKImageAnalyzerProcessing", v6);
    processingQueue = v2->_processingQueue;
    v2->_processingQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    requestQueueProcessing = v2->_requestQueueProcessing;
    v2->_requestQueueProcessing = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    requestQueueCancelling = v2->_requestQueueCancelling;
    v2->_requestQueueCancelling = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    idsToRequests = v2->_idsToRequests;
    v2->_idsToRequests = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    vkToMadIDs = v2->_vkToMadIDs;
    v2->_vkToMadIDs = v17;

    v2->_requestIDIndex = 0;
  }

  return v2;
}

- (VICVisualIntelligenceAnalyzer)viInterface
{
  viInterface = self->_viInterface;
  if (!viInterface)
  {
    v4 = _VKSignpostLog();
    if (os_signpost_enabled(v4))
    {
      LOWORD(v13[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VKImageAnalyzerMadInterface Visual Intelligence Analyzer", &unk_1B4435C0E, v13, 2u);
    }

    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_INFO, "Signpost Begin: VKImageAnalyzerMadInterface Visual Intelligence Analyzer", v13, 2u);
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getVICVisualIntelligenceAnalyzerClass_softClass_0;
    v17 = getVICVisualIntelligenceAnalyzerClass_softClass_0;
    if (!getVICVisualIntelligenceAnalyzerClass_softClass_0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getVICVisualIntelligenceAnalyzerClass_block_invoke_0;
      v13[3] = &unk_1E7BE3F48;
      v13[4] = &v14;
      __getVICVisualIntelligenceAnalyzerClass_block_invoke_0(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = objc_alloc_init(v6);
    v9 = self->_viInterface;
    self->_viInterface = v8;

    v10 = _VKSignpostLog();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v13[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VKImageAnalyzerMadInterface Visual Intelligence Analyzer", &unk_1B4435C0E, v13, 2u);
    }

    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_INFO, "Signpost End: VKImageAnalyzerMadInterface Visual Intelligence Analyzer", v13, 2u);
    }

    viInterface = self->_viInterface;
  }

  return viInterface;
}

- (int)processRequest:(id)a3 callbackQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  LODWORD(a4) = [(VKImageAnalyzerMadInterface *)v8 requestIDIndex];
  [(VKImageAnalyzerMadInterface *)v8 setRequestIDIndex:(a4 + 1)];
  [v6 setRequestID:(a4 + 1)];
  -[VKImageAnalyzerMadInterface setRequest:forRequestID:](v8, "setRequest:forRequestID:", v6, [v6 requestID]);
  objc_sync_exit(v8);

  v9 = [(VKImageAnalyzerMadInterface *)v8 housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VKImageAnalyzerMadInterface_processRequest_callbackQueue___block_invoke;
  block[3] = &unk_1E7BE4718;
  block[4] = v8;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);

  return a4 + 1;
}

- (NSMutableDictionary)vkToMadIDs
{
  v3 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v3);

  vkToMadIDs = self->_vkToMadIDs;

  return vkToMadIDs;
}

- (unint64_t)statusForRequestID:(int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 3;
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VKImageAnalyzerMadInterface_statusForRequestID___block_invoke;
  block[3] = &unk_1E7BE6278;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __50__VKImageAnalyzerMadInterface_statusForRequestID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _statusForRequestID:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)cancelRequestID:(int)a3
{
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__VKImageAnalyzerMadInterface_cancelRequestID___block_invoke;
  v6[3] = &unk_1E7BE62A0;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)cancelAllRequests
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VKImageAnalyzerMadInterface *)v2 idsToRequests];
  v4 = [v3 allKeys];

  objc_sync_exit(v2);
  objc_initWeak(&location, v2);
  v5 = [(VKImageAnalyzerMadInterface *)v2 housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VKImageAnalyzerMadInterface_cancelAllRequests__block_invoke;
  block[3] = &unk_1E7BE62F0;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__VKImageAnalyzerMadInterface_cancelAllRequests__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling all requests: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__VKImageAnalyzerMadInterface_cancelAllRequests__block_invoke_163;
    v6[3] = &unk_1E7BE62C8;
    v6[4] = WeakRetained;
    [v5 enumerateObjectsUsingBlock:v6];
  }
}

uint64_t __48__VKImageAnalyzerMadInterface_cancelAllRequests__block_invoke_163(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 _cancelRequestID:v3];
}

- (void)_cancelRequestID:(int)a3
{
  v3 = *&a3;
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(VKImageAnalyzerMadInterface *)self requestForRequestID:v3];
  v7 = v6;
  if (v6)
  {
    if (([v6 cancelled] & 1) == 0)
    {
      [(VKImageAnalyzerMadInterface *)self _cancelRequest:v7];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to cancel completed or unknown requestID: %d", v9, 8u);
    }
  }
}

- (BOOL)hasAnyRequests
{
  v3 = [(VKImageAnalyzerMadInterface *)self requestQueueCancelling];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VKImageAnalyzerMadInterface *)self requestQueueProcessing];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (MADService)service
{
  serviceDontUseThisOneDirectly = self->__serviceDontUseThisOneDirectly;
  if (!serviceDontUseThisOneDirectly)
  {
    v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_INFO, "Retaining MADService", v8, 2u);
    }

    v5 = [MEMORY[0x1E69AE3E0] service];
    v6 = self->__serviceDontUseThisOneDirectly;
    self->__serviceDontUseThisOneDirectly = v5;

    serviceDontUseThisOneDirectly = self->__serviceDontUseThisOneDirectly;
  }

  return serviceDontUseThisOneDirectly;
}

- (id)requestForRequestID:(int)a3
{
  v3 = *&a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VKImageAnalyzerMadInterface *)v4 idsToRequests];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  objc_sync_exit(v4);

  return v7;
}

- (void)setRequest:(id)a3 forRequestID:(int)a4
{
  v4 = *&a4;
  v9 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(VKImageAnalyzerMadInterface *)v6 idsToRequests];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  [v7 setObject:v9 forKeyedSubscript:v8];

  objc_sync_exit(v6);
}

- (void)_cancelRequest:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v5);

  [v4 setCancelled:1];
  v6 = -[VKImageAnalyzerMadInterface _statusForRequestID:](self, "_statusForRequestID:", [v4 requestID]);
  v7 = [(VKImageAnalyzerMadInterface *)self vkToMadIDs];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "requestID")}];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 intValue];

  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 shortLoggingDescription];
    v16 = 138412290;
    v17 = v12;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Cancelling Request: %@", &v16, 0xCu);
  }

  if (!v6)
  {
    v13 = [(VKImageAnalyzerMadInterface *)self service];
    [v13 cancelRequestID:v10];

    v14 = [(VKImageAnalyzerMadInterface *)self requestQueueCancelling];
    v15 = [v4 requestIDValue];
    [v14 addObject:v15];
  }
}

- (void)removeAndNotifyOfCancelledRequest:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 shortLoggingDescription];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Removing and notifying of cancelled request not yet submitted to MAD: %@", &v12, 0xCu);
  }

  [(VKImageAnalyzerMadInterface *)self clearCompletedRequest:v6];
  v11 = [(VKImageAnalyzerMadInterface *)self cancelledError];
  v7[2](v7, [v6 madRequestID], v11);
}

- (unint64_t)_statusForRequestID:(int)a3
{
  v3 = *&a3;
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(VKImageAnalyzerMadInterface *)self requestForRequestID:v3];
  v8 = [(VKImageAnalyzerMadInterface *)self vkToMadIDs];
  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v9 integerValue];

  if (v7)
  {
    v11 = [(VKImageAnalyzerMadInterface *)self requestQueueProcessing];
    v12 = [v11 containsObject:v6];

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(VKImageAnalyzerMadInterface *)self requestQueueCancelling];
      v15 = [v14 containsObject:v6];

      v16 = 3;
      if (v10 == -1)
      {
        v16 = 1;
      }

      if (v15)
      {
        v13 = 2;
      }

      else
      {
        v13 = v16;
      }
    }
  }

  else
  {
    v13 = 3;
  }

  return v13;
}

- (void)clearCompletedRequest:(id)a3
{
  v4 = a3;
  v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 requestIDValue];
  if (v6)
  {
    v7 = [(VKImageAnalyzerMadInterface *)self requestQueueProcessing];
    [v7 removeObject:v6];

    v8 = [(VKImageAnalyzerMadInterface *)self requestQueueCancelling];
    [v8 vk_removeNonNilObject:v6];

    v9 = [(VKImageAnalyzerMadInterface *)self vkToMadIDs];
    [v9 removeObjectForKey:v6];

    -[VKImageAnalyzerMadInterface setRequest:forRequestID:](self, "setRequest:forRequestID:", 0, [v4 requestID]);
    [(VKImageAnalyzerMadInterface *)self createNewIdleTimerIfNecessary];
    [(VKImageAnalyzerMadInterface *)self logCollectionsIfNecessary];
  }

  else
  {
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VKImageAnalyzerMadInterface *)v4 clearCompletedRequest:v10];
    }
  }
}

- (id)cancelledError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Request Cancelled";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-2 userInfo:v3];

  return v4;
}

+ (id)analyzerDeallocedError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Analzyer was dealloced";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-6 userInfo:v3];

  return v4;
}

- (void)request:(id)a3 didCompleteWithAnalysis:(id)a4 analysisEvent:(id)a5 error:(id)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v14);

  v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 shortLoggingDescription];
    v19 = 138412290;
    v20 = v16;
    _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Request completed: %@", &v19, 0xCu);
  }

  [(VKImageAnalyzerMadInterface *)self clearCompletedRequest:v10];
  v17 = [v10 completionHandler];

  if (v17)
  {
    v18 = [v10 completionHandler];
    (v18)[2](v18, v11, v12, v13);
  }
}

- (void)_processRequest:(id)a3 callbackQueue:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  v7 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 requestID];
  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v8;
    v47 = 2112;
    v48 = v6;
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Processing Request: %d - %@", &buf, 0x12u);
  }

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = _VKSignpostLog();
  v12 = _VKSignpostLog();
  v13 = os_signpost_id_make_with_pointer(v12, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VisionKit MAD Parse Request", &unk_1B4435C0E, &buf, 2u);
  }

  v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B4335000, v14, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD Parse Request", &buf, 2u);
  }

  v15 = [(VKImageAnalyzerMadInterface *)self vkToMadIDs];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  [v15 setObject:&unk_1F2C38EC0 forKeyedSubscript:v16];

  v17 = [v6 madRequests];
  v18 = [v6 viRequest];
  if (v17 | v18)
  {
    [v6 imageSize];
    v20 = v19;
    v22 = v21;
    objc_initWeak(&buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke;
    aBlock[3] = &unk_1E7BE6318;
    objc_copyWeak(v43, &buf);
    v23 = v6;
    v40 = v23;
    v41 = self;
    v24 = v17;
    v42 = v24;
    v43[1] = v20;
    v43[2] = v22;
    v25 = _Block_copy(aBlock);
    if ([v24 count])
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_2;
      v34[3] = &unk_1E7BE6340;
      v35 = v10;
      v36 = v23;
      v37 = self;
      v38 = v25;
      [(VKImageAnalyzerMadInterface *)self performMADRequest:v24 forRequest:v36 withCompletion:v34];
    }

    else
    {
      [v23 setMadRequestID:420420420];
      v32 = [MEMORY[0x1E695DF00] date];
      [v23 setProcessDate:v32];

      (*(v25 + 2))(v25, 420420420, 0);
    }

    objc_destroyWeak(v43);
    objc_destroyWeak(&buf);
  }

  else
  {
    v26 = [v6 shortLoggingDescription];
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKImageAnalyzerMadInterface _processRequest:callbackQueue:]" simulateCrash:0 showAlert:0 format:@"unable to create madRequests or viRequests for request %@", v26];

    v27 = objc_alloc(MEMORY[0x1E696ABC0]);
    v44 = *MEMORY[0x1E695E620];
    v45 = @"Unable to create madRequests for request";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v29 = [v27 initWithDomain:@"com.apple.VisionKit.ImageAnalyzer" code:-3 userInfo:v28];

    v30 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [VKImageAnalyzerMadInterface _processRequest:v6 callbackQueue:?];
    }

    v31 = [[VKAnalyticsAnalyzerEvent alloc] initWithExecutionDurations:0 request:v6 analysis:0 customIdentifier:0 error:v29];
    [(VKImageAnalyzerMadInterface *)self _didFinishRequest:v6 withAnalysis:0 analyticsEvent:v31 error:v29];
  }

  [(VKImageAnalyzerMadInterface *)self logCollectionsIfNecessary];
}

void __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) processDate];
  [v6 timeIntervalSinceDate:v8];
  v10 = v9;

  if (WeakRetained)
  {
    v11 = objc_alloc_init(VKAnalysisExecutionDurations);
    [(VKAnalysisExecutionDurations *)v11 setMadRoundTripAnalysisDuration:v10];
    if (v4)
    {
      v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_cold_1(v4, (a1 + 32));
      }

      v13 = [*(a1 + 40) housekeepingQueue];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_186;
      v23 = &unk_1E7BE4768;
      v24 = WeakRetained;
      v25 = *(a1 + 32);
      dispatch_async(v13, &v20);

      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = [WeakRetained analysisResultFromMadRequests:*(a1 + 48) imageSize:v11 durations:{*(a1 + 64), *(a1 + 72)}];
      [v14 setRequest:*(a1 + 32)];
      [v14 setImageSource:{objc_msgSend(*(a1 + 32), "imageSource")}];
      [v14 setAnalysisRequestID:{objc_msgSend(*(a1 + 32), "requestID")}];
      v15 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:v14];
    }

    v16 = [[VKAnalyticsAnalyzerEvent alloc] initWithExecutionDurations:v11 request:*v7 analysis:v15 customIdentifier:0 error:v4];
    if (([*v7 cancelled] & 1) == 0 && v14)
    {
      [v14 setRequest:*v7];
      [v14 setImageSource:{objc_msgSend(*v7, "imageSource")}];
      v17 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:v14];

      v18 = [(VKImageAnalysis *)v17 imageAnalysisResult];
      v19 = [v18 visualSearchResult];
      [v19 setAnalysis:v17];

      v15 = v17;
    }

    [WeakRetained _didFinishRequest:*v7 withAnalysis:v15 analyticsEvent:v16 error:{v4, v20, v21, v22, v23, v24}];
  }
}

void __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_186(uint64_t a1)
{
  v3 = [*(a1 + 32) vkToMadIDs];
  v2 = [*(a1 + 40) requestIDValue];
  [v3 removeObjectForKey:v2];
}

void __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = v7;

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) requestID];
    v18[0] = 67109376;
    v18[1] = v10;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "Mad processing complete for requestID: %d, duration: %f", v18, 0x12u);
  }

  (*(*(a1 + 56) + 16))();
  v11 = [*(a1 + 48) requestQueueProcessing];
  v12 = [v11 count];

  if (v12 >= 0xB)
  {
    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_2_cold_1(v13);
    }
  }

  v14 = _VKSignpostLog();
  v15 = _VKSignpostLog();
  v16 = os_signpost_id_make_with_pointer(v15, *(a1 + 48));

  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v14, OS_SIGNPOST_INTERVAL_END, v16, "VisionKit MAD Parse Request", &unk_1B4435C0E, v18, 2u);
  }

  v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD Parse Request", v18, 2u);
  }
}

- (void)processMRCInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 observation];
  if (v7)
  {
    v8 = [(VKImageAnalyzerMadInterface *)self processingQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__VKImageAnalyzerMadInterface_processMRCInfo_completionHandler___block_invoke;
    v9[3] = &unk_1E7BE47B8;
    v10 = v7;
    v11 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __64__VKImageAnalyzerMadInterface_processMRCInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [VKCTextElementProcessor dataDetectorElementFromVNBarcodeObservation:*(a1 + 32) loggingIndex:-1];
  (*(*(a1 + 40) + 16))();
}

- (void)performMADRequest:(id)a3 forRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[VKCInternalSettings isCGImageForMadEnabled];
  objc_initWeak(&location, self);
  v12 = [(VKImageAnalyzerMadInterface *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__VKImageAnalyzerMadInterface_performMADRequest_forRequest_withCompletion___block_invoke;
  block[3] = &unk_1E7BE6390;
  v22 = v11;
  v17 = v9;
  v18 = self;
  v13 = v9;
  objc_copyWeak(&v21, &location);
  v19 = v8;
  v20 = v10;
  v14 = v10;
  v15 = v8;
  dispatch_async(v12, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __75__VKImageAnalyzerMadInterface_performMADRequest_forRequest_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) requestType];
  v3 = 0;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = [*(a1 + 32) pixelBuffer];
      CVPixelBufferRetain(v4);
      goto LABEL_12;
    }

    if (v2 != 6)
    {
      v4 = 0;
      if (v2 != 7)
      {
        goto LABEL_21;
      }

      v5 = [*(a1 + 32) pixelBuffer];
      goto LABEL_10;
    }

    v6 = *(a1 + 32);
LABEL_14:
    v3 = [v6 cgImageRef];
    CGImageRetain(v3);
LABEL_20:
    v4 = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    v4 = 0;
    if (v2 != 1)
    {
      goto LABEL_21;
    }

    v6 = *(a1 + 32);
    if (*(a1 + 72) != 1)
    {
      v5 = [v6 tempPixelBufferRef];
LABEL_10:
      v4 = v5;
LABEL_12:
      v3 = 0;
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v7 = *(a1 + 32);
  if (*(a1 + 72) == 1)
  {
    v8 = [v7 image];
    v3 = [v8 vk_cgImageGeneratingIfNecessary];

    CGImageRetain(v3);
    v4 = 0;
  }

  else
  {
    v4 = [v7 tempPixelBufferRef];
    v3 = 0;
  }

  if (!(v3 | v4))
  {
    [VKAssert handleFailedAssertWithCondition:"(cgImage != ((void*)0) || pixelBuffer != ((void*)0))" functionName:"[VKImageAnalyzerMadInterface performMADRequest:forRequest:withCompletion:]_block_invoke" simulateCrash:0 showAlert:0 format:@"Unable to create pixel buffer or CGImage from image for request: %@", *(a1 + 40)];
    v3 = 0;
    goto LABEL_20;
  }

LABEL_21:
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained housekeepingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__VKImageAnalyzerMadInterface_performMADRequest_forRequest_withCompletion___block_invoke_2;
    block[3] = &unk_1E7BE6368;
    objc_copyWeak(v18, (a1 + 64));
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v18[1] = v4;
    v18[2] = v3;
    v19 = *(a1 + 72);
    v17 = *(a1 + 56);
    dispatch_async(v11, block);

    objc_destroyWeak(v18);
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = +[VKImageAnalyzerMadInterface analyzerDeallocedError];
    (*(v12 + 16))(v12, 0xFFFFFFFFLL, v13);

    CVPixelBufferRelease(v4);
    CGImageRelease(v3);
  }
}

void __75__VKImageAnalyzerMadInterface_performMADRequest_forRequest_withCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v15 = *(a1 + 48);
    v16 = +[VKImageAnalyzerMadInterface analyzerDeallocedError];
    (*(v15 + 16))(v15, 0xFFFFFFFFLL, v16);

    goto LABEL_10;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_9;
  }

  v4 = [v3 cancelled];
  v5 = *(a1 + 32);
  if (v4)
  {
LABEL_9:
    [WeakRetained removeAndNotifyOfCancelledRequest:v5 completion:*(a1 + 48)];
    goto LABEL_10;
  }

  v6 = [WeakRetained _performMADRequest:*(a1 + 40) forRequest:*(a1 + 32) pixelBuffer:*(a1 + 64) cgImage:*(a1 + 72) useCGForMad:*(a1 + 80) withCompletion:*(a1 + 48)];
  [*(a1 + 32) setMadRequestID:v6];
  v7 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setProcessDate:v7];

  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) requestID];
    v17[0] = 67109376;
    v17[1] = v6;
    v18 = 1024;
    v19 = v9;
    _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "Assigned madId: %d to vkId: %d", v17, 0xEu);
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v11 = [WeakRetained vkToMadIDs];
  v12 = [*(a1 + 32) requestIDValue];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [WeakRetained requestQueueProcessing];
  v14 = [*(a1 + 32) requestIDValue];
  [v13 addObject:v14];

  [WeakRetained logCollectionsIfNecessary];
LABEL_10:
  CVPixelBufferRelease(*(a1 + 64));
  CGImageRelease(*(a1 + 72));
}

- (int)_performMADRequest:(id)a3 forRequest:(id)a4 pixelBuffer:(__CVBuffer *)a5 cgImage:(CGImage *)a6 useCGForMad:(BOOL)a7 withCompletion:(id)a8
{
  v9 = a7;
  v34 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = [(VKImageAnalyzerMadInterface *)self service];
  v18 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  dispatch_assert_queue_V2(v18);

  v19 = vk_cgImagePropertyOrientationFromVKOrientation([v15 imageOrientation]);
  v20 = [v15 requestType];
  v21 = 0;
  if (v20 <= 3)
  {
    if (v20 <= 1)
    {
      if (v20 > 1)
      {
        goto LABEL_20;
      }

      if (v9)
      {
        v22 = [v17 performRequests:v14 onCGImage:a6 withOrientation:v19 andIdentifier:0 completionHandler:v16];
LABEL_11:
        v21 = v22;
        goto LABEL_20;
      }

LABEL_10:
      v22 = [v17 performRequests:v14 onPixelBuffer:a5 withOrientation:v19 andIdentifier:0 completionHandler:v16];
      goto LABEL_11;
    }

    if (v20 != 2)
    {
      goto LABEL_10;
    }

    v23 = [v15 ciImage];
    v27 = [v17 performRequests:v14 onCIImage:v23 withOrientation:v19 andIdentifier:0 completionHandler:v16];
    goto LABEL_17;
  }

  if (v20 <= 5)
  {
    if (v20 != 4)
    {
      v23 = [v15 localIdentifier];
      v24 = [v15 URL];
      v21 = [v17 performRequests:v14 onAssetWithLocalIdentifier:v23 fromPhotoLibraryWithURL:v24 completionHandler:v16];

LABEL_19:
      goto LABEL_20;
    }

    v23 = [v15 URL];
    v27 = [v17 performRequests:v14 onImageURL:v23 withIdentifier:0 completionHandler:v16];
LABEL_17:
    v21 = v27;
    goto LABEL_19;
  }

  if (v20 == 6)
  {
    v23 = [v15 localIdentifier];
    v28 = [v15 URL];
    v21 = [v17 performRequests:v14 onCGImage:a6 withOrientation:v19 assetLocalIdentifier:v23 photoLibraryURL:v28 completionHandler:v16];

    goto LABEL_19;
  }

  if (v20 == 7)
  {
    v25 = [v15 localIdentifier];
    v26 = [v15 URL];
    v21 = [v17 performRequests:v14 onPixelBuffer:a5 withOrientation:v19 assetLocalIdentifier:v25 photoLibraryURL:v26 completionHandler:v16];
  }

LABEL_20:
  v29 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [v15 shortLoggingDescription];
    v32 = 138412290;
    v33 = v30;
    _os_log_impl(&dword_1B4335000, v29, OS_LOG_TYPE_INFO, "Request Submitted to MAD: %@", &v32, 0xCu);
  }

  [(VKImageAnalyzerMadInterface *)self logCollectionsIfNecessary];
  return v21;
}

- (id)analysisResultFromMadRequests:(id)a3 imageSize:(CGSize)a4 durations:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [(VKImageAnalyzerMadInterface *)self documentObservationFromRequests:v9 durations:v10];
  v12 = [MEMORY[0x1E695DF00] now];
  v19 = 0;
  v13 = [(VKImageAnalyzerMadInterface *)self mrcDDElementsFromRequests:v9 didParse:&v19 durations:v10];
  if (v19)
  {
    v14 = [MEMORY[0x1E695DF00] now];
    [v14 timeIntervalSinceDate:v12];
    [v10 setMrcParseDuration:?];
  }

  else
  {
    [v10 setMrcParseDuration:0.0];
  }

  v15 = [[VKCImageAnalysisResult alloc] initWithDocumentObservation:v11 mrcDataDetectors:v13 imageSize:width, height];
  v16 = [(VKImageAnalyzerMadInterface *)self visualSearchResultFromRequests:v9 durations:v10];
  [(VKCImageAnalysisResult *)v15 setVisualSearchResult:v16];
  v17 = [(VKImageAnalyzerMadInterface *)self rectangleObservationsFromRequests:v9 durations:v10];
  [(VKCTextRecognitionResult *)v15 setRectangleObservations:v17];

  return v15;
}

- (id)documentObservationFromRequests:(id)a3 durations:(id)a4
{
  v5 = a4;
  v6 = [a3 vk_objectPassingTest:&__block_literal_global_198];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v6 results];
    v9 = [v8 firstObject];
    v10 = VKCheckedDynamicCast(v7, v9);

    if (v10)
    {
      v11 = [v10 observations];
      v12 = [v11 firstObject];

      [v10 executionTimeInterval];
      [v5 setMadDocumentDuration:?];
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

uint64_t __73__VKImageAnalyzerMadInterface_documentObservationFromRequests_durations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)rectangleObservationsFromRequests:(id)a3 durations:(id)a4
{
  v5 = a4;
  v6 = [a3 vk_objectPassingTest:&__block_literal_global_202];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [v6 results];
    v9 = [v8 firstObject];
    v10 = VKDynamicCast(v7, v9);

    v11 = [v10 observations];
    [v10 executionTimeInterval];
    [v5 setMadRectangleDuration:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __75__VKImageAnalyzerMadInterface_rectangleObservationsFromRequests_durations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)visualSearchResultFromRequests:(id)a3 durations:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 vk_objectPassingTest:&__block_literal_global_206];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 error];

    if (v8)
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VKImageAnalyzerMadInterface visualSearchResultFromRequests:v7 durations:?];
      }
    }

    else
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "VSGating Request completed: %@", &v14, 0xCu);
      }
    }

    v11 = [v7 results];
    v12 = [v11 firstObject];
    v10 = [[VKCVisualSearchResult alloc] initWithGatingResult:v12];
    [v12 executionTimeInterval];
    [v5 setMadVisualSearchDuration:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __72__VKImageAnalyzerMadInterface_visualSearchResultFromRequests_durations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)mrcDDElementsFromRequests:(id)a3 didParse:(BOOL *)a4 durations:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E695DF00] now];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v10 = [v7 vk_objectPassingTest:&__block_literal_global_211];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = [v10 results];
    v13 = [v12 firstObject];
    v14 = VKCheckedDynamicCast(v11, v13);

    if (v14)
    {
      v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 observations];
        v17 = [v16 count];
        *buf = 134217984;
        v33 = v17;
        _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Beginning MRC Parsing with %lu elements", buf, 0xCu);
      }

      [v14 executionTimeInterval];
      [v8 setMadMRCDuration:?];
      v18 = [v14 observations];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __76__VKImageAnalyzerMadInterface_mrcDDElementsFromRequests_didParse_durations___block_invoke_214;
      v27[3] = &unk_1E7BE63D8;
      v27[4] = &v28;
      v19 = [v18 vk_compactMap:v27];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 count];
    v22 = [MEMORY[0x1E695DF00] date];
    [v22 timeIntervalSinceDate:v9];
    *buf = 134218240;
    v33 = v21;
    v34 = 2048;
    v35 = v23;
    _os_log_impl(&dword_1B4335000, v20, OS_LOG_TYPE_DEFAULT, "Completed MRC Parsing of %lu elements in %f seconds.", buf, 0x16u);
  }

  v24 = MEMORY[0x1E695E0F0];
  if (v19)
  {
    v24 = v19;
  }

  v25 = v24;

  *a4 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);

  return v25;
}

uint64_t __76__VKImageAnalyzerMadInterface_mrcDDElementsFromRequests_didParse_durations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_didFinishRequest:(id)a3 withAnalysis:(id)a4 analyticsEvent:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 viRequest];
  if (v14)
  {
    v15 = [(VKImageAnalyzerMadInterface *)self viInterface];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__VKImageAnalyzerMadInterface__didFinishRequest_withAnalysis_analyticsEvent_error___block_invoke;
    v16[3] = &unk_1E7BE6400;
    v17 = v11;
    v18 = self;
    v19 = v10;
    v20 = v12;
    v21 = v13;
    [v15 processRequest:v14 completionHandler:v16];
  }

  else
  {
    [(VKImageAnalyzerMadInterface *)self didFinishRequest:v10 withAnalysis:v11 analyticsEvent:v12 error:v13];
  }
}

uint64_t __83__VKImageAnalyzerMadInterface__didFinishRequest_withAnalysis_analyticsEvent_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 imageAnalysisResult];
  [v5 setVisualIntelligenceResult:v4];

  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];

  return [v6 didFinishRequest:v8 withAnalysis:v7 analyticsEvent:v9 error:v10];
}

- (void)didFinishRequest:(id)a3 withAnalysis:(id)a4 analyticsEvent:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__10;
  v23[4] = __Block_byref_object_dispose__10;
  v13 = a6;
  v24 = v13;
  v14 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VKImageAnalyzerMadInterface_didFinishRequest_withAnalysis_analyticsEvent_error___block_invoke;
  block[3] = &unk_1E7BE6428;
  block[4] = self;
  v19 = v10;
  v21 = v12;
  v22 = v23;
  v20 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(v14, block);

  _Block_object_dispose(v23, 8);
}

void __82__VKImageAnalyzerMadInterface_didFinishRequest_withAnalysis_analyticsEvent_error___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) requestQueueCancelling];
  v2 = [*(a1 + 40) requestIDValue];
  v3 = [v8 containsObject:v2];

  if (v3)
  {
    v4 = [*(a1 + 40) requestIDValue];
    [v8 removeObject:v4];

    v5 = [*(a1 + 32) cancelledError];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [*(a1 + 32) clearCompletedRequest:*(a1 + 40)];
  [*(a1 + 32) request:*(a1 + 40) didCompleteWithAnalysis:*(a1 + 48) analysisEvent:*(a1 + 56) error:*(*(*(a1 + 64) + 8) + 40)];
}

- (id)VNRequestHandlerForRequest:(id)a3
{
  v3 = a3;
  v4 = vk_cgImagePropertyOrientationFromVKOrientation([v3 imageOrientation]);
  v5 = [v3 requestType];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5 > 1)
    {
      goto LABEL_12;
    }

    v10 = [v3 image];
    v11 = [v10 vk_cgImage];

    v12 = objc_alloc(MEMORY[0x1E69845B8]);
    v13 = [v12 initWithCGImage:v11 orientation:v4 options:MEMORY[0x1E695E0F8]];
  }

  else
  {
    if (v5 == 2)
    {
      v14 = objc_alloc(MEMORY[0x1E69845B8]);
      v8 = [v3 ciImage];
      v9 = [v14 initWithCIImage:v8 orientation:v4 options:MEMORY[0x1E695E0F8]];
LABEL_9:
      v6 = v9;

      goto LABEL_12;
    }

    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_12;
      }

      v7 = objc_alloc(MEMORY[0x1E69845B8]);
      v8 = [v3 URL];
      v9 = [v7 initWithURL:v8 options:MEMORY[0x1E695E0F8]];
      goto LABEL_9;
    }

    v15 = objc_alloc(MEMORY[0x1E69845B8]);
    v16 = [v3 pixelBuffer];
    v13 = [v15 initWithCVPixelBuffer:v16 orientation:v4 options:MEMORY[0x1E695E0F8]];
  }

  v6 = v13;
LABEL_12:

  return v6;
}

- (void)generateVisualSearchResultForRequest:(id)a3 analysis:(id)a4 items:(id)a5 payload:(id)a6 queryID:(unint64_t)a7 completionHandler:(id)a8
{
  v59 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v43 = a8;
  v17 = MEMORY[0x1E695DF00];
  v18 = a6;
  v44 = [v17 date];
  v19 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v56 = a7;
    v57 = 1024;
    v58 = [v15 analysisRequestID];
    _os_log_impl(&dword_1B4335000, v19, OS_LOG_TYPE_DEFAULT, "VS Request Activate began with queryID: %llu, id: %d", buf, 0x12u);
  }

  v20 = [v16 vk_compactMap:&__block_literal_global_220];
  if ([v16 vk_containsObjectPassingTest:&__block_literal_global_225])
  {
    v21 = [v15 imageAnalysisResult];
    v22 = [v21 sourceVNDocument];

    if (v22)
    {
      v54 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    }

    else
    {
      [VKAssert handleFailedAssertWithCondition:"((vnObservation) != nil)" functionName:"[VKImageAnalyzerMadInterface generateVisualSearchResultForRequest:analysis:items:payload:queryID:completionHandler:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "vnObservation"];
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v42 = v20;
  v24 = [objc_alloc(MEMORY[0x1E69AE4A0]) initWithGatingResultItems:v20 payload:v18 documentObservations:v23];

  v25 = [(VKImageAnalyzerMadInterface *)self madSuggestionTypeFromItems:v16];
  v45 = a7;
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a7];
  [v24 setQueryID:v26];

  v27 = MEMORY[0x1E696AD98];
  [v14 screenScale];
  v28 = [v27 numberWithDouble:?];
  [v24 setUiScale:v28];

  v29 = [v14 location];
  [v24 setLocation:v29];

  v30 = [v14 imageURL];
  [v24 setImageURL:v30];

  v31 = [v14 pageURL];
  [v24 setReferralURL:v31];

  v32 = [v14 viImageType];
  [v24 setImageType:v32];

  [v24 setEngagementSuggestionType:v25];
  v33 = _VKSignpostLog();
  v34 = _VKSignpostLog();
  v35 = os_signpost_id_make_with_pointer(v34, self);

  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VisionKit MAD VisualSearch Request", &unk_1B4435C0E, buf, 2u);
  }

  v36 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4335000, v36, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD VisualSearch Request", buf, 2u);
  }

  v53 = v24;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __117__VKImageAnalyzerMadInterface_generateVisualSearchResultForRequest_analysis_items_payload_queryID_completionHandler___block_invoke_232;
  v46[3] = &unk_1E7BE6450;
  v47 = v44;
  v48 = v15;
  v49 = v24;
  v50 = self;
  v51 = v43;
  v52 = v45;
  v38 = v43;
  v39 = v24;
  v40 = v15;
  v41 = v44;
  [(VKImageAnalyzerMadInterface *)self performMADRequest:v37 forRequest:v14 withCompletion:v46];
}

id __117__VKImageAnalyzerMadInterface_generateVisualSearchResultForRequest_analysis_items_payload_queryID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69AE490];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 resultItem];
  [v5 normalizedBoundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v3 domainInfo];

  v18[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16 = [v4 initWithNormalizedBoundingBox:v15 andDomains:{v7, v9, v11, v13}];

  return v16;
}

void __117__VKImageAnalyzerMadInterface_generateVisualSearchResultForRequest_analysis_items_payload_queryID_completionHandler___block_invoke_232(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 timeIntervalSinceNow];
  v7 = v6;
  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 72);
    v10 = [*(a1 + 40) analysisRequestID];
    v17 = 134218496;
    v18 = -v7;
    v19 = 2048;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_DEFAULT, "VS Request Activate complete with duration: %f, queryID: %llu, id: %d", &v17, 0x1Cu);
  }

  v11 = [*(a1 + 48) results];
  v12 = [v11 firstObject];
  v13 = _VKSignpostLog();
  v14 = _VKSignpostLog();
  v15 = os_signpost_id_make_with_pointer(v14, *(a1 + 56));

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v13, OS_SIGNPOST_INTERVAL_END, v15, "VisionKit MAD VisualSearch Request", &unk_1B4435C0E, &v17, 2u);
  }

  v16 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1B4335000, v16, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD VisualSearch Request", &v17, 2u);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)generateTextualVisualSearchResultForAnalysis:(id)a3 queryInfo:(id)a4 completionHandler:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695DF00];
  v11 = a4;
  v40 = [v10 date];
  v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch.text");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v49 = [v8 analysisRequestID];
    _os_log_impl(&dword_1B4335000, v12, OS_LOG_TYPE_DEFAULT, "VisualSearch Text Request begin, id: %d", buf, 8u);
  }

  v13 = [v8 imageAnalysisResult];
  v14 = [v13 request];

  v15 = objc_alloc(MEMORY[0x1E69AE458]);
  v16 = [v11 queryString];
  v17 = [v15 initWithQueryTerm:v16];

  v18 = [v8 imageAnalysisResult];
  v19 = [v18 text];
  [v17 setSurroundingText:v19];

  v20 = [v8 imageAnalysisResult];
  v21 = [v20 allLineQuads];
  v22 = [v21 vk_compactMap:&__block_literal_global_237];

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  [v17 setNormalizedBoundingBoxes:v23];
  v24 = MEMORY[0x1E696AD98];
  v25 = [v11 queryID];

  v26 = [v24 numberWithInteger:v25];
  [v17 setQueryID:v26];

  v27 = MEMORY[0x1E696AD98];
  [v14 screenScale];
  v28 = [v27 numberWithDouble:?];
  [v17 setUiScale:v28];

  v29 = _VKSignpostLog();
  v30 = _VKSignpostLog();
  v31 = os_signpost_id_make_with_pointer(v30, self);

  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VisionKit MAD VisualSearch Text Request", &unk_1B4435C0E, buf, 2u);
  }

  v32 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4335000, v32, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD VisualSearch Text Request", buf, 2u);
  }

  v47 = v17;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  v34 = [v8 imageAnalysisResult];
  v35 = [v34 request];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __104__VKImageAnalyzerMadInterface_generateTextualVisualSearchResultForAnalysis_queryInfo_completionHandler___block_invoke_239;
  v41[3] = &unk_1E7BE6478;
  v42 = v40;
  v43 = v8;
  v44 = v17;
  v45 = self;
  v46 = v9;
  v36 = v9;
  v37 = v17;
  v38 = v8;
  v39 = v40;
  [(VKImageAnalyzerMadInterface *)self performMADRequest:v33 forRequest:v35 withCompletion:v41];
}

uint64_t __104__VKImageAnalyzerMadInterface_generateTextualVisualSearchResultForAnalysis_queryInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696B098];
  [a2 boundingBox];

  return [v2 vk_valueWithRect:?];
}

void __104__VKImageAnalyzerMadInterface_generateTextualVisualSearchResultForAnalysis_queryInfo_completionHandler___block_invoke_239(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v7 = v6;
  v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch.text");
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 40) analysisRequestID];
      v11 = [v5 localizedDescription];
      v21 = 134218754;
      v22 = v7;
      v23 = 1024;
      v24 = a2;
      v25 = 1024;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_error_impl(&dword_1B4335000, v9, OS_LOG_TYPE_ERROR, "VisualSearch Text Request completed: duration: %f, requestID %d, id: %d, error %@", &v21, 0x22u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) analysisRequestID];
    v21 = 134218496;
    v22 = v7;
    v23 = 1024;
    v24 = a2;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_DEFAULT, "VisualSearch Text Request completed: duration: %f, requestID %d, id: %d", &v21, 0x18u);
  }

  v13 = [*(a1 + 48) results];
  v14 = objc_opt_class();
  v15 = [v13 firstObject];
  v16 = VKDynamicCast(v14, v15);

  v17 = _VKSignpostLog();
  v18 = _VKSignpostLog();
  v19 = os_signpost_id_make_with_pointer(v18, *(a1 + 56));

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v21) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B4335000, v17, OS_SIGNPOST_INTERVAL_END, v19, "VisionKit MAD VisualSearch Text Request", &unk_1B4435C0E, &v21, 2u);
  }

  v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1B4335000, v20, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit MAD VisualSearch Text Request", &v21, 2u);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)submitVisualIntelligenceUserFeedbackForRequest:(id)a3 reportIdentifier:(id)a4 userFeedbackPayload:(id)a5 sfReportData:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x1E69AE468];
  v13 = a6;
  v14 = a5;
  v15 = [[v12 alloc] initWithUserFeedbackPayload:v14 sfReportData:v13 reportIdentifier:v11];

  v22[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __128__VKImageAnalyzerMadInterface_submitVisualIntelligenceUserFeedbackForRequest_reportIdentifier_userFeedbackPayload_sfReportData___block_invoke;
  v19[3] = &unk_1E7BE64A0;
  v20 = v11;
  v21 = v10;
  v17 = v10;
  v18 = v11;
  [(VKImageAnalyzerMadInterface *)self performMADRequest:v16 forRequest:v17 withCompletion:v19];
}

void __128__VKImageAnalyzerMadInterface_submitVisualIntelligenceUserFeedbackForRequest_reportIdentifier_userFeedbackPayload_sfReportData___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) requestID];
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "VisualIntelligence VisualSearch submit user report completed: %@, id: %d ", &v5, 0x12u);
  }
}

- (void)didShowVisualSearchHintsForRequest:(id)a3 invocationType:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VKImageAnalyzerMadInterface *)self sfViewAppearEventFromInvocationType:a4 request:v6];
  v8 = [(VKImageAnalyzerMadInterface *)self service];
  [v8 startEntryPointWithQueryID:objc_msgSend(v6 andEvent:{"queryID"), v7}];

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = VKMUIStringForVKCVSInvocationType(a4);
    v11 = 138412546;
    v12 = v10;
    v13 = 1024;
    v14 = [v6 requestID];
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_INFO, "DidShowVisualSearchHints with invocationType: %@, id: %d", &v11, 0x12u);
  }
}

- (void)didShowVisualSearchCachedResultsForQueryID:(unint64_t)a3 cachedResultQueryID:(unint64_t)a4 item:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v18[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [(VKImageAnalyzerMadInterface *)self madSuggestionTypeFromItems:v9];

  v11 = [(VKImageAnalyzerMadInterface *)self service];
  [v11 cacheHitWithQueryID:a3 cachedResultQueryID:a4 engagementSuggestionType:v10];

  v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.visualSearch");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v8 analysis];
    v14 = 138412546;
    v15 = v10;
    v16 = 1024;
    v17 = [v13 analysisRequestID];
    _os_log_impl(&dword_1B4335000, v12, OS_LOG_TYPE_INFO, "didShowVisualSearchCachedResultsForQueryID suggestionType: %@, id: %d", &v14, 0x12u);
  }
}

- (void)didLeaveVisualSearchHints
{
  v2 = [(VKImageAnalyzerMadInterface *)self service];
  [v2 endEntryPoint];
}

- (void)createNewIdleTimerIfNecessary
{
  if (![(VKImageAnalyzerMadInterface *)self hasAnyRequests])
  {
    v3 = ([(VKImageAnalyzerMadInterface *)self timeoutIndex]+ 1);
    [(VKImageAnalyzerMadInterface *)self setTimeoutIndex:v3];
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 60000000000);
    v5 = [(VKImageAnalyzerMadInterface *)self housekeepingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__VKImageAnalyzerMadInterface_createNewIdleTimerIfNecessary__block_invoke;
    block[3] = &unk_1E7BE4348;
    objc_copyWeak(v7, &location);
    v7[1] = v3;
    dispatch_after(v4, v5, block);

    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __60__VKImageAnalyzerMadInterface_createNewIdleTimerIfNecessary__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained timeoutIndex] == *(a1 + 40))
  {
    v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = 0x404E000000000000;
      _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_INFO, "Releasing MADService after timeout: %f", &v5, 0xCu);
    }

    [v3 set_serviceDontUseThisOneDirectly:0];
  }
}

- (id)madSuggestionTypeFromItems:(id)a3
{
  v3 = [a3 firstObject];
  v4 = [v3 currentInvocationType];

  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v5 = @"automatic";
      goto LABEL_13;
    }

    if (v4 != 5)
    {
      v5 = 0;
      goto LABEL_13;
    }

    v6 = MEMORY[0x1E69AE2F0];
LABEL_10:
    v5 = *v6;
    goto LABEL_13;
  }

  if (v4 == 1)
  {
    v6 = MEMORY[0x1E69AE2E8];
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v5 = @"highlightedSubject";
  }

  else
  {
    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (unint64_t)sfViewAppearEventFromInvocationType:(int64_t)a3 request:(id)a4
{
  v5 = [a4 imageSource];
  v6 = 28;
  v7 = 34;
  if (v5 == 2)
  {
    v7 = 31;
  }

  if (a3 != 4)
  {
    v7 = 0;
  }

  if (a3 != 3)
  {
    v6 = v7;
  }

  v8 = 34;
  if (v5 == 2)
  {
    v8 = 31;
  }

  v9 = 32;
  if (v5 == 2)
  {
    v9 = 33;
  }

  if (a3 != 2)
  {
    v9 = 0;
  }

  if (a3 != 1)
  {
    v8 = v9;
  }

  if (a3 <= 2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

- (void)clearCompletedRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Trying to clear nil completed requestID for request: %@", &v2, 0xCu);
}

- (void)_processRequest:(void *)a1 callbackQueue:.cold.1(void *a1)
{
  [a1 requestID];
  v7 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __61__VKImageAnalyzerMadInterface__processRequest_callbackQueue___block_invoke_cold_1(uint64_t a1, id *a2)
{
  v7 = [*a2 shortLoggingDescription];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)visualSearchResultFromRequests:(void *)a1 durations:.cold.1(void *a1)
{
  v6 = [a1 error];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end