@interface PLPhotoLibraryFinder
+ (id)_findMatchingPhotoLibraryTombstoneURLsInContainerRootURL:(id)l error:(id *)error;
+ (id)_findPhotoLibraryIdentifiersInContainerRootURL:(id)l matchingUUID:(id)d options:(unint64_t)options error:(id *)error;
+ (id)defaultLibraryURLForLibraryDomain:(int64_t)domain container:(id)container uuid:(id)uuid;
- (BOOL)_isApplicationDomainContainerURL:(id)l;
- (PLPhotoLibraryFinder)initWithSearchCriteria:(id)criteria;
- (id)_containerRootURLsForDomain:(int64_t)domain;
- (id)_findPhotoLibraryIdentifiersInDomain:(int64_t)domain options:(unint64_t)options error:(id *)error;
- (id)_rootURLForPhotoLibraryDomain:(int64_t)domain;
- (id)findMatchingPhotoLibraryIdentifiersWithOptions:(unint64_t)options error:(id *)error;
- (id)findMatchingPhotoLibraryTombstoneURLs;
- (id)searchDomainNumbers;
@end

@implementation PLPhotoLibraryFinder

- (id)findMatchingPhotoLibraryTombstoneURLs
{
  v38 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(PLPhotoLibraryFinder *)self searchDomainNumbers];
  v19 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v19)
  {
    v18 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = -[PLPhotoLibraryFinder _containerRootURLsForDomain:](self, "_containerRootURLsForDomain:", [*(*(&v26 + 1) + 8 * v4) integerValue]);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v22 objects:v36 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v23;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v23 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v22 + 1) + 8 * i);
              v11 = objc_opt_class();
              v21 = 0;
              v12 = [v11 _findMatchingPhotoLibraryTombstoneURLsInContainerRootURL:v10 error:&v21];
              v13 = v21;
              if (v12)
              {
                [array addObjectsFromArray:v12];
              }

              else
              {
                v14 = PLBackendGetLog();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v15 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v10];
                  *buf = 136446722;
                  v31 = "[PLPhotoLibraryFinder findMatchingPhotoLibraryTombstoneURLs]";
                  v32 = 2112;
                  v33 = v15;
                  v34 = 2112;
                  v35 = v13;
                  _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "[%{public}s] failed to find in container URL %@: %@", buf, 0x20u);
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v22 objects:v36 count:16];
          }

          while (v7);
        }

        v4 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v19);
  }

  return array;
}

- (id)findMatchingPhotoLibraryIdentifiersWithOptions:(unint64_t)options error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  searchDomainNumbers = [(PLPhotoLibraryFinder *)self searchDomainNumbers];
  v8 = [searchDomainNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    while (2)
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(searchDomainNumbers);
        }

        integerValue = [*(*(&v21 + 1) + 8 * v12) integerValue];
        v20 = v13;
        v15 = [(PLPhotoLibraryFinder *)self _findPhotoLibraryIdentifiersInDomain:integerValue options:options error:&v20];
        v10 = v20;

        if (!v15)
        {

          v16 = v10;
          goto LABEL_11;
        }

        [array addObjectsFromArray:v15];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [searchDomainNumbers countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = v10;
  if (!array)
  {
LABEL_11:
    if (error)
    {
      v17 = v16;
      array = 0;
      *error = v16;
    }

    else
    {
      array = 0;
    }
  }

  return array;
}

- (id)searchDomainNumbers
{
  v7[1] = *MEMORY[0x1E69E9840];
  searchCriteria = [(PLPhotoLibraryFinder *)self searchCriteria];
  domain = [searchCriteria domain];

  if (domain)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:domain];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = &unk_1F0FBFD18;
  }

  return v5;
}

- (id)_findPhotoLibraryIdentifiersInDomain:(int64_t)domain options:(unint64_t)options error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (domain)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = [(PLPhotoLibraryFinder *)self _containerRootURLsForDomain:domain];
    searchCriteria = [(PLPhotoLibraryFinder *)self searchCriteria];
    uuid = [searchCriteria uuid];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [objc_opt_class() _findPhotoLibraryIdentifiersInContainerRootURL:*(*(&v25 + 1) + 8 * i) matchingUUID:uuid options:options error:{error, v25}];
          if (!v18)
          {

            array = 0;
            goto LABEL_12;
          }

          v19 = v18;
          [array addObjectsFromArray:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v20 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E69BFF48];
    v30 = *MEMORY[0x1E696A278];
    v31[0] = @"Unsupported search criteria";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v22 = [v20 errorWithDomain:v21 code:46309 userInfo:v13];
    uuid = v22;
    if (error)
    {
      v23 = v22;
      array = 0;
      *error = uuid;
    }

    else
    {
      array = 0;
    }
  }

  return array;
}

