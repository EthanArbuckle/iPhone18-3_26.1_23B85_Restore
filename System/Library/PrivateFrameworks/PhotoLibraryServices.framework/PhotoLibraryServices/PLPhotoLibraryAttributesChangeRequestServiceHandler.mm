@interface PLPhotoLibraryAttributesChangeRequestServiceHandler
- (BOOL)_updateDataclass:(id)dataclass onAccount:(id)account enabled:(BOOL)enabled;
- (BOOL)applyChangesWithLibrary:(id)library error:(id *)error;
- (PLPhotoLibraryAttributesChangeRequestServiceHandler)initWithPhotoLibraryAttributesChanges:(id)changes clientAuthorization:(id)authorization;
@end

@implementation PLPhotoLibraryAttributesChangeRequestServiceHandler

- (BOOL)_updateDataclass:(id)dataclass onAccount:(id)account enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dataclassCopy = dataclass;
  accountCopy = account;
  v9 = accountCopy;
  if (!accountCopy || (v10 = [accountCopy isEnabledForDataclass:dataclassCopy], v10 == enabledCopy))
  {
    v11 = 0;
  }

  else
  {
    [v9 setEnabled:v10 ^ 1 | enabledCopy forDataclass:dataclassCopy];
    v11 = 1;
  }

  return v11;
}

- (BOOL)applyChangesWithLibrary:(id)library error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  changes = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self changes];
  enableCloudSyncValue = [changes enableCloudSyncValue];

  changes2 = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self changes];
  cloudResourcePrefetchModeValue = [changes2 cloudResourcePrefetchModeValue];

  v11 = +[PLPhotoLibraryBundleController sharedBundleController];
  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];
  v14 = [v11 openBundleAtLibraryURL:libraryURL];

  if (!v14)
  {
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E69BFF48];
    v81 = *MEMORY[0x1E696A278];
    v82 = @"Error accessing photo library bundle";
    cloudPhotoLibraryManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v28 = [v25 errorWithDomain:v26 code:41003 userInfo:cloudPhotoLibraryManager];
    v21 = 0;
    goto LABEL_29;
  }

  if (enableCloudSyncValue)
  {
    errorCopy = error;
    v15 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      changes3 = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self changes];
      enableCloudSyncValue2 = [changes3 enableCloudSyncValue];
      *buf = 138543362;
      v94 = enableCloudSyncValue2;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Updating cloud sync enabled with requested state: %{public}@", buf, 0xCu);
    }

    pathManager2 = [libraryCopy pathManager];
    libraryURL2 = [pathManager2 libraryURL];
    v80 = 0;
    v20 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL2 createIfMissing:1 error:&v80];
    v21 = v80;

    if (!v20)
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BFF48];
      v31 = *MEMORY[0x1E696AA08];
      v91[0] = *MEMORY[0x1E696A278];
      v91[1] = v31;
      v92[0] = @"Error accessing photo library identifier";
      v92[1] = v21;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
      v28 = [v29 errorWithDomain:v30 code:41003 userInfo:v32];

      cloudPhotoLibraryManager = 0;
      error = errorCopy;
      goto LABEL_29;
    }

    bOOLValue = [enableCloudSyncValue BOOLValue];
    v23 = +[PLAccountStore pl_sharedAccountStore];
    cachedPrimaryAppleAccount = [v23 cachedPrimaryAppleAccount];

    if ([v14 isSystemPhotoLibrary])
    {
      if (![(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self _updateDataclass:*MEMORY[0x1E6959638] onAccount:cachedPrimaryAppleAccount enabled:bOOLValue])
      {
LABEL_17:

        error = errorCopy;
        if (!cloudResourcePrefetchModeValue)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (([v20 isImagePlaygroundDefaultLibraryIdentifier] & 1) == 0)
      {
        [v14 setCloudPhotoLibraryEnabled:bOOLValue];
        goto LABEL_17;
      }

      if (![(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self _updateDataclass:*MEMORY[0x1E6959680] onAccount:cachedPrimaryAppleAccount enabled:bOOLValue])
      {
        goto LABEL_17;
      }
    }

    v33 = +[PLAccountStore pl_sharedAccountStore];
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __85__PLPhotoLibraryAttributesChangeRequestServiceHandler_applyChangesWithLibrary_error___block_invoke;
    v76[3] = &unk_1E7572490;
    v77 = v20;
    v79 = bOOLValue;
    v78 = cachedPrimaryAppleAccount;
    [v33 saveAccount:v78 withDataclassActions:0 doVerify:0 completion:v76];

    goto LABEL_17;
  }

  v21 = 0;
  if (cloudResourcePrefetchModeValue)
  {
LABEL_18:
    integerValue = [cloudResourcePrefetchModeValue integerValue];
    libraryServicesManager = [v14 libraryServicesManager];
    cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

    if (cloudPhotoLibraryManager)
    {
      v75 = v21;
      v36 = [cloudPhotoLibraryManager setPrefetchMode:integerValue error:&v75];
      v37 = v75;

      if (v36)
      {

        v21 = v37;
        goto LABEL_21;
      }

      v55 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E69BFF48];
      v57 = *MEMORY[0x1E696AA08];
      v89[0] = *MEMORY[0x1E696A278];
      v89[1] = v57;
      v90[0] = @"Error setting prefetch mode on CPL manager";
      v90[1] = v37;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
      v28 = [v55 errorWithDomain:v56 code:41003 userInfo:v54];
      v21 = v37;
    }

    else
    {
      v52 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E69BFF48];
      v87 = *MEMORY[0x1E696A278];
      v88 = @"Set prefetch mode requires cloud sync enabled";
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v28 = [v52 errorWithDomain:v53 code:45702 userInfo:v54];
    }

LABEL_29:
    v50 = v28;
    if (!error)
    {
      goto LABEL_37;
    }

LABEL_30:
    v58 = v50;
    v51 = 0;
    *error = v50;
    goto LABEL_38;
  }

