@interface XBApplicationSnapshotImageGenerator
- (BOOL)_generate_lock_shouldGenerateForSnapshot:(id)snapshot reason:(id *)reason;
- (BOOL)_shouldGenerateForSnapshot:(id)snapshot reason:(id *)reason;
- (XBApplicationSnapshotImageGenerator)initWithScheduler:(id)scheduler snapshot:(id)snapshot dataProvider:(id)provider imageDataRequest:(int64_t)request loggingPrefix:(id)prefix imageGenerationHandler:(id)handler imageDataGenerationHandler:(id)generationHandler;
- (id)_generate_imageFromLegacyDataProvider:(id)provider forSnapshot:(id)snapshot imageDataHandler:(id)handler;
- (id)_generate_imageFromNewDataProvider:(id)provider forSnapshot:(id)snapshot imageDataHandler:(id)handler;
- (void)_generate;
- (void)_performImageDataGeneration:(id)generation withHandler:(id)handler;
- (void)generate;
- (void)scheduleGeneration;
@end

@implementation XBApplicationSnapshotImageGenerator

- (XBApplicationSnapshotImageGenerator)initWithScheduler:(id)scheduler snapshot:(id)snapshot dataProvider:(id)provider imageDataRequest:(int64_t)request loggingPrefix:(id)prefix imageGenerationHandler:(id)handler imageDataGenerationHandler:(id)generationHandler
{
  schedulerCopy = scheduler;
  snapshotCopy = snapshot;
  providerCopy = provider;
  prefixCopy = prefix;
  handlerCopy = handler;
  generationHandlerCopy = generationHandler;
  if (schedulerCopy)
  {
    if (snapshotCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
    if (snapshotCopy)
    {
      goto LABEL_3;
    }
  }

  [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
LABEL_3:
  groupID = [snapshotCopy groupID];

  if (groupID)
  {
    if (providerCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
    if (providerCopy)
    {
      goto LABEL_5;
    }
  }

  [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
LABEL_5:
  context = [providerCopy context];

  if (!context)
  {
    [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
  }

  v36.receiver = self;
  v36.super_class = XBApplicationSnapshotImageGenerator;
  v23 = [(XBApplicationSnapshotImageGenerator *)&v36 init];
  v24 = v23;
  if (v23)
  {
    v23->_generate_handled_request = 0;
    v23->_generate_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v23->_weak_snapshot, snapshotCopy);
    objc_storeStrong(&v24->_scheduler, scheduler);
    objc_storeStrong(&v24->_dataProvider, provider);
    if (objc_opt_respondsToSelector())
    {
      v24->_dataProviderFetchType = 0;
    }

    else if (objc_opt_respondsToSelector())
    {
      v24->_dataProviderFetchType = 1;
    }

    else if (objc_opt_respondsToSelector())
    {
      v24->_dataProviderFetchType = 2;
      v25 = XBLogCapture();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [XBApplicationSnapshotImageGenerator initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:];
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v24 file:@"XBApplicationSnapshotImageGenerator.m" lineNumber:93 description:{@"%@ XBSnapshotDataProvider %@ doesn't implement fetch* method", v24->_loggingPrefix, providerCopy}];
    }

    v24->_imageDataRequest = request;
    v27 = [handlerCopy copy];
    didGenerateImageHandler = v24->_didGenerateImageHandler;
    v24->_didGenerateImageHandler = v27;

    v29 = [generationHandlerCopy copy];
    didGenerateImageDataHandler = v24->_didGenerateImageDataHandler;
    v24->_didGenerateImageDataHandler = v29;

    v31 = [prefixCopy copy];
    loggingPrefix = v24->_loggingPrefix;
    v24->_loggingPrefix = v31;
  }

  return v24;
}

- (void)scheduleGeneration
{
  v22 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_26B5EF000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v3, &state);

  WeakRetained = objc_loadWeakRetained(&self->_weak_snapshot);
  v16 = 0;
  v5 = [(XBApplicationSnapshotImageGenerator *)self _shouldGenerateForSnapshot:WeakRetained reason:&v16];
  v6 = v16;
  if (v5)
  {
    v7 = XBLogCapture();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      loggingPrefix = self->_loggingPrefix;
      *buf = 138543618;
      v19 = loggingPrefix;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_INFO, "[%{public}@] scheduling asynchronous request to generate image because: %{public}@", buf, 0x16u);
    }

    scheduler = self->_scheduler;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__XBApplicationSnapshotImageGenerator_scheduleGeneration__block_invoke_29;
    v13[3] = &unk_279CF9280;
    v13[4] = self;
    [(XBApplicationSnapshotImageGenerationScheduling *)scheduler performImageGenerationAsync:v13];
  }

  else
  {
    v10 = XBLogCapture();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = self->_loggingPrefix;
      *buf = 138543618;
      v19 = v11;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_26B5EF000, v10, OS_LOG_TYPE_INFO, "[%{public}@] ignoring asynchronous request to generate image because: %{public}@", buf, 0x16u);
    }

    if (self->_didGenerateImageHandler)
    {
      v12 = self->_scheduler;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __57__XBApplicationSnapshotImageGenerator_scheduleGeneration__block_invoke;
      v15[3] = &unk_279CF9280;
      v15[4] = self;
      [(XBApplicationSnapshotImageGenerationScheduling *)v12 performImageGenerationAsync:v15];
    }

    if (self->_didGenerateImageDataHandler)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __57__XBApplicationSnapshotImageGenerator_scheduleGeneration__block_invoke_2;
      v14[3] = &unk_279CF9280;
      v14[4] = self;
      [(XBApplicationSnapshotImageGenerator *)self _performImageDataGeneration:0 withHandler:v14];
    }
  }

  os_activity_scope_leave(&state);
}

