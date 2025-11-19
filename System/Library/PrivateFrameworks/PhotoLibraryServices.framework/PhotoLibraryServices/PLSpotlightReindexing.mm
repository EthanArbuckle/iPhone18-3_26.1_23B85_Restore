@interface PLSpotlightReindexing
+ (BOOL)shouldReindexAllItemsForLibraryIdentifier:(int64_t)a3;
+ (id)_deleteFileInDirectoryURL:(id)a3;
+ (id)_mutableReindexingDictionaryInDirectoryURL:(id)a3;
+ (id)_recordReindexAllItemsForBundleID:(id)a3 directoryURL:(id)a4 reindexReason:(id)a5;
+ (id)_recordReindexIdentifiersWithIdentifiers:(id)a3 bundleID:(id)a4 directoryURL:(id)a5;
+ (id)_searchDirectoryURL;
+ (id)_writeReindexingDictionary:(id)a3 toDirectoryURL:(id)a4;
+ (id)deleteProgressFileWithPathManager:(id)a3;
+ (id)eraseReindexIdentifiers;
+ (id)recordReindexAllItemsForBundleID:(id)a3 reindexReason:(id)a4;
+ (id)recordReindexIdentifiersWithIdentifiers:(id)a3 bundleID:(id)a4;
+ (id)reindexIdentifiers;
+ (id)spotlightReasonForReindexingAllItemsForLibraryIdentifier:(int64_t)a3;
+ (id)spotlightReindexingContents;
+ (void)drainSpotlightReindexIdentifiersIfNeededForLibrary:(id)a3;
@end

@implementation PLSpotlightReindexing

+ (id)_writeReindexingDictionary:(id)a3 toDirectoryURL:(id)a4
{
  v5 = a4;
  v20 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = [v5 URLByAppendingPathComponent:@"spotlightProgress.plist"];
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v10 = [v9 removeItemAtURL:v8 error:&v19];
    v11 = v19;

    if (v10 & 1) != 0 || (PLIsErrorFileNotFound())
    {
      v18 = 0;
      v12 = [v6 writeToURL:v8 options:1073741825 error:&v18];
      v13 = v18;
      v14 = MEMORY[0x1E69BF2D0];
      if (v12)
      {
        v15 = [MEMORY[0x1E695DFB0] null];
        v16 = [v14 successWithResult:v15];
      }

      else
      {
        v16 = [MEMORY[0x1E69BF2D0] failureWithError:v13];
      }
    }

    else
    {
      v16 = [MEMORY[0x1E69BF2D0] failureWithError:v11];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69BF2D0] failureWithError:v7];
  }

  return v16;
}

+ (id)_mutableReindexingDictionaryInDirectoryURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"spotlightProgress.plist"];
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v3 error:&v9];
  v5 = v9;
  if (PLIsErrorFileNotFound())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v4 = v6;
  }

  if (v4)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v4];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v5];
  }
  v7 = ;

  return v7;
}

+ (id)_recordReindexIdentifiersWithIdentifiers:(id)a3 bundleID:(id)a4 directoryURL:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a1 _mutableReindexingDictionaryInDirectoryURL:v8];
  if ([v9 isFailure])
  {
    v10 = v9;
  }

  else
  {
    v11 = [v9 result];
    v12 = [v11 objectForKeyedSubscript:@"PLReindexAllEntries"];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      v14 = MEMORY[0x1E69BF2D0];
      v15 = [MEMORY[0x1E695DFB0] null];
      v10 = [v14 successWithResult:v15];
    }

    else
    {
      v15 = [v11 objectForKeyedSubscript:@"PLReindexIdentifiers"];
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = v16;
      if (v15)
      {
        [v16 addObjectsFromArray:v15];
      }

      [v17 addObjectsFromArray:v7];
      v18 = [v17 allObjects];
      [v11 setObject:v18 forKeyedSubscript:@"PLReindexIdentifiers"];

      v10 = [a1 _writeReindexingDictionary:v11 toDirectoryURL:v8];
    }
  }

  return v10;
}

+ (id)_recordReindexAllItemsForBundleID:(id)a3 directoryURL:(id)a4 reindexReason:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  if ([v7 length])
  {
    v18[0] = @"PLReindexAllEntries";
    v18[1] = @"PLReindexAllEntriesReason";
    v19[0] = MEMORY[0x1E695E118];
    v19[1] = v7;
    v9 = MEMORY[0x1E695DF20];
    v10 = v19;
    v11 = v18;
    v12 = 2;
  }

  else
  {
    v16 = @"PLReindexAllEntries";
    v17 = MEMORY[0x1E695E118];
    v9 = MEMORY[0x1E695DF20];
    v10 = &v17;
    v11 = &v16;
    v12 = 1;
  }

  v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  v14 = [a1 _writeReindexingDictionary:v13 toDirectoryURL:v8];

  return v14;
}

+ (id)_deleteFileInDirectoryURL:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"spotlightProgress.plist"];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v11];
  v6 = v11;

  if ((v5 & 1) != 0 || PLIsErrorFileNotFound())
  {
    v7 = MEMORY[0x1E69BF2D0];
    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 successWithResult:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E69BF2D0] failureWithError:v6];
  }

  return v9;
}