- (id)_containerRootURLsForDomain:(int64_t)domain
{
  v33[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(PLPhotoLibraryFinder *)self _rootURLForPhotoLibraryDomain:domain];
  v7 = v6;
  if (domain == 3)
  {
    searchCriteria = [(PLPhotoLibraryFinder *)self searchCriteria];
    containerIdentifier = [searchCriteria containerIdentifier];

    if (containerIdentifier)
    {
      v10 = [v7 URLByAppendingPathComponent:containerIdentifier];
      [array addObject:v10];
    }

    else
    {
      fileManager = [MEMORY[0x1E69BF238] fileManager];
      v12 = *MEMORY[0x1E695DB78];
      v33[0] = *MEMORY[0x1E695DB78];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v25 = fileManager;
      v26 = v7;
      v14 = [fileManager enumeratorAtURL:v7 includingPropertiesForKeys:v13 options:1 errorHandler:&__block_literal_global_59896];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * i);
            v27 = 0;
            v21 = [v20 getResourceValue:&v27 forKey:v12 error:0];
            v22 = v27;
            v23 = v22;
            if ((!v21 || [v22 BOOLValue]) && -[PLPhotoLibraryFinder _isApplicationDomainContainerURL:](self, "_isApplicationDomainContainerURL:", v20))
            {
              [array addObject:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v17);
      }

      containerIdentifier = 0;
      v7 = v26;
    }
  }

  else
  {
    if (domain != 2)
    {
      goto LABEL_19;
    }

    containerIdentifier = [v6 URLByAppendingPathComponent:@"com.apple.photos"];
    [array addObject:containerIdentifier];
  }

LABEL_19:

  return array;
}

uint64_t __52__PLPhotoLibraryFinder__containerRootURLsForDomain___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x19EAEE3C0]();
  v7 = PLBackendGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v10 = "[_containerRootURLsForDomain:] App-domain library container root doesn't exist %@: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v10 = "[_containerRootURLsForDomain:] Error enumerating library entry at path %@: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  return 1;
}

- (id)_rootURLForPhotoLibraryDomain:(int64_t)domain
{
  searchCriteria = [(PLPhotoLibraryFinder *)self searchCriteria];
  internalTestOptions = [searchCriteria internalTestOptions];

  if (internalTestOptions && (v6 = *MEMORY[0x1E69BFED0], [internalTestOptions objectForKeyedSubscript:*MEMORY[0x1E69BFED0]], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [internalTestOptions objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E69BF2A0] rootURLForPhotoLibraryDomain:domain];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_isApplicationDomainContainerURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v4 = [lastPathComponent isEqualToString:@"com.apple.photos"];

  return v4 ^ 1;
}

- (PLPhotoLibraryFinder)initWithSearchCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryFinder;
  v6 = [(PLPhotoLibraryFinder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchCriteria, criteria);
  }

  return v7;
}

+ (id)_findMatchingPhotoLibraryTombstoneURLsInContainerRootURL:(id)l error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v6 = *MEMORY[0x1E695DB78];
  v30[0] = *MEMORY[0x1E695DB78];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v22 = lCopy;
  v8 = [fileManager enumeratorAtURL:lCopy includingPropertiesForKeys:v7 options:1 errorHandler:&__block_literal_global_19];

  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v15 = [v14 getResourceValue:&v24 forKey:v6 error:0];
        v16 = v24;
        v17 = v16;
        if (!v15 || ([v16 BOOLValue] & 1) == 0)
        {
          pathExtension = [v14 pathExtension];
          photosLibraryTombstoneExtension = [MEMORY[0x1E69BF2A0] photosLibraryTombstoneExtension];
          v20 = [pathExtension isEqualToString:photosLibraryTombstoneExtension];

          if (v20)
          {
            [array addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return array;
}

uint64_t __87__PLPhotoLibraryFinder__findMatchingPhotoLibraryTombstoneURLsInContainerRootURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x19EAEE3C0]();
  v7 = PLBackendGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v10 = "[findPhotoLibraryIdentifiersInDomain:] App-domain library container root doesn't exist %@: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v10 = "[findPhotoLibraryIdentifiersInDomain:] Error enumerating library entry at path %@: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  return 1;
}

