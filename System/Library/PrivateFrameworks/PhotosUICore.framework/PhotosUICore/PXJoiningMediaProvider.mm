@interface PXJoiningMediaProvider
- (PXJoiningMediaProvider)init;
- (PXJoiningMediaProvider)initWithMediaProvidersByKey:(id)key keyBlock:(id)block;
- (id)_mediaProviderForAsset:(id)asset;
- (id)thumbnailDataForAsset:(id)asset targetSize:(CGSize)size onlyFromCache:(BOOL)cache outDataSpec:(PXMediaProviderThumbnailDataSpec *)spec;
- (int64_t)_externalRequestIDForMediaProvider:(id)provider mediaProviderRequestID:(int64_t)d;
- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int64_t)requestStreamForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int64_t)requestURLForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int64_t)request;
- (void)startCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
@end

@implementation PXJoiningMediaProvider

- (int64_t)_externalRequestIDForMediaProvider:(id)provider mediaProviderRequestID:(int64_t)d
{
  providerCopy = provider;
  allMediaProviders = [(PXJoiningMediaProvider *)self allMediaProviders];
  v9 = [allMediaProviders indexOfObject:providerCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:171 description:{@"Encountered unknown media provider %@", providerCopy}];
  }

  allMediaProviders2 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v11 = v9 + [allMediaProviders2 count] * d;

  return v11;
}

- (id)_mediaProviderForAsset:(id)asset
{
  assetCopy = asset;
  mediaProvidersByKey = [(PXJoiningMediaProvider *)self mediaProvidersByKey];
  keyBlock = [(PXJoiningMediaProvider *)self keyBlock];
  v8 = (keyBlock)[2](keyBlock, assetCopy);
  v9 = [mediaProvidersByKey objectForKeyedSubscript:v8];

  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:165 description:{@"Unable to find media provider for asset %@", assetCopy}];
  }

  return v9;
}

- (void)stopCachingImagesForAllAssets
{
  requestCountByCacheSpec = [(PXJoiningMediaProvider *)self requestCountByCacheSpec];
  [requestCountByCacheSpec removeAllObjects];

  requestIDByCacheSpec = [(PXJoiningMediaProvider *)self requestIDByCacheSpec];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXJoiningMediaProvider_stopCachingImagesForAllAssets__block_invoke;
  v6[3] = &unk_1E7748368;
  v6[4] = self;
  [requestIDByCacheSpec enumerateKeysAndObjectsUsingBlock:v6];

  requestIDByCacheSpec2 = [(PXJoiningMediaProvider *)self requestIDByCacheSpec];
  [requestIDByCacheSpec2 removeAllObjects];
}

uint64_t __55__PXJoiningMediaProvider_stopCachingImagesForAllAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 integerValue];

  return [v3 cancelImageRequest:v4];
}

- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PXJoiningMediaProvider_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  modeCopy = mode;
  v14 = optionsCopy;
  selfCopy = self;
  v12 = optionsCopy;
  [assets enumerateObjectsUsingBlock:v13];
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

- (void)startCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PXJoiningMediaProvider_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  modeCopy = mode;
  v14 = optionsCopy;
  selfCopy = self;
  v12 = optionsCopy;
  [assets enumerateObjectsUsingBlock:v13];
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

- (id)thumbnailDataForAsset:(id)asset targetSize:(CGSize)size onlyFromCache:(BOOL)cache outDataSpec:(PXMediaProviderThumbnailDataSpec *)spec
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v12 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v13 = [v12 thumbnailDataForAsset:assetCopy targetSize:cacheCopy onlyFromCache:spec outDataSpec:{width, height}];

  return v13;
}

- (int64_t)requestStreamForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:videoCopy];
  v12 = [v11 requestStreamForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestURLForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:videoCopy];
  v12 = [v11 requestURLForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v12 = [v11 requestAnimatedImageForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v17 = [v16 requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  v18 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v16 mediaProviderRequestID:v17];
  return v18;
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:videoCopy];
  v12 = [v11 requestPlayerItemForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v12 = [v11 requestImageURLForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v12 = [v11 requestImageDataForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  v13 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v11 mediaProviderRequestID:v12];
  return v13;
}

- (int64_t)requestCGImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [(PXJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy];
  v17 = [v16 requestCGImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  v18 = [(PXJoiningMediaProvider *)self _externalRequestIDForMediaProvider:v16 mediaProviderRequestID:v17];
  return v18;
}

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __92__PXJoiningMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v17[3] = &unk_1E7743A58;
  v18 = handlerCopy;
  v14 = handlerCopy;
  height = [(PXJoiningMediaProvider *)self requestCGImageForAsset:asset targetSize:mode contentMode:options options:v17 resultHandler:width, height];

  return height;
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

- (void)cancelImageRequest:(int64_t)request
{
  allMediaProviders = [(PXJoiningMediaProvider *)self allMediaProviders];
  v6 = [allMediaProviders count];

  allMediaProviders2 = [(PXJoiningMediaProvider *)self allMediaProviders];
  v8 = [allMediaProviders2 objectAtIndexedSubscript:request % v6];

  [v8 cancelImageRequest:request / v6];
}

- (PXJoiningMediaProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXJoiningMediaProvider.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXJoiningMediaProvider init]"}];

  abort();
}

- (PXJoiningMediaProvider)initWithMediaProvidersByKey:(id)key keyBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = PXJoiningMediaProvider;
  v8 = [(PXJoiningMediaProvider *)&v16 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    mediaProvidersByKey = v8->_mediaProvidersByKey;
    v8->_mediaProvidersByKey = v9;

    allValues = [keyCopy allValues];
    allMediaProviders = v8->_allMediaProviders;
    v8->_allMediaProviders = allValues;

    v13 = _Block_copy(blockCopy);
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