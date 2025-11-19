@interface PLPhotoLibraryOpener
+ (BOOL)_checkLibraryDeletionTombstoneForLibraryURL:(id)a3;
+ (BOOL)_deleteLibraryFromFilesystemAtURL:(id)a3 shouldWriteTombstone:(BOOL)a4 error:(id *)a5;
+ (BOOL)_prepareLibraryForDeletionWithTombstone:(BOOL)a3 libraryURL:(id)a4 error:(id *)a5;
+ (BOOL)_validateUniqueLibraryIdentifierUUIDWithCreationOptions:(id)a3;
+ (BOOL)deleteLibraryFromFilesystemAtURL:(id)a3 shouldWriteTombstone:(BOOL)a4 error:(id *)a5;
+ (BOOL)prepareLibraryForDeletionWithTombstone:(BOOL)a3 libraryURL:(id)a4 error:(id *)a5;
+ (id)_autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)a3 libraryServicesManager:(id)a4 wellKnownLibraryIdentifier:(int64_t *)a5;
+ (id)_resolvePhotoLibraryBundleURLWithOptions:(id)a3 error:(id *)a4;
+ (id)autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)a3 libraryServicesManager:(id)a4 wellKnownLibraryIdentifier:(int64_t *)a5;
+ (id)createManagedPhotoLibraryOnFilesystemWithOptions:(id)a3 error:(id *)a4;
+ (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)a3 error:(id *)a4;
+ (id)runningLibraryServicesManagerForPhotoLibraryURL:(id)a3 error:(id *)a4;
+ (id)runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:(int64_t)a3 error:(id *)a4;
- (BOOL)_createPhotoLibraryDatabaseWithOptions:(id)a3 error:(id *)a4;
- (BOOL)createPhotoLibraryDatabaseWithOptions:(id)a3 error:(id *)a4;
- (BOOL)lightweightPermissionCheckWithError:(id *)a3;
- (BOOL)lightweightPermissionCheckWithPath:(id)a3 isDir:(BOOL)a4 error:(id *)a5;
- (BOOL)openPhotoLibraryDatabaseWithAutoUpgrade:(BOOL)a3 autoCreate:(BOOL)a4 error:(id *)a5;
- (PLPhotoLibraryOpener)initWithLibraryServicesManager:(id)a3 reportInProgressUpgrades:(BOOL)a4;
@end

@implementation PLPhotoLibraryOpener

- (BOOL)lightweightPermissionCheckWithPath:(id)a3 isDir:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:v6];
  v62 = 0;
  v11 = [v10 checkResourceIsReachableAndReturnError:&v62];
  v12 = v62;
  if (v11)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = MEMORY[0x1E695E118];
    [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695DBB0]];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695DBF0]];
    v15 = *MEMORY[0x1E695DDB0];
    [v13 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E695DDB0]];
    if (v6)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695DB88]];
    }

    v16 = [v13 allKeys];
    v61 = v12;
    v17 = [v10 resourceValuesForKeys:v16 error:&v61];
    v18 = v61;

    if (v17)
    {
      v50 = v15;
      v51 = self;
      v53 = a5;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v19 = [v17 keyEnumerator];
      v20 = [v19 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v20)
      {
        v21 = v20;
        v56 = v17;
        v52 = v18;
        v49 = v10;
        v54 = v9;
        v22 = *v58;
        v55 = 1;
        do
        {
          v23 = v19;
          for (i = 0; i != v21; ++i)
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(v23);
            }

            v25 = *(*(&v57 + 1) + 8 * i);
            v26 = [v56 objectForKeyedSubscript:v25];
            v27 = [v26 BOOLValue];
            v28 = v13;
            v29 = [v13 objectForKeyedSubscript:v25];
            v30 = [v29 BOOLValue];

            if (v27 != v30)
            {
              v31 = PLBackendGetLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v67 = v54;
                v68 = 2112;
                v69 = v25;
                _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager %@ has incorrect permissions for %@", buf, 0x16u);
              }

              v55 = 0;
            }

            v13 = v28;
          }

          v19 = v23;
          v21 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v21);

        v18 = v52;
        v32 = v55;
        v9 = v54;
        v10 = v49;
        v17 = v56;
        if ((v53 == 0) | v55 & 1)
        {
          goto LABEL_32;
        }

        v33 = [v56 objectForKeyedSubscript:v50];
        v34 = [v33 BOOLValue];

        if (v34)
        {
          v35 = 46105;
        }

        else
        {
          v35 = 46104;
        }

        v36 = @"Path is on read-only volume";
        if (!v34)
        {
          v36 = @"Error accessing path";
        }

        v37 = *MEMORY[0x1E696A368];
        v63[0] = *MEMORY[0x1E696A278];
        v63[1] = v37;
        v64[0] = v36;
        v64[1] = v54;
        v63[2] = *MEMORY[0x1E696A998];
        v38 = v36;
        v39 = [(PLPhotoLibraryOpener *)v51 libraryServicesManager];
        v40 = [v39 pathManager];
        v41 = [v40 libraryURL];
        v64[2] = v41;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = v42;
        v17 = v56;
        v18 = v52;
        v44 = v43;
        v13 = v28;
        v45 = [v44 initWithDomain:*MEMORY[0x1E69BFF48] code:v35 userInfo:v19];
        v46 = 0;
        *v53 = v45;
