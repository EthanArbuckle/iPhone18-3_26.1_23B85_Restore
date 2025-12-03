@interface PLGraphCache
+ (int64_t)_fetchNextAvailableExternalIdentifierInContext:(id)context forIdentifierEntity:(unint64_t)entity;
- (PLGraphCache)init;
- (id)_existingLabelWithID:(id)d inContext:(id)context;
- (id)_lock_objectIDForLabelWithCode:(int)code inContext:(id)context;
- (id)cachedObjectIDForLabelWithCode:(int)code;
- (id)labelWithCode:(int)code inContext:(id)context;
- (id)objectIDForLabelWithCode:(int)code inContext:(id)context;
- (int64_t)takeNextAvailableExternalIdentifierInContext:(id)context forIdentifierEntity:(unint64_t)entity;
- (unint64_t)countOfCachedObjectIDs;
- (void)_lock_addLabelToCache:(id)cache;
- (void)_lock_clearCache;
- (void)_lock_fetchAndCacheWithLabelCode:(int)code inContext:(id)context;
- (void)_lock_populateCacheIfNecessaryWithContext:(id)context;
- (void)_lock_populateCacheWithAllLabelsInContext:(id)context;
- (void)clearCache;
@end

@implementation PLGraphCache

- (int64_t)takeNextAvailableExternalIdentifierInContext:(id)context forIdentifierEntity:(unint64_t)entity
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x8000000000000000;
  v10 = contextCopy;
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

- (void)_lock_addLabelToCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  objectID = [cacheCopy objectID];
  cacheLock_labelIDsByCode = self->_cacheLock_labelIDsByCode;
  v6 = MEMORY[0x1E696AD98];
  code = [cacheCopy code];

  v8 = [v6 numberWithInt:code];
  [(NSMutableDictionary *)cacheLock_labelIDsByCode setObject:objectID forKeyedSubscript:v8];
}

- (void)_lock_populateCacheWithAllLabelsInContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  if (self->_cacheLock_cacheIsPopulated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"!_cacheLock_cacheIsPopulated"}];
  }

  v6 = +[PLGraphLabel fetchRequest];
  [v6 setIncludesPendingChanges:0];
  v25 = 0;
  v7 = [contextCopy executeFetchRequest:v6 error:&v25];
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
      logPrefix = [(PLGraphCache *)self logPrefix];
      v16 = [v9 count];
      *buf = 138543618;
      v28 = logPrefix;
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
      logPrefix = [(PLGraphCache *)self logPrefix];
      *buf = 138543618;
      v28 = logPrefix;
      v29 = 2112;
      v30 = v8;
      v17 = "%{public}@: Error fetching labels: %@";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_15;
    }
  }
}

- (void)_lock_populateCacheIfNecessaryWithContext:(id)context
{
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  if (!self->_cacheLock_cacheIsPopulated)
  {
    v4 = objc_autoreleasePoolPush();
    [(PLGraphCache *)self _lock_populateCacheWithAllLabelsInContext:contextCopy];
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

- (id)cachedObjectIDForLabelWithCode:(int)code
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

- (void)_lock_fetchAndCacheWithLabelCode:(int)code inContext:(id)context
{
  v4 = *&code;
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  v7 = [PLGraphLabel fetchBuiltInLabelWithCode:v4 inContext:contextCopy];

  if (v7)
  {
    [(PLGraphCache *)self _lock_addLabelToCache:v7];
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      logPrefix = [(PLGraphCache *)self logPrefix];
      v10 = 138543874;
      v11 = logPrefix;
      v12 = 1024;
      v13 = v4;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%{public}@: Added label with code %u to cache: %@", &v10, 0x1Cu);
    }
  }
}

- (id)_lock_objectIDForLabelWithCode:(int)code inContext:(id)context
{
  v4 = *&code;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  [(PLGraphCache *)self _lock_populateCacheIfNecessaryWithContext:contextCopy];
  cacheLock_labelIDsByCode = self->_cacheLock_labelIDsByCode;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)cacheLock_labelIDsByCode objectForKeyedSubscript:v8];

  if (!v9)
  {
    [(PLGraphCache *)self _lock_fetchAndCacheWithLabelCode:v4 inContext:contextCopy];
    v10 = self->_cacheLock_labelIDsByCode;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v9 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];
  }

  return v9;
}

- (id)objectIDForLabelWithCode:(int)code inContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v7 = contextCopy;
  v8 = PLResultWithUnfairLock();

  return v8;
}

- (id)_existingLabelWithID:(id)d inContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12 = 0;
  v7 = [context existingObjectWithID:dCopy error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      logPrefix = [(PLGraphCache *)self logPrefix];
      *buf = 138543874;
      v14 = logPrefix;
      v15 = 2114;
      v16 = dCopy;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Error getting label with ID %{public}@: %@", buf, 0x20u);
    }
  }

  return v7;
}

- (id)labelWithCode:(int)code inContext:(id)context
{
  v4 = *&code;
  contextCopy = context;
  v7 = [(PLGraphCache *)self objectIDForLabelWithCode:v4 inContext:contextCopy];
  if (v7)
  {
    v8 = [(PLGraphCache *)self _existingLabelWithID:v7 inContext:contextCopy];
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
    logPrefix = [(PLGraphCache *)self logPrefix];
    *buf = 138543362;
    v6 = logPrefix;
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

+ (int64_t)_fetchNextAvailableExternalIdentifierInContext:(id)context forIdentifierEntity:(unint64_t)entity
{
  v29[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"context"}];
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
  if (entity == 1)
  {
    v13 = PLGraphEdge;
    goto LABEL_7;
  }

  if (!entity)
  {
    v13 = PLGraphNode;
LABEL_7:
    fetchRequest = [(__objc2_class *)v13 fetchRequest];
    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphCache.m" lineNumber:227 description:{@"unexpected PLNextExtIdentifierEntity value: %ld", entity}];

  fetchRequest = 0;
LABEL_9:
  [fetchRequest setResultType:2];
  v28 = v12;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [fetchRequest setPropertiesToFetch:v16];

  v25 = 0;
  v17 = [contextCopy executeFetchRequest:fetchRequest error:&v25];
  v18 = v25;
  if (v17)
  {
    firstObject = [v17 firstObject];
    v20 = [firstObject objectForKeyedSubscript:@"maxExternalIdentifier"];
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
    firstObject = PLBackendGetLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_19BF1F000, firstObject, OS_LOG_TYPE_ERROR, "Failed to fetch max externalIdentifier with error: %@", buf, 0xCu);
    }

    v22 = 0x8000000000000000;
  }

  return v22;
}

@end