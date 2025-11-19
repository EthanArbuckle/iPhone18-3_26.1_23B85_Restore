@interface TSUCache
- (TSUCache)initWithName:(id)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)p_objectForKey:(id)a3;
- (id)p_objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (unint64_t)count;
- (void)dealloc;
- (void)p_addEntriesFromDictionary:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSUCache

- (TSUCache)initWithName:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSUCache;
  v4 = [(TSUFlushableObject *)&v6 init];
  if (v4)
  {
    v4->mCacheName = a3;
  }

  return v4;
}

- (void)dealloc
{
  [(TSUCache *)self unload];

  self->mCacheName = 0;
  self->mCache = 0;
  v3.receiver = self;
  v3.super_class = TSUCache;
  [(TSUFlushableObject *)&v3 dealloc];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  [(TSUFlushableObject *)self ownerWillAccess];
  objc_sync_enter(self);
  mCache = self->mCache;
  if (!mCache)
  {
    mCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->mCache = mCache;
  }

  [(NSMutableDictionary *)mCache setObject:a3 forKey:a4];
  objc_sync_exit(self);

  [(TSUFlushableObject *)self ownerDidAccess];
}

- (id)objectForKey:(id)a3
{
  [(TSUFlushableObject *)self ownerWillAccess];
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->mCache objectForKey:a3];
  objc_sync_exit(self);
  [(TSUFlushableObject *)self ownerDidAccess];
  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  [(TSUFlushableObject *)self ownerWillAccess];
  objc_sync_enter(self);
  mCache = self->mCache;
  if (mCache)
  {
    [(NSMutableDictionary *)mCache removeObjectForKey:a3];
  }

  objc_sync_exit(self);

  [(TSUFlushableObject *)self ownerDidAccess];
}

- (void)removeAllObjects
{
  [(TSUFlushableObject *)self ownerWillAccess];
  objc_sync_enter(self);
  mCache = self->mCache;
  if (mCache)
  {
    [(NSMutableDictionary *)mCache removeAllObjects];
  }

  objc_sync_exit(self);

  [(TSUFlushableObject *)self ownerDidAccess];
}

- (unint64_t)count
{
  result = self->mCache;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mCacheName = self->mCacheName;
  mCache = self->mCache;
  if (mCache)
  {
    v8 = [(NSMutableDictionary *)self->mCache count];
  }

  else
  {
    v8 = 0;
  }

  return [v3 stringWithFormat:@"<%@ %p %@ cache=%p with %lu key/values >", v5, self, mCacheName, mCache, v8];
}

- (id)p_objectForKey:(id)a3
{
  [(TSUFlushableObject *)self ownerWillAccess];
  v5 = [(NSMutableDictionary *)self->mCache objectForKey:a3];
  [(TSUFlushableObject *)self ownerDidAccess];
  return v5;
}

- (void)p_addEntriesFromDictionary:(id)a3
{
  [(TSUFlushableObject *)self ownerWillAccess];
  mCache = self->mCache;
  if (!mCache)
  {
    mCache = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->mCache = mCache;
  }

  [(NSMutableDictionary *)mCache addEntriesFromDictionary:a3];

  [(TSUFlushableObject *)self ownerDidAccess];
}

- (id)p_objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  [(TSUFlushableObject *)self ownerWillAccess];
  v7 = [(NSMutableDictionary *)self->mCache objectsForKeys:a3 notFoundMarker:a4];
  [(TSUFlushableObject *)self ownerDidAccess];
  return v7;
}

@end