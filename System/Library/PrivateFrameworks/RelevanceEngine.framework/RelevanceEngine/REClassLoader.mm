@interface REClassLoader
+ (REClassLoader)loaderWithBlock:(id)block configuration:(id)configuration;
+ (REClassLoader)loaderWithDirectories:(id)directories dataSourceKey:(id)key configuration:(id)configuration;
+ (REClassLoader)loaderWithObjects:(id)objects configuration:(id)configuration;
+ (id)groupLoaderWithLoaders:(id)loaders;
- (REClassLoader)init;
- (REClassLoader)initWithConfiguration:(id)configuration;
- (void)enumerateBundleConfigurations:(id)configurations;
- (void)enumerateClassesWithBlock:(id)block;
- (void)prewarm;
@end

@implementation REClassLoader

- (REClassLoader)init
{
  v3.receiver = self;
  v3.super_class = REClassLoader;
  result = [(REClassLoader *)&v3 init];
  if (result)
  {
    result->_loadingLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (REClassLoader)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [(REClassLoader *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

+ (REClassLoader)loaderWithObjects:(id)objects configuration:(id)configuration
{
  configurationCopy = configuration;
  objectsCopy = objects;
  v7 = [[REObjectClassLoader alloc] initWithObjects:objectsCopy configuration:configurationCopy];

  return v7;
}

+ (REClassLoader)loaderWithBlock:(id)block configuration:(id)configuration
{
  configurationCopy = configuration;
  blockCopy = block;
  v7 = [[REBlockClassLoader alloc] initWithBlock:blockCopy configuration:configurationCopy];

  return v7;
}

+ (REClassLoader)loaderWithDirectories:(id)directories dataSourceKey:(id)key configuration:(id)configuration
{
  configurationCopy = configuration;
  keyCopy = key;
  directoriesCopy = directories;
  v10 = [[REDirectoryClassLoader alloc] initWithDirectories:directoriesCopy dataSourceKey:keyCopy configuration:configurationCopy];

  return v10;
}

+ (id)groupLoaderWithLoaders:(id)loaders
{
  loadersCopy = loaders;
  v4 = [[REGroupClassLoader alloc] initWithLoaders:loadersCopy];

  return v4;
}

- (void)prewarm
{
  [(REClassLoader *)self enumerateObjectsWithBlock:&__block_literal_global_14];
  [(REClassLoader *)self enumerateBundleConfigurations:&__block_literal_global_6];

  [(REClassLoader *)self enumerateClassesWithBlock:&__block_literal_global_9];
}

- (void)enumerateClassesWithBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    os_unfair_lock_lock(&self->_loadingLock);
    if (!self->_cachedDataSources)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      desiredClassForLoader = [(REClassLoaderConfiguration *)self->_configuration desiredClassForLoader];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __43__REClassLoader_enumerateClassesWithBlock___block_invoke;
      v20[3] = &unk_2785FA888;
      v21 = v5;
      v22 = desiredClassForLoader;
      v7 = v5;
      [(REClassLoader *)self _enumerateClassesWithBlock:v20];
      v8 = [v7 copy];
      cachedDataSources = self->_cachedDataSources;
      self->_cachedDataSources = v8;
    }

    os_unfair_lock_unlock(&self->_loadingLock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->_cachedDataSources;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v14++));
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v23 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __43__REClassLoader_enumerateClassesWithBlock___block_invoke(uint64_t a1, Class aClass)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromClass(aClass);
  if (*(a1 + 40) && ([(objc_class *)aClass isSubclassOfClass:?]& 1) == 0)
  {
    v5 = RELogForDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__REClassLoader_enumerateClassesWithBlock___block_invoke_cold_1(v4, (a1 + 40), v5);
    }

    goto LABEL_9;
  }

  if ([*(a1 + 32) containsObject:aClass])
  {
    v5 = RELogForDomain(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_INFO, "Skipping %@ - Already loaded", &v7, 0xCu);
    }

LABEL_9:

    goto LABEL_10;
  }

  [*(a1 + 32) addObject:aClass];
LABEL_10:

  v6 = *MEMORY[0x277D85DE8];
}

- (void)enumerateBundleConfigurations:(id)configurations
{
  v22 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  if (configurationsCopy)
  {
    os_unfair_lock_lock(&self->_loadingLock);
    if (!self->_cachedBundleConfigurations)
    {
      array = [MEMORY[0x277CBEB18] array];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __47__REClassLoader_enumerateBundleConfigurations___block_invoke;
      v19[3] = &unk_2785FA8B0;
      v20 = array;
      v6 = array;
      [(REClassLoader *)self _enumerateBundleConfigurations:v19];
      v7 = [v6 copy];
      cachedBundleConfigurations = self->_cachedBundleConfigurations;
      self->_cachedBundleConfigurations = v7;
    }

    os_unfair_lock_unlock(&self->_loadingLock);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_cachedBundleConfigurations;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          configurationsCopy[2](configurationsCopy, *(*(&v15 + 1) + 8 * v13++));
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __43__REClassLoader_enumerateClassesWithBlock___block_invoke_cold_1(uint64_t a1, Class *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(*a2);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_22859F000, a3, OS_LOG_TYPE_ERROR, "Skipping %@ - Unsupported class, expecting %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end