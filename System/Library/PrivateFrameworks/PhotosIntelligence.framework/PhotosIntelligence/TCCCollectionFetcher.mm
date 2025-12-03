@interface TCCCollectionFetcher
- (id)fetchAssetsForTCCWithLimit:(int64_t)limit seed:(id)seed;
@end

@implementation TCCCollectionFetcher

- (id)fetchAssetsForTCCWithLimit:(int64_t)limit seed:(id)seed
{
  selfCopy = self;
  seedCopy = seed;
  v12.value.super.super.isa = seed;
  v8 = TCCCollectionFetcher.fetchAssetsForTCC(limit:seed:)(limit, v12);

  if (v8)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v9 = sub_1C7550B3C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end