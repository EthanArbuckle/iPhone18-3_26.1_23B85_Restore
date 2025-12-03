@interface WLKCache
- (WLKCache)init;
- (id)objectForKey:(id)key;
- (unint64_t)countLimit;
- (void)_onQueueRemoveObjectForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setCountLimit:(unint64_t)limit;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation WLKCache

- (WLKCache)init
{
  v10.receiver = self;
  v10.super_class = WLKCache;
  v2 = [(WLKCache *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WatchListKit.WLKCache", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v2->_countLimit = 0;
    array = [MEMORY[0x277CBEB18] array];
    stack = v2->_stack;
    v2->_stack = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary = v2->_dictionary;
    v2->_dictionary = dictionary;
  }

  return v2;
}

- (void)setCountLimit:(unint64_t)limit
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__WLKCache_setCountLimit___block_invoke;
  v4[3] = &unk_279E5F258;
  v4[4] = self;
  v4[5] = limit;
  dispatch_sync(accessQueue, v4);
}

void __26__WLKCache_setCountLimit___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = *(a1 + 40);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v5 = [*(*(a1 + 32) + 16) subarrayWithRange:{0, v4}];
    [*(*(a1 + 32) + 24) removeObjectsForKeys:v5];
    [*(*(a1 + 32) + 16) removeObjectsInRange:{0, v4}];

    v3 = *(a1 + 40);
  }

  *(*(a1 + 32) + 32) = v3;
}

- (unint64_t)countLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22__WLKCache_countLimit__block_invoke;
  v5[3] = &unk_279E5F280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__WLKCache_objectForKey___block_invoke;
  block[3] = &unk_279E5F2A8;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __25__WLKCache_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!objectCopy)
  {
    [WLKCache setObject:forKey:];
  }

  v8 = keyCopy;
  if (!keyCopy)
  {
    [WLKCache setObject:forKey:];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__WLKCache_setObject_forKey___block_invoke;
  block[3] = &unk_279E5F2D0;
  block[4] = self;
  v13 = keyCopy;
  v14 = objectCopy;
  v10 = objectCopy;
  v11 = v8;
  dispatch_sync(accessQueue, block);
}

void __29__WLKCache_setObject_forKey___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v2 = [v6 isEqual:*(a1 + 48)];
  if (!v6)
  {
    v3 = [*(*(a1 + 32) + 16) count];
    v4 = *(a1 + 32);
    if (v3 != *(v4 + 32))
    {
LABEL_8:
      [*(v4 + 16) addObject:*(a1 + 40)];
      goto LABEL_9;
    }

    v5 = [*(v4 + 16) objectAtIndex:0];
    [*(a1 + 32) _onQueueRemoveObjectForKey:v5];

LABEL_7:
    v4 = *(a1 + 32);
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_10;
  }

  if ([*(*(a1 + 32) + 16) count] >= 2)
  {
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    goto LABEL_7;
  }

LABEL_9:
  [*(*(a1 + 32) + 24) setObject:*(a1 + 48) forKey:*(a1 + 40)];
LABEL_10:
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__WLKCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_279E5E5F8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)removeAllObjects
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__WLKCache_removeAllObjects__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

uint64_t __28__WLKCache_removeAllObjects__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  v2 = *(*(a1 + 32) + 24);

  return [v2 removeAllObjects];
}

- (void)_onQueueRemoveObjectForKey:(id)key
{
  keyCopy = key;
  dispatch_assert_queue_V2(self->_accessQueue);
  v4 = [(NSMutableDictionary *)self->_dictionary objectForKey:keyCopy];
  if (v4)
  {
    [(NSMutableArray *)self->_stack removeObject:keyCopy];
    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:keyCopy];
  }
}

@end