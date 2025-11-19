@interface PXVisualIntelligenceManager
+ (BOOL)canRequestVKImageAnalysisForAsset:(id)a3;
+ (CGSize)_sizeToPreheatResourcesForSubjectExtractionOfAsset:(id)a3;
+ (PXVisualIntelligenceManager)sharedManager;
+ (id)new;
+ (int)preheatResourcesForSubjectExtractionOfAsset:(id)a3;
+ (unint64_t)supportedAnalysisTypes;
- (PXVisualIntelligenceManager)init;
- (VKCImageAnalyzer)vkAnalyzer;
- (id)_init;
- (int)requestVKImageAnalysisForAsset:(id)a3 cgImage:(CGImage *)a4 orientation:(int64_t)a5 resultHandler:(id)a6;
- (int)requestVKImageAnalysisForAsset:(id)a3 image:(id)a4 resultHandler:(id)a5;
- (int)requestVKImageAnalysisForAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(int64_t)a5 resultHandler:(id)a6;
- (int)requestVKImageAnalysisForAsset:(id)a3 resultHandler:(id)a4;
- (void)_dispatchNextRequest;
- (void)_logAnalysis:(id)a3 request:(id)a4 duration:(double)a5 error:(id)a6;
- (void)_processAnalysis:(id)a3 withRequest:(id)a4 error:(id)a5;
- (void)_resetCurrentRequestAndDispatchNextRequest;
- (void)cancelRequestByID:(int)a3;
- (void)setAnalysisSuspended:(BOOL)a3;
@end

@implementation PXVisualIntelligenceManager

- (void)_logAnalysis:(id)a3 request:(id)a4 duration:(double)a5 error:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (v11)
  {
    v12 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "requestID")}];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "vkRequestID")}];
      v15 = [v10 asset];
      v16 = [v15 uuid];
      *buf = 138413058;
      v40 = v13;
      v41 = 2112;
      v42 = v14;
      v43 = 2112;
      v44 = *&v16;
      v45 = 2112;
      v46 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "VK analyzing: requestID (PX: %@, VK: %@) failed (asset_uuid = %@): %@", buf, 0x2Au);
    }
  }

  if (v9)
  {
    v17 = [v9 hasResultsForAnalysisTypes:1];
    v18 = [v9 hasResultsForAnalysisTypes:2];
    v19 = [v9 hasResultsForAnalysisTypes:4];
    v20 = [v9 hasResultsForAnalysisTypes:8];
    v21 = [v9 hasResultsForAnalysisTypes:16];
    v22 = [v9 countOfDataDetectorsWithTypes:-1];
    v23 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v37 = v17;
      v38 = v18;
      [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "requestID")}];
      v36 = v20;
      v25 = v24 = v19;
      v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "vkRequestID")}];
      v27 = [v10 asset];
      v28 = [v27 uuid];
      v29 = v22;
      v30 = v28;
      *buf = 138414594;
      v31 = @"NO";
      v40 = v25;
      if (v37)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      if (v38)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      if (v24)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      if (v36)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v41 = 2112;
      v42 = v26;
      if (v21)
      {
        v31 = @"YES";
      }

      v43 = 2048;
      v44 = a5;
      v45 = 2112;
      v46 = v28;
      v47 = 2112;
      v48 = v32;
      v49 = 2112;
      v50 = v33;
      v51 = 2112;
      v52 = v34;
      v53 = 2112;
      v54 = v35;
      v55 = 2112;
      v56 = v31;
      v57 = 2048;
      v58 = v29;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_INFO, "VK analyzing: requestID (PX: %@, VK: %@) finished in %fs, asset_uuid = %@, (texts: %@, DD: %@, MRC: %@, AppClip: %@, VisualSearch: %@) Data Detectors: %ld", buf, 0x66u);
    }
  }
}

- (void)_resetCurrentRequestAndDispatchNextRequest
{
  [(PXVisualIntelligenceManager *)self setCurrentRequest:0];

  [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
}

- (void)_processAnalysis:(id)a3 withRequest:(id)a4 error:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v11 = [v8 resultHandler];
    v10 = [v8 requestID];

    v11[2](v11, v10, v9, v7);
  }
}

