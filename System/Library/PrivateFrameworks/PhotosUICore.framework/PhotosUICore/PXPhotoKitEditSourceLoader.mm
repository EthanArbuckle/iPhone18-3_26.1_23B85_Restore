@interface PXPhotoKitEditSourceLoader
- (NSString)contentIdentifier;
- (PXPhotoKitEditSourceLoader)initWithAsset:(id)a3;
- (void)_cancelContentInputRequest;
- (void)_handleCancellation;
- (void)_handleContentEditingInputRequestCompletion:(id)a3 info:(id)a4 asset:(id)a5;
- (void)_mainQueue_handleEditSource:(id)a3 compositionController:(id)a4 originalCompositionController:(id)a5 error:(id)a6;
- (void)_resetProgress;
- (void)beginLoading;
@end

@implementation PXPhotoKitEditSourceLoader

- (void)_mainQueue_handleEditSource:(id)a3 compositionController:(id)a4 originalCompositionController:(id)a5 error:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  objc_storeStrong(&self->_editSource, a3);
  objc_storeStrong(&self->_compositionController, a4);
  objc_storeStrong(&self->_originalCompositionController, a5);
  [(NSProgress *)self->_editSourceCreationProgress setCompletedUnitCount:[(NSProgress *)self->_editSourceCreationProgress totalUnitCount]];
  v15 = MEMORY[0x1E696AD98];
  v16 = [MEMORY[0x1E695DF00] date];
  [v16 timeIntervalSinceDate:self->_mainQueue_loadingStartDate];
  v17 = [v15 numberWithDouble:?];
  loadDuration = self->_loadDuration;
  self->_loadDuration = v17;

  objc_storeStrong(&self->_error, a6);
  v19 = PLUIGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    editSource = self->_editSource;
    compositionController = self->_compositionController;
    v22 = 138412546;
    v23 = editSource;
    v24 = 2112;
    v25 = compositionController;
    _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "_handleContentEditingInputRequestCompletion - editSource: %@\ncomposition:%@", &v22, 0x16u);
  }
}

- (void)_handleContentEditingInputRequestCompletion:(id)a3 info:(id)a4 asset:(id)a5
{
  v8 = a3;
  v9 = a4;
  loadingQueue = self->_loadingQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke;
  v13[3] = &unk_1E774A768;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a2;
  v11 = v9;
  v12 = v8;
  dispatch_async(loadingQueue, v13);
}

void __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke(id *a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke_2;
  aBlock[3] = &unk_1E774BE98;
  aBlock[4] = a1[4];
  v2 = _Block_copy(aBlock);
  v3 = [a1[5] fullSizeImageURL];

  if (v3)
  {
    v4 = a1[5];
    v20 = 0;
    v5 = [MEMORY[0x1E69C4300] editSourceForContentEditingInput:v4 useEmbeddedPreview:0 error:&v20];
    v6 = v20;
    if (v5)
    {
      v7 = a1[5];
      v19 = 0;
      v8 = [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:v7 asShot:0 source:v5 error:&v19];
      v9 = v19;
      if (v8)
      {
        v10 = a1[5];
        v18 = 0;
        v11 = [MEMORY[0x1E69C4300] compositionControllerForContentEditingInput:v10 asShot:1 source:v5 error:&v18];
        v12 = v18;
        if (v11)
        {
          objc_initWeak(&location, a1[4]);
          objc_copyWeak(&v16, &location);
          v5;
          v8;
          v11;
          px_dispatch_on_main_queue();
        }

        v2[2](v2, v12);
      }

      else
      {
        v2[2](v2, v9);
      }
    }

    else
    {
      v2[2](v2, v6);
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:@"Failed to load image URL." forKeyedSubscript:*MEMORY[0x1E696A578]];
    v13 = *MEMORY[0x1E6978DF0];
    v14 = [a1[6] objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];

    if (v14)
    {
      v15 = [a1[6] objectForKeyedSubscript:v13];
      [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PXEditSourceLoaderErrorDomain" code:0 userInfo:v6];
    v2[2](v2, v5);
  }
}

void __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v4, &location);
  v3;
  px_dispatch_on_main_queue();
}

void __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _mainQueue_handleEditSource:*(a1 + 32) compositionController:*(a1 + 40) originalCompositionController:*(a1 + 48) error:0];
}

