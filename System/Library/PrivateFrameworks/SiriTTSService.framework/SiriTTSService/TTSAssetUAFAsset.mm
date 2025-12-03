@interface TTSAssetUAFAsset
- (BOOL)downloading;
- (BOOL)locallyAvailable;
- (BOOL)purgeable;
- (NSArray)supportedLanguages;
- (NSBundle)bundle;
- (NSNumber)diskSize;
- (NSNumber)downloadSize;
- (TTSAssetSource)assetSource;
- (int64_t)versionNumber;
- (void)cancelDownloadingThen:(id)then;
- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then;
- (void)purgeThen:(id)then;
@end

@implementation TTSAssetUAFAsset

- (BOOL)locallyAvailable
{
  selfCopy = self;
  v3 = sub_1B1AB50AC();

  return v3;
}

- (BOOL)purgeable
{
  selfCopy = self;
  v3 = sub_1B1AF6B10();

  return v3 & 1;
}

- (BOOL)downloading
{
  selfCopy = self;
  sub_1B1AF6D44();
  v4 = v3;

  return v4 & 1;
}

- (TTSAssetSource)assetSource
{
  selfCopy = self;
  v3 = sub_1B1AB93D0();

  return v3;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  v3 = sub_1B1AB8434();

  return v3;
}

- (NSNumber)downloadSize
{
  selfCopy = self;
  v3 = sub_1B1AE47E4();

  return v3;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  v3 = sub_1B1AE4808();

  return v3;
}

- (NSArray)supportedLanguages
{
  selfCopy = self;
  sub_1B1ABA04C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  sub_1B1AB4D04();
  v4 = v3;

  return v4;
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
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (v8)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v9;
    v9 = sub_1B1B20A10;
  }

LABEL_5:
  selfCopy = self;
  sub_1B1B44D98();
  sub_1B1A949B4(v9);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)then
{
  v4 = _Block_copy(then);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B1B45F6C(selfCopy, v4);
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
  sub_1B1B46570();
  sub_1B1A949B4(v5);
}

@end