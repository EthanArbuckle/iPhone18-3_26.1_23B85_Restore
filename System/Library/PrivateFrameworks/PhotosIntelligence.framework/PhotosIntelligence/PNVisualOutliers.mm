@interface PNVisualOutliers
+ (BOOL)isAsset:(id)asset similarToAnyAssets:(id)assets withinThresholdType:(int64_t)type;
+ (id)assetsDistancesSummary:(id)summary inAssets:(id)assets withinThresholdType:(int64_t)type;
+ (id)outlierScoresForAssets:(id)assets;
+ (id)requiredFetchPropertySets;
@end

@implementation PNVisualOutliers

+ (id)requiredFetchPropertySets
{
  static VisualOutliers.requiredFetchPropertySets()();
  v2 = sub_1C7550B3C();

  return v2;
}

+ (id)assetsDistancesSummary:(id)summary inAssets:(id)assets withinThresholdType:(int64_t)type
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v7 = sub_1C7550B5C();
  summaryCopy = summary;
  static VisualOutliers.assetsDistancesSummary(for:in:with:)(summaryCopy, v7, type);

  v9 = sub_1C755048C();

  return v9;
}

+ (BOOL)isAsset:(id)asset similarToAnyAssets:(id)assets withinThresholdType:(int64_t)type
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v7 = sub_1C7550B5C();
  assetCopy = asset;
  static VisualOutliers.isSimilarToAnyAssetInAssets(for:in:with:)(assetCopy, v7, type);
  LOBYTE(type) = v9;

  return type & 1;
}

+ (id)outlierScoresForAssets:(id)assets
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v3 = sub_1C7550B5C();
  static VisualOutliers.outlierScoresForAssets(assets:)(v3);

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v4 = sub_1C755048C();

  return v4;
}

@end