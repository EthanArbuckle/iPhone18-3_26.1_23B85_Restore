@interface PXSettingsMeaningMomentDataContainer
- (PXSettingsMeaningMomentDataContainer)initWithCuratedAssets:(id)assets assetCollection:(id)collection;
@end

@implementation PXSettingsMeaningMomentDataContainer

- (PXSettingsMeaningMomentDataContainer)initWithCuratedAssets:(id)assets assetCollection:(id)collection
{
  assetsCopy = assets;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXSettingsMeaningMomentDataContainer;
  v9 = [(PXSettingsMeaningMomentDataContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedAssets, assets);
    objc_storeStrong(&v10->_assetCollection, collection);
  }

  return v10;
}

@end