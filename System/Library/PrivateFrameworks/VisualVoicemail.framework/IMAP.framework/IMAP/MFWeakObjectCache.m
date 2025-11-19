@interface MFWeakObjectCache
- (MFWeakObjectCache)initWithBlock:(id)a3;
- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5;
- (id)weakObjectCacheRefForKey:(id)a3;
- (void)dealloc;
- (void)removeObjectForKey:(id)a3;
@end

@implementation MFWeakObjectCache

- (MFWeakObjectCache)initWithBlock:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MFWeakObjectCache;
  v5 = [(MFWeakObjectCache *)&v14 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = [v4 copy];
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

- (id)objectForKey:(id)a3 shouldGenerate:(BOOL)a4 wasCached:(BOOL *)a5
{
  v6 = a4;
  v8 = [a3 copyWithZone:0];
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 reference];
    if (v11)
    {
      v12 = v11;
      if (!a5)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v8];
  }

  if (!v6)
  {
    v10 = 0;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_15;
    }

LABEL_11:
    v14 = 1;
LABEL_14:
    *a5 = v14;
    goto LABEL_15;
  }

  v12 = (*(self->_block + 2))();
  if (!v12)
  {
    v10 = 0;
    if (!a5)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v10 = [VFWeakReferenceHolder weakReferenceWithObject:v12];
  v13 = [(MFWeakObjectCache *)self weakObjectCacheRefForKey:v8];
  objc_setAssociatedObject(v12, self, v13, 1);

  [(NSMutableDictionary *)self->_dictionary setObject:v10 forKeyedSubscript:v8];
  if (a5)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_15:
  [(NSLock *)self->_lock unlock];

  return v12;
}

- (void)removeObjectForKey:(id)a3
{
  v8 = a3;
  [(NSLock *)self->_lock lock];
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:v8];
  v5 = [v4 retainedReference];
  v6 = v5;
  if (v5)
  {
    v7 = objc_getAssociatedObject(v5, self);
    [v7 setCache:0];
    objc_setAssociatedObject(v6, self, 0, 1);
  }

  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v8];
  [(NSLock *)self->_lock unlock];
}

- (id)weakObjectCacheRefForKey:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_MFWeakObjectCacheRef);
  [(_MFWeakObjectCacheRef *)v5 setCache:self];
  [(_MFWeakObjectCacheRef *)v5 setKey:v4];

  return v5;
}

@end