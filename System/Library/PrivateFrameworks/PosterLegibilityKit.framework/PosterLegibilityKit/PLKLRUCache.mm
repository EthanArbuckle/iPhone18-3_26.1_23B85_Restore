@interface PLKLRUCache
- (PLKLRUCache)init;
- (PLKLRUCache)initWithCapacity:(unint64_t)a3;
- (id)_cleanup;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 ifNil:(id)a4;
- (void)_promoteObject:(void *)a3 forKey:;
- (void)setCapacity:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PLKLRUCache

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PLKLRUCache allocWithZone:?], "initWithCapacity:", self->_capacity];
  storage = self->_storage;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__PLKLRUCache_copyWithZone___block_invoke;
  v8[3] = &unk_27835B250;
  v6 = v4;
  v9 = v6;
  [(BSMutableOrderedDictionary *)storage enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (PLKLRUCache)initWithCapacity:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = PLKLRUCache;
  v4 = [(PLKLRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = a3;
    v6 = objc_alloc(MEMORY[0x277CF0C78]);
    v7 = [MEMORY[0x277CF0C98] sortByInsertionOrder];
    v8 = [v6 initWithCapacity:a3 keyOrderingStrategy:v7];
    storage = v5->_storage;
    v5->_storage = v8;
  }

  return v5;
}

- (PLKLRUCache)init
{
  [(PLKLRUCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setCapacity:(unint64_t)a3
{
  if (self->_capacity != a3)
  {
    self->_capacity = a3;
    [(PLKLRUCache *)&self->super.isa _cleanup];
  }
}

- (id)objectForKey:(id)a3 ifNil:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(PLKLRUCache *)self objectForKey:v6];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = v7[2](v7, v6);
        if (v10)
        {
          [(PLKLRUCache *)self _promoteObject:v10 forKey:v6];
          [(PLKLRUCache *)&self->super.isa _cleanup];
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
      [(PLKLRUCache *)self _promoteObject:v6 forKey:v4];
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
  v7 = a3;
  v6 = a4;
  if (v7 && v6)
  {
    [(PLKLRUCache *)&self->super.isa setObject:v6 forKey:v7];
  }
}

- (id)_cleanup
{
  if (result)
  {
    v1 = result;
    result = [result count];
    if (result)
    {
      if (v1[2])
      {
        while (1)
        {
          v2 = [v1 count];
          result = [v1 capacity];
          if (v2 <= result)
          {
            break;
          }

          result = [v1 count];
          if (!result)
          {
            break;
          }

          v3 = objc_autoreleasePoolPush();
          [v1[1] removeObjectAtIndex:0];
          objc_autoreleasePoolPop(v3);
        }
      }

      else
      {
        v4 = v1[1];

        return [v4 removeAllObjects];
      }
    }
  }

  return result;
}

- (void)_promoteObject:(void *)a3 forKey:
{
  if (a1)
  {
    v5 = *(a1 + 8);
    v6 = a3;
    v7 = a2;
    [v5 removeObjectForKey:v6];
    [*(a1 + 8) setObject:v7 forKey:v6];
  }
}

- (void)setObject:(void *)a3 forKey:.cold.1(id *a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [a1[1] objectForKey:a2];

  if (v7)
  {
    [(PLKLRUCache *)a1 _promoteObject:a3 forKey:a2];
  }

  else
  {
    [a1[1] setObject:a3 forKey:a2];
  }

  [(PLKLRUCache *)a1 _cleanup];

  objc_autoreleasePoolPop(v6);
}

@end