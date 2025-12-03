@interface PLKeywordManager
+ (id)_keywordsForAsset:(id)asset;
+ (id)keywordsForAssetWithUUID:(id)d managedObjectContext:(id)context;
+ (id)keywordsForAssets:(id)assets;
- (BOOL)_setKeyword:(id)keyword forAssets:(id)assets managedObjectContext:(id)context;
- (BOOL)_setKeywords:(id)keywords forAsset:(id)asset managedObjectContext:(id)context;
- (BOOL)setKeyword:(id)keyword forAssets:(id)assets managedObjectContext:(id)context;
- (BOOL)setKeyword:(id)keyword managedObjectContext:(id)context;
- (BOOL)setKeywords:(id)keywords forAsset:(id)asset;
- (BOOL)setKeywords:(id)keywords forAssetUUID:(id)d managedObjectContext:(id)context;
- (PLKeywordManager)initWithPathManager:(id)manager;
- (id)_inq_keywordObjectsForKeywords:(id)keywords managedObjectContext:(id)context;
- (id)createOrLookupKeywordForTitle:(id)title photoLibrary:(id)library error:(id *)error;
- (void)_inq_loadKeywordsUsingContextIfNecessaryInManagedObjectContext:(id)context;
@end

@implementation PLKeywordManager

- (BOOL)_setKeyword:(id)keyword forAssets:(id)assets managedObjectContext:(id)context
{
  v34[1] = *MEMORY[0x1E69E9840];
  keywordCopy = keyword;
  assetsCopy = assets;
  contextCopy = context;
  v12 = contextCopy;
  if (keywordCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:228 description:{@"Invalid parameter not satisfying: %@", @"keyword"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

LABEL_3:
  libraryURL = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  pathManager = [v12 pathManager];
  libraryURL2 = [pathManager libraryURL];
  v16 = [libraryURL isEqual:libraryURL2];

  if ((v16 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    libraryURL3 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
    pathManager2 = [v12 pathManager];
    libraryURL4 = [pathManager2 libraryURL];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:234 description:{@"KeywordManager libraryURL and moc libraryURL mismatch: %@ != %@", libraryURL3, libraryURL4}];
  }

  pl_dispatch_sync();
  v34[0] = keywordCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v18 = [(PLKeywordManager *)self _inq_keywordObjectsForKeywords:v17 managedObjectContext:v12];

  v19 = [v18 count];
  if (!v19)
  {
    firstObject = PLBackendGetLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = keywordCopy;
      _os_log_impl(&dword_19BF1F000, firstObject, OS_LOG_TYPE_ERROR, "Failed to fetch existing keyword %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ([assetsCopy count])
  {
    firstObject = [v18 firstObject];
    v21 = objc_alloc(MEMORY[0x1E695DFA8]);
    assetAttributes = [firstObject assetAttributes];
    v23 = [v21 initWithSet:assetAttributes];

    v24 = [assetsCopy valueForKeyPath:@"additionalAttributes"];
    [v23 addObjectsFromArray:v24];

    [firstObject setAssetAttributes:v23];
LABEL_10:
  }

  dispatch_resume(self->_writeQueue);
  return v19 != 0;
}

- (BOOL)_setKeywords:(id)keywords forAsset:(id)asset managedObjectContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  assetCopy = asset;
  contextCopy = context;
  libraryURL = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  pathManager = [contextCopy pathManager];
  libraryURL2 = [pathManager libraryURL];
  v15 = [libraryURL isEqual:libraryURL2];

  if ((v15 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    libraryURL3 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
    pathManager2 = [contextCopy pathManager];
    libraryURL4 = [pathManager2 libraryURL];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:199 description:{@"KeywordManager libraryURL and moc libraryURL mismatch: %@ != %@", libraryURL3, libraryURL4}];
  }

  pl_dispatch_sync();
  v16 = PLBackendGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    uuid = [assetCopy uuid];
    *buf = 138543362;
    v34 = uuid;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Setting keywords for asset: %{public}@", buf, 0xCu);
  }

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v34 = keywordsCopy;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Keywords: %{public}@", buf, 0xCu);
  }

  if ([keywordsCopy count])
  {
    allObjects = [keywordsCopy allObjects];
    additionalAttributes2 = [(PLKeywordManager *)self _inq_keywordObjectsForKeywords:allObjects managedObjectContext:contextCopy];

    v21 = additionalAttributes2 != 0;
    if (additionalAttributes2)
    {
      additionalAttributes = [assetCopy additionalAttributes];
      v23 = [additionalAttributes mutableSetValueForKey:@"keywords"];

      v24 = [MEMORY[0x1E695DFD8] setWithArray:additionalAttributes2];
      [v23 setSet:v24];

      v25 = PLBackendGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v34 = v23;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "asset keywords now contains: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [assetCopy uuid];
        *buf = 138412290;
        v34 = uuid2;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to fetch existing keywords for asset %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "Setting keywords to nil", buf, 2u);
    }

    additionalAttributes2 = [assetCopy additionalAttributes];
    [additionalAttributes2 setKeywords:0];
    v21 = 1;
  }

  dispatch_resume(self->_writeQueue);
  return v21;
}

