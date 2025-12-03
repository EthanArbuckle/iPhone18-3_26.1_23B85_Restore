@interface _PXVKAnalysis
- (_PXVKAnalysis)initWithAsset:(id)asset analysis:(id)analysis;
@end

@implementation _PXVKAnalysis

- (_PXVKAnalysis)initWithAsset:(id)asset analysis:(id)analysis
{
  assetCopy = asset;
  analysisCopy = analysis;
  v12.receiver = self;
  v12.super_class = _PXVKAnalysis;
  v9 = [(_PXVKAnalysis *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, asset);
    objc_storeStrong(&v10->_analysis, analysis);
  }

  return v10;
}

@end