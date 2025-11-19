@interface PNAssetFetcher
+ (id)fetchAssetsWithOptions:(id)a3;
@end

@implementation PNAssetFetcher

+ (id)fetchAssetsWithOptions:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = static AssetFetcher.fetchAssets(options:)(v4);

  return v5;
}

@end