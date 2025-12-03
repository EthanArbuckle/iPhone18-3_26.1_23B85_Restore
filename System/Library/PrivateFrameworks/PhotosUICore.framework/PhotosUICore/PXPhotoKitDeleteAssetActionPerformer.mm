@interface PXPhotoKitDeleteAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)collection;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
- (int64_t)destructivePhotosAction;
@end

@implementation PXPhotoKitDeleteAssetActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  effectiveSelectionSnapshot = [manager effectiveSelectionSnapshot];
  isAnyItemSelected = [effectiveSelectionSnapshot isAnyItemSelected];

  if (isAnyItemSelected)
  {
    v6 = @"PXPhotoKitDeleteAssetActionPerformer_TitleDefault";
  }

  else
  {
    v6 = @"PXPhotoKitDeleteAssetActionPerformer_TitleSelection";
  }

  return PXLocalizedStringFromTable(v6, @"PhotosUICore");
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  isAnyItemSelected = [selectionSnapshot isAnyItemSelected];

  if (isAnyItemSelected)
  {
    v11 = @"PXPhotoKitDeleteAssetActionPerformer_TitleDefault";
  }

  else
  {
    v11 = @"PXPhotoKitDeleteAssetActionPerformer_TitleSelection";
  }

  v12 = PXLocalizedStringFromTable(v11, @"PhotosUICore");
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v12 style:0 target:targetCopy action:action];

  return v13;
}

+ (BOOL)canPerformOnImplicitSelectionInContainerCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isRecentlyDeletedSmartAlbum])
  {
    px_isRecoveredSmartAlbum = 1;
  }

  else
  {
    px_isRecoveredSmartAlbum = [collectionCopy px_isRecoveredSmartAlbum];
  }

  return px_isRecoveredSmartAlbum;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  if (([collectionCopy isTrashBin] & 1) != 0 || objc_msgSend(collectionCopy, "px_isRecoveredSmartAlbum"))
  {
    v10 = [self canExpungeAsset:assetCopy inAssetCollection:collectionCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)destructivePhotosAction
{
  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    px_descriptionForAssertionMessage = [firstObject px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeleteAssetActionPerformer.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitDeleteAssetActionPerformer.m" lineNumber:50 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v11}];
  }

LABEL_3:
  if ([firstObject isTrashBin])
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