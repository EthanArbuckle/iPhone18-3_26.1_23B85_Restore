@interface TSUUnfairMutableDictionaryCache
- (TSUUnfairMutableDictionaryCache)initWithName:(id)a3;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)performSyncWriteWithUnderlyingDictionary:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSUUnfairMutableDictionaryCache

- (TSUUnfairMutableDictionaryCache)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TSUUnfairMutableDictionaryCache;
  v5 = [(TSUUnfairMutableDictionaryCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v5->_cache;
    v5->_cache = v8;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2770AE080;
    v11[3] = &unk_27A7026E0;
    v12 = v5;
    [TSUExecutionContext performWithApplication:v11];
  }

  return v5;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:v4];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache enumerateKeysAndObjectsUsingBlock:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cache count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)performSyncWriteWithUnderlyingDictionary:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4, self->_cache);

  os_unfair_lock_unlock(&self->_lock);
}

@end