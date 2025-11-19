@interface PXPhotoKitUIMediaProvider
+ (PXPhotoKitUIMediaProvider)mediaProviderWithLibrary:(id)a3;
+ (id)_defaultImageManager;
+ (id)_defaultLoadingStatusManager;
+ (void)configureLoadingStatusManager:(id)a3 andVideoProgressHandler:(id)a4 withVideoSensitivityProcessingProgress:(id)a5 imageManagerRequestProgress:(double)a6 loadOperationTrackingID:(id)a7 stop:(BOOL *)a8 info:(id)a9 error:(id)a10;
- (CGSize)masterThumbnailSize;
- (PXPhotoKitUIMediaProvider)init;
- (PXPhotoKitUIMediaProvider)initWithImageManager:(id)a3;
- (PXPhotoKitUIMediaProvider)initWithImageManager:(id)a3 library:(id)a4;
- (id)_preheatInfoForQualityClassIndex:(int64_t)a3;
- (id)_thumbnailDataForAsset:(id)a3 qualityClass:(id)a4 cache:(id)a5 onlyFromCache:(BOOL)a6 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a7 forPreheat:(BOOL)a8;
- (id)searchResultContextualVideoThumbnailIdentifiers;
- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)_getQualityClass:(id *)a3 cache:(id *)a4 qualityClassIndex:(int64_t *)a5 forTargetSize:(CGSize)a6;
- (void)_preheatQueue_schedulePreheat;
- (void)_preheatQueue_scheduleUpdateAfterDelay;
- (void)_preheatQueue_update;
- (void)_schedulePreheat;
- (void)_setPreheatInfo:(id)a3 forQualityClassIndex:(int64_t)a4;
- (void)cancelImageRequest:(int64_t)a3;
- (void)enumerateAvailableThumbnailDataFormats:(id)a3;
- (void)preheatThumbnailDataForAssets:(id)a3 origin:(int64_t)a4 targetSize:(CGSize)a5;
- (void)setSearchResultContextualVideoThumbnailIdentifiers:(id)a3;
- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
@end

@implementation PXPhotoKitUIMediaProvider

+ (id)_defaultImageManager
{
  if (_defaultImageManager_onceToken != -1)
  {
    dispatch_once(&_defaultImageManager_onceToken, &__block_literal_global_108844);
  }

  v3 = _defaultImageManager_defaultImageManager;

  return v3;
}

void __49__PXPhotoKitUIMediaProvider__defaultImageManager__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6978718]);
  v1 = _defaultImageManager_defaultImageManager;
  _defaultImageManager_defaultImageManager = v0;
}

+ (id)_defaultLoadingStatusManager
{
  if (_defaultLoadingStatusManager_onceToken != -1)
  {
    dispatch_once(&_defaultLoadingStatusManager_onceToken, &__block_literal_global_222);
  }

  v3 = _defaultLoadingStatusManager_defaultLoadingStatusManager;

  return v3;
}

void __57__PXPhotoKitUIMediaProvider__defaultLoadingStatusManager__block_invoke()
{
  v0 = objc_alloc_init(off_1E77217A0);
  v1 = _defaultLoadingStatusManager_defaultLoadingStatusManager;
  _defaultLoadingStatusManager_defaultLoadingStatusManager = v0;
}

- (CGSize)masterThumbnailSize
{
  width = self->_masterThumbnailSize.width;
  height = self->_masterThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)searchResultContextualVideoThumbnailIdentifiers
{
  os_unfair_lock_lock(&self->_videoThumbnailIdentifiersLock);
  v3 = self->_lock_videoThumbnailIdentifiers;
  os_unfair_lock_unlock(&self->_videoThumbnailIdentifiersLock);

  return v3;
}

- (void)_preheatQueue_scheduleUpdateAfterDelay
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 250000000);
  preheatQueue = self->_preheatQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PXPhotoKitUIMediaProvider__preheatQueue_scheduleUpdateAfterDelay__block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, preheatQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __67__PXPhotoKitUIMediaProvider__preheatQueue_scheduleUpdateAfterDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preheatQueue_update];
}

- (void)_preheatQueue_schedulePreheat
{
  if (!self->_preheatQueue_state)
  {
    self->_preheatQueue_state = 1;
    [(PXPhotoKitUIMediaProvider *)self _preheatQueue_update];
  }
}

- (void)_schedulePreheat
{
  objc_initWeak(&location, self);
  preheatQueue = self->_preheatQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PXPhotoKitUIMediaProvider__schedulePreheat__block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  v4 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v5);
  dispatch_async(preheatQueue, v4);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__PXPhotoKitUIMediaProvider__schedulePreheat__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preheatQueue_schedulePreheat];
}

