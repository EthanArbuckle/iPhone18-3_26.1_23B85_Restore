@interface PXPhotoKitRestoreAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
@end

@implementation PXPhotoKitRestoreAssetActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [a4 effectiveSelectionSnapshot];
  v5 = [v4 isAnyItemSelected];

  if (v5)
  {
    v6 = @"PXPhotoKitRestoreAssetActionPerformer_Title";
  }

  else
  {
    v6 = @"PXPhotoKitRestoreAssetActionPerformer_TitleSelection";
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
    v11 = @"PXPhotoKitRestoreAssetActionPerformer_Title";
  }

  else
  {
    v11 = @"PXPhotoKitRestoreAssetActionPerformer_TitleSelection";
  }

  v12 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 style:0 target:v7 action:a4];

  return v13;
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v7 = a3;
  if (![v7 isAnyItemSelected])
  {
    v10 = 0;
    goto LABEL_6;
  }

  v8 = [v7 dataSource];
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitRestoreAssetActionPerformer.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v14}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v8 px_descriptionForAssertionMessage];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitRestoreAssetActionPerformer.m" lineNumber:27 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v14, v16}];

    goto LABEL_9;
  }

LABEL_4:
  v9 = [v8 containerCollection];
  v10 = [v9 px_isRecentlyDeletedSmartAlbum];

LABEL_6:
  return v10;
}

@end