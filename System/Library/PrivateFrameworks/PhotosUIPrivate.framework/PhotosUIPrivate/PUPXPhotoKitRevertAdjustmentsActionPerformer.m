@interface PUPXPhotoKitRevertAdjustmentsActionPerformer
+ (BOOL)_canRevertOnAsset:(id)a3 fast:(BOOL)a4;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitRevertAdjustmentsActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = PFFilter();
  if ([v4 count])
  {
    v5 = PFFilter();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_2;
    aBlock[3] = &unk_1E7B80C38;
    aBlock[4] = self;
    v24 = v4;
    v6 = _Block_copy(aBlock);
    v7 = [v3 count];
    if ([v5 count])
    {
      [v3 count];
      v8 = PXLocalizedString();
      PXMediaTypeForAssets();
      v9 = PXLocalizedUsageStringWithoutAssetCount();
    }

    else
    {
      if (v7 < 2)
      {
        goto LABEL_15;
      }

      v8 = PXLocalizedString();
      v9 = PXLocalizedString();
    }

    v11 = v9;
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v9 preferredStyle:0];

    if (v12)
    {
      v13 = MEMORY[0x1E69DC648];
      v14 = PXLocalizedString();
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_4;
      v21[3] = &unk_1E7B7A8B8;
      v21[4] = self;
      v22 = v6;
      v15 = [v13 actionWithTitle:v14 style:2 handler:v21];
      [v12 addAction:v15];

      v16 = MEMORY[0x1E69DC648];
      v17 = PXLocalizedString();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_5;
      v20[3] = &unk_1E7B7E148;
      v20[4] = self;
      v18 = [v16 actionWithTitle:v17 style:1 handler:v20];
      [v12 addAction:v18];

      if (![(PXActionPerformer *)self presentViewController:v12])
      {
        v19 = PLSharedLibraryGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Failed to present revert unsupported adjustments warning.", buf, 2u);
        }

        [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
      }

      goto LABEL_16;
    }

LABEL_15:
    v6[2](v6);
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_16:

    goto LABEL_17;
  }

  v10 = PLUIGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v10, OS_LOG_TYPE_INFO, "No valid assets to revert, aborting.", buf, 2u);
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_17:
}

void __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v3 = [PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:*(a1 + 32) class:objc_opt_class() assets:*(a1 + 40) prepareAction:0];
  v2 = [*(a1 + 32) undoManager];
  [v3 executeWithUndoManager:v2 completionHandler:&__block_literal_global_576];
}

uint64_t __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __74__PUPXPhotoKitRevertAdjustmentsActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = 0;
  if ([PUPXPhotoKitRevertAdjustmentsActionPerformer _canRevertOnAsset:v2 fast:0])
  {
    v3 = [MEMORY[0x1E69C3370] isSupportedAsset:v2 type:0];
  }

  return v3;
}

+ (BOOL)_canRevertOnAsset:(id)a3 fast:(BOOL)a4
{
  v6 = a3;
  if ([v6 hasAdjustments])
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___PUPXPhotoKitRevertAdjustmentsActionPerformer;
    v7 = objc_msgSendSuper2(&v10, sel_canPerformBatchOnAsset_, v6);
    if (v7 && !a4)
    {
      v8 = [MEMORY[0x1E69C4220] sharedPresetManager];
      LOBYTE(v7) = [v8 assetHasRevertibleAdjustments:v6];
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69C4220] sharedPresetManager];
  if (([v11 isBusyWithBatchAction] & 1) != 0 || (objc_msgSend(v8, "selectedIndexPaths"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, !v13))
  {
    v14 = 0;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PUPXPhotoKitRevertAdjustmentsActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke;
    v16[3] = &unk_1E7B7A890;
    v17 = v13 > 2;
    v16[4] = &v18;
    v16[5] = a1;
    [v8 enumerateSelectedObjectsUsingBlock:v16];
    v14 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  return v14 & 1;
}

void __99__PUPXPhotoKitRevertAdjustmentsActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v6;

    if (v5 && [*(a1 + 40) _canRevertOnAsset:v5 fast:*(a1 + 48)])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  else
  {

    v5 = 0;
  }
}

@end