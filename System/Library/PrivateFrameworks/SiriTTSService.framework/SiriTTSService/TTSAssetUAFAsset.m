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
- (void)cancelDownloadingThen:(id)a3;
- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5;
- (void)purgeThen:(id)a3;
@end

@implementation TTSAssetUAFAsset

- (BOOL)locallyAvailable
{
  v2 = self;
  v3 = sub_1B1AB50AC();

  return v3;
}

- (BOOL)purgeable
{
  v2 = self;
  v3 = sub_1B1AF6B10();

  return v3 & 1;
}

- (BOOL)downloading
{
  v2 = self;
  sub_1B1AF6D44();
  v4 = v3;

  return v4 & 1;
}

- (TTSAssetSource)assetSource
{
  v2 = self;
  v3 = sub_1B1AB93D0();

  return v3;
}

- (int64_t)versionNumber
{
  v2 = self;
  v3 = sub_1B1AB8434();

  return v3;
}

- (NSNumber)downloadSize
{
  v2 = self;
  v3 = sub_1B1AE47E4();

  return v3;
}

- (NSNumber)diskSize
{
  v2 = self;
  v3 = sub_1B1AE4808();

  return v3;
}

- (NSArray)supportedLanguages
{
  v2 = self;
  sub_1B1ABA04C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (NSBundle)bundle
{
  v2 = self;
  sub_1B1AB4D04();
  v4 = v3;

  return v4;
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
  v10 = self;
  sub_1B1B44D98();
  sub_1B1A949B4(v9);
  sub_1B1A949B4(v7);
}

- (void)cancelDownloadingThen:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B1B45F6C(v5, v4);
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
  sub_1B1B46570();
  sub_1B1A949B4(v5);
}

@end