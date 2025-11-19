@interface PLPhotoLibraryFinder
+ (id)_findMatchingPhotoLibraryTombstoneURLsInContainerRootURL:(id)a3 error:(id *)a4;
+ (id)_findPhotoLibraryIdentifiersInContainerRootURL:(id)a3 matchingUUID:(id)a4 options:(unint64_t)a5 error:(id *)a6;
+ (id)defaultLibraryURLForLibraryDomain:(int64_t)a3 container:(id)a4 uuid:(id)a5;
- (BOOL)_isApplicationDomainContainerURL:(id)a3;
- (PLPhotoLibraryFinder)initWithSearchCriteria:(id)a3;
- (id)_containerRootURLsForDomain:(int64_t)a3;
- (id)_findPhotoLibraryIdentifiersInDomain:(int64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)_rootURLForPhotoLibraryDomain:(int64_t)a3;
- (id)findMatchingPhotoLibraryIdentifiersWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)findMatchingPhotoLibraryTombstoneURLs;
- (id)searchDomainNumbers;
@end

@implementation PLPhotoLibraryFinder

- (id)findMatchingPhotoLibraryTombstoneURLs
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
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
                [v3 addObjectsFromArray:v12];
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

  return v3;
}

- (id)findMatchingPhotoLibraryIdentifiersWithOptions:(unint64_t)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(PLPhotoLibraryFinder *)self searchDomainNumbers];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v21 + 1) + 8 * v12) integerValue];
        v20 = v13;
        v15 = [(PLPhotoLibraryFinder *)self _findPhotoLibraryIdentifiersInDomain:v14 options:a3 error:&v20];
        v10 = v20;

        if (!v15)
        {

          v16 = v10;
          goto LABEL_11;
        }

        [v6 addObjectsFromArray:v15];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  if (!v6)
  {
LABEL_11:
    if (a4)
    {
      v17 = v16;
      v6 = 0;
      *a4 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)searchDomainNumbers
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(PLPhotoLibraryFinder *)self searchCriteria];
  v3 = [v2 domain];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = &unk_1F0FBFD18;
  }

  return v5;
}

- (id)_findPhotoLibraryIdentifiersInDomain:(int64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [(PLPhotoLibraryFinder *)self _containerRootURLsForDomain:a3];
    v11 = [(PLPhotoLibraryFinder *)self searchCriteria];
    v12 = [v11 uuid];

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

          v18 = [objc_opt_class() _findPhotoLibraryIdentifiersInContainerRootURL:*(*(&v25 + 1) + 8 * i) matchingUUID:v12 options:a4 error:{a5, v25}];
          if (!v18)
          {

            v9 = 0;
            goto LABEL_12;
          }

          v19 = v18;
          [v9 addObjectsFromArray:v18];
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
    v12 = v22;
    if (a5)
    {
      v23 = v22;
      v9 = 0;
      *a5 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_containerRootURLsForDomain:(int64_t)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PLPhotoLibraryFinder *)self _rootURLForPhotoLibraryDomain:a3];
  v7 = v6;
  if (a3 == 3)
  {
    v9 = [(PLPhotoLibraryFinder *)self searchCriteria];
    v8 = [v9 containerIdentifier];

    if (v8)
    {
      v10 = [v7 URLByAppendingPathComponent:v8];
      [v5 addObject:v10];
    }

    else
    {
      v11 = [MEMORY[0x1E69BF238] fileManager];
      v12 = *MEMORY[0x1E695DB78];
      v33[0] = *MEMORY[0x1E695DB78];
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
      v25 = v11;
      v26 = v7;
      v14 = [v11 enumeratorAtURL:v7 includingPropertiesForKeys:v13 options:1 errorHandler:&__block_literal_global_59896];

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
              [v5 addObject:v20];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v17);
      }

      v8 = 0;
      v7 = v26;
    }
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_19;
    }

    v8 = [v6 URLByAppendingPathComponent:@"com.apple.photos"];
    [v5 addObject:v8];
  }

LABEL_19:

  return v5;
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

- (id)_rootURLForPhotoLibraryDomain:(int64_t)a3
{
  v4 = [(PLPhotoLibraryFinder *)self searchCriteria];
  v5 = [v4 internalTestOptions];

  if (v5 && (v6 = *MEMORY[0x1E69BFED0], [v5 objectForKeyedSubscript:*MEMORY[0x1E69BFED0]], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = [MEMORY[0x1E69BF2A0] rootURLForPhotoLibraryDomain:a3];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_isApplicationDomainContainerURL:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 isEqualToString:@"com.apple.photos"];

  return v4 ^ 1;
}

- (PLPhotoLibraryFinder)initWithSearchCriteria:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLPhotoLibraryFinder;
  v6 = [(PLPhotoLibraryFinder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchCriteria, a3);
  }

  return v7;
}

+ (id)_findMatchingPhotoLibraryTombstoneURLsInContainerRootURL:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69BF238] fileManager];
  v6 = *MEMORY[0x1E695DB78];
  v30[0] = *MEMORY[0x1E695DB78];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v22 = v4;
  v8 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:1 errorHandler:&__block_literal_global_19];

  v23 = [MEMORY[0x1E695DF70] array];
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
          v18 = [v14 pathExtension];
          v19 = [MEMORY[0x1E69BF2A0] photosLibraryTombstoneExtension];
          v20 = [v18 isEqualToString:v19];

          if (v20)
          {
            [v23 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  return v23;
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

+ (id)_findPhotoLibraryIdentifiersInContainerRootURL:(id)a3 matchingUUID:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v6 = a5;
  v69[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69BF238] fileManager];
  v49 = *MEMORY[0x1E695DB78];
  v69[0] = *MEMORY[0x1E695DB78];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v46 = v8;
  v12 = [v10 enumeratorAtURL:v8 includingPropertiesForKeys:v11 options:1 errorHandler:&__block_literal_global_6];

  v47 = [MEMORY[0x1E695DFA8] set];
  v13 = [MEMORY[0x1E695DFA8] set];
  v51 = v9;
  v59 = 0u;
  v60 = 0u;
  v50 = (v9 | v6 & 1) == 0;
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
        v19 = [v18 pathExtension];
        v20 = [MEMORY[0x1E69BF2A0] photosLibraryTombstoneExtension];
        v21 = [v19 isEqualToString:v20];

        if (v21)
        {
          v22 = [v18 lastPathComponent];
          v23 = [v22 stringByDeletingPathExtension];

          [v13 addObject:v23];
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
            v27 = [v18 pathExtension];
            v28 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
            v29 = [v27 isEqualToString:v28];

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

  v48 = [MEMORY[0x1E695DF70] array];
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
        v36 = [v35 lastPathComponent];
        if ([v13 containsObject:v36])
        {
          v37 = PLBackendGetLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v35 lastPathComponent];
            v39 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v35];
            *buf = 138543618;
            v64 = v38;
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
              [v48 addObject:v40];
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

  return v48;
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

+ (id)defaultLibraryURLForLibraryDomain:(int64_t)a3 container:(id)a4 uuid:(id)a5
{
  v7 = MEMORY[0x1E69BF2A0];
  v8 = a5;
  v9 = a4;
  v10 = [v7 rootURLForPhotoLibraryDomain:a3];
  v11 = [v10 URLByAppendingPathComponent:v9];

  v12 = [v11 URLByAppendingPathComponent:v8];

  v13 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
  v14 = [v12 URLByAppendingPathExtension:v13];

  return v14;
}

@end