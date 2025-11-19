@interface PXAudioAssetImageProvider
- (PXAudioAssetImageProvider)init;
- (id)createImageLoaderForRequest:(id)a3;
- (id)imageCacheKeyForRequest:(id)a3;
- (id)imageLoaderCoalescingKeyForRequest:(id)a3;
- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (void)_handleImageLoaderCompletionForIdentifier:(id)a3;
- (void)cancelImageRequest:(int64_t)a3;
- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
@end

@implementation PXAudioAssetImageProvider

- (void)_handleImageLoaderCompletionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXAudioAssetImageProvider *)self imageLoaderByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(PXAudioAssetImageProvider *)self imageLoaderByIdentifier];
    [v7 setObject:0 forKeyedSubscript:v4];

    v8 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
    v9 = [v8 objectForKeyedSubscript:v4];

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __71__PXAudioAssetImageProvider__handleImageLoaderCompletionForIdentifier___block_invoke;
    v15 = &unk_1E7731E00;
    v16 = self;
    v17 = v6;
    [v9 enumerateObjectsUsingBlock:&v12];
    v10 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier:v12];
    v11 = [v10 objectForKeyedSubscript:v4];
    [v11 removeAllObjects];
  }
}

void __71__PXAudioAssetImageProvider__handleImageLoaderCompletionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = 0;
  v6 = [v4 resultForCompletedImageLoader:v5 request:v3 error:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = [*(a1 + 32) imageCacheKeyForRequest:v3];
    v10 = [*(a1 + 32) imageCache];
    [v10 setObject:v6 forKey:v9];

    v11 = [v3 resultHandler];
    (v11)[2](v11, v6, 0);

    v12 = [*(a1 + 32) log];
    v13 = [v3 signpostID];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *v19 = 0;
LABEL_11:
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v12, OS_SIGNPOST_INTERVAL_END, v14, "AudioAssetImageProviderResultDelivery", "", v19, 2u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v21 = *MEMORY[0x1E6978DF0];
      v22[0] = v7;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }

    else
    {
      v9 = 0;
    }

    v15 = [v3 resultHandler];
    (v15)[2](v15, 0, v9);

    v12 = [*(a1 + 32) log];
    v16 = [v3 signpostID];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v16;
      if (os_signpost_enabled(v12))
      {
        *v19 = 0;
        goto LABEL_11;
      }
    }
  }

  v17 = [*(a1 + 32) requestByClientID];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "requestID")}];
  [v17 setObject:0 forKeyedSubscript:v18];
}

- (id)resultForCompletedImageLoader:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:179 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioAssetImageProvider resultForCompletedImageLoader:request:error:]", v12}];

  abort();
}

- (id)createImageLoaderForRequest:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:175 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioAssetImageProvider createImageLoaderForRequest:]", v8}];

  abort();
}

- (id)imageLoaderCoalescingKeyForRequest:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:171 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioAssetImageProvider imageLoaderCoalescingKeyForRequest:]", v8}];

  abort();
}

- (id)imageCacheKeyForRequest:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAudioAssetImageProvider.m" lineNumber:167 description:{@"Method %s is a responsibility of subclass %@", "-[PXAudioAssetImageProvider imageCacheKeyForRequest:]", v8}];

  abort();
}

- (void)cancelImageRequest:(int64_t)a3
{
  v5 = [(PXAudioAssetImageProvider *)self requestByClientID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v18 = [v5 objectForKeyedSubscript:v6];

  v7 = v18;
  if (v18)
  {
    v8 = [(PXAudioAssetImageProvider *)self requestByClientID];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v8 setObject:0 forKeyedSubscript:v9];

    v10 = [(PXAudioAssetImageProvider *)self imageLoaderCoalescingKeyForRequest:v18];
    v11 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
    v12 = [v11 objectForKeyedSubscript:v10];
    [v12 removeObject:v18];

    v13 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
    v14 = [v13 objectForKeyedSubscript:v10];
    v15 = [v14 count];

    if (!v15)
    {
      v16 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
      [v16 setObject:0 forKeyedSubscript:v10];

      v17 = [(PXAudioAssetImageProvider *)self imageLoaderByIdentifier];
      [v17 setObject:0 forKeyedSubscript:v10];
    }

    v7 = v18;
  }
}

- (void)stopCachingImagesForAllAssets
{
  v3 = [(PXAudioAssetImageProvider *)self requestCountByCacheSpec];
  [v3 removeAllObjects];

  v4 = [(PXAudioAssetImageProvider *)self requestIDByCacheSpec];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXAudioAssetImageProvider_stopCachingImagesForAllAssets__block_invoke;
  v6[3] = &unk_1E7748368;
  v6[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = [(PXAudioAssetImageProvider *)self requestIDByCacheSpec];
  [v5 removeAllObjects];
}

uint64_t __58__PXAudioAssetImageProvider_stopCachingImagesForAllAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 integerValue];

  return [v3 cancelImageRequest:v4];
}

- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PXAudioAssetImageProvider_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  v18 = a5;
  v14 = v11;
  v15 = self;
  v12 = v11;
  [a3 enumerateObjectsUsingBlock:v13];
}

