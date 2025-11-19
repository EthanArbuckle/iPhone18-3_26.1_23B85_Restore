@interface PLPersistentContainer
+ (BOOL)_destroyPhotosDatabaseWithPath:(id)a3 backupToPath:(id)a4;
+ (BOOL)currentModelVersionMatchesLibrarySchemaVersionWithPathManager:(id)a3 error:(id *)a4;
+ (BOOL)shouldTrackIndexUse;
+ (NSManagedObjectModel)managedObjectModel;
+ (NSURL)managedObjectModelURL;
+ (id)newManagedObjectModel;
+ (int)librarySchemaVersionWithPathManager:(id)a3 error:(id *)a4;
+ (int64_t)_migrateOrRebuildDatabaseWithSharedPersistentStoreCoordinator:(id)a3 modelMigrator:(id)a4 migrationPolicy:(unsigned int)a5 error:(id *)a6;
+ (int64_t)_openAndMigrateStoreWithURL:(id)a3 options:(id)a4 coordinator:(id)a5 modelMigrator:(id)a6 migrationPolicy:(unsigned int)a7 error:(id *)a8;
+ (void)_getPersistentStoreURL:(id *)a3 options:(id *)a4 forDatabasePath:(id)a5 enableOrderKeyNotifications:(BOOL)a6;
+ (void)getConfigurationForDatabasePath:(id)a3 withBlock:(id)a4;
+ (void)removePhotosDatabaseWithPathManager:(id)a3;
- (BOOL)_configurePersistentStoreCoordinator:(id)a3 overrideCurrentModelVersionInStore:(BOOL)a4 error:(id *)a5;
- (BOOL)_configureXPCPersistentStoreCoordinator:(id)a3 error:(id *)a4;
- (BOOL)shouldUseXPCPhotoLibraryStore;
- (PLPersistentContainer)initWithLibraryURL:(id)a3 lazyAssetsdClient:(id)a4;
- (id)newPersistentStoreCoordinatorForMigration:(id *)a3;
- (id)newSharedPersistentStoreCoordinator:(id *)a3;
- (id)sharedPersistentStoreCoordinatorWithError:(id *)a3;
- (int64_t)configureSharedPersistentStoreCoordinatorAndMigrateOrRebuildIfNecessaryWithModelMigrator:(id)a3 migrationPolicy:(unsigned int)a4 error:(id *)a5;
- (void)dealloc;
- (void)removeSharedPersistentStoreCoordinatorWithReason:(id)a3;
@end

@implementation PLPersistentContainer

+ (NSURL)managedObjectModelURL
{
  pl_dispatch_once();
  v2 = managedObjectModelURL_url;

  return v2;
}

void __46__PLPersistentContainer_managedObjectModelURL__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v3 = [v2 URLForResource:@"photos" withExtension:@"momd"];
  v4 = managedObjectModelURL_url;
  managedObjectModelURL_url = v3;

  if (!managedObjectModelURL_url)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PLPersistentContainer.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }
}

+ (id)newManagedObjectModel
{
  v2 = [a1 managedObjectModelURL];
  if (!v2)
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "managedObjectModel url is nil", buf, 2u);
    }

    goto LABEL_9;
  }

  v3 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v2];
  if (!v3)
  {
    [MEMORY[0x1E69BF238] logDiagnosticInfoForURL:v2];
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "managedObjectModel is nil", v9, 2u);
    }

    v5 = 0;
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  [v3 _setIsEditable:0];
  v5 = v4;
  v6 = v5;
LABEL_10:

  return v6;
}

- (BOOL)shouldUseXPCPhotoLibraryStore
{
  v2 = self;
  v3 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:self->_libraryURL];
  v4 = [v3 photosDatabasePath];
  memset(v6, 0, sizeof(v6));
  LOBYTE(v2) = [(PLXPCPhotoLibraryStorePolicy *)v2->_xpcStorePolicy shouldUseXPCStoreForDatabasePath:v4 auditToken:v6];

  return v2;
}

id __43__PLPersistentContainer_managedObjectModel__block_invoke(uint64_t a1)
{
  v2 = sSharedModel;
  if (!sSharedModel)
  {
    v3 = [*(a1 + 32) newManagedObjectModel];
    v4 = sSharedModel;
    sSharedModel = v3;

    v2 = sSharedModel;
  }

  return v2;
}

+ (BOOL)shouldTrackIndexUse
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 stringForKey:@"com.apple.photos.TrackIndexUse"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = MEMORY[0x19EAEE230]();
  }

  v5 = v4;

  return v5;
}

+ (NSManagedObjectModel)managedObjectModel
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

- (BOOL)_configurePersistentStoreCoordinator:(id)a3 overrideCurrentModelVersionInStore:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:self->_libraryURL];
  v10 = objc_opt_class();
  v58 = 0;
  v59 = 0;
  v11 = [v9 photosDatabasePath];
  [v10 _getPersistentStoreURL:&v59 options:&v58 forDatabasePath:v11 enableOrderKeyNotifications:1];
  v12 = v59;
  v13 = v58;

  v14 = PLMigrationGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v65 = v12;
    v66 = 2112;
    v67 = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Adding persistent store for URL: %@ with options: %@", buf, 0x16u);
  }

  v57 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __103__PLPersistentContainer__configurePersistentStoreCoordinator_overrideCurrentModelVersionInStore_error___block_invoke;
  v53[3] = &unk_1E756E3A0;
  v15 = v8;
  v54 = v15;
  v16 = v12;
  v55 = v16;
  v17 = v13;
  v56 = v17;
  v18 = [PLManagedObjectContext loadingPersistentStoreWithReason:0 error:&v57 workBlock:v53];
  v19 = v57;
  v20 = v19;
  if (v18)
  {
    v49 = a5;
    v50 = v19;
    v51 = v9;
    v21 = [v15 metadataForPersistentStore:v18];
    v22 = [v21 objectForKey:@"PLModelVersion"];
    v23 = [v22 intValue];
    v24 = +[PLModelMigrator currentModelVersion];
    if (v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    v26 = v23 == v24 || v25;
    if (v26)
    {
      self->_didConfigurePersistentStore = 1;
      v27 = v18;
    }

    else
    {
      v32 = PLMigrationGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = +[PLModelMigrator currentModelVersion];
        *buf = 138412546;
        v65 = v22;
        v66 = 1024;
        LODWORD(v67) = v33;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Incompatible version of Photos.sqlite store %@ != required version %d", buf, 0x12u);
      }

      v52 = 0;
      v34 = [v15 removePersistentStore:v18 error:&v52];
      v27 = v52;
      if ((v34 & 1) == 0)
      {
        v35 = PLMigrationGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v65 = v27;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Failed to remove incompatible Photos.sqlite store %@", buf, 0xCu);
        }
      }

      if (v49)
      {
        v36 = [v22 description];
        if (v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = @"None";
        }

        v38 = [v22 intValue];
        v39 = +[PLModelMigrator currentModelVersion];
        v47 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E69BFF48];
        v48 = v37;
        if (v38 >= v39)
        {
          v60[1] = @"CurrentVersion";
          v61[0] = v37;
          v60[0] = @"StoreVersion";
          v40 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
          v61[1] = v40;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
          v43 = v46;
          v42 = v47;
          v44 = 46006;
        }

        else
        {
          v62[1] = @"CurrentVersion";
          v63[0] = v37;
          v62[0] = @"StoreVersion";
          v40 = [MEMORY[0x1E696AD98] numberWithInt:{+[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")}];
          v63[1] = v40;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
          v43 = v46;
          v42 = v47;
          v44 = 46007;
        }

        *v49 = [v42 errorWithDomain:v43 code:v44 userInfo:v41];
      }
    }

    v20 = v50;
    v9 = v51;
  }

  else
  {
    v28 = PLMigrationGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      PLFilteredDescriptionForAddPersistentStoreError(v20);
      v30 = v29 = v20;
      *buf = 138412546;
      v65 = v17;
      v66 = 2112;
      v67 = v30;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to add Photos.sqlite store with options %@: %@", buf, 0x16u);

      v20 = v29;
    }

    if (a5)
    {
      v31 = v20;
      LOBYTE(v26) = 0;
      *a5 = v20;
    }

    else
    {
      LOBYTE(v26) = 0;
    }
  }

  return v26;
}

