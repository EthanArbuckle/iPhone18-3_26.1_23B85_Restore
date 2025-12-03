@interface PLPhotoLibraryOpener
+ (BOOL)_checkLibraryDeletionTombstoneForLibraryURL:(id)l;
+ (BOOL)_deleteLibraryFromFilesystemAtURL:(id)l shouldWriteTombstone:(BOOL)tombstone error:(id *)error;
+ (BOOL)_prepareLibraryForDeletionWithTombstone:(BOOL)tombstone libraryURL:(id)l error:(id *)error;
+ (BOOL)_validateUniqueLibraryIdentifierUUIDWithCreationOptions:(id)options;
+ (BOOL)deleteLibraryFromFilesystemAtURL:(id)l shouldWriteTombstone:(BOOL)tombstone error:(id *)error;
+ (BOOL)prepareLibraryForDeletionWithTombstone:(BOOL)tombstone libraryURL:(id)l error:(id *)error;
+ (id)_autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)l libraryServicesManager:(id)manager wellKnownLibraryIdentifier:(int64_t *)identifier;
+ (id)_resolvePhotoLibraryBundleURLWithOptions:(id)options error:(id *)error;
+ (id)autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)l libraryServicesManager:(id)manager wellKnownLibraryIdentifier:(int64_t *)identifier;
+ (id)createManagedPhotoLibraryOnFilesystemWithOptions:(id)options error:(id *)error;
+ (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error;
+ (id)runningLibraryServicesManagerForPhotoLibraryURL:(id)l error:(id *)error;
+ (id)runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:(int64_t)identifier error:(id *)error;
- (BOOL)_createPhotoLibraryDatabaseWithOptions:(id)options error:(id *)error;
- (BOOL)createPhotoLibraryDatabaseWithOptions:(id)options error:(id *)error;
- (BOOL)lightweightPermissionCheckWithError:(id *)error;
- (BOOL)lightweightPermissionCheckWithPath:(id)path isDir:(BOOL)dir error:(id *)error;
- (BOOL)openPhotoLibraryDatabaseWithAutoUpgrade:(BOOL)upgrade autoCreate:(BOOL)create error:(id *)error;
- (PLPhotoLibraryOpener)initWithLibraryServicesManager:(id)manager reportInProgressUpgrades:(BOOL)upgrades;
@end

@implementation PLPhotoLibraryOpener

- (BOOL)lightweightPermissionCheckWithPath:(id)path isDir:(BOOL)dir error:(id *)error
{
  dirCopy = dir;
  v70 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:457 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:dirCopy];
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
    if (dirCopy)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E695DB88]];
    }

    allKeys = [v13 allKeys];
    v61 = v12;
    v17 = [v10 resourceValuesForKeys:allKeys error:&v61];
    v18 = v61;

    if (v17)
    {
      v50 = v15;
      selfCopy = self;
      errorCopy = error;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      keyEnumerator = [v17 keyEnumerator];
      v20 = [keyEnumerator countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v20)
      {
        v21 = v20;
        v56 = v17;
        v52 = v18;
        v49 = v10;
        v54 = pathCopy;
        v22 = *v58;
        v55 = 1;
        do
        {
          v23 = keyEnumerator;
          for (i = 0; i != v21; ++i)
          {
            if (*v58 != v22)
            {
              objc_enumerationMutation(v23);
            }

            v25 = *(*(&v57 + 1) + 8 * i);
            v26 = [v56 objectForKeyedSubscript:v25];
            bOOLValue = [v26 BOOLValue];
            v28 = v13;
            v29 = [v13 objectForKeyedSubscript:v25];
            bOOLValue2 = [v29 BOOLValue];

            if (bOOLValue != bOOLValue2)
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

          keyEnumerator = v23;
          v21 = [v23 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v21);

        v18 = v52;
        v32 = v55;
        pathCopy = v54;
        v10 = v49;
        v17 = v56;
        if ((errorCopy == 0) | v55 & 1)
        {
          goto LABEL_32;
        }

        v33 = [v56 objectForKeyedSubscript:v50];
        bOOLValue3 = [v33 BOOLValue];

        if (bOOLValue3)
        {
          v35 = 46105;
        }

        else
        {
          v35 = 46104;
        }

        v36 = @"Path is on read-only volume";
        if (!bOOLValue3)
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
        libraryServicesManager = [(PLPhotoLibraryOpener *)selfCopy libraryServicesManager];
        pathManager = [libraryServicesManager pathManager];
        libraryURL = [pathManager libraryURL];
        v64[2] = libraryURL;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        keyEnumerator = v42;
        v17 = v56;
        v18 = v52;
        v44 = v43;
        v13 = v28;
        v45 = [v44 initWithDomain:*MEMORY[0x1E69BFF48] code:v35 userInfo:keyEnumerator];
        v46 = 0;
        *errorCopy = v45;
LABEL_31:

        v32 = v46;
LABEL_32:

        goto LABEL_33;
      }
    }

    else
    {
      keyEnumerator = PLBackendGetLog();
      if (os_log_type_enabled(keyEnumerator, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v67 = pathCopy;
        v68 = 2112;
        v69 = v18;
        _os_log_impl(&dword_19BF1F000, keyEnumerator, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager failed to access resource values for path: %@. Error: %@", buf, 0x16u);
      }
    }

    v46 = 1;
    goto LABEL_31;
  }

  v13 = PLBackendGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = pathCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "LibraryServicesManager %@ is not reachable", buf, 0xCu);
  }

  v32 = 1;
  v18 = v12;
LABEL_33:

  return v32 & 1;
}

