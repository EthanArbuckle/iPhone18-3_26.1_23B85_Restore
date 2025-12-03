@interface PXThreadSafeDictionary
- (PXThreadSafeDictionary)init;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)safeCopy;
- (void)enumerateKeysAndObjectsUsingBlock:(id)block;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation PXThreadSafeDictionary

- (id)safeCopy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__207615;
  v11 = __Block_byref_object_dispose__207616;
  v12 = 0;
  queue = [(PXThreadSafeDictionary *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXThreadSafeDictionary_safeCopy__block_invoke;
  v6[3] = &unk_1E7749A28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__PXThreadSafeDictionary_safeCopy__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeAllObjects
{
  queue = [(PXThreadSafeDictionary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PXThreadSafeDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)block
{
  blockCopy = block;
  queue = [(PXThreadSafeDictionary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PXThreadSafeDictionary_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v7[3] = &unk_1E774C2F0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__207615;
  v16 = __Block_byref_object_dispose__207616;
  v17 = 0;
  queue = [(PXThreadSafeDictionary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PXThreadSafeDictionary_objectForKey___block_invoke;
  block[3] = &unk_1E7746448;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__PXThreadSafeDictionary_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  queue = [(PXThreadSafeDictionary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXThreadSafeDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v12 = objectCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = objectCopy;
  dispatch_barrier_async(queue, block);
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  queue = [(PXThreadSafeDictionary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PXThreadSafeDictionary_removeObjectsForKeys___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = keysCopy;
  v6 = keysCopy;
  dispatch_barrier_async(queue, v7);
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  queue = [(PXThreadSafeDictionary *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__PXThreadSafeDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_async(queue, v7);
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__207615;
  v16 = __Block_byref_object_dispose__207616;
  v17 = 0;
  queue = [(PXThreadSafeDictionary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PXThreadSafeDictionary_objectForKeyedSubscript___block_invoke;
  block[3] = &unk_1E7746448;
  v10 = subscriptCopy;
  v11 = &v12;
  block[4] = self;
  v6 = subscriptCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__PXThreadSafeDictionary_objectForKeyedSubscript___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  queue = [(PXThreadSafeDictionary *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXThreadSafeDictionary_setObject_forKeyedSubscript___block_invoke;
  block[3] = &unk_1E774A1B8;
  block[4] = self;
  v12 = objectCopy;
  v13 = subscriptCopy;
  v9 = subscriptCopy;
  v10 = objectCopy;
  dispatch_barrier_async(queue, block);
}

- (PXThreadSafeDictionary)init
{
  v8.receiver = self;
  v8.super_class = PXThreadSafeDictionary;
  v2 = [(PXThreadSafeDictionary *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    internalDictionary = v2->_internalDictionary;
    v2->_internalDictionary = v3;

    v5 = dispatch_queue_create("PXThreadSafeDictionary", MEMORY[0x1E69E96A8]);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end