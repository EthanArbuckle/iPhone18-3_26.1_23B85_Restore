@interface PLInitialSuggestionsStorageManager
+ (BOOL)deleteInitialSuggestionsForPhotoLibrary:(id)library error:(id *)error;
+ (BOOL)saveInitialSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error;
+ (BOOL)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used photoLibrary:(id)library error:(id *)error;
+ (id)initialSearchSuggestionsForPhotoLibrary:(id)library psiDatabase:(id)database error:(id *)error;
@end

@implementation PLInitialSuggestionsStorageManager

+ (BOOL)deleteInitialSuggestionsForPhotoLibrary:(id)library error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (PLIsAssetsd())
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager searchIndexingEngine];
    [searchIndexingEngine safePerformBlockAndWaitWithPSIDatabase:&__block_literal_global_63];

    v10 = 1;
  }

  else
  {
    assetsdClient = [libraryCopy assetsdClient];
    libraryInternalClient = [assetsdClient libraryInternalClient];
    v18 = 0;
    v10 = [libraryInternalClient deleteAllInitialSuggestionsWithError:&v18];
    v13 = v18;

    if ((v10 & 1) == 0)
    {
      v14 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to delete initial suggestions. Error: %@", buf, 0xCu);
      }

      if (error)
      {
        v15 = v13;
        *error = v13;
      }
    }
  }

  return v10;
}

+ (BOOL)updateInitialSuggestionsWithIdentifiers:(id)identifiers dateLastUsed:(id)used photoLibrary:(id)library error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  usedCopy = used;
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  if (PLIsAssetsd())
  {
    v14 = [identifiersCopy _pl_map:&__block_literal_global_60_49057];
    libraryServicesManager = [libraryCopy libraryServicesManager];
    searchIndexingEngine = [libraryServicesManager searchIndexingEngine];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __110__PLInitialSuggestionsStorageManager_updateInitialSuggestionsWithIdentifiers_dateLastUsed_photoLibrary_error___block_invoke_2;
    v27[3] = &unk_1E756D418;
    v28 = v14;
    v29 = usedCopy;
    v17 = v14;
    [searchIndexingEngine safePerformBlockWithPSIDatabase:v27];

LABEL_6:
    v21 = 1;
    goto LABEL_7;
  }

  assetsdClient = [libraryCopy assetsdClient];
  libraryInternalClient = [assetsdClient libraryInternalClient];
  v26 = 0;
  v20 = [libraryInternalClient updateInitialSuggestionsWithIdentifiers:identifiersCopy dateLastUsed:usedCopy error:&v26];
  v17 = v26;

  if (v20)
  {
    goto LABEL_6;
  }

  v23 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v31 = identifiersCopy;
    v32 = 2112;
    v33 = v17;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to update timestamps for initial suggestions with identifiers %@. Error: %@", buf, 0x16u);
  }

  if (error)
  {
    v24 = v17;
    v21 = 0;
    *error = v17;
  }

  else
  {
    v21 = 0;
  }

LABEL_7:

  return v21;
}

PSIInitialSuggestionIdentifier *__110__PLInitialSuggestionsStorageManager_updateInitialSuggestionsWithIdentifiers_dateLastUsed_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PSIInitialSuggestionIdentifier alloc] initWithDictionary:v2];

  return v3;
}

+ (BOOL)saveInitialSuggestions:(id)suggestions photoLibrary:(id)library error:(id *)error
{
  suggestionsCopy = suggestions;
  libraryCopy = library;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:103 description:{@"%@ can only be called from assetsd", v16}];

    if (libraryCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    goto LABEL_3;
  }

  if (!libraryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [suggestionsCopy _pl_map:&__block_literal_global_49063];
  libraryServicesManager = [libraryCopy libraryServicesManager];

  searchIndexingEngine = [libraryServicesManager searchIndexingEngine];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__PLInitialSuggestionsStorageManager_saveInitialSuggestions_photoLibrary_error___block_invoke_2;
  v18[3] = &unk_1E756D3F0;
  v19 = v10;
  v13 = v10;
  [searchIndexingEngine safePerformBlockAndWaitWithPSIDatabase:v18];

  return 1;
}

PSIInitialSuggestion *__80__PLInitialSuggestionsStorageManager_saveInitialSuggestions_photoLibrary_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PSIInitialSuggestion alloc];
  v4 = [v2 suggestionTemplate];
  v5 = [v2 firstRankedGroup];
  v6 = [v5 group];
  v7 = [v2 secondRankedGroup];
  v8 = [v7 group];
  [v2 dateLastUsed];
  v10 = v9;

  v11 = [(PSIInitialSuggestion *)v3 initWithSuggestionTemplate:v4 firstGroup:v6 secondGroup:v8 dateLastUsed:v10];

  return v11;
}

+ (id)initialSearchSuggestionsForPhotoLibrary:(id)library psiDatabase:(id)database error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  databaseCopy = database;
  v32 = libraryCopy;
  if (libraryCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = databaseCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    databaseCopy = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  v29 = databaseCopy;
  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsStorageManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"psiDatabase"}];

  databaseCopy = v29;
