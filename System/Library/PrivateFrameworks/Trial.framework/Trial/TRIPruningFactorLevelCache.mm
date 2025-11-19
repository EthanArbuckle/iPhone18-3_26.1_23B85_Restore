@interface TRIPruningFactorLevelCache
- (TRIPruningFactorLevelCache)initWithPruningDelaySeconds:(double)a3 loadFactorLevels:(id)a4;
- (id)factorLevelCurrentlyCachedForFactorName:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)_populateCacheForRequiredKey:(id)a3 guardedData:(id)a4;
- (void)enumerateFactorLevelsUsingBlock:(id)a3;
- (void)pruneSynchronously;
@end

@implementation TRIPruningFactorLevelCache

- (void)pruneSynchronously
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__TRIPruningFactorLevelCache_pruneSynchronously__block_invoke;
  v3[3] = &unk_27885E468;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __48__TRIPruningFactorLevelCache_pruneSynchronously__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v3[3] count];
    v9 = [v3[3] count];
    v10 = [v3[2] count];
    v13 = 138412802;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v10 + v9;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_INFO, "%@: pruning %tu prefetched factor levels of %tu total", &v13, 0x20u);
  }

  v11 = v3[3];
  v3[3] = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (TRIPruningFactorLevelCache)initWithPruningDelaySeconds:(double)a3 loadFactorLevels:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = TRIPruningFactorLevelCache;
  v7 = [(TRIPruningFactorLevelCache *)&v28 init];
  if (v7)
  {
    v8 = objc_opt_new();
    v9 = MEMORY[0x2318F2490](v6);
    v10 = v8[1];
    v8[1] = v9;

    v11 = objc_opt_new();
    v12 = v8[2];
    v8[2] = v11;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v13;

    objc_initWeak(&location, v7);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __75__TRIPruningFactorLevelCache_initWithPruningDelaySeconds_loadFactorLevels___block_invoke;
    v25 = &unk_27885E3A0;
    objc_copyWeak(&v26, &location);
    v15 = MEMORY[0x2318F2490](&v22);
    v16 = objc_alloc(MEMORY[0x277D42628]);
    v17 = dispatch_get_global_queue(9, 0);
    v18 = [v16 initWithQueue:v17 leewaySeconds:v15 operation:{1.0, v22, v23, v24, v25}];
    pruningTimer = v7->_pruningTimer;
    v7->_pruningTimer = v18;

    v20 = 0.0;
    if (a3 >= 0.0)
    {
      v20 = a3;
    }

    v7->_pruningDelaySeconds = v20;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __75__TRIPruningFactorLevelCache_initWithPruningDelaySeconds_loadFactorLevels___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pruneSynchronously];
}

- (id)objectForKeyedSubscript:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__TRIPruningFactorLevelCache_objectForKeyedSubscript___block_invoke;
  v11[3] = &unk_27885E3C8;
  v13 = &v15;
  v14 = a2;
  v11[4] = self;
  v8 = v5;
  v12 = v8;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  objc_autoreleasePoolPop(v6);

  return v9;
}