+ (id)_searchDirectoryURL
{
  v2 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:1];
  v3 = +[PLPhotoLibraryBundleController sharedBundleController];
  v4 = [v3 lookupOrCreateBundleForLibraryURL:v2];

  v5 = MEMORY[0x1E695DFF8];
  v6 = [v4 pathManager];
  v7 = [v6 searchIndexDirectory];
  v8 = [v5 fileURLWithPath:v7 isDirectory:1];

  return v8;
}

+ (void)drainSpotlightReindexIdentifiersIfNeededForLibrary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 libraryServicesManager];
  v5 = [v4 wellKnownPhotoLibraryIdentifier];

  if (v5 != 3 && ![PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:v5])
  {
    v6 = +[PLSpotlightReindexing reindexIdentifiers];
    if ([v6 isFailure])
    {
      v7 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 error];
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to load spotlight reindex identifiers with error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = [v6 result];
      v10 = [v9 count];

      if (!v10)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __76__PLSpotlightReindexing_drainSpotlightReindexIdentifiersIfNeededForLibrary___block_invoke;
      v15 = &unk_1E7578848;
      v16 = v6;
      v17 = v3;
      [v17 performTransactionAndWait:&v12];
      v11 = [PLSpotlightReindexing eraseReindexIdentifiers:v12];

      v7 = v16;
    }

    goto LABEL_9;
  }

LABEL_10:
}

void __76__PLSpotlightReindexing_drainSpotlightReindexIdentifiersIfNeededForLibrary___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PLSearchBackendDonationsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) result];
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Adding jobs for reindexing identifiers for Spotlight reindex request: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(a1 + 32) result];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:*(*(&v10 + 1) + 8 * v8++) flags:4332 inLibrary:*(a1 + 40)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (id)eraseReindexIdentifiers
{
  v3 = [a1 _searchDirectoryURL];
  v4 = [a1 _mutableReindexingDictionaryInDirectoryURL:v3];

  if ([v4 isFailure])
  {
    v5 = MEMORY[0x1E69BF2D0];
    v6 = [v4 error];
    v7 = [v5 failureWithError:v6];
  }

  else
  {
    v6 = [v4 result];
    [v6 setObject:0 forKeyedSubscript:@"PLReindexIdentifiers"];
    v8 = [a1 _searchDirectoryURL];
    v7 = [a1 _writeReindexingDictionary:v6 toDirectoryURL:v8];
  }

  return v7;
}

+ (id)reindexIdentifiers
{
  v3 = [a1 _searchDirectoryURL];
  v4 = [a1 _mutableReindexingDictionaryInDirectoryURL:v3];

  if ([v4 isFailure])
  {
    v5 = MEMORY[0x1E69BF2D0];
    v6 = [v4 error];
    v7 = [v5 failureWithError:v6];
  }

  else
  {
    v6 = [v4 result];
    v8 = [v6 objectForKeyedSubscript:@"PLReindexIdentifiers"];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v7 = [MEMORY[0x1E69BF2D0] successWithResult:v9];
  }

  return v7;
}

+ (id)spotlightReasonForReindexingAllItemsForLibraryIdentifier:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 _searchDirectoryURL];
  v5 = [a1 _mutableReindexingDictionaryInDirectoryURL:v4];

  if ([v5 isSuccess])
  {
    v6 = [v5 result];
    v7 = [v6 objectForKeyedSubscript:@"PLReindexAllEntriesReason"];
  }

  else
  {
    v8 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v5 error];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to read Spotlight's reason for reindexing all items: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)shouldReindexAllItemsForLibraryIdentifier:(int64_t)a3
{
  if (a3 == 3 || [PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:?])
  {
    return 0;
  }

  v5 = [a1 _searchDirectoryURL];
  v6 = [a1 _mutableReindexingDictionaryInDirectoryURL:v5];

  if ([v6 isSuccess])
  {
    v7 = [v6 result];
    v8 = [v7 objectForKeyedSubscript:@"PLReindexAllEntries"];
    v4 = [v8 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)recordReindexIdentifiersWithIdentifiers:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _searchDirectoryURL];
  v9 = [a1 _recordReindexIdentifiersWithIdentifiers:v7 bundleID:v6 directoryURL:v8];

  return v9;
}

+ (id)recordReindexAllItemsForBundleID:(id)a3 reindexReason:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _searchDirectoryURL];
  v9 = [a1 _recordReindexAllItemsForBundleID:v7 directoryURL:v8 reindexReason:v6];

  return v9;
}

+ (id)deleteProgressFileWithPathManager:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a3 searchIndexDirectory];
  v6 = [v4 fileURLWithPath:v5 isDirectory:1];

  v7 = [a1 _deleteFileInDirectoryURL:v6];

  return v7;
}

+ (id)spotlightReindexingContents
{
  v3 = [a1 _searchDirectoryURL];
  v4 = [a1 _mutableReindexingDictionaryInDirectoryURL:v3];

  v5 = [v4 isSuccess];
  v6 = MEMORY[0x1E69BF2D0];
  if (v5)
  {
    v7 = MEMORY[0x1E695DF20];
    v8 = [v4 result];
    v9 = [v7 dictionaryWithDictionary:v8];
    v10 = [v6 successWithResult:v9];
  }

  else
  {
    v8 = [v4 error];
    v10 = [v6 failureWithError:v8];
  }

  return v10;
}

@end