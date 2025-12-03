@interface TTSAssetProxyAsset
- (BOOL)downloading;
- (NSArray)supportedLanguages;
- (NSBundle)bundle;
- (NSDictionary)attributes;
- (NSNumber)age;
- (NSNumber)diskSize;
- (NSNumber)downloadSize;
- (TTSAssetQuality)quality;
- (TTSAssetSource)assetSource;
- (TTSAssetTechnology)technology;
- (TTSAssetType)assetType;
- (int64_t)gender;
- (int64_t)purgeCondition;
- (int64_t)versionNumber;
- (void)cancelDownloadingThen:(id)then;
- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then;
- (void)purgeThen:(id)then;
- (void)setPurgeCondition:(int64_t)condition;
@end

@implementation TTSAssetProxyAsset

- (TTSAssetType)assetType
{
  selfCopy = self;
  v3 = sub_1B1AF1750();

  return v3;
}

- (TTSAssetSource)assetSource
{
  selfCopy = self;
  v3 = sub_1B1AF1F00();

  return v3;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  v3 = sub_1B1AF18D0();

  return v3;
}

- (TTSAssetQuality)quality
{
  v2 = sub_1B1AF22D4();

  return v2;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  v3 = sub_1B1B40BCC();

  return v3;
}

- (NSArray)supportedLanguages
{
  selfCopy = self;
  sub_1B1AF1F5C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (int64_t)gender
{
  selfCopy = self;
  v3 = sub_1B1B40CF4();

  return v3;
}

- (NSNumber)age
{
  selfCopy = self;
  v3 = sub_1B1B40D64();

  return v3;
}

- (NSNumber)downloadSize
{
  selfCopy = self;
  v3 = sub_1B1B40DB0();

  return v3;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  v3 = sub_1B1B40DFC();

  return v3;
}

- (NSDictionary)attributes
{
  selfCopy = self;
  sub_1B1B40E78();

  v3 = sub_1B1C2CA78();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  v3 = sub_1B1B40FA0();

  return v3;
}

- (BOOL)downloading
{
  selfCopy = self;
  sub_1B1B412CC();

  return 0;
}

- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then
{
  v7 = _Block_copy(progress);
  v8 = _Block_copy(then);
  v9 = v8;
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1B1B20A18;
    if (v9)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v9;
      v10 = sub_1B1B20A10;
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v10 = 0;
LABEL_6:
  selfCopy = self;
  sub_1B1B413A8(selfCopy, v11, v12, v10);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)then
{
  v4 = _Block_copy(then);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B1B415A8(selfCopy, v4);
  _Block_release(v4);
}

- (void)purgeThen:(id)then
{
  v4 = _Block_copy(then);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1B1A95AD0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_1B1B41724(v5);
  sub_1B1A949B4(v5);
}

- (void)setPurgeCondition:(int64_t)condition
{
  selfCopy = self;
  sub_1B1B418C4();
}

- (int64_t)purgeCondition
{
  selfCopy = self;
  sub_1B1B41A0C();

  return 3;
}

@end