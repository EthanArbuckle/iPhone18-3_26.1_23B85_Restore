@interface PFLRUCache
- (PFLRUCache)init;
- (PFLRUCache)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key ifNil:(id)nil;
- (void)_cleanup;
- (void)_promoteObject:(id)object forKey:(id)key;
- (void)setCapacity:(unint64_t)capacity;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PFLRUCache

- (id)copyWithZone:(_NSZone *)zone
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

- (PFLRUCache)initWithCapacity:(unint64_t)capacity
{
  v11.receiver = self;
  v11.super_class = PFLRUCache;
  v4 = [(PFLRUCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_capacity = capacity;
    v6 = objc_alloc(MEMORY[0x1E698E6F8]);
    sortByInsertionOrder = [MEMORY[0x1E698E720] sortByInsertionOrder];
    v8 = [v6 initWithCapacity:capacity keyOrderingStrategy:sortByInsertionOrder];
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

- (void)setCapacity:(unint64_t)capacity
{
  if (self->_capacity != capacity)
  {
    self->_capacity = capacity;
    [(PFLRUCache *)self _cleanup];
  }
}

- (id)objectForKey:(id)key ifNil:(id)nil
{
  keyCopy = key;
  nilCopy = nil;
  if (keyCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(PFLRUCache *)self objectForKey:keyCopy];
    v10 = v9;
    if (nilCopy)
    {
      if (!v9)
      {
        v10 = nilCopy[2](nilCopy, keyCopy);
        if (v10)
        {
          [(PFLRUCache *)self _promoteObject:v10 forKey:keyCopy];
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

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [(BSMutableOrderedDictionary *)self->_storage objectForKey:keyCopy];
    if (v6)
    {
      [(PFLRUCache *)self _promoteObject:v6 forKey:keyCopy];
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && keyCopy)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(BSMutableOrderedDictionary *)self->_storage objectForKey:keyCopy];

    if (v8)
    {
      [(PFLRUCache *)self _promoteObject:objectCopy forKey:keyCopy];
    }

    else
    {
      [(BSMutableOrderedDictionary *)self->_storage setObject:objectCopy forKey:keyCopy];
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

- (void)_promoteObject:(id)object forKey:(id)key
{
  storage = self->_storage;
  keyCopy = key;
  objectCopy = object;
  [(BSMutableOrderedDictionary *)storage removeObjectForKey:keyCopy];
  [(BSMutableOrderedDictionary *)self->_storage setObject:objectCopy forKey:keyCopy];
}

@end