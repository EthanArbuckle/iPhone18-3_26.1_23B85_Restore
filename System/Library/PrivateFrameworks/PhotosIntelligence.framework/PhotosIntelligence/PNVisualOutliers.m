@interface PNVisualOutliers
+ (BOOL)isAsset:(id)a3 similarToAnyAssets:(id)a4 withinThresholdType:(int64_t)a5;
+ (id)assetsDistancesSummary:(id)a3 inAssets:(id)a4 withinThresholdType:(int64_t)a5;
+ (id)outlierScoresForAssets:(id)a3;
+ (id)requiredFetchPropertySets;
@end

@implementation PNVisualOutliers

+ (id)requiredFetchPropertySets
{
  static VisualOutliers.requiredFetchPropertySets()();
  v2 = sub_1C7550B3C();

  return v2;
}

+ (id)assetsDistancesSummary:(id)a3 inAssets:(id)a4 withinThresholdType:(int64_t)a5
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v7 = sub_1C7550B5C();
  v8 = a3;
  static VisualOutliers.assetsDistancesSummary(for:in:with:)(v8, v7, a5);

  v9 = sub_1C755048C();

  return v9;
}

+ (BOOL)isAsset:(id)a3 similarToAnyAssets:(id)a4 withinThresholdType:(int64_t)a5
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v7 = sub_1C7550B5C();
  v8 = a3;
  static VisualOutliers.isSimilarToAnyAssetInAssets(for:in:with:)(v8, v7, a5);
  LOBYTE(a5) = v9;

  return a5 & 1;
}

+ (id)outlierScoresForAssets:(id)a3
{
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v3 = sub_1C7550B5C();
  static VisualOutliers.outlierScoresForAssets(assets:)(v3);

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v4 = sub_1C755048C();

  return v4;
}

@end