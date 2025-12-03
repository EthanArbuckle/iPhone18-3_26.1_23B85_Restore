@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)block;
- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached;
- (id)weakObjectCacheRefForKey:(id)key;
- (void)dealloc;
- (void)removeObjectForKey:(id)key;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = MFWeakObjectCache;
  v5 = [(MFWeakObjectCache *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (blockCopy)
    {
      v7 = [blockCopy copy];
      block = v6->_block;
      v6->_block = v7;

      v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
      lock = v6->_lock;
      v6->_lock = v9;

      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      dictionary = v6->_dictionary;
      v6->_dictionary = v11;
    }

    else
    {
      dictionary = v5;
      v6 = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFWeakObjectCache;
  [(MFWeakObjectCache *)&v2 dealloc];
}

- (id)objectForKey:(id)key shouldGenerate:(BOOL)generate wasCached:(BOOL *)cached
{
  generateCopy = generate;
  v8 = [key copyWithZone:0];
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    reference = [v9 reference];
    if (reference)
    {
      v12 = reference;
      if (!cached)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v8];
  }

  if (!generateCopy)
  {
    v10 = 0;
    v12 = 0;
    if (!cached)
    {
      goto LABEL_15;
    }

LABEL_11:
    v14 = 1;
LABEL_14:
    *cached = v14;
    goto LABEL_15;
  }

  v12 = (*(self->_block + 2))();
  if (!v12)
  {
    v10 = 0;
    if (!cached)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v10 = [VFWeakReferenceHolder weakReferenceWithObject:v12];
  v13 = [(MFWeakObjectCache *)self weakObjectCacheRefForKey:v8];
  objc_setAssociatedObject(v12, self, v13, 1);

  [(NSMutableDictionary *)self->_dictionary setObject:v10 forKeyedSubscript:v8];
  if (cached)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_15:
  [(NSLock *)self->_lock unlock];

  return v12;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSLock *)self->_lock lock];
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:keyCopy];
  retainedReference = [v4 retainedReference];
  v6 = retainedReference;
  if (retainedReference)
  {
    v7 = objc_getAssociatedObject(retainedReference, self);
    [v7 setCache:0];
    objc_setAssociatedObject(v6, self, 0, 1);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:keyCopy];
  [(NSLock *)self->_lock unlock];
}

- (id)weakObjectCacheRefForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v5 setCache:self];
  [(_MFWeakObjectCacheRef *)v5 setKey:keyCopy];

  return v5;
}

@end