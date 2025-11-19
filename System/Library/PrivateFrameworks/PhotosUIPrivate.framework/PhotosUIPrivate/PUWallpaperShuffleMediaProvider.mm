@interface PUWallpaperShuffleMediaProvider
- (PUWallpaperShuffleMediaProvider)initWithResourceManager:(id)a3;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (void)_handleOperationCompletedWithID:(int64_t)a3;
- (void)cancelImageRequest:(int64_t)a3;
- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
@end

@implementation PUWallpaperShuffleMediaProvider

- (void)_handleOperationCompletedWithID:(int64_t)a3
{
  os_unfair_lock_lock(&self->_operationsByIDLock);
  v5 = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v12 = [v5 objectForKeyedSubscript:v6];

  v7 = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:0 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_operationsByIDLock);
  v9 = [v12 resultImage];
  if (v9)
  {
    v10 = [(PUWallpaperShuffleMediaProvider *)self memoryCache];
    v11 = [v12 requestDescriptor];
    [v10 setObject:v9 forKey:v11];
  }
}

- (void)stopCachingImagesForAllAssets
{
  v2 = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [v2 stopCachingImagesForAllAssets];
}

- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [v13 stopCachingImagesForAssets:v12 targetSize:a5 contentMode:v11 options:{width, height}];
}

- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [v13 startCachingImagesForAssets:v12 targetSize:a5 contentMode:v11 options:{width, height}];
}

- (void)cancelImageRequest:(int64_t)a3
{
  os_unfair_lock_lock(&self->_operationsByIDLock);
  v5 = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_operationsByIDLock);
  [v7 cancel];
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = [objc_alloc(MEMORY[0x1E69C3600]) initWithAsset:v14 targetSize:a5 contentMode:v15 options:{width, height}];
  v18 = [(PUWallpaperShuffleMediaProvider *)self memoryCache];
  v19 = [v18 objectForKey:v17];

  if (!v19)
  {
    v20 = v14;
    v37 = v15;
    if (v20)
    {
      objc_opt_class();
      v21 = v20;
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        v22 = [(PUWallpaperShuffleMediaProvider *)self _nextRequestID];
        v23 = [(PUWallpaperShuffleMediaProvider *)self resourceManager];
        v36 = v21;
        v24 = [v21 posterMedia];
        v25 = [v23 segmentationItemLoadingOperationForPosterMedia:v24];

        v26 = [[_PUWallpaperShuffleMediaProviderImageOperation alloc] initWithSegmentationOperation:v25 requestDescriptor:v17 resultHandler:v16];
        os_unfair_lock_lock(&self->_operationsByIDLock);
        v27 = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
        [v27 setObject:v26 forKeyedSubscript:v28];

        os_unfair_lock_unlock(&self->_operationsByIDLock);
        objc_initWeak(&location, self);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __103__PUWallpaperShuffleMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        v38[3] = &unk_1E7B804A8;
        objc_copyWeak(v39, &location);
        v39[1] = v22;
        [(_PUWallpaperShuffleMediaProviderImageOperation *)v26 setCompletionBlock:v38];
        v29 = [(PUWallpaperShuffleMediaProvider *)self operationQueue];
        [v29 addOperation:v26];

        objc_destroyWeak(v39);
        objc_destroyWeak(&location);

        v15 = v37;
        goto LABEL_6;
      }

      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = objc_opt_class();
      v33 = NSStringFromClass(v34);
      v35 = [v20 px_descriptionForAssertionMessage];
      [v31 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleMediaProvider.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v33, v35}];
    }

    else
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [v31 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleMediaProvider.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v33}];
      v21 = 0;
    }

    goto LABEL_5;
  }

  (*(v16 + 2))(v16, [v19 image], 0, 0);
LABEL_6:

  return 0;
}

void __103__PUWallpaperShuffleMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOperationCompletedWithID:*(a1 + 40)];
}

- (PUWallpaperShuffleMediaProvider)initWithResourceManager:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PUWallpaperShuffleMediaProvider;
  v6 = [(PUWallpaperShuffleMediaProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceManager, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v8;

    [(NSOperationQueue *)v7->_operationQueue setQualityOfService:25];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    operationsByRequestID = v7->_operationsByRequestID;
    v7->_operationsByRequestID = v10;

    v7->_operationsByIDLock._os_unfair_lock_opaque = 0;
    v12 = [objc_alloc(MEMORY[0x1E69C3678]) initWithMediaProvider:v7];
    imageCacher = v7->_imageCacher;
    v7->_imageCacher = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    memoryCache = v7->_memoryCache;
    v7->_memoryCache = v14;
  }

  return v7;
}

@end