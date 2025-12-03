@interface PXMediaProviderImageCacher
- (PXMediaProvider)mediaProvider;
- (PXMediaProviderImageCacher)initWithMediaProvider:(id)provider;
- (void)startCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
- (void)stopCachingImagesForAllAssets;
- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options;
@end

@implementation PXMediaProviderImageCacher

- (PXMediaProvider)mediaProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaProvider);

  return WeakRetained;
}

- (void)stopCachingImagesForAllAssets
{
  requestCountByCacheSpec = [(PXMediaProviderImageCacher *)self requestCountByCacheSpec];
  [requestCountByCacheSpec removeAllObjects];

  requestIDByCacheSpec = [(PXMediaProviderImageCacher *)self requestIDByCacheSpec];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PXMediaProviderImageCacher_stopCachingImagesForAllAssets__block_invoke;
  v6[3] = &unk_1E7748368;
  v6[4] = self;
  [requestIDByCacheSpec enumerateKeysAndObjectsUsingBlock:v6];

  requestIDByCacheSpec2 = [(PXMediaProviderImageCacher *)self requestIDByCacheSpec];
  [requestIDByCacheSpec2 removeAllObjects];
}

void __59__PXMediaProviderImageCacher_stopCachingImagesForAllAssets__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 mediaProvider];
  v5 = [v4 integerValue];

  [v6 cancelImageRequest:v5];
}

- (void)stopCachingImagesForAssets:(id)assets targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PXMediaProviderImageCacher_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  modeCopy = mode;
  v14 = optionsCopy;
  selfCopy = self;
  v12 = optionsCopy;
  [assets enumerateObjectsUsingBlock:v13];
}

void __88__PXMediaProviderImageCacher_stopCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = [[PXImageRequestDescriptor alloc] initWithAsset:v3 targetSize:*(a1 + 64) contentMode:*(a1 + 32) options:*(a1 + 48), *(a1 + 56)];

  v4 = [*(a1 + 40) requestIDByCacheSpec];
  v5 = [v4 objectForKeyedSubscript:v12];

  if (v5)
  {
    v6 = [*(a1 + 40) requestCountByCacheSpec];
    [v6 removeObject:v12];

    v7 = [*(a1 + 40) requestCountByCacheSpec];
    v8 = [v7 countForObject:v12];

    if (!v8)
    {
      v9 = [v5 integerValue];
      v10 = [*(a1 + 40) mediaProvider];
      [v10 cancelImageRequest:v9];

      v11 = [*(a1 + 40) requestIDByCacheSpec];
      [v11 setObject:0 forKeyedSubscript:v12];
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
  v13[2] = __89__PXMediaProviderImageCacher_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke;
  v13[3] = &unk_1E7748340;
  v16 = width;
  v17 = height;
  modeCopy = mode;
  v14 = optionsCopy;
  selfCopy = self;
  v12 = optionsCopy;
  [assets enumerateObjectsUsingBlock:v13];
}

void __89__PXMediaProviderImageCacher_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PXImageRequestDescriptor alloc] initWithAsset:v3 targetSize:*(a1 + 64) contentMode:*(a1 + 32) options:*(a1 + 48), *(a1 + 56)];
  v5 = [*(a1 + 40) requestIDByCacheSpec];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [*(a1 + 40) mediaProvider];
    v8 = *(a1 + 64);
    v9 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__PXMediaProviderImageCacher_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2;
    v14[3] = &unk_1E7748318;
    v15 = v3;
    v10 = [v7 requestCGImageForAsset:v15 targetSize:v8 contentMode:v9 options:v14 resultHandler:{*(a1 + 48), *(a1 + 56)}];

    v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v12 = [*(a1 + 40) requestIDByCacheSpec];
    [v12 setObject:v11 forKeyedSubscript:v4];
  }

  v13 = [*(a1 + 40) requestCountByCacheSpec];
  [v13 addObject:v4];
}

void __89__PXMediaProviderImageCacher_startCachingImagesForAssets_targetSize_contentMode_options___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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

- (PXMediaProviderImageCacher)initWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PXMediaProviderImageCacher;
  v5 = [(PXMediaProviderImageCacher *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mediaProvider, providerCopy);
    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    requestCountByCacheSpec = v6->_requestCountByCacheSpec;
    v6->_requestCountByCacheSpec = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestIDByCacheSpec = v6->_requestIDByCacheSpec;
    v6->_requestIDByCacheSpec = v9;
  }

  return v6;
}

@end