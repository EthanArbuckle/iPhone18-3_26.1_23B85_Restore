@interface _PNSafeAssetAnalyzer
- (signed)eligibilityStateWithAsset:(id)a3 curationContext:(id)a4;
@end

@implementation _PNSafeAssetAnalyzer

- (signed)eligibilityStateWithAsset:(id)a3 curationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = SafeAssetAnalyzer.eligibilityState(asset:curationContext:)(v6, v7);

  return v9;
}

@end