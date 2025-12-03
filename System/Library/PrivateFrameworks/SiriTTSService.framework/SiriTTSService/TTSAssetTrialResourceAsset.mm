@interface TTSAssetTrialResourceAsset
- (NSString)identifier;
- (NSString)name;
- (TTSAssetQuality)quality;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
@end

@implementation TTSAssetTrialResourceAsset

- (TTSAssetType)assetType
{
  selfCopy = self;
  v3 = sub_1B1ABC12C();

  return v3;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  v3 = sub_1B1ABC150();

  return v3;
}

- (TTSAssetQuality)quality
{
  selfCopy = self;
  v3 = sub_1B1B2ECA4();

  return v3;
}

- (NSString)name
{
  v2 = sub_1B1C2CB28();

  return v2;
}

- (NSString)identifier
{
  sub_1B1B2ED5C();
  v2 = sub_1B1C2CB28();

  return v2;
}

@end