- (void)generate
{
  v25 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_26B5EF000, "XBCapture", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v3, &state);

  WeakRetained = objc_loadWeakRetained(&self->_weak_snapshot);
  v17 = 0;
  v5 = [(XBApplicationSnapshotImageGenerator *)self _shouldGenerateForSnapshot:WeakRetained reason:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = XBLogCapture();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      loggingPrefix = self->_loggingPrefix;
      logIdentifier = [WeakRetained logIdentifier];
      *buf = 138543874;
      v20 = loggingPrefix;
      v21 = 2114;
      v22 = logIdentifier;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&dword_26B5EF000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] CALLED IMAGE GENERATOR FOR %{public}@. This should be considered a last resort, and will likely result in significant blocking of the calling thread! reason: %{public}@", buf, 0x20u);
    }

    scheduler = self->_scheduler;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__XBApplicationSnapshotImageGenerator_generate__block_invoke_30;
    v14[3] = &unk_279CF9280;
    v14[4] = self;
    [(XBApplicationSnapshotImageGenerationScheduling *)scheduler performImageGenerationAsyncAndWait:v14];
  }

  else
  {
    v9 = XBLogCapture();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_loggingPrefix;
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_26B5EF000, v9, OS_LOG_TYPE_INFO, "[%{public}@] ignoring synchronous request to generate image because: %{public}@", buf, 0x16u);
    }

    if (self->_didGenerateImageHandler)
    {
      v11 = self->_scheduler;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __47__XBApplicationSnapshotImageGenerator_generate__block_invoke;
      v16[3] = &unk_279CF9280;
      v16[4] = self;
      [(XBApplicationSnapshotImageGenerationScheduling *)v11 performImageGenerationAsyncAndWait:v16];
    }

    if (self->_didGenerateImageDataHandler)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__XBApplicationSnapshotImageGenerator_generate__block_invoke_2;
      v15[3] = &unk_279CF9280;
      v15[4] = self;
      [(XBApplicationSnapshotImageGenerator *)self _performImageDataGeneration:0 withHandler:v15];
    }
  }

  os_activity_scope_leave(&state);
}

