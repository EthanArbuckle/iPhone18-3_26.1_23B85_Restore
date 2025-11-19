@interface PUPhotosGridDownloadHelper
+ (id)createAlertControllerForDownloadError:(id)a3 withAsset:(id)a4;
- (BOOL)isAnyPickerAssetDownloading:(id)a3;
- (PUPhotosGridDownloadHelper)initWithUpdateHandler:(id)a3;
- (PUPhotosGridDownloadUpdateHandler)updateHandler;
- (id)_defaultOptions;
- (id)_downloadContextForIdentifier:(id)a3;
- (void)_cancelPreviousDownloadsForAsset:(id)a3;
- (void)_checkIfRetrievalIsRequiredForResourceRequest:(id)a3 completion:(id)a4;
- (void)_downloadForRequest:(id)a3 didCompleteWithSuccess:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6;
- (void)_removeDownloadRequestForIdentifier:(id)a3;
- (void)_setDownloadContext:(id)a3 forIdentifier:(id)a4;
- (void)_startRetrievingRequiredResourcesForRequest:(id)a3 options:(id)a4 inCollection:(id)a5;
- (void)_updateDownloadProgressForAsset:(id)a3;
- (void)cancelAllDownloads;
- (void)cancelDownloadForIdentifier:(id)a3;
- (void)handleDownloadOfAssetIfNeeded:(id)a3 inCollection:(id)a4 withSuccessHandler:(id)a5;
@end

@implementation PUPhotosGridDownloadHelper

- (PUPhotosGridDownloadUpdateHandler)updateHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_updateHandler);

  return WeakRetained;
}

- (void)_removeDownloadRequestForIdentifier:(id)a3
{
  v4 = a3;
  downloadContextsIsolationQueue = self->_downloadContextsIsolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PUPhotosGridDownloadHelper__removeDownloadRequestForIdentifier___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(downloadContextsIsolationQueue, v7);
}

- (id)_downloadContextForIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__64865;
  v16 = __Block_byref_object_dispose__64866;
  v17 = 0;
  downloadContextsIsolationQueue = self->_downloadContextsIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PUPhotosGridDownloadHelper__downloadContextForIdentifier___block_invoke;
  block[3] = &unk_1E7B7FFC0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(downloadContextsIsolationQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __60__PUPhotosGridDownloadHelper__downloadContextForIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_setDownloadContext:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  downloadContextsIsolationQueue = self->_downloadContextsIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PUPhotosGridDownloadHelper__setDownloadContext_forIdentifier___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_sync(downloadContextsIsolationQueue, block);
}

- (void)_downloadForRequest:(id)a3 didCompleteWithSuccess:(BOOL)a4 canceled:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v8 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [v10 asset];
  v13 = [v12 localIdentifier];
  v14 = [(PUPhotosGridDownloadHelper *)self _downloadContextForIdentifier:v13];
  if (!v8 && !v7)
  {
    v15 = PLUIGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Error downloading resources for request %@: %@", &v24, 0x16u);
    }
  }

  [(PUPhotosGridDownloadHelper *)self _removeDownloadRequestForIdentifier:v13];
  v16 = [v14 downloadHandler];

  if (v8)
  {
    if (v16)
    {
      v17 = [v14 downloadHandler];
      v17[2](v17, 1, 0);

      [v14 setDownloadHandler:0];
    }
  }

  else
  {
    if (v7)
    {
      if (!v16)
      {
        goto LABEL_16;
      }

      v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PUPhotosGridDownloadHelper" code:1 userInfo:0];
      v19 = [v14 downloadHandler];
      (v19)[2](v19, 0, v18);

      [v14 setDownloadHandler:0];
    }

    else
    {
      if (v16)
      {
        v20 = [v14 downloadHandler];
        (v20)[2](v20, 0, v11);

        [v14 setDownloadHandler:0];
      }

      v18 = [PUPhotosGridDownloadHelper createAlertControllerForDownloadError:v11 withAsset:v12];
      WeakRetained = objc_loadWeakRetained(&self->_updateHandler);
      [WeakRetained presentAlertController:v18];
    }
  }

LABEL_16:
  v22 = [v14 gridProgressIdentifier];
  if (v22)
  {
    v23 = objc_loadWeakRetained(&self->_updateHandler);
    [v23 endShowingProgressWithIdentifier:v22 succeeded:v8 canceled:v7 error:v11];
  }
}

- (void)_updateDownloadProgressForAsset:(id)a3
{
  v11 = [a3 localIdentifier];
  v4 = [(PUPhotosGridDownloadHelper *)self _downloadContextForIdentifier:?];
  v5 = [v4 gridProgressIdentifier];
  v6 = [v4 resourceLocalAvailabilityRequest];
  v7 = v6;
  if (v5 && v6)
  {
    [v6 progressFraction];
    v9 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_updateHandler);
    [WeakRetained updateProgressWithIdentifier:v5 withValue:v9];
  }
}

