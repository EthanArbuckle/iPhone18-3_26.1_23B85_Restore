@interface RERelevanceProviderManagerLoader
+ (RERelevanceProviderManagerLoader)relevanceProviderManagerLoaderWithBlock:(id)a3;
+ (RERelevanceProviderManagerLoader)relevanceProviderManagerLoaderWithDirectories:(id)a3 relevanceProviderManagerKey:(id)a4;
+ (id)aggregateRelevanceProviderManagerLoaderWithrelevanceProviderManagerLoaders:(id)a3;
+ (id)disabledRelevanceProviderManagerLoader;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RERelevanceProviderManagerLoader

+ (id)disabledRelevanceProviderManagerLoader
{
  if (disabledRelevanceProviderManagerLoader_onceToken != -1)
  {
    +[RERelevanceProviderManagerLoader disabledRelevanceProviderManagerLoader];
  }

  v3 = disabledRelevanceProviderManagerLoader_DisabledLoader;

  return v3;
}

uint64_t __74__RERelevanceProviderManagerLoader_disabledRelevanceProviderManagerLoader__block_invoke()
{
  v0 = objc_opt_new();
  v1 = disabledRelevanceProviderManagerLoader_DisabledLoader;
  disabledRelevanceProviderManagerLoader_DisabledLoader = v0;

  v2 = objc_alloc_init(REClassLoader);
  v3 = *(disabledRelevanceProviderManagerLoader_DisabledLoader + 8);
  *(disabledRelevanceProviderManagerLoader_DisabledLoader + 8) = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (RERelevanceProviderManagerLoader)relevanceProviderManagerLoaderWithDirectories:(id)a3 relevanceProviderManagerKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = +[RERelevanceProviderManagerLoaderConfiguration sharedInstance];
  v9 = [REClassLoader loaderWithDirectories:v6 dataSourceKey:v5 configuration:v8];

  v10 = v7[1];
  v7[1] = v9;

  return v7;
}

+ (RERelevanceProviderManagerLoader)relevanceProviderManagerLoaderWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[RERelevanceProviderManagerLoaderConfiguration sharedInstance];
  v6 = [REClassLoader loaderWithBlock:v3 configuration:v5];

  v7 = v4[1];
  v4[1] = v6;

  return v4;
}

+ (id)aggregateRelevanceProviderManagerLoaderWithrelevanceProviderManagerLoaders:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB40] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v10 = objc_opt_new();
  v11 = [REClassLoader groupLoaderWithLoaders:v4];
  v12 = v10[1];
  v10[1] = v11;

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_loader);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      loader = self->_loader;
      v6 = v4->_loader;
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