- (void)_setPreheatInfo:(id)a3 forQualityClassIndex:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_preheatlock);
  [(NSMutableArray *)self->_preheatLock_preheatStates replaceObjectAtIndex:a4 withObject:v6];
  os_unfair_lock_unlock(&self->_preheatlock);
  LOBYTE(a4) = [v6 finished];

  if ((a4 & 1) == 0)
  {

    [(PXPhotoKitUIMediaProvider *)self _schedulePreheat];
  }
}

- (id)_preheatInfoForQualityClassIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_preheatlock);
  v5 = [(NSMutableArray *)self->_preheatLock_preheatStates objectAtIndexedSubscript:a3];
  os_unfair_lock_unlock(&self->_preheatlock);

  return v5;
}

- (void)_preheatQueue_update
{
  dispatch_assert_queue_V2(self->_preheatQueue);
  v2 = [off_1E7721920 sharedInstance];
  mach_absolute_time();
  [v2 opportunisticPreheatRequiredIdleTime];
  PXTimebaseConversionFactor();
}

- (void)setSearchResultContextualVideoThumbnailIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_videoThumbnailIdentifiersLock);
  v5 = [v4 copy];

  lock_videoThumbnailIdentifiers = self->_lock_videoThumbnailIdentifiers;
  self->_lock_videoThumbnailIdentifiers = v5;

  os_unfair_lock_unlock(&self->_videoThumbnailIdentifiersLock);
}

- (void)stopCachingImagesForAllAssets
{
  v2 = [(PXPhotoKitUIMediaProvider *)self cachingImageManager];
  [v2 stopCachingImagesForAllAssets];
}

- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v19 = a3;
  v12 = a6;
  if ([v19 count])
  {
    v13 = [v19 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = NSStringFromSelector(a2);
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:908 description:{@"%@ expected PHAssets", v16}];
    }
  }

  v17 = [(PXPhotoKitUIMediaProvider *)self cachingImageManager];
  v18 = [v12 photoKitRequestOptions];

  [v17 stopCachingImagesForAssets:v19 targetSize:a5 contentMode:v18 options:{width, height}];
}

- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6
{
  height = a4.height;
  width = a4.width;
  v19 = a3;
  v12 = a6;
  if ([v19 count])
  {
    v13 = [v19 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = NSStringFromSelector(a2);
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:903 description:{@"%@ expected PHAssets", v16}];
    }
  }

  v17 = [(PXPhotoKitUIMediaProvider *)self cachingImageManager];
  v18 = [v12 photoKitRequestOptions];

  [v17 startCachingImagesForAssets:v19 targetSize:a5 contentMode:v18 options:{width, height}];
}

- (void)cancelImageRequest:(int64_t)a3
{
  v4 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  [v4 cancelImageRequest:a3];
}

- (void)enumerateAvailableThumbnailDataFormats:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotoKitUIMediaProvider;
  [(PXMediaProvider *)&v9 enumerateAvailableThumbnailDataFormats:v4];
  thumbnailQualityClasses = self->_thumbnailQualityClasses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PXPhotoKitUIMediaProvider_enumerateAvailableThumbnailDataFormats___block_invoke;
  v7[3] = &unk_1E7739738;
  v8 = v4;
  v6 = v4;
  [(NSArray *)thumbnailQualityClasses enumerateObjectsUsingBlock:v7];
}

void __68__PXPhotoKitUIMediaProvider_enumerateAvailableThumbnailDataFormats___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isTable] && objc_msgSend(v3, "metalPixelFormat"))
  {
    v4 = [v3 metalPixelFormat];
    v5 = [v3 colorSpaceName];
    v6 = [v3 maxSideLengthIfSquare];
    v7 = [v3 maxSideLengthIfSquare];
    v8 = [v3 isCroppedToSquare];
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    v11[0] = v4;
    v11[1] = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = 0;
    v16 = 0;
    v10(v9, v11);
  }
}

- (void)preheatThumbnailDataForAssets:(id)a3 origin:(int64_t)a4 targetSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  [(PXPhotoKitUIMediaProvider *)self _getQualityClass:&v20 cache:&v19 qualityClassIndex:&v21 forTargetSize:width, height];
  v10 = v20;
  v11 = v19;
  if (v11)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a4 = 0;
    }

    v12 = [[PXPreheatInfo alloc] initWithFetchResult:v9 origin:a4];
    [(PXPhotoKitUIMediaProvider *)self _setPreheatInfo:v12 forQualityClassIndex:v21];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v13 = [v9 count];
    if (v13 >= 1)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = [v9 thumbnailAssetAtIndex:i];
        v17 = [v16 thumbnailIndex];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PXPreheatInfo *)v12 addIndex:v17];
        }
      }
    }

    v18 = [(PXPhotoKitUIMediaProvider *)self photoLibrary];
    [v10 preheatDataForThumbnailIndexes:v12 inLibrary:v18];
  }
}