void __87__PXAudioAssetImageProvider_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [[PXImageRequestDescriptor alloc] initWithAsset:v3 targetSize:*(a1 + 64) contentMode:*(a1 + 32) options:*(a1 + 48), *(a1 + 56)];

  v4 = [*(a1 + 40) requestIDByCacheSpec];
  v5 = [v4 objectForKeyedSubscript:v10];

  if (v5)
  {
    v6 = [*(a1 + 40) requestCountByCacheSpec];
    [v6 removeObject:v10];

    v7 = [*(a1 + 40) requestCountByCacheSpec];
    v8 = [v7 countForObject:v10];

    if (!v8)
    {
      [*(a1 + 40) cancelImageRequest:{objc_msgSend(v5, "integerValue")}];
      v9 = [*(a1 + 40) requestIDByCacheSpec];
      [v9 setObject:0 forKeyedSubscript:v10];
    }
  }
}

- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PXAudioAssetImageProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  v18 = a5;
  v14 = v11;
  v15 = self;
  v12 = v11;
  [a3 enumerateObjectsUsingBlock:v13];
}

void __88__PXAudioAssetImageProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PXImageRequestDescriptor alloc] initWithAsset:v3 targetSize:*(a1 + 64) contentMode:*(a1 + 32) options:*(a1 + 48), *(a1 + 56)];
  v5 = [*(a1 + 40) requestIDByCacheSpec];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = *(a1 + 64);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__PXAudioAssetImageProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2;
    v14[3] = &unk_1E7745FE8;
    v15 = v3;
    v10 = [v8 requestImageForAsset:v15 targetSize:v7 contentMode:v9 options:v14 resultHandler:{*(a1 + 48), *(a1 + 56)}];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v12 = [*(a1 + 40) requestIDByCacheSpec];
    [v12 setObject:v11 forKeyedSubscript:v4];
  }

  v13 = [*(a1 + 40) requestCountByCacheSpec];
  [v13 addObject:v4];
}

void __88__PXAudioAssetImageProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "Finished caching artwork for asset %@: ; Info: %@", &v7, 0x16u);
  }
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = [(PXAudioAssetImageProvider *)self log];
  v17 = os_signpost_id_make_with_pointer(v16, self);
  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "AudioAssetImageProviderResultDelivery", "", buf, 2u);
  }

  [(PXAudioAssetImageProvider *)self setRequestCounter:[(PXAudioAssetImageProvider *)self requestCounter]+ 1];
  v20 = [(PXAudioAssetImageProvider *)self requestCounter];
  v39 = v15;
  v40 = v14;
  v21 = [[_PXAudioAssetImageProviderRequest alloc] initWithAsset:v13 targetSize:a5 contentMode:v14 options:v15 resultHandler:v20 requestID:v17 signpostID:width, height];
  v22 = [(PXAudioAssetImageProvider *)self imageCacheKeyForRequest:v21];
  v23 = [(PXAudioAssetImageProvider *)self imageCache];
  v24 = [v23 objectForKey:v22];

  if (v24)
  {
    v25 = [(_PXAudioAssetImageProviderRequest *)v21 resultHandler];
    (v25)[2](v25, v24, 0);

    v26 = v19;
    v27 = v26;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v17, "AudioAssetImageProviderResultDelivery", "", buf, 2u);
    }
  }

  else
  {
    v38 = v13;
    v28 = [(PXAudioAssetImageProvider *)self requestByClientID];
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v20];
    [v28 setObject:v21 forKeyedSubscript:v29];

    v27 = [(PXAudioAssetImageProvider *)self imageLoaderCoalescingKeyForRequest:v21];
    v30 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
    v31 = [v30 objectForKeyedSubscript:v27];

    if (!v31)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = [(PXAudioAssetImageProvider *)self requestsByImageLoaderIdentifier];
      [v32 setObject:v31 forKeyedSubscript:v27];
    }

    [v31 addObject:v21];
    v33 = [(PXAudioAssetImageProvider *)self imageLoaderByIdentifier];
    v34 = [v33 objectForKeyedSubscript:v27];

    if (!v34)
    {
      v35 = [(PXAudioAssetImageProvider *)self createImageLoaderForRequest:v21];
      v36 = [(PXAudioAssetImageProvider *)self imageLoaderByIdentifier];
      [v36 setObject:v35 forKeyedSubscript:v27];

      objc_initWeak(buf, self);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __95__PXAudioAssetImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
      v41[3] = &unk_1E774B248;
      objc_copyWeak(&v43, buf);
      v42 = v27;
      [v35 startWithCompletion:v41];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    v13 = v38;
  }

  return v20;
}

void __95__PXAudioAssetImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 40));
  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __95__PXAudioAssetImageProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleImageLoaderCompletionForIdentifier:*(a1 + 32)];
}

- (PXAudioAssetImageProvider)init
{
  v17.receiver = self;
  v17.super_class = PXAudioAssetImageProvider;
  v2 = [(PXAudioAssetImageProvider *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestsByImageLoaderIdentifier = v2->_requestsByImageLoaderIdentifier;
    v2->_requestsByImageLoaderIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestByClientID = v2->_requestByClientID;
    v2->_requestByClientID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    imageLoaderByIdentifier = v2->_imageLoaderByIdentifier;
    v2->_imageLoaderByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v12 UTF8String];

    v14 = os_log_create(*MEMORY[0x1E69BDDA0], v13);
    log = v2->_log;
    v2->_log = v14;
  }

  return v2;
}

@end