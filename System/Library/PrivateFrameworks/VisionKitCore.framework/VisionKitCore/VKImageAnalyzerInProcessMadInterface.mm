@interface VKImageAnalyzerInProcessMadInterface
+ (id)sharedInterface;
- (VKImageAnalyzerInProcessMadInterface)init;
- (id)cancelledError;
- (id)mrcElementsFromImage:(CGImage *)a3 symbologies:(id)a4;
- (int)nextRequestID;
- (int)processRequest:(id)a3;
- (unint64_t)_statusForRequestID:(int)a3;
- (unint64_t)statusForRequestID:(int)a3;
- (void)_cancelRequest:(id)a3;
- (void)_processRequest:(id)a3;
- (void)addRequestForProcessing:(id)a3;
- (void)cancelAllRequests;
- (void)cancelRequestID:(int)a3;
- (void)clearCompletedRequest:(id)a3;
- (void)didFinishRequest:(id)a3 withAnalysisResult:(id)a4 error:(id)a5;
- (void)processNextItemIfNecessary;
- (void)removeAndNotifyOfCancelledRequest:(id)a3;
- (void)request:(id)a3 didCompleteWithAnalysis:(id)a4 error:(id)a5;
@end

@implementation VKImageAnalyzerInProcessMadInterface

+ (id)sharedInterface
{
  if (sharedInterface_onceToken_0 != -1)
  {
    +[VKImageAnalyzerInProcessMadInterface sharedInterface];
  }

  v3 = sharedInterface_sInterface_0;

  return v3;
}

void __55__VKImageAnalyzerInProcessMadInterface_sharedInterface__block_invoke()
{
  v0 = objc_alloc_init(VKImageAnalyzerInProcessMadInterface);
  v1 = sharedInterface_sInterface_0;
  sharedInterface_sInterface_0 = v0;
}

- (VKImageAnalyzerInProcessMadInterface)init
{
  v16.receiver = self;
  v16.super_class = VKImageAnalyzerInProcessMadInterface;
  v2 = [(VKImageAnalyzerMadInterface *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("VKImageAnalyzer", 0);
    housekeepingQueue = v2->_housekeepingQueue;
    v2->_housekeepingQueue = v3;

    v5 = dispatch_queue_create("tempMADProcessingQueue", 0);
    tempMadProcessingQueue = v2->_tempMadProcessingQueue;
    v2->_tempMadProcessingQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    tempMadRequestQueueWaiting = v2->_tempMadRequestQueueWaiting;
    v2->_tempMadRequestQueueWaiting = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    tempMadRequestQueueProcessing = v2->_tempMadRequestQueueProcessing;
    v2->_tempMadRequestQueueProcessing = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    tempMadRequestQueueCancelling = v2->_tempMadRequestQueueCancelling;
    v2->_tempMadRequestQueueCancelling = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    idsToRequests = v2->_idsToRequests;
    v2->_idsToRequests = v13;
  }

  return v2;
}

- (int)processRequest:(id)a3
{
  v4 = a3;
  v5 = [(VKImageAnalyzerInProcessMadInterface *)self nextRequestID];
  v6 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__VKImageAnalyzerInProcessMadInterface_processRequest___block_invoke;
  block[3] = &unk_1E7BE73A0;
  v12 = v5;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(v6, block);

  return v5;
}

uint64_t __55__VKImageAnalyzerInProcessMadInterface_processRequest___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setRequestID:*(a1 + 48)];
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setProcessDate:v2];

  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = [v4 requestID];
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Queuing request: %@  requestID: %d", &v6, 0x12u);
  }

  return [*(a1 + 40) addRequestForProcessing:*(a1 + 32)];
}

- (int)nextRequestID
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1;
  v3 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VKImageAnalyzerInProcessMadInterface_nextRequestID__block_invoke;
  v5[3] = &unk_1E7BE73C8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __53__VKImageAnalyzerInProcessMadInterface_nextRequestID__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 96);
  if (!v2)
  {
    *(v1 + 96) = 1;
    v1 = *(result + 32);
    v2 = *(v1 + 96);
  }

  *(v1 + 96) = v2 + 1;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

- (void)processNextItemIfNecessary
{
  v3 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueProcessing];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(VKImageAnalyzerInProcessMadInterface *)self idsToRequests];
      v8 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
      v9 = [v8 firstObject];
      v11 = [v7 objectForKeyedSubscript:v9];

      v10 = v11;
      if (!v11)
      {
        [VKAssert handleFailedAssertWithCondition:"((request) != nil)" functionName:"[VKImageAnalyzerInProcessMadInterface processNextItemIfNecessary]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "request"];
        v10 = 0;
      }

      [(VKImageAnalyzerInProcessMadInterface *)self _processRequest:v10];
    }
  }
}