- (BOOL)lightweightPermissionCheckWithError:(id *)error
{
  v32[2] = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  v7 = [pathManager photoDirectoryWithType:2];
  v31[0] = v7;
  v32[0] = MEMORY[0x1E695E118];
  libraryServicesManager2 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  pathManager2 = [libraryServicesManager2 pathManager];
  photosDatabasePath = [pathManager2 photosDatabasePath];
  v31[1] = photosDatabasePath;
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
        bOOLValue = [v18 BOOLValue];
        v25 = 0;
        v20 = [(PLPhotoLibraryOpener *)self lightweightPermissionCheckWithPath:v17 isDir:bOOLValue error:&v25];
        v21 = v25;

        if (!v20)
        {
          if (error)
          {
            v23 = v21;
            *error = v21;
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

- (BOOL)openPhotoLibraryDatabaseWithAutoUpgrade:(BOOL)upgrade autoCreate:(BOOL)create error:(id *)error
{
  createCopy = create;
  v84 = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  state = [libraryServicesManager state];

  if (state != 7)
  {
    errorCopy = error;
    libraryServicesManager2 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    pathManager = [libraryServicesManager2 pathManager];
    libraryURL = [pathManager libraryURL];

    *buf = 0;
    v16 = objc_opt_class();
    libraryServicesManager3 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    v18 = [v16 autoCreateWellKnownPhotoLibraryIfNeededWithURL:libraryURL libraryServicesManager:libraryServicesManager3 wellKnownLibraryIdentifier:buf];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v74 = 0;
    path = [libraryURL path];
    v69 = defaultManager;
    LODWORD(v16) = [defaultManager fileExistsAtPath:path isDirectory:&v74];
    v21 = v74;

    if (v16 && (v21 & 1) != 0)
    {
      libraryServicesManager4 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
      modelMigrator = [libraryServicesManager4 modelMigrator];
      v73 = 0;
      v24 = [modelMigrator isPhotoLibraryDatabaseReadyForOpen:&v73];
      openerCreationOptions2 = v73;

      if (v24)
      {

        goto LABEL_7;
      }

      v72 = 0;
      v39 = [(PLPhotoLibraryOpener *)self lightweightPermissionCheckWithError:&v72];
      v37 = v72;
      if (v39)
      {
        libraryServicesManager5 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        isCreateMode = [libraryServicesManager5 isCreateMode];

        if (isCreateMode)
        {
          libraryServicesManager6 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          openerCreationOptions = [libraryServicesManager6 openerCreationOptions];

          if (!openerCreationOptions)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"openerCreationOptions != nil"}];
          }

          v12 = [(PLPhotoLibraryOpener *)self createPhotoLibraryDatabaseWithOptions:openerCreationOptions error:errorCopy];

          goto LABEL_33;
        }

        if (upgrade)
        {
          v46 = 0;
        }

        else
        {
          v57 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            path2 = [libraryURL path];
            *buf = 138412290;
            *&buf[4] = path2;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_ERROR, "Unable to open photo library because it requires upgrading: %@", buf, 0xCu);
          }

          v59 = MEMORY[0x1E696ABC0];
          v67 = *MEMORY[0x1E69BFF48];
          v79[0] = *MEMORY[0x1E696A368];
          path3 = [libraryURL path];
          v80[0] = path3;
          v79[1] = *MEMORY[0x1E696A278];
          v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Schema versions: library=%d, %s=%d", -[PLLibraryOpenerCreationOptions intValue](openerCreationOptions2, "intValue"), "assetsd", +[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion")];
          v80[1] = v61;
          v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
          v46 = [v59 errorWithDomain:v67 code:41013 userInfo:v62];
        }

        libraryServicesManager7 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        migrationServiceProxy = [libraryServicesManager7 migrationServiceProxy];
        [migrationServiceProxy boost];