LABEL_31:

        v32 = v46;
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v67 = v9;
        v68 = 2112;
        v69 = v18;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager failed to access resource values for path: %@. Error: %@", buf, 0x16u);
      }
    }

    v46 = 1;
    goto LABEL_31;
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v9;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager %@ is not reachable", buf, 0xCu);
  }

  v32 = 1;
  v18 = v12;
LABEL_33:

  return v32 & 1;
}

- (BOOL)lightweightPermissionCheckWithError:(id *)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v5 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v6 = [v5 pathManager];
  v7 = [v6 photoDirectoryWithType:2];
  v31[0] = v7;
  v32[0] = MEMORY[0x1E695E118];
  v8 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v9 = [v8 pathManager];
  v10 = [v9 photosDatabasePath];
  v31[1] = v10;
  v32[1] = MEMORY[0x1E695E110];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:v17];
        v19 = [v18 BOOLValue];
        v25 = 0;
        v20 = [(PLPhotoLibraryOpener *)self lightweightPermissionCheckWithPath:v17 isDir:v19 error:&v25];
        v21 = v25;

        if (!v20)
        {
          if (a3)
          {
            v23 = v21;
            *a3 = v21;
          }

          v22 = 0;
          goto LABEL_13;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_13:

  return v22;
}

- (BOOL)openPhotoLibraryDatabaseWithAutoUpgrade:(BOOL)a3 autoCreate:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v84 = *MEMORY[0x1E69E9840];
  v10 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v11 = [v10 state];

  if (v11 != 7)
  {
    v68 = a5;
    v13 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    v14 = [v13 pathManager];
    v15 = [v14 libraryURL];

    *buf = 0;
    v16 = objc_opt_class();
    v17 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    v18 = [v16 autoCreateWellKnownPhotoLibraryIfNeededWithURL:v15 libraryServicesManager:v17 wellKnownLibraryIdentifier:buf];

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v74 = 0;
    v20 = [v15 path];
    v69 = v19;
    LODWORD(v16) = [v19 fileExistsAtPath:v20 isDirectory:&v74];
    v21 = v74;

    if (v16 && (v21 & 1) != 0)
    {
      v22 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
      v23 = [v22 modelMigrator];
      v73 = 0;
      v24 = [v23 isPhotoLibraryDatabaseReadyForOpen:&v73];
      v25 = v73;

      if (v24)
      {

        goto LABEL_7;
      }

      v72 = 0;
      v39 = [(PLPhotoLibraryOpener *)self lightweightPermissionCheckWithError:&v72];
      v37 = v72;
      if (v39)
      {
        v40 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        v41 = [v40 isCreateMode];

        if (v41)
        {
          v42 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          v43 = [v42 openerCreationOptions];

          if (!v43)
          {
            v66 = [MEMORY[0x1E696AAA8] currentHandler];
            [v66 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"openerCreationOptions != nil"}];
          }

          v12 = [(PLPhotoLibraryOpener *)self createPhotoLibraryDatabaseWithOptions:v43 error:v68];

          goto LABEL_33;
        }

        if (a3)
        {
          v46 = 0;
        }

        else
        {
          v57 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = [v15 path];
            *buf = 138412290;
            *&buf[4] = v58;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Unable to open photo library because it requires upgrading: %@", buf, 0xCu);
          }

          v59 = MEMORY[0x1E696ABC0];
          v67 = *MEMORY[0x1E69BFF48];
          v79[0] = *MEMORY[0x1E696A368];
          v60 = [v15 path];
          v80[0] = v60;
          v79[1] = *MEMORY[0x1E696A278];
          v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Schema versions: library=%d, %s=%d", -[PLLibraryOpenerCreationOptions intValue](v25, "intValue"), "assetsd", +[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")];
          v80[1] = v61;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
          v46 = [v59 errorWithDomain:v67 code:41013 userInfo:v62];
        }

        v63 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        v64 = [v63 migrationServiceProxy];
        [v64 boost];