- (unint64_t)statusForRequestID:(int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 3;
  v5 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VKImageAnalyzerInProcessMadInterface_statusForRequestID___block_invoke;
  block[3] = &unk_1E7BE6278;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __59__VKImageAnalyzerInProcessMadInterface_statusForRequestID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _statusForRequestID:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)cancelRequestID:(int)a3
{
  v5 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VKImageAnalyzerInProcessMadInterface_cancelRequestID___block_invoke;
  v6[3] = &unk_1E7BE62A0;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __56__VKImageAnalyzerInProcessMadInterface_cancelRequestID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsToRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) _cancelRequest:v5];
    v4 = v5;
  }
}

- (void)cancelAllRequests
{
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all requests", buf, 2u);
  }

  v4 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke;
  block[3] = &unk_1E7BE4208;
  block[4] = self;
  dispatch_async(v4, block);
}

void __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tempMadRequestQueueWaiting];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke_2;
  v5[3] = &unk_1E7BE62C8;
  v5[4] = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = [*(a1 + 32) tempMadRequestQueueProcessing];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke_3;
  v4[3] = &unk_1E7BE62C8;
  v4[4] = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

uint64_t __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntValue];

  return [v2 cancelRequestID:v3];
}

uint64_t __57__VKImageAnalyzerInProcessMadInterface_cancelAllRequests__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 unsignedIntValue];

  return [v2 cancelRequestID:v3];
}

- (void)_cancelRequest:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 setCancelled:1];
  v5 = -[VKImageAnalyzerInProcessMadInterface _statusForRequestID:](self, "_statusForRequestID:", [v4 requestID]);
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling Request: %@", &v9, 0xCu);
  }

  if (v5)
  {
    if (v5 == 1)
    {
      [v4 setCancelled:1];
      [(VKImageAnalyzerInProcessMadInterface *)self removeAndNotifyOfCancelledRequest:v4];
    }
  }

  else
  {
    v7 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueCancelling];
    v8 = [v4 requestIDValue];
    [v7 addObject:v8];
  }
}

- (void)removeAndNotifyOfCancelledRequest:(id)a3
{
  v7 = a3;
  [(VKImageAnalyzerInProcessMadInterface *)self clearCompletedRequest:v7];
  v4 = [v7 completionHandler];

  if (v4)
  {
    v5 = [v7 completionHandler];
    v6 = [(VKImageAnalyzerInProcessMadInterface *)self cancelledError];
    (v5)[2](v5, 0, 0, v6);
  }
}

- (unint64_t)_statusForRequestID:(int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  v5 = [(VKImageAnalyzerInProcessMadInterface *)self idsToRequests];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueProcessing];
    v8 = [v7 containsObject:v4];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
      v11 = [v10 containsObject:v4];

      if (v11)
      {
        v9 = 1;
      }

      else
      {
        v12 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueCancelling];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

- (void)clearCompletedRequest:(id)a3
{
  v8 = [a3 requestIDValue];
  v4 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueProcessing];
  [v4 removeObject:v8];

  v5 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueCancelling];
  [v5 removeObject:v8];

  v6 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
  [v6 removeObject:v8];

  v7 = [(VKImageAnalyzerInProcessMadInterface *)self idsToRequests];
  [v7 removeObjectForKey:v8];
}

- (id)cancelledError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [(VKImageAnalyzerInProcessMadInterface *)self errorDomain];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = @"Request Cancelled";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 initWithDomain:v4 code:-2 userInfo:v5];

  return v6;
}

- (void)addRequestForProcessing:(id)a3
{
  v4 = a3;
  v5 = [(VKImageAnalyzerInProcessMadInterface *)self idsToRequests];
  v6 = [v4 requestIDValue];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
  v8 = [v4 requestIDValue];

  [v7 addObject:v8];

  [(VKImageAnalyzerInProcessMadInterface *)self processNextItemIfNecessary];
}

- (void)request:(id)a3 didCompleteWithAnalysis:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "Request completed: %@", &v14, 0xCu);
  }

  [(VKImageAnalyzerInProcessMadInterface *)self clearCompletedRequest:v8];
  v12 = [v8 completionHandler];

  if (v12)
  {
    v13 = [v8 completionHandler];
    (v13)[2](v13, v9, 0, v10);
  }

  [(VKImageAnalyzerInProcessMadInterface *)self processNextItemIfNecessary];
}

- (void)_processRequest:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 requestIDValue];
  v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1B4335000, v6, OS_LOG_TYPE_DEFAULT, "Processing Request: %@", buf, 0xCu);
  }

  v7 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueWaiting];
  [v7 removeObject:v5];

  v8 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadRequestQueueProcessing];
  [v8 addObject:v5];

  v9 = [(VKImageAnalyzerInProcessMadInterface *)self tempMadProcessingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__VKImageAnalyzerInProcessMadInterface__processRequest___block_invoke;
  v11[3] = &unk_1E7BE4768;
  v12 = v4;
  v13 = self;
  v10 = v4;
  dispatch_async(v9, v11);
}

