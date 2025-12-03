@interface PNDetailsViewAssetFetcher
+ (id)addingKeyAssetForObject:(id)object toAssets:(id)assets options:(id)options;
@end

@implementation PNDetailsViewAssetFetcher

+ (id)addingKeyAssetForObject:(id)object toAssets:(id)assets options:(id)options
{
  swift_getObjCClassMetadata();
  objectCopy = object;
  assetsCopy = assets;
  optionsCopy = options;
  v11 = sub_1C72D0A08(objectCopy, assetsCopy, optionsCopy);

  return v11;
}

@end