void __54__TRIPruningFactorLevelCache_objectForKeyedSubscript___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (!v4)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"guardedData->requiredLevels"}];

    v4 = v3[2];
  }

  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v9 = v3[3];
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*(a1 + 40)];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v13 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(a1 + 32);
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = *(a1 + 40);
          *buf = 138412546;
          v29 = v24;
          v30 = 2112;
          v31 = v25;
          _os_log_debug_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_DEBUG, "%@: objectForKeyedSubscript:%@ prefetch hit", buf, 0x16u);
        }

        [v3[3] setObject:0 forKeyedSubscript:*(a1 + 40)];
        [v3[2] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
        [*(*(a1 + 32) + 16) runAfterDelaySeconds:1 coalescingBehavior:*(*(a1 + 32) + 24)];
      }
    }

    else
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = *(a1 + 40);
        *buf = 138412546;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_INFO, "%@: objectForKeyedSubscript:%@ requires cache reload", buf, 0x16u);
      }

      [*(a1 + 32) _populateCacheForRequiredKey:*(a1 + 40) guardedData:v3];
      if (!v3[3])
      {
        v27 = [MEMORY[0x277CCA890] currentHandler];
        [v27 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"guardedData->prefetchedLevels"}];
      }

      v19 = [v3[2] objectForKeyedSubscript:*(a1 + 40)];
      v20 = *(*(a1 + 48) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateFactorLevelsUsingBlock:(id)a3
{
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke;
  v11[3] = &unk_27885E3F0;
  v11[5] = &v12;
  v11[6] = a2;
  v11[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v11];
  v7 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke_49;
  v9[3] = &unk_27885E418;
  v8 = v5;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(&v12, 8);
}

void __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3[2])
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"guardedData->requiredLevels"}];
  }

  v4 = v3[3];
  v5 = TRILogCategory_ClientFramework();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412290;
      v21 = v18;
      _os_log_debug_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_DEBUG, "%@: allValues prefetch hit", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_INFO, "%@: allValues requires cache reload", buf, 0xCu);
  }

  [*(a1 + 32) _populateCacheForRequiredKey:0 guardedData:v3];
  if (!v3[3])
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFactorLevelCaching.m" lineNumber:173 description:@"Invalid parameter not satisfying: %@", @"guardedData->prefetchedLevels"];
LABEL_6:
  }

  v10 = [v3[2] allValues];
  v11 = [v3[3] allValues];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *MEMORY[0x277D85DE8];
}

void __62__TRIPruningFactorLevelCache_enumerateFactorLevelsUsingBlock___block_invoke_49(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
}

- (void)_populateCacheForRequiredKey:(id)a3 guardedData:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = *(v7 + 3);
  *(v7 + 3) = v8;

  if (*(v7 + 1))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = (*(*(v7 + 1) + 16))();
    objc_autoreleasePoolPop(v10);
    if (v11)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__TRIPruningFactorLevelCache__populateCacheForRequiredKey_guardedData___block_invoke;
      v22[3] = &unk_27885E440;
      v23 = v6;
      v24 = v7;
      [v11 enumerateObjectsUsingBlock:v22];

      v12 = v23;
    }

    else
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_INFO, "%@: dropping loadFactorLevels because it failed", buf, 0xCu);
      }

      v12 = *(v7 + 1);
      *(v7 + 1) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v11 count];
    v20 = [*(v7 + 3) count];
    *buf = 138412802;
    v26 = v18;
    v27 = 2048;
    v28 = v19;
    v29 = 2048;
    v30 = v20;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_INFO, "%@: reloaded %tu factor levels (%tu prefetched)", buf, 0x20u);
  }

  if ([*(v7 + 3) count])
  {
    [(_PASSimpleCoalescingTimer *)self->_pruningTimer runAfterDelaySeconds:1 coalescingBehavior:self->_pruningDelaySeconds];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __71__TRIPruningFactorLevelCache__populateCacheForRequiredKey_guardedData___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_autoreleasePoolPush();
  if ([v12 hasFactor])
  {
    v4 = [v12 factor];
    v5 = [v4 hasName];

    if (v5)
    {
      v6 = [v12 factor];
      v7 = [v6 name];

      v8 = *(a1 + 32);
      if (v8 && ([v8 isEqualToString:v7] & 1) != 0 || (v9 = (a1 + 40), objc_msgSend(*(*(a1 + 40) + 16), "objectForKeyedSubscript:", v7), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v9 = (a1 + 40);
        v11 = 16;
      }

      else
      {
        v11 = 24;
      }

      [*(*v9 + v11) setObject:v12 forKeyedSubscript:v7];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (id)factorLevelCurrentlyCachedForFactorName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__TRIPruningFactorLevelCache_factorLevelCurrentlyCachedForFactorName___block_invoke;
  v9[3] = &unk_27885E490;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __70__TRIPruningFactorLevelCache_factorLevelCurrentlyCachedForFactorName___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9[2] objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v9[3] objectForKeyedSubscript:*(a1 + 32)];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

@end