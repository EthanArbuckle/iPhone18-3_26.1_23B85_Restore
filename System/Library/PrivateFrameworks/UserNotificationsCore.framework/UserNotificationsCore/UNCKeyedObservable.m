@interface UNCKeyedObservable
- (UNCKeyedObservable)initWithQueue:(id)a3 callOutQueue:(id)a4;
- (id)_observersForKey:(id)a3;
- (void)_callOutQueue_notifyObserversKey:(id)a3 usingBlock:(id)a4;
- (void)_queue_addObserver:(id)a3 forKey:(id)a4;
- (void)_queue_removeObserver:(id)a3 forKey:(id)a4;
- (void)addObserver:(id)a3 forKey:(id)a4;
- (void)notifyObserversKey:(id)a3 usingBlock:(id)a4;
- (void)removeObserver:(id)a3 forKey:(id)a4;
@end

@implementation UNCKeyedObservable

- (UNCKeyedObservable)initWithQueue:(id)a3 callOutQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = UNCKeyedObservable;
  v9 = [(UNCKeyedObservable *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_callOutQueue, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByKey = v10->_observersByKey;
    v10->_observersByKey = v11;
  }

  return v10;
}

- (void)addObserver:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__UNCKeyedObservable_addObserver_forKey___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_queue_addObserver:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  if (v8 && v6)
  {
    v7 = [(NSMutableDictionary *)self->_observersByKey objectForKey:v6];
    if (!v7)
    {
      v7 = [MEMORY[0x1E695DF70] array];
      [(NSMutableDictionary *)self->_observersByKey setObject:v7 forKey:v6];
    }

    [v7 removeObject:v8];
    [v7 addObject:v8];
  }
}

- (void)removeObserver:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UNCKeyedObservable_removeObserver_forKey___block_invoke;
  block[3] = &unk_1E85D6F20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_queue_removeObserver:(id)a3 forKey:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(NSMutableDictionary *)self->_observersByKey objectForKey:v7];

  [v9 removeObject:v8];
}

- (void)notifyObserversKey:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UNCKeyedObservable_notifyObserversKey_usingBlock___block_invoke;
  block[3] = &unk_1E85D7350;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(callOutQueue, block);
}

void __52__UNCKeyedObservable_notifyObserversKey_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__UNCKeyedObservable_notifyObserversKey_usingBlock___block_invoke_2;
  v3[3] = &unk_1E85D7328;
  v4 = *(a1 + 48);
  [v1 _callOutQueue_notifyObserversKey:v2 usingBlock:v3];
}

- (void)_callOutQueue_notifyObserversKey:(id)a3 usingBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_callOutQueue);
  v8 = [(UNCKeyedObservable *)self _observersForKey:v6];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v7[2](v7, *(*(&v14 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_observersForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = [MEMORY[0x1E695DEC8] array];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__UNCKeyedObservable__observersForKey___block_invoke;
  block[3] = &unk_1E85D6F48;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__UNCKeyedObservable__observersForKey___block_invoke(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  v3 = [*(a1[4] + 24) objectForKey:@"*"];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1[6] + 8) + 40);
  v11 = [*(a1[4] + 24) objectForKey:a1[5]];
  v8 = [v7 arrayByAddingObjectsFromArray:v11];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end