@interface PGGraphMemoryProcessorHelper
+ (id)_fetchLocalMemoriesWithFetchOptions:(id)a3;
+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)a3 withAdditionalPredicate:(id)a4;
+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)a3 inPhotoLibrary:(id)a4;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)a3 inPhotoLibrary:(id)a4;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)a3 localMemoryByUniqueIdentifierCache:(id)a4 inPhotoLibrary:(id)a5;
@end

@implementation PGGraphMemoryProcessorHelper

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)a3 inPhotoLibrary:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__PGGraphMemoryProcessorHelper_resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories_inPhotoLibrary___block_invoke;
    v18[3] = &unk_27888A660;
    v7 = v5;
    v19 = v7;
    v17 = 0;
    v8 = [v6 performChangesAndWait:v18 error:&v17];
    v9 = v17;
    v10 = +[PGLogging sharedLogging];
    v11 = [v10 loggingConnection];

    v12 = v11;
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 count];
        *buf = 67109120;
        v21 = v14;
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_DEFAULT, "[PGGraphMemoryProcessorHelper] Successfully reset %d local memories", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v7 count];
      *buf = 67109378;
      v21 = v16;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "[PGGraphMemoryProcessorHelper] Failed to reset %d local memories, error=%@", buf, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __109__PGGraphMemoryProcessorHelper_resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD98E8] changeRequestForMemory:{*(*(&v8 + 1) + 8 * v5), v8}];
        [v6 setLastEnrichmentDate:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)a3 localMemoryByUniqueIdentifierCache:(id)a4 inPhotoLibrary:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v15), v18}];
          if (v16)
          {
            [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [objc_opt_class() resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:v10 inPhotoLibrary:v9];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)_fetchLocalMemoriesWithFetchOptions:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PGLogging sharedLogging];
  v5 = [v4 loggingConnection];

  v17 = v3;
  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v3];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 graphMemoryIdentifier];
        if (v14)
        {
          [v7 setObject:v13 forKeyedSubscript:v14];
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v13;
          _os_log_error_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_ERROR, "[PGGraphMemoryProcessorHelper] graphMemoryIdentifier is nil for %@", buf, 0xCu);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)a3 withAdditionalPredicate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"pendingState", 2];
  [v7 addObject:v8];

  if (v6)
  {
    [v7 addObject:v6];
  }

  v9 = [v5 librarySpecificFetchOptions];
  [v9 setIncludeLocalMemories:1];
  [v9 setIncludeRejectedMemories:1];
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  [v9 setInternalPredicate:v10];

  v11 = [objc_opt_class() _fetchLocalMemoriesWithFetchOptions:v9];

  return v11;
}

+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"graphMemoryIdentifier", v6];
    v9 = [a1 _localMemoryByUniqueIdentifierInPhotoLibrary:v7 withAdditionalPredicate:v8];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", v6];
    v9 = [a1 _localMemoryByUniqueIdentifierInPhotoLibrary:v7 withAdditionalPredicate:v8];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

@end