id __103__PLPersistentContainer__configurePersistentStoreCoordinator_overrideCurrentModelVersionInStore_error___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D4A8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

- (BOOL)_configureXPCPersistentStoreCoordinator:(id)a3 error:(id *)a4
{
  v40[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E69BF220] descriptionWithFileURL:self->_libraryURL];
    *buf = 138412290;
    v34 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Connecting to XPCPhotoLibraryStore %@", buf, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:self->_libraryURL];
  v10 = [(PLLazyObject *)self->_lazyAssetdClient objectValue];
  v11 = [[PLXPCPhotoLibraryStoreEndpointFactory alloc] initWithAssetsdClient:v10];
  v12 = *MEMORY[0x1E695D520];
  v39[0] = *MEMORY[0x1E695D510];
  v39[1] = v12;
  v40[0] = v11;
  v40[1] = MEMORY[0x1E695E118];
  v39[2] = *MEMORY[0x1E695D3C0];
  v40[2] = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
  v14 = MEMORY[0x1E695DFF8];
  v15 = [v9 photosDatabasePath];
  v16 = [v14 fileURLWithPath:v15 isDirectory:0];

  v17 = PLMigrationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v34 = v16;
    v35 = 2112;
    v36 = v13;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Adding XPC store at URL: %@ with options: %@", buf, 0x16u);
  }

  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__PLPersistentContainer__configureXPCPersistentStoreCoordinator_error___block_invoke;
  v28[3] = &unk_1E756E3A0;
  v18 = v6;
  v29 = v18;
  v19 = v16;
  v30 = v19;
  v20 = v13;
  v31 = v20;
  v21 = [PLManagedObjectContext loadingPersistentStoreWithReason:0 error:&v32 workBlock:v28];
  v22 = v32;
  if (v21)
  {
    *&self->_didConfigurePersistentStore = 257;
  }

  else
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      PLFilteredDescriptionForAddPersistentStoreError(v22);
      v24 = v27 = a4;
      *buf = 138412802;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      v37 = 2112;
      v38 = v24;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to connect to XPC PhotoLibraryStore %@ with options %@: %@", buf, 0x20u);

      a4 = v27;
    }

    if (a4)
    {
      v25 = v22;
      *a4 = v22;
    }
  }

  return v21 != 0;
}

id __71__PLPersistentContainer__configureXPCPersistentStoreCoordinator_error___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D528];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

- (int64_t)configureSharedPersistentStoreCoordinatorAndMigrateOrRebuildIfNecessaryWithModelMigrator:(id)a3 migrationPolicy:(unsigned int)a4 error:(id *)a5
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__311;
  v15 = __Block_byref_object_dispose__312;
  v16 = 0;
  v6 = a3;
  PLRunWithUnfairLock();
  v7 = v18[3];
  v8 = v12[5];
  if (v7 == 4 && a5)
  {
    v8 = v8;
    *a5 = v8;
  }

  v9 = v18[3];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __136__PLPersistentContainer_configureSharedPersistentStoreCoordinatorAndMigrateOrRebuildIfNecessaryWithModelMigrator_migrationPolicy_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695D6C0]);
    v4 = [objc_opt_class() managedObjectModel];
    v2 = [v3 initWithManagedObjectModel:v4];

    v5 = objc_opt_class();
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v15 = 0;
    v8 = [v5 _migrateOrRebuildDatabaseWithSharedPersistentStoreCoordinator:v2 modelMigrator:v6 migrationPolicy:v7 error:&v15];
    v9 = v15;
    v10 = v15;
    *(*(*(a1 + 48) + 8) + 24) = v8;
    if (*(*(*(a1 + 48) + 8) + 24) == 4)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
      v11 = PLMigrationGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x1E69BF220] descriptionWithFileURL:*(*(a1 + 32) + 64)];
        *buf = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to configure PSC for library %@ %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = v2;
      v11 = *(v13 + 24);
      *(v13 + 24) = v14;
    }
  }
}

- (void)removeSharedPersistentStoreCoordinatorWithReason:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v9 = objc_opt_class();
    v10 = 2048;
    v11 = self;
    v12 = 2080;
    v13 = "[PLPersistentContainer removeSharedPersistentStoreCoordinatorWithReason:]";
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s", buf, 0x20u);
  }

  v7 = v4;
  v6 = v4;
  PLRunWithUnfairLock();
}

