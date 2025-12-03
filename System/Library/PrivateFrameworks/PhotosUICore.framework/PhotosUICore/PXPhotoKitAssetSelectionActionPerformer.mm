@interface PXPhotoKitAssetSelectionActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetSelectionActionPerformer

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
    v16 = 0;
    goto LABEL_8;
  }

  v15 = collectionCopy;
  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetSelectionActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v20}];
LABEL_11:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    px_descriptionForAssertionMessage = [v15 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetSelectionActionPerformer.m" lineNumber:25 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v20, px_descriptionForAssertionMessage}];

    goto LABEL_11;
  }

LABEL_6:
  v16 = [v15 status] == 3;

LABEL_8:
  return v16;
}

- (void)performUserInteractionTask
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  v21 = 0u;
  v22 = 0u;
  objectReference = [(PXPhotoKitAssetActionPerformer *)self objectReference];
  if (dataSource)
  {
    [dataSource indexPathForObjectReference:objectReference];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  if (v21 == *off_1E7721F68)
  {
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  }

  else
  {
    v20[0] = v21;
    v20[1] = v22;
    selectedIndexPaths = [off_1E7721768 indexPathSetWithIndexPath:v20];
  }

  v7 = selectedIndexPaths;
  selectionManager = [(PXAssetActionPerformer *)self selectionManager];
  selectionSnapshot2 = [selectionManager selectionSnapshot];
  selectedIndexPaths2 = [selectionSnapshot2 selectedIndexPaths];
  v11 = [selectedIndexPaths2 isSupersetOfSet:v7];

  selectionManager2 = [(PXAssetActionPerformer *)self selectionManager];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __69__PXPhotoKitAssetSelectionActionPerformer_performUserInteractionTask__block_invoke;
  v17 = &unk_1E77493D8;
  v19 = v11;
  v18 = v7;
  v13 = v7;
  [selectionManager2 performChanges:&v14];
  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0, v14, v15, v16, v17];
}

@end