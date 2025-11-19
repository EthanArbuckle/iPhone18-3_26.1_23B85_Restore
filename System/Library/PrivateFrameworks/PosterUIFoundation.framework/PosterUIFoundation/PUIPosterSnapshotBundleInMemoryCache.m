@interface PUIPosterSnapshotBundleInMemoryCache
- (PUIPosterSnapshotBundleInMemoryCache)init;
- (id)cachedSnapshotBundleSatisfyingPredicate:(id)a3;
- (void)cacheSnapshotBundle:(id)a3 forPredicate:(id)a4;
- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)a3;
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

- (void)cacheSnapshotBundle:(id)a3 forPredicate:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (!v9)
  {
    [PUIPosterSnapshotBundleInMemoryCache cacheSnapshotBundle:a2 forPredicate:?];
  }

  if (!v7)
  {
    [PUIPosterSnapshotBundleInMemoryCache cacheSnapshotBundle:a2 forPredicate:?];
  }

  v8 = [[_PUIPosterSnapshotBundleInMemoryCacheEntry alloc] initWithPredicate:v7 bundle:v9];
  [(NSMutableArray *)self->_cacheEntries addObject:v8];
}

- (id)cachedSnapshotBundleSatisfyingPredicate:(id)a3
{
  v4 = a3;
  cacheEntries = self->_cacheEntries;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__PUIPosterSnapshotBundleInMemoryCache_cachedSnapshotBundleSatisfyingPredicate___block_invoke;
  v10[3] = &unk_1E7855120;
  v11 = v4;
  v6 = v4;
  v7 = [(NSMutableArray *)cacheEntries bs_firstObjectPassingTest:v10];
  v8 = [v7 bundle];

  return v8;
}

uint64_t __80__PUIPosterSnapshotBundleInMemoryCache_cachedSnapshotBundleSatisfyingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 predicate];
  v4 = [v3 satisfiesPredicate:*(a1 + 32)];

  return v4;
}

- (void)clearCachedSnapshotBundlesSatisfyingPredicate:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v12 = [v11 predicate];
        v13 = [v12 satisfiesPredicate:v4];

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