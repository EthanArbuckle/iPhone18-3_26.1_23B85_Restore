@interface PNDetailsViewAssetFetcherOptions
- (PHFetchOptions)fetchOptions;
- (void)setFetchOptions:(id)options;
@end

@implementation PNDetailsViewAssetFetcherOptions

- (PHFetchOptions)fetchOptions
{
  v2 = sub_1C6F80708();

  return v2;
}

- (void)setFetchOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_1C72CE9B4(optionsCopy);
}

@end