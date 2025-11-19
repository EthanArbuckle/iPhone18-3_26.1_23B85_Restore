@interface PLAssetResourceUploadJobConfiguration
+ (PLAssetResourceUploadJobConfiguration)configurationWithBundleIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (PLAssetResourceUploadJobConfiguration)configurationWithObjectID:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (PLAssetResourceUploadJobConfiguration)configurationWithUUID:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (id)_configurationWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
+ (id)fetchAllConfigurationsInContext:(id)a3 error:(id *)a4;
+ (id)insertIntoManagedObjectContext:(id)a3 uuid:(id)a4 bundleID:(id)a5;
+ (unint64_t)countOfConfigurationsInContext:(id)a3 error:(id *)a4;
+ (void)rebuildWithLibrary:(id)a3;
+ (void)signalPendingBackgroundProcessingForLibrary:(id)a3;
+ (void)signalPendingBackgroundUploadWorkItemForLibrary:(id)a3;
- (BOOL)_isValidForJournalPersistenceOnDCIM;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (void)didSave;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation PLAssetResourceUploadJobConfiguration

- (BOOL)_isValidForJournalPersistenceOnDCIM
{
  v2 = [(PLManagedObject *)self pathManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isDCIM];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)prepareForDeletion
{
  v7.receiver = self;
  v7.super_class = PLAssetResourceUploadJobConfiguration;
  [(PLAssetResourceUploadJobConfiguration *)&v7 prepareForDeletion];
  if ([(PLAssetResourceUploadJobConfiguration *)self _isValidForJournalPersistenceOnDCIM])
  {
    v3 = [PLDirectoryJournal alloc];
    v4 = [(PLManagedObject *)self pathManager];
    v5 = [(PLDirectoryJournal *)v3 initWithPathManager:v4 payloadClass:objc_opt_class()];

    [(PLDirectoryJournal *)v5 removePersistenceForManagedObject:self error:0];
  }

  v6 = [(PLAssetResourceUploadJobConfiguration *)self managedObjectContext];
  objc_opt_class();
  objc_opt_isKindOfClass();
}

- (void)didSave
{
  v8.receiver = self;
  v8.super_class = PLAssetResourceUploadJobConfiguration;
  [(PLManagedObject *)&v8 didSave];
  if ([(PLAssetResourceUploadJobConfiguration *)self needsPersistenceUpdate]&& ([(PLAssetResourceUploadJobConfiguration *)self isDeleted]& 1) == 0)
  {
    v3 = [(PLAssetResourceUploadJobConfiguration *)self managedObjectContext];
    v4 = [PLManagedObjectContext isDatabaseCreationContext:v3];

    if (!v4)
    {
      v5 = [PLDirectoryJournal alloc];
      v6 = [(PLManagedObject *)self pathManager];
      v7 = [(PLDirectoryJournal *)v5 initWithPathManager:v6 payloadClass:objc_opt_class()];

      [(PLDirectoryJournal *)v7 persistManagedObject:self error:0];
    }

    [(PLAssetResourceUploadJobConfiguration *)self setNeedsPersistenceUpdate:0];
  }
}