LABEL_29:
        openerCreationOptions2 = v46;
        if (v46)
        {
          goto LABEL_30;
        }

        if (state >= 1 && PLHasPathFromSourceStateToTargetState() && self->_reportInProgressUpgrades)
        {
          v49 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            path4 = [libraryURL path];
            *buf = 138412290;
            *&buf[4] = path4;
            _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_ERROR, "Unable to open photo library because it is already being upgraded: %@", buf, 0xCu);
          }

          v51 = MEMORY[0x1E696ABC0];
          v52 = *MEMORY[0x1E69BFF48];
          v75 = *MEMORY[0x1E696A368];
          path5 = [libraryURL path];
          v76 = path5;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          openerCreationOptions2 = [v51 errorWithDomain:v52 code:41013 userInfo:v54];

          libraryServicesManager8 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          migrationServiceProxy2 = [libraryServicesManager8 migrationServiceProxy];
          [migrationServiceProxy2 boost];

          if (openerCreationOptions2)
          {
LABEL_30:
            if (errorCopy)
            {
              v47 = openerCreationOptions2;
              v12 = 0;
              *errorCopy = openerCreationOptions2;
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
        libraryServicesManager9 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        v71 = 0;
        v27 = [libraryServicesManager9 activate:&v71];
        openerCreationOptions2 = v71;

        if (v27)
        {
          libraryServicesManager10 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          v70 = openerCreationOptions2;
          [libraryServicesManager10 awaitLibraryState:7 error:&v70];
          v29 = v70;

          openerCreationOptions2 = v29;
        }

        if (!openerCreationOptions2)
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
        path6 = [libraryURL path];
        *buf = 138412546;
        *&buf[4] = path6;
        v82 = 2112;
        v83 = v37;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Unable to open photo library because of insufficient permissions: %@, %@", buf, 0x16u);
      }

      v38 = v37;
      v37 = v38;
    }

    else
    {
      if (!v18 && createCopy)
      {
        libraryServicesManager11 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
        openerCreationOptions2 = [libraryServicesManager11 openerCreationOptions];

        if (!openerCreationOptions2)
        {
          v31 = [PLLibraryOpenerCreationOptions alloc];
          libraryServicesManager12 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
          openerCreationOptions2 = -[PLLibraryOpenerCreationOptions initWithWellKnownLibraryIdentifier:](v31, "initWithWellKnownLibraryIdentifier:", [libraryServicesManager12 wellKnownPhotoLibraryIdentifier]);

          if (!openerCreationOptions2)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"openerCreationOptions != nil"}];
          }
        }

        v12 = [(PLPhotoLibraryOpener *)self createPhotoLibraryDatabaseWithOptions:openerCreationOptions2 error:errorCopy];
        goto LABEL_33;
      }

      v33 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        path7 = [libraryURL path];
        *buf = 138412290;
        *&buf[4] = path7;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Unable to open photo library because it does not exist at path %@.", buf, 0xCu);
      }

      v35 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E69BFF48];
      v77 = *MEMORY[0x1E696A368];
      openerCreationOptions2 = [libraryURL path];
      v78 = openerCreationOptions2;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v38 = [v35 errorWithDomain:v36 code:41015 userInfo:v37];
    }

    v46 = v38;
    goto LABEL_29;
  }

  return 1;
}

