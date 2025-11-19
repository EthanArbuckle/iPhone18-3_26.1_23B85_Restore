@interface SKUISettingValueStore
- (BOOL)hasChanges;
- (SKUISettingValueStore)init;
- (id)modifiedKeys;
- (id)originalValueForKey:(id)a3;
- (id)resolvedValueForKey:(id)a3;
- (void)clearValueForKey:(id)a3;
- (void)commitChanges;
- (void)discardChanges;
- (void)init;
- (void)setModifiedValue:(id)a3 forKey:(id)a4;
- (void)setOriginalValue:(id)a3 forKey:(id)a4;
@end

@implementation SKUISettingValueStore

- (SKUISettingValueStore)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISettingValueStore init];
  }

  v7.receiver = self;
  v7.super_class = SKUISettingValueStore;
  v3 = [(SKUISettingValueStore *)&v7 init];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.StoreKitUI.SKUISettingValueStore", 0);
    mutexQueue = v3->_mutexQueue;
    v3->_mutexQueue = v4;
  }

  return v3;
}

- (void)clearValueForKey:(id)a3
{
  v4 = a3;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SKUISettingValueStore_clearValueForKey___block_invoke;
  v7[3] = &unk_2781F80C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(mutexQueue, v7);
}

void *__42__SKUISettingValueStore_clearValueForKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    [v3 removeObjectForKey:*(a1 + 40)];
    v2 = *(a1 + 32);
  }

  result = *(v2 + 24);
  if (result)
  {
    v5 = *(a1 + 40);

    return [result removeObjectForKey:v5];
  }

  return result;
}

- (void)commitChanges
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SKUISettingValueStore_commitChanges__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

void __38__SKUISettingValueStore_commitChanges__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    if (!*(v2 + 16))
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = v4;

      v2 = *(a1 + 32);
      v3 = *(v2 + 24);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__SKUISettingValueStore_commitChanges__block_invoke_2;
    v9[3] = &unk_2781FBD38;
    v9[4] = v2;
    [v3 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;
  }
}

- (void)discardChanges
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SKUISettingValueStore_discardChanges__block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

void __39__SKUISettingValueStore_discardChanges__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (BOOL)hasChanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SKUISettingValueStore_hasChanges__block_invoke;
  v5[3] = &unk_2781F8608;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)modifiedKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25;
  v10 = __Block_byref_object_dispose__25;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SKUISettingValueStore_modifiedKeys__block_invoke;
  v5[3] = &unk_2781F9918;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__37__SKUISettingValueStore_modifiedKeys__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = [result allKeys];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (id)originalValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SKUISettingValueStore_originalValueForKey___block_invoke;
  block[3] = &unk_2781FBD60;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void *__45__SKUISettingValueStore_originalValueForKey___block_invoke(void *a1)
{
  result = *(a1[4] + 16);
  if (result)
  {
    v3 = [result objectForKey:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (id)resolvedValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__25;
  v16 = __Block_byref_object_dispose__25;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SKUISettingValueStore_resolvedValueForKey___block_invoke;
  block[3] = &unk_2781FBD60;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__SKUISettingValueStore_resolvedValueForKey___block_invoke(void *a1)
{
  v2 = *(a1[4] + 24);
  if (v2)
  {
    v3 = [v2 objectForKey:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  if (!*(*(a1[6] + 8) + 40))
  {
    v6 = *(a1[4] + 16);
    if (v6)
    {
      v7 = [v6 objectForKey:a1[5]];
      v8 = *(a1[6] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      MEMORY[0x2821F96F8](v7, v9);
    }
  }
}

- (void)setModifiedValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKUISettingValueStore_setModifiedValue_forKey___block_invoke;
  block[3] = &unk_2781F8680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(mutexQueue, block);
}

uint64_t __49__SKUISettingValueStore_setModifiedValue_forKey___block_invoke(void *a1)
{
  if (!*(a1[4] + 24))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = a1[4];
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  v5 = *(a1[4] + 24);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (void)setOriginalValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SKUISettingValueStore_setOriginalValue_forKey___block_invoke;
  block[3] = &unk_2781F8680;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(mutexQueue, block);
}

uint64_t __49__SKUISettingValueStore_setOriginalValue_forKey___block_invoke(void *a1)
{
  if (!*(a1[4] + 16))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = a1[4];
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;
  }

  v5 = *(a1[4] + 16);
  v6 = a1[6];
  if (a1[5])
  {

    return [v5 setObject:? forKey:?];
  }

  else
  {
    v8 = a1[6];

    return [v5 removeObjectForKey:{v8, v6}];
  }
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISettingValueStore init]";
}

@end