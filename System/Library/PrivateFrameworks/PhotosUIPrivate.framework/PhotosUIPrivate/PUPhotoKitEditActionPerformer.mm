@interface PUPhotoKitEditActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (void)_beginEditingCurrentAsset;
- (void)_presentEditorForAsset:(id)asset;
- (void)performUserInteractionTask;
@end

@implementation PUPhotoKitEditActionPerformer

- (void)_presentEditorForAsset:(id)asset
{
  assetCopy = asset;
  v12 = objc_alloc_init(PUPhotoKitMediaProvider);
  v5 = objc_alloc_init(MEMORY[0x1E69C42B8]);
  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  [v5 setApplyVideoOrientationAsMetadata:{objc_msgSend(v6, "applyVideoOrientationAsMetadata")}];

  actionType = [(PUAssetActionPerformer *)self actionType];
  if (actionType - 16 > 0xC)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1B3D0D430[actionType - 16];
  }

  v9 = [[PUPhotoEditViewController alloc] initWithPhoto:assetCopy mediaProvider:v12 mediaDestination:v5];

  [(PUPhotoEditViewController *)v9 setInitialToolType:v8];
  quickCropContext = [(PUPhotoKitEditActionPerformer *)self quickCropContext];
  [(PUPhotoEditViewController *)v9 setQuickCropContext:quickCropContext];

  pendingEditsRequest = [(PUPhotoKitEditActionPerformer *)self pendingEditsRequest];
  [(PUPhotoEditViewController *)v9 setInitialPendingEditsRequest:pendingEditsRequest];

  [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:[(PUAssetActionPerformer *)self presentViewController:v9] error:0];
}

- (void)_beginEditingCurrentAsset
{
  assets = [(PUAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];

  if ([firstObject canPerformEditOperation:2])
  {
    [(PUPhotoKitEditActionPerformer *)self _presentEditorForAsset:firstObject];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = +[PUPhotoEditTaskManager sharedManager];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__PUPhotoKitEditActionPerformer__beginEditingCurrentAsset__block_invoke;
    v6[3] = &unk_1E7B7BB40;
    objc_copyWeak(&v8, &location);
    v7 = firstObject;
    [v5 createEditableCopyForReadOnlyPhoto:v7 completionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __58__PUPhotoKitEditActionPerformer__beginEditingCurrentAsset__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained _presentEditorForAsset:v5];
  }

  else
  {
    v9 = PLUIGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "Error creating editable duplicate asset for %@. Error: %@", &v11, 0x16u);
    }

    [v8 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)performUserInteractionTask
{
  assets = [(PUAssetActionPerformer *)self assets];
  v5 = [assets count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:1451 description:@"There can be only one asset in an edit action"];
  }

  assets2 = [(PUAssetActionPerformer *)self assets];
  firstObject = [assets2 firstObject];

  v8 = MEMORY[0x1E69C3370];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke;
  v14[3] = &unk_1E7B7BB18;
  v14[4] = self;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke_2;
  v11[3] = &unk_1E7B80088;
  v12 = firstObject;
  selfCopy = self;
  v9 = firstObject;
  [v8 checkIsSupportedAndPresentAlertForAsset:v9 type:0 alertControllerPresenter:v14 completionHandler:v11];
}

uint64_t __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 80), a2);
  v4 = a2;
  v5 = [*(a1 + 32) presentViewController:v4];

  return v5;
}

void __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) playbackStyle];
    if (v3 > 5 || ((1 << v3) & 0x3A) == 0)
    {
      v20 = v3;
      v21 = PLUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v27 = v20;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "No editor for playback style: %ld", buf, 0xCu);
      }

      v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"No editor for playback style: %ld", v20}];
      [*(a1 + 40) completeUserInteractionTaskWithSuccess:0 error:v10];
      goto LABEL_21;
    }

    v5 = [*(a1 + 32) canPerformEditOperation:2];
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    v7 = [v6 enableSpatialMediaEditing];

    if ((v5 & 1) == 0 && ((v7 & 1) != 0 || ([*(a1 + 32) isSpatialMedia] & 1) == 0))
    {
      v10 = PULocalizedString(@"PHOTOEDIT_EDIT_READONLY_TITLE");
      v11 = PULocalizedString(@"PHOTOEDIT_EDIT_READONLY_MESSAGE");
      v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v11 preferredStyle:0];
      v13 = MEMORY[0x1E69DC648];
      v14 = PULocalizedString(@"PHOTOEDIT_EDIT_READONLY_DUPLICATE_BUTTON");
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke_3;
      v25[3] = &unk_1E7B7E148;
      v25[4] = *(a1 + 40);
      v15 = [v13 actionWithTitle:v14 style:0 handler:v25];
      [v12 addAction:v15];

      v16 = MEMORY[0x1E69DC648];
      v17 = PULocalizedString(@"PHOTOEDIT_EDIT_READONLY_CANCEL_BUTTON");
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __59__PUPhotoKitEditActionPerformer_performUserInteractionTask__block_invoke_4;
      v24[3] = &unk_1E7B7E148;
      v24[4] = *(a1 + 40);
      v18 = [v16 actionWithTitle:v17 style:1 handler:v24];
      [v12 addAction:v18];

      if (([*(a1 + 40) presentViewController:v12] & 1) == 0)
      {
        v19 = PLUIGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to present duplicate confirmation. User must confirm to perform edit.", buf, 2u);
        }

        [*(a1 + 40) completeUserInteractionTaskWithSuccess:0 error:0];
      }

LABEL_21:
      goto LABEL_22;
    }

    [*(a1 + 40) _beginEditingCurrentAsset];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = v8[10];
    if (v9)
    {
      [v8 dismissViewController:v9 completionHandler:0];
      v8 = *(a1 + 40);
    }

    [v8 completeUserInteractionTaskWithSuccess:0 error:0];
  }

LABEL_22:
  v22 = *(a1 + 40);
  v23 = *(v22 + 80);
  *(v22 + 80) = 0;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v7 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSpatialMediaEditing = [v7 enableSpatialMediaEditing];

  if (([assetCopy isPhoto] & 1) == 0 && (!objc_msgSend(assetCopy, "isVideo") || (objc_msgSend(assetCopy, "isTimelapsePlaceholder") & 1) != 0 || !objc_msgSend(assetCopy, "canPerformEditOperation:", 2)) || (objc_msgSend(assetCopy, "px_isSharedAlbumAsset") & 1) != 0 || (objc_msgSend(collectionCopy, "isTrashBin") & 1) != 0 || (objc_msgSend(collectionCopy, "px_isDuplicatesAlbum") & 1) != 0 || objc_msgSend(assetCopy, "sourceType") == 8)
  {
    v10 = 0;
  }

  else
  {
    px_isSyndicatedAsset = [assetCopy px_isSyndicatedAsset];
    if (((px_isSyndicatedAsset | enableSpatialMediaEditing) & 1) == 0)
    {
      if (![assetCopy isSpatialMedia])
      {
        v10 = 1;
        goto LABEL_14;
      }

      LOBYTE(px_isSyndicatedAsset) = [assetCopy isPhoto];
    }

    v10 = px_isSyndicatedAsset ^ 1;
  }

LABEL_14:

  return v10;
}

@end