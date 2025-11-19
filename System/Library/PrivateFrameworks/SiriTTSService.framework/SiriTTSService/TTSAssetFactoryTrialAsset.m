@interface TTSAssetFactoryTrialAsset
- (BOOL)locallyAvailable;
- (BOOL)purgeable;
- (NSArray)supportedLanguages;
- (NSBundle)bundle;
- (NSNumber)diskSize;
- (TTSAssetQuality)quality;
- (TTSAssetSource)assetSource;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
- (int64_t)versionNumber;
- (void)purgeImmediately:(BOOL)a3;
- (void)purgeThen:(id)a3;
@end

@implementation TTSAssetFactoryTrialAsset

- (TTSAssetSource)assetSource
{
  v2 = self;
  v3 = sub_1B1B069DC();

  return v3;
}

- (TTSAssetType)assetType
{
  v2 = self;
  v3 = sub_1B1B06A7C();

  return v3;
}

- (NSArray)supportedLanguages
{
  v2 = self;
  sub_1B1B06DD8();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
  v3 = sub_1B1B07000();

  return v3;
}

- (TTSAssetQuality)quality
{
  v2 = self;
  v3 = sub_1B1B073E4();

  return v3;
}

- (int64_t)gender
{
  v2 = self;
  v3 = sub_1B1B076A4();

  return v3;
}

- (NSBundle)bundle
{
  v2 = self;
  v3 = sub_1B1B0789C();

  return v3;
}

- (NSNumber)diskSize
{
  v2 = self;
  sub_1B1B07A90();
  v4 = v3;

  return v4;
}

- (int64_t)versionNumber
{
  v2 = self;
  sub_1B1B07DF0();
  v4 = v3;

  return v4;
}

- (BOOL)purgeable
{
  v2 = self;
  v3 = sub_1B1B08258();

  return v3 & 1;
}

- (BOOL)locallyAvailable
{
  v2 = self;
  v3 = sub_1B1B082B8();

  return v3 & 1;
}

- (void)purgeImmediately:(BOOL)a3
{
  v3 = self;
  sub_1B1B082E4();
}

- (void)purgeThen:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1B1A95AD0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1B1B0838C(v7, v6);
  sub_1B1A949B4(v7);
}

@end