@interface SSFlowHostCache
+ (id)sharedInstance;
- (SSFlowHostCache)init;
- (id)objectForKey:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_dict objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_dict removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_dict setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

@end