- (void)willSave
{
  v20.receiver = self;
  v20.super_class = PLAssetResourceUploadJobConfiguration;
  [(PLManagedObject *)&v20 willSave];
  if ([(PLAssetResourceUploadJobConfiguration *)self _isValidForJournalPersistenceOnDCIM])
  {
    v3 = [PLDirectoryJournal alloc];
    v4 = [(PLManagedObject *)self pathManager];
    v5 = [(PLDirectoryJournal *)v3 initWithPathManager:v4 payloadClass:objc_opt_class()];

    [(PLAssetResourceUploadJobConfiguration *)self setNeedsPersistenceUpdate:[(PLDirectoryJournal *)v5 shouldPersistManagedObject:self]];
  }

  objc_opt_class();
  v6 = [(PLAssetResourceUploadJobConfiguration *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([(PLAssetResourceUploadJobConfiguration *)self isDeleted]& 1) == 0)
  {
    if ([(PLAssetResourceUploadJobConfiguration *)self isInserted])
    {
      v8 = objc_opt_class();
      v9 = [(PLManagedObject *)self photoLibrary];
      [v8 signalPendingBackgroundProcessingForLibrary:v9];
    }

    v10 = [(PLAssetResourceUploadJobConfiguration *)self changedValues];
    v11 = [v10 objectForKeyedSubscript:@"state"];

    if (v11)
    {
      v12 = [(PLAssetResourceUploadJobConfiguration *)self state];
      if ((v12 - 2) >= 2)
      {
        if (v12 == 1)
        {
          v15 = [(PLManagedObject *)self photoLibrary];
          [PLAssetResourceUploadJob deleteUploadJobsWithConfiguration:self inPhotoLibrary:v15];

          v16 = [v10 objectForKeyedSubscript:@"attemptCount"];
          if (!v16 || (v17 = v16, [v10 objectForKeyedSubscript:@"attemptCount"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "shortValue"), v18, v17, v19))
          {
            if ([(PLAssetResourceUploadJobConfiguration *)self attemptCount])
            {
              [(PLAssetResourceUploadJobConfiguration *)self setAttemptCount:0];
            }
          }
        }
      }

      else
      {
        v13 = objc_opt_class();
        v14 = [(PLManagedObject *)self photoLibrary];
        [v13 signalPendingBackgroundProcessingForLibrary:v14];
      }
    }
  }
}

+ (void)rebuildWithLibrary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  if ([v5 isRebuildingAssetResourceUploadJobConfiguration])
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Encountered an asset resource upload job configuration rebuild indicator file. Will resume rebuilding asset resource upload job configurations", buf, 2u);
    }

    goto LABEL_10;
  }

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLAssetResourceUploadJobConfiguration entityName];
  v6 = [v7 fetchRequestWithEntityName:v8];

  v9 = [v3 managedObjectContext];
  v21 = 0;
  v10 = [v9 countForFetchRequest:v6 error:&v21];
  v11 = v21;

  if (!v10)
  {
LABEL_9:

LABEL_10:
    [v5 setIsRebuildingAssetResourceUploadJobConfiguration:1];
    v13 = [PLDirectoryJournal alloc];
    v14 = [v3 pathManager];
    v6 = [(PLDirectoryJournal *)v13 initWithPathManager:v14 payloadClass:objc_opt_class()];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PLAssetResourceUploadJobConfiguration_rebuildWithLibrary___block_invoke;
    v19[3] = &unk_1E756A490;
    v20 = v3;
    v18 = 0;
    v15 = [v6 enumeratePayloadsUsingBlock:v19 error:&v18];
    v11 = v18;
    if ((v15 & 1) == 0)
    {
      v16 = PLMigrationGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to insert asset resource upload job configuration: %@", buf, 0xCu);
      }
    }

    [v5 setIsRebuildingAssetResourceUploadJobConfiguration:0];
    v17 = v20;
    goto LABEL_15;
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error fetching count of asset resource upload job configurations in library, will proceed with rebuild: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v17 = PLMigrationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Found existing asset resource upload job configurations in library, skipping filesystem rebuild", buf, 2u);
  }

LABEL_15:
}

void __60__PLAssetResourceUploadJobConfiguration_rebuildWithLibrary___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payloadID];
  v5 = [v4 payloadIDString];
  v6 = [*(a1 + 32) managedObjectContext];
  v7 = [PLAssetResourceUploadJobConfiguration configurationWithUUID:v5 managedObjectContext:v6 error:0];

  if (!v7)
  {
    v8 = [*(a1 + 32) managedObjectContext];
    v9 = [v3 insertAssetResourceUploadJobConfigurationFromDataInManagedObjectContext:v8];

    if (!v9)
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Skipping asset resource upload job configuration for journal payload: %@", &v11, 0xCu);
      }
    }
  }
}

