@interface PLGraphCache
+ (int64_t)_fetchNextAvailableExternalIdentifierInContext:(id)a3 forIdentifierEntity:(unint64_t)a4;
- (PLGraphCache)init;
- (id)_existingLabelWithID:(id)a3 inContext:(id)a4;
- (id)_lock_objectIDForLabelWithCode:(int)a3 inContext:(id)a4;
- (id)cachedObjectIDForLabelWithCode:(int)a3;
- (id)labelWithCode:(int)a3 inContext:(id)a4;
- (id)objectIDForLabelWithCode:(int)a3 inContext:(id)a4;
- (int64_t)takeNextAvailableExternalIdentifierInContext:(id)a3 forIdentifierEntity:(unint64_t)a4;
- (unint64_t)countOfCachedObjectIDs;
- (void)_lock_addLabelToCache:(id)a3;
- (void)_lock_clearCache;
- (void)_lock_fetchAndCacheWithLabelCode:(int)a3 inContext:(id)a4;
- (void)_lock_populateCacheIfNecessaryWithContext:(id)a3;
- (void)_lock_populateCacheWithAllLabelsInContext:(id)a3;
- (void)clearCache;
@end

@implementation PLGraphCache

- (int64_t)takeNextAvailableExternalIdentifierInContext:(id)a3 forIdentifierEntity:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x8000000000000000;
  v10 = v6;
  PLRunWithUnfairLock();
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

void __81__PLGraphCache_takeNextAvailableExternalIdentifierInContext_forIdentifierEntity___block_invoke(void *a1)
{
  v2 = a1[7];
  if (!v2)
  {
    v3 = 32;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 40;
LABEL_5:
    v4 = a1[4];
    v5 = *(v4 + v3);
    if (v5 == 0x8000000000000000)
    {
      v6 = [objc_opt_class() _fetchNextAvailableExternalIdentifierInContext:a1[5] forIdentifierEntity:a1[7]];
    }

    else
    {
      v6 = v5 + 1;
    }

    *(v4 + v3) = v6;
    *(*(a1[6] + 8) + 24) = v6;
    return;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a1[8] object:a1[4] file:@"PLGraphCache.m" lineNumber:271 description:{@"unexpected PLNextExtIdentifierEntity value: %ld", a1[7]}];
}

- (void)_lock_addLabelToCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  v9 = [v4 objectID];
  cacheLock_labelIDsByCode = self->_cacheLock_labelIDsByCode;
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 code];

  v8 = [v6 numberWithInt:v7];
  [(NSMutableDictionary *)cacheLock_labelIDsByCode setObject:v9 forKeyedSubscript:v8];
}

- (void)_lock_populateCacheWithAllLabelsInContext:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  if (self->_cacheLock_cacheIsPopulated)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"!_cacheLock_cacheIsPopulated"}];
  }

  v6 = +[PLGraphLabel fetchRequest];
  [v6 setIncludesPendingChanges:0];
  v25 = 0;
  v7 = [v5 executeFetchRequest:v6 error:&v25];
  v8 = v25;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PLGraphCache *)self _lock_addLabelToCache:*(*(&v21 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    self->_cacheLock_cacheIsPopulated = 1;
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PLGraphCache *)self logPrefix];
      v16 = [v9 count];
      *buf = 138543618;
      v28 = v15;
      v29 = 2048;
      v30 = v16;
      v17 = "%{public}@: Populated cache with %zu labels";
      v18 = v14;
      v19 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
      _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, 0x16u);
    }
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(PLGraphCache *)self logPrefix];
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v8;
      v17 = "%{public}@: Error fetching labels: %@";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }
}

- (void)_lock_populateCacheIfNecessaryWithContext:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  if (!self->_cacheLock_cacheIsPopulated)
  {
    v4 = objc_autoreleasePoolPush();
    [(PLGraphCache *)self _lock_populateCacheWithAllLabelsInContext:v5];
    objc_autoreleasePoolPop(v4);
  }
}

- (unint64_t)countOfCachedObjectIDs
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __38__PLGraphCache_countOfCachedObjectIDs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)cachedObjectIDForLabelWithCode:(int)a3
{
  v3 = PLResultWithUnfairLock();

  return v3;
}

id __47__PLGraphCache_cachedObjectIDForLabelWithCode___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

