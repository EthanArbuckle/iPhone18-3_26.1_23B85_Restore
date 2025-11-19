@interface PXLRUMemoryCache
- (PXLRUMemoryCache)init;
- (id)allKeys;
- (id)description;
- (id)objectForKey:(id)a3;
- (unint64_t)currentUsedSlots;
- (void)_promoteListElement:(_PXLRUMemoryCacheListElement *)a3;
- (void)_removeListElement:(_PXLRUMemoryCacheListElement *)a3;
- (void)dealloc;
- (void)evictSlots:(unint64_t)a3;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setNumberOfSlots:(unint64_t)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation PXLRUMemoryCache

- (id)description
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = [(NSMapTable *)self->_cacheDictionary description];
  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return v3;
}

- (void)evictSlots:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  for (; a3; --a3)
  {
    var2 = self->_leastRecentUsedList->var2;
    if (var2)
    {
      [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
      [(PXLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
    }
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)removeAllObjects
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  [(NSMapTable *)self->_leastRecentUsedDictionary removeAllObjects];
  leastRecentUsedList = self->_leastRecentUsedList;
  var1 = leastRecentUsedList->var1;
  if (var1)
  {
    do
    {
      v5 = var1->var1;
      if (var1->var0)
      {
      }

      free(var1);
      var1 = v5;
    }

    while (v5);
    leastRecentUsedList = self->_leastRecentUsedList;
  }

  leastRecentUsedList->var0 = 0;
  leastRecentUsedList->var1 = 0;
  self->_leastRecentUsedList->var2 = 0;
  [(NSMapTable *)self->_cacheDictionary removeAllObjects];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)removeObjectForKey:(id)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a3];
  if (v5)
  {
    -[PXLRUMemoryCache _removeListElement:](self, "_removeListElement:", [v5 pointerValue]);
  }

  [(NSMapTable *)self->_cacheDictionary removeObjectForKey:a3];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (self->_numberOfSlots)
  {
    [(NSRecursiveLock *)self->_recursiveLock lock];
    v7 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a4];
    if (v7)
    {
      -[PXLRUMemoryCache _promoteListElement:](self, "_promoteListElement:", [v7 pointerValue]);
    }

    else
    {
      v8 = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
      v9 = a4;
      var1 = self->_leastRecentUsedList->var1;
      v8->var0 = v9;
      v8->var1 = var1;
      v8->var2 = 0;
      leastRecentUsedList = self->_leastRecentUsedList;
      v12 = leastRecentUsedList->var1;
      if (v12)
      {
        v12->var2 = v8;
        leastRecentUsedList = self->_leastRecentUsedList;
      }

      leastRecentUsedList->var1 = v8;
      v13 = self->_leastRecentUsedList;
      if (!v13->var0++)
      {
        v13->var2 = v8;
      }

      -[NSMapTable setObject:forKey:](self->_leastRecentUsedDictionary, "setObject:forKey:", [MEMORY[0x1E696B098] valueWithPointer:v8], a4);
    }

    v15 = self->_leastRecentUsedList;
    if (v15->var0 > self->_numberOfSlots)
    {
      var2 = v15->var2;
      if (var2)
      {
        [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(PXLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
      }
    }

    [(NSMapTable *)self->_cacheDictionary setObject:a3 forKey:a4];
    recursiveLock = self->_recursiveLock;

    [(NSRecursiveLock *)recursiveLock unlock];
  }
}

- (id)allKeys
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  cacheDictionary = self->_cacheDictionary;
  if (cacheDictionary)
  {
    v4 = [(NSArray *)NSAllMapTableKeys(cacheDictionary) copy];
  }

  else
  {
    v4 = 0;
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v4;
}

- (id)objectForKey:(id)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMapTable *)self->_cacheDictionary objectForKey:a3];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_leastRecentUsedDictionary objectForKey:a3];
    if (v6)
    {
      -[PXLRUMemoryCache _promoteListElement:](self, "_promoteListElement:", [v6 pointerValue]);
    }
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v5;
}

- (unint64_t)currentUsedSlots
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  recursiveLock = self->_recursiveLock;
  var0 = self->_leastRecentUsedList->var0;
  [(NSRecursiveLock *)recursiveLock unlock];
  return var0;
}

