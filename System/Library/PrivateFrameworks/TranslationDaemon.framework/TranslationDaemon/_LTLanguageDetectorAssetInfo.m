@interface _LTLanguageDetectorAssetInfo
- (_LTLanguageDetectorAssetInfo)initWithAssetUrl:(id)a3 featureCombinationAssetUrl:(id)a4;
@end

@implementation _LTLanguageDetectorAssetInfo

- (_LTLanguageDetectorAssetInfo)initWithAssetUrl:(id)a3 featureCombinationAssetUrl:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _LTLanguageDetectorAssetInfo;
  v9 = [(_LTLanguageDetectorAssetInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetUrl, a3);
    objc_storeStrong(&v10->_featureCombinationConfigUrl, a4);
    v11 = v10;
  }

  return v10;
}

@end