LABEL_29:
        v25 = v46;
        if (v46)
        {
          goto LABEL_30;
        }

        if (v11 >= 1 && PLHasPathFromSourceStateToTargetState() && self->_reportInProgressUpgrades)
        {
          v49 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v50 = [v15 path];
            *buf = 138412290;
            *&buf[4] = v50;
            _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Unable to open photo library because it is already being upgraded: %@", buf, 0xCu);
          }

          v51 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E69BFF48];
          v75 = *MEMORY[0x1E696A368];
          v53 = [v15 path];
          v76 = v53;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v25 = [v51 errorWithDomain:v52 code:41013 userInfo:v54];

          v55 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          v56 = [v55 migrationServiceProxy];
          [v56 boost];

          if (v25)
          {
LABEL_30:
            if (v68)
            {
              v47 = v25;
              v12 = 0;
              *v68 = v25;
            }

            else
            {
              v12 = 0;
            }

LABEL_33:

            goto LABEL_34;
          }
        }

LABEL_7:
        v26 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        v71 = 0;
        v27 = [v26 activate:&v71];
        v25 = v71;

        if (v27)
        {
          v28 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          v70 = v25;
          [v28 awaitLibraryState:7 error:&v70];
          v29 = v70;

          v25 = v29;
        }

        if (!v25)
        {
          v12 = 1;
LABEL_34:

          return v12;
        }

        goto LABEL_30;
      }

      v44 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [v15 path];
        *buf = 138412546;
        *&buf[4] = v45;
        v82 = 2112;
        v83 = v37;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Unable to open photo library because of insufficient permissions: %@, %@", buf, 0x16u);
      }

      v38 = v37;
      v37 = v38;
    }

    else
    {
      if (!v18 && v6)
      {
        v30 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        v25 = [v30 openerCreationOptions];

        if (!v25)
        {
          v31 = [PLLibraryOpenerCreationOptions alloc];
          v32 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          v25 = -[PLLibraryOpenerCreationOptions initWithWellKnownLibraryIdentifier:](v31, "initWithWellKnownLibraryIdentifier:", [v32 wellKnownPhotoLibraryIdentifier]);

          if (!v25)
          {
            v65 = [MEMORY[0x1E696AAA8] currentHandler];
            [v65 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"openerCreationOptions != nil"}];
          }
        }

        v12 = [(PLPhotoLibraryOpener *)self createPhotoLibraryDatabaseWithOptions:v25 error:v68];
        goto LABEL_33;
      }

      v33 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [v15 path];
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Unable to open photo library because it does not exist at path %@.", buf, 0xCu);
      }

      v35 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E69BFF48];
      v77 = *MEMORY[0x1E696A368];
      v25 = [v15 path];
      v78 = v25;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v38 = [v35 errorWithDomain:v36 code:41015 userInfo:v37];
    }

    v46 = v38;
    goto LABEL_29;
  }

  return 1;
}

- (BOOL)_createPhotoLibraryDatabaseWithOptions:(id)a3 error:(id *)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v8 = [MEMORY[0x1E69BF238] fileManager];
  v47 = 0;
  v9 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v10 = [v9 pathManager];
  v11 = [v10 libraryURL];

  v12 = [v11 path];
  LODWORD(v10) = [v8 fileExistsAtPath:v12 isDirectory:&v47];
  v13 = v47;

  if (v10 && (v13 & 1) != 0)
  {
    if ([objc_opt_class() canAutomaticallyCreateLibrary])
    {
      goto LABEL_16;
    }

    v14 = [v8 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:0 options:0 error:0];
    if ([v14 count])
    {
      v15 = a4;
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v11 path];
        *buf = 138412290;
        v49 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "It is forbidden to create a photo library where one already exists at path %@.", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69BFF48];
      v52 = *MEMORY[0x1E696A368];
      v20 = [v11 path];
      v53[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v22 = [v18 errorWithDomain:v19 code:41005 userInfo:v21];

      a4 = v15;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v46 = 0;
    v23 = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v46];
    v22 = v46;
    if (v23)
    {
      goto LABEL_15;
    }

    v14 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = [v11 path];
      *buf = 138412546;
      v49 = v24;
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "PLPhotoLibraryOpener createPhotoLibraryDatabaseWithOptions failed to create directory at %@ : %@", buf, 0x16u);
    }
  }

