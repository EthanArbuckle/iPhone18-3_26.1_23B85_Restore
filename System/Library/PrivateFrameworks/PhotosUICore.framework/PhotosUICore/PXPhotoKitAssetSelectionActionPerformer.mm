@interface PXPhotoKitAssetSelectionActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetSelectionActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = a4;
  v5 = [v4 objectReference];
  v6 = @"PXPhotoKitAssetActionManagerPreviewActionTitle_SelectItem";
  if (v5)
  {
    v7 = [v4 selectionManager];
    v8 = [v7 selectionSnapshot];

    v9 = [v8 selectedIndexPaths];
    [v5 indexPath];
    v10 = [v9 containsIndexPath:&v13];

    if (v10)
    {
      v6 = @"PXPhotoKitAssetActionManagerPreviewActionTitle_DeselectItem";
    }
  }

  v11 = PXLocalizedStringFromTable(v6, @"PhotosUICore");

  return v11;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 || [v11 sourceType] != 8 || objc_msgSend(v12, "assetCollectionType") != 7)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v15 = v12;
  if (!v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetSelectionActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v20}];
LABEL_11:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v15 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetSelectionActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v20, v22}];

    goto LABEL_11;
  }

LABEL_6:
  v16 = [v15 status] == 3;

LABEL_8:
  return v16;
}

- (void)performUserInteractionTask
{
  v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v4 = [v3 dataSource];
  v21 = 0u;
  v22 = 0u;
  v5 = [(PXPhotoKitAssetActionPerformer *)self objectReference];
  if (v4)
  {
    [v4 indexPathForObjectReference:v5];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  if (v21 == *off_1E7721F68)
  {
    v6 = [v3 selectedIndexPaths];
  }

  else
  {
    v20[0] = v21;
    v20[1] = v22;
    v6 = [off_1E7721768 indexPathSetWithIndexPath:v20];
  }

  v7 = v6;
  v8 = [(PXAssetActionPerformer *)self selectionManager];
  v9 = [v8 selectionSnapshot];
  v10 = [v9 selectedIndexPaths];
  v11 = [v10 isSupersetOfSet:v7];

  v12 = [(PXAssetActionPerformer *)self selectionManager];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__PXPhotoKitAssetSelectionActionPerformer_performUserInteractionTask__block_invoke;
  v17 = &unk_1E77493D8;
  v19 = v11;
  v18 = v7;
  v13 = v7;
  [v12 performChanges:&v14];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0, v14, v15, v16, v17];
}

@end