- (id)_thumbnailDataForAsset:(id)a3 qualityClass:(id)a4 cache:(id)a5 onlyFromCache:(BOOL)a6 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a7 forPreheat:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = 0;
  if (v13 && v14)
  {
    v17 = v13;
    memset(v33, 0, sizeof(v33));
    v16 = [v15 tableThumbnailDataForAsset:v17 dataSpecification:v33];
    if (!v16 && !a6)
    {
      v16 = [v14 tableThumbnailDataForAsset:v17 dataSpecification:v33];
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      [v15 cacheThumbnailData:v16 specification:v33 forAsset:v17];
    }

    if (v16 && !a8)
    {
      v32 = v16;
      [MEMORY[0x1E6978AB0] obscureThumbnailDataIfSensitiveFromThumbnailData:v16 outThumbnailData:&v32 forThumbnailAsset:v17];
      v18 = v32;

      v16 = v18;
    }

    if (a7 && v16)
    {
      v19 = SDWORD2(v33[0]) / SHIDWORD(v33[0]);
      if (SDWORD2(v33[0]) / SHIDWORD(v33[0]) <= 1)
      {
        v19 = 1;
      }

      v31 = v19;
      v20 = [v14 metalPixelFormat];
      v21 = [v14 colorSpaceName];
      v22 = [v14 maxSideLengthIfSquare];
      v23 = [v14 maxSideLengthIfSquare];
      v24 = [v14 isCroppedToSquare];
      v25 = WORD4(v33[0]);
      v26 = SDWORD1(v33[1]) / SDWORD2(v33[0]);
      v27 = SDWORD1(v33[1]) % SDWORD2(v33[0]);
      v28 = *&v33[0];
      v29 = *(v33 + 12);
      a7->var0.var0 = v20;
      a7->var0.var1 = v21;
      a7->var0.var2 = v22;
      a7->var0.var3 = v23;
      a7->var0.var4 = v24;
      *(&a7->var0.var4 + 1) = 0;
      *(&a7->var0.var4 + 3) = 0;
      a7->var1 = v27 / v31;
      a7->var2 = v26;
      *&a7->var3 = vuzp1_s16(v28, v29);
      *&a7->var7 = v25;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v16;
}

- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  if (!v7)
  {
    [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  }

  v16 = 0;
  v17 = 0;
  [(PXPhotoKitUIMediaProvider *)self _getQualityClass:&v17 cache:&v16 qualityClassIndex:0 forTargetSize:width, height];
  v12 = v17;
  v13 = v16;
  v14 = [(PXPhotoKitUIMediaProvider *)self _thumbnailDataForAsset:v11 qualityClass:v12 cache:v13 onlyFromCache:v7 outDataSpec:a6 forPreheat:0];

  return v14;
}

- (void)_getQualityClass:(id *)a3 cache:(id *)a4 qualityClassIndex:(int64_t *)a5 forTargetSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_lastTargetSize.width == width && self->_lock_lastTargetSize.height == height)
  {
    v28 = self->_lock_lastResourceQualityClass;
    v29 = self->_lock_lastThumbnailCache;
    lock_lastQualityClassIndex = self->_lock_lastQualityClassIndex;
  }

  else
  {
    v33 = a3;
    v34 = a4;
    v35 = a5;
    if (width >= height)
    {
      v13 = width;
    }

    else
    {
      v13 = height;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_thumbnailQualityClasses;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      lock_lastQualityClassIndex = 0;
      v21 = *v37;
LABEL_10:
      v22 = 0;
      while (1)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        if ([v23 isCroppedToSquare])
        {
          v24 = width == height;
        }

        else
        {
          v24 = 0;
        }

        if (v24 || ([v23 isCroppedToSquare] & 1) == 0)
        {
          v25 = [v23 maxSideLengthIfSquare];
          v26 = v23;

          v27 = [(NSArray *)self->_thumbnailCaches objectAtIndexedSubscript:lock_lastQualityClassIndex];

          if (v13 <= v25)
          {
            v28 = v26;
            v29 = v27;

            if (v28)
            {
              a4 = v34;
              a5 = v35;
              a3 = v33;
              goto LABEL_30;
            }

            v17 = 0;
            v18 = v29;
            goto LABEL_29;
          }

          v17 = v26;
          v18 = v27;
          v19 = lock_lastQualityClassIndex;
        }

        ++lock_lastQualityClassIndex;
        if (v16 == ++v22)
        {
          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v16)
          {
            goto LABEL_10;
          }

          goto LABEL_27;
        }
      }
    }

    v19 = 0;
    v18 = 0;
    v17 = 0;
