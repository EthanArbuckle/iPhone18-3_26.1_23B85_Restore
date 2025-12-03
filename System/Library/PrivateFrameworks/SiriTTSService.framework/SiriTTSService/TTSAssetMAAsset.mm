@interface TTSAssetMAAsset
- (BOOL)downloading;
- (BOOL)locallyAvailable;
- (BOOL)purgeable;
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
- (int64_t)versionNumber;
- (void)cancelDownloadingThen:(id)then;
- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then;
- (void)purgeImmediately:(BOOL)immediately;
- (void)purgeThen:(id)then;
@end

@implementation TTSAssetMAAsset

- (TTSAssetType)assetType
{
  selfCopy = self;
  v3 = sub_1B1B4B3E4();

  return v3;
}

- (TTSAssetSource)assetSource
{
  selfCopy = self;
  v3 = sub_1B1B4B4B4();

  return v3;
}

- (TTSAssetTechnology)technology
{
  selfCopy = self;
  v3 = sub_1B1B4B51C();

  return v3;
}

- (TTSAssetQuality)quality
{
  selfCopy = self;
  v3 = sub_1B1B4BC54();

  return v3;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  v3 = sub_1B1B4D498();

  return v3;
}

- (NSArray)supportedLanguages
{
  selfCopy = self;
  sub_1B1B4DC6C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (int64_t)gender
{
  selfCopy = self;
  v3 = sub_1B1B4DFB4();

  return v3;
}

- (NSNumber)age
{
  selfCopy = self;
  v3 = sub_1B1B4E3A0();

  return v3;
}

- (NSDictionary)attributes
{
  selfCopy = self;
  sub_1B1B4E530();

  v3 = sub_1B1C2CA78();

  return v3;
}

- (NSNumber)downloadSize
{
  selfCopy = self;
  v3 = sub_1B1B4E8FC();

  return v3;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  v3 = sub_1B1B4EA60();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  v3 = sub_1B1B4EBF0();

  return v3;
}

- (BOOL)downloading
{
  selfCopy = self;
  v3 = sub_1B1B4EDC4();

  return v3;
}

- (BOOL)purgeable
{
  selfCopy = self;
  v3 = sub_1B1B4EE2C();

  return v3;
}

- (BOOL)locallyAvailable
{
  selfCopy = self;
  v3 = sub_1B1B4EE98();

  return v3 & 1;
}

- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then
{
  v8 = _Block_copy(progress);
  v9 = _Block_copy(then);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1B1B20A20;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_1B1A96D2C;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  selfCopy = self;
  sub_1B1B4EEC4(options, v8, v11, v10, v12);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v8);
}

- (void)cancelDownloadingThen:(id)then
{
  v4 = _Block_copy(then);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1B1B4F370(sub_1B1B18B38, v5);
}

- (void)purgeImmediately:(BOOL)immediately
{
  selfCopy = self;
  sub_1B1B4F5A0();
}

- (void)purgeThen:(id)then
{
  v4 = _Block_copy(then);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1B1A95808;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B1B4F648(v7, v6);
  sub_1B1A949B4(v7);
}

@end