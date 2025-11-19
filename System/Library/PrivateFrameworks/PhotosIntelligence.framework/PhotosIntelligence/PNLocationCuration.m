@interface PNLocationCuration
+ (id)representativeAssetsForMapDisplayFromAssets:(id)a3;
+ (id)requiredFetchPropertySets;
@end

@implementation PNLocationCuration

+ (id)requiredFetchPropertySets
{
  static LocationCuration.requiredFetchPropertySets()();
  v2 = sub_1C7550B3C();

  return v2;
}

+ (id)representativeAssetsForMapDisplayFromAssets:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static LocationCuration.representativeAssetsForMapDisplay(from:)();

  sub_1C6FDEC1C();
  v5 = sub_1C7550B3C();

  return v5;
}

@end