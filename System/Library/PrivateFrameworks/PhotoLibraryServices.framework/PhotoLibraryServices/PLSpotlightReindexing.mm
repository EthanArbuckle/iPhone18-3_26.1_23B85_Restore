@interface PLSpotlightReindexing
+ (BOOL)shouldReindexAllItemsForLibraryIdentifier:(int64_t)identifier;
+ (id)_deleteFileInDirectoryURL:(id)l;
+ (id)_mutableReindexingDictionaryInDirectoryURL:(id)l;
+ (id)_recordReindexAllItemsForBundleID:(id)d directoryURL:(id)l reindexReason:(id)reason;
+ (id)_recordReindexIdentifiersWithIdentifiers:(id)identifiers bundleID:(id)d directoryURL:(id)l;
+ (id)_searchDirectoryURL;
+ (id)_writeReindexingDictionary:(id)dictionary toDirectoryURL:(id)l;
+ (id)deleteProgressFileWithPathManager:(id)manager;
+ (id)eraseReindexIdentifiers;
+ (id)recordReindexAllItemsForBundleID:(id)d reindexReason:(id)reason;
+ (id)recordReindexIdentifiersWithIdentifiers:(id)identifiers bundleID:(id)d;
+ (id)reindexIdentifiers;
+ (id)spotlightReasonForReindexingAllItemsForLibraryIdentifier:(int64_t)identifier;
+ (id)spotlightReindexingContents;
+ (void)drainSpotlightReindexIdentifiersIfNeededForLibrary:(id)library;
@end

@implementation PLSpotlightReindexing

