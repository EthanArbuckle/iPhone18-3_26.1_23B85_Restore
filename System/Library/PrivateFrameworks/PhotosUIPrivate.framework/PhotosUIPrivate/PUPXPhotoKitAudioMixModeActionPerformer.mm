@interface PUPXPhotoKitAudioMixModeActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAudioMixModeActionPerformer

- (void)performUserInteractionTask
{
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = PFFilter();
  if ([v5 count])
  {
    v6 = objc_opt_class();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PUPXPhotoKitAudioMixModeActionPerformer_performUserInteractionTask__block_invoke_750;
    v15[3] = &unk_1E7B7A950;
    v15[4] = self;
    v7 = [PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:self class:v6 assets:v5 prepareAction:v15];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        undoManager = [(PXActionPerformer *)self undoManager];
        [v7 executeWithUndoManager:undoManager completionHandler:&__block_literal_global_756];

        [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
        goto LABEL_8;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v12 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:1782 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:self class:PXEditBatchAudioMixModeAction.class assets:validAssets prepareAction:^(PXEditBatchAudioMixModeAction *prepareAudioMixModeAction) { prepareAudioMixModeAction.audioMixMode = self.audioMixMode; }]", v12, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:1782 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:self class:PXEditBatchAudioMixModeAction.class assets:validAssets prepareAction:^(PXEditBatchAudioMixModeAction *prepareAudioMixModeAction) { prepareAudioMixModeAction.audioMixMode = self.audioMixMode; }]", v12}];
    }

    goto LABEL_4;
  }

  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_INFO, "No valid assets to apply audio mix, aborting.", buf, 2u);
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
LABEL_8:
}

void __69__PUPXPhotoKitAudioMixModeActionPerformer_performUserInteractionTask__block_invoke_750(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 audioMixMode];
  [v3 setAudioMixMode:v4];
}

uint64_t __69__PUPXPhotoKitAudioMixModeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([PUPXPhotoKitBatchActionPerformer canPerformBatchOnAsset:v2])
  {
    v3 = [MEMORY[0x1E69C3370] isSupportedAsset:v2 type:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  personCopy = person;
  groupCopy = group;
  if ([snapshotCopy isAnyItemSelected])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __94__PUPXPhotoKitAudioMixModeActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke;
    v13[3] = &unk_1E7B7A828;
    v13[4] = &v14;
    v13[5] = self;
    [snapshotCopy enumerateSelectedObjectsUsingBlock:v13];
    v11 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __94__PUPXPhotoKitAudioMixModeActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v6;

    if (v5 && [*(a1 + 40) _canPerformOnAsset:v5])
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