LABEL_15:
  if (v22)
  {
    goto LABEL_26;
  }

LABEL_16:
  v41 = v8;
  v42 = a4;
  v25 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  [v25 setCreateMode:1 options:v7];

  v26 = [v7 libraryName];
  if (!v26)
  {
    v27 = [v11 lastPathComponent];
    v26 = [v27 stringByDeletingPathExtension];
  }

  v28 = [v7 containerIdentifier];
  v29 = [v7 uuid];
  v30 = [v7 userDescription];
  v45 = 0;
  v31 = [PLPhotoLibraryIdentifier createPhotoLibraryIdentifierWithPhotoLibraryURL:v11 containerIdentifier:v28 uuid:v29 name:v26 userDescription:v30 error:&v45];
  v32 = v45;

  if (!v31)
  {
    v35 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = v11;
      v50 = 2112;
      v51 = v32;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "Error creating library identifier for %@ %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v33 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v44 = v32;
  v34 = [v33 activate:&v44];
  v22 = v44;

  if (v34)
  {
    v35 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    v43 = v22;
    [v35 awaitLibraryState:7 error:&v43];
    v32 = v43;

LABEL_23:
    v8 = v41;

    v22 = v32;
    goto LABEL_25;
  }

  v8 = v41;
LABEL_25:
  v36 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  [v36 setCreateMode:0 options:0];

  a4 = v42;
  if (!v22)
  {
    v38 = 1;
    goto LABEL_30;
  }

LABEL_26:
  if (a4)
  {
    v37 = v22;
    v38 = 0;
    *a4 = v22;
  }

  else
  {
    v38 = 0;
  }

LABEL_30:

  return v38;
}

- (BOOL)createPhotoLibraryDatabaseWithOptions:(id)a3 error:(id *)a4
{
  v7 = a3;
  v4 = v7;
  v5 = PLBoolResultWithUnfairLock();

  return v5;
}

uint64_t __68__PLPhotoLibraryOpener_createPhotoLibraryDatabaseWithOptions_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 _createPhotoLibraryDatabaseWithOptions:v3 error:&v11];
  v5 = v11;
  v6 = a1[6];
  v7 = v5;
  v8 = v7;
  if ((v4 & 1) == 0 && v6)
  {
    v9 = v7;
    *v6 = v8;
  }

  return v4;
}

- (PLPhotoLibraryOpener)initWithLibraryServicesManager:(id)a3 reportInProgressUpgrades:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PLPhotoLibraryOpener;
  v8 = [(PLPhotoLibraryOpener *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_libraryServicesManager, a3);
    v9->_reportInProgressUpgrades = a4;
    v10 = v9;
  }

  return v9;
}

+ (id)runningLibraryServicesManagerForPhotoLibraryURL:(id)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLPhotoLibraryOpener runningLibraryServicesManagerForPhotoLibraryURL:error:]"];
    [v17 handleFailureInFunction:v18 file:@"PLPhotoLibraryOpener.m" lineNumber:621 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [v6 openBundleAtLibraryURL:v5];
  v8 = v7;
  if (!v7)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v20 = *MEMORY[0x1E696A278];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open library bundle at url: %@", v5];
    v21[0] = v13;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v11 errorWithDomain:v12 code:46009 userInfo:v9];
LABEL_9:

    v9 = 0;
LABEL_10:

    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [v7 libraryServicesManager];
  if ([v9 state] != 7)
  {
    v13 = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:v9 reportInProgressUpgrades:0];
    v19 = 0;
    v14 = [(PLPhotoLibraryOpener *)v13 openPhotoLibraryDatabaseWithAutoUpgrade:1 autoCreate:0 error:&v19];
    v10 = v19;
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  if (a4)
  {
LABEL_11:
    v15 = v10;
    *a4 = v10;
  }

