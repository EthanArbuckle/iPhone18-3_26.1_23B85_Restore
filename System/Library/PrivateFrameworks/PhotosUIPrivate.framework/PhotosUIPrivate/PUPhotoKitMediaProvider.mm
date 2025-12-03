@interface PUPhotoKitMediaProvider
- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int)request;
@end

@implementation PUPhotoKitMediaProvider

- (void)cancelImageRequest:(int)request
{
  v3 = *&request;
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:v3];
}

- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E6978860];
  optionsCopy = options;
  assetCopy = asset;
  defaultManager = [v8 defaultManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PUPhotoKitMediaProvider_requestAsynchronousVideoURLForAsset_options_resultHandler___block_invoke;
  v14[3] = &unk_1E7B7F898;
  v15 = handlerCopy;
  v12 = handlerCopy;
  LODWORD(v8) = [defaultManager requestURLForVideo:assetCopy options:optionsCopy resultHandler:v14];

  return v8;
}

- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v12 = optionsCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7B7BF10;
  v13 = handlerCopy;
  v59 = v13;
  v14 = assetCopy;
  v58 = v14;
  v15 = _Block_copy(aBlock);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v17 = loadingStatusManager;
  if (loadingStatusManager)
  {
    *buf = 0;
    v52 = buf;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__60118;
    v55 = __Block_byref_object_dispose__60119;
    v56 = 0;
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_2;
    v47 = &unk_1E7B7FFC0;
    v50 = buf;
    v48 = loadingStatusManager;
    v49 = v14;
    px_dispatch_on_main_queue();
    progressHandler = [v12 progressHandler];
    v19 = _Block_copy(v15);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_3;
    v40[3] = &unk_1E7B7BC90;
    v20 = progressHandler;
    v42 = v20;
    v21 = v48;
    v41 = v21;
    v43 = buf;
    [v12 setProgressHandler:v40];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_5;
    v36[3] = &unk_1E7B7BF38;
    v38 = v19;
    v37 = v21;
    v39 = buf;
    v22 = v19;
    v23 = _Block_copy(v36);

    _Block_object_dispose(buf, 8);
    v15 = v23;
  }

  v24 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v24 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating animated image loading because of debug 1-up settings", buf, 2u);
    }

    v27 = objc_alloc_init(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation);
    progressHandler2 = [v12 progressHandler];
    [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)v27 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)v27 setExternalResultHandler:v15];
    v29 = [v12 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)v27 internalProgressHandler];
    [v29 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderAnimatedImageDownloadSimulation *)v27 internalResultHandler];

    v15 = internalResultHandler;
  }

  else
  {
    v29 = v12;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v33 = [defaultManager requestAnimatedImageForAsset:v14 options:v29 resultHandler:v15];

  return v33;
}

void __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_4;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_6;
  v11[3] = &unk_1E7B7BCB8;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __78__PUPhotoKitMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke_6(uint64_t a1)
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

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:382 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v12 = [optionsCopy copy];
  [v12 setLoadingMode:0x10000];
  v13 = _Block_copy(handlerCopy);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v15 = loadingStatusManager;
  if (loadingStatusManager)
  {
    *buf = 0;
    v54 = buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__60118;
    v57 = __Block_byref_object_dispose__60119;
    v58 = 0;
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
    v49 = &unk_1E7B7FFC0;
    v52 = buf;
    v50 = loadingStatusManager;
    v51 = assetCopy;
    px_dispatch_on_main_queue();
    progressHandler = [v12 progressHandler];
    v17 = _Block_copy(v13);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_2;
    v42[3] = &unk_1E7B7BC90;
    v18 = progressHandler;
    v44 = v18;
    v19 = v50;
    v43 = v19;
    v45 = buf;
    [v12 setProgressHandler:v42];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_4;
    aBlock[3] = &unk_1E7B7BEE8;
    v40 = v17;
    v39 = v19;
    v41 = buf;
    v20 = v17;
    v21 = _Block_copy(aBlock);

    _Block_object_dispose(buf, 8);
    v13 = v21;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_6;
  v36[3] = &unk_1E7B7F870;
  v22 = v13;
  v37 = v22;
  v23 = _Block_copy(v36);
  v24 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v24 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating image URL loading because of debug 1-up settings", buf, 2u);
    }

    v27 = objc_alloc_init(PUPhotoKitMediaProviderImageDownloadSimulation);
    progressHandler2 = [v12 progressHandler];
    [(PUPhotoKitMediaProviderImageDownloadSimulation *)v27 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderImageDownloadSimulation *)v27 setExternalResultHandler:v23];
    v29 = [v12 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)v27 internalProgressHandler];
    [v29 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)v27 internalResultHandler];

    v23 = internalResultHandler;
    v12 = v29;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v33 = [defaultManager requestImageForAsset:assetCopy targetSize:0 contentMode:v12 options:v23 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

  return v33;
}