+ (id)_writeReindexingDictionary:(id)dictionary toDirectoryURL:(id)l
{
  lCopy = l;
  v20 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:200 options:0 error:&v20];
  v7 = v20;
  if (v6)
  {
    v8 = [lCopy URLByAppendingPathComponent:@"spotlightProgress.plist"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v19 = 0;
    v10 = [defaultManager removeItemAtURL:v8 error:&v19];
    v11 = v19;

    if (v10 & 1) != 0 || (PLIsErrorFileNotFound())
    {
      v18 = 0;
      v12 = [v6 writeToURL:v8 options:1073741825 error:&v18];
      v13 = v18;
      v14 = MEMORY[0x1E69BF2D0];
      if (v12)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v16 = [v14 successWithResult:null];
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

+ (id)_mutableReindexingDictionaryInDirectoryURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"spotlightProgress.plist"];
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

+ (id)_recordReindexIdentifiersWithIdentifiers:(id)identifiers bundleID:(id)d directoryURL:(id)l
{
  identifiersCopy = identifiers;
  lCopy = l;
  v9 = [self _mutableReindexingDictionaryInDirectoryURL:lCopy];
  if ([v9 isFailure])
  {
    v10 = v9;
  }

  else
  {
    result = [v9 result];
    v12 = [result objectForKeyedSubscript:@"PLReindexAllEntries"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = MEMORY[0x1E69BF2D0];
      null = [MEMORY[0x1E695DFB0] null];
      v10 = [v14 successWithResult:null];
    }

    else
    {
      null = [result objectForKeyedSubscript:@"PLReindexIdentifiers"];
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v17 = v16;
      if (null)
      {
        [v16 addObjectsFromArray:null];
      }

      [v17 addObjectsFromArray:identifiersCopy];
      allObjects = [v17 allObjects];
      [result setObject:allObjects forKeyedSubscript:@"PLReindexIdentifiers"];

      v10 = [self _writeReindexingDictionary:result toDirectoryURL:lCopy];
    }
  }

  return v10;
}

+ (id)_recordReindexAllItemsForBundleID:(id)d directoryURL:(id)l reindexReason:(id)reason
{
  v19[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  lCopy = l;
  if ([reasonCopy length])
  {
    v18[0] = @"PLReindexAllEntries";
    v18[1] = @"PLReindexAllEntriesReason";
    v19[0] = MEMORY[0x1E695E118];
    v19[1] = reasonCopy;
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
  v14 = [self _writeReindexingDictionary:v13 toDirectoryURL:lCopy];

  return v14;
}

+ (id)_deleteFileInDirectoryURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"spotlightProgress.plist"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [defaultManager removeItemAtURL:v3 error:&v11];
  v6 = v11;

  if ((v5 & 1) != 0 || PLIsErrorFileNotFound())
  {
    v7 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 successWithResult:null];
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
  pathManager = [v4 pathManager];
  searchIndexDirectory = [pathManager searchIndexDirectory];
  v8 = [v5 fileURLWithPath:searchIndexDirectory isDirectory:1];

  return v8;
}

+ (void)drainSpotlightReindexIdentifiersIfNeededForLibrary:(id)library
{
  v20 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  libraryServicesManager = [libraryCopy libraryServicesManager];
  wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

  if (wellKnownPhotoLibraryIdentifier != 3 && ![PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:wellKnownPhotoLibraryIdentifier])
  {
    v6 = +[PLSpotlightReindexing reindexIdentifiers];
    if ([v6 isFailure])
    {
      v7 = PLSearchBackendDonationsGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        error = [v6 error];
        *buf = 138412290;
        v19 = error;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to load spotlight reindex identifiers with error: %@", buf, 0xCu);
      }
    }

    else
    {
      result = [v6 result];
      v10 = [result count];

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
      v17 = libraryCopy;
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
  _searchDirectoryURL = [self _searchDirectoryURL];
  v4 = [self _mutableReindexingDictionaryInDirectoryURL:_searchDirectoryURL];

  if ([v4 isFailure])
  {
    v5 = MEMORY[0x1E69BF2D0];
    error = [v4 error];
    v7 = [v5 failureWithError:error];
  }

  else
  {
    error = [v4 result];
    [error setObject:0 forKeyedSubscript:@"PLReindexIdentifiers"];
    _searchDirectoryURL2 = [self _searchDirectoryURL];
    v7 = [self _writeReindexingDictionary:error toDirectoryURL:_searchDirectoryURL2];
  }

  return v7;
}

+ (id)reindexIdentifiers
{
  _searchDirectoryURL = [self _searchDirectoryURL];
  v4 = [self _mutableReindexingDictionaryInDirectoryURL:_searchDirectoryURL];

  if ([v4 isFailure])
  {
    v5 = MEMORY[0x1E69BF2D0];
    error = [v4 error];
    v7 = [v5 failureWithError:error];
  }

  else
  {
    error = [v4 result];
    v8 = [error objectForKeyedSubscript:@"PLReindexIdentifiers"];
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

+ (id)spotlightReasonForReindexingAllItemsForLibraryIdentifier:(int64_t)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  _searchDirectoryURL = [self _searchDirectoryURL];
  v5 = [self _mutableReindexingDictionaryInDirectoryURL:_searchDirectoryURL];

  if ([v5 isSuccess])
  {
    result = [v5 result];
    v7 = [result objectForKeyedSubscript:@"PLReindexAllEntriesReason"];
  }

  else
  {
    v8 = PLSearchBackendIndexRebuildGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      error = [v5 error];
      v11 = 138412290;
      v12 = error;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to read Spotlight's reason for reindexing all items: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)shouldReindexAllItemsForLibraryIdentifier:(int64_t)identifier
{
  if (identifier == 3 || [PLSpotlightDonationUtilities shouldUseSpotlightPrivateIndexForLibraryIdentifier:?])
  {
    return 0;
  }

  _searchDirectoryURL = [self _searchDirectoryURL];
  v6 = [self _mutableReindexingDictionaryInDirectoryURL:_searchDirectoryURL];

  if ([v6 isSuccess])
  {
    result = [v6 result];
    v8 = [result objectForKeyedSubscript:@"PLReindexAllEntries"];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)recordReindexIdentifiersWithIdentifiers:(id)identifiers bundleID:(id)d
{
  dCopy = d;
  identifiersCopy = identifiers;
  _searchDirectoryURL = [self _searchDirectoryURL];
  v9 = [self _recordReindexIdentifiersWithIdentifiers:identifiersCopy bundleID:dCopy directoryURL:_searchDirectoryURL];

  return v9;
}

+ (id)recordReindexAllItemsForBundleID:(id)d reindexReason:(id)reason
{
  reasonCopy = reason;
  dCopy = d;
  _searchDirectoryURL = [self _searchDirectoryURL];
  v9 = [self _recordReindexAllItemsForBundleID:dCopy directoryURL:_searchDirectoryURL reindexReason:reasonCopy];

  return v9;
}

+ (id)deleteProgressFileWithPathManager:(id)manager
{
  v4 = MEMORY[0x1E695DFF8];
  searchIndexDirectory = [manager searchIndexDirectory];
  v6 = [v4 fileURLWithPath:searchIndexDirectory isDirectory:1];

  v7 = [self _deleteFileInDirectoryURL:v6];

  return v7;
}

+ (id)spotlightReindexingContents
{
  _searchDirectoryURL = [self _searchDirectoryURL];
  v4 = [self _mutableReindexingDictionaryInDirectoryURL:_searchDirectoryURL];

  isSuccess = [v4 isSuccess];
  v6 = MEMORY[0x1E69BF2D0];
  if (isSuccess)
  {
    v7 = MEMORY[0x1E695DF20];
    result = [v4 result];
    v9 = [v7 dictionaryWithDictionary:result];
    v10 = [v6 successWithResult:v9];
  }

  else
  {
    result = [v4 error];
    v10 = [v6 failureWithError:result];
  }

  return v10;
}

@end