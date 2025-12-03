@interface PXPhotoKitAssetPickAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
@end

@implementation PXPhotoKitAssetPickAssetActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  managerCopy = manager;
  objectReference = [managerCopy objectReference];
  v6 = @"PXPhotoKitAssetActionManagerPreviewActionTitle_SelectItem";
  if (objectReference)
  {
    selectionManager = [managerCopy selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    [objectReference indexPath];
    v10 = [selectedIndexPaths containsIndexPath:&v13];

    if (v10)
    {
      v6 = @"PXPhotoKitAssetActionManagerPreviewActionTitle_DeselectItem";
    }
  }

  v11 = PXLocalizedStringFromTable(v6, @"PhotosUICore");

  return v11;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  personCopy = person;
  groupCopy = group;
  if (!assetCopy || [assetCopy sourceType] != 8 || objc_msgSend(collectionCopy, "assetCollectionType") != 7)
  {
    LOBYTE(v16) = 0;
    goto LABEL_9;
  }

  v15 = collectionCopy;
  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetPickAssetActionPerformer.m" lineNumber:21 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v20}];
LABEL_14:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetPickAssetActionPerformer.m" lineNumber:21 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v20, px_descriptionForAssertionMessage}];

    goto LABEL_14;
  }

LABEL_6:
  if ([v15 status] == 3)
  {
    v16 = [assetCopy needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

LABEL_9:
  return v16;
}

@end