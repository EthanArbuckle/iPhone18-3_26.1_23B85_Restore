@interface PUPXPhotoKitPasteAdjustmentsActionPerformer
+ (BOOL)_canPasteOnAsset:(id)asset;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitPasteAdjustmentsActionPerformer

- (void)performUserInteractionTask
{
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = PFFilter();
  if ([v4 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_533;
    aBlock[3] = &unk_1E7B80088;
    v26 = v4;
    selfCopy = self;
    v5 = _Block_copy(aBlock);
    if (PFExists())
    {
      v6 = MEMORY[0x1E69DC650];
      v7 = PELocalizedString();
      v8 = PELocalizedString();
      v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

      v10 = MEMORY[0x1E69DC648];
      v11 = PELocalizedString();
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_3;
      v23[3] = &unk_1E7B80980;
      v12 = v5;
      v24 = v12;
      v13 = [v10 actionWithTitle:v11 style:0 handler:v23];
      [v9 addAction:v13];

      v14 = MEMORY[0x1E69DC648];
      v15 = PELocalizedString();
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_557;
      v21 = &unk_1E7B80980;
      v22 = v12;
      v16 = [v14 actionWithTitle:v15 style:1 handler:&v18];
      [v9 addAction:{v16, v18, v19, v20, v21}];

      [(PXActionPerformer *)self presentViewController:v9];
    }

    else
    {
      (*(v5 + 2))(v5, 0);
    }
  }

  else
  {
    v17 = PLUIGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_INFO, "No valid assets to paste on, aborting.", buf, 2u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

void __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_533(uint64_t a1, char a2)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_2;
  v11 = &__block_descriptor_33_e17_B16__0__PHAsset_8l;
  v12 = a2;
  v3 = PFFilter();
  if ([v3 count])
  {
    v4 = [PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:*(a1 + 40) class:objc_opt_class() assets:v3 prepareAction:0];
    v5 = [*(a1 + 40) undoManager];
    [v4 executeWithUndoManager:v5 completionHandler:&__block_literal_global_538];

    [*(a1 + 40) completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_INFO, "No valid assets to paste on after removing spatials, aborting.", v7, 2u);
    }

    [*(a1 + 40) completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_3(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_INFO, "User approved pasting edits on spatial assets.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_557(uint64_t a1)
{
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_INFO, "User skipped pasting edits on spatial assets.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    return [a2 isSpatialMedia] ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t __73__PUPXPhotoKitPasteAdjustmentsActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([PUPXPhotoKitPasteAdjustmentsActionPerformer _canPasteOnAsset:v2])
  {
    v3 = [MEMORY[0x1E69C3370] isSupportedAsset:v2 type:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_canPasteOnAsset:(id)asset
{
  assetCopy = asset;
  v5 = +[PUPhotoEditProtoSettings sharedInstance];
  enableSpatialMediaEditing = [v5 enableSpatialMediaEditing];

  isSpatialMedia = [assetCopy isSpatialMedia];
  if (isSpatialMedia)
  {
    isVideo = [assetCopy isVideo];
  }

  else
  {
    isVideo = 0;
  }

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___PUPXPhotoKitPasteAdjustmentsActionPerformer;
  if (objc_msgSendSuper2(&v12, sel_canPerformBatchOnAsset_, assetCopy) && ((isSpatialMedia & ~enableSpatialMediaEditing | isVideo) & 1) == 0 && [MEMORY[0x1E69C4320] canPerformEditOnAsset:assetCopy])
  {
    mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
    hasPresetOnPasteboard = [mEMORY[0x1E69C4220] hasPresetOnPasteboard];
  }

  else
  {
    hasPresetOnPasteboard = 0;
  }

  return hasPresetOnPasteboard;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group error:(id *)error
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  mEMORY[0x1E69C4220] = [MEMORY[0x1E69C4220] sharedPresetManager];
  if (([mEMORY[0x1E69C4220] hasPresetOnPasteboard] & 1) == 0)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] px_errorWithDomain:*MEMORY[0x1E69C4128] code:-2002 debugDescription:@"Cannot paste adjustments when none are on the pasteboard"];
      *error = v16 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  if ([mEMORY[0x1E69C4220] isBusyWithBatchAction])
  {
    goto LABEL_7;
  }

  selectedIndexPaths = [snapshotCopy selectedIndexPaths];
  v15 = [selectedIndexPaths count];

  if (!v15)
  {
    goto LABEL_7;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __104__PUPXPhotoKitPasteAdjustmentsActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke;
  v18[3] = &unk_1E7B7A828;
  v18[4] = &v19;
  v18[5] = self;
  [snapshotCopy enumerateSelectedObjectsUsingBlock:v18];
  v16 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
LABEL_8:

  return v16 & 1;
}

void __104__PUPXPhotoKitPasteAdjustmentsActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v6;

    if (v5 && [*(a1 + 40) _canPasteOnAsset:v5])
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