- (void)_dispatchNextRequest
{
  if (![(PXVisualIntelligenceManager *)self analysisSuspended])
  {
    objc_initWeak(&location, self);
    v3 = [(PXVisualIntelligenceManager *)self workingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXVisualIntelligenceManager__dispatchNextRequest__block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v5, &location);
    block[4] = self;
    dispatch_async(v3, block);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__PXVisualIntelligenceManager__dispatchNextRequest__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentRequest];

  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 requests];
    v6 = [v5 lastObject];

    if (v6)
    {
      v7 = objc_loadWeakRetained((a1 + 40));
      [v7 setCurrentRequest:v6];

      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 requests];
      [v9 removeObject:v6];

      v10 = [v6 vkImageRequest];
      if (v10)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v12 = [MEMORY[0x1E6991F28] startSignpost];
        v13 = [*(a1 + 32) vkAnalyzer];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __51__PXVisualIntelligenceManager__dispatchNextRequest__block_invoke_2;
        v21[3] = &unk_1E773C490;
        v24[1] = *&Current;
        v14 = v6;
        v24[2] = v12;
        v15 = *(a1 + 32);
        v22 = v14;
        v23 = v15;
        objc_copyWeak(v24, (a1 + 40));
        [v14 setVkRequestID:{objc_msgSend(v13, "processRequest:progressHandler:completionHandler:", v10, 0, v21)}];

        v16 = PLVisualIntelligenceGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "requestID")}];
          v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "vkRequestID")}];
          *buf = 138412546;
          v26 = v17;
          v27 = 2112;
          v28 = v18;
          _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_INFO, "VK analyzing: request sent to VKC, requestID (PX: %@, VK: %@)", buf, 0x16u);
        }

        objc_destroyWeak(v24);
        v19 = v22;
      }

      else
      {
        v20 = PLVisualIntelligenceGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "VK analyzing: Failed to generate VK image analyze request", buf, 2u);
        }

        v19 = objc_loadWeakRetained((a1 + 40));
        [v19 _resetCurrentRequestAndDispatchNextRequest];
      }
    }
  }
}

void __51__PXVisualIntelligenceManager__dispatchNextRequest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  [v8 setObject:@"com.apple.photos.CPAnalytics.visualIntelligenceAnalysisRequested" forKeyedSubscript:*MEMORY[0x1E6991E40]];
  v9 = [*(a1 + 32) asset];
  [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6991E18]];

  [MEMORY[0x1E6991F28] endSignpost:*(a1 + 64) forEventName:*MEMORY[0x1E6991C98] withPayload:v8];
  [*(a1 + 40) _logAnalysis:v5 request:*(a1 + 32) duration:v6 error:v7];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained currentRequest];
  v12 = [v11 requestID];
  v13 = [*(a1 + 32) requestID];

  if (v12 == v13)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    [v14 _processAnalysis:v5 withRequest:*(a1 + 32) error:v6];

    v15 = objc_loadWeakRetained((a1 + 48));
    [v15 _resetCurrentRequestAndDispatchNextRequest];
  }

  else if (!v6)
  {
    v16 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "requestID")}];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "vkRequestID")}];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "VK analyzing: requestID (PX: %@, VK: %@), VKC delivers analysis without cancel or error, but no longer needed. Needs to check cancelling or dispatching system", &v19, 0x16u);
    }
  }
}

- (void)setAnalysisSuspended:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_analysisSuspended != a3)
  {
    v3 = a3;
    self->_analysisSuspended = a3;
    v5 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "VK analyzing: analyzing suspend (%@)", buf, 0xCu);
    }

    if (v3)
    {
      v7 = [(PXVisualIntelligenceManager *)self currentRequest];
      v8 = v7;
      if (v7)
      {
        -[PXVisualIntelligenceManager cancelRequestByID:](self, "cancelRequestByID:", [v7 requestID]);
        objc_initWeak(buf, self);
        v9 = [(PXVisualIntelligenceManager *)self workingQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __52__PXVisualIntelligenceManager_setAnalysisSuspended___block_invoke;
        v10[3] = &unk_1E774B248;
        objc_copyWeak(&v12, buf);
        v11 = v8;
        dispatch_async(v9, v10);

        objc_destroyWeak(&v12);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
    }
  }
}

void __52__PXVisualIntelligenceManager_setAnalysisSuspended___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained requests];
  [v2 addObject:*(a1 + 32)];
}

