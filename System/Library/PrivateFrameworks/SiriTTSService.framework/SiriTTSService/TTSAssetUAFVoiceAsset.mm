@interface TTSAssetUAFVoiceAsset
- (NSNumber)age;
- (TTSAssetQuality)quality;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
@end

@implementation TTSAssetUAFVoiceAsset

- (TTSAssetType)assetType
{
  v2 = self;
  v3 = sub_1B1ABA5F0();

  return v3;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
  v3 = sub_1B1AB8D40();

  return v3;
}

- (TTSAssetQuality)quality
{
  v2 = self;
  v3 = sub_1B1AB8A9C();

  return v3;
}

- (int64_t)gender
{
  v2 = self;
  v3 = sub_1B1AB90E4();

  return v3;
}

- (NSNumber)age
{
  v2 = self;
  v3 = sub_1B1AE2FEC();

  return v3;
}

@end