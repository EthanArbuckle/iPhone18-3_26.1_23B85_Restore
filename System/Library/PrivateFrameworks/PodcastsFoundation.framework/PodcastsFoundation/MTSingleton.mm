@interface MTSingleton
+ (id)sharedInstance;
@end

@implementation MTSingleton

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MTSingleton sharedInstance];
  }

  v3 = NSStringFromClass(a1);
  v4 = _instanceMap;
  objc_sync_enter(v4);
  v5 = [_instanceMap objectForKey:v3];
  if (!v5)
  {
    v5 = objc_alloc_init(MTSingletonHolder);
    v5->_lock._os_unfair_lock_opaque = 0;
    [_instanceMap setObject:v5 forKeyedSubscript:v3];
  }

  objc_sync_exit(v4);

  os_unfair_lock_lock(&v5->_lock);
  v6 = [(MTSingletonHolder *)v5 instance];
  if (!v6)
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___MTSingleton;
    v6 = [objc_msgSendSuper2(&v8 allocWithZone_];
    [(MTSingletonHolder *)v5 setInstance:v6];
  }

  os_unfair_lock_unlock(&v5->_lock);

  return v6;
}

uint64_t __29__MTSingleton_sharedInstance__block_invoke()
{
  _instanceMap = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

@end