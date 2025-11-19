@interface TTSAssetTrialVoiceAsset
- (NSNumber)age;
- (TTSAssetQuality)quality;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
@end

@implementation TTSAssetTrialVoiceAsset

- (TTSAssetType)assetType
{
  v2 = self;
  sub_1B1AE7964();
  v4 = v3;

  return v4;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
  sub_1B1AEEEB8();
  v4 = v3;

  return v4;
}

- (TTSAssetQuality)quality
{
  v2 = self;
  sub_1B1AF1B80();
  v4 = v3;

  return v4;
}

- (int64_t)gender
{
  v2 = self;
  v3 = sub_1B1B2E65C();

  return v3;
}

- (NSNumber)age
{
  v2 = self;
  v3 = sub_1B1B2E86C();

  return v3;
}

@end