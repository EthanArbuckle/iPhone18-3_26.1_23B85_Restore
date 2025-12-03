@interface PXSimulatedUIMediaProvider
+ (id)defaultMediaProviderWithMediaProvider:(id)provider;
- (PXSimulatedUIMediaProvider)init;
- (PXSimulatedUIMediaProvider)initWithMediaProvider:(id)provider;
- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
@end

@implementation PXSimulatedUIMediaProvider

- (int64_t)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  v9 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:options simulatedResultHandler:handler];
  mediaProvider = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  simulatedOptions = [v9 simulatedOptions];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PXSimulatedUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7743ED8;
  v16 = v9;
  v12 = v9;
  v13 = [mediaProvider requestAnimatedImageForAsset:assetCopy options:simulatedOptions resultHandler:v15];

  return v13;
}

void __81__PXSimulatedUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXSimulatedUIMediaProvider requestAnimatedImageForAsset:options:resultHandler:]_block_invoke"];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v12 px_descriptionForAssertionMessage];
      [v7 handleFailureInFunction:v8 file:@"PXSimulatedUIMediaProvider.m" lineNumber:113 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"result", v10, v11}];
    }
  }

  [*(a1 + 32) handleOriginalResult:v12 info:v6];
}

- (int64_t)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v14 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:options simulatedResultHandler:handler];
  mediaProvider = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  simulatedOptions = [v14 simulatedOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PXSimulatedUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7743EB0;
  v21 = v14;
  v17 = v14;
  v18 = [mediaProvider requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:simulatedOptions options:v20 resultHandler:{width, height}];

  return v18;
}

void __100__PXSimulatedUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXSimulatedUIMediaProvider requestLivePhotoForAsset:targetSize:contentMode:options:resultHandler:]_block_invoke"];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v12 px_descriptionForAssertionMessage];
      [v7 handleFailureInFunction:v8 file:@"PXSimulatedUIMediaProvider.m" lineNumber:104 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"result", v10, v11}];
    }
  }

  [*(a1 + 32) handleOriginalResult:v12 info:v6];
}

- (int64_t)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  v9 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:options simulatedResultHandler:handler];
  mediaProvider = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  simulatedOptions = [v9 simulatedOptions];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PXSimulatedUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7743E88;
  v16 = v9;
  v12 = v9;
  v13 = [mediaProvider requestPlayerItemForVideo:videoCopy options:simulatedOptions resultHandler:v15];

  return v13;
}

- (int64_t)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  v14 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:options simulatedResultHandler:handler];
  mediaProvider = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  simulatedOptions = [v14 simulatedOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PXSimulatedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7745FE8;
  v21 = v14;
  v17 = v14;
  v18 = [mediaProvider requestImageForAsset:assetCopy targetSize:mode contentMode:simulatedOptions options:v20 resultHandler:{width, height}];

  return v18;
}

- (PXSimulatedUIMediaProvider)initWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PXSimulatedUIMediaProvider;
  v6 = [(PXSimulatedUIMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProvider, provider);
  }

  return v7;
}

- (PXSimulatedUIMediaProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSimulatedUIMediaProvider.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXSimulatedUIMediaProvider init]"}];

  abort();
}

+ (id)defaultMediaProviderWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[PXMediaProviderSettings sharedInstance];
  if ([v4 wantsSimulation])
  {
    v5 = [[PXSimulatedUIMediaProvider alloc] initWithMediaProvider:providerCopy];
  }

  else
  {
    v5 = providerCopy;
  }

  v6 = v5;

  return v6;
}

@end