- (void)setNumberOfSlots:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_numberOfSlots > a3)
  {
LABEL_2:
    leastRecentUsedList = self->_leastRecentUsedList;
    while (leastRecentUsedList->var0 > a3)
    {
      var2 = leastRecentUsedList->var2;
      if (var2)
      {
        [(NSMapTable *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(PXLRUMemoryCache *)self _removeListElement:self->_leastRecentUsedList->var2];
        goto LABEL_2;
      }
    }
  }

  self->_numberOfSlots = a3;
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)_removeListElement:(_PXLRUMemoryCacheListElement *)a3
{
  var1 = a3->var1;
  var2 = a3->var2;
  if (var2)
  {
    var2->var1 = var1;
    leastRecentUsedList = self->_leastRecentUsedList;
    if (leastRecentUsedList->var1 == a3)
    {
      leastRecentUsedList->var1 = 0;
    }

    if (var1)
    {
      goto LABEL_5;
    }

LABEL_8:
    self->_leastRecentUsedList->var2 = var2;
    goto LABEL_9;
  }

  self->_leastRecentUsedList->var1 = var1;
  if (!var1)
  {
    goto LABEL_8;
  }

LABEL_5:
  var1->var2 = var2;
  v8 = self->_leastRecentUsedList;
  if (v8->var2 == a3)
  {
    v8->var2 = 0;
  }

LABEL_9:
  [(NSMapTable *)self->_leastRecentUsedDictionary removeObjectForKey:a3->var0];
  if (a3->var0)
  {
  }

  free(a3);
  --self->_leastRecentUsedList->var0;
}

- (void)_promoteListElement:(_PXLRUMemoryCacheListElement *)a3
{
  p_var0 = &self->_leastRecentUsedList->var0;
  if (*p_var0 >= 2uLL)
  {
    v5 = &a3->var1->var0;
    var2 = a3->var2;
    if (var2)
    {
      p_var0 = &a3->var2->var0;
    }

    p_var0[1] = v5;
    if (!v5)
    {
      v5 = &self->_leastRecentUsedList->var0;
    }

    v5[2] = var2;
    a3->var1 = self->_leastRecentUsedList->var1;
    a3->var2 = 0;
    leastRecentUsedList = self->_leastRecentUsedList;
    var1 = leastRecentUsedList->var1;
    if (var1)
    {
      var1->var2 = a3;
      leastRecentUsedList = self->_leastRecentUsedList;
    }

    leastRecentUsedList->var1 = a3;
  }
}

- (void)dealloc
{
  recursiveLock = self->_recursiveLock;
  if (recursiveLock)
  {

    self->_recursiveLock = 0;
  }

  cacheDictionary = self->_cacheDictionary;
  if (cacheDictionary)
  {

    self->_cacheDictionary = 0;
  }

  leastRecentUsedList = self->_leastRecentUsedList;
  var1 = leastRecentUsedList->var1;
  if (var1)
  {
    do
    {
      v7 = var1->var1;
      if (var1->var0)
      {
      }

      free(var1);
      var1 = v7;
    }

    while (v7);
    leastRecentUsedList = self->_leastRecentUsedList;
  }

  leastRecentUsedList->var0 = 0;
  leastRecentUsedList->var1 = 0;
  self->_leastRecentUsedList->var2 = 0;
  v8 = self->_leastRecentUsedList;
  if (v8)
  {
    free(v8);
    self->_leastRecentUsedList = 0;
  }

  leastRecentUsedDictionary = self->_leastRecentUsedDictionary;
  if (leastRecentUsedDictionary)
  {

    self->_leastRecentUsedDictionary = 0;
  }

  v10.receiver = self;
  v10.super_class = PXLRUMemoryCache;
  [(PXLRUMemoryCache *)&v10 dealloc];
}

- (PXLRUMemoryCache)init
{
  v6.receiver = self;
  v6.super_class = PXLRUMemoryCache;
  v2 = [(PXLRUMemoryCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfSlots = 128;
    v2->_cacheDictionary = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:128];
    v3->_recursiveLock = objc_alloc_init(MEMORY[0x1E696AE68]);
    v4 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
    v3->_leastRecentUsedList = v4;
    v4->var0 = 0;
    v4->var1 = 0;
    v3->_leastRecentUsedList->var2 = 0;
    v3->_leastRecentUsedDictionary = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:128];
  }

  return v3;
}

@end