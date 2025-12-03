@interface SKUITransientAppDataStorage
- (SKUITransientAppDataStorage)init;
- (id)getDataForKey:(id)key;
- (id)keyAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)setData:(id)data forKey:(id)key;
- (void)clear;
- (void)init;
- (void)removeDataForKey:(id)key;
@end

@implementation SKUITransientAppDataStorage

- (SKUITransientAppDataStorage)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITransientAppDataStorage init];
  }

  v7.receiver = self;
  v7.super_class = SKUITransientAppDataStorage;
  v3 = [(SKUITransientAppDataStorage *)&v7 init];
  if (v3)
  {
    v4 = dispatch_queue_create("SKUITransientAppDataStorage.accessQueue", MEMORY[0x277D85CD8]);
    [(SKUITransientAppDataStorage *)v3 setAccessQueue:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(SKUITransientAppDataStorage *)v3 setStorage:v5];
  }

  return v3;
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SKUITransientAppDataStorage_count__block_invoke;
  v6[3] = &unk_2781F8608;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __36__SKUITransientAppDataStorage_count__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)keyAtIndex:(unint64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SKUITransientAppDataStorage_keyAtIndex___block_invoke;
  block[3] = &unk_2781F8630;
  block[4] = self;
  block[5] = &v9;
  block[6] = index;
  dispatch_sync(accessQueue, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __42__SKUITransientAppDataStorage_keyAtIndex___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) storage];
  v2 = [v6 allKeys];
  v3 = [v2 objectAtIndexedSubscript:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)getDataForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SKUITransientAppDataStorage_getDataForKey___block_invoke;
  block[3] = &unk_2781F8658;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(accessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__SKUITransientAppDataStorage_getDataForKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) storage];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SKUITransientAppDataStorage_setData_forKey___block_invoke;
  block[3] = &unk_2781F8680;
  v13 = dataCopy;
  selfCopy = self;
  v15 = keyCopy;
  v9 = keyCopy;
  v10 = dataCopy;
  dispatch_barrier_sync(accessQueue, block);

  return 0;
}

void __46__SKUITransientAppDataStorage_setData_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storage];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (void)removeDataForKey:(id)key
{
  keyCopy = key;
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SKUITransientAppDataStorage_removeDataForKey___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_barrier_sync(accessQueue, v7);
}

void __48__SKUITransientAppDataStorage_removeDataForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)clear
{
  accessQueue = [(SKUITransientAppDataStorage *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__SKUITransientAppDataStorage_clear__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_barrier_sync(accessQueue, block);
}

void __36__SKUITransientAppDataStorage_clear__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) storage];
  [v1 removeAllObjects];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITransientAppDataStorage init]";
}

@end