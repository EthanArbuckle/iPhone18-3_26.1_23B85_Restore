@interface _LTLanguageDetectorAssetInfo
- (_LTLanguageDetectorAssetInfo)initWithAssetUrl:(id)url featureCombinationAssetUrl:(id)assetUrl;
@end

@implementation _LTLanguageDetectorAssetInfo

- (_LTLanguageDetectorAssetInfo)initWithAssetUrl:(id)url featureCombinationAssetUrl:(id)assetUrl
{
  urlCopy = url;
  assetUrlCopy = assetUrl;
  v13.receiver = self;
  v13.super_class = _LTLanguageDetectorAssetInfo;
  v9 = [(_LTLanguageDetectorAssetInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetUrl, url);
    objc_storeStrong(&v10->_featureCombinationConfigUrl, assetUrl);
    v11 = v10;
  }

  return v10;
}

@end