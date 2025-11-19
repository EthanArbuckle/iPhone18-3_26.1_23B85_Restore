@interface PUPhotoKitMoveToPersonalLibraryFromSuggestionActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4;
@end

@implementation PUPhotoKitMoveToPersonalLibraryFromSuggestionActionPerformer

- (void)completeUserInteractionTaskWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    [(PUPhotoKitActionPerformer *)self forceIncludeAssetsInDataSource];
  }

  v7.receiver = self;
  v7.super_class = PUPhotoKitMoveToPersonalLibraryFromSuggestionActionPerformer;
  [(PUAssetActionPerformer *)&v7 completeUserInteractionTaskWithSuccess:v4 error:v6];
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 px_isSharedLibrarySharingSuggestion] & 1) != 0 || objc_msgSend(v7, "px_isSharedLibrarySharingSuggestionsSmartAlbum"))
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___PUPhotoKitMoveToPersonalLibraryFromSuggestionActionPerformer;
    v8 = objc_msgSendSuper2(&v10, sel_canPerformOnAsset_inAssetCollection_, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end