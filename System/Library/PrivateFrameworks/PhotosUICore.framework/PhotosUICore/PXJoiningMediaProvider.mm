@interface PXJoiningMediaProvider
- (PXJoiningMediaProvider)init;
- (PXJoiningMediaProvider)initWithMediaProvidersByKey:(id)a3 keyBlock:(id)a4;
- (id)_mediaProviderForAsset:(id)a3;
- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6;
- (int64_t)_externalRequestIDForMediaProvider:(id)a3 mediaProviderRequestID:(int64_t)a4;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int64_t)a3;
- (void)startCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6;
@end

@implementation PXJoiningMediaProvider

- (int64_t)_externalRequestIDForMediaProvider:(id)a3 mediaProviderRequestID:(int64_t)a4
{
  v7 = a3;
  v8 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v9 = [v8 indexOfObject:v7];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:171 description:{@"Encountered unknown media provider %@", v7}];
  }

  v10 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v11 = v9 + [v10 count] * a4;

  return v11;
}

- (id)_mediaProviderForAsset:(id)a3
{
  v5 = a3;
  v6 = [(PXJoiningMediaProvider *)self mediaProvidersByKey];
  v7 = [(PXJoiningMediaProvider *)self keyBlock];
  v8 = (v7)[2](v7, v5);
  v9 = [v6 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:165 description:{@"Unable to find media provider for asset %@", v5}];
  }

  return v9;
}

- (void)stopCachingImagesForAllAssets
{
  v3 = [(PXJoiningMediaProvider *)self requestCountByCacheSpec];
  [v3 removeAllObjects];

  v4 = [(PXJoiningMediaProvider *)self requestIDByCacheSpec];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXJoiningMediaProvider_stopCachingImagesForAllAssets__block_invoke;
  v6[3] = &unk_1E7748368;
  v6[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  v5 = [(PXJoiningMediaProvider *)self requestIDByCacheSpec];
  [v5 removeAllObjects];
}

uint64_t __55__PXJoiningMediaProvider_stopCachingImagesForAllAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
  v13[2] = __84__PXJoiningMediaProvider_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  v18 = a5;
  v14 = v11;
  v15 = self;
  v12 = v11;
  [a3 enumerateObjectsUsingBlock:v13];
}

void __84__PXJoiningMediaProvider_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
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
  v13[2] = __85__PXJoiningMediaProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  v18 = a5;
  v14 = v11;
  v15 = self;
  v12 = v11;
  [a3 enumerateObjectsUsingBlock:v13];
}

void __85__PXJoiningMediaProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
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
    v14[2] = __85__PXJoiningMediaProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2;
    v14[3] = &unk_1E7748318;
    v15 = v3;
    v10 = [v8 requestCGImageForAsset:v15 targetSize:v7 contentMode:v9 options:v14 resultHandler:{*(a1 + 48), *(a1 + 56)}];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v12 = [*(a1 + 40) requestIDByCacheSpec];
    [v12 setObject:v11 forKeyedSubscript:v4];
  }

  v13 = [*(a1 + 40) requestCountByCacheSpec];
  [v13 addObject:v4];
}

void __85__PXJoiningMediaProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = PLAudioPlaybackGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "Finished caching image for asset %@: ; Info: %@", &v8, 0x16u);
  }
}

- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6
{
  v7 = a5;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v11];
  v13 = [v12 thumbnailDataForAsset:v11 targetSize:v7 onlyFromCache:a6 outDataSpec:{width, height}];

  return v13;
}

- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestStreamForVideo:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestURLForVideo:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestAnimatedImageForAsset:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v15];
  v17 = [v16 requestLivePhotoForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  v18 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v16 mediaProviderRequestID:v17];
  return v18;
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestPlayerItemForVideo:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestImageURLForAsset:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v10];
  v12 = [v11 requestImageDataForAsset:v10 options:v9 resultHandler:v8];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:v15];
  v17 = [v16 requestCGImageForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  v18 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v16 mediaProviderRequestID:v17];
  return v18;
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PXJoiningMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v17[3] = &unk_1E7743A58;
  v18 = v13;
  v14 = v13;
  v15 = [(PXJoiningMediaProvider *)self requestCGImageForAsset:a3 targetSize:a5 contentMode:a6 options:v17 resultHandler:width, height];

  return v15;
}

void __92__PXJoiningMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v7 = MEMORY[0x1E69DCAB8];
    v8 = a4;
    v10 = [[v7 alloc] initWithCGImage:a2 scale:a3 orientation:0.0];
    (*(v4 + 16))(v4);
  }

  else
  {
    v9 = *(v4 + 16);
    v10 = a4;
    v9(v4, 0);
  }
}

- (void)cancelImageRequest:(int64_t)a3
{
  v5 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v6 = [v5 count];

  v7 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v8 = [v7 objectAtIndexedSubscript:a3 % v6];

  [v8 cancelImageRequest:a3 / v6];
}

- (PXJoiningMediaProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXJoiningMediaProvider init]"}];

  abort();
}

- (PXJoiningMediaProvider)initWithMediaProvidersByKey:(id)a3 keyBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PXJoiningMediaProvider;
  v8 = [(PXJoiningMediaProvider *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    mediaProvidersByKey = v8->_mediaProvidersByKey;
    v8->_mediaProvidersByKey = v9;

    v11 = [v6 allValues];
    allMediaProviders = v8->_allMediaProviders;
    v8->_allMediaProviders = v11;

    v13 = _Block_copy(v7);
    keyBlock = v8->_keyBlock;
    v8->_keyBlock = v13;
  }

  return v8;
}

NSString *__65__PXJoiningMediaProvider_initWithMediaProvidersByAssetClassName___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end