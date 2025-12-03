@interface PUCachedMapTable
- (id)_cachedObjectsCreateIfNeeded:(BOOL)needed;
- (id)_mapTableCreateIfNeeded:(BOOL)needed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)_initialCapacity;
- (unint64_t)accurateCount;
- (void)_objectWasRecentlyUsed:(id)used;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation PUCachedMapTable

- (void)_objectWasRecentlyUsed:(id)used
{
  usedCopy = used;
  if (usedCopy)
  {
    v8 = usedCopy;
    v5 = [(PUCachedMapTable *)self _cachedObjectsCreateIfNeeded:1];
    lastObject = [v5 lastObject];

    if (lastObject != v8)
    {
      if ([v5 containsObject:v8])
      {
        [v5 removeObject:v8];
      }

      [v5 addObject:v8];
      cacheCountLimit = [(PUCachedMapTable *)self cacheCountLimit];
      if ([v5 count] > cacheCountLimit)
      {
        [v5 removeObjectsInRange:{0, objc_msgSend(v5, "count") - cacheCountLimit}];
      }
    }

    usedCopy = v8;
  }
}

- (unint64_t)_initialCapacity
{
  cacheCountLimit = [(PUCachedMapTable *)self cacheCountLimit];
  if (2 * cacheCountLimit)
  {
    return 2 * cacheCountLimit;
  }

  else
  {
    return 64;
  }
}

- (id)_cachedObjectsCreateIfNeeded:(BOOL)needed
{
  cachedObjects = self->__cachedObjects;
  if (cachedObjects)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{-[PUCachedMapTable _initialCapacity](self, "_initialCapacity", needed)}];
    v7 = self->__cachedObjects;
    self->__cachedObjects = v6;

    cachedObjects = self->__cachedObjects;
  }

  return cachedObjects;
}

- (id)_mapTableCreateIfNeeded:(BOOL)needed
{
  mapTable = self->__mapTable;
  if (mapTable)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
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
  keyEnumerator = [v2 keyEnumerator];

  return keyEnumerator;
}

- (void)removeAllObjects
{
  _mapTable = [(PUCachedMapTable *)self _mapTable];
  [_mapTable removeAllObjects];

  _cachedObjects = [(PUCachedMapTable *)self _cachedObjects];
  [_cachedObjects removeAllObjects];
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCachedMapTable.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  _mapTable = [(PUCachedMapTable *)self _mapTable];
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [_mapTable keyEnumerator];
  v8 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
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
        objc_enumerationMutation(keyEnumerator);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [_mapTable objectForKey:v12];
      if (v13)
      {
        blockCopy[2](blockCopy, v12, v13, &v20);
      }

      v14 = v20;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  v7 = [(PUCachedMapTable *)self _mapTableCreateIfNeeded:1];
  [v7 setObject:objectCopy forKey:keyCopy];

  [(PUCachedMapTable *)self _objectWasRecentlyUsed:objectCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  _mapTable = [(PUCachedMapTable *)self _mapTable];
  v5 = [_mapTable objectForKey:keyCopy];

  if (v5)
  {
    _cachedObjects = [(PUCachedMapTable *)self _cachedObjects];
    [_cachedObjects removeObject:v5];
  }

  _mapTable2 = [(PUCachedMapTable *)self _mapTable];
  [_mapTable2 removeObjectForKey:keyCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  _mapTable = [(PUCachedMapTable *)self _mapTable];
  v6 = [_mapTable objectForKey:keyCopy];

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
  keyEnumerator = [v2 keyEnumerator];

  v4 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(keyEnumerator);
        }

        --v8;
      }

      while (v8);
      v6 += v5;
      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    _mapTable = [(PUCachedMapTable *)self _mapTable];
    v6 = [_mapTable copy];
    v7 = v4[2];
    v4[2] = v6;

    _cachedObjects = [(PUCachedMapTable *)self _cachedObjects];
    v9 = [_cachedObjects mutableCopy];
    v10 = v4[3];
    v4[3] = v9;
  }

  return v4;
}

@end