void __74__PLPersistentContainer_removeSharedPersistentStoreCoordinatorWithReason___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v5 = [v2 persistentStores];
    if ([v5 count] != 1)
    {
      v6 = PLMigrationGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 count];
        v8 = *(*(a1 + 32) + 64);
        *buf = 67109378;
        *v39 = v7;
        *&v39[4] = 2112;
        *&v39[6] = v8;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Unexpected stores count %d in shared PSC for library %@", buf, 0x12u);
      }
    }

    v29 = v2;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        v12 = 0;
        do
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * v12);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __74__PLPersistentContainer_removeSharedPersistentStoreCoordinatorWithReason___block_invoke_52;
          v30[3] = &unk_1E75761B8;
          v31 = v29;
          v32 = v13;
          v33 = *(a1 + 32);
          [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v30];

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v10);
    }

    *(*(a1 + 32) + 32) = 1;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shared persistent store coordinator removed"];
    v15 = *(*(a1 + 32) + 64);
    if (v15)
    {
      v16 = [v15 path];
    }

    else
    {
      v16 = @"nil-library-path";
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = [*(a1 + 40) domain];
    v19 = [*(a1 + 40) code];
    v20 = *MEMORY[0x1E696A368];
    v40[0] = *MEMORY[0x1E696A278];
    v40[1] = v20;
    v41[0] = v14;
    v41[1] = v16;
    v40[2] = *MEMORY[0x1E696AA08];
    v41[2] = *(a1 + 40);
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v22 = [v17 errorWithDomain:v18 code:v19 userInfo:v21];
    v23 = *(a1 + 32);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = PLMigrationGetLog();
    v2 = v29;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      v27 = *(*(a1 + 32) + 64);
      *buf = 138412546;
      *v39 = v27;
      *&v39[8] = 2112;
      *&v39[10] = v26;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Removed persistent store coordinator %@, reason %@", buf, 0x16u);
    }
  }
}

void __74__PLPersistentContainer_removeSharedPersistentStoreCoordinatorWithReason___block_invoke_52(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 removePersistentStore:v3 error:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = PLMigrationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = *(a1[6] + 64);
      *buf = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to remove store %@ PSC for library %@", buf, 0x16u);
    }
  }
}

- (id)newSharedPersistentStoreCoordinator:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoLibraryGetLog();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "newSharedPersistentStoreCoordinator", "", buf, 2u);
  }

  v9 = objc_alloc(MEMORY[0x1E695D6C0]);
  v10 = [objc_opt_class() managedObjectModel];
  v11 = [v9 initWithManagedObjectModel:v10];

  if ([(PLPersistentContainer *)self shouldUseXPCPhotoLibraryStore])
  {
    v22 = 0;
    v12 = [(PLPersistentContainer *)self _configureXPCPersistentStoreCoordinator:v11 error:&v22];
    v13 = v22;
  }

  else
  {
    v21 = 0;
    v12 = [(PLPersistentContainer *)self _configurePersistentStoreCoordinator:v11 overrideCurrentModelVersionInStore:0 error:&v21];
    v13 = v21;
  }

  v14 = v13;
  if (!v12)
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      libraryURL = self->_libraryURL;
      *buf = 138412546;
      v24 = libraryURL;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to configure PSC for library %@: %@", buf, 0x16u);
    }

    if (a3)
    {
      v17 = v14;
      v11 = 0;
      *a3 = v14;
    }

    else
    {
      v11 = 0;
    }
  }

  v18 = v8;
  v19 = v18;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 134217984;
    v24 = v11;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v6, "newSharedPersistentStoreCoordinator", "instance: %p", buf, 0xCu);
  }

  return v11;
}

- (id)sharedPersistentStoreCoordinatorWithError:(id *)a3
{
  v3 = PLResultWithUnfairLock();

  return v3;
}

id __67__PLPersistentContainer_sharedPersistentStoreCoordinatorWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    if (*(v2 + 32) == 1)
    {
      v4 = *(v2 + 40);
    }

    else
    {
      v19 = 0;
      v5 = [v2 newSharedPersistentStoreCoordinator:&v19];
      v6 = v19;
      v4 = v19;
      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      *(v7 + 24) = v5;

      v9 = *(a1 + 32);
      if (!*(v9 + 24))
      {
        v11 = *(v9 + 48);
        v10 = (v9 + 48);
        if (!v11)
        {
          objc_storeStrong(v10, v6);
        }
      }
    }

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 24);
    v14 = v4;
    v15 = v14;
    if (v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12 == 0;
    }

    if (!v16)
    {
      v17 = v14;
      *v12 = v15;
    }

    v3 = *(*(a1 + 32) + 24);
  }

  return v3;
}

- (id)newPersistentStoreCoordinatorForMigration:(id *)a3
{
  v5 = objc_alloc(MEMORY[0x1E695D6C0]);
  v6 = [objc_opt_class() managedObjectModel];
  v7 = [v5 initWithManagedObjectModel:v6];

  if (![(PLPersistentContainer *)self _configurePersistentStoreCoordinator:v7 overrideCurrentModelVersionInStore:1 error:a3])
  {

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PLPersistentContainer;
  [(PLPersistentContainer *)&v4 dealloc];
}

- (PLPersistentContainer)initWithLibraryURL:(id)a3 lazyAssetsdClient:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PLPersistentContainer;
  v8 = [(PLPersistentContainer *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    libraryURL = v8->_libraryURL;
    v8->_libraryURL = v9;

    objc_storeStrong(&v8->_lazyAssetdClient, a4);
    v11 = objc_alloc_init(PLXPCPhotoLibraryStorePolicySandbox);
    xpcStorePolicy = v8->_xpcStorePolicy;
    v8->_xpcStorePolicy = v11;

    v8->_sharedPersistentStoreCoordinatorLock._os_unfair_lock_opaque = 0;
    v13 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      *buf = 138412802;
      v19 = v14;
      v20 = 2048;
      v21 = v8;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryURL:%@", buf, 0x20u);
    }

    v15 = v8;
  }

  return v8;
}

+ (BOOL)currentModelVersionMatchesLibrarySchemaVersionWithPathManager:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v5 = [a1 librarySchemaVersionWithPathManager:a3 error:&v22];
  v6 = v22;
  v7 = v6;
  if (!v5)
  {
    if (a4)
    {
      v10 = v6;
      v9 = 0;
      *a4 = v7;
      goto LABEL_13;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v8 = +[PLModelMigrator currentModelVersion];
  if (v5 != v8)
  {
    if (v5 <= v8)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Your library needs reconfiguration.\n\nPlease install the latest app version via Xcode (copy to device), or installing a root.\n\nYou can also go to Settings › Photos › Repair Photos Library.\n\n(Library schema %d needs upgrade to %d.)", v5, v8];
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69BFF48];
      v23 = *MEMORY[0x1E696A278];
      v24 = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v15 = v18;
      v16 = v19;
      v17 = 46007;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Your library needs reconfiguration. This usually happens if you install an older OS build on top of a newer one.\n\nPlease install the latest app version via Xcode (copy to device), or install a newer root.\n\nYou can also go to Settings › Photos › Repair Photos Library. Doing this will require reprocessing your photos which might take a while.\n\n(Schema inversion: library (%d) newer than runtime (%d).)", v5, v8];
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69BFF48];
      v25 = *MEMORY[0x1E696A278];
      v26[0] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v15 = v12;
      v16 = v13;
      v17 = 46006;
    }

    v20 = [v15 errorWithDomain:v16 code:v17 userInfo:v14];
    if (a4)
    {
      v20 = v20;
      *a4 = v20;
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_13:

  return v9;
}