uint64_t __47__XBApplicationSnapshotImageGenerator_generate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_performImageDataGeneration:(id)generation withHandler:(id)handler
{
  imageDataRequest = self->_imageDataRequest;
  scheduler = self->_scheduler;
  if (imageDataRequest == 2)
  {
    [(XBApplicationSnapshotImageGenerationScheduling *)scheduler performImageDataGenerationAsync:generation withHandler:handler];
  }

  else
  {
    [(XBApplicationSnapshotImageGenerationScheduling *)scheduler performImageDataGenerationAsyncAndWait:generation withHandler:handler];
  }
}

- (BOOL)_shouldGenerateForSnapshot:(id)snapshot reason:(id *)reason
{
  snapshotCopy = snapshot;
  os_unfair_lock_assert_not_owner(&self->_generate_lock);
  os_unfair_lock_lock(&self->_generate_lock);
  LOBYTE(reason) = [(XBApplicationSnapshotImageGenerator *)self _generate_lock_shouldGenerateForSnapshot:snapshotCopy reason:reason];

  os_unfair_lock_unlock(&self->_generate_lock);
  return reason;
}

- (BOOL)_generate_lock_shouldGenerateForSnapshot:(id)snapshot reason:(id *)reason
{
  snapshotCopy = snapshot;
  v7 = snapshotCopy;
  if (self->_generate_handled_request)
  {
    v8 = 0;
    if (reason)
    {
      v9 = @"already complete";
LABEL_16:
      *reason = v9;
    }
  }

  else if (snapshotCopy)
  {
    if ([snapshotCopy _isInvalidated])
    {
      v8 = 0;
      if (reason)
      {
        v9 = @"snapshot is invalidated";
        goto LABEL_16;
      }
    }

    else if (self->_imageDataRequest)
    {
      v8 = 1;
      if (reason)
      {
        v9 = @"image data requested";
        goto LABEL_16;
      }
    }

    else
    {
      hasCachedImage = [v7 hasCachedImage];
      v8 = hasCachedImage ^ 1;
      v9 = @"no cached image";
      if (hasCachedImage)
      {
        v9 = @"have a cached image and no requests to regenerate";
      }

      if (reason)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = 0;
    if (reason)
    {
      v9 = @"snapshot is nil";
      goto LABEL_16;
    }
  }

  return v8;
}

- (id)_generate_imageFromNewDataProvider:(id)provider forSnapshot:(id)snapshot imageDataHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  snapshotCopy = snapshot;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    hasProtectedContent = [providerCopy hasProtectedContent];
  }

  else
  {
    hasProtectedContent = 0;
  }

  [snapshotCopy _setHasProtectedContent:hasProtectedContent];
  v13 = [XBApplicationSnapshotManifestImpl _outputFormatForSnapshot:snapshotCopy];
  dataProviderFetchType = self->_dataProviderFetchType;
  if (dataProviderFetchType)
  {
    if (dataProviderFetchType != 1)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"XBApplicationSnapshotImageGenerator.m" lineNumber:240 description:{@"%@ somehow we got into this method with the wrong data provider %@", self->_loggingPrefix, providerCopy}];

      v16 = 0;
      if (handlerCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    fetchImage = [providerCopy fetchImage];
  }

  else
  {
    fetchImage = [providerCopy fetchImageForFormat:v13];
  }

  v16 = fetchImage;
  if (handlerCopy)
  {
LABEL_9:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__1;
    v38 = __Block_byref_object_dispose__1;
    v39 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke;
    v26[3] = &unk_279CF9580;
    v30 = v34;
    v27 = providerCopy;
    selfCopy = self;
    v33 = hasProtectedContent;
    v29 = v16;
    p_buf = &buf;
    v32 = v13;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_56;
    v21[3] = &unk_279CF95A8;
    v23 = handlerCopy;
    v24 = &buf;
    v22 = v29;
    v25 = v34;
    [(XBApplicationSnapshotImageGenerator *)self _performImageDataGeneration:v26 withHandler:v21];

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_14;
  }

