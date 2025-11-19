@interface PXPhotoKitDeleteAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)a3;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (int64_t)destructivePhotosAction;
@end

@implementation PXPhotoKitDeleteAssetActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [a4 effectiveSelectionSnapshot];
  v5 = [v4 isAnyItemSelected];

  if (v5)
  {
    v6 = @"PXPhotoKitDeleteAssetActionPerformer_TitleDefault";
  }

  else
  {
    v6 = @"PXPhotoKitDeleteAssetActionPerformer_TitleSelection";
  }

  return PXLocalizedStringFromTable(v6, @"PhotosUICore");
}

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v7 = a3;
  v8 = [a5 selectionManager];
  v9 = [v8 selectionSnapshot];
  v10 = [v9 isAnyItemSelected];

  if (v10)
  {
    v11 = @"PXPhotoKitDeleteAssetActionPerformer_TitleDefault";
  }

  else
  {
    v11 = @"PXPhotoKitDeleteAssetActionPerformer_TitleSelection";
  }

  v12 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 style:0 target:v7 action:a4];

  return v13;
}

+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)a3
{
  v3 = a3;
  if ([v3 px_isRecentlyDeletedSmartAlbum])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 px_isRecoveredSmartAlbum];
  }

  return v4;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v8 = a3;
  v9 = a4;
  if (([v9 isTrashBin] & 1) != 0 || objc_msgSend(v9, "px_isRecoveredSmartAlbum"))
  {
    v10 = [a1 canExpungeAsset:v8 inAssetCollection:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)destructivePhotosAction
{
  v4 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v6 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeleteAssetActionPerformer.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeleteAssetActionPerformer.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v11}];
  }

LABEL_3:
  if ([v6 isTrashBin])
  {
    v7 = 6;
  }

  else
  {
    v7 = 5;
  }

  return v7;
}

@end