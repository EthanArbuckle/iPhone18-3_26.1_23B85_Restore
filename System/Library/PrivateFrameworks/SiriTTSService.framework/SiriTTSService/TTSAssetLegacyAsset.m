@interface TTSAssetLegacyAsset
- (BOOL)purgeable;
- (NSArray)supportedLanguages;
- (NSBundle)bundle;
- (NSDictionary)attributes;
- (NSNumber)age;
- (NSNumber)diskSize;
- (TTSAssetQuality)quality;
- (TTSAssetSource)assetSource;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
- (int64_t)versionNumber;
- (void)purgeThen:(id)a3;
@end

@implementation TTSAssetLegacyAsset

- (TTSAssetType)assetType
{
  v2 = self;
  v3 = sub_1B1BDF414();

  return v3;
}

- (TTSAssetSource)assetSource
{
  v2 = self;
  v3 = sub_1B1BDF660();

  return v3;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
  v3 = sub_1B1BDF700();

  return v3;
}

- (TTSAssetQuality)quality
{
  v2 = self;
  v3 = sub_1B1BDFB24();

  return v3;
}

- (int64_t)versionNumber
{
  v2 = self;
  sub_1B1BE02D4();
  v4 = v3;

  return v4;
}

- (NSArray)supportedLanguages
{
  v2 = self;
  sub_1B1BE0870();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (int64_t)gender
{
  v2 = self;
  v3 = sub_1B1BE09DC();

  return v3;
}

- (NSNumber)age
{
  v2 = self;
  v3 = sub_1B1BE0AB8();

  return v3;
}

- (NSNumber)diskSize
{
  v2 = self;
  sub_1B1BE0BA8();
  v4 = v3;

  return v4;
}

- (NSDictionary)attributes
{
  v2 = self;
  sub_1B1BE11B0();

  v3 = sub_1B1C2CA78();

  return v3;
}

- (NSBundle)bundle
{
  v2 = sub_1B1BE1570();

  return v2;
}

- (BOOL)purgeable
{
  v2 = self;
  v3 = sub_1B1BE15D4();

  return v3;
}

- (void)purgeThen:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1B1A95AD0;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1B1BE168C();
  sub_1B1A949B4(v5);
}

@end