@interface IMMemoryCache
- (BOOL)_shouldRemoveIndex:(unint64_t)a3;
- (IMMemoryCache)init;
- (id)allKeys;
- (id)description;
- (id)objectForKey:(id)a3;
- (int64_t)numberOfCachedItems;
- (unint64_t)costForObjectWithKey:(id)a3;
- (void)_addItem:(id)a3 forKey:(id)a4;
- (void)_checkLimits;
- (void)_checkLimitsAndEvictObjects;
- (void)_removeObjectForKey:(id)a3;
- (void)checkLimitsAndEvictObjects;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeyWithPrefix:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 cost:(unint64_t)a5;
@end

@implementation IMMemoryCache

- (IMMemoryCache)init
{
  v14.receiver = self;
  v14.super_class = IMMemoryCache;
  v2 = [(IMMemoryCache *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    items = v2->_items;
    v2->_items = v3;

    v5 = objc_opt_new();
    itemsArray = v2->_itemsArray;
    v2->_itemsArray = v5;

    v7 = objc_opt_new();
    queue = v2->_queue;
    v2->_queue = v7;

    [(NSOperationQueue *)v2->_queue setMaxConcurrentOperationCount:1];
    v9 = dispatch_queue_create("com.apple.itunesmobile.immemorycache", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v9;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v2->_lastCheckTime = v11;
    v12 = v2;
  }

  return v2;
}

- (id)allKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__IMMemoryCache_allKeys__block_invoke;
  v5[3] = &unk_2782BDD18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__IMMemoryCache_allKeys__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) items];
  v2 = [v6 allKeys];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__IMMemoryCache_objectForKey___block_invoke;
    block[3] = &unk_2782BDD40;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(accessQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __30__IMMemoryCache_objectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v13 = [v2 objectForKey:*(a1 + 40)];

  v3 = v13;
  if (v13)
  {
    v4 = [*(a1 + 32) itemsArray];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "timeStamp")}];
    v6 = [v4 pf_indexOfObjectWithValue:v5 forKeyPath:@"timeStamp"];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL && (NSLog(&cfstr_SInitialObject.isa, "-[IMMemoryCache objectForKey:]_block_invoke"), [*(a1 + 32) itemsArray], v7 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v7, "indexOfObjectIdenticalTo:", v13), v7, v6 == 0x7FFFFFFFFFFFFFFFLL))
    {
      NSLog(&cfstr_SCompleteObjec.isa, "[IMMemoryCache objectForKey:]_block_invoke");
      v8 = [*(a1 + 32) items];
      [v8 removeObjectForKey:*(a1 + 40)];
    }

    else
    {
      v9 = [*(a1 + 32) itemsArray];
      [v9 removeObjectAtIndex:v6];

      v10 = [*(a1 + 32) itemsArray];
      [v10 addObject:v13];

      [v13 setTimeStamp:mach_absolute_time()];
      v11 = [v13 item];
      v12 = *(*(a1 + 48) + 8);
      v8 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v3 = v13;
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [_IMMemoryCacheItem cacheItemWithItem:a3 key:v6 cost:0];
  [(IMMemoryCache *)self _addItem:v7 forKey:v6];
}

- (void)setObject:(id)a3 forKey:(id)a4 cost:(unint64_t)a5
{
  v8 = a4;
  v9 = [_IMMemoryCacheItem cacheItemWithItem:a3 key:v8 cost:a5];
  [(IMMemoryCache *)self _addItem:v9 forKey:v8];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__IMMemoryCache_removeObjectForKey___block_invoke;
    v7[3] = &unk_2782BDD68;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(accessQueue, v7);
  }
}

- (void)removeAllObjects
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__IMMemoryCache_removeAllObjects__block_invoke;
  block[3] = &unk_2782BDD90;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __33__IMMemoryCache_removeAllObjects__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCount:0];
  [*(a1 + 32) setTotalCost:0];
  v2 = [*(a1 + 32) items];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) itemsArray];
  [v3 removeAllObjects];
}

- (void)removeObjectsForKeyWithPrefix:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    accessQueue = self->_accessQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__IMMemoryCache_removeObjectsForKeyWithPrefix___block_invoke;
    v6[3] = &unk_2782BDD68;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(accessQueue, v6);
  }
}

