@interface _PXPhotoKitAssetCollectionToggleFavoriteActionPerformer
+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)reference;
@end

@implementation _PXPhotoKitAssetCollectionToggleFavoriteActionPerformer

+ (BOOL)_targetFavoriteStateForAssetCollectionReference:(id)reference
{
  assetCollection = [reference assetCollection];
  if ([assetCollection px_isMemory])
  {
    v4 = [assetCollection isFavorite] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

@end