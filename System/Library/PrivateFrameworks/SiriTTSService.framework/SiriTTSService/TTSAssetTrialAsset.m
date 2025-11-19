@interface TTSAssetTrialAsset
- (BOOL)downloading;
- (BOOL)purgeable;
- (NSArray)supportedLanguages;
- (NSBundle)bundle;
- (NSNumber)diskSize;
- (NSNumber)downloadSize;
- (TTSAssetSource)assetSource;
- (int64_t)purgeCondition;
- (int64_t)versionNumber;
- (void)cancelDownloadingThen:(id)a3;
- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5;
- (void)purgeThen:(id)a3;
- (void)setPurgeCondition:(int64_t)a3;
@end

@implementation TTSAssetTrialAsset

- (TTSAssetSource)assetSource
{
  v2 = self;
  v3 = sub_1B1AF1EDC();

  return v3;
}

- (int64_t)versionNumber
{
  v2 = self;
  sub_1B1B2A950();
  v4 = v3;

  return v4;
}

- (NSNumber)downloadSize
{
  v2 = self;
  sub_1B1B2ABA4();
  v4 = v3;

  return v4;
}

- (NSNumber)diskSize
{
  v2 = self;
  sub_1B1B2ADDC();
  v4 = v3;

  return v4;
}

- (NSArray)supportedLanguages
{
  v2 = self;
  sub_1B1AE778C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (NSBundle)bundle
{
  v2 = self;
  v3 = sub_1B1B2B138();

  return v3;
}

- (BOOL)downloading
{
  v2 = self;
  v3 = sub_1B1B2B1E4();

  return v3 & 1;
}

- (BOOL)purgeable
{
  v2 = self;
  v3 = sub_1B1B2B2BC();

  return v3 & 1;
}

- (void)downloadWithOptions:(unint64_t)a3 progress:(id)a4 then:(id)a5
{
  v6 = a3;
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = v9;
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_1B1B20A18;
    if (v10)
    {
LABEL_3:
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      v10 = sub_1B1B20A10;
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
  v13 = self;
  sub_1B1B2BFB4(v6, v8, v11, v10, v12);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v8);
}

- (void)cancelDownloadingThen:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B1B2CC00(v5, v4);
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
  sub_1B1B2D370();
  sub_1B1A949B4(v5);
}

- (void)setPurgeCondition:(int64_t)a3
{
  v4 = self;
  sub_1B1B2DA8C(a3);
}

- (int64_t)purgeCondition
{
  v2 = self;
  v3 = sub_1B1B2DC70();

  return v3;
}

@end