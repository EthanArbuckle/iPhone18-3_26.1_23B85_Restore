@interface TSUUnfairMutableDictionaryCache
- (TSUUnfairMutableDictionaryCache)initWithName:(id)name;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)performSyncWriteWithUnderlyingDictionary:(id)dictionary;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TSUUnfairMutableDictionaryCache

- (TSUUnfairMutableDictionaryCache)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TSUUnfairMutableDictionaryCache;
  v5 = [(TSUUnfairMutableDictionaryCache *)&v13 init];
  if (v5)
  {
    v6 = [nameCopy copy];
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeObjectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache setObject:objectCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_cache addEntriesFromDictionary:dictionaryCopy];
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cache enumerateKeysAndObjectsUsingBlock:blockCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_cache count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)performSyncWriteWithUnderlyingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock(&self->_lock);
  dictionaryCopy[2](dictionaryCopy, self->_cache);

  os_unfair_lock_unlock(&self->_lock);
}

@end