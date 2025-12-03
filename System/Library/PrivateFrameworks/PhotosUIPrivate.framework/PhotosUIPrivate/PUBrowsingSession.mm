@interface PUBrowsingSession
- (PUBrowsingSession)init;
- (PUBrowsingSession)initWithDataSourceManager:(id)manager actionManager:(id)actionManager mediaProvider:(id)provider photosDetailsContext:(id)context lowMemoryMode:(BOOL)mode importStatusManager:(id)statusManager privacyController:(id)controller;
- (PUTileAnimator)tileAnimator;
- (id)assetActionManagerCurrentAssetsDataSource:(id)source;
- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references;
- (void)assetEditOperationManager:(id)manager didChangeEditOperationStatusForAsset:(id)asset context:(void *)context;
- (void)assetEditOperationManager:(id)manager didChangeEditOperationsPerformedOnAsset:(id)asset context:(void *)context;
- (void)assetsDataSourceManager:(id)manager didChangeAssetsDataSource:(id)source;
- (void)configureTilingView:(id)view;
- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier;
@end

@implementation PUBrowsingSession

- (void)configureTilingView:(id)view
{
  viewCopy = view;
  tileAnimator = [(PUBrowsingSession *)self tileAnimator];
  [viewCopy setTileAnimator:tileAnimator];

  contentTileProvider = [(PUBrowsingSession *)self contentTileProvider];
  [contentTileProvider registerTileControllerClassesWithTilingView:viewCopy];

  v7 = [(PUBrowsingSession *)self description];
  [viewCopy registerPostLayoutBlock:&__block_literal_global_15213 forIdentifier:v7];
}

- (void)assetEditOperationManager:(id)manager didChangeEditOperationStatusForAsset:(id)asset context:(void *)context
{
  managerCopy = manager;
  assetCopy = asset;
  if (PUEditOperationManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingSession.m" lineNumber:224 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = assetCopy;
  if ([assetCopy conformsToProtocol:&unk_1F2BDF190])
  {
    v12 = [managerCopy editOperationStatusForAsset:v11];
    viewModel = [(PUBrowsingSession *)self viewModel];
    v14 = [viewModel assetSharedViewModelForAsset:v11];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__PUBrowsingSession_assetEditOperationManager_didChangeEditOperationStatusForAsset_context___block_invoke;
    v17[3] = &unk_1E7B7FF70;
    v18 = v14;
    v19 = v12;
    v15 = v14;
    [v15 performChanges:v17];
  }
}

uint64_t __92__PUBrowsingSession_assetEditOperationManager_didChangeEditOperationStatusForAsset_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) - 1;
  if (v1 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_1B3D0D4B0[v1];
  }

  return [*(a1 + 32) setSaveState:v2];
}

- (void)assetEditOperationManager:(id)manager didChangeEditOperationsPerformedOnAsset:(id)asset context:(void *)context
{
  managerCopy = manager;
  assetCopy = asset;
  if (PUEditOperationManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingSession.m" lineNumber:193 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = assetCopy;
  if ([assetCopy conformsToProtocol:&unk_1F2BDF190])
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__15223;
    v20[4] = __Block_byref_object_dispose__15224;
    v21 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __95__PUBrowsingSession_assetEditOperationManager_didChangeEditOperationsPerformedOnAsset_context___block_invoke;
    v19[3] = &unk_1E7B75CE0;
    v19[4] = v20;
    [managerCopy enumerateEditOperationsPerformedOnAsset:v11 usingBlock:v19];
    viewModel = [(PUBrowsingSession *)self viewModel];
    v13 = [viewModel assetSharedViewModelForAsset:v11];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__PUBrowsingSession_assetEditOperationManager_didChangeEditOperationsPerformedOnAsset_context___block_invoke_2;
    v16[3] = &unk_1E7B800C8;
    v14 = v13;
    v17 = v14;
    v18 = v20;
    [v14 performChanges:v16];

    _Block_object_dispose(v20, 8);
  }
}

