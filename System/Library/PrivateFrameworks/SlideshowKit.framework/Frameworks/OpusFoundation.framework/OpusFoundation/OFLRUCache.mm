@interface OFLRUCache
- (BOOL)loadFromURL:(id)l;
- (BOOL)writeToURL:(id)l;
- (OFLRUCache)init;
- (id)allKeys;
- (id)objectForKey:(id)key;
- (unint64_t)currentUsedSlots;
- (void)_promoteListElement:(_OFLRUCacheListElement *)element;
- (void)_removeListElement:(_OFLRUCacheListElement *)element;
- (void)dealloc;
- (void)evictSlots:(unint64_t)slots;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setNumberOfSlots:(unint64_t)slots;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation OFLRUCache

- (OFLRUCache)init
{
  v6.receiver = self;
  v6.super_class = OFLRUCache;
  v2 = [(OFLRUCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_numberOfSlots = 128;
    v2->_cacheDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
    v3->_recursiveLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    v4 = malloc_type_malloc(0x18uLL, 0x102004023CB03E4uLL);
    v3->_leastRecentUsedList = v4;
    v4->var0 = 0;
    v4->var1 = 0;
    v3->_leastRecentUsedList->var2 = 0;
    v3->_leastRecentUsedDictionary = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:128];
  }

  return v3;
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
  v10.super_class = OFLRUCache;
  [(OFLRUCache *)&v10 dealloc];
}

- (void)_promoteListElement:(_OFLRUCacheListElement *)element
{
  p_var0 = &self->_leastRecentUsedList->var0;
  if (*p_var0 >= 2uLL)
  {
    v5 = &element->var1->var0;
    var2 = element->var2;
    if (var2)
    {
      p_var0 = &element->var2->var0;
    }

    p_var0[1] = v5;
    if (!v5)
    {
      v5 = &self->_leastRecentUsedList->var0;
    }

    v5[2] = var2;
    element->var1 = self->_leastRecentUsedList->var1;
    element->var2 = 0;
    leastRecentUsedList = self->_leastRecentUsedList;
    var1 = leastRecentUsedList->var1;
    if (var1)
    {
      var1->var2 = element;
      leastRecentUsedList = self->_leastRecentUsedList;
    }

    leastRecentUsedList->var1 = element;
  }
}

- (void)_removeListElement:(_OFLRUCacheListElement *)element
{
  var1 = element->var1;
  var2 = element->var2;
  if (var2)
  {
    var2->var1 = var1;
    leastRecentUsedList = self->_leastRecentUsedList;
    if (leastRecentUsedList->var1 == element)
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
  if (v8->var2 == element)
  {
    v8->var2 = 0;
  }

LABEL_9:
  [(NSMutableDictionary *)self->_leastRecentUsedDictionary removeObjectForKey:element->var0];
  if (element->var0)
  {
  }

  free(element);
  --self->_leastRecentUsedList->var0;
}

- (void)setNumberOfSlots:(unint64_t)slots
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  if (self->_numberOfSlots > slots)
  {
LABEL_2:
    leastRecentUsedList = self->_leastRecentUsedList;
    while (leastRecentUsedList->var0 > slots)
    {
      var2 = leastRecentUsedList->var2;
      if (var2)
      {
        [(NSMutableDictionary *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(OFLRUCache *)self _removeListElement:self->_leastRecentUsedList->var2];
        goto LABEL_2;
      }
    }
  }

  self->_numberOfSlots = slots;
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (unint64_t)currentUsedSlots
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  recursiveLock = self->_recursiveLock;
  var0 = self->_leastRecentUsedList->var0;
  [(NSRecursiveLock *)recursiveLock unlock];
  return var0;
}

- (id)objectForKey:(id)key
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMutableDictionary *)self->_cacheDictionary objectForKey:key];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_leastRecentUsedDictionary objectForKey:key];
    if (v6)
    {
      -[OFLRUCache _promoteListElement:](self, "_promoteListElement:", [v6 pointerValue]);
    }
  }

  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v5;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (self->_numberOfSlots)
  {
    [(NSRecursiveLock *)self->_recursiveLock lock];
    v7 = [(NSMutableDictionary *)self->_leastRecentUsedDictionary objectForKey:key];
    if (v7)
    {
      -[OFLRUCache _promoteListElement:](self, "_promoteListElement:", [v7 pointerValue]);
    }

    else
    {
      v8 = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
      keyCopy = key;
      var1 = self->_leastRecentUsedList->var1;
      v8->var0 = keyCopy;
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

      -[NSMutableDictionary setObject:forKey:](self->_leastRecentUsedDictionary, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithPointer:v8], key);
    }

    v15 = self->_leastRecentUsedList;
    if (v15->var0 > self->_numberOfSlots)
    {
      var2 = v15->var2;
      if (var2)
      {
        [(NSMutableDictionary *)self->_cacheDictionary removeObjectForKey:var2->var0];
        [(OFLRUCache *)self _removeListElement:self->_leastRecentUsedList->var2];
      }
    }

    [(NSMutableDictionary *)self->_cacheDictionary setObject:object forKey:key];
    recursiveLock = self->_recursiveLock;

    [(NSRecursiveLock *)recursiveLock unlock];
  }
}