LABEL_27:

    v29 = 0;
    lock_lastQualityClassIndex = v19;
LABEL_29:
    a4 = v34;
    a5 = v35;
    a3 = v33;
    v28 = v17;
    v30 = v18;

    v29 = v30;
LABEL_30:
    self->_lock_lastTargetSize.width = width;
    self->_lock_lastTargetSize.height = height;
    objc_storeStrong(&self->_lock_lastResourceQualityClass, v28);
    objc_storeStrong(&self->_lock_lastThumbnailCache, v29);
    self->_lock_lastQualityClassIndex = lock_lastQualityClassIndex;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (a3)
  {
    v31 = v28;
    *a3 = v28;
  }

  if (a4)
  {
    v32 = v29;
    *a4 = v29;
  }

  if (a5)
  {
    *a5 = lock_lastQualityClassIndex;
  }
}

- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:667 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v12 = [v10 photoKitRequestOptions];
  v13 = _Block_copy(v11);
  v14 = [(PXMediaProvider *)self loadingStatusManager];
  if (v14)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__108787;
    v19[4] = __Block_byref_object_dispose__108788;
    v19[5] = 0;
    v14;
    v9;
    px_dispatch_on_main_queue();
  }

  v15 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v16 = [v15 requestStreamForVideo:v9 options:v12 resultHandler:v13];

  return v16;
}

void __73__PXPhotoKitUIMediaProvider_requestStreamForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __73__PXPhotoKitUIMediaProvider_requestStreamForVideo_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(a2);
  }

  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __73__PXPhotoKitUIMediaProvider_requestStreamForVideo_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8, v9);
  }

  *(a1 + 32);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  px_dispatch_on_main_queue();
}

void __73__PXPhotoKitUIMediaProvider_requestStreamForVideo_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 64) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    if (*(a1 + 48))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 56) != 0;
    }

    v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 64) + 8) + 40) withSuccess:v6 error:v7];
  }
}

- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:618 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v12 = [v10 photoKitRequestOptions];
  v13 = _Block_copy(v11);
  v14 = [(PXMediaProvider *)self loadingStatusManager];
  if (v14)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__108787;
    v19[4] = __Block_byref_object_dispose__108788;
    v19[5] = 0;
    v14;
    v9;
    px_dispatch_on_main_queue();
  }

  v15 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v16 = [v15 requestURLForVideo:v9 options:v12 resultHandler:v13];

  return v16;
}

void __70__PXPhotoKitUIMediaProvider_requestURLForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __70__PXPhotoKitUIMediaProvider_requestURLForVideo_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(a2);
  }

  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __70__PXPhotoKitUIMediaProvider_requestURLForVideo_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v8 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  px_dispatch_on_main_queue();
}

void __70__PXPhotoKitUIMediaProvider_requestURLForVideo_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 48);
    v9 = v8 != 0;
    if (!v8 && v7)
    {
      v9 = *(a1 + 64) ^ 1;
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v9 & 1 error:v10];
  }
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:566 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v12 = [v10 photoKitRequestOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7739670;
  v13 = v11;
  v24 = v13;
  v14 = v9;
  v23 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [(PXMediaProvider *)self loadingStatusManager];
  if (v16)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__108787;
    v21[4] = __Block_byref_object_dispose__108788;
    v21[5] = 0;
    v16;
    v14;
    px_dispatch_on_main_queue();
  }

  v17 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v18 = [v17 requestAnimatedImageForAsset:v14 options:v12 resultHandler:v15];

  return v18;
}

void __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v9 = v6;
    v10 = v5;
    [MEMORY[0x1E6978AB0] protectImageManagerResult:v5 outAnimatedImage:&v10 infoDictionary:v6 outInfoDictionary:&v9 forAnimatedImageRequestFromAsset:*(a1 + 32)];
    v7 = v10;

    v8 = v9;
    (*(*(a1 + 40) + 16))();
    v5 = v7;
    v6 = v8;
  }
}