void __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
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
  v12[2] = __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_5;
  v12[3] = &unk_1E7B7BCB8;
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

void __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x1E6978E20];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:v4];
  (*(*(a1 + 32) + 16))();
}

void __73__PUPhotoKitMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke_5(uint64_t a1)
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

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v17 = optionsCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7B7BE98;
  v18 = handlerCopy;
  v67 = v18;
  v19 = assetCopy;
  v65 = v19;
  v20 = v17;
  v66 = v20;
  v21 = _Block_copy(aBlock);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v23 = loadingStatusManager;
  if (loadingStatusManager)
  {
    *buf = 0;
    v59 = buf;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__60118;
    v62 = __Block_byref_object_dispose__60119;
    v63 = 0;
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v54 = &unk_1E7B7FFC0;
    v57 = buf;
    v55 = loadingStatusManager;
    v56 = v19;
    px_dispatch_on_main_queue();
    progressHandler = [v20 progressHandler];
    v25 = _Block_copy(v21);
    v26 = [v20 copy];

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
    v47[3] = &unk_1E7B7BC90;
    v27 = progressHandler;
    v49 = v27;
    v28 = v55;
    v48 = v28;
    v50 = buf;
    [v26 setProgressHandler:v47];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5;
    v43[3] = &unk_1E7B7BEC0;
    v45 = v25;
    v44 = v28;
    v46 = buf;
    v29 = v25;
    v30 = _Block_copy(v43);

    _Block_object_dispose(buf, 8);
    v21 = v30;
  }

  else
  {
    v26 = v20;
  }

  v31 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v31 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v33 = PLUIGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating Live Photo loading because of debug 1-up settings", buf, 2u);
    }

    v34 = objc_alloc_init(PUPhotoKitMediaProviderLivePhotoDownloadSimulation);
    progressHandler2 = [v26 progressHandler];
    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)v34 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)v34 setExternalResultHandler:v21];
    v36 = [v26 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)v34 internalProgressHandler];
    [v36 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderLivePhotoDownloadSimulation *)v34 internalResultHandler];

    v21 = internalResultHandler;
    v26 = v36;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v40 = [defaultManager requestLivePhotoForAsset:v19 targetSize:mode contentMode:v26 options:v21 resultHandler:{width, height}];

  return v40;
}

void __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v11 = v6;
    v12 = v5;
    v8 = [MEMORY[0x1E6978AB0] protectImageManagerResult:v5 outVideoItem:&v12 infoDictionary:v6 outInfoDictionary:&v11 forVideoRequestFromAsset:*(a1 + 32) requestAnalysisIfUnprocessed:{objc_msgSend(*(a1 + 40), "downloadIntent") == 3}];
    v9 = v12;

    v10 = v11;
    (*(*(a1 + 48) + 16))();
    v5 = v9;
    v7 = v10;
  }
}

void __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_6;
  v11[3] = &unk_1E7B7BCB8;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __97__PUPhotoKitMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke_6(uint64_t a1)
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

- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v12 = optionsCopy;
  v13 = _Block_copy(handlerCopy);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v15 = loadingStatusManager;
  if (loadingStatusManager)
  {
    *buf = 0;
    v51 = buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__60118;
    v54 = __Block_byref_object_dispose__60119;
    v55 = 0;
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke;
    v46 = &unk_1E7B7FFC0;
    v49 = buf;
    v47 = loadingStatusManager;
    v48 = videoCopy;
    px_dispatch_on_main_queue();
    progressHandler = [v12 progressHandler];
    v17 = _Block_copy(v13);
    v18 = [v12 copy];

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2;
    v39[3] = &unk_1E7B7BC90;
    v19 = progressHandler;
    v41 = v19;
    v20 = v47;
    v40 = v20;
    v42 = buf;
    [v18 setProgressHandler:v39];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_4;
    aBlock[3] = &unk_1E7B7BE70;
    v37 = v17;
    v36 = v20;
    v38 = buf;
    v21 = v17;
    v22 = _Block_copy(aBlock);

    _Block_object_dispose(buf, 8);
    v13 = v22;
  }

  else
  {
    v18 = v12;
  }

  v23 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v23 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v25 = PLUIGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating AVAsset loading because of debug 1-up settings", buf, 2u);
    }

    v26 = objc_alloc_init(PUPhotoKitMediaProviderAVAssetDownloadSimulation);
    progressHandler2 = [v18 progressHandler];
    [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)v26 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)v26 setExternalResultHandler:v13];
    v28 = [v18 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)v26 internalProgressHandler];
    [v28 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderAVAssetDownloadSimulation *)v26 internalResultHandler];

    v13 = internalResultHandler;
    v18 = v28;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v32 = [defaultManager requestAVAssetForVideo:videoCopy options:v18 resultHandler:v13];

  return v32;
}

