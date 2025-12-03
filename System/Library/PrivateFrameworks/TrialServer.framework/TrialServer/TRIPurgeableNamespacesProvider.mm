@interface TRIPurgeableNamespacesProvider
- (TRIPurgeableNamespacesProvider)initWithPaths:(id)paths clientNamespaceMetadataStorage:(id)storage;
- (void)partitionPurgeableNamespacesForPurgeabilityLevel:(int)level namespaceNamesPurgeableAtNamespaceLevel:(id *)namespaceLevel eagerPurgeableFactorsByNamespaceName:(id *)name cacheDeleteableFactorsByNamespaceName:(id *)namespaceName;
@end

@implementation TRIPurgeableNamespacesProvider

- (TRIPurgeableNamespacesProvider)initWithPaths:(id)paths clientNamespaceMetadataStorage:(id)storage
{
  pathsCopy = paths;
  storageCopy = storage;
  v12.receiver = self;
  v12.super_class = TRIPurgeableNamespacesProvider;
  v9 = [(TRIPurgeableNamespacesProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_clientNamespaceMetadataStorage, storage);
  }

  return v10;
}

- (void)partitionPurgeableNamespacesForPurgeabilityLevel:(int)level namespaceNamesPurgeableAtNamespaceLevel:(id *)namespaceLevel eagerPurgeableFactorsByNamespaceName:(id *)name cacheDeleteableFactorsByNamespaceName:(id *)namespaceName
{
  v52 = *MEMORY[0x277D85DE8];
  v37 = objc_opt_new();
  v35 = objc_opt_new();
  v36 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x277D73750];
  namespaceDescriptorsDefaultDir = [(TRIPaths *)self->_paths namespaceDescriptorsDefaultDir];
  v10 = [v8 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        namespaceName = [v15 namespaceName];
        if ([v15 purgeabilityLevel] <= level)
        {
          [v37 addObject:namespaceName];
        }

        clientNamespaceMetadataStorage = self->_clientNamespaceMetadataStorage;
        v44 = 0;
        v18 = [(TRIClientNamespaceMetadataStoring *)clientNamespaceMetadataStorage loadNamespaceMetadataForNamespaceName:namespaceName error:&v44];
        v19 = v44;
        v20 = v19;
        if (v19 || !v18)
        {
          if (!v19)
          {
            goto LABEL_16;
          }

          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            namespaceName2 = [v15 namespaceName];
            *buf = 138543362;
            v50 = namespaceName2;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to load metadata for namespace %{public}@", buf, 0xCu);
          }
        }

        else
        {
          compatibilityVersion = [v18 compatibilityVersion];
          if (compatibilityVersion != [v15 downloadNCV])
          {
            goto LABEL_16;
          }

          factorNamePurgeabilityLevels = [v18 factorNamePurgeabilityLevels];
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __198__TRIPurgeableNamespacesProvider_partitionPurgeableNamespacesForPurgeabilityLevel_namespaceNamesPurgeableAtNamespaceLevel_eagerPurgeableFactorsByNamespaceName_cacheDeleteableFactorsByNamespaceName___block_invoke;
          v39[3] = &unk_279DDFF90;
          v40 = v36;
          v41 = namespaceName;
          levelCopy = level;
          v42 = v35;
          [factorNamePurgeabilityLevels enumerateKeysAndEnumsUsingBlock:v39];

          v23 = v40;
        }

LABEL_16:
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v25 = *namespaceLevel;
  *namespaceLevel = v37;
  v26 = v37;

  v27 = *name;
  *name = v35;
  v28 = v35;

  v29 = *namespaceName;
  *namespaceName = v36;

  v30 = *MEMORY[0x277D85DE8];
}

void __198__TRIPurgeableNamespacesProvider_partitionPurgeableNamespacesForPurgeabilityLevel_namespaceNamesPurgeableAtNamespaceLevel_eagerPurgeableFactorsByNamespaceName_cacheDeleteableFactorsByNamespaceName___block_invoke(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v7 addObject:v11];

  if (*(a1 + 56) >= a3)
  {
    v8 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
    if (v8)
    {
      [*(a1 + 48) setObject:v8 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v9 = objc_opt_new();
      [*(a1 + 48) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }

    v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
    [v10 addObject:v11];
  }
}

@end