+ (int)librarySchemaVersionWithPathManager:(id)a3 error:(id *)a4
{
  v5 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__311;
  v23 = __Block_byref_object_dispose__312;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__311;
  v17 = __Block_byref_object_dispose__312;
  v18 = 0;
  v6 = objc_opt_class();
  v7 = [v5 photosDatabasePath];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PLPersistentContainer_librarySchemaVersionWithPathManager_error___block_invoke;
  v12[3] = &unk_1E7564608;
  v12[4] = &v13;
  v12[5] = &v19;
  [v6 getConfigurationForDatabasePath:v7 withBlock:v12];

  v8 = v14[5];
  if (!v8)
  {
    if (a4)
    {
      *a4 = v20[5];
      v8 = v14[5];
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = [v8 objectForKey:@"PLModelVersion"];
  v10 = [v9 intValue];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __67__PLPersistentContainer_librarySchemaVersionWithPathManager_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *MEMORY[0x1E695D4A8];
  v20 = 0;
  v7 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v6 URL:v5 options:a3 error:&v20];
  v8 = v20;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Store metadata read failure: %@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E69BFF48];
    v14 = *MEMORY[0x1E696AA08];
    v21[0] = *MEMORY[0x1E696A278];
    v21[1] = v14;
    v22[0] = @"Store metadata read failure";
    v22[1] = v8;
    v21[2] = *MEMORY[0x1E696A368];
    v15 = [v5 path];
    v22[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v17 = [v12 errorWithDomain:v13 code:46009 userInfo:v16];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

+ (void)_getPersistentStoreURL:(id *)a3 options:(id *)a4 forDatabasePath:(id)a5 enableOrderKeyNotifications:(BOOL)a6
{
  v52 = a6;
  v65[3] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:@"WAL" forKeyedSubscript:@"journal_mode"];
  v57 = v6;
  v8 = [MEMORY[0x1E69BF238] proxyLockFilePathForDatabasePath:v6];
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"lock_proxy_file"];
  }

  v53 = v8;
  if ((PLIsAssetsd() & 1) == 0)
  {
    [v7 setObject:@"0" forKeyedSubscript:@"wal_autocheckpoint"];
  }

  v64[0] = *MEMORY[0x1E695D3B0];
  v51 = +[PLAssetAnalysisState entityName];
  v63[0] = v51;
  v50 = +[PLMediaAnalysisAssetAttributes entityName];
  v63[1] = v50;
  v49 = +[PLPhotoAnalysisAssetAttributes entityName];
  v63[2] = v49;
  v48 = +[PLComputedAssetAttributes entityName];
  v63[3] = v48;
  v47 = +[PLSceneClassification entityName];
  v63[4] = v47;
  v46 = +[PLDetectedFaceGroup entityName];
  v63[5] = v46;
  v45 = +[PLSceneprint entityName];
  v63[6] = v45;
  +[PLDetectedFaceprint entityName];
  v9 = v56 = v7;
  v63[7] = v9;
  v10 = +[PLCharacterRecognitionAttributes entityName];
  v63[8] = v10;
  v11 = +[PLVisualSearchAttributes entityName];
  v63[9] = v11;
  v12 = +[PLGlobalKeyValue entityName];
  v63[10] = v12;
  v13 = +[PLBackgroundJobWorkItem entityName];
  v63[11] = v13;
  v14 = +[PLGraphNodeValue entityName];
  v63[12] = v14;
  v15 = +[PLGraphEdgeValue entityName];
  v63[13] = v15;
  v16 = +[PLGraphLabel entityName];
  v63[14] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:15];
  v18 = *MEMORY[0x1E695D3C8];
  v65[0] = v17;
  v65[1] = MEMORY[0x1E695E118];
  v19 = *MEMORY[0x1E695D3A0];
  v64[1] = v18;
  v64[2] = v19;
  v65[2] = MEMORY[0x1E695E118];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:3];

  v21 = v20;
  v22 = [MEMORY[0x1E695DF90] dictionary];
  [v22 setObject:v56 forKeyedSubscript:*MEMORY[0x1E695D4A0]];
  [v22 setObject:&unk_1F0FBA7C8 forKeyedSubscript:*MEMORY[0x1E695D498]];
  [v22 setObject:v20 forKeyedSubscript:*MEMORY[0x1E695D3C0]];
  v23 = +[PLPersistentContainer shouldTrackIndexUse];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:v23];
  [v22 setObject:v24 forKeyedSubscript:*MEMORY[0x1E695D448]];

  [v22 setObject:*MEMORY[0x1E696A388] forKeyedSubscript:*MEMORY[0x1E695D3F8]];
  if ([MEMORY[0x1E69BF2E0] processCanWriteSandboxForPath:v57])
  {
    v25 = 1;
  }

  else if (PLIsAssetsd())
  {
    v26 = [MEMORY[0x1E69BF238] fileManager];
    if ([v26 fileExistsAtPath:v57 isDirectory:0])
    {
      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v60 = v57;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Possibly fatal error: sandbox denied assetsd write-access for %@, but it exists", buf, 0xCu);
      }
    }

    else
    {
      v58 = 0;
      v27 = [v57 stringByDeletingLastPathComponent];
      v28 = [v26 fileExistsAtPath:v27 isDirectory:&v58];
      if (!v28 || (v58 & 1) == 0)
      {
        v29 = PLBackendGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = @"does not exist";
          if (v28)
          {
            v30 = @"not a directory";
          }

          *buf = 138412546;
          v60 = v27;
          v61 = 2112;
          v62 = v30;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Possibly fatal error: parent directory %@ is %@", buf, 0x16u);
        }
      }
    }

    v31 = PLBackendGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v57;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Assuming write-access for %@ after sandbox denied write access", buf, 0xCu);
    }

    v25 = 1;
    v21 = v20;
  }

  else
  {
    v25 = 0;
  }

  v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v57];
  if ((v25 & 1) == 0)
  {
    [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D458]];
    v33 = [v32 absoluteString];
    v34 = [v33 stringByAppendingString:@"?readonly_shm=1"];

    v35 = [MEMORY[0x1E695DFF8] URLWithString:v34];

    v32 = v35;
  }

  if (v52 && PLIsAssetsd())
  {
    [v22 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D418]];
  }

  if (PLIsAssetsd())
  {
    v36 = MEMORY[0x1E696AD98];
    v37 = +[PLConcurrencyLimiter sharedLimiter];
    v38 = [v36 numberWithInteger:{objc_msgSend(v37, "maxConcurrency")}];
    [v22 setObject:v38 forKeyedSubscript:*MEMORY[0x1E695D3D0]];
  }

  else if (MEMORY[0x19EAEE460]())
  {
    [v22 setObject:&unk_1F0FBA7E0 forKeyedSubscript:*MEMORY[0x1E695D3D0]];
  }

  v39 = PLBackendGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = @"NO";
    if (v23)
    {
      v40 = @"YES";
    }

    v41 = v40;
    v42 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v32];
    *buf = 138543618;
    v60 = v41;
    v61 = 2112;
    v62 = v42;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_INFO, "Using NSPersistentStoreTrackIndexUseOptionKey = %{public}@ for store at %@", buf, 0x16u);
  }

  if (a3)
  {
    v43 = v32;
    *a3 = v32;
  }

  if (a4)
  {
    v44 = v22;
    *a4 = v22;
  }
}

