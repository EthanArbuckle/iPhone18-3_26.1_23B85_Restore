@interface PNAssetFetcherLimiter
- (int64_t)limitType;
@end

@implementation PNAssetFetcherLimiter

- (int64_t)limitType
{
  v2 = self;
  v3 = AssetFetcherLimiter.limitType.getter();

  return v3;
}

@end