LABEL_11:
  v18 = XBLogCapture();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    loggingPrefix = self->_loggingPrefix;
    LODWORD(buf) = 138543362;
    *(&buf + 4) = loggingPrefix;
    _os_log_impl(&dword_26B5EF000, v18, OS_LOG_TYPE_INFO, "[%{public}@] we don't have requests for imageData. skipping imageData generation", &buf, 0xCu);
  }

LABEL_14:

  return v16;
}

void __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = XBLogCapture();
  *(*(*(a1 + 56) + 8) + 24) = os_signpost_id_make_with_pointer(v2, *(a1 + 32));

  v3 = XBLogCapture();
  v4 = v3;
  v5 = *(*(*(a1 + 56) + 8) + 24);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(*(a1 + 40) + 64);
    v10 = "XBImageDataGenerationRequestNone";
    if (v9 == 1)
    {
      v10 = "XBImageDataGenerationRequestSynchronous";
    }

    if (v9 == 2)
    {
      v11 = "XBImageDataGenerationRequestAsynchronous";
    }

    else
    {
      v11 = v10;
    }

    v23 = 138543618;
    v24 = v7;
    v25 = 2082;
    v26 = v11;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "GenerateImageData", "dataProvider=%{public}@ imageDataRequest=%{public}s", &v23, 0x16u);
  }

  v12 = XBLogCapture();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_1(a1, a1 + 32, v12);
  }

  if (*(a1 + 48))
  {
    if (*(a1 + 80) == 1)
    {
      v13 = XBLogCapture();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(*(a1 + 40) + 48);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v23 = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_26B5EF000, v13, OS_LOG_TYPE_INFO, "[%{public}@] [%{public}@<XBSnapshotDataProvider> hasProtectedContent] is YES. skipping imageData generation", &v23, 0x16u);
      }
    }

    else if (*(*(a1 + 40) + 64))
    {
      v17 = [XBApplicationSnapshot dataForImage:"dataForImage:withFormat:" withFormat:?];
      v18 = *(*(a1 + 64) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      v20 = [*(*(*(a1 + 64) + 8) + 40) length];
      v21 = XBLogCapture();
      v13 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_3();
      }
    }

    else
    {
      v13 = XBLogCapture();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v22 = *(*(a1 + 40) + 48);
        v23 = 138543362;
        v24 = v22;
        _os_log_impl(&dword_26B5EF000, v13, OS_LOG_TYPE_INFO, "[%{public}@] was not asked for imageData. skipping imageData generation", &v23, 0xCu);
      }
    }
  }

  else
  {
    v13 = XBLogCapture();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_4();
    }
  }
}

void __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_56(void *a1)
{
  v2 = a1[5];
  if ([*(*(a1[6] + 8) + 40) length])
  {
    v3 = *(*(a1[6] + 8) + 40);
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3, a1[4] != 0);
  v4 = XBLogCapture();
  v5 = v4;
  v6 = *(*(a1[7] + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "GenerateImageData", "", v7, 2u);
  }
}