void __56__VKImageAnalyzerInProcessMadInterface__processRequest___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  [*(a1 + 32) imageSize];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E6984628]);
  v8 = [*v2 locales];
  if ([v8 count])
  {
    [*v2 locales];
  }

  else
  {
    [MEMORY[0x1E695DF58] preferredLanguages];
  }
  v9 = ;

  [v7 setRecognitionLanguages:v9];
  [v7 setMaximumCandidateCount:3];
  [v7 setUsesLanguageDetection:1];
  v10 = [*v2 createVNRequestHandler];
  if (!v10)
  {
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[VKImageAnalyzerInProcessMadInterface _processRequest:]_block_invoke" simulateCrash:0 showAlert:0 format:@"Unable to create handler from request %@", *(a1 + 32)];
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = [*(a1 + 40) errorDomain];
    v27 = *MEMORY[0x1E695E620];
    v28[0] = @"Unable to create request handler";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v17 = [v18 initWithDomain:v15 code:-3 userInfo:v16];
LABEL_10:
    v19 = 0;
    goto LABEL_16;
  }

  v26 = v7;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v25 = 0;
  [v10 performRequests:v11 error:&v25];
  v12 = v25;

  if (v12)
  {
    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __56__VKImageAnalyzerInProcessMadInterface__processRequest___block_invoke_cold_1(v12, v2, v13);
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = [*(a1 + 40) errorDomain];
    v16 = [v12 userInfo];
    v17 = [v14 initWithDomain:v15 code:2 userInfo:v16];

    goto LABEL_10;
  }

  if (([*v2 analysisTypes] & 4) != 0 || (objc_msgSend(*v2, "analysisTypes") & 8) != 0)
  {
    v20 = [*(a1 + 32) image];
    v21 = *(a1 + 40);
    v22 = [v20 vk_cgImage];
    v23 = [*(a1 + 32) processedBarcodeSymbologies];
    v15 = [v21 mrcElementsFromImage:v22 symbologies:v23];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v24 = [v7 results];
  v16 = [v24 firstObject];

  v19 = [[VKCImageAnalysisResult alloc] initWithDocumentObservation:v16 mrcDataDetectors:v15 imageSize:v4, v6];
  v17 = 0;
LABEL_16:

  [(VKCImageAnalysisResult *)v19 setRequest:*(a1 + 32)];
  [*(a1 + 40) didFinishRequest:*(a1 + 32) withAnalysisResult:v19 error:v17];
}

- (void)didFinishRequest:(id)a3 withAnalysisResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__19;
  v21[4] = __Block_byref_object_dispose__19;
  v10 = a5;
  v22 = v10;
  if (v9)
  {
    v11 = [(VKImageAnalysis *)[VKCImageAnalysis alloc] initWithAnalysisResult:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VKImageAnalyzerInProcessMadInterface *)self housekeepingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VKImageAnalyzerInProcessMadInterface_didFinishRequest_withAnalysisResult_error___block_invoke;
  block[3] = &unk_1E7BE6428;
  block[4] = self;
  v17 = v8;
  v19 = v10;
  v20 = v21;
  v18 = v11;
  v13 = v10;
  v14 = v11;
  v15 = v8;
  dispatch_async(v12, block);

  _Block_object_dispose(v21, 8);
}

void __82__VKImageAnalyzerInProcessMadInterface_didFinishRequest_withAnalysisResult_error___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) tempMadRequestQueueCancelling];
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
  [*(a1 + 32) request:*(a1 + 40) didCompleteWithAnalysis:*(a1 + 48) error:*(a1 + 56)];
}

- (id)mrcElementsFromImage:(CGImage *)a3 symbologies:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69844A0];
  v6 = a4;
  v7 = [[v5 alloc] initWithCompletionHandler:0];
  [v7 setSymbologies:v6];

  v8 = objc_alloc(MEMORY[0x1E69845B8]);
  v9 = [v8 initWithCGImage:a3 options:MEMORY[0x1E695E0F8]];
  v24[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v9 performRequests:v10 error:0];

  v11 = [v7 results];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] now];
    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134217984;
      v21 = [v11 count];
      _os_log_impl(&dword_1B4335000, v13, OS_LOG_TYPE_DEFAULT, "Beginning MRC Parsing with %lu elements", &v20, 0xCu);
    }

    v14 = [v11 vk_compactMap:&__block_literal_global_189_0];
    v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:v12];
      v20 = 134218240;
      v21 = v16;
      v22 = 2048;
      v23 = v18;
      _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, "Completed MRC Parsing of %lu elements in %f seconds.", &v20, 0x16u);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __56__VKImageAnalyzerInProcessMadInterface__processRequest___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1B4335000, log, OS_LOG_TYPE_ERROR, "Error processing text result image: %@ request: %@", &v4, 0x16u);
}

@end