- (void)cancelRequestByID:(int)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    v5 = [(PXVisualIntelligenceManager *)self workingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PXVisualIntelligenceManager_cancelRequestByID___block_invoke;
    block[3] = &unk_1E773C440;
    objc_copyWeak(&v7, &location);
    v8 = a3;
    dispatch_async(v5, block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __49__PXVisualIntelligenceManager_cancelRequestByID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained requests];

  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 requestID] == *(a1 + 40))
        {
          v9 = objc_loadWeakRetained((a1 + 32));
          v10 = [v9 requests];
          [v10 removeObject:v8];

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 currentRequest];

  if ([v12 requestID] == *(a1 + 40))
  {
    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 vkAnalyzer];
    [v14 cancelRequestID:{objc_msgSend(v12, "vkRequestID")}];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 _resetCurrentRequestAndDispatchNextRequest];

    v16 = PLVisualIntelligenceGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "vkRequestID")}];
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_INFO, "VK analyzing: executing in VKC, cancelRequestID(PX: %@, VK: %@)", buf, 0x16u);
    }
  }
}

- (int)requestVKImageAnalysisForAsset:(id)a3 cgImage:(CGImage *)a4 orientation:(int64_t)a5 resultHandler:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__135399;
  v27[4] = __Block_byref_object_dispose__135400;
  v28 = 0;
  CGImageRetain(a4);
  v12 = [(PXVisualIntelligenceManager *)self workingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_cgImage_orientation_resultHandler___block_invoke;
  block[3] = &unk_1E773C418;
  v23 = &v29;
  block[4] = self;
  v24 = v27;
  v13 = v10;
  v21 = v13;
  v25 = a4;
  v26 = a5;
  v14 = v11;
  v22 = v14;
  dispatch_sync(v12, block);

  CGImageRelease(a4);
  v15 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v13 uuid];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:*(v30 + 6)];
    *buf = 138412546;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "VK analyzing: requested and request added in queue, NOT sent to VKC yet, (asset_uuid = %@), requestID: %@", buf, 0x16u);
  }

  [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
  v18 = *(v30 + 6);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

void __96__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_cgImage_orientation_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 nextRequestID];
  [v2 setNextRequestID:(v3 + 1)];
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = [[_PXVisualIntelligenceRequest alloc] initWithAsset:*(a1 + 40) cgImage:*(a1 + 72) orientation:*(a1 + 80) requestID:*(*(*(a1 + 56) + 8) + 24) resultHandler:*(a1 + 48)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) requests];
  [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (int)requestVKImageAnalysisForAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(int64_t)a5 resultHandler:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__135399;
  v27[4] = __Block_byref_object_dispose__135400;
  v28 = 0;
  CVPixelBufferRetain(a4);
  v12 = [(PXVisualIntelligenceManager *)self workingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_pixelBuffer_orientation_resultHandler___block_invoke;
  block[3] = &unk_1E773C418;
  v23 = &v29;
  block[4] = self;
  v24 = v27;
  v13 = v10;
  v21 = v13;
  v25 = a4;
  v26 = a5;
  v14 = v11;
  v22 = v14;
  dispatch_sync(v12, block);

  CVPixelBufferRelease(a4);
  v15 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v13 uuid];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:*(v30 + 6)];
    *buf = 138412546;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "VK analyzing: requested and request added in queue, NOT sent to VKC yet, (asset_uuid = %@), requestID: %@", buf, 0x16u);
  }

  [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
  v18 = *(v30 + 6);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

void __100__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_pixelBuffer_orientation_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 nextRequestID];
  [v2 setNextRequestID:(v3 + 1)];
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = [[_PXVisualIntelligenceRequest alloc] initWithAsset:*(a1 + 40) pixelBuffer:*(a1 + 72) orientation:*(a1 + 80) requestID:*(*(*(a1 + 56) + 8) + 24) resultHandler:*(a1 + 48)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) requests];
  [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (int)requestVKImageAnalysisForAsset:(id)a3 image:(id)a4 resultHandler:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__135399;
  v30[4] = __Block_byref_object_dispose__135400;
  v31 = 0;
  v11 = [(PXVisualIntelligenceManager *)self workingQueue];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __82__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_image_resultHandler___block_invoke;
  v23 = &unk_1E773C3F0;
  v28 = &v32;
  v29 = v30;
  v24 = self;
  v12 = v8;
  v25 = v12;
  v13 = v9;
  v26 = v13;
  v14 = v10;
  v27 = v14;
  dispatch_sync(v11, &v20);

  v15 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v12 uuid];
    v17 = [MEMORY[0x1E696AD98] numberWithInt:*(v33 + 6)];
    *buf = 138412546;
    v37 = v16;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "VK analyzing: requested and request added in queue, NOT sent to VKC yet, (asset_uuid = %@), requestID: %@", buf, 0x16u);
  }

  [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
  v18 = *(v33 + 6);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  return v18;
}

