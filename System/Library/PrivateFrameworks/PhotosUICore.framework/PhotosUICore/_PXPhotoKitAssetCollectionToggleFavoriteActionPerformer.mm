@interface _PXPhotoKitAssetCollectionToggleFavoriteActionPerformer
+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)a3;
@end

@implementation _PXPhotoKitAssetCollectionToggleFavoriteActionPerformer

+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)a3
{
  v3 = [a3 assetCollection];
  if ([v3 px_isMemory])
  {
    v4 = [v3 isFavorite] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end