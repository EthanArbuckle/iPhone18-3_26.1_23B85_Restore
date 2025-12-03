@interface PXMessagesDebugTapbackStatusManager
- (id)tapbackUserDataForAsset:(id)asset previousAsset:(id)previousAsset;
@end

@implementation PXMessagesDebugTapbackStatusManager

- (id)tapbackUserDataForAsset:(id)asset previousAsset:(id)previousAsset
{
  assetCopy = asset;
  previousAssetCopy = previousAsset;
  v7 = objc_alloc_init(PXMessagesDebugTapbackUserData);
  if ([assetCopy isFavorite])
  {
    isFavorite = [assetCopy isFavorite];
    v9 = isFavorite ^ [previousAssetCopy isFavorite];
  }

  else
  {
    v9 = 0;
  }

  [(PXMessagesDebugTapbackUserData *)v7 setShouldAnimate:v9];
  [(PXMessagesDebugTapbackUserData *)v7 setAsset:assetCopy];

  return v7;
}

@end