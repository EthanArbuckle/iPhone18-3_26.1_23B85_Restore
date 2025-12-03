@interface TTSAssetStaticVoice
- (NSBundle)bundle;
- (NSNumber)age;
- (NSNumber)diskSize;
- (TTSAssetQuality)quality;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
- (int64_t)versionNumber;
@end

@implementation TTSAssetStaticVoice

- (TTSAssetType)assetType
{
  selfCopy = self;
  v3 = sub_1B1AECD40();

  return v3;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  v3 = sub_1B1AF11E8();

  return v3;
}

- (TTSAssetQuality)quality
{
  selfCopy = self;
  v3 = sub_1B1AEEC94();

  return v3;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  v3 = sub_1B1B6167C();

  return v3;
}

- (int64_t)gender
{
  selfCopy = self;
  v3 = sub_1B1B617E8();

  return v3;
}

- (NSNumber)age
{
  selfCopy = self;
  v3 = sub_1B1B61958();

  return v3;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  v3 = sub_1B1B61A5C();

  return v3;
}

- (NSBundle)bundle
{
  v2 = sub_1B1B61ADC();

  return v2;
}

@end