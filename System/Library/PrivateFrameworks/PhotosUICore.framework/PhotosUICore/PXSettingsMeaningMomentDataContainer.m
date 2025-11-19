@interface PXSettingsMeaningMomentDataContainer
- (PXSettingsMeaningMomentDataContainer)initWithCuratedAssets:(id)a3 assetCollection:(id)a4;
@end

@implementation PXSettingsMeaningMomentDataContainer

- (PXSettingsMeaningMomentDataContainer)initWithCuratedAssets:(id)a3 assetCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSettingsMeaningMomentDataContainer;
  v9 = [(PXSettingsMeaningMomentDataContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedAssets, a3);
    objc_storeStrong(&v10->_assetCollection, a4);
  }

  return v10;
}

@end