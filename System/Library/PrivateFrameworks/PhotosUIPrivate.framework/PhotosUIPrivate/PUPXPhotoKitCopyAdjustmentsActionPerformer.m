@interface PUPXPhotoKitCopyAdjustmentsActionPerformer
+ (BOOL)_canPerformOnAsset:(id)a3 error:(id *)a4;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitCopyAdjustmentsActionPerformer

- (void)performUserInteractionTask
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:789 description:@"Adjustments can only be copied from one unique asset"];
  }

  v6 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v7 = [v6 firstObject];

  v21 = 0;
  v8 = [MEMORY[0x1E69C41E8] synchronousCompositionControllerForAsset:v7 networkAccessAllowed:0 disposition:&v21 originalComposition:0];
  if (v8)
  {
    if ([(PXPhotoKitAssetActionPerformer *)self shouldSkipUserConfirmation]|| ![PUPhotoEditCopyEditsViewController shouldPresentForCopyingFromCompositionController:v8 asset:v7])
    {
      v15 = [MEMORY[0x1E69C4220] sharedPresetManager];
      [v15 copyPresetFromAsset:v7 removeCrop:1];

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
    }

    else
    {
      v9 = [[PUPhotoEditCopyEditsViewController alloc] initWithCompositionController:v8 asset:v7];
      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72__PUPXPhotoKitCopyAdjustmentsActionPerformer_performUserInteractionTask__block_invoke;
      v18[3] = &unk_1E7B7F988;
      objc_copyWeak(&v19, &location);
      [(PUPhotoEditCopyEditsViewController *)v9 setCompletionHandler:v18];
      v10 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
      [v10 setModalPresentationStyle:7];
      v11 = [v10 popoverPresentationController];
      v12 = [v11 adaptiveSheetPresentationController];
      v13 = [MEMORY[0x1E69DCF58] mediumDetent];
      v22[0] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
      [v12 setDetents:v14];

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

+ (BOOL)_canPerformOnAsset:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[PUPhotoEditProtoSettings sharedInstance];
  v7 = [v6 enableSpatialMediaEditing];

  if ([v5 canPerformEditOperation:2])
  {
    v8 = [MEMORY[0x1E69C4320] canPerformEditOnAsset:v5];
    if (v7 & 1 | ((v8 & 1) == 0))
    {
      if (!v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = [MEMORY[0x1E69C4220] sharedPresetManager];
      v15 = +[PUPhotoEditProtoSettings sharedInstance];
      v16 = [v14 assetHasCopyableAdjustments:v5 removeCrop:{objc_msgSend(v15, "enableSelectiveCopyEdits") ^ 1}];

      if (v16)
      {
        v13 = 1;
        goto LABEL_13;
      }

      if (a4)
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

    if (([v5 isSpatialMedia] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_4:
  if (!a4)
  {
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E69C4128];
  v11 = @"Cannot perform action";
  v12 = -2000;
LABEL_6:
  [v9 px_errorWithDomain:v10 code:v12 debugDescription:v11];
  *a4 = v13 = 0;
LABEL_13:

  return v13;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = [v8 selectedIndexPaths];
  v10 = [v9 count];

  if (v10 == 1)
  {
    v11 = [v8 firstObject];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;

      if (v12)
      {
        v13 = [a1 _canPerformOnAsset:v12 error:a6];
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