@interface WBSCache
- (WBSCache)init;
- (id)objectForKey:(id)key;
- (void)_recacheObjectForKey:(id)key;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation WBSCache

- (WBSCache)init
{
  v13.receiver = self;
  v13.super_class = WBSCache;
  v2 = [(WBSCache *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    weakObjectsTable = v2->_weakObjectsTable;
    v2->_weakObjectsTable = strongToWeakObjectsMapTable;

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSCache.%p", v2];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_create(uTF8String, MEMORY[0x1E69E96A8]);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v9;

    v11 = v2;
  }

  return v2;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  cacheQueue = self->_cacheQueue;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __25__WBSCache_objectForKey___block_invoke;
  v12 = &unk_1E7FB7320;
  v15 = &v21;
  selfCopy = self;
  v6 = keyCopy;
  v14 = v6;
  v16 = &v17;
  dispatch_sync(cacheQueue, &v9);
  if (*(v18 + 24) == 1)
  {
    [(WBSCache *)self _recacheObjectForKey:v6, v9, v10, v11, v12, selfCopy];
  }

  v7 = v22[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v7;
}

void __25__WBSCache_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [*(a1[4] + 16) objectForKey:a1[5]];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(a1[7] + 8) + 24) = *(*(a1[6] + 8) + 40) != 0;
  }
}

- (void)_recacheObjectForKey:(id)key
{
  keyCopy = key;
  cacheQueue = self->_cacheQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__WBSCache__recacheObjectForKey___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_async(cacheQueue, v7);
}

void __33__WBSCache__recacheObjectForKey___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 8) setObject:v2 forKey:*(a1 + 40)];
    v2 = v3;
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__WBSCache_setObject_forKey___block_invoke;
  block[3] = &unk_1E7FB7258;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_barrier_async(cacheQueue, block);
}

uint64_t __29__WBSCache_setObject_forKey___block_invoke(void *a1)
{
  [*(a1[4] + 8) setObject:a1[5] forKey:a1[6]];
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = a1[6];

  return [v3 setObject:v2 forKey:v4];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  cacheQueue = self->_cacheQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__WBSCache_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E7FB6E30;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_async(cacheQueue, v7);
}

uint64_t __31__WBSCache_removeObjectForKey___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 removeObjectForKey:v2];
}

- (void)removeAllObjects
{
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__WBSCache_removeAllObjects__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  dispatch_barrier_async(cacheQueue, block);
}

uint64_t __28__WBSCache_removeAllObjects__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeAllObjects];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeAllObjects];
}

@end