- (id)allKeys
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v3 = [-[NSMutableDictionary allKeys](self->_cacheDictionary "allKeys")];
  [(NSRecursiveLock *)self->_recursiveLock unlock];

  return v3;
}

- (void)removeObjectForKey:(id)key
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = [(NSMutableDictionary *)self->_leastRecentUsedDictionary objectForKey:key];
  if (v5)
  {
    -[OFLRUCache _removeListElement:](self, "_removeListElement:", [v5 pointerValue]);
  }

  [(NSMutableDictionary *)self->_cacheDictionary removeObjectForKey:key];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)removeAllObjects
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  [(NSMutableDictionary *)self->_leastRecentUsedDictionary removeAllObjects];
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
  [(NSMutableDictionary *)self->_cacheDictionary removeAllObjects];
  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (void)evictSlots:(unint64_t)slots
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  for (; slots; --slots)
  {
    var2 = self->_leastRecentUsedList->var2;
    if (var2)
    {
      [(NSMutableDictionary *)self->_cacheDictionary removeObjectForKey:var2->var0];
      [(OFLRUCache *)self _removeListElement:self->_leastRecentUsedList->var2];
    }
  }

  recursiveLock = self->_recursiveLock;

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (BOOL)loadFromURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = objc_autoreleasePoolPush();
  [(OFLRUCache *)self removeAllObjects];
  v5 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:l];
  v26 = 0;
  [v5 open];
  v6 = [MEMORY[0x277CCAC58] propertyListWithStream:v5 options:0 format:0 error:&v26];
  [v5 close];

  if (v6)
  {
    -[NSMutableDictionary addEntriesFromDictionary:](self->_cacheDictionary, "addEntriesFromDictionary:", [v6 objectForKey:@"OFLRUCacheSaveMemoryKey"]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [objc_msgSend(v6 objectForKey:{@"OFLRUCacheSaveLeastRecentUsedKey", "reverseObjectEnumerator"}];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
          v14 = v12;
          var1 = self->_leastRecentUsedList->var1;
          v13->var0 = v14;
          v13->var1 = var1;
          v13->var2 = 0;
          leastRecentUsedList = self->_leastRecentUsedList;
          v17 = leastRecentUsedList->var1;
          if (v17)
          {
            v17->var2 = v13;
            leastRecentUsedList = self->_leastRecentUsedList;
          }

          leastRecentUsedList->var1 = v13;
          v18 = self->_leastRecentUsedList;
          if (!v18->var0++)
          {
            v18->var2 = v13;
          }

          -[NSMutableDictionary setObject:forKey:](self->_leastRecentUsedDictionary, "setObject:forKey:", [MEMORY[0x277CCAE60] valueWithPointer:v13], v12);
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }
  }

  else if (OFLoggerLevel >= 4)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLRUCache.m", 411, @"Failed to load cache from %@: %@", l, [v26 localizedDescription]);
  }

  objc_autoreleasePoolPop(v21);
  return v6 != 0;
}

- (BOOL)writeToURL:(id)l
{
  [(NSRecursiveLock *)self->_recursiveLock lock];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:self->_cacheDictionary forKey:@"OFLRUCacheSaveMemoryKey"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = self->_leastRecentUsedList->var1; i; i = i->var1)
  {
    [v6 addObject:i->var0];
  }

  [v5 setObject:v6 forKey:@"OFLRUCacheSaveLeastRecentUsedKey"];

  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = [MEMORY[0x277CCAA00] temporaryFileURLWithExtension:@"tmp"];
  v10 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:v9 append:0];
  v13 = 0;
  [v10 open];
  if (![MEMORY[0x277CCAC58] writePropertyList:v5 toStream:v10 format:200 options:0 error:&v13])
  {
    if (OFLoggerLevel >= 4)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLRUCache.m", 484, @"Failed to save cache to %@ (%@): %@", l, v9, [v13 localizedDescription]);
    }

    [v10 close];

    goto LABEL_11;
  }

  [v10 close];

  [v8 removeItemAtURL:l error:0];
  if (([v8 moveItemAtURL:v9 toURL:l error:&v13] & 1) == 0)
  {
    if (OFLoggerLevel >= 4)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFLRUCache.m", 502, @"Failed to save cache to %@: %@", l, [v13 localizedDescription]);
    }

LABEL_11:
    [v8 removeItemAtURL:v9 error:0];
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  [(NSRecursiveLock *)self->_recursiveLock unlock];
  return v11;
}

@end