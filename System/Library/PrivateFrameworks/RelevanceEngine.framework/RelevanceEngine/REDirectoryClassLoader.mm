@interface REDirectoryClassLoader
- (BOOL)isEqual:(id)a3;
- (REDirectoryClassLoader)initWithDirectories:(id)a3 dataSourceKey:(id)a4 configuration:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_enumerateBundleConfigurations:(id)a3;
- (void)_enumerateBundles:(id)a3;
- (void)_enumerateClassesWithBlock:(id)a3;
@end

@implementation REDirectoryClassLoader

- (REDirectoryClassLoader)initWithDirectories:(id)a3 dataSourceKey:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = REDirectoryClassLoader;
  v10 = [(REClassLoader *)&v16 initWithConfiguration:a5];
  if (v10)
  {
    v11 = [v8 copy];
    urls = v10->_urls;
    v10->_urls = v11;

    v13 = [v9 copy];
    key = v10->_key;
    v10->_key = v13;
  }

  return v10;
}

- (void)_enumerateBundles:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  urls = self->_urls;
  if (urls)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = urls;
    v21 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v20 = *v28;
      do
      {
        v6 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v7 = MEMORY[0x277CCA8D8];
          v8 = [*(*(&v27 + 1) + 8 * v6) path];
          v9 = [v7 bundleWithPath:v8];

          v22 = v9;
          v10 = [v9 pathsForResourcesOfType:@"bundle" inDirectory:@"."];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v24;
            do
            {
              v14 = 0;
              do
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v23 + 1) + 8 * v14);
                v16 = +[REBundleCache sharedInstance];
                v17 = [v16 bundleAtPath:v15];

                if (v17)
                {
                  v4[2](v4, v17);
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v12);
          }

          ++v6;
        }

        while (v6 != v21);
        v21 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateClassesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(REClassLoader *)self configuration];
  v6 = [v5 desiredClassForLoader];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__REDirectoryClassLoader__enumerateClassesWithBlock___block_invoke;
  v9[3] = &unk_2785FA900;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v13 = v6;
  v7 = v4;
  v8 = v5;
  [(REDirectoryClassLoader *)self _enumerateBundles:v9];
}

void __53__REDirectoryClassLoader__enumerateClassesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 principalClass];
  if (v4)
  {
    v5 = v4;
    if ([v4 isSubclassOfClass:*(a1 + 56)])
    {
      v6 = *(a1 + 32);
      if ((objc_opt_respondsToSelector() & 1) == 0 || [*(a1 + 32) shouldLoadBundleClass:v5 forKey:*(*(a1 + 40) + 48)])
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v8 = REBundleConfiguraitonFromBundle(v3);
      if (v8)
      {
        v9 = [*(a1 + 40) configuration];
        v10 = [v9 desiredClassFromBundle:v8 forKey:*(*(a1 + 40) + 48)];

        if (v10)
        {
          (*(*(a1 + 48) + 16))();
        }
      }
    }
  }

  else
  {
    v7 = RELogForDomain(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__REDirectoryClassLoader__enumerateClassesWithBlock___block_invoke_cold_1(v3, v7);
    }
  }
}

- (void)_enumerateBundleConfigurations:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__REDirectoryClassLoader__enumerateBundleConfigurations___block_invoke;
  v6[3] = &unk_2785FA928;
  v7 = v4;
  v5 = v4;
  [(REDirectoryClassLoader *)self _enumerateBundles:v6];
}

uint64_t __57__REDirectoryClassLoader__enumerateBundleConfigurations___block_invoke(uint64_t a1, void *a2)
{
  v3 = REBundleConfiguraitonFromBundle(a2);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 32) + 16))();
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(REClassLoader *)self configuration];
  v6 = [v4 initWithConfiguration:v5];

  objc_storeStrong(v6 + 5, self->_urls);
  objc_storeStrong(v6 + 6, self->_key);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      urls = v5->_urls;
      v7 = self->_urls;
      v8 = v7;
      if (v7 == urls)
      {
      }

      else
      {
        v9 = [(NSArray *)v7 isEqual:urls];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      key = self->_key;
      v12 = v5->_urls;
      v13 = key;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

void __53__REDirectoryClassLoader__enumerateClassesWithBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "No principal class provided for bundle: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end