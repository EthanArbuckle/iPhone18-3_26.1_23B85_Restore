@interface PUPXPhotoKitCopyAdjustmentsActionPerformer
+ (BOOL)_canPerformOnAsset:(id)asset error:(id *)error;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitCopyAdjustmentsActionPerformer

- (void)performUserInteractionTask
{
  v22[1] = *MEMORY[0x1E69E9840];
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [assets count];

  if (v5 != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:789 description:@"Adjustments can only be copied from one unique asset"];
  }

  assets2 = [(PXPhotoKitAssetActionPerformer *)self assets];
  firstObject = [assets2 firstObject];

  v21 = 0;
  v8 = [MEMORY[0x1E69C41E8] synchronousCompositionControllerForAsset:firstObject networkAccessAllowed:0 disposition:&v21 originalComposition:0];
  if (v8)
  {
    if ([(PXPhotoKitAssetActionPerformer *)self shouldSkipUserConfirmation]|| ![PUPhotoEditCopyEditsViewController shouldPresentForCopyingFromCompositionController:v8 asset:firstObject])
    {
      mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
      [mEMORY[0x1E69C4220] copyPresetFromAsset:firstObject removeCrop:1];

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
    }

    else
    {
      v9 = [[PUPhotoEditCopyEditsViewController alloc] initWithCompositionController:v8 asset:firstObject];
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__PUPXPhotoKitCopyAdjustmentsActionPerformer_performUserInteractionTask__block_invoke;
      v18[3] = &unk_1E7B7F988;
      objc_copyWeak(&v19, &location);
      [(PUPhotoEditCopyEditsViewController *)v9 setCompletionHandler:v18];
      v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
      [v10 setModalPresentationStyle:7];
      popoverPresentationController = [v10 popoverPresentationController];
      adaptiveSheetPresentationController = [popoverPresentationController adaptiveSheetPresentationController];
      mediumDetent = [MEMORY[0x1E69DCF58] mediumDetent];
      v22[0] = mediumDetent;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [adaptiveSheetPresentationController setDetents:v14];

      [(PXActionPerformer *)self presentViewController:v10];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v16 = PLUIGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location) = 0;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Failed to copy edits, composition controller failed to load", &location, 2u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void __72__PUPXPhotoKitCopyAdjustmentsActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (BOOL)_canPerformOnAsset:(id)asset error:(id *)error
{
  assetCopy = asset;
  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSpatialMediaEditing = [v6 enableSpatialMediaEditing];

  if ([assetCopy canPerformEditOperation:2])
  {
    v8 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:assetCopy];
    if (enableSpatialMediaEditing & 1 | ((v8 & 1) == 0))
    {
      if (!v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      v16 = [mEMORY[0x1E69C4220] assetHasCopyableAdjustments:assetCopy removeCrop:{objc_msgSend(v15, "enableSelectiveCopyEdits") ^ 1}];

      if (v16)
      {
        v13 = 1;
        goto LABEL_13;
      }

      if (error)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = *MEMORY[0x1E69C4128];
        v11 = @"Cannot copy edits from asset that has no adjustments";
        v12 = -2001;
        goto LABEL_6;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    if (([assetCopy isSpatialMedia] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_4:
  if (!error)
  {
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E69C4128];
  v11 = @"Cannot perform action";
  v12 = -2000;
LABEL_6:
  [v9 px_errorWithDomain:v10 code:v12 debugDescription:v11];
  *error = v13 = 0;
LABEL_13:

  return v13;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error
{
  snapshotCopy = snapshot;
  selectedIndexPaths = [snapshotCopy selectedIndexPaths];
  v10 = [selectedIndexPaths count];

  if (v10 == 1)
  {
    firstObject = [snapshotCopy firstObject];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = firstObject;

      if (v12)
      {
        v13 = [self _canPerformOnAsset:v12 error:error];
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {

      v12 = 0;
    }

    v13 = 0;
    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

@end