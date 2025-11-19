@interface TCCCollectionFetcher
- (id)fetchAssetsForTCCWithLimit:(int64_t)a3 seed:(id)a4;
@end

@implementation TCCCollectionFetcher

- (id)fetchAssetsForTCCWithLimit:(int64_t)a3 seed:(id)a4
{
  v6 = self;
  v7 = a4;
  v12.value.super.super.isa = a4;
  v8 = TCCCollectionFetcher.fetchAssetsForTCC(limit:seed:)(a3, v12);

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