- (BOOL)_createPhotoLibraryDatabaseWithOptions:(id)options error:(id *)error
{
  v53[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  fileManager = [MEMORY[0x1E69BF238] fileManager];
  v47 = 0;
  libraryServicesManager = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  pathManager = [libraryServicesManager pathManager];
  libraryURL = [pathManager libraryURL];

  path = [libraryURL path];
  LODWORD(pathManager) = [fileManager fileExistsAtPath:path isDirectory:&v47];
  v13 = v47;

  if (pathManager && (v13 & 1) != 0)
  {
    if ([objc_opt_class() canAutomaticallyCreateLibrary])
    {
      goto LABEL_16;
    }

    v14 = [fileManager contentsOfDirectoryAtURL:libraryURL includingPropertiesForKeys:0 options:0 error:0];
    if ([v14 count])
    {
      errorCopy = error;
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        path2 = [libraryURL path];
        *buf = 138412290;
        v49 = path2;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "It is forbidden to create a photo library where one already exists at path %@.", buf, 0xCu);
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69BFF48];
      v52 = *MEMORY[0x1E696A368];
      path3 = [libraryURL path];
      v53[0] = path3;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
      v22 = [v18 errorWithDomain:v19 code:41005 userInfo:v21];

      error = errorCopy;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v46 = 0;
    v23 = [fileManager createDirectoryAtURL:libraryURL withIntermediateDirectories:1 attributes:0 error:&v46];
    v22 = v46;
    if (v23)
    {
      goto LABEL_15;
    }

    v14 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      path4 = [libraryURL path];
      *buf = 138412546;
      v49 = path4;
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
  v41 = fileManager;
  errorCopy2 = error;
  libraryServicesManager2 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  [libraryServicesManager2 setCreateMode:1 options:optionsCopy];

  libraryName = [optionsCopy libraryName];
  if (!libraryName)
  {
    lastPathComponent = [libraryURL lastPathComponent];
    libraryName = [lastPathComponent stringByDeletingPathExtension];
  }

  containerIdentifier = [optionsCopy containerIdentifier];
  uuid = [optionsCopy uuid];
  userDescription = [optionsCopy userDescription];
  v45 = 0;
  v31 = [PLPhotoLibraryIdentifier createPhotoLibraryIdentifierWithPhotoLibraryURL:libraryURL containerIdentifier:containerIdentifier uuid:uuid name:libraryName userDescription:userDescription error:&v45];
  v32 = v45;

  if (!v31)
  {
    libraryServicesManager4 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(libraryServicesManager4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v49 = libraryURL;
      v50 = 2112;
      v51 = v32;
      _os_log_impl(&dword_19BF1F000, libraryServicesManager4, OS_LOG_TYPE_ERROR, "Error creating library identifier for %@ %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  libraryServicesManager3 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  v44 = v32;
  v34 = [libraryServicesManager3 activate:&v44];
  v22 = v44;

  if (v34)
  {
    libraryServicesManager4 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
    v43 = v22;
    [libraryServicesManager4 awaitLibraryState:7 error:&v43];
    v32 = v43;

LABEL_23:
    fileManager = v41;

    v22 = v32;
    goto LABEL_25;
  }

  fileManager = v41;
LABEL_25:
  libraryServicesManager5 = [(PLPhotoLibraryOpener *)self libraryServicesManager];
  [libraryServicesManager5 setCreateMode:0 options:0];

  error = errorCopy2;
  if (!v22)
  {
    v38 = 1;
    goto LABEL_30;
  }

LABEL_26:
  if (error)
  {
    v37 = v22;
    v38 = 0;
    *error = v22;
  }

  else
  {
    v38 = 0;
  }

LABEL_30:

  return v38;
}

- (BOOL)createPhotoLibraryDatabaseWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v4 = optionsCopy;
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

- (PLPhotoLibraryOpener)initWithLibraryServicesManager:(id)manager reportInProgressUpgrades:(BOOL)upgrades
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PLPhotoLibraryOpener;
  v8 = [(PLPhotoLibraryOpener *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_libraryServicesManager, manager);
    v9->_reportInProgressUpgrades = upgrades;
    v10 = v9;
  }

  return v9;
}

+ (id)runningLibraryServicesManagerForPhotoLibraryURL:(id)l error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLPhotoLibraryOpener runningLibraryServicesManagerForPhotoLibraryURL:error:]"];
    [currentHandler handleFailureInFunction:v18 file:@"PLPhotoLibraryOpener.m" lineNumber:621 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [v6 openBundleAtLibraryURL:lCopy];
  v8 = v7;
  if (!v7)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E69BFF48];
    v20 = *MEMORY[0x1E696A278];
    lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to open library bundle at url: %@", lCopy];
    v21[0] = lCopy;
    libraryServicesManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v11 errorWithDomain:v12 code:46009 userInfo:libraryServicesManager];
LABEL_9:

    libraryServicesManager = 0;
LABEL_10:

    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  libraryServicesManager = [v7 libraryServicesManager];
  if ([libraryServicesManager state] != 7)
  {
    lCopy = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:libraryServicesManager reportInProgressUpgrades:0];
    v19 = 0;
    v14 = [(PLPhotoLibraryOpener *)lCopy openPhotoLibraryDatabaseWithAutoUpgrade:1 autoCreate:0 error:&v19];
    v10 = v19;
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
  if (error)
  {
LABEL_11:
    v15 = v10;
    *error = v10;
  }

LABEL_12:

  return libraryServicesManager;
}