void __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_4;
  block[3] = &unk_1E77477B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_6;
  block[3] = &unk_1E7739468;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v7;
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__PXPhotoKitUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
      v9 = [v8 BOOLValue];

      v10 = *(a1 + 48);
      v11 = v10 != 0;
      if (!v10 && v9)
      {
        v11 = *(a1 + 64) ^ 1;
      }

      v12 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v11 & 1 error:v12];
    }
  }
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:511 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v17 = [v15 photoKitRequestOptions];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7739620;
  v18 = v16;
  v32 = v18;
  v19 = v14;
  v30 = v19;
  v20 = v15;
  v31 = v20;
  v21 = _Block_copy(aBlock);
  v22 = [(PXMediaProvider *)self loadingStatusManager];
  v27 = v20;
  if (v22)
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__108787;
    v28[4] = __Block_byref_object_dispose__108788;
    v28[5] = 0;
    v22;
    v19;
    px_dispatch_on_main_queue();
  }

  v23 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v24 = [v23 requestLivePhotoForAsset:v19 targetSize:a5 contentMode:v17 options:v21 resultHandler:{width, height}];

  return v24;
}

void __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = MEMORY[0x1E6978AB0];
    v14 = v6;
    v15 = v5;
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) photoKitRequestOptions];
    v11 = [v8 protectImageManagerResult:v5 outVideoItem:&v15 infoDictionary:v7 outInfoDictionary:&v14 forVideoRequestFromAsset:v9 requestAnalysisIfUnprocessed:{objc_msgSend(v10, "downloadIntent") == 3}];
    v12 = v15;

    v13 = v14;
    (*(*(a1 + 48) + 16))();
    v5 = v12;
    v7 = v13;
  }
}

void __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4;
  block[3] = &unk_1E77477B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_6;
  block[3] = &unk_1E7739468;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v7;
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __99__PXPhotoKitUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 48);
    v9 = v8 != 0;
    if (!v8 && v7)
    {
      v9 = *(a1 + 64) ^ 1;
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v9 & 1 error:v10];
  }
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v54[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 1;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__108787;
  v50[4] = __Block_byref_object_dispose__108788;
  v51 = 0;
  v12 = [v10 photoKitRequestOptions];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__108787;
  v48[4] = __Block_byref_object_dispose__108788;
  v49 = 0;
  v13 = [(PXMediaProvider *)self loadingStatusManager];
  if (v13)
  {
    v47[4] = MEMORY[0x1E69E9820];
    v47[5] = 3221225472;
    v47[6] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
    v47[7] = &unk_1E7746448;
    v47[10] = v48;
    v47[8] = v13;
    v47[9] = v9;
    px_dispatch_on_main_queue();
  }

  v29 = [v12 progressHandler];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v14 = v9;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v31 = v14;
  }

  else
  {
    v31 = 0;
  }

  v15 = PHSensitiveContentAnalysisAvailable() ^ 1;
  if (!v10)
  {
    LOBYTE(v15) = 1;
  }

  if (v15)
  {
    goto LABEL_17;
  }

  v16 = [v10 photoKitRequestOptions];
  v17 = [v16 downloadIntent];
  v30 = 0;
  if (!v31 || v17 != 3)
  {
    goto LABEL_16;
  }

  v18 = [MEMORY[0x1E6978AB0] assetNeedsVideoSensitivityProcessing:v31];

  if (!v18)
  {
LABEL_17:
    v30 = 0;
    goto LABEL_18;
  }

  v19 = [v31 photoLibrary];
  v20 = [v31 uuid];
  v54[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2;
  v35[3] = &unk_1E7739558;
  v36 = v14;
  v40 = v45;
  v37 = 0;
  v38 = 0;
  v39 = v29;
  v41 = v47;
  v42 = v48;
  v43 = v52;
  v44 = v50;
  v30 = [v19 analyzeAssets:v21 forFeature:7 withCompletion:v35];

  v16 = v36;
LABEL_16:

LABEL_18:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_277;
  aBlock[3] = &unk_1E7739580;
  v28 = v11;
  v34 = v28;
  v22 = v14;
  v33 = v22;
  v23 = _Block_copy(aBlock);
  v24 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v25 = [v24 requestPlayerItemForVideo:v22 options:v12 resultHandler:v23];

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v52, 8);
  return v25;
}

void __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) uuid];
      *buf = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Error analyzing video for safety: %{public}@, error: %@", buf, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_274;
  block[3] = &unk_1E7739530;
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v8 = *(a1 + 88);
  v13 = *(a1 + 72);
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_277(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v10 = v6;
    v11 = v5;
    v7 = [MEMORY[0x1E6978AB0] protectImageManagerResult:v5 outVideoItem:&v11 infoDictionary:v6 outInfoDictionary:&v10 forVideoRequestFromAsset:*(a1 + 32) requestAnalysisIfUnprocessed:0];
    v8 = v11;

    v9 = v10;
    (*(*(a1 + 40) + 16))();
    v5 = v8;
    v6 = v9;
  }
}

