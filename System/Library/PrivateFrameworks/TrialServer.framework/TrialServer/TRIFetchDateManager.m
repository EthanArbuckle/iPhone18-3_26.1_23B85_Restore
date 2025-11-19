@interface TRIFetchDateManager
+ (id)managerWithKeyValueStore:(id)a3;
- (TRIFetchDateManager)initWithKeyValueStore:(id)a3;
@end

@implementation TRIFetchDateManager

- (TRIFetchDateManager)initWithKeyValueStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIFetchDateManager;
  v6 = [(TRIFetchDateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, a3);
  }

  return v7;
}

+ (id)managerWithKeyValueStore:(id)a3
{
  v3 = a3;
  v4 = [[TRIFetchDateManager alloc] initWithKeyValueStore:v3];

  return v4;
}

@end