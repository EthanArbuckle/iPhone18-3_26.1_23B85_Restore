@interface TTSAssetMACompactAsset
- (NSBundle)bundle;
- (TTSAssetQuality)quality;
- (void)purgeThen:(id)then;
@end

@implementation TTSAssetMACompactAsset

- (TTSAssetQuality)quality
{
  selfCopy = self;
  v3 = sub_1B1B4F9EC();

  return v3;
}

- (NSBundle)bundle
{
  selfCopy = self;
  v3 = sub_1B1B4FA54();

  return v3;
}

- (void)purgeThen:(id)then
{
  v4 = _Block_copy(then);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1B1A95AD0;
  }

  selfCopy = self;
  sub_1B1B4FFC4(v4);
  sub_1B1A949B4(v4);
}

@end