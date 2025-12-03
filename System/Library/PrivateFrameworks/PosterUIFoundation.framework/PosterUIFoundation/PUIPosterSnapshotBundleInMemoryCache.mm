@interface PUIPosterSnapshotBundleInMemoryCache
- (PUIPosterSnapshotBundleInMemoryCache)init;
- (id)cachedSnapshotBundleSatisfyingPredicate:(id)predicate;
- (void)cacheSnapshotBundle:(id)bundle forPredicate:(id)predicate;
- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)predicate;
@end

@implementation PUIPosterSnapshotBundleInMemoryCache

- (PUIPosterSnapshotBundleInMemoryCache)init
{
  v6.receiver = self;
  v6.super_class = PUIPosterSnapshotBundleInMemoryCache;
  v2 = [(PUIPosterSnapshotBundleInMemoryCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cacheEntries = v2->_cacheEntries;
    v2->_cacheEntries = v3;
  }

  return v2;
}

- (void)cacheSnapshotBundle:(id)bundle forPredicate:(id)predicate
{
  bundleCopy = bundle;
  predicateCopy = predicate;
  if (!bundleCopy)
  {
    [PUIPosterSnapshotBundleInMemoryCache cacheSnapshotBundle:a2 forPredicate:?];
  }

  if (!predicateCopy)
  {
    [PUIPosterSnapshotBundleInMemoryCache cacheSnapshotBundle:a2 forPredicate:?];
  }

  v8 = [[_PUIPosterSnapshotBundleInMemoryCacheEntry alloc] initWithPredicate:predicateCopy bundle:bundleCopy];
  [(NSMutableArray *)self->_cacheEntries addObject:v8];
}

- (id)cachedSnapshotBundleSatisfyingPredicate:(id)predicate
{
  predicateCopy = predicate;
  cacheEntries = self->_cacheEntries;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PUIPosterSnapshotBundleInMemoryCache_cachedSnapshotBundleSatisfyingPredicate___block_invoke;
  v10[3] = &unk_1E7855120;
  v11 = predicateCopy;
  v6 = predicateCopy;
  v7 = [(NSMutableArray *)cacheEntries bs_firstObjectPassingTest:v10];
  bundle = [v7 bundle];

  return bundle;
}

uint64_t __80__PUIPosterSnapshotBundleInMemoryCache_cachedSnapshotBundleSatisfyingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predicate];
  v4 = [v3 satisfiesPredicate:*(a1 + 32)];

  return v4;
}

- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)predicate
{
  v29 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_cacheEntries;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        predicate = [v11 predicate];
        v13 = [predicate satisfiesPredicate:predicateCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMutableArray *)self->_cacheEntries removeObject:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)cacheSnapshotBundle:(char *)a1 forPredicate:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"predicate", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)cacheSnapshotBundle:(char *)a1 forPredicate:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"bundle", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end