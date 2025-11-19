@interface CLKUIResourceManager
+ (id)sharedInstance;
- (BOOL)ensureMemoryAvailable:(unint64_t)a3;
- (BOOL)memoryIsAvailable:(unint64_t)a3;
- (CLKUIResourceManager)init;
- (id)_fetchOldestAtlas;
- (id)borrowTextureLoadingQueue;
- (id)delegateForUuid:(id)a3;
- (id)textureForUuid:(id)a3 delegate:(id)a4 rect:(id)a5 nullTexture:;
- (unint64_t)_computeMemoryAvailable;
- (unint64_t)_memoryLimit;
- (void)_purgeAllUnconditionally;
- (void)dealloc;
- (void)notifyAtlas:(id)a3 willChangeToMemoryCost:(unint64_t)a4;
- (void)purge:(id)a3;
- (void)purgeAllUnused;
- (void)returnTextureLoadingQueue:(id)a3;
- (void)updateTextureStreaming;
@end

@implementation CLKUIResourceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CLKUIResourceManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __38__CLKUIResourceManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CLKUIResourceManager)init
{
  v17.receiver = self;
  v17.super_class = CLKUIResourceManager;
  v2 = [(CLKUIResourceManager *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    atlasesByUuid = v2->_atlasesByUuid;
    v2->_atlasesByUuid = v3;

    v5 = objc_opt_new();
    providersByKey = v2->_providersByKey;
    v2->_providersByKey = v5;

    v7 = objc_opt_new();
    recentProvidersForUuid = v2->_recentProvidersForUuid;
    v2->_recentProvidersForUuid = v7;

    v9 = objc_opt_new();
    textureLoaderQueues = v2->_textureLoaderQueues;
    v2->_textureLoaderQueues = v9;

    v11 = CLKRunningInProcess();
    v12 = 36700160;
    if (!v11)
    {
      v12 = -1;
    }

    v2->_memoryLimit = v12;
    v2->_explicitMemoryLimit = -1;
    v13 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v13;

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v2 selector:sel__purgeAllUnconditionally name:*MEMORY[0x1E695B4C8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695B4C8] object:0];

  v4.receiver = self;
  v4.super_class = CLKUIResourceManager;
  [(CLKUIResourceManager *)&v4 dealloc];
}

- (id)textureForUuid:(id)a3 delegate:(id)a4 rect:(id)a5 nullTexture:
{
  v19 = v5;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 resourceProviderKey];
  v13 = v12;
  v14 = 0;
  if (v9 && v12)
  {
    v15 = [v12 key];
    [(NSRecursiveLock *)self->_lock lock];
    v16 = [(NSMutableDictionary *)self->_providersByKey objectForKey:v15];
    if (!v16)
    {
      v16 = [objc_opt_new() initWithDelegate:v10 key:v15];
      [(NSMutableDictionary *)self->_providersByKey setObject:v16 forKeyedSubscript:v15];
    }

    [(NSMutableDictionary *)self->_recentProvidersForUuid setObject:v16 forKeyedSubscript:v9, v19];
    [v16 addUuidToHistory:v9];
    v17 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:v9];
    if (!v17)
    {
      v17 = [(CLKUIResourceManager *)self _newAtlasForUuid:v9 nullTexture:v11];
      [(NSMutableDictionary *)self->_atlasesByUuid setObject:v17 forKeyedSubscript:v9];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v14 = [[CLKUITexture alloc] initWithAtlas:v17 rect:v20];
  }

  return v14;
}

