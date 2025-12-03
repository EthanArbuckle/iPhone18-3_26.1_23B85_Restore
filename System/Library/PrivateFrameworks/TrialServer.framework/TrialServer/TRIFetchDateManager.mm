@interface TRIFetchDateManager
+ (id)managerWithKeyValueStore:(id)store;
- (TRIFetchDateManager)initWithKeyValueStore:(id)store;
@end

@implementation TRIFetchDateManager

- (TRIFetchDateManager)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TRIFetchDateManager;
  v6 = [(TRIFetchDateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, store);
  }

  return v7;
}

+ (id)managerWithKeyValueStore:(id)store
{
  storeCopy = store;
  v4 = [[TRIFetchDateManager alloc] initWithKeyValueStore:storeCopy];

  return v4;
}

@end