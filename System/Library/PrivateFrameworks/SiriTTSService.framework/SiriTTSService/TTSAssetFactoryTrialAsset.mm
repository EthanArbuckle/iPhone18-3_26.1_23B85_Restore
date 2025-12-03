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
- (void)purgeImmediately:(BOOL)immediately;
- (void)purgeThen:(id)then;
@end

@implementation TTSAssetFactoryTrialAsset

- (TTSAssetSource)assetSource
{
  selfCopy = self;
  v3 = sub_1B1B069DC();

  return v3;
}

- (TTSAssetType)assetType
{
  selfCopy = self;
  v3 = sub_1B1B06A7C();

  return v3;
}

- (NSArray)supportedLanguages
{
  selfCopy = self;
  sub_1B1B06DD8();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  v3 = sub_1B1B07000();

  return v3;
}

- (TTSAssetQuality)quality
{
  selfCopy = self;
  v3 = sub_1B1B073E4();

  return v3;
}

- (int64_t)gender
{
  selfCopy = self;
  v3 = sub_1B1B076A4();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  v3 = sub_1B1B0789C();

  return v3;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  sub_1B1B07A90();
  v4 = v3;

  return v4;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  sub_1B1B07DF0();
  v4 = v3;

  return v4;
}

- (BOOL)purgeable
{
  selfCopy = self;
  v3 = sub_1B1B08258();

  return v3 & 1;
}

- (BOOL)locallyAvailable
{
  selfCopy = self;
  v3 = sub_1B1B082B8();

  return v3 & 1;
}

- (void)purgeImmediately:(BOOL)immediately
{
  selfCopy = self;
  sub_1B1B082E4();
}

- (void)purgeThen:(id)then
{
  v4 = _Block_copy(then);
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

  selfCopy = self;
  sub_1B1B0838C(v7, v6);
  sub_1B1A949B4(v7);
}

@end