- (void)_startRetrievingRequiredResourcesForRequest:(id)a3 options:(id)a4 inCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 asset];
  v12 = [v11 localIdentifier];
  v13 = [(PUPhotosGridDownloadHelper *)self _downloadContextForIdentifier:v12];
  WeakRetained = objc_loadWeakRetained(&self->_updateHandler);
  v15 = [v8 asset];
  v16 = [WeakRetained beginShowingProgressForAsset:v15 inCollection:v10];

  [v13 setGridProgressIdentifier:v16];
  objc_initWeak(&location, self);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__PUPhotosGridDownloadHelper__startRetrievingRequiredResourcesForRequest_options_inCollection___block_invoke;
  v22[3] = &unk_1E7B80610;
  objc_copyWeak(&v24, &location);
  v17 = v11;
  v23 = v17;
  [v8 setProgressChangeHandler:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __95__PUPhotosGridDownloadHelper__startRetrievingRequiredResourcesForRequest_options_inCollection___block_invoke_2;
  v19[3] = &unk_1E7B7C870;
  objc_copyWeak(&v21, &location);
  v18 = v8;
  v20 = v18;
  [v18 retrieveRequiredResourcesWithOptions:v9 completionHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __95__PUPhotosGridDownloadHelper__startRetrievingRequiredResourcesForRequest_options_inCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateDownloadProgressForAsset:*(a1 + 32)];
}

void __95__PUPhotosGridDownloadHelper__startRetrievingRequiredResourcesForRequest_options_inCollection___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _downloadForRequest:*(a1 + 32) didCompleteWithSuccess:a2 canceled:a3 error:v8];
}

- (void)cancelAllDownloads
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__64865;
  v24 = __Block_byref_object_dispose__64866;
  v25 = 0;
  downloadContextsIsolationQueue = self->_downloadContextsIsolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__PUPhotosGridDownloadHelper_cancelAllDownloads__block_invoke;
  block[3] = &unk_1E7B800C8;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(downloadContextsIsolationQueue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v21[5];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 resourceLocalAvailabilityRequest];
        [v9 cancelRetrievalRequest];

        v10 = [v8 gridProgressIdentifier];
        if (v10)
        {
          WeakRetained = objc_loadWeakRetained(&self->_updateHandler);
          [WeakRetained endShowingProgressWithIdentifier:v10 succeeded:0 canceled:1 error:0];
        }

        v12 = [v8 downloadHandler];

        if (v12)
        {
          v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PUPhotosGridDownloadHelper" code:1 userInfo:0];
          v14 = [v8 downloadHandler];
          (v14)[2](v14, 0, v13);

          [v8 setDownloadHandler:0];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v20, 8);
}

void __48__PUPhotosGridDownloadHelper_cancelAllDownloads__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PUPhotosGridDownloadHelper_cancelAllDownloads__block_invoke_2;
  v8[3] = &unk_1E7B7C848;
  v9 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v5 = [v4 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1 + 32) + 8) removeAllObjects];
}

- (void)cancelDownloadForIdentifier:(id)a3
{
  v11 = a3;
  v4 = [(PUPhotosGridDownloadHelper *)self _downloadContextForIdentifier:?];
  v5 = [v4 downloadHandler];

  if (v5)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.PUPhotosGridDownloadHelper" code:1 userInfo:0];
    v7 = [v4 downloadHandler];
    (v7)[2](v7, 0, v6);

    [v4 setDownloadHandler:0];
  }

  v8 = [v4 resourceLocalAvailabilityRequest];
  [v8 cancelRetrievalRequest];

  v9 = [v4 gridProgressIdentifier];
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_updateHandler);
    [WeakRetained endShowingProgressWithIdentifier:v9 succeeded:0 canceled:1 error:0];
  }

  [(PUPhotosGridDownloadHelper *)self _removeDownloadRequestForIdentifier:v11];
}

- (id)_defaultOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E6978A28]);
  [v3 setTreatLivePhotoAsStill:{-[PUPhotosGridDownloadHelper shouldTreatLivePhotosAsStills](self, "shouldTreatLivePhotosAsStills")}];

  return v3;
}

- (void)_checkIfRetrievalIsRequiredForResourceRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PUPhotosGridDownloadHelper *)self _defaultOptions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PUPhotosGridDownloadHelper__checkIfRetrievalIsRequiredForResourceRequest_completion___block_invoke;
  v10[3] = &unk_1E7B7C820;
  v11 = v6;
  v9 = v6;
  [v7 fetchResourceAvailabilityWithOptions:v8 completionHandler:v10];
}