+ (id)fetchAllConfigurationsInContext:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = +[PLAssetResourceUploadJobConfiguration entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  [v8 setIncludesPropertyValues:1];
  [v8 setReturnsObjectsAsFaults:0];
  v15 = 0;
  v9 = [v6 executeFetchRequest:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (!v12)
  {
    v13 = v10;
    *a4 = v11;
  }

  return v9;
}

+ (unint64_t)countOfConfigurationsInContext:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = +[PLAssetResourceUploadJobConfiguration entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  v15 = 0;
  v9 = [v6 countForFetchRequest:v8 error:&v15];

  v10 = v15;
  v11 = v10;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
  {
    v13 = v10;
    *a4 = v11;
  }

  return v9;
}

+ (id)_configurationWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__27862;
    v28 = __Block_byref_object_dispose__27863;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__27862;
    v22 = __Block_byref_object_dispose__27863;
    v23 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __96__PLAssetResourceUploadJobConfiguration__configurationWithPredicate_managedObjectContext_error___block_invoke;
    v13[3] = &unk_1E7578898;
    v14 = v7;
    v15 = v8;
    v16 = &v18;
    v17 = &v24;
    [v15 performBlockAndWait:v13];
    v9 = v25[5];
    v10 = v19[5];
    if (!v9 && a5)
    {
      v10 = v10;
      *a5 = v10;
    }

    v11 = v25[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __96__PLAssetResourceUploadJobConfiguration__configurationWithPredicate_managedObjectContext_error___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLAssetResourceUploadJobConfiguration entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setPredicate:a1[4]];
  [v4 setFetchLimit:1];
  v5 = a1[5];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch asset resource upload job configuration. Error: %@", buf, 0xCu);
    }
  }

  if ([v7 count])
  {
    v10 = [v7 firstObject];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

+ (PLAssetResourceUploadJobConfiguration)configurationWithBundleIdentifier:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = a4;
    v10 = [v8 predicateWithFormat:@"%K == %@", @"bundleIdentifier", a3];
    v11 = [a1 _configurationWithPredicate:v10 managedObjectContext:v9 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PLAssetResourceUploadJobConfiguration)configurationWithUUID:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = a4;
    v10 = [v8 predicateWithFormat:@"%K == %@", @"uuid", a3];
    v11 = [a1 _configurationWithPredicate:v10 managedObjectContext:v9 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (PLAssetResourceUploadJobConfiguration)configurationWithObjectID:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = a4;
    v10 = [v8 predicateWithFormat:@"self == %@", a3];
    v11 = [a1 _configurationWithPredicate:v10 managedObjectContext:v9 error:a5];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)signalPendingBackgroundProcessingForLibrary:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PLAssetResourceUploadJobConfiguration_signalPendingBackgroundProcessingForLibrary___block_invoke;
  v5[3] = &unk_1E75781E8;
  v6 = v3;
  v4 = v3;
  [v4 performBlock:v5];
}

void __85__PLAssetResourceUploadJobConfiguration_signalPendingBackgroundProcessingForLibrary___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[PLBackgroundJobWorkerTypes maskForAssetResourceExtensionRunner];
  [v1 signalBackgroundProcessingNeededForWorkerTypes:v2];
}

+ (void)signalPendingBackgroundUploadWorkItemForLibrary:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = [a1 entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"state", 2];
  [v7 setPredicate:v8];

  [v7 setResultType:2];
  v31[0] = @"bundleIdentifier";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v7 setPropertiesToFetch:v9];

  v10 = [v4 managedObjectContext];
  v27 = 0;
  v11 = [v10 executeFetchRequest:v7 error:&v27];
  v12 = v27;
  if (!v11)
  {
    v13 = PLBackendGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v29 = v12;
    v19 = "Failed to fetch asset resource upload configurations to signal the background job. Error: %@";
    v20 = v13;
    v21 = OS_LOG_TYPE_ERROR;
    v22 = 12;
LABEL_15:
    _os_log_impl(&dword_19BF1F000, v20, v21, v19, buf, v22);
    goto LABEL_16;
  }

  if (![v11 count])
  {
    v13 = PLBackendGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v19 = "Fetch returned 0 bundle identifiers";
    v20 = v13;
    v21 = OS_LOG_TYPE_DEBUG;
    v22 = 2;
    goto LABEL_15;
  }

  v13 = [v11 valueForKey:@"bundleIdentifier"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v4 addBackgroundJobWorkItemIfNeededWithIdentifier:*(*(&v23 + 1) + 8 * i) jobType:7 jobFlags:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v15);
  }

  [a1 signalPendingBackgroundProcessingForLibrary:v4];
LABEL_16:
}

+ (id)insertIntoManagedObjectContext:(id)a3 uuid:(id)a4 bundleID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [a1 entityName];
  v12 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v11, v10, 0);

  if (v8)
  {
    v13 = v8;
    if (!v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v15 UUIDString];

  if (v12)
  {
LABEL_3:
    [v12 setUuid:v13];
  }

LABEL_4:
  [v12 setBundleIdentifier:v9];

  return v12;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLAssetResourceUploadJobConfigurationEntryPayload alloc] initWithManagedObject:self changedKeys:v4];

  return v5;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadID
{
  v2 = [(PLAssetResourceUploadJobConfiguration *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

@end