void __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  *(*(*(a1 + 56) + 8) + 24) = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_4;
  v14[3] = &unk_1E77395A8;
  v15 = *(a1 + 32);
  v19 = *(a1 + 48);
  v11 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = a3;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
  v8 = [v7 BOOLValue];

  v9 = v5 != 0;
  if (!v5 && v8)
  {
    v9 = *(a1 + 96) ^ 1;
  }

  *(*(*(a1 + 64) + 8) + 24) = v9 & 1;
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  v11 = *(*(a1 + 72) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_6;
    block[3] = &unk_1E7749A28;
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    v27 = v15;
    v28 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v17 = v27;
  }

  else if (*(a1 + 40) && *(*(*(a1 + 88) + 8) + 24) != 1)
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      goto LABEL_10;
    }

    v17 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = [*(a1 + 48) uuid];
      v21 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "Image manager failed to retrieve player item for asset: %{public}@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_7;
    v22[3] = &unk_1E7744670;
    v18 = *(a1 + 32);
    v19 = *(a1 + 80);
    v23 = v18;
    v24 = v19;
    v25 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], v22);
    v17 = v23;
  }

LABEL_10:
}

uint64_t __77__PXPhotoKitUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_274(void *a1)
{
  result = [PXPhotoKitUIMediaProvider configureLoadingStatusManager:a1[4] andVideoProgressHandler:a1[6] withVideoSensitivityProcessingProgress:a1[5] imageManagerRequestProgress:*(*(a1[8] + 8) + 40) loadOperationTrackingID:0 stop:0 info:*(*(a1[7] + 8) + 24) error:0];
  if (*(*(a1[7] + 8) + 24) >= 1.0)
  {
    v3 = a1[4];
    v4 = *(*(a1[8] + 8) + 40);
    v5 = *(*(a1[9] + 8) + 24);
    v6 = *(*(a1[10] + 8) + 40);

    return [v3 didCompleteLoadOperationWithTrackingID:v4 withSuccess:v5 error:v6];
  }

  return result;
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:PHAsset.class]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v12 = [v10 photoKitRequestOptions];
  [v12 setLoadingMode:0x10000];
  v13 = [(PXPhotoKitUIMediaProvider *)self searchResultContextualVideoThumbnailIdentifiers];
  v14 = [v9 uuid];
  v15 = [v13 objectForKeyedSubscript:v14];
  [v12 setContextualVideoThumbnailIdentifier:v15];

  v16 = _Block_copy(v11);
  v17 = [(PXMediaProvider *)self loadingStatusManager];
  if (v17)
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__108787;
    v34[4] = __Block_byref_object_dispose__108788;
    v34[5] = 0;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
    v30 = &unk_1E7746448;
    v33 = v34;
    v31 = v17;
    v32 = v9;
    px_dispatch_on_main_queue();
  }

  v18 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_6;
  v25[3] = &unk_1E774B680;
  v26 = v16;
  v19 = *MEMORY[0x1E6978E30];
  v20 = *(MEMORY[0x1E6978E30] + 8);
  v21 = v16;
  v22 = [v18 requestImageForAsset:v9 targetSize:0 contentMode:v12 options:v25 resultHandler:{v19, v20}];

  return v22;
}

void __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E77477B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_5;
  v12[3] = &unk_1E77448A8;
  v13 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v15 = v5;
  v16 = v9;
  v14 = v8;
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E6978E20];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  (*(*(a1 + 32) + 16))();
}

void __75__PXPhotoKitUIMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 48) != 0;
      v9 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v8 error:v9];
    }
  }
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:321 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v12 = [v10 photoKitRequestOptions];
  v13 = [(PXPhotoKitUIMediaProvider *)self searchResultContextualVideoThumbnailIdentifiers];
  v14 = [v9 uuid];
  v15 = [v13 objectForKeyedSubscript:v14];
  [v12 setContextualVideoThumbnailIdentifier:v15];

  v16 = _Block_copy(v11);
  v17 = [(PXMediaProvider *)self loadingStatusManager];
  if (v17)
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__108787;
    v32[4] = __Block_byref_object_dispose__108788;
    v32[5] = 0;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
    v28 = &unk_1E7746448;
    v31 = v32;
    v29 = v17;
    v30 = v9;
    px_dispatch_on_main_queue();
  }

  v18 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_6;
  v23[3] = &unk_1E77394E0;
  v24 = v16;
  v19 = v16;
  v20 = [v18 requestImageDataAndOrientationForAsset:v9 options:v12 resultHandler:v23];

  return v20;
}