- (id)_inq_keywordObjectsForKeywords:(id)keywords managedObjectContext:(id)context
{
  v69 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v47 = contextCopy;
  [(PLKeywordManager *)self _inq_loadKeywordsUsingContextIfNecessaryInManagedObjectContext:contextCopy];
  if (self->_keywordCache)
  {
    selfCopy = self;
    v45 = dictionary;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v44 = keywordsCopy;
    obj = keywordsCopy;
    v10 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v59;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v58 + 1) + 8 * i);
          v15 = [(NSMutableDictionary *)selfCopy->_keywordCache objectForKeyedSubscript:v14];
          if (v15)
          {
            v57 = 0;
            v16 = [v47 existingObjectWithID:v15 error:&v57];
            v17 = v57;
            if (v16 && ([v16 title], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v14, "isEqualToString:", v18), v18, v19))
            {
              [v45 setObject:v16 forKey:v14];
            }

            else
            {
              v20 = PLBackendGetLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v65 = v15;
                v66 = 2112;
                v67 = v17;
                _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "keyword cache miss for %{public}@. Error: %@", buf, 0x16u);
              }
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v11);
    }

    array = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = obj;
    v23 = [v22 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v54;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v53 + 1) + 8 * j);
          v28 = [v45 objectForKey:v27];

          if (!v28)
          {
            v29 = +[PLManagedKeyword entityName];
            v30 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v29, v47, 0);

            if (!v30)
            {
              goto LABEL_27;
            }

            [v30 setTitle:v27];
            [v45 setObject:v30 forKey:v27];
            [array addObject:v30];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v24);
    }

LABEL_27:

    if ([array count])
    {
      v52 = 0;
      v31 = [v47 obtainPermanentIDsForObjects:array error:&v52];
      v32 = v52;
      if (v31)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v33 = array;
        v34 = [v33 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v49;
          do
          {
            for (k = 0; k != v35; ++k)
            {
              if (*v49 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v48 + 1) + 8 * k);
              keywordCache = selfCopy->_keywordCache;
              objectID = [v38 objectID];
              title = [v38 title];
              [(NSMutableDictionary *)keywordCache setObject:objectID forKey:title];
            }

            v35 = [v33 countByEnumeratingWithState:&v48 objects:v62 count:16];
          }

          while (v35);
        }
      }
    }

    dictionary = v45;
    allValues = [v45 allValues];
    keywordsCopy = v44;
  }

  else
  {
    array = PLBackendGetLog();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, array, OS_LOG_TYPE_ERROR, "Failed to fetch keywords.", buf, 2u);
    }

    allValues = 0;
  }

  return allValues;
}

void __43__PLKeywordManager__invalidateKeywordCache__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)_inq_loadKeywordsUsingContextIfNecessaryInManagedObjectContext:(id)context
{
  contextCopy = context;
  if (!self->_keywordCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    keywordCache = self->_keywordCache;
    self->_keywordCache = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__PLKeywordManager__inq_loadKeywordsUsingContextIfNecessaryInManagedObjectContext___block_invoke;
    v8[3] = &unk_1E75782F8;
    selfCopy = self;
    v11 = a2;
    v9 = contextCopy;
    [v9 performBlockAndWait:v8];
  }
}

void __83__PLKeywordManager__inq_loadKeywordsUsingContextIfNecessaryInManagedObjectContext___block_invoke(void *a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedKeyword entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v32[0] = @"title";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v4 setPropertiesToFetch:v5];

  [v4 setReturnsObjectsAsFaults:0];
  v6 = a1[4];
  v28 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v28];
  v8 = v28;
  if (v8)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a1[6] object:a1[5] file:@"PLKeywordManager.m" lineNumber:128 description:{@"Failed to fetch existing keywords: %@", v8}];
  }

  v9 = a1[4];
  v27 = v8;
  v10 = [v9 obtainPermanentIDsForObjects:v7 error:&v27];
  v11 = v27;

  if (v10)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v22 = v11;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 title];
          v19 = *(a1[5] + 24);
          v20 = [v17 objectID];
          [v19 setObject:v20 forKey:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
      v11 = v22;
    }
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to get permanent IDs for keywords: %@", buf, 0xCu);
    }
  }
}