void __82__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_image_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 nextRequestID];
  [v2 setNextRequestID:(v3 + 1)];
  *(*(*(a1 + 64) + 8) + 24) = v3;
  v4 = [[_PXVisualIntelligenceRequest alloc] initWithAsset:*(a1 + 40) image:*(a1 + 48) requestID:*(*(*(a1 + 64) + 8) + 24) resultHandler:*(a1 + 56)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) requests];
  [v7 addObject:*(*(*(a1 + 72) + 8) + 40)];
}

- (int)requestVKImageAnalysisForAsset:(id)a3 resultHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__135399;
  v21[4] = __Block_byref_object_dispose__135400;
  v22 = 0;
  v8 = [(PXVisualIntelligenceManager *)self workingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_resultHandler___block_invoke;
  block[3] = &unk_1E773C3C8;
  v19 = &v23;
  v20 = v21;
  block[4] = self;
  v9 = v6;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  dispatch_sync(v8, block);

  v11 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v9 uuid];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:*(v24 + 6)];
    *buf = 138412546;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "VK analyzing: requested and request added in queue, NOT sent to VKC yet, (asset_uuid = %@), requestID: %@", buf, 0x16u);
  }

  [(PXVisualIntelligenceManager *)self _dispatchNextRequest];
  v14 = *(v24 + 6);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);

  return v14;
}

void __76__PXVisualIntelligenceManager_requestVKImageAnalysisForAsset_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 nextRequestID];
  [v2 setNextRequestID:(v3 + 1)];
  *(*(*(a1 + 56) + 8) + 24) = v3;
  v4 = [[_PXVisualIntelligenceRequest alloc] initWithAsset:*(a1 + 40) requestID:*(*(*(a1 + 56) + 8) + 24) resultHandler:*(a1 + 48)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) requests];
  [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
}

- (VKCImageAnalyzer)vkAnalyzer
{
  vkAnalyzer = self->_vkAnalyzer;
  if (!vkAnalyzer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DF9F0]);
    v5 = self->_vkAnalyzer;
    self->_vkAnalyzer = v4;

    v6 = [(PXVisualIntelligenceManager *)self workingQueue];
    [(VKCImageAnalyzer *)self->_vkAnalyzer setCallbackQueue:v6];

    vkAnalyzer = self->_vkAnalyzer;
  }

  return vkAnalyzer;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = PXVisualIntelligenceManager;
  v2 = [(PXVisualIntelligenceManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.photos.vi_workingQueue", v3);
    workingQueue = v2->_workingQueue;
    v2->_workingQueue = v4;

    v2->_nextRequestID = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    requests = v2->_requests;
    v2->_requests = v6;
  }

  return v2;
}

- (PXVisualIntelligenceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXVisualIntelligenceManager.m" lineNumber:317 description:{@"%s is not available as initializer", "-[PXVisualIntelligenceManager init]"}];

  abort();
}

+ (CGSize)_sizeToPreheatResourcesForSubjectExtractionOfAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 pixelWidth];
  v5 = [v3 pixelHeight];

  v6 = v5;
  if (1.0 - v5 <= 0.00000011920929 && 1.0 - v4 <= 0.00000011920929)
  {
    v8 = v4 * v6;
    v9 = 11500000.0 / (v4 * v6);
    v10 = sqrtf(v9);
    if (v10 < 1.0)
    {
      v11 = v10;
      v4 = floor(v4 * v11);
      v6 = floor(v6 * v11);
      v8 = v6 * v4;
    }

    if (v8 > 11500000.0)
    {
      PXAssertGetLog();
    }
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = v4;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (int)preheatResourcesForSubjectExtractionOfAsset:(id)a3
{
  v4 = a3;
  if (![a1 canRequestVKImageAnalysisForAsset:v4])
  {
    goto LABEL_5;
  }

  if (preheatResourcesForSubjectExtractionOfAsset__onceToken != -1)
  {
    dispatch_once(&preheatResourcesForSubjectExtractionOfAsset__onceToken, &__block_literal_global_130);
  }

  v5 = [v4 uuid];
  v6 = [v5 isEqualToString:preheatResourcesForSubjectExtractionOfAsset__lastRequestedAssetUUID];

  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x1E6978860] defaultManager];
    v9 = v8;
    if (preheatResourcesForSubjectExtractionOfAsset__lastRequestID)
    {
      [v8 cancelImageRequest:?];
    }

    [a1 _sizeToPreheatResourcesForSubjectExtractionOfAsset:v4];
    v11 = v10;
    v13 = v12;
    Current = CFAbsoluteTimeGetCurrent();
    v15 = preheatResourcesForSubjectExtractionOfAsset__options;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __75__PXVisualIntelligenceManager_preheatResourcesForSubjectExtractionOfAsset___block_invoke_2;
    v23 = &unk_1E773C468;
    v16 = v4;
    v24 = v16;
    v25 = v11;
    v26 = v13;
    v27 = Current;
    v7 = [v9 requestImageForAsset:v16 targetSize:0 contentMode:v15 options:&v20 resultHandler:{v11, v13}];
    preheatResourcesForSubjectExtractionOfAsset__lastRequestID = v7;
    v17 = [v16 uuid];
    v18 = preheatResourcesForSubjectExtractionOfAsset__lastRequestedAssetUUID;
    preheatResourcesForSubjectExtractionOfAsset__lastRequestedAssetUUID = v17;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

