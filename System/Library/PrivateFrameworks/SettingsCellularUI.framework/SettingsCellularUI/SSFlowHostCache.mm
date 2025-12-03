@interface SSFlowHostCache
+ (id)sharedInstance;
- (SSFlowHostCache)init;
- (id)objectForKey:(id)key;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SSFlowHostCache

+ (id)sharedInstance
{
  if (qword_28156A6B0 != -1)
  {
    dispatch_once(&qword_28156A6B0, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_60;

  return v3;
}

uint64_t __33__SSFlowHostCache_sharedInstance__block_invoke()
{
  _MergedGlobals_60 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SSFlowHostCache)init
{
  v6.receiver = self;
  v6.super_class = SSFlowHostCache;
  v2 = [(SSFlowHostCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dict = v2->_dict;
    v2->_dict = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_dict removeObjectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_dict setObject:objectCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end