void __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, a3, v8);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_5;
  v14[3] = &unk_1E7B7BCB8;
  v15 = v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v17 = v7;
  v18 = v11;
  v16 = v10;
  v12 = v7;
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __72__PUPhotoKitMediaProvider_requestAVAssetForVideo_options_resultHandler___block_invoke_5(uint64_t a1)
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
    v6 = *(a1 + 48) != 0;
    v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v6 error:v7];
  }
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  v88[1] = *MEMORY[0x1E69E9840];
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v87 = 1;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__60118;
  v84[4] = __Block_byref_object_dispose__60119;
  v85 = 0;
  v12 = optionsCopy;
  [v12 setLiveRenderVideoIfNeeded:1];
  v13 = +[PUPhotoEditProtoSettings sharedInstance];
  [v12 setLiveRenderAndOnDemandRenderVideoConcurrently:{objc_msgSend(v13, "enableLiveVideoRender") ^ 1}];

  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__60118;
  v82[4] = __Block_byref_object_dispose__60119;
  v83 = 0;
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v15 = loadingStatusManager;
  if (loadingStatusManager)
  {
    v78[4] = MEMORY[0x1E69E9820];
    v78[5] = 3221225472;
    v78[6] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke;
    v78[7] = &unk_1E7B7FFC0;
    v81 = v82;
    v79 = loadingStatusManager;
    v80 = videoCopy;
    px_dispatch_on_main_queue();
  }

  progressHandler = [v12 progressHandler];
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v77 = 0;
  v16 = videoCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v46 = v16;
  }

  else
  {
    v46 = 0;
  }

  v17 = PHSensitiveContentAnalysisAvailable() ^ 1;
  if (!v12)
  {
    LOBYTE(v17) = 1;
  }

  if (v17)
  {
    goto LABEL_16;
  }

  downloadIntent = [v12 downloadIntent];
  v45 = 0;
  if (!v46 || downloadIntent != 3)
  {
    goto LABEL_17;
  }

  if (![MEMORY[0x1E6978AB0] assetNeedsVideoSensitivityProcessing:v46])
  {
LABEL_16:
    v45 = 0;
  }

  else
  {
    photoLibrary = [v46 photoLibrary];
    uuid = [v46 uuid];
    v88[0] = uuid;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:1];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2;
    v66[3] = &unk_1E7B7BD80;
    v67 = v46;
    v71 = v76;
    v68 = v15;
    v69 = 0;
    v70 = progressHandler;
    v72 = v78;
    v73 = v82;
    v74 = v86;
    v75 = v84;
    v45 = [photoLibrary analyzeAssets:v21 forFeature:7 withCompletion:v66];
  }

LABEL_17:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_218;
  aBlock[3] = &unk_1E7B7BDA8;
  v43 = handlerCopy;
  v65 = v43;
  v22 = v16;
  v64 = v22;
  v23 = _Block_copy(aBlock);
  v24 = v23;
  if (v15)
  {
    v25 = _Block_copy(v23);
    v26 = [v12 copy];

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_3;
    v57[3] = &unk_1E7B7BDF8;
    v61 = v78;
    v27 = v15;
    v58 = v27;
    v60 = progressHandler;
    v28 = v45;
    v59 = v28;
    v62 = v82;
    [v26 setProgressHandler:v57];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_5;
    v48[3] = &unk_1E7B7BE48;
    v53 = v86;
    v54 = v84;
    v49 = v27;
    v55 = v82;
    v56 = v76;
    v50 = v28;
    v52 = v25;
    v51 = v22;
    v29 = v25;
    v30 = _Block_copy(v48);

    v24 = v30;
  }

  else
  {
    v26 = v12;
  }

  v31 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v31 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v33 = PLUIGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating AVPlayerItem loading because of debug 1-up settings", buf, 2u);
    }

    v34 = objc_alloc_init(PUPhotoKitMediaProviderPlayerItemDownloadSimulation);
    progressHandler2 = [v26 progressHandler];
    [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)v34 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)v34 setExternalResultHandler:v24];
    v36 = [v26 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)v34 internalProgressHandler];
    [v36 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderPlayerItemDownloadSimulation *)v34 internalResultHandler];

    v24 = internalResultHandler;
  }

  else
  {
    v36 = v26;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v40 = [defaultManager requestPlayerItemForVideo:v22 options:v36 resultHandler:v24];

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v78, 8);

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v84, 8);

  _Block_object_dispose(v86, 8);
  return v40;
}

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
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
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Error analyzing video for safety: %{public}@, error: %@", buf, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_215;
  block[3] = &unk_1E7B7BD58;
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v8 = *(a1 + 88);
  v13 = *(a1 + 72);
  v14 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_2_218(uint64_t a1, void *a2, void *a3)
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

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  *(*(*(a1 + 56) + 8) + 24) = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_4;
  v14[3] = &unk_1E7B7BDD0;
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

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 64) + 8) + 24) = v5 != 0;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6978DE8]];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_6;
    block[3] = &unk_1E7B800C8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 80);
    v25 = v12;
    v26 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v14 = v25;
  }

  else if (*(a1 + 40) && *(*(*(a1 + 88) + 8) + 24) != 1)
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      goto LABEL_7;
    }

    v14 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 48) uuid];
      v18 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "Image manager failed to retrieve player item for asset: %{public}@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_7;
    v19[3] = &unk_1E7B7BE20;
    v20 = v6;
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    v21 = v15;
    v22 = v16;
    v23 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], v19);

    v14 = v20;
  }