LABEL_3:
  v31 = databaseCopy;
  fetchInitialSuggestions = [databaseCopy fetchInitialSuggestions];
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = fetchInitialSuggestions;
  v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v12)
  {
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        groups = [v15 groups];
        v17 = [groups countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v17)
        {
          v18 = *v45;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v45 != v18)
              {
                objc_enumerationMutation(groups);
              }

              v20 = *(*(&v44 + 1) + 8 * j);
              if ([v20 category] == 1300 || objc_msgSend(v20, "category") == 1301 || objc_msgSend(v20, "category") == 1330 || objc_msgSend(v20, "category") == 1331)
              {
                lookupIdentifier = [v20 lookupIdentifier];

                if (lookupIdentifier)
                {
                  lookupIdentifier2 = [v20 lookupIdentifier];
                  [v11 addObject:lookupIdentifier2];
                }
              }
            }

            v17 = [groups countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v12);
  }

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__49070;
  v42[4] = __Block_byref_object_dispose__49071;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__49070;
  v40[4] = __Block_byref_object_dispose__49071;
  v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __96__PLInitialSuggestionsStorageManager_initialSearchSuggestionsForPhotoLibrary_psiDatabase_error___block_invoke;
  v35[3] = &unk_1E7578898;
  v23 = v11;
  v36 = v23;
  v24 = v32;
  v37 = v24;
  v38 = v40;
  v39 = v42;
  [v24 performBlockAndWait:v35];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __96__PLInitialSuggestionsStorageManager_initialSearchSuggestionsForPhotoLibrary_psiDatabase_error___block_invoke_48;
  v34[3] = &unk_1E756D3A8;
  v34[4] = v40;
  v34[5] = v42;
  v25 = [obj _pl_map:v34];

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);

  return v25;
}

void __96__PLInitialSuggestionsStorageManager_initialSearchSuggestionsForPhotoLibrary_psiDatabase_error___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = +[PLPerson fetchRequest];
  [v2 setResultType:0];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personUUID", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = a1;
  v5 = [*(a1 + 40) managedObjectContext];
  v32 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v32];
  v7 = v32;
  if (v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = v6;
      v23 = v7;
      v24 = v5;
      v25 = v2;
      v27 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 displayName];
          v13 = [v12 length];
          if (v13)
          {
            v5 = [v11 displayName];
            v14 = v5;
          }

          else
          {
            v14 = 0;
          }

          v15 = *(*(*(v4 + 48) + 8) + 40);
          v16 = [v11 personUUID];
          [v15 setObject:v14 forKeyedSubscript:v16];

          if (v13)
          {
          }

          [v11 isMeConfidence];
          if (v17 > 0.0)
          {
            v18 = [v11 personUUID];
            v19 = *(*(v4 + 56) + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v9);
      v5 = v24;
      v2 = v25;
      v6 = v22;
      v7 = v23;
    }

    v21 = obj;
  }

  else
  {
    v21 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v7;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Encountered error fetching persons for candidate groups: %@.", buf, 0xCu);
    }
  }
}

PLSearchSuggestionCandidate *__96__PLInitialSuggestionsStorageManager_initialSearchSuggestionsForPhotoLibrary_psiDatabase_error___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstGroup];
  v5 = [v3 secondGroup];
  v6 = [v4 contentString];
  v7 = [v5 contentString];
  if ([v4 category] == 1300 || objc_msgSend(v4, "category") == 1301 || objc_msgSend(v4, "category") == 1330 || objc_msgSend(v4, "category") == 1331)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v9 = [v4 lookupIdentifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = v10;

      v6 = v11;
    }
  }

  if ([v5 category] == 1300 || objc_msgSend(v5, "category") == 1301 || objc_msgSend(v5, "category") == 1330 || objc_msgSend(v5, "category") == 1331)
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = [v5 lookupIdentifier];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (v14)
    {
      v15 = v14;

      v7 = v15;
    }
  }

  v16 = [v4 lookupIdentifier];
  v17 = [v16 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  v18 = [v5 lookupIdentifier];
  v19 = [v18 isEqual:*(*(*(a1 + 40) + 8) + 40)];

  v20 = [[PSIRankedGroupV2 alloc] initWithGroup:v4 displayString:v6 isMePerson:v17];
  v21 = [[PSIRankedGroupV2 alloc] initWithGroup:v5 displayString:v7 isMePerson:v19];
  v22 = [PLSearchSuggestionCandidate alloc];
  v23 = [v3 suggestionTemplate];
  v24 = [(PLSearchSuggestionCandidate *)v22 initWithSearchSuggestionTemplate:v23 firstGroup:v20 secondGroup:v21 assetIdsForDateFilter:0 minAssetResultCountPerSuggestion:0];

  [v3 dateLastUsed];
  [(PLSearchSuggestionCandidate *)v24 setDateLastUsed:?];

  return v24;
}

@end