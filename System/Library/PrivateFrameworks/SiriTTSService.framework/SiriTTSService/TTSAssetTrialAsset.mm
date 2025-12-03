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
- (void)cancelDownloadingThen:(id)then;
- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then;
- (void)purgeThen:(id)then;
- (void)setPurgeCondition:(int64_t)condition;
@end

@implementation TTSAssetTrialAsset

- (TTSAssetSource)assetSource
{
  selfCopy = self;
  v3 = sub_1B1AF1EDC();

  return v3;
}

- (int64_t)versionNumber
{
  selfCopy = self;
  sub_1B1B2A950();
  v4 = v3;

  return v4;
}

- (NSNumber)downloadSize
{
  selfCopy = self;
  sub_1B1B2ABA4();
  v4 = v3;

  return v4;
}

- (NSNumber)diskSize
{
  selfCopy = self;
  sub_1B1B2ADDC();
  v4 = v3;

  return v4;
}

- (NSArray)supportedLanguages
{
  selfCopy = self;
  sub_1B1AE778C();

  v3 = sub_1B1C2CE68();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  v3 = sub_1B1B2B138();

  return v3;
}

- (BOOL)downloading
{
  selfCopy = self;
  v3 = sub_1B1B2B1E4();

  return v3 & 1;
}

- (BOOL)purgeable
{
  selfCopy = self;
  v3 = sub_1B1B2B2BC();

  return v3 & 1;
}

- (void)downloadWithOptions:(unint64_t)options progress:(id)progress then:(id)then
{
  optionsCopy = options;
  v8 = _Block_copy(progress);
  v9 = _Block_copy(then);
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
  selfCopy = self;
  sub_1B1B2BFB4(optionsCopy, v8, v11, v10, v12);
  sub_1B1A949B4(v10);
  sub_1B1A949B4(v8);
}

- (void)cancelDownloadingThen:(id)then
{
  v4 = _Block_copy(then);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B1B2CC00(selfCopy, v4);
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
  sub_1B1B2D370();
  sub_1B1A949B4(v5);
}

- (void)setPurgeCondition:(int64_t)condition
{
  selfCopy = self;
  sub_1B1B2DA8C(condition);
}

- (int64_t)purgeCondition
{
  selfCopy = self;
  v3 = sub_1B1B2DC70();

  return v3;
}

@end