- (void)_lock_fetchAndCacheWithLabelCode:(int)a3 inContext:(id)a4
{
  v4 = *&a3;
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  v7 = [PLGraphLabel fetchBuiltInLabelWithCode:v4 inContext:v6];

  if (v7)
  {
    [(PLGraphCache *)self _lock_addLabelToCache:v7];
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(PLGraphCache *)self logPrefix];
      v10 = 138543874;
      v11 = v9;
      v12 = 1024;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%{public}@: Added label with code %u to cache: %@", &v10, 0x1Cu);
    }
  }
}

- (id)_lock_objectIDForLabelWithCode:(int)a3 inContext:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  [(PLGraphCache *)self _lock_populateCacheIfNecessaryWithContext:v6];
  cacheLock_labelIDsByCode = self->_cacheLock_labelIDsByCode;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)cacheLock_labelIDsByCode objectForKeyedSubscript:v8];

  if (!v9)
  {
    [(PLGraphCache *)self _lock_fetchAndCacheWithLabelCode:v4 inContext:v6];
    v10 = self->_cacheLock_labelIDsByCode;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v9 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
  }

  return v9;
}

- (id)objectIDForLabelWithCode:(int)a3 inContext:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v7 = v6;
  v8 = PLResultWithUnfairLock();

  return v8;
}

- (id)_existingLabelWithID:(id)a3 inContext:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v12 = 0;
  v7 = [a4 existingObjectWithID:v6 error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PLGraphCache *)self logPrefix];
      *buf = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error getting label with ID %{public}@: %@", buf, 0x20u);
    }
  }

  return v7;
}

- (id)labelWithCode:(int)a3 inContext:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(PLGraphCache *)self objectIDForLabelWithCode:v4 inContext:v6];
  if (v7)
  {
    v8 = [(PLGraphCache *)self _existingLabelWithID:v7 inContext:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_lock_clearCache
{
  os_unfair_lock_assert_owner(&self->_cacheLock);
  self->_cacheLock_cacheIsPopulated = 0;
  cacheLock_labelIDsByCode = self->_cacheLock_labelIDsByCode;

  [(NSMutableDictionary *)cacheLock_labelIDsByCode removeAllObjects];
}

- (void)clearCache
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(PLGraphCache *)self logPrefix];
    *buf = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "%{public}@: Clearing cache", buf, 0xCu);
  }

  PLRunWithUnfairLock();
}

- (PLGraphCache)init
{
  v10.receiver = self;
  v10.super_class = PLGraphCache;
  v2 = [(PLGraphCache *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v2->_cacheLock_cacheIsPopulated = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cacheLock_labelIDsByCode = v3->_cacheLock_labelIDsByCode;
    v3->_cacheLock_labelIDsByCode = v4;

    v3->_idLock._os_unfair_lock_opaque = 0;
    *&v3->_idLock_nextNodeExtIdentifier = vnegq_f64(0);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLGraphCache-%p", v3];
    logPrefix = v3->_logPrefix;
    v3->_logPrefix = v6;

    v8 = v3;
  }

  return v3;
}

+ (int64_t)_fetchNextAvailableExternalIdentifierInContext:(id)a3 forIdentifierEntity:(unint64_t)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PLGraphCache.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"externalIdentifier"];
  v9 = MEMORY[0x1E696ABC8];
  v29[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v11 = [v9 expressionForFunction:@"max:" arguments:v10];

  v12 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v12 setName:@"maxExternalIdentifier"];
  [v12 setExpression:v11];
  [v12 setExpressionResultType:300];
  if (a4 == 1)
  {
    v13 = PLGraphEdge;
    goto LABEL_7;
  }

  if (!a4)
  {
    v13 = PLGraphNode;
LABEL_7:
    v14 = [(__objc2_class *)v13 fetchRequest];
    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PLGraphCache.m" lineNumber:227 description:{@"unexpected PLNextExtIdentifierEntity value: %ld", a4}];

  v14 = 0;
LABEL_9:
  [v14 setResultType:2];
  v28 = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v14 setPropertiesToFetch:v16];

  v25 = 0;
  v17 = [v7 executeFetchRequest:v14 error:&v25];
  v18 = v25;
  if (v17)
  {
    v19 = [v17 firstObject];
    v20 = [v19 objectForKeyedSubscript:@"maxExternalIdentifier"];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 longLongValue] + 1;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch max externalIdentifier with error: %@", buf, 0xCu);
    }

    v22 = 0x8000000000000000;
  }

  return v22;
}

@end