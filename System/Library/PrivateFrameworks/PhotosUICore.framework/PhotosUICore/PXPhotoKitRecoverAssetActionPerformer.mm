@interface PXPhotoKitRecoverAssetActionPerformer
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
@end

@implementation PXPhotoKitRecoverAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

  if (isAnyItemSelected)
  {
    v11 = @"PXPhotoKitRecoverAssetActionPerformer_Title";
  }

  else
  {
    v11 = @"PXPhotoKitRecoverAssetActionPerformer_TitleSelection";
  }

  v12 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 style:0 target:targetCopy action:action];

  return v13;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  effectiveSelectionSnapshot = [manager effectiveSelectionSnapshot];
  isAnyItemSelected = [effectiveSelectionSnapshot isAnyItemSelected];

  if (isAnyItemSelected)
  {
    v6 = @"PXPhotoKitRecoverAssetActionPerformer_Title";
  }

  else
  {
    v6 = @"PXPhotoKitRecoverAssetActionPerformer_TitleSelection";
  }

  return PXLocalizedStringFromTable(v6, @"PhotosUICore");
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  if (![snapshotCopy isAnyItemSelected])
  {
    px_isRecoveredSmartAlbum = 0;
    goto LABEL_6;
  }

  dataSource = [snapshotCopy dataSource];
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitRecoverAssetActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v14}];
LABEL_9:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitRecoverAssetActionPerformer.m" lineNumber:23 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v14, px_descriptionForAssertionMessage}];

    goto LABEL_9;
  }

LABEL_4:
  containerCollection = [dataSource containerCollection];
  px_isRecoveredSmartAlbum = [containerCollection px_isRecoveredSmartAlbum];

LABEL_6:
  return px_isRecoveredSmartAlbum;
}

@end