+ (int64_t)_migrateOrRebuildDatabaseWithSharedPersistentStoreCoordinator:(id)a3 modelMigrator:(id)a4 migrationPolicy:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v88 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v66 = [MEMORY[0x1E696AAA8] currentHandler];
    [v66 handleFailureInMethod:a2 object:a1 file:@"PLPersistentContainer.m" lineNumber:550 description:@"Must only be called by assetsd"];
  }

  v13 = [v12 checkForceRebuildIndicatorFile];
  v71 = a6;
  if (v13 == 1)
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Found force rebuild indicator file, will not attempt lightweight migration", buf, 2u);
    }

    v15 = [v12 pathManager];
    v74 = [v15 recordRebuildReason];
  }

  else
  {
    v74 = 0;
  }

  v82 = 0;
  v83 = 0;
  v16 = [v12 pathManager];
  v17 = [v16 photosDatabasePath];
  [a1 _getPersistentStoreURL:&v83 options:&v82 forDatabasePath:v17 enableOrderKeyNotifications:1];
  v18 = v83;
  v19 = v82;

  v20 = 0;
  v73 = v18;
  if (v13 != 1)
  {
    v81 = 0;
    v24 = [a1 _openAndMigrateStoreWithURL:v18 options:v19 coordinator:v11 modelMigrator:v12 migrationPolicy:v7 error:&v81];
    v25 = v81;
    v20 = v25;
    if (v24 != 4)
    {
LABEL_58:
      v60 = [v12 pathManager];
      [v60 removeSqliteErrorIndicatorFile];

      goto LABEL_67;
    }

    v26 = [(__CFString *)v25 domain];
    v27 = [v26 isEqualToString:*MEMORY[0x1E69BFF48]];

    v18 = v73;
    if (v27)
    {
      if ([(__CFString *)v20 code]== 46007)
      {
        goto LABEL_64;
      }

      if ([(__CFString *)v20 code]== 46009)
      {
        if (PLIsErrorSQLiteDiskFull())
        {
          v28 = PLMigrationGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v85 = v20;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Disk full error, do not attempt rebuild, error: %@", buf, 0xCu);
          }

          goto LABEL_64;
        }

        goto LABEL_63;
      }

      if ((v7 & 4) == 0)
      {
        MEMORY[0x19EAEE230]();
        goto LABEL_63;
      }

      if ([(__CFString *)v20 code]== 46008 || [(__CFString *)v20 code]== 46013)
      {
        v63 = PLMigrationGetLog();
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
LABEL_73:

          goto LABEL_9;
        }

        [(__CFString *)v20 code];
        v64 = NSStringFromPLErrorCode();
        *buf = 138543618;
        v85 = v64;
        v86 = 2112;
        v87 = v20;
        v65 = "Will attempt rebuild after lightweight migration failed with %{public}@ error %@";
LABEL_72:
        _os_log_impl(&dword_19BF1F000, v63, OS_LOG_TYPE_ERROR, v65, buf, 0x16u);

        goto LABEL_73;
      }

      if (MEMORY[0x19EAEE230]() && [(__CFString *)v20 code]== 46006)
      {
        v63 = PLMigrationGetLog();
        if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_73;
        }

        [(__CFString *)v20 code];
        v64 = NSStringFromPLErrorCode();
        *buf = 138543618;
        v85 = v64;
        v86 = 2112;
        v87 = v20;
        v65 = "(INTERNALONLY) Will attempt rebuild after lightweight migration failed due to model inversion (%{public}@) %@";
        goto LABEL_72;
      }
    }

LABEL_63:
    if ((v7 & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_64:
    if (v71)
    {
      v61 = v20;
      *v71 = v20;
    }

    goto LABEL_66;
  }

LABEL_9:
  v21 = [v74 allValues];
  v22 = [v21 lastObject];

  if ([v12 promptUserIfNeededForRebuildReason:v22 migrationError:v20] == 2)
  {
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:46016 userInfo:0];
    if (v71)
    {
      v23 = v23;
      *v71 = v23;
    }

LABEL_66:
    v24 = 4;
    goto LABEL_67;
  }

  v80 = 0;
  v29 = [v12 createNewDatabaseWithMigrationType:1 forceRebuildReason:v22 coordinator:v11 error:&v80];
  v30 = v80;
  v31 = v30;
  v70 = v11;
  if (v29 == 4)
  {
    v32 = v30;
  }

  else
  {
    v79 = v30;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __123__PLPersistentContainer__migrateOrRebuildDatabaseWithSharedPersistentStoreCoordinator_modelMigrator_migrationPolicy_error___block_invoke;
    v75[3] = &unk_1E756E3A0;
    v76 = v11;
    v77 = v18;
    v78 = v19;
    v33 = [PLManagedObjectContext loadingPersistentStoreWithReason:0 error:&v79 workBlock:v75];
    v32 = v79;

    if (v33)
    {
      v69 = v32;

      v68 = 1;
      v24 = 1;
      goto LABEL_36;
    }

    v34 = PLMigrationGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v85 = v32;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Store open/configuration failed after attempted rebuild: %@", buf, 0xCu);
    }
  }

  v35 = PLMigrationGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = @"migration failure";
    if (v13)
    {
      v36 = @"forced";
    }

    *buf = 138543362;
    v85 = v36;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Store migrateOrRebuild failed after attempted rebuild: %{public}@", buf, 0xCu);
  }

  v69 = v32;
  if (v71)
  {
    v37 = v32;
    v68 = 0;
    *v71 = v32;
  }

  else
  {
    v68 = 0;
  }

  v24 = 4;