LABEL_12:

  return v9;
}

+ (id)runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:(int64_t)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((a3 | 2) == 2)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E69BFF48];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to open library with well known identifier %ld", a3, *MEMORY[0x1E696A278]];
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v5 errorWithDomain:v6 code:41005 userInfo:v8];
    if (a4)
    {
      v9 = v9;
      *a4 = v9;
    }

    v10 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:?];
    v10 = [a1 runningLibraryServicesManagerForPhotoLibraryURL:v12 error:a4];
  }

  return v10;
}

+ (BOOL)_deleteLibraryFromFilesystemAtURL:(id)a3 shouldWriteTombstone:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (PLIsAssetsd() & 1) != 0 || (MEMORY[0x19EAEE520]())
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  [v33 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryOpener.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd() || PLIsXcTest()"}];

  if (v6)
  {
LABEL_4:
    [a1 _prepareLibraryForDeletionWithTombstone:1 libraryURL:v9 error:0];
  }

LABEL_5:
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v11 = [v10 removeItemAtURL:v9 error:&v39];
  v12 = v39;

  v43 = v11;
  if ((v41[3] & 1) == 0)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = v9;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error removing photo library at %@ : %@", buf, 0x16u);
    }

    if ([v12 code] == 513)
    {
      v14 = [v12 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E696A250]];

      if (v15)
      {
        v16 = [v12 userInfo];
        v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if ([v17 code] == 66)
        {
          v18 = [v17 domain];
          v19 = [v18 isEqualToString:*MEMORY[0x1E696A798]];

          if (v19)
          {
            v20 = [MEMORY[0x1E696AC08] defaultManager];
            v21 = [v9 path];
            v38 = 0;
            v22 = [v20 subpathsOfDirectoryAtPath:v21 error:&v38];
            v23 = v38;

            if (v22)
            {
              v24 = PLBackendGetLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = [v22 componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v45 = v25;
                _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Photo library bundle still contains:%@", buf, 0xCu);
              }

              v26 = [v22 sortedArrayUsingComparator:&__block_literal_global_69690];
              v27 = dispatch_time(0, 3000000000);
              v28 = dispatch_get_global_queue(21, 0);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __85__PLPhotoLibraryOpener__deleteLibraryFromFilesystemAtURL_shouldWriteTombstone_error___block_invoke_2;
              block[3] = &unk_1E7578820;
              v35 = v26;
              v36 = v9;
              v37 = &v40;
              v29 = v26;
              dispatch_after(v27, v28, block);
            }

            else
            {
              v29 = PLBackendGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v45 = v23;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Cannot get library bundle contents:%@", buf, 0xCu);
              }
            }
          }
        }
      }
    }
  }

  v30 = *(v41 + 24);
  if ((v30 & 1) == 0)
  {
    v30 = 0;
    if (a5)
    {
      if (v12)
      {
        v31 = v12;
        *a5 = v12;
        v30 = *(v41 + 24);
      }
    }
  }

  _Block_object_dispose(&v40, 8);

  return v30 & 1;
}

void __85__PLPhotoLibraryOpener__deleteLibraryFromFilesystemAtURL_shouldWriteTombstone_error___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 67109378;
    v20 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [*(a1 + 40) path];
        v10 = [v9 stringByAppendingPathComponent:v8];

        v21 = 0;
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v11 fileExistsAtPath:v10 isDirectory:&v21];
        v13 = v21;

        v14 = [v10 fileSystemRepresentation];
        if (v12 && (v13 & 1) != 0)
        {
          if (rmdir(v14))
          {
            v15 = PLBackendGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = *__error();
              *buf = v20;
              v27 = v16;
              v28 = 2112;
              v29 = v10;
              v17 = v15;
              v18 = "rmdir failed with errno %d for path %@";
              goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else if (unlink(v14))
        {
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v19 = *__error();
            *buf = v20;
            v27 = v19;
            v28 = 2112;
            v29 = v10;
            v17 = v15;
            v18 = "unlink failed with errno %d for path %@";
LABEL_14:
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
          }

LABEL_15:

          goto LABEL_17;
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_17:
      }

      v5 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }
}

