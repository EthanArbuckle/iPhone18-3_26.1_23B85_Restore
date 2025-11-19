@interface PXMemoriesBlacklistPlaceAreaAccesoryViewSpec
+ (id)spec;
- (PXMemoriesBlacklistPlaceAreaAccesoryViewSpec)init;
@end

@implementation PXMemoriesBlacklistPlaceAreaAccesoryViewSpec

- (PXMemoriesBlacklistPlaceAreaAccesoryViewSpec)init
{
  v5.receiver = self;
  v5.super_class = PXMemoriesBlacklistPlaceAreaAccesoryViewSpec;
  v2 = [(PXMemoriesBlacklistAccessoryViewSpec *)&v5 initWithContentViewFrame:0.0, 0.0, 294.0, 100.0];
  v3 = v2;
  if (v2)
  {
    [(PXMemoriesBlacklistAccessoryViewSpec *)v2 setType:0];
  }

  return v3;
}

+ (id)spec
{
  v2 = objc_alloc_init(PXMemoriesBlacklistPlaceAreaAccesoryViewSpec);

  return v2;
}

@end