void __47__IMMemoryCache_removeObjectsForKeyWithPrefix___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) items];
  v3 = [v2 allKeys];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 hasPrefix:{*(a1 + 40), v10}])
        {
          [*(a1 + 32) _removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)_shouldRemoveIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_itemsArray objectAtIndex:a3];
  if ([v4 conformsToProtocol] && (objc_msgSend(v4, "item"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "discardContentIfPossible"), v5, objc_msgSend(v4, "item"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContentDiscarded"), v6, !v7))
  {
    v16 = 0;
  }

  else
  {
    v8 = [(IMMemoryCache *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(IMMemoryCache *)self delegate];
      v11 = [v4 item];
      [v10 cache:self willEvictObject:v11];
    }

    v12 = [v4 cost];
    items = self->_items;
    v14 = self->_count - 1;
    self->_totalCost -= v12;
    self->_count = v14;
    v15 = [v4 key];
    [(NSMutableDictionary *)items removeObjectForKey:v15];

    v16 = 1;
  }

  return v16;
}

- (void)checkLimitsAndEvictObjects
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__IMMemoryCache_checkLimitsAndEvictObjects__block_invoke;
  block[3] = &unk_2782BDD90;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)_checkLimitsAndEvictObjects
{
  totalCostLimit = self->_totalCostLimit;
  if (totalCostLimit && self->_totalCost > totalCostLimit)
  {
    count = self->_count;
    v5 = [MEMORY[0x277CCAB58] indexSet];
    if (count)
    {
      v6 = 0;
      v7 = count - 1;
      do
      {
        if ([(IMMemoryCache *)self _shouldRemoveIndex:v6])
        {
          [v5 addIndex:v6];
        }
      }

      while (self->_totalCost > self->_totalCostLimit && v7 != v6++);
    }

    [(NSMutableArray *)self->_itemsArray removeObjectsAtIndexes:v5];
  }

  countLimit = self->_countLimit;
  if (countLimit)
  {
    v10 = self->_count;
    if (v10 > countLimit)
    {
      v14 = [MEMORY[0x277CCAB58] indexSet];
      v11 = 0;
      v12 = v10 - 1;
      do
      {
        if ([(IMMemoryCache *)self _shouldRemoveIndex:v11])
        {
          [v14 addIndex:v11];
        }
      }

      while (self->_count > self->_countLimit && v12 != v11++);
      [(NSMutableArray *)self->_itemsArray removeObjectsAtIndexes:v14];
    }
  }
}

- (void)_checkLimits
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v3 - self->_lastCheckTime > 0.1 && ((countLimit = self->_countLimit) != 0 && self->_count > countLimit || (totalCostLimit = self->_totalCostLimit) != 0 && self->_totalCost > totalCostLimit))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_lastCheckTime = v6;

    [(IMMemoryCache *)self _checkLimitsAndEvictObjects];
  }
}

- (unint64_t)costForObjectWithKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__IMMemoryCache_costForObjectWithKey___block_invoke;
    block[3] = &unk_2782BDD40;
    block[4] = self;
    v10 = v4;
    v11 = &v12;
    dispatch_sync(accessQueue, block);
    v7 = v13[3];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t __38__IMMemoryCache_costForObjectWithKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v6 = [v2 objectForKey:*(a1 + 40)];

  v3 = v6;
  if (v6)
  {
    v4 = [v6 cost];
    v3 = v6;
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;

  return MEMORY[0x2821F96F8](v4, v3);
}

- (int64_t)numberOfCachedItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__IMMemoryCache_numberOfCachedItems__block_invoke;
  v5[3] = &unk_2782BDD18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __36__IMMemoryCache_numberOfCachedItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemsArray];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__IMMemoryCache_description__block_invoke;
  v5[3] = &unk_2782BDD18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__IMMemoryCache_description__block_invoke(uint64_t a1)
{
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = objc_opt_class();
  v2 = *(a1 + 32);
  v16 = [v2 items];
  v3 = [v16 count];
  v4 = [*(a1 + 32) itemsArray];
  v5 = [v4 count];
  v6 = [*(a1 + 32) count];
  v7 = [*(a1 + 32) countLimit];
  v8 = [*(a1 + 32) totalCost];
  v9 = [*(a1 + 32) totalCostLimit];
  v10 = [*(a1 + 32) items];
  v11 = [v15 initWithFormat:@"<%@: %p>; Item Dictionary Count: %d; Item Array Count: %d; Internal Count: %d; Count Limit: %d; Current Cost: %d; Cost Limit: %d; Items: %@", v14, v2, v3, v5, v6, v7, v8, v9, v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (void)_addItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__IMMemoryCache__addItem_forKey___block_invoke;
    block[3] = &unk_2782BDDB8;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_sync(accessQueue, block);
  }
}

uint64_t __33__IMMemoryCache__addItem_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) _removeObjectForKey:*(a1 + 40)];
  }

  [*(a1 + 48) setTimeStamp:mach_absolute_time()];
  v4 = [*(a1 + 32) items];
  [v4 setObject:*(a1 + 48) forKey:*(a1 + 40)];

  v5 = [*(a1 + 32) itemsArray];
  [v5 addObject:*(a1 + 48)];

  [*(a1 + 32) setCount:{objc_msgSend(*(a1 + 32), "count") + 1}];
  if ([*(a1 + 48) cost])
  {
    [*(a1 + 32) setTotalCost:{objc_msgSend(*(a1 + 32), "totalCost") + objc_msgSend(*(a1 + 48), "cost")}];
  }

  v6 = *(a1 + 32);

  return [v6 _checkLimits];
}

- (void)_removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = v4;
    v6 = [(NSMutableDictionary *)self->_items objectForKey:v4];
    v7 = v6;
    if (v6)
    {
      --self->_count;
      v8 = [v6 cost];
      items = self->_items;
      self->_totalCost -= v8;
      [(NSMutableDictionary *)items removeObjectForKey:v13];
      itemsArray = self->_itemsArray;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "timeStamp")}];
      v12 = [(NSMutableArray *)itemsArray pf_indexOfObjectWithValue:v11 forKeyPath:@"timeStamp"];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->_itemsArray removeObjectAtIndex:v12];
      }
    }

    v5 = v13;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

@end