- (id)_generate_imageFromLegacyDataProvider:(id)provider forSnapshot:(id)snapshot imageDataHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  handlerCopy = handler;
  v9 = XBLogCapture();
  v10 = os_signpost_id_make_with_pointer(v9, providerCopy);

  v11 = XBLogCapture();
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543362;
    *&buf[4] = v14;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "GenerateImageDataLegacy", "dataProvider=%{public}@", buf, 0xCu);
  }

  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *buf = *MEMORY[0x277CBF2C0];
  v29 = v15;
  v30 = *(MEMORY[0x277CBF2C0] + 32);
  v16 = [providerCopy fetchImageData:buf];
  if ([v16 length])
  {
    v17 = objc_alloc(MEMORY[0x277D755B8]);
    context = [providerCopy context];
    [context scale];
    v19 = [v17 initWithData:v16 scale:?];

    if (v19)
    {
      goto LABEL_12;
    }

    v20 = XBLogCapture();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotImageGenerator _generate_imageFromLegacyDataProvider:forSnapshot:imageDataHandler:];
    }

    v21 = v16;
    v16 = 0;
  }

  else
  {
    v21 = XBLogCapture();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [XBApplicationSnapshotImageGenerator _generate_imageFromLegacyDataProvider:forSnapshot:imageDataHandler:];
    }
  }

  v19 = 0;
LABEL_12:
  if (handlerCopy)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __106__XBApplicationSnapshotImageGenerator__generate_imageFromLegacyDataProvider_forSnapshot_imageDataHandler___block_invoke;
    v23[3] = &unk_279CF95D0;
    v26 = handlerCopy;
    v23[4] = self;
    v24 = v16;
    v25 = v19;
    v27 = v10;
    [(XBApplicationSnapshotImageGenerator *)self _performImageDataGeneration:0 withHandler:v23];
  }

  return v19;
}

void __106__XBApplicationSnapshotImageGenerator__generate_imageFromLegacyDataProvider_forSnapshot_imageDataHandler___block_invoke(void *a1)
{
  v2 = a1[7];
  if (*(a1[4] + 64))
  {
    v3 = a1[5];
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3, a1[6] != 0);
  v4 = XBLogCapture();
  v5 = v4;
  v6 = a1[8];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_26B5EF000, v5, OS_SIGNPOST_INTERVAL_END, v6, "GenerateImageDataLegacy", "", v7, 2u);
  }
}

- (void)_generate
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_generate_lock);
  os_unfair_lock_lock(&self->_generate_lock);
  WeakRetained = objc_loadWeakRetained(&self->_weak_snapshot);
  v38 = 0;
  v4 = [(XBApplicationSnapshotImageGenerator *)self _generate_lock_shouldGenerateForSnapshot:WeakRetained reason:&v38];
  v5 = v38;
  if (v4)
  {
    context = objc_autoreleasePoolPush();
    v6 = self->_dataProvider;
    v7 = XBLogCapture();
    v8 = os_signpost_id_make_with_pointer(v7, WeakRetained);

    v9 = XBLogCapture();
    v10 = v9;
    v11 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543362;
      v40 = v13;
      _os_signpost_emit_with_name_impl(&dword_26B5EF000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "GenerateImage", "dataProvider=%{public}@", buf, 0xCu);
    }

    spid = v8;

    BSContinuousMachTimeNow();
    v15 = v14;
    v16 = os_transaction_create();
    logIdentifier = [WeakRetained logIdentifier];
    v18 = [XBApplicationSnapshotManifestImpl _outputFormatForSnapshot:WeakRetained];
    if (self->_didGenerateImageDataHandler)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__XBApplicationSnapshotImageGenerator__generate__block_invoke_59;
      v33[3] = &unk_279CF95F8;
      v33[4] = self;
      v35 = v18;
      v34 = logIdentifier;
      v36 = v15;
      v19 = MEMORY[0x26D67C6A0](v33);
    }

    else
    {
      v19 = 0;
    }

    if (self->_dataProviderFetchType > 1uLL)
    {
      [(XBApplicationSnapshotImageGenerator *)self _generate_imageFromLegacyDataProvider:v6 forSnapshot:WeakRetained imageDataHandler:v19, spid, context];
    }

    else
    {
      [(XBApplicationSnapshotImageGenerator *)self _generate_imageFromNewDataProvider:v6 forSnapshot:WeakRetained imageDataHandler:v19, spid, context];
    }
    v22 = ;
    [WeakRetained _cacheImage:v22];
    if (objc_opt_respondsToSelector())
    {
      v23 = objc_autoreleasePoolPush();
      [(XBSnapshotDataProvider *)v6 invalidateImage];
      objc_autoreleasePoolPop(v23);
    }

    didGenerateImageHandler = self->_didGenerateImageHandler;
    if (didGenerateImageHandler)
    {
      didGenerateImageHandler[2](didGenerateImageHandler, v22 != 0);
    }

    v25 = XBLogCapture();
    v26 = v25;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26B5EF000, v26, OS_SIGNPOST_INTERVAL_END, spida, "GenerateImage", "", buf, 2u);
    }

    objc_autoreleasePoolPop(contexta);
  }

  else
  {
    v20 = XBLogCapture();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      loggingPrefix = self->_loggingPrefix;
      logIdentifier2 = [WeakRetained logIdentifier];
      *buf = 138543874;
      v40 = loggingPrefix;
      v41 = 2114;
      v42 = v5;
      v43 = 2114;
      v44 = logIdentifier2;
      _os_log_error_impl(&dword_26B5EF000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] we needlessly scheduled _generate even though we have nothing to do because: %{public}@; Snapshot: %{public}@", buf, 0x20u);
    }

    v21 = self->_didGenerateImageHandler;
    if (v21)
    {
      v21[2](v21, 0);
    }

    if (self->_didGenerateImageDataHandler)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __48__XBApplicationSnapshotImageGenerator__generate__block_invoke;
      v37[3] = &unk_279CF9280;
      v37[4] = self;
      [(XBApplicationSnapshotImageGenerator *)self _performImageDataGeneration:0 withHandler:v37];
    }
  }

  self->_generate_handled_request = 1;
  os_unfair_lock_unlock(&self->_generate_lock);
}