void __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E77477B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, a3, a4, v10);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_5;
  block[3] = &unk_1E7739468;
  v17 = v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v19 = v9;
  v20 = v13;
  v18 = v12;
  v21 = *(a1 + 56);
  v14 = v9;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_6(uint64_t result, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (*(result + 32))
  {
    v7 = a5;
    v8 = a3;
    a2;
    PXImageOrientationFromCGImagePropertyOrientation();
  }

  return result;
}

void __76__PXPhotoKitUIMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
    v7 = [v6 BOOLValue];

    v8 = *(a1 + 48);
    v9 = v8 != 0;
    if (!v8 && v7)
    {
      v9 = *(a1 + 64) ^ 1;
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v9 & 1 error:v10];
  }
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = v13;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = objc_opt_class();
    v32 = NSStringFromClass(v33);
    v34 = [v16 px_descriptionForAssertionMessage];
    [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:199 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v32, v34}];
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    [v30 handleFailureInMethod:a2 object:self file:@"PXPhotoKitUIMediaProvider.m" lineNumber:199 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v32}];
  }

LABEL_3:
  [(PXPhotoKitUIMediaProvider *)self _noteActivity];
  v17 = [v14 photoKitRequestOptions];
  v18 = [(PXPhotoKitUIMediaProvider *)self searchResultContextualVideoThumbnailIdentifiers];
  v19 = [v16 uuid];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v17 setContextualVideoThumbnailIdentifier:v20];

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7739418;
  v41[1] = *&width;
  v41[2] = *&height;
  aBlock[4] = self;
  v21 = v16;
  v39 = v21;
  objc_copyWeak(v41, location);
  v22 = v15;
  v40 = v22;
  v23 = _Block_copy(aBlock);
  v24 = [(PXMediaProvider *)self loadingStatusManager];
  v25 = [v14 avoidDisplayingProgressUpdates];
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  v35 = v22;
  if ((v26 & 1) == 0)
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__108787;
    v37[4] = __Block_byref_object_dispose__108788;
    v37[5] = 0;
    v24;
    v21;
    px_dispatch_on_main_queue();
  }

  v27 = [(PXPhotoKitUIMediaProvider *)self imageManager];
  v28 = [v27 requestImageForAsset:v21 targetSize:a5 contentMode:v17 options:v23 resultHandler:{width, height}];

  objc_destroyWeak(v41);
  objc_destroyWeak(location);

  return v28;
}

void __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) * *(a1 + 72) >= *(*(a1 + 32) + 40) * *(*(a1 + 32) + 48))
  {
    v8 = 1;
  }

  else
  {
    v7 = +[PXLemonadeSettings sharedInstance];
    v8 = [v7 enableLiveBlurForAllAssets];
  }

  v23 = v6;
  v24 = v5;
  [MEMORY[0x1E6978AB0] protectImageManagerResult:v5 outImage:&v24 infoDictionary:v6 outInfoDictionary:&v23 forImageRequestFromAsset:*(a1 + 40) applyLiveBlurIfSensitive:v8];
  v9 = v24;

  v10 = v23;
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  v12 = [v11 unsignedIntegerValue];

  v13 = v12 - 9997;
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E68]];
  v15 = [v14 BOOLValue];

  if (v9 && (v15 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _noteActivity];
  }

  v17 = v10;
  v18 = v17;
  v19 = v17;
  if ((v13 < 4) | v15 & 1)
  {
    v19 = [v17 mutableCopy];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v13 < 4];
    [v19 setObject:v20 forKeyedSubscript:*off_1E77220A8];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    [v19 setObject:v21 forKeyedSubscript:*off_1E77220B0];
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    (*(v22 + 16))(v22, v9, v19);
  }
}

void __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_259(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E77477B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5;
  block[3] = &unk_1E7739468;
  v13 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v15 = v5;
  v16 = v9;
  v14 = v8;
  v17 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __95__PXPhotoKitUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);

    [v4 didCancelLoadOperationWithTrackingID:v5];
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E60]];
      v9 = [v8 BOOLValue];

      v14 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E20]];
      v10 = *(a1 + 48) | v14;
      v11 = v10 != 0;
      if (v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 == 0;
      }

      if (!v12)
      {
        v11 = *(a1 + 64) ^ 1;
      }

      v13 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
      [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v11 & 1 error:v13];
    }
  }
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [v13 cleanUpDecodeBuffers];
  v17 = v13;
  v18 = [(PXPhotoKitUIMediaProvider *)self searchResultContextualVideoThumbnailIdentifiers];
  v19 = [v15 uuid];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v17 setContextualVideoThumbnailIdentifier:v20];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__PXPhotoKitUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v25[3] = &unk_1E77393F0;
  v26 = v14;
  v27 = v16;
  v24.receiver = self;
  v24.super_class = PXPhotoKitUIMediaProvider;
  v21 = v14;
  v22 = [(PXUIMediaProvider *)&v24 requestCGImageForAsset:v15 targetSize:a5 contentMode:v17 options:v25 resultHandler:width, height];

  return v22;
}

