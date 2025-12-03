@interface REDataSourceLoader
+ (id)aggregateDataSourceLoaderWithDataSourceLoaders:(id)loaders;
+ (id)dataSourceLoaderWithBlock:(id)block;
+ (id)dataSourceLoaderWithDataSources:(id)sources;
+ (id)dataSourceLoaderWithDirectories:(id)directories dataSourceKey:(id)key;
+ (id)dataSourceLoaderWithDirectory:(id)directory;
+ (id)defaultDataSourceLoader;
+ (id)disabledDataSourceLoader;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REDataSourceLoader

+ (id)disabledDataSourceLoader
{
  if (disabledDataSourceLoader_onceToken != -1)
  {
    +[REDataSourceLoader disabledDataSourceLoader];
  }

  v3 = disabledDataSourceLoader_DisabledLoader;

  return v3;
}

uint64_t __46__REDataSourceLoader_disabledDataSourceLoader__block_invoke()
{
  v0 = objc_opt_new();
  v1 = disabledDataSourceLoader_DisabledLoader;
  disabledDataSourceLoader_DisabledLoader = v0;

  v2 = objc_alloc_init(REClassLoader);
  v3 = *(disabledDataSourceLoader_DisabledLoader + 8);
  *(disabledDataSourceLoader_DisabledLoader + 8) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultDataSourceLoader
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__REDataSourceLoader_defaultDataSourceLoader__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultDataSourceLoader_onceToken != -1)
  {
    dispatch_once(&defaultDataSourceLoader_onceToken, block);
  }

  v2 = defaultDataSourceLoader_BundleLoader;

  return v2;
}

void __45__REDataSourceLoader_defaultDataSourceLoader__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 builtInPlugInsURL];

  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 bundleURL];
  v7 = [v6 URLByDeletingPathExtension];

  v21 = v7;
  v22 = v4;
  v24 = v2;
  v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{v2, v4, v7, 0}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(&v26 + 1) + 8 * v12)];
        v14 = [v13 URLByAppendingPathComponent:@"RelevanceEngine"];
        v15 = [v14 URLByAppendingPathComponent:@"DataSources"];

        [v8 addObject:v15];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  v16 = *(a1 + 32);
  v17 = [v8 copy];
  v18 = [v16 dataSourceLoaderWithDirectories:v17];
  v19 = defaultDataSourceLoader_BundleLoader;
  defaultDataSourceLoader_BundleLoader = v18;

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)dataSourceLoaderWithDirectory:(id)directory
{
  v10[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  v5 = directoryCopy;
  if (directoryCopy)
  {
    v10[0] = directoryCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [self dataSourceLoaderWithDirectories:v6];
  }

  else
  {
    v7 = [self dataSourceLoaderWithDirectories:MEMORY[0x277CBEBF8]];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)dataSourceLoaderWithDirectories:(id)directories dataSourceKey:(id)key
{
  keyCopy = key;
  directoriesCopy = directories;
  v7 = objc_opt_new();
  v8 = +[REDataSourceLoaderConfiguration sharedInstance];
  v9 = [REClassLoader loaderWithDirectories:directoriesCopy dataSourceKey:keyCopy configuration:v8];

  v10 = v7[1];
  v7[1] = v9;

  return v7;
}

+ (id)dataSourceLoaderWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  v5 = +[REDataSourceLoaderConfiguration sharedInstance];
  v6 = [REClassLoader loaderWithBlock:blockCopy configuration:v5];

  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

+ (id)dataSourceLoaderWithDataSources:(id)sources
{
  sourcesCopy = sources;
  v4 = objc_opt_new();
  v5 = +[REDataSourceLoaderConfiguration sharedInstance];
  v6 = [REClassLoader loaderWithObjects:sourcesCopy configuration:v5];

  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

+ (id)aggregateDataSourceLoaderWithDataSourceLoaders:(id)loaders
{
  v20 = *MEMORY[0x277D85DE8];
  loadersCopy = loaders;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = loadersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(*(&v15 + 1) + 8 * i) + 8))
        {
          [orderedSet addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = objc_opt_new();
  v11 = [REClassLoader groupLoaderWithLoaders:orderedSet];
  v12 = v10[1];
  v10[1] = v11;

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_loader);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      loader = self->_loader;
      v6 = equalCopy->_loader;
      v7 = loader;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(REClassLoader *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end