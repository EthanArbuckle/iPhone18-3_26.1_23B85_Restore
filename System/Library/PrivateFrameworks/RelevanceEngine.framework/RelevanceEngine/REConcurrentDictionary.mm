@interface REConcurrentDictionary
- (id)copyWithZone:(_NSZone *)a3;
- (id)initStrongToStrongDictionary;
- (id)initWeakToStrongDictionary;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation REConcurrentDictionary

- (id)initWeakToStrongDictionary
{
  v8.receiver = self;
  v8.super_class = REConcurrentDictionary;
  v2 = [(REConcurrentDictionary *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:16];
    table = v2->_table;
    v2->_table = v3;

    v5 = dispatch_queue_create("com.apple.RelevanceEngine.REConcurrentDictionary", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (id)initStrongToStrongDictionary
{
  v8.receiver = self;
  v8.super_class = REConcurrentDictionary;
  v2 = [(REConcurrentDictionary *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:16];
    table = v2->_table;
    v2->_table = v3;

    v5 = dispatch_queue_create("com.apple.RelevanceEngine.REConcurrentDictionary", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__REConcurrentDictionary_count__block_invoke;
  v5[3] = &unk_2785FADB8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__REConcurrentDictionary_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__17;
  v16 = __Block_byref_object_dispose__17;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__REConcurrentDictionary_objectForKey___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __39__REConcurrentDictionary_objectForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__REConcurrentDictionary_removeObjectForKey___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__REConcurrentDictionary_setObject_forKey___block_invoke;
  block[3] = &unk_2785FB070;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __43__REConcurrentDictionary_setObject_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (void)removeAllObjects
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__REConcurrentDictionary_removeAllObjects__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initStrongToStrongDictionary"}];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__REConcurrentDictionary_copyWithZone___block_invoke;
  v9[3] = &unk_2785F9AE0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(queue, v9);
  v7 = v6;

  return v7;
}

uint64_t __39__REConcurrentDictionary_copyWithZone___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 8) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end