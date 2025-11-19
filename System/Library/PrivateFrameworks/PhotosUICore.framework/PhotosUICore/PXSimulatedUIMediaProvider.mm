@interface PXSimulatedUIMediaProvider
+ (id)defaultMediaProviderWithMediaProvider:(id)a3;
- (PXSimulatedUIMediaProvider)init;
- (PXSimulatedUIMediaProvider)initWithMediaProvider:(id)a3;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
@end

@implementation PXSimulatedUIMediaProvider

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:a4 simulatedResultHandler:a5];
  v10 = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  v11 = [v9 simulatedOptions];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PXSimulatedUIMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7743ED8;
  v16 = v9;
  v12 = v9;
  v13 = [v10 requestAnimatedImageForAsset:v8 options:v11 resultHandler:v15];

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

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:a6 simulatedResultHandler:a7];
  v15 = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  v16 = [v14 simulatedOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__PXSimulatedUIMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7743EB0;
  v21 = v14;
  v17 = v14;
  v18 = [v15 requestLivePhotoForAsset:v13 targetSize:a5 contentMode:v16 options:v20 resultHandler:{width, height}];

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

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:a4 simulatedResultHandler:a5];
  v10 = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  v11 = [v9 simulatedOptions];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PXSimulatedUIMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
  v15[3] = &unk_1E7743E88;
  v16 = v9;
  v12 = v9;
  v13 = [v10 requestPlayerItemForVideo:v8 options:v11 resultHandler:v15];

  return v13;
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = [(PXSimulatedUIMediaProvider *)self _simulatedMediaRequestWithOriginalOptions:a6 simulatedResultHandler:a7];
  v15 = [(PXSimulatedUIMediaProvider *)self mediaProvider];
  v16 = [v14 simulatedOptions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__PXSimulatedUIMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v20[3] = &unk_1E7745FE8;
  v21 = v14;
  v17 = v14;
  v18 = [v15 requestImageForAsset:v13 targetSize:a5 contentMode:v16 options:v20 resultHandler:{width, height}];

  return v18;
}

- (PXSimulatedUIMediaProvider)initWithMediaProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXSimulatedUIMediaProvider;
  v6 = [(PXSimulatedUIMediaProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProvider, a3);
  }

  return v7;
}

- (PXSimulatedUIMediaProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSimulatedUIMediaProvider.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXSimulatedUIMediaProvider init]"}];

  abort();
}

+ (id)defaultMediaProviderWithMediaProvider:(id)a3
{
  v3 = a3;
  v4 = +[PXMediaProviderSettings sharedInstance];
  if ([v4 wantsSimulation])
  {
    v5 = [[PXSimulatedUIMediaProvider alloc] initWithMediaProvider:v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

@end