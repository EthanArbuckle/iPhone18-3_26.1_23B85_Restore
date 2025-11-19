@interface PXMemoriesBlacklistPersonAccessoryViewSpec
+ (id)specWithPerson:(id)a3;
- (PXMemoriesBlacklistPersonAccessoryViewSpec)initWithPerson:(id)a3;
@end

@implementation PXMemoriesBlacklistPersonAccessoryViewSpec

- (PXMemoriesBlacklistPersonAccessoryViewSpec)initWithPerson:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMemoriesBlacklistPersonAccessoryViewSpec;
  v6 = [(PXMemoriesBlacklistAccessoryViewSpec *)&v9 initWithContentViewFrame:0.0, 0.0, 294.0, 100.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_person, a3);
    [(PXMemoriesBlacklistAccessoryViewSpec *)v7 setType:2];
  }

  return v7;
}

+ (id)specWithPerson:(id)a3
{
  v3 = a3;
  v4 = [[PXMemoriesBlacklistPersonAccessoryViewSpec alloc] initWithPerson:v3];

  return v4;
}

@end