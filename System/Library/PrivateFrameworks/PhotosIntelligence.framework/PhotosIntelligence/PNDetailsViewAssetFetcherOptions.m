@interface PNDetailsViewAssetFetcherOptions
- (PHFetchOptions)fetchOptions;
- (void)setFetchOptions:(id)a3;
@end

@implementation PNDetailsViewAssetFetcherOptions

- (PHFetchOptions)fetchOptions
{
  v2 = sub_1C6F80708();

  return v2;
}

- (void)setFetchOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C72CE9B4(v4);
}

@end