LABEL_7:
}

void __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978E50]];
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 48) + 8) + 40);
    v6 = *(*(*(a1 + 56) + 8) + 24);
    v7 = *(*(*(a1 + 64) + 8) + 40);

    [v4 didCompleteLoadOperationWithTrackingID:v5 withSuccess:v6 error:v7];
  }
}

uint64_t __75__PUPhotoKitMediaProvider_requestPlayerItemForVideo_options_resultHandler___block_invoke_215(void *a1)
{
  result = [MEMORY[0x1E69C3858] configureLoadingStatusManager:a1[4] andVideoProgressHandler:a1[6] withVideoSensitivityProcessingProgress:a1[5] imageManagerRequestProgress:*(*(a1[8] + 8) + 40) loadOperationTrackingID:0 stop:0 info:*(*(a1[7] + 8) + 24) error:0];
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

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v12 = optionsCopy;
  v13 = _Block_copy(handlerCopy);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  v15 = loadingStatusManager;
  v16 = &unk_1B3D0C000;
  if (loadingStatusManager)
  {
    *buf = 0;
    v55 = buf;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__60118;
    v58 = __Block_byref_object_dispose__60119;
    v59 = 0;
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
    v50 = &unk_1E7B7FFC0;
    v53 = buf;
    v51 = loadingStatusManager;
    v52 = assetCopy;
    px_dispatch_on_main_queue();
    progressHandler = [v12 progressHandler];
    v18 = _Block_copy(v13);
    v19 = [v12 copy];

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_2;
    v43[3] = &unk_1E7B7BC90;
    v20 = progressHandler;
    v45 = v20;
    v21 = v51;
    v44 = v21;
    v46 = buf;
    [v19 setProgressHandler:v43];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_4;
    aBlock[3] = &unk_1E7B7BD08;
    v41 = v18;
    v40 = v21;
    v42 = buf;
    v22 = v18;
    v23 = _Block_copy(aBlock);

    _Block_object_dispose(buf, 8);
    v13 = v23;
    v16 = &unk_1B3D0C000;
  }

  else
  {
    v19 = v12;
  }

  v24 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v24 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v26 = PLUIGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating image data loading because of debug 1-up settings", buf, 2u);
    }

    v27 = objc_alloc_init(PUPhotoKitMediaProviderImageDataDownloadSimulation);
    progressHandler2 = [v19 progressHandler];
    [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)v27 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)v27 setExternalResultHandler:v13];
    v29 = [v19 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)v27 internalProgressHandler];
    [v29 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderImageDataDownloadSimulation *)v27 internalResultHandler];

    v13 = internalResultHandler;
    v19 = v29;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = v16[211];
  v37[2] = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_211;
  v37[3] = &unk_1E7B7BD30;
  v38 = v13;
  v33 = v13;
  v34 = [defaultManager requestImageDataAndOrientationForAsset:assetCopy options:v19 resultHandler:v37];

  return v34;
}

void __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, a3, a4, v10);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_5;
  v16[3] = &unk_1E7B7BCB8;
  v17 = v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v19 = v9;
  v20 = v13;
  v18 = v12;
  v14 = v9;
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_211(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v8 = a5;
    v9 = a3;
    v11 = a2;
    v10 = PLImageOrientationFromExifOrientation();
    (*(v5 + 16))(v5, v11, v9, v10, v8);
  }
}

