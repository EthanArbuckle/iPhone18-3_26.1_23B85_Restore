@interface PFLRUCache
- (PFLRUCache)init;
- (PFLRUCache)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 ifNil:(id)a4;
- (void)_cleanup;
- (void)_promoteObject:(id)a3 forKey:(id)a4;
- (void)setCapacity:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PFLRUCache

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PFLRUCache allocWithZone:?], "initWithCapacity:", self->_capacity];
  storage = self->_storage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __27__PFLRUCache_copyWithZone___block_invoke;
  v8[3] = &unk_1E8189F88;
  v6 = v4;
  v9 = v6;
  [(BSMutableOrderedDictionary *)storage enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (PFLRUCache)initWithCapacity:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PFLRUCache;
  v4 = [(PFLRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = objc_alloc(MEMORY[0x1E698E6F8]);
    v7 = [MEMORY[0x1E698E720] sortByInsertionOrder];
    v8 = [v6 initWithCapacity:a3 keyOrderingStrategy:v7];
    storage = v5->_storage;
    v5->_storage = v8;
  }

  return v5;
}

- (PFLRUCache)init
{
  [(PFLRUCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setCapacity:(unint64_t)a3
{
  if (self->_capacity != a3)
  {
    self->_capacity = a3;
    [(PFLRUCache *)self _cleanup];
  }
}

- (id)objectForKey:(id)a3 ifNil:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(PFLRUCache *)self objectForKey:v6];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = v7[2](v7, v6);
        if (v10)
        {
          [(PFLRUCache *)self _promoteObject:v10 forKey:v6];
          [(PFLRUCache *)self _cleanup];
        }
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(BSMutableOrderedDictionary *)self->_storage objectForKey:v4];
    if (v6)
    {
      [(PFLRUCache *)self _promoteObject:v6 forKey:v4];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9 && v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(BSMutableOrderedDictionary *)self->_storage objectForKey:v6];

    if (v8)
    {
      [(PFLRUCache *)self _promoteObject:v9 forKey:v6];
    }

    else
    {
      [(BSMutableOrderedDictionary *)self->_storage setObject:v9 forKey:v6];
    }

    [(PFLRUCache *)self _cleanup];
    objc_autoreleasePoolPop(v7);
  }
}

- (void)_cleanup
{
  if ([(PFLRUCache *)self count])
  {
    if (self->_capacity)
    {
      while (1)
      {
        v3 = [(PFLRUCache *)self count];
        if (v3 <= [(PFLRUCache *)self capacity]|| ![(PFLRUCache *)self count])
        {
          break;
        }

        v4 = objc_autoreleasePoolPush();
        [(BSMutableOrderedDictionary *)self->_storage removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v4);
      }
    }

    else
    {
      storage = self->_storage;

      [(BSMutableOrderedDictionary *)storage removeAllObjects];
    }
  }
}

- (void)_promoteObject:(id)a3 forKey:(id)a4
{
  storage = self->_storage;
  v7 = a4;
  v8 = a3;
  [(BSMutableOrderedDictionary *)storage removeObjectForKey:v7];
  [(BSMutableOrderedDictionary *)self->_storage setObject:v8 forKey:v7];
}

@end