uint64_t __85__PLPhotoLibraryOpener__deleteLibraryFromFilesystemAtURL_shouldWriteTombstone_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 != [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (BOOL)deleteLibraryFromFilesystemAtURL:(id)a3 shouldWriteTombstone:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  v5 = v8;
  v6 = PLBoolResultWithUnfairLock();

  return v6;
}

uint64_t __84__PLPhotoLibraryOpener_deleteLibraryFromFilesystemAtURL_shouldWriteTombstone_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v12 = 0;
  v5 = [v2 _deleteLibraryFromFilesystemAtURL:v3 shouldWriteTombstone:v4 error:&v12];
  v6 = v12;
  v7 = *(a1 + 48);
  v8 = v6;
  v9 = v8;
  if ((v5 & 1) == 0 && v7)
  {
    v10 = v8;
    *v7 = v9;
  }

  return v5;
}

+ (BOOL)_prepareLibraryForDeletionWithTombstone:(BOOL)a3 libraryURL:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = MEMORY[0x1E69BF2A0];
    v7 = a4;
    v8 = [v6 photosLibraryTombstoneExtension];
    v9 = [v7 URLByAppendingPathExtension:v8];

    v10 = [MEMORY[0x1E695DEF0] data];
    v17 = 0;
    v11 = [v10 writeToURL:v9 options:0 error:&v17];
    v12 = v17;

    v13 = PLBackendGetLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v14)
      {
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Wrote tombstone for photo library at %@", buf, 0xCu);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error writing tombstone for photo library at %@ : %@", buf, 0x16u);
      }

      if (a5)
      {
        v15 = v12;
        *a5 = v12;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (BOOL)prepareLibraryForDeletionWithTombstone:(BOOL)a3 libraryURL:(id)a4 error:(id *)a5
{
  v8 = a4;
  v5 = v8;
  v6 = PLBoolResultWithUnfairLock();

  return v6;
}

uint64_t __80__PLPhotoLibraryOpener_prepareLibraryForDeletionWithTombstone_libraryURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v3 _prepareLibraryForDeletionWithTombstone:v2 libraryURL:v4 error:&v12];
  v6 = v12;
  v7 = *(a1 + 48);
  v8 = v6;
  v9 = v8;
  if ((v5 & 1) == 0 && v7)
  {
    v10 = v8;
    *v7 = v9;
  }

  return v5;
}

+ (id)_autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)a3 libraryServicesManager:(id)a4 wellKnownLibraryIdentifier:(int64_t *)a5
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  os_unfair_lock_assert_owner(&sAutoCreateLock);
  if (!a5)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryOpener.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"outIdentifier"}];
  }

  if ([MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:v9])
  {
    v11 = 1;
    *a5 = 1;
  }

  else
  {
    v11 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryIdentifierForURL:v9];
    *a5 = v11;
    if (!v11)
    {
      v32 = 0;
      goto LABEL_28;
    }
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v9 path];
  v14 = [v12 fileExistsAtPath:v13];

  v15 = PLBackendGetLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = PLStringFromWellKnownPhotoLibraryIdentifier();
      *buf = 138543618;
      v43 = v17;
      v44 = 2112;
      v45 = v9;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ library directory exists at URL %@", buf, 0x16u);
    }

    v18 = 0;
    goto LABEL_26;
  }

  if (v16)
  {
    v19 = PLStringFromWellKnownPhotoLibraryIdentifier();
    *buf = 138543618;
    v43 = v19;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Auto-creating %{public}@ at URL %@", buf, 0x16u);
  }

  v20 = [v9 path];
  v41 = 0;
  v21 = [v12 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:&v41];
  v18 = v41;

  if (v21)
  {
    [v9 fileSystemRepresentation];
    v22 = sandbox_extension_issue_file_to_self();
    if (v22)
    {
      v23 = v22;
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:strlen(v22) + 1];
      free(v23);
      v39 = [MEMORY[0x1E69BF278] sharedBookmarkManager];
      v40 = 0;
      v24 = [v39 URLFromClientLibraryURL:v9 sandboxExtension:v15 error:&v40];
      v38 = v40;
      if (v24)
      {
        v25 = [[PLLibraryOpenerCreationOptions alloc] initWithWellKnownLibraryIdentifier:v11];
        if (!v10)
        {
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryOpener.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"lsm != nil"}];
        }

        [v10 setCreateMode:1 options:v25];
        v26 = PLBackendGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = PLStringFromWellKnownPhotoLibraryIdentifier();
          v28 = [(PLLibraryOpenerCreationOptions *)v25 debugDescription];
          *buf = 138543618;
          v43 = v27;
          v44 = 2112;
          v45 = v28;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Auto-create %{public}@ succeeded. LSM in createMode with options %@", buf, 0x16u);
        }
      }

      else
      {
        v25 = PLBackendGetLog();
        if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = v38;
          v43 = v38;
          _os_log_impl(&dword_19BF1F000, &v25->super, OS_LOG_TYPE_ERROR, "Auto-create library failed with resolutionError %@", buf, 0xCu);
LABEL_34:

          goto LABEL_27;
        }
      }

      v35 = v38;
      goto LABEL_34;
    }

    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v33 = [v9 fileSystemRepresentation];
      *buf = 136315138;
      v43 = v33;
      v29 = "sandbox_extension_issue_file_to_self failed for path %s";
      v30 = v15;
      v31 = 12;
      goto LABEL_25;
    }
  }

  else
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v9;
      v44 = 2112;
      v45 = v18;
      v29 = "Error creating directory at %@: %@";
      v30 = v15;
      v31 = 22;