- (id)createOrLookupKeywordForTitle:(id)title photoLibrary:(id)library error:(id *)error
{
  titleCopy = title;
  libraryCopy = library;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__57990;
  v31 = __Block_byref_object_dispose__57991;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__57990;
  v25 = __Block_byref_object_dispose__57991;
  v26 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__PLKeywordManager_createOrLookupKeywordForTitle_photoLibrary_error___block_invoke;
  v16[3] = &unk_1E75787D0;
  v16[4] = self;
  v10 = titleCopy;
  v17 = v10;
  v11 = libraryCopy;
  v18 = v11;
  v19 = &v27;
  v20 = &v21;
  [v11 performBlockAndWait:v16];
  v12 = v28[5];
  v13 = v22[5];
  if (!v12 && error)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = v28[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v14;
}

void __69__PLKeywordManager_createOrLookupKeywordForTitle_photoLibrary_error___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  LODWORD(v2) = [v2 setKeyword:v3 managedObjectContext:v4];

  if (v2)
  {
    v5 = *(a1 + 40);
    v15 = [*(a1 + 48) managedObjectContext];
    v6 = [PLManagedKeyword keywordForTitle:v5 context:?];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Failed to create keyword";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v9 errorWithDomain:v10 code:41003 userInfo:v11];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (BOOL)setKeyword:(id)keyword managedObjectContext:(id)context
{
  keywordCopy = keyword;
  contextCopy = context;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:97 description:{@"%s must be called in assetsd", "-[PLKeywordManager setKeyword:managedObjectContext:]"}];
  }

  v9 = [(PLKeywordManager *)self _setKeyword:keywordCopy forAssets:0 managedObjectContext:contextCopy];

  return v9;
}

- (BOOL)setKeyword:(id)keyword forAssets:(id)assets managedObjectContext:(id)context
{
  keywordCopy = keyword;
  assetsCopy = assets;
  contextCopy = context;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:92 description:{@"%s must be called in assetsd", "-[PLKeywordManager setKeyword:forAssets:managedObjectContext:]"}];
  }

  v12 = [(PLKeywordManager *)self _setKeyword:keywordCopy forAssets:assetsCopy managedObjectContext:contextCopy];

  return v12;
}

- (BOOL)setKeywords:(id)keywords forAsset:(id)asset
{
  assetCopy = asset;
  keywordsCopy = keywords;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:87 description:{@"%s must be called in assetsd", "-[PLKeywordManager setKeywords:forAsset:]"}];
  }

  managedObjectContext = [assetCopy managedObjectContext];
  v10 = [(PLKeywordManager *)self _setKeywords:keywordsCopy forAsset:assetCopy managedObjectContext:managedObjectContext];

  return v10;
}

- (BOOL)setKeywords:(id)keywords forAssetUUID:(id)d managedObjectContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  dCopy = d;
  contextCopy = context;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:76 description:{@"%s must be called in assetsd", "-[PLKeywordManager setKeywords:forAssetUUID:managedObjectContext:]"}];
  }

  v12 = [PLManagedAsset assetWithUUID:dCopy inManagedObjectContext:contextCopy];
  if (v12)
  {
    v13 = [(PLKeywordManager *)self _setKeywords:keywordsCopy forAsset:v12 managedObjectContext:contextCopy];
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Asset with uuid %@ cannot be found.", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (PLKeywordManager)initWithPathManager:(id)manager
{
  managerCopy = manager;
  if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeywordManager.m" lineNumber:34 description:@"PLKeywordManager must be initialized in assetsd"];
  }

  v13.receiver = self;
  v13.super_class = PLKeywordManager;
  v7 = [(PLKeywordManager *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pathManager, manager);
    v9 = dispatch_queue_create("com.apple.photos.assetsd.keywordWrites", 0);
    writeQueue = v8->_writeQueue;
    v8->_writeQueue = v9;
  }

  return v8;
}

+ (id)_keywordsForAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  additionalAttributes = [asset additionalAttributes];
  keywords = [additionalAttributes keywords];
  v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(keywords, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = keywords;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        title = [*(*(&v13 + 1) + 8 * i) title];
        [v5 addObject:title];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)keywordsForAssets:(id)assets
{
  v20 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [self _keywordsForAsset:{v11, v15}];
        [v5 addObject:v13];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)keywordsForAssetWithUUID:(id)d managedObjectContext:(id)context
{
  v5 = [PLManagedAsset assetWithUUID:d inManagedObjectContext:context];
  v6 = [self _keywordsForAsset:v5];

  return v6;
}

@end