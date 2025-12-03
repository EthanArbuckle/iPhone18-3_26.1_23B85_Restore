@interface UNCObjectCache
- (UNCObjectCache)init;
- (id)cacheObject:(id)object;
@end

@implementation UNCObjectCache

- (UNCObjectCache)init
{
  v6.receiver = self;
  v6.super_class = UNCObjectCache;
  v2 = [(UNCObjectCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (id)cacheObject:(id)object
{
  objectCopy = object;
  v5 = self->_cache;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_cache member:objectCopy];
  objc_initWeak(&location, v6);

  v7 = objc_loadWeakRetained(&location);
  if (!v7)
  {
    [(NSHashTable *)self->_cache removeObject:objectCopy];
    [(NSHashTable *)self->_cache addObject:objectCopy];
    v7 = objectCopy;
  }

  objc_destroyWeak(&location);
  objc_sync_exit(v5);

  return v7;
}

@end