LABEL_25:
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    }
  }

LABEL_26:
  v24 = 0;
LABEL_27:

  v32 = v24;
LABEL_28:

  return v32;
}

+ (id)autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)a3 libraryServicesManager:(id)a4 wellKnownLibraryIdentifier:(int64_t *)a5
{
  v6 = a3;
  v11 = a4;
  v7 = v11;
  v8 = v6;
  v9 = PLResultWithUnfairLock();

  return v9;
}

+ (id)createManagedPhotoLibraryOnFilesystemWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLPhotoLibraryOpener.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v7 = v6;
  v8 = PLSafeResultWithUnfairLock();

  return v8;
}

id __79__PLPhotoLibraryOpener_createManagedPhotoLibraryOnFilesystemWithOptions_error___block_invoke(uint64_t a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v34 = 0;
  v4 = [v2 _resolvePhotoLibraryBundleURLWithOptions:v3 error:&v34];
  v5 = v34;
  if (!v4)
  {
LABEL_14:
    v23 = *(a1 + 48);
    v24 = v5;
    v4 = 0;
    if (v23)
    {
      goto LABEL_12;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  if ([*(a1 + 32) hasCustomUUID] && (objc_msgSend(*(a1 + 40), "_validateUniqueLibraryIdentifierUUIDWithCreationOptions:", *(a1 + 32)) & 1) == 0)
  {

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E69BFF48];
    v41 = *MEMORY[0x1E696AA08];
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:v27 code:46110 userInfo:0];
    v42[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v30 = [v26 errorWithDomain:v27 code:46018 userInfo:v29];

    v5 = v30;
    goto LABEL_14;
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [v6 lookupOrCreateBundleForLibraryURL:v4];

  v8 = [v7 libraryServicesManager];
  v9 = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:v8 reportInProgressUpgrades:0];
  v10 = *(a1 + 32);
  v33 = v5;
  v11 = [(PLPhotoLibraryOpener *)v9 _createPhotoLibraryDatabaseWithOptions:v10 error:&v33];
  v12 = v33;

  if (!v11)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696AA08];
    v39[0] = *MEMORY[0x1E696A998];
    v39[1] = v15;
    v40[0] = v4;
    v40[1] = v12;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v17 = [v13 errorWithDomain:v14 code:46018 userInfo:v16];

    v18 = [v7 bundleController];
    [v18 shutdownBundle:v7 reason:v17];

    v19 = [*(a1 + 32) domain] == 3;
    v20 = *(a1 + 40);
    v32 = 0;
    LOBYTE(v16) = [v20 _deleteLibraryFromFilesystemAtURL:v4 shouldWriteTombstone:v19 error:&v32];
    v21 = v32;
    if ((v16 & 1) == 0)
    {
      v22 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = v4;
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to cleanup after failed library creation with URL: %@  error %@", buf, 0x16u);
      }
    }

    v7 = 0;
  }

  v23 = *(a1 + 48);
  v24 = v12;
  if (!v7)
  {
    if (v23)
    {
LABEL_12:
      v25 = v24;
      v7 = 0;
      *v23 = v24;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

+ (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)a3 error:(id *)a4
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__69718;
  v21 = __Block_byref_object_dispose__69719;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__69718;
  v15 = __Block_byref_object_dispose__69719;
  v16 = 0;
  v6 = [[PLPhotoLibraryFinder alloc] initWithSearchCriteria:v5];
  PLSafeRunWithUnfairLock();
  v7 = v12[5];
  v8 = v18[5];
  if (!v7 && a4)
  {
    v8 = v8;
    *a4 = v8;
  }

  v9 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __80__PLPhotoLibraryOpener_findPhotoLibraryIdentifiersMatchingSearchCriteria_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 findMatchingPhotoLibraryIdentifiersAndReturnError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)_resolvePhotoLibraryBundleURLWithOptions:(id)a3 error:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 internalTestOptions];
  v7 = [v5 libraryBundleURL];
  if (v7)
  {
    v8 = v7;
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E69BF2A0] rootURLForPhotoLibraryDomain:{objc_msgSend(v5, "domain")}];
  if (v6)
  {
    v10 = *MEMORY[0x1E69BFED0];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69BFED0]];

    if (v11)
    {
      v12 = [v6 objectForKeyedSubscript:v10];

      v9 = v12;
    }
  }

  v13 = [v5 containerIdentifier];
  v14 = [v9 URLByAppendingPathComponent:v13];

  v15 = [v5 uuid];
  v16 = [v14 URLByAppendingPathComponent:v15];
  v17 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
  v18 = [v16 URLByAppendingPathExtension:v17];

  if ([v5 domain] == 3 && (objc_msgSend(a1, "_checkLibraryDeletionTombstoneForLibraryURL:", v18) & 1) != 0)
  {
    v19 = @"found tombstone";
LABEL_11:
    v23 = [MEMORY[0x1E696AFB0] UUID];
    v24 = [v23 UUIDString];

    v25 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v5 uuid];
      v27 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
      v28 = v19;
      v29 = v27;
      v34 = 138544386;
      v35 = v26;
      v36 = 2114;
      v37 = v28;
      v38 = 2112;
      v39 = v18;
      v40 = 2114;
      v41 = v24;
      v42 = 2114;
      v43 = v27;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to create photo library bundle with default name matching identifier UUID %{public}@: %{public}@, renamed %@ as %{public}@.%{public}@", &v34, 0x34u);
    }

    v30 = [v14 URLByAppendingPathComponent:v24];
    v31 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
    v32 = [v30 URLByAppendingPathExtension:v31];

    v18 = v32;
    goto LABEL_15;
  }

  v20 = [MEMORY[0x1E69BF238] fileManager];
  v21 = [v18 path];
  v22 = [v20 fileExistsAtPath:v21 isDirectory:0];

  if (v22)
  {
    v19 = @"bundle exists";
    goto LABEL_11;
  }

  v24 = v15;
