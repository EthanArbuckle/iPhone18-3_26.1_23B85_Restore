@interface PUPhotoKitMoveToSharedLibraryFromSuggestionActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error;
@end

@implementation PUPhotoKitMoveToSharedLibraryFromSuggestionActionPerformer

- (void)completeUserInteractionTaskWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (successCopy)
  {
    [(PUPhotoKitActionPerformer *)self forceIncludeAssetsInDataSource];
  }

  v7.receiver = self;
  v7.super_class = PUPhotoKitMoveToSharedLibraryFromSuggestionActionPerformer;
  [(PUAssetActionPerformer *)&v7 completeUserInteractionTaskWithSuccess:successCopy error:errorCopy];
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (([collectionCopy px_isSharedLibrarySharingSuggestion] & 1) != 0 || objc_msgSend(collectionCopy, "px_isSharedLibrarySharingSuggestionsSmartAlbum"))
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___PUPhotoKitMoveToSharedLibraryFromSuggestionActionPerformer;
    v8 = objc_msgSendSuper2(&v10, sel_canPerformOnAsset_inAssetCollection_, assetCopy, collectionCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end