LABEL_36:
  v38 = [v12 analyticsEventManager];
  v39 = *MEMORY[0x1E69BF740];
  [v38 setPayloadValue:@"failed open rebuild" forKey:*MEMORY[0x1E69BF778] onEventWithName:*MEMORY[0x1E69BF740]];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:v13 != 0];
  v72 = v38;
  [v38 setPayloadValue:v40 forKey:*MEMORY[0x1E69BF750] onEventWithName:v39];

  v41 = MEMORY[0x1E69BF2A0];
  v42 = [v12 pathManager];
  v43 = [v42 libraryURL];
  v44 = [v41 wellKnownPhotoLibraryIdentifierForURL:v43];

  if (v20)
  {
    v45 = PLIsErrorEqualToCode();
  }

  else
  {
    v45 = 1;
  }

  v11 = v70;
  if (v13 && ((v46 = [v22 intValue], v46 > 0x11) || ((1 << v46) & 0x20404) == 0))
  {
    if (v44 == 3)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v44 == 3)
    {
      v47 = 1;
    }

    else
    {
      v47 = v45;
    }

    if (v47)
    {
      goto LABEL_57;
    }
  }

  v48 = PLMigrationGetLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Triggering tap to radar for rebuild", buf, 2u);
  }

  v49 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v49 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZZZ"];
  v50 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v49 setLocale:v50];

  v51 = [MEMORY[0x1E695DF00] date];
  v52 = [v49 stringFromDate:v51];

  v53 = MEMORY[0x1E696AEC0];
  v67 = v52;
  if (v13)
  {
    v54 = PLRebuildReasonToShortString([v22 integerValue]);
    [v53 stringWithFormat:@"TTR: Photo Library Rebuild for reason %@", v54];
  }

  else
  {
    [(__CFString *)v20 code];
    v54 = NSStringFromPLErrorCode();
    [v53 stringWithFormat:@"TTR: Photo Library Rebuild due to migration error %@", v54];
  }
  v55 = ;

  if (!v44)
  {
    v56 = [v12 pathManager];
    [v56 isSystemPhotoLibraryPathManager];
  }

  v57 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v58 = [MEMORY[0x1E696AD60] stringWithFormat:@"Library identifier: %@\n\nPhoto library was rebuilt at %@\n", v57, v67];
  v59 = v58;
  if (v13)
  {
    [v58 appendFormat:@"Last force rebuild date and reason: %@", v74];
  }

  else
  {
    [v58 appendFormat:@"Migration error: %@", v20];
  }

  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photo Library Rebuild Detected" message:@"Your photo library has experienced an unexpected state radarTitle:please file a Radar against Photos to diagnose the issue" radarDescription:v55, v59];

  v11 = v70;
LABEL_57:

  if (v68)
  {
    goto LABEL_58;
  }

LABEL_67:

  return v24;
}

id __123__PLPersistentContainer__migrateOrRebuildDatabaseWithSharedPersistentStoreCoordinator_modelMigrator_migrationPolicy_error___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D4A8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

+ (int64_t)_openAndMigrateStoreWithURL:(id)a3 options:(id)a4 coordinator:(id)a5 modelMigrator:(id)a6 migrationPolicy:(unsigned int)a7 error:(id *)a8
{
  v122[3] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v95 = +[PLModelMigrator currentModelVersion];
  v17 = PLMigrationGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v114 = v13;
    v115 = 2112;
    *v116 = v14;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Adding persistent store for URL: %@ with options: %@", buf, 0x16u);
  }

  v97 = [v16 analyticsEventManager];
  v108 = 0;
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __109__PLPersistentContainer__openAndMigrateStoreWithURL_options_coordinator_modelMigrator_migrationPolicy_error___block_invoke;
  v104[3] = &unk_1E756E3A0;
  v18 = v15;
  v105 = v18;
  v100 = v13;
  v106 = v100;
  v99 = v14;
  v107 = v99;
  v19 = [PLManagedObjectContext loadingPersistentStoreWithReason:0 error:&v108 workBlock:v104];
  v20 = v108;
  v96 = v20;
  if (v19)
  {
    v21 = [v18 metadataForPersistentStore:v19];
    v22 = [v21 objectForKey:@"PLModelVersion"];
    v23 = 0;
    v24 = v97;
    goto LABEL_28;
  }

  v25 = v20;
  if ([v20 code] == 134100)
  {
    v26 = [v25 domain];
    v27 = [v26 isEqualToString:*MEMORY[0x1E696A250]];

    if (v27)
    {
      v28 = *MEMORY[0x1E695D4A8];
      v103 = 0;
      v21 = [MEMORY[0x1E695D6C0] metadataForPersistentStoreOfType:v28 URL:v100 options:v99 error:&v103];
      v92 = v103;
      v24 = v97;
      if (v21)
      {
        v22 = [v21 objectForKey:@"PLModelVersion"];
        v29 = [v22 intValue];
        v30 = PLMigrationGetLog();
        if (v29 == v95)
        {
          v90 = a7;
          v31 = v30;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = PLFilteredDescriptionForAddPersistentStoreError(v96);
            *buf = 138543874;
            v114 = v22;
            v115 = 1024;
            *v116 = v95;
            *&v116[4] = 2114;
            *&v116[6] = v32;
            _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Store schema incompatibility, but model version matches %{public}@ to %d. This is an internal only failure caused by reusing the same model version number on different trains.  Add store error: %{public}@", buf, 0x1Cu);
          }

          v33 = PLMigrationGetLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v18 managedObjectModel];
            v35 = [PLModelMigrator schemaIncompatibilityDetailsForStoreMetadata:v21 model:v34];
            *buf = 138412290;
            v114 = v35;
            _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Incompatibility details: %@", buf, 0xCu);
          }

          if (!a8)
          {
            a7 = v90;
            goto LABEL_27;
          }

          v89 = MEMORY[0x1E696ABC0];
          v88 = *MEMORY[0x1E69BFF48];
          v119[0] = *MEMORY[0x1E696A278];
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Store schema incompatibility, but store model version %d matches current model version. A system reboot is recommended to clear this error.", objc_msgSend(v22, "intValue")];
          v120[0] = v36;
          v119[1] = *MEMORY[0x1E696A368];
          v37 = [v100 path];
          v120[1] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
          *a8 = [v89 errorWithDomain:v88 code:46009 userInfo:v38];

          a7 = v90;
        }

        else
        {
          v36 = v30;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v53 = PLFilteredDescriptionForAddPersistentStoreError(v96);
            *buf = 138543874;
            v114 = v22;
            v115 = 1024;
            *v116 = v95;
            *&v116[4] = 2114;
            *&v116[6] = v53;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Store schema incompatibility, requires migration from version %{public}@ to %d. Add store error: %{public}@", buf, 0x1Cu);
          }
        }
      }

      else
      {
        v47 = PLMigrationGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = PLFilteredDescriptionForAddPersistentStoreError(v96);
          *buf = 138543618;
          v114 = v92;
          v115 = 2114;
          *v116 = v48;
          _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Store schema incompatibility and metadata read failure (%{public}@). Add store error: %{public}@", buf, 0x16u);
        }

        if (!a8)
        {
          v22 = 0;
          goto LABEL_27;
        }

        v91 = MEMORY[0x1E696ABC0];
        v49 = *MEMORY[0x1E69BFF48];
        v50 = *MEMORY[0x1E696AA08];
        v121[0] = *MEMORY[0x1E696A278];
        v121[1] = v50;
        v122[0] = @"Store schema incompatibility and metadata read failure";
        v122[1] = v92;
        v121[2] = *MEMORY[0x1E696A368];
        v36 = [v100 path];
        v122[2] = v36;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:3];
        v52 = v51 = a7;
        *a8 = [v91 errorWithDomain:v49 code:46009 userInfo:v52];

        a7 = v51;
        v22 = 0;
      }