void __95__PUBrowsingSession_assetEditOperationManager_didChangeEditOperationsPerformedOnAsset_context___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([v7 isCancelled] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier
{
  statusCopy = status;
  identifierCopy = identifier;
  viewModel = [(PUBrowsingSession *)self viewModel];
  v10 = [viewModel assetSharedViewModelForAssetUUID:identifierCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PUBrowsingSession_loadingStatusManager_didUpdateLoadingStatus_forItemIdentifier___block_invoke;
  v13[3] = &unk_1E7B80C38;
  v14 = v10;
  v15 = statusCopy;
  v11 = statusCopy;
  v12 = v10;
  [v12 performChanges:v13];
}

- (id)assetActionManagerCurrentAssetsDataSource:(id)source
{
  viewModel = [(PUBrowsingSession *)self viewModel];
  assetsDataSource = [viewModel assetsDataSource];

  return assetsDataSource;
}

- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references
{
  viewModel = [(PUBrowsingSession *)self viewModel];
  activeAssetReferences = [viewModel activeAssetReferences];

  return activeAssetReferences;
}

- (void)assetsDataSourceManager:(id)manager didChangeAssetsDataSource:(id)source
{
  assetsDataSource = [manager assetsDataSource];
  if (!assetsDataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingSession.m" lineNumber:142 description:@"Data source must never be nil"];
  }

  viewModel = [(PUBrowsingSession *)self viewModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__PUBrowsingSession_assetsDataSourceManager_didChangeAssetsDataSource___block_invoke;
  v11[3] = &unk_1E7B80C38;
  v12 = viewModel;
  v13 = assetsDataSource;
  v8 = assetsDataSource;
  v9 = viewModel;
  [v9 performChanges:v11];
}

- (PUTileAnimator)tileAnimator
{
  tileAnimator = self->_tileAnimator;
  if (!tileAnimator)
  {
    v4 = objc_alloc_init(PUBrowsingTileViewAnimator);
    v5 = self->_tileAnimator;
    self->_tileAnimator = &v4->super.super;

    tileAnimator = self->_tileAnimator;
  }

  return tileAnimator;
}

- (PUBrowsingSession)initWithDataSourceManager:(id)manager actionManager:(id)actionManager mediaProvider:(id)provider photosDetailsContext:(id)context lowMemoryMode:(BOOL)mode importStatusManager:(id)statusManager privacyController:(id)controller
{
  modeCopy = mode;
  managerCopy = manager;
  actionManagerCopy = actionManager;
  providerCopy = provider;
  contextCopy = context;
  contextCopy2 = context;
  obj = statusManager;
  statusManagerCopy = statusManager;
  controllerCopy = controller;
  v52.receiver = self;
  v52.super_class = PUBrowsingSession;
  v21 = [(PUBrowsingSession *)&v52 init];
  if (v21)
  {
    v44 = providerCopy;
    assetsDataSource = [managerCopy assetsDataSource];

    if (!assetsDataSource)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v21 file:@"PUBrowsingSession.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[dataSourceManager assetsDataSource] != nil"}];
    }

    if (!v44)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v21 file:@"PUBrowsingSession.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];
    }

    v23 = [[PUBrowsingViewModel alloc] initWithLowMemoryMode:modeCopy];
    objc_storeStrong(&v21->_viewModel, v23);
    objc_storeStrong(&v21->_mediaProvider, provider);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (v25 = managerCopy, [v25 underlyingDataSourceManager], v26 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v25, LOBYTE(v25) = objc_opt_isKindOfClass(), v26, (v25))
    {
      if (actionManagerCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(PUPhotoKitAssetActionManager);
          [(PUPhotoKitAssetActionManager *)v24 setDataSourceManager:managerCopy];
          [(PUPhotoKitAssetActionManager *)actionManagerCopy setFallbackActionManager:v24];
        }
      }

      else
      {
        actionManagerCopy = objc_alloc_init(PUPhotoKitAssetActionManager);
        [(PUPhotoKitAssetActionManager *)actionManagerCopy setDataSourceManager:managerCopy];
      }
    }

    [(PUBrowsingViewModel *)v23 setActionManager:actionManagerCopy];
    mEMORY[0x1E69C3360] = [MEMORY[0x1E69C3360] sharedManager];
    editOperationManager = v21->_editOperationManager;
    v21->_editOperationManager = mEMORY[0x1E69C3360];

    [(PXAssetEditOperationManager *)v21->_editOperationManager registerObserver:v21 context:PUEditOperationManagerObservationContext];
    objc_storeStrong(&v21->_actionManager, actionManagerCopy);
    [(PUAssetActionManager *)v21->_actionManager setDelegate:v21];
    v29 = [[PUOneUpContentTileProvider alloc] initWithMediaProvider:v21->_mediaProvider];
    contentTileProvider = v21->_contentTileProvider;
    v21->_contentTileProvider = v29;

    objc_storeStrong(&v21->_dataSourceManager, manager);
    [(PUAssetsDataSourceManager *)v21->_dataSourceManager setDelegate:v21];
    objc_storeStrong(&v21->_importStatusManager, obj);
    objc_storeStrong(&v21->_privacyController, controller);
    v31 = +[PUOneUpSettings sharedInstance];
    shouldMergeOverlappingLivePhotos = [v31 shouldMergeOverlappingLivePhotos];

    if (shouldMergeOverlappingLivePhotos)
    {
      v33 = [[PUOneUpMergedVideoProvider alloc] initWithBrowsingViewModel:v23];
      mergedVideoProvider = v21->_mergedVideoProvider;
      v21->_mergedVideoProvider = v33;
    }

    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __148__PUBrowsingSession_initWithDataSourceManager_actionManager_mediaProvider_photosDetailsContext_lowMemoryMode_importStatusManager_privacyController___block_invoke;
    v46[3] = &unk_1E7B7EA98;
    v47 = v23;
    providerCopy = v44;
    v48 = v44;
    v49 = managerCopy;
    v50 = statusManagerCopy;
    v51 = controllerCopy;
    v35 = v23;
    [(PUViewModel *)v35 performChanges:v46];
    v36 = objc_alloc_init(MEMORY[0x1E69C4558]);
    loadingStatusManager = v21->_loadingStatusManager;
    v21->_loadingStatusManager = v36;

    [(PXLoadingStatusManager *)v21->_loadingStatusManager registerObserver:v21];
    [(PUMediaProvider *)v21->_mediaProvider setLoadingStatusManager:v21->_loadingStatusManager];
    objc_storeStrong(&v21->_photosDetailsContext, contextCopy);
  }

  return v21;
}

uint64_t __148__PUBrowsingSession_initWithDataSourceManager_actionManager_mediaProvider_photosDetailsContext_lowMemoryMode_importStatusManager_privacyController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMediaProvider:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) assetsDataSource];
  [v2 setAssetsDataSource:v3];

  [*(a1 + 32) setImportStatusManager:*(a1 + 56)];
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);

  return [v5 setPrivacyController:v4];
}

- (PUBrowsingSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBrowsingSession.m" lineNumber:49 description:{@"%s is not available as initializer", "-[PUBrowsingSession init]"}];

  abort();
}

@end