void __74__PUPhotoKitMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke_5(uint64_t a1)
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
    v6 = *(a1 + 48) != 0;
    v7 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];
    [*(a1 + 40) didCompleteLoadOperationWithTrackingID:*(*(*(a1 + 56) + 8) + 40) withSuccess:v6 error:v7];
  }
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitMediaProvider.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"[asset isKindOfClass:[PHAsset class]]"}];
  }

  v17 = optionsCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E7B7BC68;
  v18 = assetCopy;
  v63 = v18;
  v19 = handlerCopy;
  v64 = v19;
  v20 = _Block_copy(aBlock);
  loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];
  if (([v17 avoidDisplayingProgressUpdates] & 1) != 0 || !loadingStatusManager)
  {
    v24 = v17;
  }

  else
  {
    *buf = 0;
    v57 = buf;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__60118;
    v60 = __Block_byref_object_dispose__60119;
    v61 = 0;
    v49 = MEMORY[0x1E69E9820];
    v50 = 3221225472;
    v51 = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_203;
    v52 = &unk_1E7B7FFC0;
    v55 = buf;
    v53 = loadingStatusManager;
    v54 = v18;
    px_dispatch_on_main_queue();
    progressHandler = [v17 progressHandler];
    v23 = _Block_copy(v20);
    v24 = [v17 copy];

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2;
    v45[3] = &unk_1E7B7BC90;
    v25 = progressHandler;
    v47 = v25;
    v26 = v53;
    v46 = v26;
    v48 = buf;
    [v24 setProgressHandler:v45];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4;
    v41[3] = &unk_1E7B7BCE0;
    v43 = v23;
    v42 = v26;
    v44 = buf;
    v27 = v23;
    v28 = _Block_copy(v41);

    _Block_object_dispose(buf, 8);
    v20 = v28;
  }

  v29 = +[PUOneUpSettings sharedInstance];
  simulateAssetContentLoading = [v29 simulateAssetContentLoading];

  if (simulateAssetContentLoading)
  {
    v31 = PLUIGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v31, OS_LOG_TYPE_DEFAULT, "PhotoKitMediaProvider: Simulating image loading because of debug 1-up settings", buf, 2u);
    }

    v32 = objc_alloc_init(PUPhotoKitMediaProviderImageDownloadSimulation);
    progressHandler2 = [v24 progressHandler];
    [(PUPhotoKitMediaProviderImageDownloadSimulation *)v32 setExternalProgressHandler:progressHandler2];

    [(PUPhotoKitMediaProviderImageDownloadSimulation *)v32 setExternalResultHandler:v20];
    v34 = [v24 copy];

    internalProgressHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)v32 internalProgressHandler];
    [v34 setProgressHandler:internalProgressHandler];

    internalResultHandler = [(PUPhotoKitMediaProviderImageDownloadSimulation *)v32 internalResultHandler];

    v20 = internalResultHandler;
    v24 = v34;
  }

  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  v38 = [defaultManager requestImageForAsset:v18 targetSize:mode contentMode:v24 options:v20 resultHandler:{width, height}];

  return v38;
}

void __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E6978AB0];
  v22 = a3;
  v23 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  [v5 protectImageManagerResult:v8 outImage:&v23 infoDictionary:v7 outInfoDictionary:&v22 forImageRequestFromAsset:v6 applyLiveBlurIfSensitive:1];
  v9 = v23;

  v10 = v22;
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E40]];
  v12 = [v11 unsignedIntegerValue];

  v13 = v12 - 9997;
  v14 = [v10 objectForKeyedSubscript:*MEMORY[0x1E6978E68]];
  v15 = [v14 BOOLValue];

  v16 = v10;
  v17 = v16;
  if ((v15 & 1) != 0 || (v18 = v16, v13 <= 3))
  {
    v18 = [v16 mutableCopy];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v13 < 4];
    [v18 setObject:v19 forKeyedSubscript:@"PUMediaProviderResultIsFullSizeFormat"];

    v20 = [MEMORY[0x1E696AD98] numberWithBool:v15 & 1];
    [v18 setObject:v20 forKeyedSubscript:@"PHImageResultIsPlaceholderKey"];
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    (*(v21 + 16))(v21, v9, v18);
  }
}

void __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_203(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) uuid];
  v3 = [v2 willBeginLoadOperationWithItemIdentifier:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(a2);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E7B7E9D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
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
  v12[2] = __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5;
  v12[3] = &unk_1E7B7BCB8;
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

void __93__PUPhotoKitMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_5(uint64_t a1)
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

@end