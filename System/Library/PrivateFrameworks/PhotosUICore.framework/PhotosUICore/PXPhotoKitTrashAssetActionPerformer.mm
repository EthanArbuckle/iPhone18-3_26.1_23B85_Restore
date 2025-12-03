@interface PXPhotoKitTrashAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
@end

@implementation PXPhotoKitTrashAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:16 target:targetCopy action:action];

  return v8;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  collectionCopy = collection;
  if (([collectionCopy isTrashBin] & 1) != 0 || (objc_msgSend(collectionCopy, "px_isRecoveredSmartAlbum") & 1) != 0 || !objc_msgSend(off_1E7721428, "destructiveActionsEnabled") || !objc_msgSend(collectionCopy, "canPerformEditOperation:", 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = [assetCopy canPerformEditOperation:1];
  }

  return v9;
}

@end