void __85__PXPhotoKitEditSourceLoader__handleContentEditingInputRequestCompletion_info_asset___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _mainQueue_handleEditSource:0 compositionController:0 originalCompositionController:0 error:*(a1 + 32)];
}

- (void)_cancelContentInputRequest
{
  v3 = [(PXPhotoKitEditSourceLoader *)self asset];
  [v3 cancelContentEditingInputRequest:self->_loadingQueue_imageRequestID];
}

- (void)_resetProgress
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  progress = self->_progress;
  self->_progress = v3;

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__PXPhotoKitEditSourceLoader__resetProgress__block_invoke;
  v5[3] = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  [(NSProgress *)self->_progress setCancellationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__PXPhotoKitEditSourceLoader__resetProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCancellation];
}

- (void)_handleCancellation
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __49__PXPhotoKitEditSourceLoader__handleCancellation__block_invoke;
  v5 = &unk_1E774C318;
  objc_copyWeak(&v6, &location);
  px_dispatch_on_main_queue();
}

void __49__PXPhotoKitEditSourceLoader__handleCancellation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetProgress];
}

void __49__PXPhotoKitEditSourceLoader__handleCancellation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelContentInputRequest];
}

- (void)beginLoading
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:50];
  [(NSProgress *)self->_progress px_appendChild:v3 withPendingUnitCount:50];
  objc_storeStrong(&self->_editSourceCreationProgress, v3);
  if (!self->_mainQueue_loadingStartDate)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    mainQueue_loadingStartDate = self->_mainQueue_loadingStartDate;
    self->_mainQueue_loadingStartDate = v4;

    loadingQueue = self->_loadingQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke;
    v7[3] = &unk_1E774C620;
    v7[4] = self;
    v8 = v3;
    dispatch_async(loadingQueue, v7);
  }
}

void __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) asset];
  v3 = objc_alloc_init(MEMORY[0x1E6978798]);
  [v3 setForceReturnFullLivePhoto:1];
  [v3 setDontAllowRAW:1];
  [v3 setNetworkAccessAllowed:1];
  [v3 setCanHandleAdjustmentData:&__block_literal_global_43691];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke_3;
  v8[3] = &unk_1E7731848;
  v9 = *(a1 + 40);
  [v3 setProgressHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke_306;
  v5[3] = &unk_1E7731870;
  objc_copyWeak(&v7, &location);
  v4 = v2;
  v6 = v4;
  *(*(a1 + 32) + 8) = [v4 requestContentEditingInputWithOptions:v3 completionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke_306(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PXPhotoKitEditSourceLoader content complete: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleContentEditingInputRequestCompletion:v6 info:v5 asset:*(a1 + 32)];
}

void __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setCompletedUnitCount:{(*(a1 + 40) * objc_msgSend(*(a1 + 32), "totalUnitCount")) - 1}];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXPhotoKitEditSourceLoader download progress: %f", &v4, 0xCu);
  }
}

BOOL __42__PXPhotoKitEditSourceLoader_beginLoading__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69BE650];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 data];
  v6 = [v3 formatIdentifier];
  v7 = [v3 formatVersion];

  v10 = 0;
  v8 = [v4 loadCompositionFrom:v5 formatIdentifier:v6 formatVersion:v7 sidecarData:0 error:&v10];

  return v8 != 0;
}

- (NSString)contentIdentifier
{
  v2 = [(PXPhotoKitEditSourceLoader *)self asset];
  v3 = [v2 localIdentifier];

  return v3;
}

- (PXPhotoKitEditSourceLoader)initWithAsset:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXPhotoKitEditSourceLoader;
  v6 = [(PXPhotoKitEditSourceLoader *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, a3);
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
    progress = v7->_progress;
    v7->_progress = v8;

    objc_initWeak(&location, v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__PXPhotoKitEditSourceLoader_initWithAsset___block_invoke;
    v14[3] = &unk_1E774C318;
    objc_copyWeak(&v15, &location);
    [(NSProgress *)v7->_progress setCancellationHandler:v14];
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.PXEditSourceLoader", v10);
    loadingQueue = v7->_loadingQueue;
    v7->_loadingQueue = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __44__PXPhotoKitEditSourceLoader_initWithAsset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCancellation];
}

@end