@interface PNLocationCuration
+ (id)representativeAssetsForMapDisplayFromAssets:(id)assets;
+ (id)requiredFetchPropertySets;
@end

@implementation PNLocationCuration

+ (id)requiredFetchPropertySets
{
  static LocationCuration.requiredFetchPropertySets()();
  v2 = sub_1C7550B3C();

  return v2;
}

+ (id)representativeAssetsForMapDisplayFromAssets:(id)assets
{
  swift_getObjCClassMetadata();
  assetsCopy = assets;
  static LocationCuration.representativeAssetsForMapDisplay(from:)();

  sub_1C6FDEC1C();
  v5 = sub_1C7550B3C();

  return v5;
}

@end