LABEL_15:
  v8 = v18;

LABEL_16:

  return v8;
}

+ (BOOL)_checkLibraryDeletionTombstoneForLibraryURL:(id)a3
{
  v3 = MEMORY[0x1E69BF2A0];
  v4 = a3;
  v5 = [v3 photosLibraryTombstoneExtension];
  v6 = [v4 URLByAppendingPathExtension:v5];

  v7 = [MEMORY[0x1E69BF238] fileManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

  return v9;
}

+ (BOOL)_validateUniqueLibraryIdentifierUUIDWithCreationOptions:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(PLPhotoLibrarySearchCriteria);
  v5 = [v3 uuid];
  [(PLPhotoLibrarySearchCriteria *)v4 setUuid:v5];

  -[PLPhotoLibrarySearchCriteria setDomain:](v4, "setDomain:", [v3 domain]);
  v6 = [v3 containerIdentifier];
  [(PLPhotoLibrarySearchCriteria *)v4 setContainerIdentifier:v6];

  v7 = [v3 internalTestOptions];
  [(PLPhotoLibrarySearchCriteria *)v4 setInternalTestOptions:v7];

  v8 = [[PLPhotoLibraryFinder alloc] initWithSearchCriteria:v4];
  v9 = [(PLPhotoLibraryFinder *)v8 findMatchingPhotoLibraryIdentifiersWithOptions:1 error:0];
  v10 = [v9 count];
  if (v10)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 uuid];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Library identifier %{public}@ already exists: %@", &v14, 0x16u);
    }
  }

  return v10 == 0;
}

@end