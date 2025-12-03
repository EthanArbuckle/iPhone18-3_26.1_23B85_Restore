@interface PUPhotoKitRemoveActionPerformer
- (BOOL)assetActionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (id)undoManagerForAssetActionPerformer:(id)performer;
- (void)_performTrashTask;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitRemoveActionPerformer

- (BOOL)assetActionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  delegate = [(PUAssetActionPerformer *)self delegate];
  LOBYTE(self) = [delegate assetActionPerformer:self dismissViewController:controllerCopy completionHandler:handlerCopy];

  return self;
}

- (id)undoManagerForAssetActionPerformer:(id)performer
{
  performerCopy = performer;
  delegate = [(PUAssetActionPerformer *)self delegate];
  v6 = [delegate undoManagerForAssetActionPerformer:performerCopy];

  return v6;
}

- (void)performBackgroundTask
{
  trashActionPerformer = [(PUPhotoKitRemoveActionPerformer *)self trashActionPerformer];

  if (trashActionPerformer)
  {

    [(PUAssetActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }

  else
  {
    [(PUPhotoKitActionPerformer *)self instantlyExcludeAssetsFromDataSource];
    assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
    v5 = MEMORY[0x1E69C37D0];
    allKeys = [assetsByAssetCollection allKeys];
    v7 = [v5 dataSourceWithAssetCollections:allKeys];

    v8 = [v7 selectionSnapshotForAssetsByAssetCollection:assetsByAssetCollection];
    v9 = [objc_alloc(MEMORY[0x1E69C3958]) initWithSelectionSnapshot:v8];
    undoManager = [(PUAssetActionPerformer *)self undoManager];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PUPhotoKitRemoveActionPerformer_performBackgroundTask__block_invoke;
    v11[3] = &unk_1E7B80280;
    v11[4] = self;
    [v9 executeWithUndoManager:undoManager completionHandler:v11];
  }
}

void __56__PUPhotoKitRemoveActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) stopExcludingAssetsFromDataSource];
  }

  [*(a1 + 32) completeBackgroundTaskWithSuccess:a2 error:v5];
}

- (void)_performTrashTask
{
  v3 = [PUPhotoKitTrashActionPerformer alloc];
  assets = [(PUAssetActionPerformer *)self assets];
  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [(PUAssetActionPerformer *)v3 initWithActionType:8 assets:assets orAssetsByAssetCollection:assetsByAssetCollection];

  [(PUAssetActionPerformer *)v6 setDelegate:self];
  [(PUPhotoKitRemoveActionPerformer *)self setTrashActionPerformer:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PUPhotoKitRemoveActionPerformer__performTrashTask__block_invoke;
  v7[3] = &unk_1E7B80280;
  v7[4] = self;
  [(PUAssetActionPerformer *)v6 performWithCompletionHandler:v7];
}

- (void)performUserInteractionTask
{
  if ([(PUPhotoKitRemoveActionPerformer *)self shouldShowConfirmation])
  {
    assets = [(PUAssetActionPerformer *)self assets];
    assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
    allKeys = [assetsByAssetCollection allKeys];
    firstObject = [allKeys firstObject];

    if (firstObject)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 1;
        assetsByAssetCollection2 = [(PUAssetActionPerformer *)self assetsByAssetCollection];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke;
        v34[3] = &unk_1E7B7BAC8;
        v34[4] = &v35;
        [assetsByAssetCollection2 enumerateKeysAndObjectsUsingBlock:v34];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_3;
        aBlock[3] = &unk_1E7B7E148;
        aBlock[4] = self;
        v29 = _Block_copy(aBlock);
        if ([firstObject canPerformEditOperation:2])
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_4;
          v32[3] = &unk_1E7B7E148;
          v32[4] = self;
          v9 = _Block_copy(v32);
        }

        else
        {
          v9 = 0;
        }

        v27 = firstObject;
        if (*(v36 + 24) == 1)
        {
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_5;
          v31[3] = &unk_1E7B7E148;
          v31[4] = self;
          v10 = _Block_copy(v31);
        }

        else
        {
          v10 = 0;
        }

        v28 = assets;
        v11 = [MEMORY[0x1E69C37F8] warningStringForAssets:assets isDeleting:1];
        v12 = PULocalizedString(@"CANCEL");
        v13 = PULocalizedString(@"REMOVE_FROM_ALBUM_BUTTON");
        v14 = PULocalizedString(@"DELETE_FROM_LIBRARY_BUTTON_TITLE");
        v15 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:0 preferredStyle:0];
        v16 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:1 handler:v29];
        [v15 addAction:v16];

        v17 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:0 handler:v9];
        [v15 addAction:v17];

        v18 = [MEMORY[0x1E69DC648] actionWithTitle:v14 style:2 handler:v10];
        [v15 addAction:v18];

        if (![(PUAssetActionPerformer *)self presentViewController:v15])
        {
          v19 = PLUIGetLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to present remove confirmation. User must confirm to perform removal.", buf, 2u);
          }

          v20 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present confirmation dialog."];
          [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v20];
        }

        _Block_object_dispose(&v35, 8);
        return;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v23 = NSStringFromClass(v24);
      [firstObject px_descriptionForAssertionMessage];
      v26 = v25 = firstObject;
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1056 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v23, v26}];

      firstObject = v25;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1056 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v23}];
    }

    goto LABEL_4;
  }

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

void __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (*(*(*(a1 + 32) + 8) + 24) == 1 && [v7 canPerformEditOperation:1])
  {
    v9 = [v7 isTrashBin] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v9;
  v10 = *(a1 + 32);
  if (*(*(v10 + 8) + 24) != 1 || (v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_2, v11[3] = &unk_1E7B7BAA0, v11[4] = v10, [v8 enumerateObjectsUsingBlock:v11], (*(*(*(a1 + 32) + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }
}

void __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Remove canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

void __61__PUPhotoKitRemoveActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(*(a1 + 32) + 8);
  v9 = v6;
  if (*(v7 + 24) == 1)
  {
    v8 = [v6 canPerformEditOperation:1];
    v7 = *(*(a1 + 32) + 8);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

@end