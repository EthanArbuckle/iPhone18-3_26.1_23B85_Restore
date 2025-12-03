@interface ATXClientModelCacheManager
- (ATXClientModelCacheManager)init;
- (double)cacheAgeForClientModel:(id)model;
- (id)cacheFileHandlerForClientModel:(id)model guardedData:(id)data;
- (id)cachedSuggestionsForAllClientModels;
- (id)cachedSuggestionsForClientModel:(id)model;
- (id)lastCacheUpdateDateForClientModel:(id)model;
- (void)addCacheHandlersForExistingClientModelCaches;
- (void)addNewCacheHandlerIfNeededGivenExistingCacheHandlersInGuardedData:(id)data clientModelId:(id)id;
- (void)initGuardedData;
- (void)updateCachedSuggestions:(id)suggestions;
@end

@implementation ATXClientModelCacheManager

- (id)cachedSuggestionsForAllClientModels
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_opt_new();
  clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__ATXClientModelCacheManager_cachedSuggestionsForAllClientModels__block_invoke;
  v6[3] = &unk_1E86A3F40;
  v6[4] = self;
  v6[5] = &v7;
  [(_PASLock *)clientModelCacheHandlersLock runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__ATXClientModelCacheManager_cachedSuggestionsForAllClientModels__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3[1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [*(a1 + 32) cachedSuggestionsForClientModel:v10];
        if (v12)
        {
          [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:v10];
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (ATXClientModelCacheManager)init
{
  v5.receiver = self;
  v5.super_class = ATXClientModelCacheManager;
  v2 = [(ATXClientModelCacheManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXClientModelCacheManager *)v2 initGuardedData];
    [(ATXClientModelCacheManager *)v3 addCacheHandlersForExistingClientModelCaches];
  }

  return v3;
}

- (void)initGuardedData
{
  v5 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v5];
  clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
  self->_clientModelCacheHandlersLock = v3;
}

- (void)addCacheHandlersForExistingClientModelCaches
{
  v24 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  cacheDirectory = [(ATXClientModelCacheManager *)self cacheDirectory];
  v5 = [defaultManager contentsOfDirectoryAtPath:cacheDirectory error:0];

  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [ATXClientModelCacheFileHandler clientModelIdFromFileName:v10];
          clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __74__ATXClientModelCacheManager_addCacheHandlersForExistingClientModelCaches__block_invoke;
          v17[3] = &unk_1E86A3F18;
          v17[4] = self;
          v18 = v12;
          v14 = v12;
          [(_PASLock *)clientModelCacheHandlersLock runWithLockAcquired:v17];

          objc_autoreleasePoolPop(v11);
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __74__ATXClientModelCacheManager_addCacheHandlersForExistingClientModelCaches__block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addNewCacheHandlerIfNeededGivenExistingCacheHandlersInGuardedData:a2 clientModelId:*(a1 + 40)];
  v3 = __atxlog_handle_blending();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Blending: Recovered suggestions for Client Model: <<%@>>", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)cachedSuggestionsForClientModel:(id)model
{
  modelCopy = model;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__ATXClientModelCacheManager_cachedSuggestionsForClientModel___block_invoke;
  v9[3] = &unk_1E86A3F68;
  v9[4] = self;
  v6 = modelCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)clientModelCacheHandlersLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__ATXClientModelCacheManager_cachedSuggestionsForClientModel___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) cacheFileHandlerForClientModel:*(a1 + 40) guardedData:v8];
  v5 = [v4 readSuggestionsFromCache];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  objc_autoreleasePoolPop(v3);
}

- (id)lastCacheUpdateDateForClientModel:(id)model
{
  modelCopy = model;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__ATXClientModelCacheManager_lastCacheUpdateDateForClientModel___block_invoke;
  v9[3] = &unk_1E86A3F68;
  v9[4] = self;
  v6 = modelCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)clientModelCacheHandlersLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__ATXClientModelCacheManager_lastCacheUpdateDateForClientModel___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) cacheFileHandlerForClientModel:*(a1 + 40) guardedData:a2];
  v4 = [v3 cacheFilePath];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v6 = [v5 attributesOfItemAtPath:v4 error:&v17];
  v7 = v17;

  if (v7)
  {
    v8 = [v7 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v10 = [v9 code];

    v11 = __atxlog_handle_blending();
    v12 = v11;
    if (v10 == 2)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *buf = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1DEFC4000, v12, OS_LOG_TYPE_DEFAULT, "There is no client model cache file for clientModelId: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __64__ATXClientModelCacheManager_lastCacheUpdateDateForClientModel___block_invoke_cold_1(v7, v12);
    }
  }

  else
  {
    v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696A350]];
    v15 = *(*(a1 + 48) + 8);
    v12 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (double)cacheAgeForClientModel:(id)model
{
  v3 = [(ATXClientModelCacheManager *)self lastCacheUpdateDateForClientModel:model];
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSinceNow];
    v6 = -v5;
  }

  else
  {
    v6 = -1.0;
  }

  return v6;
}

- (void)updateCachedSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  clientModelCacheHandlersLock = self->_clientModelCacheHandlersLock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__ATXClientModelCacheManager_updateCachedSuggestions___block_invoke;
  v7[3] = &unk_1E86A3F18;
  v8 = suggestionsCopy;
  selfCopy = self;
  v6 = suggestionsCopy;
  [(_PASLock *)clientModelCacheHandlersLock runWithLockAcquired:v7];
}

void __54__ATXClientModelCacheManager_updateCachedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) clientModelId];
  v4 = [*(a1 + 40) cacheFileHandlerForClientModel:v3 guardedData:v9];
  v5 = [*(a1 + 32) suggestions];
  if (v5 && (v6 = v5, [*(a1 + 32) suggestions], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8))
  {
    [v4 createCacheFileForClientModelCacheUpdate:*(a1 + 32)];
  }

  else
  {
    [v4 deleteCachedSuggestionsFile];
    [v9[1] removeObjectForKey:v3];
  }
}

- (id)cacheFileHandlerForClientModel:(id)model guardedData:(id)data
{
  v7 = *(data + 1);
  modelCopy = model;
  [(ATXClientModelCacheManager *)self addNewCacheHandlerIfNeededGivenExistingCacheHandlersInGuardedData:data clientModelId:modelCopy];
  v9 = [v7 objectForKeyedSubscript:modelCopy];

  return v9;
}

- (void)addNewCacheHandlerIfNeededGivenExistingCacheHandlersInGuardedData:(id)data clientModelId:(id)id
{
  dataCopy = data;
  idCopy = id;
  v7 = [dataCopy[1] objectForKeyedSubscript:idCopy];

  if (!v7)
  {
    v8 = [ATXClientModelCacheFileHandler alloc];
    cacheDirectory = [(ATXClientModelCacheManager *)self cacheDirectory];
    v10 = [(ATXClientModelCacheFileHandler *)v8 initWithCacheFileBasePath:cacheDirectory clientModelId:idCopy];
    [dataCopy[1] setObject:v10 forKeyedSubscript:idCopy];
  }
}

void __64__ATXClientModelCacheManager_lastCacheUpdateDateForClientModel___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Encountered error getting cache age: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end