+ (id)_findPhotoLibraryIdentifiersInContainerRootURL:(id)l matchingUUID:(id)d options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v69[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v49 = *MEMORY[0x1E695DB78];
  v69[0] = *MEMORY[0x1E695DB78];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v46 = lCopy;
  v12 = [fileManager enumeratorAtURL:lCopy includingPropertiesForKeys:v11 options:1 errorHandler:&__block_literal_global_6];

  v47 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E695DFA8] set];
  v51 = dCopy;
  v59 = 0u;
  v60 = 0u;
  v50 = (dCopy | optionsCopy & 1) == 0;
  v61 = 0u;
  v62 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v60;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * i);
        pathExtension = [v18 pathExtension];
        photosLibraryTombstoneExtension = [MEMORY[0x1E69BF2A0] photosLibraryTombstoneExtension];
        v21 = [pathExtension isEqualToString:photosLibraryTombstoneExtension];

        if (v21)
        {
          lastPathComponent = [v18 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          [v13 addObject:stringByDeletingPathExtension];
          v24 = 0;
        }

        else
        {
          v58 = 0;
          v25 = [v18 getResourceValue:&v58 forKey:v49 error:0];
          v26 = v58;
          v24 = v26;
          if (!v25 || [v26 BOOLValue])
          {
            pathExtension2 = [v18 pathExtension];
            photosLibraryExtension = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
            v29 = [pathExtension2 isEqualToString:photosLibraryExtension];

            if (v29)
            {
              [v47 addObject:v18];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v15);
  }

  array = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = v47;
  v31 = [v30 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v55;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v55 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v54 + 1) + 8 * j);
        lastPathComponent2 = [v35 lastPathComponent];
        if ([v13 containsObject:lastPathComponent2])
        {
          v37 = PLBackendGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            lastPathComponent3 = [v35 lastPathComponent];
            v39 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v35];
            *buf = 138543618;
            v64 = lastPathComponent3;
            v65 = 2112;
            v66 = v39;
            _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Skipping tombstoned library bundle %{public}@ with library URL %@", buf, 0x16u);
          }
        }

        else
        {
          v53 = 0;
          v40 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:v35 createIfMissing:v50 error:&v53];
          v37 = v53;
          if (v40)
          {
            if (!v51 || ([v40 uuid], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v51, "isEqualToString:", v41), v41, v42))
            {
              [array addObject:v40];
            }
          }

          else
          {
            v43 = PLBackendGetLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v35];
              *buf = 138412546;
              v64 = v44;
              v65 = 2112;
              v66 = v37;
              _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "Photo library identifier missing from library URL %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v32);
  }

  return array;
}

uint64_t __98__PLPhotoLibraryFinder__findPhotoLibraryIdentifiersInContainerRootURL_matchingUUID_options_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x19EAEE3C0]();
  v7 = PLBackendGetLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
      v14 = 138412546;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      v10 = "[findPhotoLibraryIdentifiersInDomain:] App-domain library container root doesn't exist %@: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v4];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    v10 = "[findPhotoLibraryIdentifiersInDomain:] Error enumerating library entry at path %@: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }

  return 1;
}

+ (id)defaultLibraryURLForLibraryDomain:(int64_t)domain container:(id)container uuid:(id)uuid
{
  v7 = MEMORY[0x1E69BF2A0];
  uuidCopy = uuid;
  containerCopy = container;
  v10 = [v7 rootURLForPhotoLibraryDomain:domain];
  v11 = [v10 URLByAppendingPathComponent:containerCopy];

  v12 = [v11 URLByAppendingPathComponent:uuidCopy];

  photosLibraryExtension = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
  v14 = [v12 URLByAppendingPathExtension:photosLibraryExtension];

  return v14;
}

@end