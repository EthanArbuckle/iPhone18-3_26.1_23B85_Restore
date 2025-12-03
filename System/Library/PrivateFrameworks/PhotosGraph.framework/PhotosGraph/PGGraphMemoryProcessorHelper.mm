@interface PGGraphMemoryProcessorHelper
+ (id)_fetchLocalMemoriesWithFetchOptions:(id)options;
+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)library withAdditionalPredicate:(id)predicate;
+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)identifiers inPhotoLibrary:(id)library;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)memories inPhotoLibrary:(id)library;
+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)identifiers localMemoryByUniqueIdentifierCache:(id)cache inPhotoLibrary:(id)library;
@end

@implementation PGGraphMemoryProcessorHelper

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:(id)memories inPhotoLibrary:(id)library
{
  v24 = *MEMORY[0x277D85DE8];
  memoriesCopy = memories;
  libraryCopy = library;
  if ([memoriesCopy count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__PGGraphMemoryProcessorHelper_resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories_inPhotoLibrary___block_invoke;
    v18[3] = &unk_27888A660;
    v7 = memoriesCopy;
    v19 = v7;
    v17 = 0;
    v8 = [libraryCopy performChangesAndWait:v18 error:&v17];
    v9 = v17;
    v10 = +[PGLogging sharedLogging];
    loggingConnection = [v10 loggingConnection];

    v12 = loggingConnection;
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

+ (void)resetLocalMemoryLastEnrichmentDateOfMemoriesWithUniqueIdentifiers:(id)identifiers localMemoryByUniqueIdentifierCache:(id)cache inPhotoLibrary:(id)library
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  cacheCopy = cache;
  libraryCopy = library;
  if ([identifiersCopy count] && objc_msgSend(cacheCopy, "count"))
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = identifiersCopy;
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

          v16 = [cacheCopy objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * v15), v18}];
          if (v16)
          {
            [array addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [objc_opt_class() resetLocalMemoryLastEnrichmentDateOfMemoriesWithLocalMemories:array inPhotoLibrary:libraryCopy];
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)_fetchLocalMemoriesWithFetchOptions:(id)options
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = +[PGLogging sharedLogging];
  loggingConnection = [v4 loggingConnection];

  v17 = optionsCopy;
  v6 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:optionsCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        graphMemoryIdentifier = [v13 graphMemoryIdentifier];
        if (graphMemoryIdentifier)
        {
          [dictionary setObject:v13 forKeyedSubscript:graphMemoryIdentifier];
        }

        else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v13;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphMemoryProcessorHelper] graphMemoryIdentifier is nil for %@", buf, 0xCu);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)_localMemoryByUniqueIdentifierInPhotoLibrary:(id)library withAdditionalPredicate:(id)predicate
{
  libraryCopy = library;
  predicateCopy = predicate;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"pendingState", 2];
  [array addObject:v8];

  if (predicateCopy)
  {
    [array addObject:predicateCopy];
  }

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeLocalMemories:1];
  [librarySpecificFetchOptions setIncludeRejectedMemories:1];
  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
  [librarySpecificFetchOptions setInternalPredicate:v10];

  v11 = [objc_opt_class() _fetchLocalMemoriesWithFetchOptions:librarySpecificFetchOptions];

  return v11;
}

+ (id)localMemoryByUniqueIdentifierWithGraphMemoryIdentifiers:(id)identifiers inPhotoLibrary:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  if ([identifiersCopy count])
  {
    identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"graphMemoryIdentifier", identifiersCopy];
    v9 = [self _localMemoryByUniqueIdentifierInPhotoLibrary:libraryCopy withAdditionalPredicate:identifiersCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

+ (id)localMemoryByUniqueIdentifierForMemoryUUIDs:(id)ds inPhotoLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
    v9 = [self _localMemoryByUniqueIdentifierInPhotoLibrary:libraryCopy withAdditionalPredicate:dsCopy];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

@end