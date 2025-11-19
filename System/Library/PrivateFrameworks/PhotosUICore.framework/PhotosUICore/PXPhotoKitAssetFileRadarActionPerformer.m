@interface PXPhotoKitAssetFileRadarActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetFileRadarActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v6 = MEMORY[0x1E69DCAB8];
  v7 = a3;
  v8 = [v6 systemImageNamed:@"ant"];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:v7 action:a4];

  return v9;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v5 = a3;
  v6 = +[PXRootSettings sharedInstance];
  v7 = [v6 canShowInternalUI];

  if (v7)
  {
    v8 = [v5 isAnyItemSelected];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)performUserInteractionTask
{
  v4 = [(PXPhotoKitAssetActionPerformer *)self radarConfigurationProvider];
  if (!v4)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"radarConfigurationProvider"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E772EA40;
  v5 = v4;
  v17 = self;
  v18 = a2;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v5 includeAssetImages];
  v8 = [v5 includeAssetThumbnails];
  if ((v7 & 1) != 0 || v8)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_5;
    v12[3] = &unk_1E772EA68;
    v12[4] = self;
    v14 = v8;
    v13 = v6;
    v9 = [PXFeedbackTapToRadarUtilities alertControllerWithInternalReleaseAgreementAndCompletion:v12];
    if (![(PXActionPerformer *)self presentViewController:v9])
    {
      v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present the TTR internal release agreement"];
      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v10];
    }
  }

  else
  {
    (*(v6 + 2))(v6, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0]);
  }
}

void __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 radarConfiguration];
  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a1[6] object:a1[5] file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"radarConfiguration"}];
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_2;
  v19[3] = &unk_1E772EA18;
  v9 = v8;
  v20 = v9;
  [v7 enumerateObjectsUsingBlock:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_3;
  v17[3] = &unk_1E772EA18;
  v18 = v9;
  v10 = v9;
  [v6 enumerateObjectsUsingBlock:v17];

  v11 = [v7 count];
  [v10 setAttachmentsIncludeAnyUserAsset:v11 != 0];
  v12 = [v10 completionHandler];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_4;
  v15[3] = &unk_1E774BD88;
  v15[4] = a1[5];
  v16 = v12;
  v13 = v12;
  [v10 setCompletionHandler:v15];
  PXFileRadarWithConfiguration(v10);
}

void __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_5(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 selectionSnapshot];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = *(a1 + 48);
    v8 = v5;
    v9 = v6;
    v10 = v4;
    v11 = [v10 dataSource];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v12 = [v10 selectedIndexPaths];

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = ___AssetAttachmentsForSelection_block_invoke;
        v22[3] = &unk_1E772EA90;
        v26 = v7;
        v23 = v11;
        v24 = v8;
        v25 = v9;
        v13 = v11;
        v14 = v8;
        v15 = v9;
        [v12 enumerateItemIndexPathsUsingBlock:v22];

        (*(*(a1 + 40) + 16))();
        return;
      }

      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _AssetAttachmentsForSelection(PXSelectionSnapshot *__strong, NSMutableArray<NSURL *> *__strong, NSMutableArray<NSURL *> *__strong, BOOL)"}];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      v21 = [v11 px_descriptionForAssertionMessage];
      [v16 handleFailureInFunction:v17 file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v19, v21}];
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _AssetAttachmentsForSelection(PXSelectionSnapshot *__strong, NSMutableArray<NSURL *> *__strong, NSMutableArray<NSURL *> *__strong, BOOL)"}];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v16 handleFailureInFunction:v17 file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:101 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v19}];
    }

    goto LABEL_4;
  }

  [v3 completeUserInteractionTaskWithSuccess:1 error:0];
}

void __69__PXPhotoKitAssetFileRadarActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }

  if (a2)
  {
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to file TTR radar"];
    [*(a1 + 32) completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

@end