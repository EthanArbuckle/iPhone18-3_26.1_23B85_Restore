@interface PUPXPhotoKitAutoEnhanceActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
- (BOOL)enabled;
- (void)performUserInteractionTask;
@end

@implementation PUPXPhotoKitAutoEnhanceActionPerformer

- (BOOL)enabled
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:1318 description:{@"Method %s is a responsibility of subclass %@", "-[PUPXPhotoKitAutoEnhanceActionPerformer enabled]", v6}];

  abort();
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v4 = PFFilter();
  if ([v4 count])
  {
    [(PUPXPhotoKitAutoEnhanceActionPerformer *)self enabled];
    v5 = [PUPXPhotoKitBatchActionPerformer newEditActionForPerformer:self class:objc_opt_class() assets:v4 prepareAction:0];
    v6 = [(PXActionPerformer *)self undoManager];
    [v5 executeWithUndoManager:v6 completionHandler:&__block_literal_global_610];

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_INFO, "No valid assets to enhance, aborting.", v8, 2u);
    }

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

uint64_t __68__PUPXPhotoKitAutoEnhanceActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, void *a2)
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

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 selectedIndexPaths];
  v12 = [v11 count];

  if (v12)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __93__PUPXPhotoKitAutoEnhanceActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke;
    v15[3] = &unk_1E7B7A828;
    v15[4] = &v16;
    v15[5] = a1;
    [v8 enumerateSelectedObjectsUsingBlock:v15];
    v13 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void __93__PUPXPhotoKitAutoEnhanceActionPerformer_canPerformWithSelectionSnapshot_person_socialGroup___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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