LABEL_27:
      v23 = 1;
      goto LABEL_28;
    }
  }

  v39 = PLMigrationGetLog();
  v24 = v97;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = PLFilteredDescriptionForAddPersistentStoreError(v25);
    *buf = 138412546;
    v114 = v100;
    v115 = 2114;
    *v116 = v40;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Unexpected error opening %@: %{public}@", buf, 0x16u);
  }

  if (a8)
  {
    v41 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E69BFF48];
    v43 = *MEMORY[0x1E696AA08];
    v117[0] = *MEMORY[0x1E696A278];
    v117[1] = v43;
    v118[0] = @"Unexpected open error";
    v118[1] = v25;
    v117[2] = *MEMORY[0x1E696A368];
    v44 = [v100 path];
    v118[2] = v44;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:3];
    v46 = v45 = a7;
    *a8 = [v41 errorWithDomain:v42 code:46009 userInfo:v46];

    a7 = v45;
  }

  v23 = 0;
  v22 = 0;
  v21 = 0;
LABEL_28:
  pl_dispatch_once();
  if (v22 && v21)
  {
    if ([v22 intValue] == v95)
    {
      if (v23)
      {
        v54 = *MEMORY[0x1E69BF6D0];
        [v24 setPayloadValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69BF728] onEventWithName:*MEMORY[0x1E69BF6D0]];
        if (!a8)
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      [v24 removeEventWithName:*MEMORY[0x1E69BF6D0]];
      v102 = 0;
      if (([v16 postProcessThumbnailsOnlyIfVersionMismatchOrMissing:&v102 coordinator:v18] & 1) == 0)
      {
        v81 = PLMigrationGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_ERROR, "Thumbnail processing failed, requires rebuild", buf, 2u);
        }

        v79 = 4;
        goto LABEL_64;
      }

      if (v102 == 1)
      {
        v81 = PLMigrationGetLog();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_DEFAULT, "Thumbnail processing succeeded", buf, 2u);
        }

        v79 = 0;
LABEL_64:

        goto LABEL_66;
      }

      v79 = 0;
    }

    else
    {
      if ((a7 & 1) == 0)
      {
        if (a8)
        {
          v71 = MEMORY[0x1E696ABC0];
          v72 = *MEMORY[0x1E69BFF48];
          v109 = *MEMORY[0x1E696A368];
          [v100 path];
          v73 = v98 = v16;
          v110 = v73;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          *a8 = [v71 errorWithDomain:v72 code:46007 userInfo:v74];

          v16 = v98;
        }

        goto LABEL_46;
      }

      [v24 startRecordingTimedEventToken];
      v83 = v82;
      LODWORD(v87) = a7;
      v79 = [v16 attemptLightweightMigrationFromVersion:v22 onStore:v19 withMetadata:v21 orStoreURL:v100 options:v99 coordinator:v18 migrationPolicy:v87 error:a8];
      v84 = *MEMORY[0x1E69BF6D0];
      [v24 stopRecordingTimedEventWithToken:*MEMORY[0x1E69BF6E8] forKey:*MEMORY[0x1E69BF6D0] onEventWithName:v83];
      v85 = [MEMORY[0x1E696AD98] numberWithInt:v79 == 2];
      [v24 setPayloadValue:v85 forKey:*MEMORY[0x1E69BF728] onEventWithName:v84];

      if (a8)
      {
        [v24 setPayloadValue:*a8 forKey:*MEMORY[0x1E69BF6D8] onEventWithName:v84];
      }
    }

LABEL_66:
    if (v79 != 4)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  v55 = PLMigrationGetLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = [v19 URL];
    [v56 path];
    v58 = v57 = v16;
    *buf = 134218498;
    v114 = v19;
    v115 = 2112;
    *v116 = v58;
    *&v116[8] = 2112;
    *&v116[10] = v21;
    _os_log_impl(&dword_19BF1F000, v55, OS_LOG_TYPE_DEFAULT, "Store %p (%@) has no version, requires rebuild %@", buf, 0x20u);

    v16 = v57;
  }

  if (!a8)
  {
    v68 = *MEMORY[0x1E69BF728];
    v70 = *MEMORY[0x1E69BF6D0];
    v67 = MEMORY[0x1E695E110];
    v69 = v24;
    goto LABEL_45;
  }

  if (!*a8)
  {
    v59 = MEMORY[0x1E696ABC0];
    v60 = v16;
    v61 = *MEMORY[0x1E69BFF48];
    v62 = *MEMORY[0x1E696A278];
    v112[0] = @"Store has no version";
    v63 = *MEMORY[0x1E696A368];
    v111[0] = v62;
    v111[1] = v63;
    v64 = [v100 path];
    v112[1] = v64;
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:2];
    v66 = v61;
    v16 = v60;
    v24 = v97;
    *a8 = [v59 errorWithDomain:v66 code:46009 userInfo:v65];
  }

  v54 = *MEMORY[0x1E69BF6D0];
  [v24 setPayloadValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69BF728] onEventWithName:*MEMORY[0x1E69BF6D0]];
LABEL_40:
  v67 = *a8;
  v68 = *MEMORY[0x1E69BF6D8];
  v69 = v24;
  v70 = v54;
LABEL_45:
  [v69 setPayloadValue:v67 forKey:v68 onEventWithName:v70];
LABEL_46:
  v75 = PLMigrationGetLog();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
  {
    v76 = [v100 path];
    *buf = 138412290;
    v114 = v76;
    _os_log_impl(&dword_19BF1F000, v75, OS_LOG_TYPE_ERROR, "Failed to open store %@, requires rebuild", buf, 0xCu);
  }

  if (v19)
  {
    v101 = 0;
    v77 = [v18 removePersistentStore:v19 error:&v101];
    v78 = v101;
    if ((v77 & 1) == 0)
    {
      v86 = [MEMORY[0x1E696AAA8] currentHandler];
      [v86 handleFailureInMethod:a2 object:a1 file:@"PLPersistentContainer.m" lineNumber:537 description:{@"Unable to remove store: %@", v78}];
    }
  }

  v79 = 4;
LABEL_53:

  return v79;
}