void __48__XBApplicationSnapshotImageGenerator__generate__block_invoke_59(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    v4 = XBLogCapture();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 48);
      [v3 length];
      v6 = NSLocalizedFileSizeDescription();
      v7 = NSStringFromXBApplicationSnapshotOnDiskFormat(*(a1 + 48));
      v8 = *(a1 + 40);
      BSContinuousMachTimeNow();
      v10 = v9 - *(a1 + 56);
      v11 = 138544386;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_26B5EF000, v4, OS_LOG_TYPE_INFO, "[%{public}@] Generated image data (%{public}@ as %{public}@) for %{public}@ after %.3fs", &v11, 0x34u);
    }
  }

  (*(*(*(a1 + 32) + 40) + 16))();
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"scheduler" object:? file:? lineNumber:? description:?];
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"snapshot" object:? file:? lineNumber:? description:?];
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[snapshot groupID]" object:? file:? lineNumber:? description:?];
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"dataProvider" object:? file:? lineNumber:? description:?];
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.5()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[dataProvider context]" object:? file:? lineNumber:? description:?];
}

- (void)initWithScheduler:snapshot:dataProvider:imageDataRequest:loggingPrefix:imageGenerationHandler:imageDataGenerationHandler:.cold.6()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5(&dword_26B5EF000, v2, v3, "[%{public}@] %{public}@ implementing deprecated fetchImageData:. rude. inconsiderate.", v4, v5, v6, v7, v8);
}

void __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = OUTLINED_FUNCTION_6();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_26B5EF000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] [%{public}@<XBSnapshotDataProvider> fetchImage] doing imageData generation", v6, 0x16u);
}

void __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_26B5EF000, v0, OS_LOG_TYPE_DEBUG, "[%{public}@] completed snapshot dataForImage", v1, 0xCu);
}

void __103__XBApplicationSnapshotImageGenerator__generate_imageFromNewDataProvider_forSnapshot_imageDataHandler___block_invoke_cold_4()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5(&dword_26B5EF000, v2, v3, "[%{public}@] [%{public}@<XBSnapshotDataProvider> fetchImage] returned a nil image. skipping imageData generation", v4, v5, v6, v7, v8);
}

@end