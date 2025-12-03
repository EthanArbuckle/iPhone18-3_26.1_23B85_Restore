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
  selfCopy = self;
  sub_1B1AE7964();
  v4 = v3;

  return v4;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  sub_1B1AEEEB8();
  v4 = v3;

  return v4;
}

- (TTSAssetQuality)quality
{
  selfCopy = self;
  sub_1B1AF1B80();
  v4 = v3;

  return v4;
}

- (int64_t)gender
{
  selfCopy = self;
  v3 = sub_1B1B2E65C();

  return v3;
}

- (NSNumber)age
{
  selfCopy = self;
  v3 = sub_1B1B2E86C();

  return v3;
}

@end