@interface PXPhotoKitAssetPickAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
@end

@implementation PXPhotoKitAssetPickAssetActionPerformer

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
    LOBYTE(v16) = 0;
    goto LABEL_9;
  }

  v15 = v12;
  if (!v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetPickAssetActionPerformer.m" lineNumber:21 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v20}];
LABEL_14:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v15 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetPickAssetActionPerformer.m" lineNumber:21 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v20, v22}];

    goto LABEL_14;
  }

LABEL_6:
  if ([v15 status] == 3)
  {
    v16 = [v11 needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

LABEL_9:
  return v16;
}

@end