- (void)purge:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  v7 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:v5];

  if ([v7 isPurgable])
  {
    v6 = objc_opt_new();
    [v6 addObject:v7];
    [(NSRecursiveLock *)self->_lock unlock];
    [(CLKUIResourceManager *)self _purgeAtlases:v6];
  }

  else
  {
    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (unint64_t)_memoryLimit
{
  [(NSRecursiveLock *)self->_lock lock];
  explicitMemoryLimit = self->_explicitMemoryLimit;
  if (explicitMemoryLimit == -1)
  {
    explicitMemoryLimit = self->_memoryLimit;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  return explicitMemoryLimit;
}

- (unint64_t)_computeMemoryAvailable
{
  [(NSRecursiveLock *)self->_lock lock];
  explicitMemoryLimit = self->_explicitMemoryLimit;
  [(NSRecursiveLock *)self->_lock unlock];
  if (explicitMemoryLimit == -1 && !CLKRunningInProcess())
  {
    return -1;
  }

  v4 = MEMORY[0x1BFB31670]();
  if (v4 >= 0x500000)
  {
    return v4 - 5242880;
  }

  else
  {
    return 0;
  }
}

- (id)_fetchOldestAtlas
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_atlasesByUuid;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        if ([v10 isPurgable])
        {
          if (v6)
          {
            [v10 boundTime];
            if (v11 < v8)
            {
              v12 = v11;
              v13 = v10;

              v8 = v12;
              v6 = v13;
            }
          }

          else
          {
            v6 = v10;
            [v6 boundTime];
            v8 = v14;
          }
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v6;
}

- (id)borrowTextureLoadingQueue
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_textureLoaderQueues count])
  {
    v3 = [(NSMutableArray *)self->_textureLoaderQueues lastObject];
    [(NSMutableArray *)self->_textureLoaderQueues removeLastObject];
  }

  else
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v3 = dispatch_queue_create("CLKUIMetalTexture queue", v4);
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)returnTextureLoadingQueue:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  [(NSRecursiveLock *)lock lock];
  [(NSMutableArray *)self->_textureLoaderQueues addObject:v5];

  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (BOOL)memoryIsAvailable:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
  v7 = self->_memoryUsed + a3 <= [(CLKUIResourceManager *)self _memoryLimit]&& v5 >= a3;
  [(NSRecursiveLock *)self->_lock unlock];
  return v7;
}

- (BOOL)ensureMemoryAvailable:(unint64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
  v6 = [(CLKUIResourceManager *)self _memoryLimit];
  if (self->_memoryUsed + a3 <= v6 && v5 >= a3)
  {
LABEL_12:
    [(NSRecursiveLock *)self->_lock unlock];
    return 1;
  }

  v8 = v6;
  v9 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    memoryUsed = self->_memoryUsed;
    *buf = 134218752;
    v31 = a3;
    v32 = 2048;
    v33 = v5;
    v34 = 2048;
    v35 = memoryUsed;
    v36 = 2048;
    v37 = v8;
    _os_log_impl(&dword_1BC940000, v9, OS_LOG_TYPE_DEFAULT, "evications begin (needs %lu bytes, %lu available bytes, %lu memory used, %lu limit)", buf, 0x2Au);
  }

  [(CLKUIResourceManager *)self purgeAllUnused];
  v11 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
  v12 = v11;
  if (self->_memoryUsed + a3 <= v8 && v11 >= a3)
  {
    v13 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_memoryUsed;
      *buf = 134218240;
      v31 = v12;
      v32 = 2048;
      v33 = v14;
      _os_log_impl(&dword_1BC940000, v13, OS_LOG_TYPE_DEFAULT, "evications end: success (%lu available bytes, %lu memory used)", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v16 = objc_opt_new();
  v17 = [(CLKUIResourceManager *)self _fetchOldestAtlas];
  if (v17)
  {
    v19 = v17;
    *&v18 = 138412290;
    v29 = v18;
    while (1)
    {
      v20 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 uuid];
        *buf = v29;
        v31 = v21;
        _os_log_impl(&dword_1BC940000, v20, OS_LOG_TYPE_DEFAULT, "evict uuid %@", buf, 0xCu);
      }

      [v16 addObject:v19];
      [(CLKUIResourceManager *)self _purgeAtlases:v16];
      [v16 removeAllObjects];
      v22 = [(CLKUIResourceManager *)self _computeMemoryAvailable];
      v12 = v22;
      if (self->_memoryUsed + a3 <= v8 && v22 >= a3)
      {
        break;
      }

      v23 = [(CLKUIResourceManager *)self _fetchOldestAtlas];

      v19 = v23;
      if (!v23)
      {
        goto LABEL_20;
      }
    }

    v26 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_memoryUsed;
      *buf = 134218240;
      v31 = v12;
      v32 = 2048;
      v33 = v27;
      _os_log_impl(&dword_1BC940000, v26, OS_LOG_TYPE_DEFAULT, "evications end: success (%lu available bytes, %lu memory used)", buf, 0x16u);
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v15 = 1;
  }

  else
  {
LABEL_20:
    v24 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_memoryUsed;
      *buf = 134218240;
      v31 = v12;
      v32 = 2048;
      v33 = v25;
      _os_log_impl(&dword_1BC940000, v24, OS_LOG_TYPE_DEFAULT, "evications end: failed (%lu available bytes, %lu memory used)", buf, 0x16u);
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v15 = 0;
  }

  return v15;
}

