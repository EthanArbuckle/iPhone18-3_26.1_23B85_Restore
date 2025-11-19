@interface TTSAssetMACompactAsset
- (NSBundle)bundle;
- (TTSAssetQuality)quality;
- (void)purgeThen:(id)a3;
@end

@implementation TTSAssetMACompactAsset

- (TTSAssetQuality)quality
{
  v2 = self;
  v3 = sub_1B1B4F9EC();

  return v3;
}

- (NSBundle)bundle
{
  v2 = self;
  v3 = sub_1B1B4FA54();

  return v3;
}

- (void)purgeThen:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1B1A95AD0;
  }

  v5 = self;
  sub_1B1B4FFC4(v4);
  sub_1B1A949B4(v4);
}

@end