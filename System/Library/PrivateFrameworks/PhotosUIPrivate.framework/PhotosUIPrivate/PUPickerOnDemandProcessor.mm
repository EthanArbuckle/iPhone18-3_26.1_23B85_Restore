@interface PUPickerOnDemandProcessor
- (PUPickerOnDemandProcessor)initWithConfiguration:(id)configuration;
- (void)_performOnDemandStaticStickerScoringProcessingForRecentAssets:(id)assets;
- (void)dealloc;
- (void)performOnDemandProcessingWithCanDisplayUserInterfaceHandler:(id)handler;
@end

@implementation PUPickerOnDemandProcessor

- (void)_performOnDemandStaticStickerScoringProcessingForRecentAssets:(id)assets
{
  v22[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  service = [(PUPickerOnDemandProcessor *)self service];
  [service cancelRequest:{-[PUPickerOnDemandProcessor stickerScoringRequestID](self, "stickerScoringRequestID")}];

  v6 = PXSharedUserDefaults();
  v7 = [v6 integerForKey:@"PickerStickerScoreOnDemandTarget"];

  if (v7 >= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 100;
  }

  service2 = [(PUPickerOnDemandProcessor *)self service];
  configuration = [(PUPickerOnDemandProcessor *)self configuration];
  photoLibrary = [configuration photoLibrary];
  v21 = *MEMORY[0x1E69AE288];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v22[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __91__PUPickerOnDemandProcessor__performOnDemandStaticStickerScoringProcessingForRecentAssets___block_invoke;
  v19 = &unk_1E7B76B58;
  v20 = assetsCopy;
  v14 = assetsCopy;
  v15 = [service2 requestStaticStickerScoringForLibrary:photoLibrary options:v13 completionHandler:&v16];
  [(PUPickerOnDemandProcessor *)self setStickerScoringRequestID:v15, v16, v17, v18, v19];
}

void __91__PUPickerOnDemandProcessor__performOnDemandStaticStickerScoringProcessingForRecentAssets___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = PLPickerGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Can't complete async on demand static sticker scoring processing with error: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v7, v8, v6, &v10, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    v6 = "Finished async on demand static sticker scoring processing.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
    goto LABEL_6;
  }
}

- (void)performOnDemandProcessingWithCanDisplayUserInterfaceHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke;
  aBlock[3] = &unk_1E7B7E8B0;
  v18 = v19;
  v5 = handlerCopy;
  v17 = v5;
  v6 = _Block_copy(aBlock);
  configuration = [(PUPickerOnDemandProcessor *)self configuration];
  generatedFilter = [configuration generatedFilter];
  containsStickersFilter = [generatedFilter containsStickersFilter];

  if (containsStickersFilter)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke_2;
    v14[3] = &unk_1E7B80C88;
    v10 = v6;
    v15 = v10;
    [(PUPickerOnDemandProcessor *)self _performOnDemandStaticStickerScoringProcessingForRecentAssets:v14];
    v11 = dispatch_time(0, 1000000000);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke_4;
    v12[3] = &unk_1E7B80C88;
    v13 = v10;
    dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v6[2](v6);
  }

  _Block_object_dispose(v19, 8);
}

uint64_t __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    result = (*(*(result + 32) + 16))();
    v1 = *(*(v2 + 40) + 8);
  }

  *(v1 + 24) = 0;
  return result;
}

void __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__PUPickerOnDemandProcessor_performOnDemandProcessingWithCanDisplayUserInterfaceHandler___block_invoke_3;
  block[3] = &unk_1E7B80C88;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  service = [(PUPickerOnDemandProcessor *)self service];
  [service cancelRequest:{-[PUPickerOnDemandProcessor stickerScoringRequestID](self, "stickerScoringRequestID")}];

  v4.receiver = self;
  v4.super_class = PUPickerOnDemandProcessor;
  [(PUPickerOnDemandProcessor *)&v4 dealloc];
}

- (PUPickerOnDemandProcessor)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = PUPickerOnDemandProcessor;
  v6 = [(PUPickerOnDemandProcessor *)&v10 init];
  if (v6)
  {
    analysisService = [MEMORY[0x1E69AE230] analysisService];
    service = v6->_service;
    v6->_service = analysisService;

    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v6;
}

@end