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
- (void)cancelDownloadingThen:(id)a3;
- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5;
- (void)purgeThen:(id)a3;
- (void)setPurgeCondition:(int64_t)a3;
@end

@implementation TTSAssetProxyAsset

- (TTSAssetType)assetType
{
  v2 = self;
  v3 = sub_1B1AF1750();

  return v3;
}

- (TTSAssetSource)assetSource
{
  v2 = self;
  v3 = sub_1B1AF1F00();

  return v3;
}

- (TTSAssetTechnology)technology
{
  v2 = self;
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
  v2 = self;
  v3 = sub_1B1B40BCC();

  return v3;
}

- (NSArray)supportedLanguages
{
  v2 = self;
  sub_1B1AF1F5C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (int64_t)gender
{
  v2 = self;
  v3 = sub_1B1B40CF4();

  return v3;
}

- (NSNumber)age
{
  v2 = self;
  v3 = sub_1B1B40D64();

  return v3;
}

- (NSNumber)downloadSize
{
  v2 = self;
  v3 = sub_1B1B40DB0();

  return v3;
}

- (NSNumber)diskSize
{
  v2 = self;
  v3 = sub_1B1B40DFC();

  return v3;
}

- (NSDictionary)attributes
{
  v2 = self;
  sub_1B1B40E78();

  v3 = sub_1B1C2CA78();

  return v3;
}

- (NSBundle)bundle
{
  v2 = self;
  v3 = sub_1B1B40FA0();

  return v3;
}

- (BOOL)downloading
{
  v2 = self;
  sub_1B1B412CC();

  return 0;
}

- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
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
  v13 = self;
  sub_1B1B413A8(v13, v11, v12, v10);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B1B415A8(v5, v4);
  _Block_release(v4);
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
  sub_1B1B41724(v5);
  sub_1B1A949B4(v5);
}

- (void)setPurgeCondition:(int64_t)a3
{
  v3 = self;
  sub_1B1B418C4();
}

- (int64_t)purgeCondition
{
  v2 = self;
  sub_1B1B41A0C();

  return 3;
}

@end