id __109__PLPersistentContainer__openAndMigrateStoreWithURL_options_coordinator_modelMigrator_migrationPolicy_error___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x1E695D4A8];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v13 = 0;
  v7 = [v5 addPersistentStoreWithType:v3 configuration:0 URL:v4 options:v6 error:&v13];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = a2 == 0;
  }

  if (!v10)
  {
    v11 = v8;
    *a2 = v9;
  }

  return v7;
}

+ (void)removePhotosDatabaseWithPathManager:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photosDatabasePath];
  v5 = [v4 stringByAppendingString:@"-wal"];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v51[0] = v4;
  v51[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v52 count:16];
  v39 = v6;
  if (v8)
  {
    v9 = v8;
    v34 = v5;
    v35 = v4;
    v36 = v3;
    v38 = 0;
    v10 = 0;
    v11 = *v44;
    v12 = *MEMORY[0x1E695DB50];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        if ([v6 fileExistsAtPath:v14 isDirectory:{0, v34, v35, v36}])
        {
          v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
          v41 = 0;
          v42 = 0;
          v16 = [(__CFString *)v15 getResourceValue:&v42 forKey:v12 error:&v41];
          v17 = v42;
          v18 = v41;
          if (v16)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v20 = PLMigrationGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v48 = v15;
              v49 = 2112;
              v50 = v18;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Couldn't get file size for %@. Error: %@", buf, 0x16u);
            }

            v38 = 1;
          }

          else
          {
            v10 += [v17 unsignedLongLongValue];
          }

          v6 = v39;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v9);
    v21 = 2 * v10 + 0x40000000;
    v4 = v35;
    v3 = v36;
    v5 = v34;
    v22 = v38;
  }

  else
  {
    v22 = 0;
    v21 = 0x40000000;
  }

  v23 = MEMORY[0x1E69BF208];
  v24 = [v3 libraryURL];
  v25 = [v24 path];
  LOBYTE(v23) = [v23 diskSpaceAvailableForPath:v25] <= v21;

  v26 = v22 | v23;
  v27 = PLMigrationGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = @"Moving aside";
    if (v26)
    {
      v28 = @"Destroying";
    }

    *buf = 138412290;
    v48 = v28;
    _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "%@ photos database", buf, 0xCu);
  }

  if (v26)
  {
    [a1 _destroyPhotosDatabaseWithPath:v4 backupToPath:0];
    v29 = v39;
  }

  else
  {
    v30 = [v3 photosAsideDatabasePath];
    [a1 _destroyPhotosDatabaseWithPath:v4 backupToPath:v30];
    v29 = v39;
    if (v30)
    {
      v40 = 66049;
      if (fsctl([(__CFString *)v30 fileSystemRepresentation], 0xC0084A44uLL, &v40, 0) == -1 && *__error() != 45)
      {
        v31 = PLMigrationGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = __error();
          v33 = strerror(*v32);
          *buf = 138412546;
          v48 = v30;
          v49 = 2080;
          v50 = v33;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "error marking %@ purgeable: %s", buf, 0x16u);
        }
      }
    }
  }
}

+ (BOOL)_destroyPhotosDatabaseWithPath:(id)a3 backupToPath:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v46 = 0;
  v47 = 0;
  [a1 _getPersistentStoreURL:&v47 options:&v46 forDatabasePath:v6 enableOrderKeyNotifications:0];
  v8 = v47;
  v9 = v46;
  v10 = objc_alloc_init(MEMORY[0x1E695D6C0]);
  v11 = *MEMORY[0x1E695D4A8];
  v40 = v7;
  if (!v7)
  {
    v16 = 0;
    v38 = 1;
    goto LABEL_10;
  }

  v37 = v6;
  v44 = 0;
  v45 = 0;
  [a1 _getPersistentStoreURL:&v45 options:&v44 forDatabasePath:v7 enableOrderKeyNotifications:0];
  v12 = v45;
  v13 = v44;
  v36 = v9;
  v14 = [v9 copy];
  v43 = 0;
  v15 = [v10 _replacePersistentStoreAtURL:v12 destinationOptions:v13 withPersistentStoreFromURL:v8 sourceOptions:v14 storeType:v11 error:&v43];
  v16 = v43;
  v17 = PLMigrationGetLog();
  v18 = v17;
  v38 = v15;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v8 path];
      v20 = [v12 path];
      *buf = 138412546;
      v49 = v19;
      v50 = 2112;
      v51 = v20;
      v21 = "Moved old store aside from %@ to %@";
      v22 = v18;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v22, v23, v21, buf, v24);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = [v8 path];
    v20 = [v12 path];
    *buf = 138412802;
    v49 = v19;
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v16;
    v21 = "Could not move store at %@ to %@: %@";
    v22 = v18;
    v23 = OS_LOG_TYPE_ERROR;
    v24 = 32;
    goto LABEL_8;
  }

  v9 = v36;
  v6 = v37;
LABEL_10:
  v25 = [v9 mutableCopy];
  [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D400]];
  v42 = v16;
  v26 = [v10 _destroyPersistentStoreAtURL:v8 withType:v11 options:v25 error:&v42];
  v27 = v42;

  if (v26)
  {
    v28 = 1;
    v29 = v27;
  }

  else
  {
    v30 = PLMigrationGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [v8 path];
      *buf = 138412546;
      v49 = v31;
      v50 = 2112;
      v51 = v27;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Failed to destroy store located at %@. Attempting again with unlink option. Error: %@", buf, 0x16u);
    }

    [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695D450]];
    v41 = v27;
    v32 = [v10 _destroyPersistentStoreAtURL:v8 withType:v11 options:v25 error:&v41];
    v29 = v41;

    if (v32)
    {
      v28 = 1;
    }

    else
    {
      v33 = PLMigrationGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [v8 path];
        *buf = 138412546;
        v49 = v34;
        v50 = 2112;
        v51 = v29;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Could not destroy store %@. Error: %@", buf, 0x16u);
      }

      v28 = 0;
    }
  }

  objc_autoreleasePoolPop(context);
  return v38 & v28;
}

+ (void)getConfigurationForDatabasePath:(id)a3 withBlock:(id)a4
{
  v9 = 0;
  v10 = 0;
  v6 = a4;
  [a1 _getPersistentStoreURL:&v10 options:&v9 forDatabasePath:a3 enableOrderKeyNotifications:0];
  v7 = v10;
  v8 = v9;
  v6[2](v6, v7, v8);
}

void __55__PLPersistentContainer_unsafeRemoveManagedObjectModel__block_invoke()
{
  v0 = PLMigrationGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_19BF1F000, v0, OS_LOG_TYPE_ERROR, "Removing shared managedObjectModel", v2, 2u);
  }

  v1 = sSharedModel;
  sSharedModel = 0;
}

@end