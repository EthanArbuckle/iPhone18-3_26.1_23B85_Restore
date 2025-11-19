@interface PXPhotoKitMomentShareTrashActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createActivityWithTitle:(id)a3 actionType:(id)a4 actionSystemImageName:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMomentShareTrashActionPerformer

- (void)performBackgroundTask
{
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_3:
      v5 = PLSharingGetLog();
      v6 = os_signpost_id_make_with_pointer(v5, self);
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = v6;
        if (os_signpost_enabled(v5))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ActionPerformerTrashMomentShare", " enableTelemetry=YES ", buf, 2u);
        }
      }

      if ([v4 px_isCloudKitSharedAlbum])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __66__PXPhotoKitMomentShareTrashActionPerformer_performBackgroundTask__block_invoke;
        v14[3] = &unk_1E774C5C0;
        v14[4] = self;
        PXExpungeMomentShare(v4, v14);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__PXPhotoKitMomentShareTrashActionPerformer_performBackgroundTask__block_invoke_2;
      v13[3] = &unk_1E774C5C0;
      v13[4] = self;
      PXTrashMomentShare(v4, v13);
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v4 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2184 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2184 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v10}];
  }

  goto LABEL_3;
}

void __66__PXPhotoKitMomentShareTrashActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLSharingGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "ActionPerformerTrashMomentShare", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v8 = v4;
  px_dispatch_on_main_queue();
}

void __66__PXPhotoKitMomentShareTrashActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLSharingGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "ActionPerformerTrashMomentShare", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v8 = v4;
  px_dispatch_on_main_queue();
}

- (void)performUserInteractionTask
{
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v4 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2133 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetCollection", v21, v23}];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2133 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetCollection", v21}];
  }

LABEL_3:
  v24 = _TrashMomentShareActionTitle(v4);
  v5 = [v4 px_momentShareType];
  if (!v5)
  {
    v6 = @"PXCMMStopSharingAlertMessage";
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = @"PXCMMDeclineSharingAlertMessage";
LABEL_7:
    v7 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E774C648;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_2;
  v30[3] = &unk_1E774C648;
  v30[4] = self;
  v10 = _Block_copy(v30);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_3;
  v29[3] = &unk_1E774C648;
  v29[4] = self;
  v11 = _Block_copy(v29);
  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v7 preferredStyle:0];
  v13 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_4;
  v27[3] = &unk_1E7748000;
  v14 = v9;
  v28 = v14;
  v15 = [v13 actionWithTitle:v24 style:2 handler:v27];
  [v12 addAction:v15];

  v16 = MEMORY[0x1E69DC648];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_5;
  v25[3] = &unk_1E7748000;
  v26 = v10;
  v17 = v10;
  v18 = [v16 actionWithTitle:v8 style:1 handler:v25];
  [v12 addAction:v18];

  if (![(PXActionPerformer *)self presentViewController:v12])
  {
    v11[2](v11);
  }
}

void __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [*(a1 + 32) assetCollection];
  v4 = [v2 px_errorWithDomain:@"PXCMMErrorDomain" code:-1001 debugDescription:{@"User cancelled action to trash a CMM share: %@", v3}];

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:v4];
}

void __71__PXPhotoKitMomentShareTrashActionPerformer_performUserInteractionTask__block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E696ABC0];
  v3 = [*(a1 + 32) assetCollection];
  v4 = [v2 px_errorWithDomain:@"PXCMMErrorDomain" code:-1002 debugDescription:{@"Failed to present confirmation alert to trash a CMM share: %@", v3}];

  [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:v4];
}

+ (id)createActivityWithTitle:(id)a3 actionType:(id)a4 actionSystemImageName:(id)a5
{
  if (a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  return [PXActivity activityWithActionTitle:a3 actionType:a4 activityType:@"PXActivityTypeTrashMomentShare" systemImageName:v5];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v7 = [a4 assetCollection];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [v7 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2112 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2112 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v12}];
  }

LABEL_3:
  v8 = _TrashMomentShareActionTitle(v7);

  return v8;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2106 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:2106 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v11, v13}];

    goto LABEL_6;
  }

LABEL_3:
  v7 = [v6 assetCollectionType] == 7;

  return v7;
}

@end