void __97__PXPhotoKitUIMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = v7;
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3, v7);
    v7 = v9;
  }

  if (*(a1 + 40) == 1)
  {
    PFSharedFigDecodeSessionDiscardCachedBuffers();
    v7 = v9;
  }
}

- (PXPhotoKitUIMediaProvider)init
{
  v3 = [MEMORY[0x1E6978860] defaultManager];
  v4 = [(PXPhotoKitUIMediaProvider *)self initWithImageManager:v3];

  return v4;
}

- (PXPhotoKitUIMediaProvider)initWithImageManager:(id)a3
{
  v4 = MEMORY[0x1E69789A8];
  v5 = a3;
  v6 = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PXPhotoKitUIMediaProvider *)self initWithImageManager:v5 library:v6];

  return v7;
}

- (PXPhotoKitUIMediaProvider)initWithImageManager:(id)a3 library:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v48.receiver = self;
  v48.super_class = PXPhotoKitUIMediaProvider;
  v9 = [(PXPhotoKitUIMediaProvider *)&v48 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a4);
    objc_storeStrong(&v10->_imageManager, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v10->_cachingImageManager, v11);
    v12 = MEMORY[0x1E69786F8];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isTable = YES"];
    v14 = [v12 allQualityClassesMatchingPredicate:v13 inLibrary:v8];
    thumbnailQualityClasses = v10->_thumbnailQualityClasses;
    v10->_thumbnailQualityClasses = v14;

    v16 = [off_1E7721920 sharedInstance];
    v17 = [v16 thumbnailCacheSize];
    if (v17)
    {
      v18 = v17;
      v41 = v16;
      v19 = v8;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v42 = v10;
      obj = v10->_thumbnailQualityClasses;
      v22 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = v18 << 20;
        v25 = *v45;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v44 + 1) + 8 * i);
            v28 = [[PXPhotoKitThumbnailCache alloc] initWithSizeLimit:v24 photoLibrary:v19];
            v29 = [v27 description];
            [(PXPhotoKitThumbnailCache *)v28 setLabel:v29];

            [v20 addObject:v28];
            v30 = [[PXPreheatInfo alloc] initWithFetchResult:0 origin:0];
            [(NSMutableArray *)v21 addObject:v30];
          }

          v23 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v23);
      }

      v31 = [v20 copy];
      v10 = v42;
      thumbnailCaches = v42->_thumbnailCaches;
      v42->_thumbnailCaches = v31;

      preheatLock_preheatStates = v42->_preheatLock_preheatStates;
      v42->_preheatLock_preheatStates = v21;

      v8 = v19;
      v16 = v41;
    }

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_videoThumbnailIdentifiersLock._os_unfair_lock_opaque = 0;
    v10->_preheatlock._os_unfair_lock_opaque = 0;
    v34 = [off_1E77217A8 preheatQueue];
    preheatQueue = v10->_preheatQueue;
    v10->_preheatQueue = v34;

    atomic_store(0, &v10->_lastActivity);
    v36 = [MEMORY[0x1E69BF248] defaultFormatChooser];
    v37 = [v36 masterThumbnailFormat];

    [v37 sizeWithFallBackSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v10->_masterThumbnailSize.width = v38;
    v10->_masterThumbnailSize.height = v39;
  }

  return v10;
}

+ (void)configureLoadingStatusManager:(id)a3 andVideoProgressHandler:(id)a4 withVideoSensitivityProcessingProgress:(id)a5 imageManagerRequestProgress:(double)a6 loadOperationTrackingID:(id)a7 stop:(BOOL *)a8 info:(id)a9 error:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  if (v18)
  {
    [v18 fractionCompleted];
    a6 = (v22 + a6) * 0.5;
  }

  if (v17)
  {
    v24 = 0;
    if (a8)
    {
      v23 = a8;
    }

    else
    {
      v23 = &v24;
    }

    v17[2](v17, v21, v23, v20, a6);
  }

  [v16 didUpdateLoadOperationWithTrackingID:v19 withProgress:a6];
}

+ (PXPhotoKitUIMediaProvider)mediaProviderWithLibrary:(id)a3
{
  v4 = a3;
  v5 = [a1 _defaultImageManager];
  v6 = [[a1 alloc] initWithImageManager:v5 library:v4];

  v7 = [a1 _defaultLoadingStatusManager];
  [v6 setLoadingStatusManager:v7];

  return v6;
}

@end