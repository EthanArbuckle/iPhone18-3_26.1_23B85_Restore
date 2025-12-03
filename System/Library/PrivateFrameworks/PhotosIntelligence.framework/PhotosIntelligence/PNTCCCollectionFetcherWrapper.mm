@interface PNTCCCollectionFetcherWrapper
+ (id)fetchCuratedAssetsForTCCWithLimit:(int64_t)limit seed:(id)seed library:(id)library;
@end

@implementation PNTCCCollectionFetcherWrapper

+ (id)fetchCuratedAssetsForTCCWithLimit:(int64_t)limit seed:(id)seed library:(id)library
{
  libraryCopy = library;
  seedCopy = seed;
  v9 = [[TCCCollectionFetcher alloc] init:libraryCopy];

  v10 = [v9 fetchAssetsForTCCWithLimit:limit seed:seedCopy];

  return v10;
}

@end