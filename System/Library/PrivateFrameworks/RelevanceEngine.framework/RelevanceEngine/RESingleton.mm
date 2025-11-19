@interface RESingleton
+ (id)_classKey;
+ (id)sharedInstance;
+ (void)_decrementSingletonCache;
+ (void)_incrementSingletonCache;
- (id)_init;
@end

@implementation RESingleton

+ (id)sharedInstance
{
  v2 = [a1 _classKey];
  os_unfair_recursive_lock_lock_with_options();
  v3 = [SingletonCache objectForKeyedSubscript:v2];
  v4 = v3;
  if (SingletonCache)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v4 = [objc_alloc(objc_opt_class()) _init];
    [SingletonCache setObject:v4 forKeyedSubscript:v2];
  }

  os_unfair_recursive_lock_unlock();

  return v4;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RESingleton;
  return [(RESingleton *)&v3 init];
}

+ (id)_classKey
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (void)_incrementSingletonCache
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = SingletonCacheUsageCount;
  if (!SingletonCacheUsageCount)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = SingletonCache;
    SingletonCache = v3;

    v2 = SingletonCacheUsageCount;
  }

  SingletonCacheUsageCount = v2 + 1;

  os_unfair_recursive_lock_unlock();
}

+ (void)_decrementSingletonCache
{
  os_unfair_recursive_lock_lock_with_options();
  if (!--SingletonCacheUsageCount)
  {
    v2 = SingletonCache;
    SingletonCache = 0;
  }

  os_unfair_recursive_lock_unlock();
}

@end