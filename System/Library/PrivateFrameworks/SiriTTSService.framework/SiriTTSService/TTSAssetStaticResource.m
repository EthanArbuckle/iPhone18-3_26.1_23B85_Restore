@interface TTSAssetStaticResource
- (BOOL)purgeable;
- (NSBundle)bundle;
- (NSNumber)diskSize;
- (NSString)name;
- (TTSAssetQuality)quality;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)versionNumber;
@end

@implementation TTSAssetStaticResource

- (TTSAssetType)assetType
{
  v2 = self;
  v3 = sub_1B1ABC12C();

  return v3;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
  v3 = sub_1B1ABC150();

  return v3;
}

- (TTSAssetQuality)quality
{
  v2 = self;
  v3 = sub_1B1B2ECA4();

  return v3;
}

- (NSString)name
{
  v2 = sub_1B1C2CB28();

  return v2;
}

- (int64_t)versionNumber
{
  v2 = self;
  sub_1B1B62AC8();
  v4 = v3;

  return v4;
}

- (NSNumber)diskSize
{
  v2 = self;
  sub_1B1B630F4();
  v4 = v3;

  return v4;
}

- (NSBundle)bundle
{
  v2 = sub_1B1B633F4();

  return v2;
}

- (BOOL)purgeable
{
  v2 = self;
  v3 = sub_1B1B63458();

  return v3 & 1;
}

@end