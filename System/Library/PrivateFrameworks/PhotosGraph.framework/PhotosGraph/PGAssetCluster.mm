@interface PGAssetCluster
- (PGAssetCluster)initWithAssets:(id)assets region:(id)region;
@end

@implementation PGAssetCluster

- (PGAssetCluster)initWithAssets:(id)assets region:(id)region
{
  assetsCopy = assets;
  regionCopy = region;
  v12.receiver = self;
  v12.super_class = PGAssetCluster;
  v9 = [(PGAssetCluster *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assets, assets);
    objc_storeStrong(&v10->_region, region);
  }

  return v10;
}

@end