uint64_t __87__PUPhotosGridDownloadHelper__checkIfRetrievalIsRequiredForResourceRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0, a4);
  }

  return result;
}

- (void)_cancelPreviousDownloadsForAsset:(id)a3
{
  v6 = a3;
  v4 = [(PUPhotosGridDownloadHelper *)self mode];
  if (v4 == 1)
  {
    v5 = [v6 localIdentifier];
    [(PUPhotosGridDownloadHelper *)self cancelDownloadForIdentifier:v5];
  }

  else if (!v4)
  {
    [(PUPhotosGridDownloadHelper *)self cancelAllDownloads];
  }
}

- (BOOL)isAnyPickerAssetDownloading:(id)a3
{
  v4 = MEMORY[0x1E6978A20];
  v5 = a3;
  v6 = [(PUPhotosGridDownloadHelper *)self _defaultOptions];
  v7 = [v4 indexesForAssetsRequiringResourceRetrieval:v5 requestType:1 options:v6];

  LOBYTE(v5) = [v7 count] != 0;
  return v5;
}

- (void)handleDownloadOfAssetIfNeeded:(id)a3 inCollection:(id)a4 withSuccessHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(PUPhotosGridDownloadHelper *)self _cancelPreviousDownloadsForAsset:v8];
  v11 = [objc_alloc(MEMORY[0x1E6978A20]) initWithAsset:v8 requestType:0];
  v12 = objc_alloc_init(PUPhotosGridDownloadHelpContext);
  [(PUPhotosGridDownloadHelpContext *)v12 setResourceLocalAvailabilityRequest:v11];
  v13 = [v8 localIdentifier];
  [(PUPhotosGridDownloadHelper *)self _setDownloadContext:v12 forIdentifier:v13];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__PUPhotosGridDownloadHelper_handleDownloadOfAssetIfNeeded_inCollection_withSuccessHandler___block_invoke;
  v19[3] = &unk_1E7B7C7F8;
  v19[4] = self;
  v14 = v13;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = v10;
  v24 = v16;
  objc_copyWeak(&v25, &location);
  v17 = v9;
  v22 = v17;
  v18 = v11;
  v23 = v18;
  [(PUPhotosGridDownloadHelper *)self _checkIfRetrievalIsRequiredForResourceRequest:v18 completion:v19];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __92__PUPhotosGridDownloadHelper_handleDownloadOfAssetIfNeeded_inCollection_withSuccessHandler___block_invoke(uint64_t a1, int a2)
{
  v9 = [*(a1 + 32) _downloadContextForIdentifier:*(a1 + 40)];
  if (v9 && [*(a1 + 48) isEqual:v9])
  {
    [*(a1 + 48) setDownloadHandler:*(a1 + 72)];
    v4 = [*(a1 + 48) resourceLocalAvailabilityRequest];
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v6 = WeakRetained;
    if (a2)
    {
      v7 = [WeakRetained _defaultOptions];

      v8 = objc_loadWeakRetained((a1 + 80));
      [v8 _startRetrievingRequiredResourcesForRequest:v4 options:v7 inCollection:*(a1 + 56)];

      v6 = v7;
    }

    else
    {
      [WeakRetained _downloadForRequest:v4 didCompleteWithSuccess:1 canceled:0 error:0];
    }
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 80));
    [v4 _downloadForRequest:*(a1 + 64) didCompleteWithSuccess:0 canceled:1 error:0];
  }
}

- (PUPhotosGridDownloadHelper)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUPhotosGridDownloadHelper;
  v5 = [(PUPhotosGridDownloadHelper *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    downloadContexts = v5->_downloadContexts;
    v5->_downloadContexts = v6;

    v8 = dispatch_queue_create("PUPhotosGridDownloadHelper._downloadContexts", 0);
    downloadContextsIsolationQueue = v5->_downloadContextsIsolationQueue;
    v5->_downloadContextsIsolationQueue = v8;

    objc_storeWeak(&v5->_updateHandler, v4);
    v5->_mode = 0;
  }

  return v5;
}

+ (id)createAlertControllerForDownloadError:(id)a3 withAsset:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = [PUSharingErrorPresentationController alloc];
  v14[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];

  v10 = [(PUSharingErrorPresentationController *)v7 initWithErrors:v8 forAssets:v9 fromSource:3 preparationType:0];
  [(PUErrorPresentationController *)v10 setRadarDescription:@"Error trying to pick an asset from image picker."];
  [(PUErrorPresentationController *)v10 setRadarComponentID:@"476273" name:@"Photos UI Image Picker" version:@"iOS"];
  v11 = [(PUErrorPresentationController *)v10 alertControllerWithCompletion:0];

  return v11;
}

@end