+ (id)runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:(int64_t)identifier error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ((identifier | 2) == 2)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = *MEMORY[0x1E69BFF48];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempt to open library with well known identifier %ld", identifier, *MEMORY[0x1E696A278]];
    v15[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v5 errorWithDomain:v6 code:41005 userInfo:v8];
    if (error)
    {
      v9 = v9;
      *error = v9;
    }

    v10 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:?];
    v10 = [self runningLibraryServicesManagerForPhotoLibraryURL:v12 error:error];
  }

  return v10;
}

+ (BOOL)_deleteLibraryFromFilesystemAtURL:(id)l shouldWriteTombstone:(BOOL)tombstone error:(id *)error
{
  tombstoneCopy = tombstone;
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (PLIsAssetsd() & 1) != 0 || (MEMORY[0x19EAEE520]())
  {
    if (!tombstoneCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd() || PLIsXcTest()"}];

  if (tombstoneCopy)
  {
LABEL_4:
    [self _prepareLibraryForDeletionWithTombstone:1 libraryURL:lCopy error:0];
  }

LABEL_5:
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v11 = [defaultManager removeItemAtURL:lCopy error:&v39];
  v12 = v39;

  v43 = v11;
  if ((v41[3] & 1) == 0)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v45 = lCopy;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error removing photo library at %@ : %@", buf, 0x16u);
    }

    if ([v12 code] == 513)
    {
      domain = [v12 domain];
      v15 = [domain isEqualToString:*MEMORY[0x1E696A250]];

      if (v15)
      {
        userInfo = [v12 userInfo];
        v17 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

        if ([v17 code] == 66)
        {
          domain2 = [v17 domain];
          v19 = [domain2 isEqualToString:*MEMORY[0x1E696A798]];

          if (v19)
          {
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            path = [lCopy path];
            v38 = 0;
            v22 = [defaultManager2 subpathsOfDirectoryAtPath:path error:&v38];
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
              v36 = lCopy;
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
    if (error)
    {
      if (v12)
      {
        v31 = v12;
        *error = v12;
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

+ (BOOL)deleteLibraryFromFilesystemAtURL:(id)l shouldWriteTombstone:(BOOL)tombstone error:(id *)error
{
  lCopy = l;
  v5 = lCopy;
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

+ (BOOL)_prepareLibraryForDeletionWithTombstone:(BOOL)tombstone libraryURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  if (tombstone)
  {
    v6 = MEMORY[0x1E69BF2A0];
    lCopy = l;
    photosLibraryTombstoneExtension = [v6 photosLibraryTombstoneExtension];
    v9 = [lCopy URLByAppendingPathExtension:photosLibraryTombstoneExtension];

    data = [MEMORY[0x1E695DEF0] data];
    v17 = 0;
    v11 = [data writeToURL:v9 options:0 error:&v17];
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

      if (error)
      {
        v15 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

+ (BOOL)prepareLibraryForDeletionWithTombstone:(BOOL)tombstone libraryURL:(id)l error:(id *)error
{
  lCopy = l;
  v5 = lCopy;
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

+ (id)_autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)l libraryServicesManager:(id)manager wellKnownLibraryIdentifier:(int64_t *)identifier
{
  v46 = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  os_unfair_lock_assert_owner(&sAutoCreateLock);
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"outIdentifier"}];
  }

  if ([MEMORY[0x1E69BF2A0] isSystemPhotoLibraryURL:lCopy])
  {
    v11 = 1;
    *identifier = 1;
  }

  else
  {
    v11 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryIdentifierForURL:lCopy];
    *identifier = v11;
    if (!v11)
    {
      v32 = 0;
      goto LABEL_28;
    }
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v14 = [defaultManager fileExistsAtPath:path];

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
      v45 = lCopy;
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
    v45 = lCopy;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Auto-creating %{public}@ at URL %@", buf, 0x16u);
  }

  path2 = [lCopy path];
  v41 = 0;
  v21 = [defaultManager createDirectoryAtPath:path2 withIntermediateDirectories:1 attributes:0 error:&v41];
  v18 = v41;

  if (v21)
  {
    [lCopy fileSystemRepresentation];
    v22 = sandbox_extension_issue_file_to_self();
    if (v22)
    {
      v23 = v22;
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:strlen(v22) + 1];
      free(v23);
      mEMORY[0x1E69BF278] = [MEMORY[0x1E69BF278] sharedBookmarkManager];
      v40 = 0;
      v24 = [mEMORY[0x1E69BF278] URLFromClientLibraryURL:lCopy sandboxExtension:v15 error:&v40];
      v38 = v40;
      if (v24)
      {
        v25 = [[PLLibraryOpenerCreationOptions alloc] initWithWellKnownLibraryIdentifier:v11];
        if (!managerCopy)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"lsm != nil"}];
        }

        [managerCopy setCreateMode:1 options:v25];
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
      fileSystemRepresentation = [lCopy fileSystemRepresentation];
      *buf = 136315138;
      v43 = fileSystemRepresentation;
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
      v43 = lCopy;
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

+ (id)autoCreateWellKnownPhotoLibraryIfNeededWithURL:(id)l libraryServicesManager:(id)manager wellKnownLibraryIdentifier:(int64_t *)identifier
{
  lCopy = l;
  managerCopy = manager;
  v7 = managerCopy;
  v8 = lCopy;
  v9 = PLResultWithUnfairLock();

  return v9;
}

+ (id)createManagedPhotoLibraryOnFilesystemWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryOpener.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];
  }

  v7 = optionsCopy;
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

+ (id)findPhotoLibraryIdentifiersMatchingSearchCriteria:(id)criteria error:(id *)error
{
  criteriaCopy = criteria;
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
  v6 = [[PLPhotoLibraryFinder alloc] initWithSearchCriteria:criteriaCopy];
  PLSafeRunWithUnfairLock();
  v7 = v12[5];
  v8 = v18[5];
  if (!v7 && error)
  {
    v8 = v8;
    *error = v8;
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

+ (id)_resolvePhotoLibraryBundleURLWithOptions:(id)options error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  internalTestOptions = [optionsCopy internalTestOptions];
  libraryBundleURL = [optionsCopy libraryBundleURL];
  if (libraryBundleURL)
  {
    v8 = libraryBundleURL;
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E69BF2A0] rootURLForPhotoLibraryDomain:{objc_msgSend(optionsCopy, "domain")}];
  if (internalTestOptions)
  {
    v10 = *MEMORY[0x1E69BFED0];
    v11 = [internalTestOptions objectForKeyedSubscript:*MEMORY[0x1E69BFED0]];

    if (v11)
    {
      v12 = [internalTestOptions objectForKeyedSubscript:v10];

      v9 = v12;
    }
  }

  containerIdentifier = [optionsCopy containerIdentifier];
  v14 = [v9 URLByAppendingPathComponent:containerIdentifier];

  uuid = [optionsCopy uuid];
  v16 = [v14 URLByAppendingPathComponent:uuid];
  photosLibraryExtension = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
  v18 = [v16 URLByAppendingPathExtension:photosLibraryExtension];

  if ([optionsCopy domain] == 3 && (objc_msgSend(self, "_checkLibraryDeletionTombstoneForLibraryURL:", v18) & 1) != 0)
  {
    v19 = @"found tombstone";
LABEL_11:
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v25 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [optionsCopy uuid];
      photosLibraryExtension2 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
      v28 = v19;
      v29 = photosLibraryExtension2;
      v34 = 138544386;
      v35 = uuid2;
      v36 = 2114;
      v37 = v28;
      v38 = 2112;
      v39 = v18;
      v40 = 2114;
      v41 = uUIDString;
      v42 = 2114;
      v43 = photosLibraryExtension2;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to create photo library bundle with default name matching identifier UUID %{public}@: %{public}@, renamed %@ as %{public}@.%{public}@", &v34, 0x34u);
    }

    v30 = [v14 URLByAppendingPathComponent:uUIDString];
    photosLibraryExtension3 = [MEMORY[0x1E69BF2A0] photosLibraryExtension];
    v32 = [v30 URLByAppendingPathExtension:photosLibraryExtension3];

    v18 = v32;
    goto LABEL_15;
  }

  fileManager = [MEMORY[0x1E69BF238] fileManager];
  path = [v18 path];
  v22 = [fileManager fileExistsAtPath:path isDirectory:0];

  if (v22)
  {
    v19 = @"bundle exists";
    goto LABEL_11;
  }

  uUIDString = uuid;
LABEL_15:
  v8 = v18;

LABEL_16:

  return v8;
}

+ (BOOL)_checkLibraryDeletionTombstoneForLibraryURL:(id)l
{
  v3 = MEMORY[0x1E69BF2A0];
  lCopy = l;
  photosLibraryTombstoneExtension = [v3 photosLibraryTombstoneExtension];
  v6 = [lCopy URLByAppendingPathExtension:photosLibraryTombstoneExtension];

  fileManager = [MEMORY[0x1E69BF238] fileManager];
  path = [v6 path];
  v9 = [fileManager fileExistsAtPath:path isDirectory:0];

  return v9;
}

+ (BOOL)_validateUniqueLibraryIdentifierUUIDWithCreationOptions:(id)options
{
  v18 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v4 = objc_alloc_init(PLPhotoLibrarySearchCriteria);
  uuid = [optionsCopy uuid];
  [(PLPhotoLibrarySearchCriteria *)v4 setUuid:uuid];

  -[PLPhotoLibrarySearchCriteria setDomain:](v4, "setDomain:", [optionsCopy domain]);
  containerIdentifier = [optionsCopy containerIdentifier];
  [(PLPhotoLibrarySearchCriteria *)v4 setContainerIdentifier:containerIdentifier];

  internalTestOptions = [optionsCopy internalTestOptions];
  [(PLPhotoLibrarySearchCriteria *)v4 setInternalTestOptions:internalTestOptions];

  v8 = [[PLPhotoLibraryFinder alloc] initWithSearchCriteria:v4];
  v9 = [(PLPhotoLibraryFinder *)v8 findMatchingPhotoLibraryIdentifiersWithOptions:1 error:0];
  v10 = [v9 count];
  if (v10)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [optionsCopy uuid];
      v14 = 138543618;
      v15 = uuid2;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Library identifier %{public}@ already exists: %@", &v14, 0x16u);
    }
  }

  return v10 == 0;
}

@end