void __75__PXVisualIntelligenceManager_preheatResourcesForSubjectExtractionOfAsset___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  preheatResourcesForSubjectExtractionOfAsset__lastRequestID = 0;
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978E20]];
  v5 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) uuid];
    v7 = NSStringFromCGSize(*(a1 + 40));
    v8 = [*(a1 + 32) pixelWidth];
    v23.height = [*(a1 + 32) pixelHeight];
    v23.width = v8;
    v9 = NSStringFromCGSize(v23);
    v10 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v11 = [v4 path];
    v12 = 138544387;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v16 = 2114;
    v17 = v9;
    v18 = 2050;
    v19 = v10;
    v20 = 2113;
    v21 = v11;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "VK analyzing: got preheat higher res image for asset_uuid (%{public}@), targetSize: %{public}@, originalSize: %{public}@, return in %{public}.3fs, fileURL: %{private}@", &v12, 0x34u);
  }
}

uint64_t __75__PXVisualIntelligenceManager_preheatResourcesForSubjectExtractionOfAsset___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6978868]);
  v1 = preheatResourcesForSubjectExtractionOfAsset__options;
  preheatResourcesForSubjectExtractionOfAsset__options = v0;

  [preheatResourcesForSubjectExtractionOfAsset__options setLoadingMode:0x10000];
  [preheatResourcesForSubjectExtractionOfAsset__options setDeliveryMode:1];
  v2 = preheatResourcesForSubjectExtractionOfAsset__options;

  return [v2 setNetworkAccessAllowed:1];
}

+ (BOOL)canRequestVKImageAnalysisForAsset:(id)a3
{
  v4 = a3;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 supportedAnalysisTypes];
  v7 = 0;
  if (v5 && v6)
  {
    if (([v5 needsSensitivityProtection] & 1) != 0 || objc_msgSend(v5, "mediaType") != 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v5 playbackStyle];
      v9 = [v5 playbackStyle];
      [v5 deferredProcessingNeeded];
      v10 = PHAssetDeferredProcessingInvalidatesContentWhenCompleted();
      v12 = v8 != 2 && v9 != 5;
      v7 = v12 & (v10 ^ 1);
    }
  }

  return v7;
}

+ (unint64_t)supportedAnalysisTypes
{
  if (supportedAnalysisTypes_onceToken != -1)
  {
    dispatch_once(&supportedAnalysisTypes_onceToken, &__block_literal_global_119);
  }

  return supportedAnalysisTypes_supportedAnalysisTypes;
}

uint64_t __53__PXVisualIntelligenceManager_supportedAnalysisTypes__block_invoke()
{
  result = [MEMORY[0x1E69DF9F0] supportedAnalysisTypes];
  supportedAnalysisTypes_supportedAnalysisTypes = result;
  return result;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXVisualIntelligenceManager.m" lineNumber:321 description:{@"%s is not available as initializer", "+[PXVisualIntelligenceManager new]"}];

  abort();
}

+ (PXVisualIntelligenceManager)sharedManager
{
  os_unfair_lock_lock(&sharedManager_lock);
  WeakRetained = objc_loadWeakRetained(&sharedManager_weakManager);
  if (!WeakRetained)
  {
    WeakRetained = [[PXVisualIntelligenceManager alloc] _init];
    objc_storeWeak(&sharedManager_weakManager, WeakRetained);
  }

  os_unfair_lock_unlock(&sharedManager_lock);

  return WeakRetained;
}

@end