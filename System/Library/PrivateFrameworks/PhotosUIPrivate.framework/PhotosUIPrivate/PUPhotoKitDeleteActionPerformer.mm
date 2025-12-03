@interface PUPhotoKitDeleteActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (int64_t)destructivePhotosAction;
@end

@implementation PUPhotoKitDeleteActionPerformer

- (int64_t)destructivePhotosAction
{
  assetsByAssetCollection = [(PUAssetActionPerformer *)self assetsByAssetCollection];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:963 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"self.assetsByAssetCollection.allKeys.firstObject", v11, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoKitAssetActionManager.m" lineNumber:963 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"self.assetsByAssetCollection.allKeys.firstObject", v11}];
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

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (([collectionCopy isTrashBin] & 1) != 0 || objc_msgSend(collectionCopy, "px_isRecoveredSmartAlbum"))
  {
    v7 = PXCanExpungeAssetFromAssetCollection();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end