- (void)purgeAllUnused
{
  v46 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = self->_providersByKey;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_providersByKey objectForKeyedSubscript:v9];
        v11 = [v10 delegate];
        if (!v11)
        {
          if (!v6)
          {
            v6 = objc_opt_new();
          }

          [v6 addObject:v9];
        }
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = self->_atlasesByUuid;
  v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:v19];
        if (![v20 instanceCount])
        {
          if ([v20 isPurgable])
          {
            if (!v16)
            {
              v16 = objc_opt_new();
            }

            [v16 addObject:v20];
          }

          if (!v15)
          {
            v15 = objc_opt_new();
          }

          [v15 addObject:v19];
        }
      }

      v14 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v14);

    if (v16)
    {
      [(CLKUIResourceManager *)self _purgeAtlases:v16];
    }

    if (v6)
    {
      goto LABEL_32;
    }
  }

  else
  {

    v16 = 0;
    v15 = 0;
    if (v6)
    {
LABEL_32:
      [(NSMutableDictionary *)self->_providersByKey removeObjectsForKeys:v6];
    }
  }

  if (v15)
  {
    v28 = v16;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v15;
    v22 = [v21 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v29 + 1) + 8 * k);
          v27 = CLKLoggingObjectForDomain();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v26;
            _os_log_impl(&dword_1BC940000, v27, OS_LOG_TYPE_DEFAULT, "discard uuid %@", buf, 0xCu);
          }

          [(NSMutableDictionary *)self->_atlasesByUuid removeObjectForKey:v26];
          [(NSMutableDictionary *)self->_recentProvidersForUuid removeObjectForKey:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v23);
    }

    v16 = v28;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateTextureStreaming
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_lock lock];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(NSMutableDictionary *)self->_atlasesByUuid objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isPurgable])
        {
          [(CLKUIResourceManager *)self _updateTextureStreamingForAtlas:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)notifyAtlas:(id)a3 willChangeToMemoryCost:(unint64_t)a4
{
  lock = self->_lock;
  v7 = a3;
  [(NSRecursiveLock *)lock lock];
  self->_memoryUsed += a4;
  v8 = [v7 memoryCost];

  self->_memoryUsed -= v8;
  v9 = self->_lock;

  [(NSRecursiveLock *)v9 unlock];
}

- (id)delegateForUuid:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(NSMutableDictionary *)self->_recentProvidersForUuid objectForKeyedSubscript:v4];
  [(NSRecursiveLock *)self->_lock unlock];
  if (!v5 || ([v5 delegate], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = v5;
    [(NSRecursiveLock *)self->_lock lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_providersByKey;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [(NSMutableDictionary *)self->_providersByKey objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
          v6 = [v12 delegate];
          if (v6)
          {
            v13 = [v12 uuidHistory];
            v14 = [v13 containsObject:v4];

            if (v14)
            {
              [(NSMutableDictionary *)self->_recentProvidersForUuid setObject:v12 forKeyedSubscript:v4];
              [(NSRecursiveLock *)self->_lock unlock];

              goto LABEL_14;
            }
          }
        }

        v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
    v6 = 0;
LABEL_14:
    v5 = v16;
  }

  return v6;
}

- (void)_purgeAllUnconditionally
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(NSRecursiveLock *)self->_lock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_atlasesByUuid;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_atlasesByUuid objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v8), v10];
        if ([v9 isPurgable])
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(CLKUIResourceManager *)self _purgeAtlases:v3];
  [(NSRecursiveLock *)self->_lock unlock];
}

@end