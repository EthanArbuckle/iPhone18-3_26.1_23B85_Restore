@interface _PNSafeAssetAnalyzer
- (signed)eligibilityStateWithAsset:(id)asset curationContext:(id)context;
@end

@implementation _PNSafeAssetAnalyzer

- (signed)eligibilityStateWithAsset:(id)asset curationContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  selfCopy = self;
  v9 = SafeAssetAnalyzer.eligibilityState(asset:curationContext:)(assetCopy, contextCopy);

  return v9;
}

@end