LABEL_21:
  changes4 = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self changes];
  name = [changes4 name];

  changes5 = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self changes];
  userDescription = [changes5 userDescription];

  if (name | userDescription)
  {
    v69 = name;
    errorCopy2 = error;
    pathManager3 = [libraryCopy pathManager];
    libraryURL3 = [pathManager3 libraryURL];
    v74 = v21;
    v44 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL3 createIfMissing:1 error:&v74];
    v45 = v74;

    v70 = cloudResourcePrefetchModeValue;
    v68 = v44;
    if (v44)
    {
      v73 = v45;
      v46 = v69;
      v47 = [v44 setValuesForName:v69 userDescription:userDescription error:&v73];
      v21 = v73;

      if (v47)
      {
        v48 = 0;
        v49 = 1;
        error = errorCopy2;
        goto LABEL_34;
      }

      v63 = MEMORY[0x1E696ABC0];
      v64 = *MEMORY[0x1E69BFF48];
      v65 = *MEMORY[0x1E696AA08];
      v85[0] = *MEMORY[0x1E696A278];
      v85[1] = v65;
      v86[0] = @"Error setting name and description on library identifier";
      v86[1] = v21;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:2];
      v66 = v64;
      v46 = v69;
      v48 = [v63 errorWithDomain:v66 code:41003 userInfo:v62];
      error = errorCopy2;
    }

    else
    {
      v59 = MEMORY[0x1E696ABC0];
      v60 = *MEMORY[0x1E69BFF48];
      v61 = *MEMORY[0x1E696AA08];
      v83[0] = *MEMORY[0x1E696A278];
      v83[1] = v61;
      v84[0] = @"Error accessing photo library identifier";
      v84[1] = v45;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
      v48 = [v59 errorWithDomain:v60 code:41003 userInfo:v62];
      v21 = v45;
      error = errorCopy2;
      v46 = v69;
    }

    v49 = 0;
LABEL_34:

    v50 = v48;
    if (v49)
    {
      v51 = 1;
      cloudResourcePrefetchModeValue = v70;
      goto LABEL_38;
    }

    cloudResourcePrefetchModeValue = v70;
    if (!error)
    {
LABEL_37:
      v51 = 0;
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  v50 = 0;
  v51 = 1;
LABEL_38:

  return v51;
}

void __85__PLPhotoLibraryAttributesChangeRequestServiceHandler_applyChangesWithLibrary_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138413058;
      v11 = v8;
      v12 = 1024;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Failed to update iCPL enable state for identifier %@, enabled: %d, account: %@, error: %@", &v10, 0x26u);
    }
  }
}

- (PLPhotoLibraryAttributesChangeRequestServiceHandler)initWithPhotoLibraryAttributesChanges:(id)changes clientAuthorization:(id)authorization
{
  changesCopy = changes;
  authorizationCopy = authorization;
  if (!changesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryAttributesChangeRequestServiceHandler.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"changes"}];
  }

  v10 = [(PLPhotoLibraryAttributesChangeRequestServiceHandler *)self init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_changes, changes);
    objc_storeStrong(&v11->_clientAuthorization, authorization);
  }

  return v11;
}

@end