@interface PUCachedMapTable
- (id)_cachedObjectsCreateIfNeeded:(BOOL)a3;
- (id)_mapTableCreateIfNeeded:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)_initialCapacity;
- (unint64_t)accurateCount;
- (void)_objectWasRecentlyUsed:(id)a3;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PUCachedMapTable

- (void)_objectWasRecentlyUsed:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(PUCachedMapTable *)self _cachedObjectsCreateIfNeeded:1];
    v6 = [v5 lastObject];

    if (v6 != v8)
    {
      if ([v5 containsObject:v8])
      {
        [v5 removeObject:v8];
      }

      [v5 addObject:v8];
      v7 = [(PUCachedMapTable *)self cacheCountLimit];
      if ([v5 count] > v7)
      {
        [v5 removeObjectsInRange:{0, objc_msgSend(v5, "count") - v7}];
      }
    }

    v4 = v8;
  }
}

- (unint64_t)_initialCapacity
{
  v2 = [(PUCachedMapTable *)self cacheCountLimit];
  if (2 * v2)
  {
    return 2 * v2;
  }

  else
  {
    return 64;
  }
}

- (id)_cachedObjectsCreateIfNeeded:(BOOL)a3
{
  cachedObjects = self->__cachedObjects;
  if (cachedObjects)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[PUCachedMapTable _initialCapacity](self, "_initialCapacity", a3)}];
    v7 = self->__cachedObjects;
    self->__cachedObjects = v6;

    cachedObjects = self->__cachedObjects;
  }

  return cachedObjects;
}

- (id)_mapTableCreateIfNeeded:(BOOL)a3
{
  mapTable = self->__mapTable;
  if (mapTable)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:{-[PUCachedMapTable _initialCapacity](self, "_initialCapacity")}];
    v7 = self->__mapTable;
    self->__mapTable = v6;

    mapTable = self->__mapTable;
  }

  return mapTable;
}

- (id)keyEnumerator
{
  v2 = [(PUCachedMapTable *)self _mapTableCreateIfNeeded:1];
  v3 = [v2 keyEnumerator];

  return v3;
}

- (void)removeAllObjects
{
  v3 = [(PUCachedMapTable *)self _mapTable];
  [v3 removeAllObjects];

  v4 = [(PUCachedMapTable *)self _cachedObjects];
  [v4 removeAllObjects];
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUCachedMapTable.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v6 = [(PUCachedMapTable *)self _mapTable];
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 keyEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [v6 objectForKey:v12];
      if (v13)
      {
        v5[2](v5, v12, v13, &v20);
      }

      v14 = v20;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(PUCachedMapTable *)self _mapTableCreateIfNeeded:1];
  [v7 setObject:v8 forKey:v6];

  [(PUCachedMapTable *)self _objectWasRecentlyUsed:v8];
}

- (void)removeObjectForKey:(id)a3
{
  v8 = a3;
  v4 = [(PUCachedMapTable *)self _mapTable];
  v5 = [v4 objectForKey:v8];

  if (v5)
  {
    v6 = [(PUCachedMapTable *)self _cachedObjects];
    [v6 removeObject:v5];
  }

  v7 = [(PUCachedMapTable *)self _mapTable];
  [v7 removeObjectForKey:v8];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PUCachedMapTable *)self _mapTable];
  v6 = [v5 objectForKey:v4];

  [(PUCachedMapTable *)self _objectWasRecentlyUsed:v6];

  return v6;
}

- (unint64_t)accurateCount
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PUCachedMapTable *)self _mapTable:0];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      v8 = v5;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        --v8;
      }

      while (v8);
      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(PUCachedMapTable *)self _mapTable];
    v6 = [v5 copy];
    v7 = v4[2];
    v4[2] = v6;

    v8 = [(PUCachedMapTable *)self _cachedObjects];
    v9 = [v8 mutableCopy];
    v10 = v4[3];
    v4[3] = v9;
  }

  return v4;
}

@end