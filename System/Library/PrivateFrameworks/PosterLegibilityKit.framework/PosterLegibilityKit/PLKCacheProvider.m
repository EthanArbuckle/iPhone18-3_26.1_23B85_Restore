@interface PLKCacheProvider
- (PLKCacheProvider)init;
- (PLKCacheProvider)initWithContentCache:(id)a3 legibilityCache:(id)a4;
- (PLKCacheProvider)initWithContentCacheIdentifier:(id)a3 legibilityCacheIdentifier:(id)a4 pathProvider:(id)a5;
@end

@implementation PLKCacheProvider

- (PLKCacheProvider)initWithContentCacheIdentifier:(id)a3 legibilityCacheIdentifier:(id)a4 pathProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [PLKCacheProvider initWithContentCacheIdentifier:a2 legibilityCacheIdentifier:? pathProvider:?];
  }

  if (!v10)
  {
    [PLKCacheProvider initWithContentCacheIdentifier:a2 legibilityCacheIdentifier:? pathProvider:?];
  }

  v12 = v11;
  if ([v9 isEqualToString:v10])
  {
    [PLKCacheProvider initWithContentCacheIdentifier:a2 legibilityCacheIdentifier:? pathProvider:?];
  }

  v24.receiver = self;
  v24.super_class = PLKCacheProvider;
  v13 = [(PLKCacheProvider *)&v24 init];
  if (v13)
  {
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CF0CA0] pathProviderForCurrentContainer];
    }

    defaultPathProvider = v13->_defaultPathProvider;
    v13->_defaultPathProvider = v14;

    v16 = [v9 copy];
    contentCacheIdentifier = v13->_contentCacheIdentifier;
    v13->_contentCacheIdentifier = v16;

    v18 = [v10 copy];
    legibilityCacheIdentifier = v13->_legibilityCacheIdentifier;
    v13->_legibilityCacheIdentifier = v18;

    v20 = [v9 hash];
    v21 = [v10 hash];
    v22 = 0xBF58476D1CE4E5B9 * (v21 ^ v20 ^ ((v21 ^ v20) >> 30));
    v13->_cachedHash = (0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) ^ ((0x94D049BB133111EBLL * (v22 ^ (v22 >> 27))) >> 31);
  }

  return v13;
}

- (PLKCacheProvider)initWithContentCache:(id)a3 legibilityCache:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [PLKCacheProvider initWithContentCache:a2 legibilityCache:?];
  }

  v10 = v9;
  if (!v9)
  {
    [PLKCacheProvider initWithContentCache:a2 legibilityCache:?];
  }

  if (v9 == v8)
  {
    [PLKCacheProvider initWithContentCache:a2 legibilityCache:?];
  }

  v17.receiver = self;
  v17.super_class = PLKCacheProvider;
  v11 = [(PLKCacheProvider *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentCache, a3);
    objc_storeStrong(&v12->_legibilityCache, a4);
    v13 = [MEMORY[0x277CF0C40] builder];
    v14 = [v13 appendObject:v8];
    v15 = [v13 appendObject:v10];
    v12->_cachedHash = [v13 hash];
  }

  return v12;
}

- (PLKCacheProvider)init
{
  [(PLKCacheProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)initWithContentCacheIdentifier:(char *)a1 legibilityCacheIdentifier:pathProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"__objc_no == [contentCacheIdentifier isEqualToString:legibilityCacheIdentifier]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentCacheIdentifier:(char *)a1 legibilityCacheIdentifier:pathProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"legibilityCacheIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentCacheIdentifier:(char *)a1 legibilityCacheIdentifier:pathProvider:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"contentCacheIdentifier", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentCache:(char *)a1 legibilityCache:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"legibilityCache != contentCache", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentCache:(char *)a1 legibilityCache:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"legibilityCache", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithContentCache:(char *)a1 legibilityCache:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"contentCache", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end