@interface PPEventStorageGuardedData
- (PPEventStorageGuardedData)init;
- (id)ekStore;
@end

@implementation PPEventStorageGuardedData

- (id)ekStore
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(EKTimedEventStorePurger *)self->_ekStorePurger acquireCachedEventStoreOrCreate:1];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (PPEventStorageGuardedData)init
{
  v3.receiver = self;
  v3.super_class = PPEventStorageGuardedData;
  result = [(PPEventStorageGuardedData *)&v3 init];
  if (result)
  {
    result->_activeNoPurgeSessions = 0;
  }

  return result;
}

@end