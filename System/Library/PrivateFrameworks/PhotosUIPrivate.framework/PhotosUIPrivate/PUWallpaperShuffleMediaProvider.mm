@interface PUWallpaperShuffleMediaProvider
- (PUWallpaperShuffleMediaProvider)initWithResourceManager:(id)manager;
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (void)_handleOperationCompletedWithID:(int64_t)d;
- (void)cancelImageRequest:(int64_t)request;
- (void)startCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
@end

@implementation PUWallpaperShuffleMediaProvider

- (void)_handleOperationCompletedWithID:(int64_t)d
{
  os_unfair_lock_lock(&self->_operationsByIDLock);
  operationsByRequestID = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  v12 = [operationsByRequestID objectForKeyedSubscript:v6];

  operationsByRequestID2 = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  [operationsByRequestID2 setObject:0 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_operationsByIDLock);
  resultImage = [v12 resultImage];
  if (resultImage)
  {
    memoryCache = [(PUWallpaperShuffleMediaProvider *)self memoryCache];
    requestDescriptor = [v12 requestDescriptor];
    [memoryCache setObject:resultImage forKey:requestDescriptor];
  }
}

- (void)stopCachingImagesForAllAssets
{
  imageCacher = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [imageCacher stopCachingImagesForAllAssets];
}

- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  assetsCopy = assets;
  imageCacher = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [imageCacher stopCachingImagesForAssets:assetsCopy targetSize:mode contentMode:optionsCopy options:{width, height}];
}

- (void)startCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  assetsCopy = assets;
  imageCacher = [(PUWallpaperShuffleMediaProvider *)self imageCacher];
  [imageCacher startCachingImagesForAssets:assetsCopy targetSize:mode contentMode:optionsCopy options:{width, height}];
}

- (void)cancelImageRequest:(int64_t)request
{
  os_unfair_lock_lock(&self->_operationsByIDLock);
  operationsByRequestID = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:request];
  v7 = [operationsByRequestID objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_operationsByIDLock);
  [v7 cancel];
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  v17 = [objc_alloc(MEMORY[0x1E69C3600]) initWithAsset:assetCopy targetSize:mode contentMode:optionsCopy options:{width, height}];
  memoryCache = [(PUWallpaperShuffleMediaProvider *)self memoryCache];
  v19 = [memoryCache objectForKey:v17];

  if (!v19)
  {
    v20 = assetCopy;
    v37 = optionsCopy;
    if (v20)
    {
      objc_opt_class();
      v21 = v20;
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        _nextRequestID = [(PUWallpaperShuffleMediaProvider *)self _nextRequestID];
        resourceManager = [(PUWallpaperShuffleMediaProvider *)self resourceManager];
        v36 = v21;
        posterMedia = [v21 posterMedia];
        v25 = [resourceManager segmentationItemLoadingOperationForPosterMedia:posterMedia];

        v26 = [[_PUWallpaperShuffleMediaProviderImageOperation alloc] initWithSegmentationOperation:v25 requestDescriptor:v17 resultHandler:handlerCopy];
        os_unfair_lock_lock(&self->_operationsByIDLock);
        operationsByRequestID = [(PUWallpaperShuffleMediaProvider *)self operationsByRequestID];
        v28 = [MEMORY[0x1E696AD98] numberWithInteger:_nextRequestID];
        [operationsByRequestID setObject:v26 forKeyedSubscript:v28];

        os_unfair_lock_unlock(&self->_operationsByIDLock);
        objc_initWeak(&location, self);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __103__PUWallpaperShuffleMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
        v38[3] = &unk_1E7B804A8;
        objc_copyWeak(v39, &location);
        v39[1] = _nextRequestID;
        [(_PUWallpaperShuffleMediaProviderImageOperation *)v26 setCompletionBlock:v38];
        operationQueue = [(PUWallpaperShuffleMediaProvider *)self operationQueue];
        [operationQueue addOperation:v26];

        objc_destroyWeak(v39);
        objc_destroyWeak(&location);

        optionsCopy = v37;
        goto LABEL_6;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v34 = objc_opt_class();
      v33 = NSStringFromClass(v34);
      px_descriptionForAssertionMessage = [v20 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleMediaProvider.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v33, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleMediaProvider.m" lineNumber:77 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v33}];
      v21 = 0;
    }

    goto LABEL_5;
  }

  (*(handlerCopy + 2))(handlerCopy, [v19 image], 0, 0);
LABEL_6:

  return 0;
}

void __103__PUWallpaperShuffleMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOperationCompletedWithID:*(a1 + 40)];
}

- (PUWallpaperShuffleMediaProvider)initWithResourceManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PUWallpaperShuffleMediaProvider;
  v6 = [(PUWallpaperShuffleMediaProvider *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceManager, manager);
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