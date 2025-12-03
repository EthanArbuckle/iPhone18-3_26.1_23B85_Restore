@interface PNAssetFetcher
+ (id)fetchAssetsWithOptions:(id)options;
@end

@implementation PNAssetFetcher

+ (id)fetchAssetsWithOptions:(id)options
{
  swift_getObjCClassMetadata();
  optionsCopy = options;
  v5 = static AssetFetcher.fetchAssets(options:)(optionsCopy);

  return v5;
}

@end